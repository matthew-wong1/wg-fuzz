export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer001.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer100.destroy()
    buffer101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.pushErrorScope("out-of-memory");
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.pushErrorScope("validation");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer501.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer500.destroy()
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device80.destroy();
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    device40.pushErrorScope("internal");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer400.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    buffer401.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    
    device90.pushErrorScope("validation");
    buffer503.destroy()
    
    
    buffer300.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer402.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.pushErrorScope("validation");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    device100.destroy();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    buffer301.destroy()
    buffer302.destroy()
    
    
    buffer900.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer901.destroy()
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    buffer700.destroy()
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    
    
    buffer902.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer903 = device90.createBuffer({
        label: "buffer903",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    buffer504.destroy()
    
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer903.destroy()
    buffer701.destroy()
    buffer303.destroy()
    const buffer904 = device90.createBuffer({
        label: "buffer904",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer904.destroy()
    const query902 = device90.createQuerySet({
        label: "query902",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    buffer505.destroy()
    buffer600.destroy()
    
    
    buffer403.destroy()
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const buffer905 = device90.createBuffer({
        label: "buffer905",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const buffer906 = device90.createBuffer({
        label: "buffer906",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer507.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    buffer906.destroy()
    
    
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    
    buffer905.destroy()
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer502.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query903 = device90.createQuerySet({
        label: "query903",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device70.destroy();
    buffer304.destroy()
    
    buffer508.destroy()
    const query904 = device90.createQuerySet({
        label: "query904",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer602.destroy()
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer907 = device90.createBuffer({
        label: "buffer907",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    
    
    const query905 = device90.createQuerySet({
        label: "query905",
        type: "occlusion",
        count: 32,
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device150.destroy();
    buffer405.destroy()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer305.destroy()
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer404.destroy()
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    buffer509.destroy()
    
    
    
    
    buffer306.destroy()
    
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    buffer601.destroy()
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device140.destroy();
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module906_code = "";
    try {
        shader_module906_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module906 = await device90.createShaderModule({ label: "shader_module906", code: shader_module906_code })
    
    
    buffer907.destroy()
    
    device110.pushErrorScope("out-of-memory");
    
    
    
    
    buffer308.destroy()
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    buffer603.destroy()
    
    
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    buffer307.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const buffer908 = device90.createBuffer({
        label: "buffer908",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    
    buffer506.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    buffer407.destroy()
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    device120.destroy();
    
    
    
    
    
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    var shader_module907_code = "";
    try {
        shader_module907_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module907 = await device90.createShaderModule({ label: "shader_module907", code: shader_module907_code })
    buffer605.destroy()
    
    buffer406.destroy()
    
    buffer309.destroy()
    
    
    
    buffer3010.destroy()
    device160.pushErrorScope("validation");
    
    
    
    
    
    
    buffer606.destroy()
    
    
    
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    {
        await buffer604.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer604.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer604.unmap();
        console.log(new Float32Array(data));
    }
    
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    
    const query408 = device40.createQuerySet({
        label: "query408",
        type: "occlusion",
        count: 32,
    });
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    buffer5010.destroy()
    
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module908_code = "";
    try {
        shader_module908_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module908 = await device90.createShaderModule({ label: "shader_module908", code: shader_module908_code })
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    
    const query506 = device50.createQuerySet({
        label: "query506",
        type: "occlusion",
        count: 32,
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    device180.destroy();
    {
        await buffer604.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer604.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer604.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer604.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer604.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer604.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const query606 = device60.createQuerySet({
        label: "query606",
        type: "occlusion",
        count: 32,
    });
    
    
    device130.pushErrorScope("internal");
    buffer908.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const query607 = device60.createQuerySet({
        label: "query607",
        type: "occlusion",
        count: 32,
    });
    const buffer909 = device90.createBuffer({
        label: "buffer909",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query608 = device60.createQuerySet({
        label: "query608",
        type: "occlusion",
        count: 32,
    });
    
    buffer1300.destroy()
    
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    buffer5011.destroy()
    const query507 = device50.createQuerySet({
        label: "query507",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer1100.destroy()
    buffer5012.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
}