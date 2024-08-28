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
    
    
    const array0 = new Float32Array([0.25, 0.75, -1.0, -1.0, -0.25, -1.0, 0.5, 0.5, 0.75, 0.5, 0.75, 0.25, 0.75, -1.0, -1.0, 1.0, 0.75, 1.0, 0.25, 1.0, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 0.0, 0.5, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, -0.25, -0.25, 1.0, -1.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, 0.75, -0.5, -0.75, 1.0, -1.0, 0.75, -0.25, 0.25, 0.25, 0.5, 0.5, 0.75, -0.5, -0.5, 0.25, 1.0, 0.25, -0.25, -0.5, 0.5, -0.5, 0.75, -0.25, -0.25, 0.5, 0.0, 0.75, 0.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, 0.0, -0.25, 1.0, 1.0, -0.75, 0.75, -0.75, 1.0, 0.5, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, -1.0, -1.0, ]);
    const array1 = new Float32Array([-1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.25, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.0, 0.75, 0.5, -0.75, -0.25, -0.75, 0.75, -0.5, 1.0, 0.25, -0.75, 0.5, -0.75, 0.5, -0.75, 0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 0.25, 0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, 0.25, -0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, -0.5, 0.5, 0.0, -1.0, 0.25, -1.0, -0.75, -0.75, 0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.75, -0.75, -0.5, 0.25, -0.25, 0.75, -0.75, 0.0, 0.0, -0.75, -0.75, -0.25, 0.5, 1.0, -1.0, -0.5, -1.0, 1.0, 0.25, 0.25, -0.5, 0.0, -0.75, -0.5, 0.75, -0.25, -1.0, 1.0, ]);
    const array2 = new Float32Array([-0.5, -1.0, 1.0, -0.5, -0.25, 0.75, -0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 0.0, -0.25, 0.0, -0.25, -1.0, 0.0, -0.25, 0.5, -0.5, 0.75, -0.75, 0.5, 1.0, -1.0, -0.5, -0.5, 0.0, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -1.0, 0.75, -0.25, 0.0, -0.25, -0.75, -0.25, -1.0, 1.0, -0.75, 0.75, 0.0, 0.25, 0.75, 0.75, 0.5, -0.25, -1.0, -0.5, 0.5, 0.75, 0.25, 0.75, 0.25, -0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 0.25, 0.25, -0.75, 0.5, 0.0, 0.75, -0.25, 0.75, 1.0, -0.75, -0.5, -0.75, 1.0, 1.0, 0.25, -0.5, 1.0, 0.25, 0.0, -0.5, 0.75, -0.25, 1.0, -0.25, 0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([0.0, 1.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.25, 0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, 1.0, -0.5, -0.25, 1.0, -1.0, 0.75, -0.75, 1.0, 0.5, -0.5, 0.0, 0.25, -0.5, -1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.25, -0.25, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.25, 1.0, 0.75, 0.0, -0.25, -0.75, 0.5, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.75, 0.75, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 1.0, 0.5, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 0.25, -0.25, -0.5, -0.25, -1.0, -0.5, 0.0, 0.5, -0.25, 1.0, -0.5, -0.75, -0.5, -0.25, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array4 = new Float32Array([0.25, 0.75, 0.0, -0.25, 0.0, -0.75, 0.25, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, -0.25, -1.0, 0.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.5, -0.25, -0.75, -0.5, 0.0, -0.5, 1.0, 1.0, 0.5, 0.25, -0.25, 0.75, -0.5, 0.0, 0.0, -1.0, 0.75, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.25, 0.75, -0.75, 0.5, 0.0, 1.0, 0.25, -0.25, 0.0, 0.5, 0.0, -0.5, -1.0, 0.25, -0.75, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 0.5, -0.75, -0.5, 0.75, 0.25, -1.0, 0.0, -0.5, 0.5, 0.25, 0.5, -0.25, 0.0, 0.75, -0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 0.5, 0.25, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    const array5 = new Float32Array([0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 1.0, -1.0, 0.25, 0.25, -0.5, 0.25, 0.75, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, -0.25, 0.0, 0.25, -0.75, -1.0, -0.75, -0.75, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, -0.75, 1.0, -0.25, -1.0, -1.0, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.25, -0.75, 1.0, 0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.75, -0.25, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.25, -0.75, -0.5, 1.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.5, -0.25, -0.75, 0.5, -1.0, 1.0, -1.0, -0.25, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.popDebugGroup();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer200 = command_encoder200.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array6 = new Float32Array([0.5, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 0.75, -1.0, -1.0, 0.5, 0.5, 1.0, -0.25, 1.0, 0.25, 0.0, 0.0, 1.0, 0.5, 0.5, -0.5, 0.0, 0.0, -0.25, 0.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, -0.5, 1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.5, -0.25, 1.0, 1.0, -0.75, 1.0, -0.75, -0.25, 0.25, -1.0, -0.25, 0.0, 0.25, -0.75, 0.75, -0.25, 0.75, 1.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.75, 0.75, -0.25, 0.5, -0.5, 0.0, 0.0, 1.0, 0.5, 0.25, -1.0, 1.0, 0.5, 0.75, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, 0.25, -0.25, 0.0, -0.75, 0.0, -1.0, 0.25, 0.25, -0.5, 0.75, 0.5, 0.5, 0.75, 1.0, 0.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer200.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.submit([command_buffer200, ]);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.destroy();
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array7 = new Float32Array([0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 0.0, -1.0, 0.75, -0.25, 1.0, 0.0, 0.5, 0.25, 0.75, 1.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.5, 1.0, -0.25, -0.5, 1.0, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, -0.5, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, -0.25, -0.25, 0.25, 0.75, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 1.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, 0.25, -0.75, -0.75, 0.25, 0.5, -1.0, 1.0, -0.5, -0.25, 0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, -0.75, -0.5, 0.25, 0.75, 0.0, 0.75, 0.5, -0.5, -0.25, 0.25, -0.5, -0.5, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_buffer301 = command_encoder301.finish();
    device30.queue.submit([command_buffer301, ]);
    const array8 = new Float32Array([0.75, -0.25, 0.75, 0.5, 0.0, 0.5, 0.0, 1.0, 0.5, -1.0, -0.5, 0.0, -0.25, 0.25, 1.0, 1.0, 0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, 1.0, -0.75, -0.75, 0.25, -0.25, 0.0, 0.0, 0.5, -0.75, -1.0, 0.5, 0.0, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 0.75, -1.0, 0.5, -0.75, 1.0, -0.25, -0.25, -0.25, 0.75, -1.0, -1.0, -0.25, -1.0, 0.75, -0.5, 0.75, 1.0, -0.25, -0.75, 0.25, 0.75, 0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 0.25, 0.0, 0.25, -0.75, 1.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.5, -1.0, 0.75, -0.75, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, -1.0, 1.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.0, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    
    
    
    command_encoder302.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
    
    const array9 = new Float32Array([-0.25, -0.5, -0.25, -0.25, 0.5, -1.0, -0.25, 1.0, -0.5, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, -0.25, -1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.25, 0.0, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, 0.25, 0.0, -0.25, 0.0, 0.5, 0.0, 0.25, -1.0, 0.5, -0.75, 1.0, 0.75, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.75, -0.5, -1.0, -0.25, -0.25, 0.75, 0.0, -0.5, 0.25, -0.5, 0.75, 0.5, -0.5, -0.25, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 0.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, -1.0, 0.5, -0.75, 0.0, 0.75, -0.75, -0.25, 0.5, 0.5, -0.5, 1.0, -0.25, -0.25, -0.5, 0.5, 0.5, 0.75, 1.0, 0.75, 1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_buffer302 = command_encoder302.finish();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const array10 = new Float32Array([1.0, -0.5, 0.25, 0.25, 1.0, -0.5, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, -0.25, -0.25, -0.25, 0.0, 1.0, 1.0, 0.25, -0.25, -0.5, -0.25, -0.75, 0.0, 0.0, -0.5, -0.75, 1.0, 1.0, -0.5, 1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, -1.0, 0.5, -0.5, -0.25, -0.5, 0.25, -0.75, 1.0, -1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, 0.75, -0.25, -0.75, -0.5, -0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, 0.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, -0.25, -0.25, 0.25, 0.25, -1.0, -0.75, 0.0, -0.25, 0.25, ]);
    device30.queue.submit([command_buffer302, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const array11 = new Float32Array([-0.25, -0.25, 1.0, -1.0, -1.0, 1.0, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, -0.25, 0.25, 0.5, 0.75, 0.75, -0.75, -0.25, -0.75, -0.75, -0.25, 0.75, -0.25, 0.5, -0.25, -0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -0.25, 0.75, 0.75, 0.0, 0.0, 0.5, -0.5, 1.0, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.5, -0.25, 0.25, -0.5, -0.5, 0.5, -0.5, 1.0, -0.25, 0.0, 0.75, -1.0, 1.0, 1.0, -0.75, 0.75, -0.25, -0.5, 0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, -0.25, -0.25, 1.0, 0.5, 0.25, 0.5, 0.5, 0.0, 0.5, -0.75, 1.0, -1.0, 0.25, 1.0, -0.25, -0.25, -0.75, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, ]);
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    buffer300.destroy()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture601.destroy();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    render_pass_encoder6000.setStencilReference(1);
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    const command_buffer305 = command_encoder305.finish();
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder306.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder6000.insertDebugMarker("marker");
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    command_encoder306.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture700.destroy();
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    texture303.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    command_encoder602.insertDebugMarker("mymarker");
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    render_pass_encoder3070.insertDebugMarker("marker");
    render_bundle_encoder700.popDebugGroup();
    render_pass_encoder6000.insertDebugMarker("marker");
    const array12 = new Float32Array([-1.0, -1.0, 0.75, 0.25, 0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 0.5, -1.0, 0.75, 0.0, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.0, -0.5, -0.75, 0.75, -0.75, -0.5, -1.0, 1.0, 1.0, -1.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, 0.0, 0.25, 0.75, 0.25, -0.5, 0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 0.5, 1.0, 1.0, 0.75, 0.5, 0.5, 0.25, 0.0, 0.25, -0.5, 0.0, 0.75, 0.75, 0.5, 0.25, 0.0, -0.5, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, 1.0, 0.25, 0.25, 0.5, 1.0, 0.5, -0.25, 0.25, 0.25, 0.0, 0.5, -0.75, 0.0, -0.25, -0.5, 0.5, 0.5, 0.75, 0.0, 0.0, -1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder3070.setStencilReference(1);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    command_encoder308.clearBuffer(buffer301);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const command_buffer308 = command_encoder308.finish();
    
    render_pass_encoder3070.insertDebugMarker("marker");
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    render_pass_encoder6000.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    texture602.destroy();
    const command_buffer603 = command_encoder603.finish();
    device30.queue.submit([command_buffer305, ]);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    device60.queue.submit([command_buffer603, ]);
    device40.destroy();
    
    
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    render_pass_encoder6000.setStencilReference(1);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder6000.insertDebugMarker("marker");
    texture701.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3070.setStencilReference(1);
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    command_encoder702.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture301.destroy();
    render_pass_encoder3070.insertDebugMarker("marker");
    buffer301.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    command_encoder702.popDebugGroup()
    render_bundle_encoder701.insertDebugMarker("marker");
    command_encoder702.insertDebugMarker("mymarker");
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const array13 = new Float32Array([0.25, 1.0, -0.75, -1.0, -1.0, 0.75, -0.5, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, 0.25, -0.5, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -0.5, 1.0, 0.25, -0.75, 0.5, 0.0, 0.5, 0.25, 0.5, -1.0, -1.0, 1.0, -0.75, -0.75, -0.75, 0.0, -1.0, 0.0, -0.5, 0.25, 0.5, 0.25, 0.5, -0.75, -1.0, -0.25, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 0.0, 0.0, -0.5, 0.75, -1.0, -1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, 1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 1.0, 0.5, 1.0, 0.5, 1.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.25, 1.0, -0.5, 0.5, -1.0, 1.0, -0.75, 0.75, 0.25, ]);
    device50.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder7010.setStencilReference(1);
    
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    device60.queue.writeBuffer(buffer601, 0, array11, 0, array11.length);
    render_pass_encoder3070.setStencilReference(1);
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder7010.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3070.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    render_pass_encoder7010.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    render_pass_encoder3070.insertDebugMarker("marker");
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    
    render_bundle_encoder301.popDebugGroup();
    command_encoder702.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.popDebugGroup()
    buffer600.destroy()
    render_pass_encoder7000.setStencilReference(1);
    command_encoder309.insertDebugMarker("mymarker");
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    render_pass_encoder6000.setStencilReference(1);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder3030.popDebugGroup()
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer302.destroy()
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.setStencilReference(1);
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder7000.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder605.clearBuffer(buffer601);
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_pass_encoder3070.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3090 = command_encoder309.beginComputePass({ label: "compute_pass_encoder3090" });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device60.queue.writeBuffer(buffer601, 0, array9, 0, array9.length);
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_bundle_encoder702.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder7010.insertDebugMarker("marker");
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/shader_module6010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    render_bundle_encoder702.insertDebugMarker("marker");
    compute_pass_encoder3090.pushDebugGroup("group_marker")
    const render_pass_encoder6050 = command_encoder605.beginRenderPass({
        label: "render_pass_encoder6050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    texture302.destroy();
    compute_pass_encoder6010.popDebugGroup()
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    device60.queue.writeBuffer(buffer601, 0, array13, 0, array13.length);
    command_encoder702.insertDebugMarker("mymarker");
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    compute_pass_encoder6040.popDebugGroup()
    buffer601.destroy()
    compute_pass_encoder3060.popDebugGroup()
    
    
    command_encoder702.insertDebugMarker("mymarker");
    buffer602.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_pass_encoder7000.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    render_bundle_encoder700.popDebugGroup();
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder702.insertDebugMarker("marker");
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder900.pushDebugGroup("mygroupmarker")
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    command_encoder900.popDebugGroup()
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    device30.queue.submit([command_buffer308, ]);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeBuffer(buffer700, 0, array13, 0, array13.length);
    render_pass_encoder6000.setStencilReference(1);
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    texture603.destroy();
    
    render_pass_encoder7000.insertDebugMarker("marker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder6050.insertDebugMarker("marker");
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder7000.insertDebugMarker("marker");
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder6050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer304.destroy()
    compute_pass_encoder3090.popDebugGroup()
    device70.queue.writeBuffer(buffer700, 0, array12, 0, array12.length);
    device60.queue.writeTexture({ texture: texture604 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_pass_encoder7010.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    device60.queue.writeTexture({ texture: texture604 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder701.insertDebugMarker("marker");
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture604 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder1100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder602.insertDebugMarker("marker");
    texture703.destroy();
    device30.queue.writeBuffer(buffer306, 0, array12, 0, array12.length);
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    render_pass_encoder3070.setStencilReference(1);
    
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    render_pass_encoder3070.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device60.queue.writeTexture({ texture: texture604 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.popDebugGroup()
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    
    render_pass_encoder7000.setStencilReference(1);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    const array14 = new Float32Array([0.75, 0.25, 1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.0, -0.25, -1.0, -0.25, -1.0, 1.0, -0.75, -0.5, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, -1.0, 0.5, -1.0, 0.0, 0.25, -0.25, -0.75, -0.75, 0.25, 0.0, 0.75, 0.25, 1.0, 0.25, -0.5, -0.5, -0.5, -1.0, -0.5, 0.5, 0.75, -0.75, 0.5, 0.75, 0.5, 0.5, 0.75, 0.0, -1.0, 1.0, 0.75, -0.75, -0.25, 0.0, -1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, -0.5, -0.25, 0.75, -0.75, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 0.75, 1.0, -0.75, -0.75, 0.0, 0.0, 0.0, 0.5, 0.25, -1.0, 0.25, -0.25, -0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.5, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, 0.25, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_bundle_encoder901.pushDebugGroup("group_marker");
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.popDebugGroup();
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder3030.popDebugGroup()
    device70.queue.writeBuffer(buffer700, 0, array14, 0, array14.length);
    
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    render_pass_encoder3070.setStencilReference(1);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device60.queue.writeTexture({ texture: texture604 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    render_pass_encoder6050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    compute_pass_encoder6040.popDebugGroup()
    command_encoder1100.popDebugGroup()
    const command_buffer1100 = command_encoder1100.finish();
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
}