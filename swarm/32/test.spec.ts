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
    
    const array0 = new Float32Array([-0.75, 0.5, 0.0, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.75, 0.0, -0.25, 0.25, -0.25, -0.5, 0.25, -0.5, -0.75, -0.75, 0.75, -0.5, -1.0, -0.75, 1.0, 0.0, -1.0, -0.75, 0.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.5, -1.0, 0.75, 0.0, -1.0, -0.75, -0.5, -0.25, -0.5, -0.25, -0.75, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 1.0, -1.0, -0.25, 0.5, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, -0.75, -0.5, -0.5, 0.25, -0.75, -0.5, -0.25, -1.0, -0.25, 0.75, 0.5, -0.75, 0.0, 1.0, -1.0, -0.75, -0.25, -1.0, -0.25, -0.75, -0.25, -0.75, 1.0, -0.5, -0.75, 0.0, 0.0, 0.25, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -0.75, 1.0, 1.0, 0.0, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([1.0, -0.75, 0.25, 0.25, -0.75, -0.75, -0.75, 1.0, 0.5, -0.75, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 1.0, 1.0, 0.75, -0.25, 0.25, 0.5, -0.75, -0.25, 0.75, -0.5, 0.75, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, -1.0, 1.0, 0.5, -0.75, -0.75, 0.5, 0.5, -0.5, 0.5, -0.75, -0.75, -0.75, -1.0, 0.0, 0.75, -1.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.0, -0.25, 0.0, 0.5, -0.75, -0.5, 0.75, 0.0, 0.5, 1.0, -0.75, 0.5, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, -0.25, -0.75, 0.5, 1.0, 0.75, 0.75, 0.75, 0.25, -0.25, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const array2 = new Float32Array([1.0, -0.25, 0.0, -0.25, -0.25, 0.0, 0.25, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, -1.0, -0.25, 0.25, 0.25, -0.5, -0.5, -0.75, 1.0, 1.0, -1.0, 0.5, 0.25, -0.25, 0.25, -1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.5, 0.5, 1.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.5, 0.25, -0.25, 0.75, -0.5, -0.5, -1.0, 0.25, 0.25, -0.75, 0.25, 0.75, 0.5, -0.75, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, 1.0, 1.0, -0.5, 0.25, 0.5, -1.0, 0.75, -1.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.0, 0.75, 0.0, 0.75, -1.0, -0.5, 0.25, 0.75, -1.0, -0.75, 0.5, 1.0, 0.25, ]);
    device10.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array3 = new Float32Array([0.25, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, -0.75, 1.0, 0.75, -0.25, -0.5, 0.75, 0.0, 0.25, -0.75, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, 0.75, 1.0, 0.5, -0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.75, -0.5, 0.5, 0.0, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.25, 0.25, 0.0, 0.0, 0.0, 0.0, -1.0, -0.25, -1.0, 0.25, 0.5, -0.25, 0.75, -1.0, -1.0, -1.0, -1.0, 0.5, -0.5, 1.0, 0.0, 0.0, 0.25, -0.5, -0.5, 0.5, -0.25, -1.0, 0.25, -0.5, 1.0, 0.0, 0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.5, -0.75, -0.5, 0.25, 0.75, 0.5, 0.5, 0.5, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture200.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 0.75, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, 0.75, 0.75, -0.75, 1.0, 0.5, -0.75, 0.75, 0.25, -0.5, -0.5, -0.75, -0.25, 0.0, 0.25, -0.75, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, -0.75, 0.5, 0.0, 0.5, 0.75, 0.5, 1.0, 1.0, 1.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, 1.0, 1.0, -0.75, 0.5, -0.75, 0.5, -1.0, -1.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.5, 0.25, -0.75, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, 0.25, -1.0, -0.25, 0.5, 0.0, -0.25, -0.25, 0.5, 0.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.75, 0.5, 0.5, 0.0, -0.5, 0.5, ]);
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer300 = command_encoder300.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_buffer201 = command_encoder201.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    texture202.destroy();
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    
    const command_buffer302 = command_encoder302.finish();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.pushErrorScope("internal");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture300.destroy();
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    texture201.destroy();
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("out-of-memory");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_pass_encoder2030.executeBundles([])
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder2020.executeBundles([])
    
    
    render_pass_encoder2020.executeBundles([])
    
    render_pass_encoder2020.executeBundles([])
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_buffer204 = command_encoder204.finish();
    device40.pushErrorScope("internal");
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.pushErrorScope("internal");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.executeBundles([])
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeTexture({ texture: texture204 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2030.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    texture100.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder2030.insertDebugMarker("marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder2020.executeBundles([])
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder205.pushDebugGroup("mygroupmarker")
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    render_pass_encoder2070.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    texture204.destroy();
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder208.insertDebugMarker("mymarker");
    
    texture102.destroy();
    device20.pushErrorScope("internal");
    
    
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    texture205.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.pushErrorScope("internal");
    render_pass_encoder2080.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2020.executeBundles([])
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    render_pass_encoder2020.executeBundles([])
    texture400.destroy();
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    
    render_pass_encoder2080.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    texture101.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    texture207.destroy();
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    
    texture206.destroy();
    render_pass_encoder2080.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder3030.executeBundles([])
    device20.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device40.pushErrorScope("validation");
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const array5 = new Float32Array([0.5, -0.5, 0.25, -0.5, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, 1.0, 0.0, 0.25, 0.5, 0.25, -0.5, 0.25, 0.5, 0.75, -0.5, 0.5, 0.0, -0.75, -0.75, -0.75, -1.0, 0.25, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.75, -0.5, 1.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.5, -0.25, 0.75, 0.25, 0.25, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, 0.25, -0.75, 0.0, -0.5, -0.75, 0.75, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, -0.75, -1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.5, -0.25, 0.0, -0.25, -1.0, 0.0, -0.25, 0.5, -0.25, 0.0, -0.75, -0.5, 0.5, -0.5, 0.0, 0.0, -0.75, ]);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const render_pass_encoder2090 = command_encoder209.beginRenderPass({
        label: "render_pass_encoder2090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2070,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
    render_pass_encoder2070.executeBundles([])
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    texture401.destroy();
    texture103.destroy();
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder3030.insertDebugMarker("marker");
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2080.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_pass_encoder2090.setViewport(0, 0, texture207.width / 2, texture207.height / 2, 0, 1);
    
    
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder3040.insertDebugMarker("marker")
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    texture208.destroy();
    
    device40.pushErrorScope("out-of-memory");
    
    
    
    const command_buffer2010 = command_encoder2010.finish();
    render_pass_encoder2080.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder2070.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2080.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    
    render_pass_encoder2090.setViewport(0, 0, texture207.width / 2, texture207.height / 2, 0, 1);
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder2070.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder4020.insertDebugMarker("marker");
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture402.destroy();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.executeBundles([])
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2070.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder2090.executeBundles([])
    render_pass_encoder2060.insertDebugMarker("marker");
    
    
    texture404.destroy();
    
    render_pass_encoder4020.executeBundles([])
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder2060.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    render_pass_encoder2090.executeBundles([])
    
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder2090.setScissorRect(0, 0, texture207.width / 2, texture207.height / 2);
    
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder4010.insertDebugMarker("marker");
    
    render_pass_encoder4010.executeBundles([])
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    texture301.destroy();
    render_pass_encoder2080.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4020.insertDebugMarker("marker");
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2060.insertDebugMarker("marker");
    
    render_pass_encoder4020.executeBundles([])
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_pass_encoder2090.setViewport(0, 0, texture207.width / 2, texture207.height / 2, 0, 1);
    
    
    
    
    
    
    render_pass_encoder2060.insertDebugMarker("marker");
    
    
    render_pass_encoder2090.insertDebugMarker("marker");
    
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    render_pass_encoder2090.executeBundles([])
    
    render_pass_encoder2060.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}