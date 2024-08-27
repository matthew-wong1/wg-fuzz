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
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.75, 1.0, 0.0, 1.0, 0.25, -1.0, 1.0, 0.0, -0.75, -0.25, 1.0, -1.0, 1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 1.0, 0.0, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, 0.0, -0.75, -0.75, 1.0, 0.75, -1.0, -0.25, -0.25, -0.5, -0.25, 0.25, -1.0, -0.5, 1.0, 0.5, 1.0, -0.25, -1.0, 1.0, 0.5, -0.5, -0.25, 0.5, -0.75, -1.0, -1.0, 0.25, 0.25, -1.0, 0.5, -0.25, 0.5, 0.25, 1.0, 0.0, 0.25, 0.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, -1.0, 0.5, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, -0.25, 0.0, -1.0, 0.25, 0.75, 0.5, -0.75, -0.25, 0.0, 0.25, 0.25, 0.5, 0.5, 0.0, 0.75, 0.75, -0.25, 0.5, -0.75, -0.25, 0.5, -0.25, ]);
    
    const array1 = new Float32Array([0.75, 1.0, -1.0, 1.0, 0.25, -0.25, 0.25, -0.75, 0.75, -0.75, 0.75, 0.5, -0.75, 0.25, 1.0, -0.25, -0.25, 0.75, 0.75, 1.0, 0.75, 0.25, -0.75, 0.5, -0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.5, -0.25, 0.5, 0.25, 0.25, -0.5, 0.25, -0.75, 0.25, 0.0, 1.0, -1.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.5, 0.25, 0.0, 0.75, 0.25, 0.0, 0.25, 0.0, 0.25, 0.5, -1.0, -1.0, 0.75, 1.0, -0.5, 0.25, 0.0, -1.0, 0.0, 0.25, -0.75, -0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.25, 0.5, 1.0, -0.75, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array2 = new Float32Array([-0.75, 1.0, -0.75, -0.75, 0.5, 0.0, -0.5, -0.5, -0.75, -0.5, -1.0, 0.0, 1.0, 0.75, -1.0, -1.0, -0.5, -0.75, -0.25, -0.75, 0.75, -0.75, 0.5, 0.5, 0.75, 0.5, -0.75, 1.0, -1.0, 0.25, 0.25, 1.0, 0.75, 0.25, 0.75, 0.5, 0.75, 0.0, -0.25, 0.25, 0.25, 0.25, -0.5, 0.25, 0.75, 1.0, -0.75, -0.5, -0.25, -0.25, -0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.5, 0.75, -1.0, -0.25, 0.75, -0.25, 1.0, 0.5, 0.25, 0.75, 0.5, -1.0, 0.75, 0.5, 1.0, 0.75, 0.25, 0.0, -0.75, -0.75, 0.5, 0.5, -0.5, 0.5, -0.75, -0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 1.0, 1.0, -1.0, -0.5, 0.0, ]);
    
    
    
    
    
    const array3 = new Float32Array([0.25, -1.0, -0.25, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -1.0, -0.75, 0.25, -0.75, 1.0, -0.75, -0.75, 0.25, -0.25, 0.25, -0.75, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, -1.0, 0.75, 0.25, -0.5, -1.0, 0.0, 0.5, 1.0, -0.75, -0.25, -0.75, -0.25, 0.5, 1.0, -0.25, 0.75, 0.0, 0.25, -0.25, 0.75, 1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.25, 0.25, 0.5, -0.5, -0.75, 1.0, 0.75, 0.75, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, 0.5, -1.0, 0.5, 0.5, -0.25, 0.0, -0.5, -0.25, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, 0.75, 0.0, -0.25, 0.25, -0.75, 0.0, 0.0, -0.75, 1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    texture101.destroy();
    const array4 = new Float32Array([0.75, -0.75, 0.25, -0.25, 0.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.5, 1.0, 0.75, 1.0, -0.5, 0.0, 1.0, -1.0, -1.0, -0.5, 0.5, -0.5, -0.75, -0.5, 0.5, -0.25, -0.5, -0.25, -0.5, 0.5, -0.25, -0.5, 0.75, -0.75, 1.0, 0.25, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, 0.25, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, -0.25, -0.25, 0.0, 0.75, 0.25, 0.75, -0.5, 0.5, -0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.5, 0.25, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.5, -0.75, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("validation");
    
    texture102.destroy();
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array5 = new Float32Array([0.75, 0.75, 0.75, 0.75, -1.0, 0.25, -1.0, -0.25, -0.25, -0.25, 0.0, 0.75, -0.25, 1.0, 1.0, 0.25, -0.5, 0.5, 0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.75, 0.0, 0.75, -1.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.0, -1.0, 0.5, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, -0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.75, 0.5, -0.25, -0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 1.0, -1.0, -1.0, -0.75, -0.75, 0.0, 0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.25, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, ]);
    
    render_bundle_encoder101.popDebugGroup();
    device30.pushErrorScope("validation");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture103.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    texture104.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device30.pushErrorScope("validation");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.popDebugGroup();
    
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    texture105.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture301.destroy();
    device10.pushErrorScope("out-of-memory");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder101.popDebugGroup();
    
    device30.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    render_bundle_encoder101.popDebugGroup();
    const array6 = new Float32Array([0.25, 0.75, 0.25, -0.25, 0.0, 0.0, -0.75, -1.0, 1.0, -0.5, 0.25, 0.75, -0.25, 1.0, 0.25, -0.25, 0.75, -0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 1.0, 0.25, 0.0, -0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, 0.5, -1.0, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.75, 0.0, 0.25, 0.25, 0.5, 0.0, -1.0, -1.0, -0.25, -1.0, 0.0, 1.0, 1.0, -1.0, 0.0, 1.0, 0.5, 0.25, 0.75, 0.25, -0.75, -0.25, -0.5, 0.5, -1.0, 0.5, -0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.25, -1.0, 0.25, 0.25, 0.25, -0.25, -0.75, 0.5, 0.75, -0.75, -0.75, -0.75, -1.0, 0.0, 0.5, 1.0, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("validation");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.75, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, 0.5, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, -1.0, 0.25, 0.25, 0.5, -0.75, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.0, -1.0, -0.25, -0.5, -0.25, 0.75, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, 0.75, -0.25, 1.0, -0.5, 0.5, 0.5, 1.0, 1.0, -0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -0.25, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, -0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 0.75, -0.75, 0.75, -0.5, 0.25, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.75, -0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, 0.5, -0.75, 0.5, 0.25, 0.5, -0.25, ]);
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array8 = new Float32Array([-0.5, -0.25, -0.75, 0.5, 0.25, 1.0, 0.0, -0.75, 0.5, 0.75, -0.75, 0.25, -1.0, 0.75, 0.25, 0.5, -0.5, -0.75, 1.0, 0.0, -0.25, -0.75, -0.75, 1.0, -0.25, -0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -1.0, -0.5, -0.75, -0.75, 0.5, -0.25, -0.25, 0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 1.0, -0.5, 0.5, 0.0, 0.5, 0.5, 1.0, 0.75, -0.75, 0.75, -1.0, -0.25, 0.75, 0.0, 0.25, 0.5, -1.0, -0.5, -0.75, -0.25, -1.0, 0.25, -0.25, -1.0, 0.5, 0.0, -1.0, 0.5, 0.0, 0.75, -0.5, -1.0, 0.0, 0.75, -0.5, -0.75, -1.0, -0.75, 0.0, -0.5, 0.0, 1.0, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, 0.5, 0.25, 0.25, -1.0, 0.5, -1.0, ]);
    
    const array9 = new Float32Array([-1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.5, 1.0, 0.0, -0.5, -0.5, -0.25, 0.25, 0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 0.0, 0.25, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, -0.75, -0.5, -0.5, -0.25, 0.5, 0.5, 0.0, 0.5, -1.0, 0.5, 0.75, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, 0.0, -1.0, -0.75, -0.25, -0.5, -0.5, 0.0, -1.0, 0.25, 1.0, 0.5, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, -0.75, -0.5, -1.0, -0.75, 0.75, 0.25, 0.0, -1.0, -1.0, -0.5, 1.0, -0.75, 0.0, -0.25, -0.25, 0.5, -0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 0.5, -0.25, 0.75, -0.25, -1.0, -1.0, -0.5, 1.0, 0.5, 1.0, 1.0, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    
    
    render_bundle_encoder200.popDebugGroup();
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    texture201.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder100.popDebugGroup();
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    device10.destroy();
    
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    texture500.destroy();
    device70.destroy();
    render_bundle_encoder200.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const array10 = new Float32Array([0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 0.0, 0.75, -0.75, 0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 0.0, 1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.5, 0.5, -0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -0.5, 0.5, -0.25, 0.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.75, 0.75, 0.0, 0.5, -0.5, 0.0, 0.5, -0.25, 0.0, 0.5, 0.25, -0.25, 0.25, -1.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.25, -1.0, 1.0, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 0.5, -0.25, 0.25, 0.0, -0.75, -0.25, 0.0, -0.25, -0.25, -1.0, 0.0, 1.0, 0.75, -0.75, 0.75, 0.5, -0.75, ]);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    device60.pushErrorScope("validation");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    texture600.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    texture202.destroy();
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device50.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([-0.25, 0.5, 0.75, 0.0, 0.25, -0.5, -0.75, -0.25, 0.25, 0.0, 0.75, 0.0, -0.25, -0.5, 0.0, 1.0, 0.0, -0.75, 0.0, -1.0, 1.0, 0.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, -0.75, 0.75, -0.75, -0.25, -0.25, -1.0, 1.0, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, -0.25, 1.0, 0.25, 0.5, 1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.75, -0.25, 1.0, 0.5, -0.5, 0.5, 1.0, -1.0, -0.25, 0.5, -0.25, 0.5, -0.5, 0.0, -1.0, 0.25, -0.25, 0.25, -1.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.0, -0.75, -0.25, -1.0, 0.25, 0.25, 0.5, 0.25, 0.75, 0.5, 0.0, -1.0, 0.0, -0.5, -0.5, -0.5, -0.25, 0.25, -1.0, 0.25, -1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture800.destroy();
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.popDebugGroup();
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    render_bundle_encoder801.popDebugGroup();
    render_bundle_encoder800.popDebugGroup();
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder600.popDebugGroup();
    texture601.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture203.destroy();
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    render_bundle_encoder800.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const array12 = new Float32Array([-0.5, 0.25, 1.0, -0.75, 0.75, -1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.25, -0.5, -0.25, 1.0, 0.25, -1.0, 0.75, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.25, -0.5, -0.5, 0.75, -0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, -1.0, 0.0, -0.25, 0.25, 0.25, 0.5, 0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, -0.75, 0.75, 0.5, 1.0, 0.25, 0.25, 0.25, 0.0, -1.0, 0.0, 0.0, -1.0, 0.0, 0.75, 0.25, 1.0, 0.5, -0.75, -0.75, 0.5, 0.0, 1.0, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.25, 1.0, 0.25, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    texture204.destroy();
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_bundle_encoder800.popDebugGroup();
    const array13 = new Float32Array([1.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.5, 0.5, 0.75, -0.25, 0.0, 0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.0, -0.5, -1.0, 0.5, 0.25, -0.5, 1.0, -1.0, -0.75, 0.0, -0.75, 0.0, -1.0, 0.0, -0.75, -0.25, 1.0, 1.0, 0.25, 0.25, -0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 1.0, -0.5, 0.25, -1.0, -0.5, 0.75, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.25, -1.0, 0.5, 0.0, -1.0, -0.75, -0.25, -0.5, -0.5, 0.5, 0.5, -0.5, 0.25, 0.0, -0.25, -1.0, 0.0, -0.75, -0.75, -0.25, -1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.5, 0.75, -1.0, 0.5, 1.0, 1.0, 0.5, ]);
    
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder201.popDebugGroup();
    
    
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    
    
    
    texture801.destroy();
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device80.destroy();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device90.destroy();
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    texture205.destroy();
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array14 = new Float32Array([-0.5, 0.75, 0.25, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, -0.5, 0.25, -0.5, 0.25, -1.0, 0.5, 0.75, 0.25, 1.0, 0.25, 0.25, -0.25, 0.5, -0.75, 1.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.5, -0.5, -0.5, -0.5, -0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 0.5, 1.0, -1.0, 0.5, 1.0, 1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 0.0, -0.75, 0.75, -1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.25, 0.5, 0.5, -0.5, -1.0, 0.0, 0.0, 0.5, -0.75, 0.0, 0.5, -0.25, -0.5, -0.5, -0.5, 0.75, 0.25, 0.75, -0.75, 0.5, -0.5, 0.75, 0.0, -0.25, 0.25, ]);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.popDebugGroup();
    
    device20.destroy();
    
    
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    
    
    
    
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    render_bundle_encoder600.popDebugGroup();
    
    device60.pushErrorScope("out-of-memory");
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const texture_view6023 = texture602.createView({ label: "texture_view6023" });
    const texture_view6024 = texture602.createView({ label: "texture_view6024" });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const sampler605 = device60.createSampler( { label: "sampler605" } );
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const array15 = new Float32Array([0.5, -1.0, 0.0, 0.5, 0.0, 1.0, 0.5, 0.75, 0.75, -0.25, -1.0, 0.25, 0.75, -1.0, -0.25, 0.0, -0.5, 0.75, 0.25, -1.0, -0.75, -0.5, -0.25, 0.0, -0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 1.0, -0.5, 0.25, -0.25, 0.25, -1.0, 0.5, 0.0, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 0.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 0.25, 0.25, 0.0, 1.0, 0.0, -0.25, -0.5, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, -0.25, 1.0, 1.0, 0.25, 0.0, 0.75, -1.0, 0.25, -0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.75, 0.5, -0.5, 0.75, ]);
    const sampler606 = device60.createSampler( { label: "sampler606" } );
    
    
    texture603.destroy();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder602.popDebugGroup();
}