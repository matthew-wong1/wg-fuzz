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
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    
    device10.pushErrorScope("validation");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device30.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device40.destroy();
    device50.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.pushErrorScope("out-of-memory");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device80.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device90.pushErrorScope("validation");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    device60.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder900.insertDebugMarker("marker");
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder902.pushDebugGroup("group_marker");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder901.insertDebugMarker("marker");
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device90.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    device110.pushErrorScope("validation");
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    device110.pushErrorScope("validation");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device120.pushErrorScope("internal");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device100.pushErrorScope("out-of-memory");
    render_bundle_encoder1200.pushDebugGroup("group_marker");
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer1103 = device110.createBuffer({
        label: "buffer1103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device100.pushErrorScope("internal");
    
    device110.destroy();
    
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device100.destroy();
    device130.destroy();
    device120.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device140.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    device170.destroy();
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    device160.destroy();
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device150.pushErrorScope("out-of-memory");
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1501.pushDebugGroup("group_marker");
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    
    device180.destroy();
    
    const render_bundle_encoder1502 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_bundle_encoder1502.insertDebugMarker("marker");
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1502.pushDebugGroup("group_marker");
    
    var shader_module1504_code = "";
    try {
        shader_module1504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1504 = await device150.createShaderModule({ label: "shader_module1504", code: shader_module1504_code })
    device150.pushErrorScope("validation");
    
    
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    
    
    
    
    
    
    
    
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1505_code = "";
    try {
        shader_module1505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1505 = await device150.createShaderModule({ label: "shader_module1505", code: shader_module1505_code })
    render_bundle_encoder1501.insertDebugMarker("marker");
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture1504 = device150.createTexture({
        label: "texture1504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    var shader_module1506_code = "";
    try {
        shader_module1506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1506 = await device150.createShaderModule({ label: "shader_module1506", code: shader_module1506_code })
    
    
    
    
    
    
    
    
    const texture1505 = device150.createTexture({
        label: "texture1505",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1501.insertDebugMarker("marker");
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    
    
    
    
    var shader_module1507_code = "";
    try {
        shader_module1507_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1507 = await device150.createShaderModule({ label: "shader_module1507", code: shader_module1507_code })
    
    render_bundle_encoder1502.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1502.insertDebugMarker("marker");
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    render_bundle_encoder1501.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    
    
    
    
    
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder1502.insertDebugMarker("marker");
    
    
    
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const buffer1900 = device190.createBuffer({
        label: "buffer1900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device190.destroy();
    render_bundle_encoder1501.insertDebugMarker("marker");
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    
    
    device200.destroy();
    
    var shader_module1508_code = "";
    try {
        shader_module1508_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1508 = await device150.createShaderModule({ label: "shader_module1508", code: shader_module1508_code })
    
    
    
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    var shader_module1509_code = "";
    try {
        shader_module1509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1509 = await device150.createShaderModule({ label: "shader_module1509", code: shader_module1509_code })
    
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    
    
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    
    device210.pushErrorScope("out-of-memory");
    
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder1501.insertDebugMarker("marker");
    render_bundle_encoder1502.insertDebugMarker("marker");
    
    
    
    
    
    
    
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    const texture2100 = device210.createTexture({
        label: "texture2100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device150.destroy();
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device230.destroy();
    
    var shader_module2100_code = "";
    try {
        shader_module2100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2100 = await device210.createShaderModule({ label: "shader_module2100", code: shader_module2100_code })
    const render_bundle_encoder2100 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2100",
        colorFormats: ["bgra8unorm"]
    });
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder2100.pushDebugGroup("group_marker");
    render_bundle_encoder2100.insertDebugMarker("marker");
    
    const texture2101 = device210.createTexture({
        label: "texture2101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder2100.insertDebugMarker("marker");
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    render_bundle_encoder2100.insertDebugMarker("marker");
    
    const texture2102 = device210.createTexture({
        label: "texture2102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device210.pushErrorScope("validation");
    device220.destroy();
    
    
    const texture2103 = device210.createTexture({
        label: "texture2103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device240.destroy();
    const texture2104 = device210.createTexture({
        label: "texture2104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module2101_code = "";
    try {
        shader_module2101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2101 = await device210.createShaderModule({ label: "shader_module2101", code: shader_module2101_code })
    device210.pushErrorScope("out-of-memory");
    const adapter25 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const render_bundle_encoder2101 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2101",
        colorFormats: ["bgra8unorm"]
    });
    
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer2500 = device250.createBuffer({
        label: "buffer2500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder2101.pushDebugGroup("group_marker");
    
    const buffer2100 = device210.createBuffer({
        label: "buffer2100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder2102 = device210.createRenderBundleEncoder({
        label: "render_bundle_encoder2102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module2102_code = "";
    try {
        shader_module2102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2102 = await device210.createShaderModule({ label: "shader_module2102", code: shader_module2102_code })
    
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    device210.pushErrorScope("validation");
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    const texture2600 = device260.createTexture({
        label: "texture2600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    device210.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder2102.insertDebugMarker("marker");
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    const render_bundle_encoder2600 = device260.createRenderBundleEncoder({
        label: "render_bundle_encoder2600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder2102.insertDebugMarker("marker");
    const texture2601 = device260.createTexture({
        label: "texture2601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer2501 = device250.createBuffer({
        label: "buffer2501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture2700 = device270.createTexture({
        label: "texture2700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device250.pushErrorScope("out-of-memory");
    const texture2105 = device210.createTexture({
        label: "texture2105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder2600.insertDebugMarker("marker");
    device270.pushErrorScope("internal");
    
    device260.destroy();
    
    
    
    const buffer2502 = device250.createBuffer({
        label: "buffer2502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer2700 = device270.createBuffer({
        label: "buffer2700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    var shader_module2700_code = "";
    try {
        shader_module2700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2700 = await device270.createShaderModule({ label: "shader_module2700", code: shader_module2700_code })
    
    render_bundle_encoder2100.insertDebugMarker("marker");
    
    
    device250.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer2101 = device210.createBuffer({
        label: "buffer2101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder2100.insertDebugMarker("marker");
    
    
    const buffer2503 = device250.createBuffer({
        label: "buffer2503",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device250.pushErrorScope("internal");
    const buffer2701 = device270.createBuffer({
        label: "buffer2701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    
    
    
    
    
    const texture2500 = device250.createTexture({
        label: "texture2500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    device250.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device270.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}