import time

from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait
from seleniumwire import webdriver


def output_message():
    try:
        options = Options()
        options.accept_insecure_certs = True
        options.add_argument('--ignore-certificate-errors')
        options.add_argument('--allow-insecure-localhost')

        driver = webdriver.Chrome(options=options)

        driver.get('https://10.97.240.47/ureg/#')
        time.sleep(5)
        driver.implicitly_wait(1.5)

        driver.find_element(By.XPATH, "//a[@href='#']").click()

        login_box = driver.find_element(By.NAME, 'login')
        password_box = driver.find_element(By.NAME, 'password')
        input_button = driver.find_element(By.XPATH, "//input[@type='submit']")

        login_box.send_keys("kubryakova.e")
        password_box.send_keys("fjr9fdlDXxf394")
        input_button.click()

        manager_link = driver.find_element(By.ID, "manage_link")
        manager_link.click()

        wait = WebDriverWait(driver, 10)

        dropdown = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//span[contains(@class, 'k-picker k-dropdown k-widget')]")))
        dropdown.click()
        time.sleep(2)

        option_to_select = wait.until(
            EC.element_to_be_clickable((By.XPATH, "//span[contains(text(), 'Электронные СМИ и СМК')]")))
        option_to_select.click()
        time.sleep(5)

        i = 0

        for request in driver.requests:
            if request.response:
                if "query" in request.url: #and "minEditDate" in request.response.body.decode('utf-8', errors='ignore'):
                    i = i + 1
                    print(
                        f"URL: {request.url}\n"
                        f"Status Code: {request.response.status_code}\n"
                        f"Response Body: {request.response.body.decode('utf-8', errors='ignore')}\n\n"
                    )

        print(i)
        driver.quit()

    except Exception as e:
        print("Message:", e)

if __name__ == "__main__":
    output_message()
