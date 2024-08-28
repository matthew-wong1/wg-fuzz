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
    const array0 = new Float32Array([0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.0, 1.0, 0.25, -0.25, 0.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, 0.0, -0.25, -0.25, 0.25, 1.0, 0.75, -0.75, 0.25, 0.75, 0.25, -1.0, -0.25, -0.75, -0.75, 0.25, 0.25, 0.5, -0.75, 0.0, -1.0, -0.5, -0.75, 1.0, -0.75, -0.5, -1.0, -0.75, 1.0, 0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.0, -0.75, 0.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 0.0, -0.5, 0.25, 0.5, 1.0, 0.75, 0.75, -0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 0.5, -0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -0.5, 1.0, -1.0, 1.0, ]);
    const array1 = new Float32Array([-0.75, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, -0.75, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 1.0, -0.25, -0.25, -0.25, 0.25, 0.5, -0.5, 0.25, -0.5, -0.5, 0.25, -1.0, -0.75, 0.5, -1.0, 1.0, -1.0, -0.5, 0.5, 1.0, -0.25, -1.0, 0.25, 0.75, 1.0, 0.5, 0.5, -1.0, 0.0, 1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.75, -0.25, 0.25, 0.25, 0.25, -0.75, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 0.75, -0.5, -0.75, 0.25, 0.75, -1.0, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.5, -0.5, -0.75, 1.0, 1.0, 0.5, -1.0, -0.25, 0.75, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.25, -1.0, -0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.0, 0.5, -0.25, -1.0, 0.25, 0.75, 0.5, -0.75, 1.0, -0.5, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.75, -0.25, -1.0, -0.25, 0.0, 0.0, 0.75, -0.5, -0.25, -1.0, 0.75, 0.75, -1.0, -0.75, -0.5, -0.5, 0.25, 1.0, -0.25, -1.0, 0.5, -0.25, -0.25, 0.75, 1.0, -1.0, 0.25, 0.75, 0.0, 0.5, 0.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.25, 0.25, -1.0, 0.5, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -1.0, -0.5, 1.0, 0.75, 0.5, 0.0, 0.0, 0.75, 0.5, -0.75, -0.5, -1.0, -0.25, -0.75, 0.25, 0.0, -1.0, 0.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([1.0, 1.0, 0.5, -0.75, -0.5, -0.75, -1.0, -0.5, -0.75, -0.25, 0.5, 0.5, -0.5, 0.0, 0.25, -0.75, 0.25, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.25, -1.0, 0.0, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, 0.0, -0.5, -0.75, 0.25, -1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.0, 0.5, 0.5, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, 0.5, 1.0, -0.5, 0.0, 1.0, 0.25, -0.25, 0.75, -0.75, 0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.5, -0.25, -1.0, -0.75, -0.75, -0.75, 1.0, -0.5, 0.0, -1.0, 0.25, -0.75, -0.25, ]);
    device00.pushErrorScope("validation");
    const array4 = new Float32Array([-0.25, 1.0, 0.75, 0.25, 0.5, -0.5, -0.5, 0.25, -0.75, 0.25, -0.75, 0.25, 0.5, 0.0, 0.75, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 0.25, -1.0, -0.75, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, -0.75, 1.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.25, 0.5, 0.5, 0.75, 0.25, -0.75, -0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -0.75, 0.75, -0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 0.0, -0.75, 0.75, 0.75, 0.75, -0.75, -0.75, -0.75, 0.75, -1.0, 0.25, -0.75, -0.25, -0.75, -1.0, 1.0, 0.5, -0.25, -0.75, -1.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 0.0, -0.5, 0.75, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, -0.75, -0.25, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([1.0, 1.0, 0.75, 1.0, 0.5, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, -0.75, -1.0, 0.25, 0.75, -0.25, 0.25, 0.25, -1.0, 0.0, -0.5, 0.5, -0.5, -0.25, 0.75, 0.5, 0.0, 0.5, -0.25, 0.0, -0.25, -0.25, -0.25, 0.75, 0.5, 0.75, -1.0, -0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 1.0, 0.75, -0.5, 0.25, -0.5, 1.0, 1.0, 0.25, 0.0, 0.25, -0.75, -0.5, 0.75, 0.0, 1.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.0, 0.0, 0.0, -1.0, 0.0, -0.5, -0.75, -1.0, 0.75, 1.0, -0.75, -0.75, -0.5, 0.75, -0.25, -1.0, -0.75, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, -1.0, 0.75, -0.75, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("out-of-memory");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-0.5, 0.25, -1.0, -0.75, -0.5, 1.0, -1.0, 0.75, 0.5, 0.5, -0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.5, 0.75, -1.0, 1.0, 1.0, -0.5, 0.0, 0.0, 0.5, 0.0, 0.25, 1.0, 0.0, -0.25, -0.5, -0.25, 1.0, -0.25, -1.0, -0.5, 0.75, 1.0, 0.25, 1.0, 0.25, -0.5, 0.25, 1.0, 0.0, 0.75, -1.0, -0.75, -0.75, -1.0, 0.0, -0.25, 0.5, 0.75, -1.0, 0.25, 0.75, -0.25, -0.25, -0.75, 0.75, -0.75, -0.25, -0.75, -0.75, 0.0, -1.0, -0.25, -0.5, -0.75, -0.25, -0.75, -0.5, -1.0, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, -0.75, -0.5, -0.75, 0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.pushErrorScope("validation");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.pushErrorScope("out-of-memory");
    
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    buffer401.destroy()
    device10.pushErrorScope("validation");
    
    
    device20.pushErrorScope("validation");
    device40.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("out-of-memory");
    buffer100.destroy()
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array7 = new Float32Array([-1.0, 0.75, 0.25, 0.75, 0.5, 0.25, 0.25, 0.0, 0.5, -1.0, -0.5, 0.25, 0.0, 1.0, 1.0, 0.5, 1.0, 1.0, -0.5, -0.5, 0.5, -1.0, -0.25, -0.25, 0.75, 1.0, 0.0, -0.5, 0.75, 0.75, -0.5, -0.5, 0.25, 0.0, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 1.0, 0.25, -0.25, -0.25, -0.25, 0.75, -0.5, -1.0, -0.25, 0.5, 0.25, 1.0, -0.75, 0.5, 0.25, -0.75, 0.0, 0.0, 0.0, 1.0, 0.25, 1.0, 0.5, 0.75, 0.25, 0.5, -0.5, 0.5, -1.0, 1.0, 0.25, 0.25, -0.25, -0.25, 0.5, 0.5, -0.75, 0.0, 1.0, -0.5, -0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -0.75, -0.25, -1.0, -0.75, 0.0, 0.0, -0.5, 0.25, 0.75, 1.0, 0.75, 0.25, -0.75, 0.25, ]);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    buffer300.destroy()
    buffer000.destroy()
    
    const array8 = new Float32Array([-1.0, -0.25, -0.75, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, -0.25, -0.25, 0.5, -0.5, -0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.0, -0.75, 0.5, 0.0, -0.75, -0.5, 0.25, 0.5, 1.0, -0.75, 0.0, -1.0, -0.25, 0.0, -0.25, 0.25, -0.25, 0.0, -0.75, 0.0, -0.75, -0.5, 0.75, -0.75, -0.5, 0.25, -0.25, -1.0, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 0.0, -0.5, -1.0, 0.5, -0.5, -0.25, 1.0, 0.0, 0.25, -0.5, -1.0, -0.5, 0.25, 0.25, -1.0, 0.75, 1.0, 0.75, -0.75, -0.75, 0.5, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, 1.0, -0.25, 0.75, 1.0, -1.0, 0.25, -0.75, -0.75, 0.25, 0.25, 0.25, 0.25, 0.0, 0.5, -0.5, -0.75, -1.0, 0.5, ]);
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.75, -0.25, -0.5, -0.5, 0.0, -1.0, -0.75, 0.0, -0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -0.25, -1.0, -0.5, -0.75, -0.5, -0.25, -0.25, -0.5, 0.5, 0.0, -1.0, -1.0, 0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -1.0, 0.0, 0.75, 0.75, -0.25, 0.0, -0.25, 0.75, 1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, -0.75, -0.25, 0.75, 0.5, -0.75, 1.0, 1.0, 0.75, -1.0, 0.75, 0.0, -1.0, 1.0, -0.25, -1.0, -1.0, -0.75, -0.75, 0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, 0.5, 0.5, 0.5, -0.25, -1.0, -0.25, 0.0, -0.5, 0.5, 1.0, -0.5, -0.25, 0.5, 0.75, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer001.destroy()
    device50.pushErrorScope("internal");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer500.destroy()
    
    
    
    buffer103.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer400.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device00.pushErrorScope("out-of-memory");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device60.pushErrorScope("validation");
    buffer101.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer600.destroy()
    buffer102.destroy()
    device40.pushErrorScope("out-of-memory");
    
    const array10 = new Float32Array([0.0, 1.0, -1.0, -0.75, 0.0, 1.0, -0.5, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, 0.0, 0.75, -0.25, 0.75, -0.25, 0.0, 0.75, 0.0, 0.25, -0.25, 0.25, 0.25, 0.0, 0.5, 1.0, 0.25, -0.5, 0.75, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, -0.5, 0.0, -0.75, 0.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.25, -0.5, 0.25, 1.0, -1.0, -0.5, 0.25, -0.75, -0.25, -1.0, 0.5, -0.25, -0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, -0.5, 0.0, -0.5, 0.0, 0.5, 0.75, 0.75, -0.25, 0.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.5, 1.0, 1.0, -0.75, 0.0, 0.75, 1.0, 0.0, -0.5, -0.25, -0.75, -1.0, -0.5, -1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.0, -0.25, ]);
    buffer800.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device80.pushErrorScope("internal");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer501.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer302.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("validation");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
    device20.pushErrorScope("out-of-memory");
    
    buffer601.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer104.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    buffer403.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer801.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    device100.pushErrorScope("out-of-memory");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.pushErrorScope("validation");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer802.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.pushErrorScope("internal");
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.pushErrorScope("out-of-memory");
    
    
    buffer106.destroy()
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer406.destroy()
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    
    device50.pushErrorScope("validation");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    buffer303.destroy()
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    
    
    
    
    
    
    const array11 = new Float32Array([0.0, -0.75, -0.75, 0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 1.0, -0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.0, 0.25, -1.0, 0.75, 0.0, 1.0, -0.5, -1.0, -0.25, 0.5, 0.75, -0.75, -0.75, -0.25, 0.75, -0.5, -0.75, 1.0, 1.0, -0.25, 0.25, -1.0, -0.25, -1.0, 0.5, -0.75, 1.0, 1.0, 1.0, 0.0, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, 0.5, 0.5, 1.0, -0.75, 1.0, 0.5, 0.75, -1.0, 0.5, 0.5, -1.0, -0.75, 0.25, -0.25, -0.75, -0.75, 1.0, -1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.5, 0.25, -0.5, -1.0, 1.0, 0.75, -0.5, 1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 0.75, -0.25, -0.25, 0.5, 0.0, -1.0, 1.0, -0.5, 0.25, ]);
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    buffer603.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device80.pushErrorScope("out-of-memory");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer200.destroy()
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("validation");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device40.pushErrorScope("out-of-memory");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer900.destroy()
    device70.pushErrorScope("out-of-memory");
    buffer105.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const texture804 = device80.createTexture({
        label: "texture804",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer304.destroy()
    const texture805 = device80.createTexture({
        label: "texture805",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer407.destroy()
    buffer502.destroy()
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer305.destroy()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture806 = device80.createTexture({
        label: "texture806",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture807 = device80.createTexture({
        label: "texture807",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    
    buffer002.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    
    const texture808 = device80.createTexture({
        label: "texture808",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer604.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer503.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer1200.destroy()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    buffer201.destroy()
    
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.pushErrorScope("out-of-memory");
    
    const array12 = new Float32Array([-0.75, -0.75, 0.5, 0.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.25, -1.0, 1.0, 0.25, 0.75, 1.0, -0.25, 0.0, 0.25, 0.75, 0.25, -0.25, -1.0, -0.5, 0.5, -0.75, 0.75, -1.0, -0.25, 0.5, 0.5, -0.5, 0.0, 0.75, 0.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, -0.25, -0.75, 0.5, 0.75, 0.5, -1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.5, 0.25, -0.75, 1.0, -0.75, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.75, 0.75, 0.75, -0.5, -0.5, -0.25, -0.25, 0.25, 0.0, -1.0, -0.25, 0.0, 0.25, -0.5, -0.25, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, 1.0, 0.0, -0.25, ]);
    buffer1000.destroy()
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16float",
        dimension: "2d"
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture809 = device80.createTexture({
        label: "texture809",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer107.destroy()
    
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-0.75, -0.75, 0.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.25, 0.0, 0.25, -0.75, 0.75, -0.75, -1.0, 1.0, 0.5, -0.75, 0.75, -1.0, -1.0, -0.25, 0.25, -1.0, -0.75, 0.75, 0.5, 0.25, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, -0.75, -0.75, 1.0, 0.0, -0.25, 0.75, -0.5, 0.75, 1.0, 0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 0.75, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.25, 0.0, 1.0, 1.0, -1.0, 1.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.25, 0.0, 1.0, -1.0, -0.5, 1.0, -1.0, 0.5, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, -0.5, 0.75, 0.5, 0.75, -0.75, ]);
    buffer805.destroy()
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    buffer405.destroy()
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}