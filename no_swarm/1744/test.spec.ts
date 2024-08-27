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
    
    const array0 = new Float32Array([-1.0, 1.0, -0.5, -0.25, 1.0, 0.75, -0.25, -0.25, 0.5, -1.0, 0.5, 1.0, 0.5, 0.0, -1.0, 1.0, -0.75, -1.0, 0.25, 0.75, -0.5, 1.0, 1.0, 1.0, 1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.75, 0.75, 1.0, -0.75, 0.75, -0.5, 1.0, 1.0, 0.5, 1.0, 0.5, 0.0, 0.75, 1.0, -0.25, 0.25, 0.0, 0.25, 0.0, -1.0, -1.0, 1.0, -0.75, -0.75, 0.75, -0.5, 0.0, 0.0, 0.5, 0.25, 0.0, 0.25, 0.5, -0.5, -0.5, -0.75, -0.5, 0.25, 0.5, 0.5, -0.75, 0.0, 1.0, 0.5, 0.75, 0.5, -0.75, 0.75, 0.0, 0.75, -0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.5, -0.5, 0.75, 0.25, 0.25, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, 0.5, 0.0, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.75, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, 0.25, 0.5, -0.5, 0.5, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, 0.25, -0.25, 0.5, 0.5, 0.75, 0.75, 0.0, -0.5, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 0.75, -0.25, 0.75, 0.75, 0.5, -0.25, 0.75, -1.0, 0.5, 0.75, 1.0, 0.25, -1.0, -0.25, 0.25, 1.0, -0.5, 1.0, -0.25, -1.0, -1.0, 0.75, 0.25, 0.75, -0.25, -0.75, 0.25, 0.75, 0.5, -1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 0.75, 0.25, 0.75, -0.5, -0.25, -1.0, 0.0, 0.5, -0.75, 0.25, -1.0, 1.0, 0.25, -0.75, 1.0, 0.25, 0.75, -0.25, 0.25, -0.75, 0.0, -1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([1.0, 1.0, 1.0, 0.75, 1.0, -0.75, 0.25, -0.75, 0.5, -0.75, 0.5, -0.25, 0.5, 0.5, -0.5, -1.0, -1.0, 0.5, -1.0, 0.0, -0.75, -0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.5, 0.5, -0.25, -0.75, -0.75, 1.0, -1.0, 1.0, 0.75, 1.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.25, -0.5, 0.75, 0.0, 0.5, 1.0, -0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, 0.25, 0.0, 0.0, 0.75, 0.0, 0.5, -0.5, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.75, 1.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.5, 0.75, -0.75, -0.25, -0.5, -0.5, -0.75, 1.0, 0.25, 0.0, ]);
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const array3 = new Float32Array([1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -0.25, 0.75, -0.75, 0.0, 0.75, 0.75, 0.0, 1.0, 0.0, -0.75, 1.0, 1.0, -1.0, 0.75, -1.0, 1.0, 0.5, 0.75, -0.75, -0.75, 0.5, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 0.75, -1.0, 0.25, -1.0, 0.5, 1.0, -0.25, 0.75, 0.25, 0.25, 0.0, 0.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.5, 0.25, -0.75, 0.25, -0.25, -1.0, 0.0, 0.0, -0.75, -0.75, -1.0, 0.75, -1.0, -1.0, 0.0, 0.0, 0.25, -0.25, -0.25, -1.0, -0.25, 1.0, -0.5, 1.0, 0.75, 0.75, -0.25, -0.5, -1.0, 0.75, 0.0, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.25, 0.25, -0.75, 0.75, -0.25, 0.5, -0.75, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("out-of-memory");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const array4 = new Float32Array([0.5, -0.5, -1.0, -0.5, 0.0, -1.0, -1.0, -1.0, 0.25, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, 0.25, -0.5, -0.5, 0.5, 0.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.25, 0.5, 0.5, 1.0, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 0.0, 0.5, -0.5, 0.5, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.75, 0.5, -0.5, -1.0, -0.25, -0.5, -0.25, -0.25, 0.0, 0.5, -0.75, -0.75, 0.25, 0.75, -0.75, -0.25, -0.25, -0.5, 0.75, 1.0, -0.5, 0.5, -1.0, 0.25, 0.25, 0.25, -1.0, -0.75, 0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 0.5, 0.5, -0.75, -0.75, 0.25, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    device00.destroy();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([-0.25, 1.0, 0.25, -0.25, -0.25, 0.75, -0.5, 0.75, -0.25, 0.5, 0.75, 0.75, -1.0, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, -0.5, 1.0, 0.25, 1.0, 0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, -0.25, 0.5, 0.75, 0.5, -0.25, -1.0, 0.75, 0.25, -0.25, 0.25, -0.5, 0.75, -0.25, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.0, -1.0, 0.0, -1.0, -0.25, -1.0, -0.25, -0.25, -0.25, 0.75, -0.25, 0.0, -1.0, 0.5, 0.25, -0.25, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, -0.75, 0.75, -0.25, -0.5, -0.5, -0.75, 0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 0.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.75, -0.25, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    query100.destroy()
    query101.destroy()
    
    
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    texture100.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    command_encoder100.popDebugGroup()
    
    render_bundle_encoder102.popDebugGroup();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device30.pushErrorScope("internal");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    query101.destroy()
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder100.resolveQuerySet(
        query103,
        0,
        32,
        buffer100,
        0
    )
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array6 = new Float32Array([0.5, -0.75, 1.0, 0.75, 0.75, 0.5, 0.5, 0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.75, 0.0, -0.75, -1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 1.0, 0.25, 0.25, 1.0, 0.0, -0.75, -0.75, 1.0, -0.25, 0.5, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, -1.0, 0.25, -0.5, 0.5, -1.0, 1.0, -1.0, 0.5, -0.25, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 1.0, -0.25, 0.0, -0.75, 0.25, 0.5, 0.5, -1.0, 0.25, 0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.5, 0.25, -0.5, 0.5, -0.5, 0.75, 0.5, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer103,
        0
    )
    
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    buffer102.destroy()
    render_bundle_encoder100.popDebugGroup();
    const array7 = new Float32Array([-0.75, 1.0, -0.5, 0.25, 0.25, 0.75, 0.0, -0.5, 0.5, 0.5, 0.25, 0.0, 0.0, 0.0, -0.5, -0.25, -0.75, 0.0, 1.0, -0.5, 0.25, -0.25, 0.75, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, -1.0, -0.75, 1.0, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, -0.75, -0.75, -1.0, 0.75, 1.0, -1.0, 0.5, -0.75, -1.0, 0.25, 0.0, 0.5, -0.5, 0.25, 0.25, -0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 0.5, 0.25, 0.25, 1.0, 0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.75, -1.0, 0.0, 0.75, -1.0, 0.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, -1.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device20.pushErrorScope("internal");
    render_bundle_encoder102.popDebugGroup();
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query102.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const array8 = new Float32Array([-0.25, -0.25, -0.25, -1.0, -0.75, 1.0, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, 0.5, 0.25, 1.0, 1.0, -0.5, 0.75, -1.0, 1.0, -0.75, 0.0, -0.25, -0.75, -0.25, -0.75, 0.5, 0.5, 1.0, 0.0, 0.0, 1.0, 0.25, -1.0, -1.0, 0.0, -0.75, -1.0, 0.0, 0.25, 0.0, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -1.0, 0.25, 0.5, 0.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.5, -0.5, -0.5, -1.0, 1.0, -0.75, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.75, -0.5, -0.5, 0.25, -0.25, 0.0, 0.5, -1.0, 0.75, 0.5, 0.0, 0.25, 1.0, -1.0, 0.5, -0.5, -0.25, -0.25, -0.75, -0.75, -0.25, -0.75, 1.0, ]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.popDebugGroup()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer104.destroy()
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    device00.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder101.popDebugGroup();
    query200.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3010.executeBundles([])
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query100.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([-0.75, 0.75, 0.75, -0.5, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, 0.75, -0.25, 0.0, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, -0.75, -0.5, 1.0, 0.75, -0.75, 0.0, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 0.5, 0.0, 0.0, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, 0.0, -1.0, -0.5, 0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 1.0, -1.0, -0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.5, -0.5, 0.5, 0.5, -1.0, -1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.0, -0.75, -0.25, -0.5, 1.0, -0.75, 0.25, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.75, 0.25, -1.0, 0.25, -1.0, -0.5, -0.5, 0.0, 0.0, 0.5, -0.5, 0.0, ]);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    render_bundle_encoder300.popDebugGroup();
    query100.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder3020.executeBundles([render_bundle_encoder301, ])
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder3000.popDebugGroup()
    command_encoder303.pushDebugGroup("mygroupmarker")
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query103.destroy()
    render_pass_encoder3010.setStencilReference(1);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module102,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module101,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module101,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture301.destroy();
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device10.pushErrorScope("validation");
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    render_pass_encoder3000.executeBundles([render_bundle_encoder302, ])
    command_encoder304.insertDebugMarker("mymarker");
    query103.destroy()
    query103.destroy()
    render_pass_encoder3010.setStencilReference(1);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder303.insertDebugMarker("mymarker");
    
    command_encoder303.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
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
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    query101.destroy()
    render_pass_encoder3021.setStencilReference(1);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3021.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    query102.destroy()
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query101.destroy()
    query100.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query102.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    query101.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module100,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module100,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout306,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module103,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module103,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_pass_encoder3021.insertDebugMarker("marker");
    
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder3040.setPipeline(compute_pipeline309);
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer106.destroy()
    
    buffer103.destroy()
    buffer302.destroy()
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setPipeline(render_pipeline301);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module301,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    query100.destroy()
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    render_pass_encoder3021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    
    
    query103.destroy()
    
    command_encoder301.popDebugGroup()
    
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3040.insertDebugMarker("marker")
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline300);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture101.destroy();
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.drawIndirect(buffer100, 0);
    const render_pass_encoder3041 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    buffer301.destroy()
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3040.setPipeline(render_pipeline300);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group302);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    buffer304.destroy()
    render_bundle_encoder302.popDebugGroup();
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3041.setPipeline(render_pipeline300);
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder102.drawIndirect(buffer102, 0);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer301 = command_encoder301.finish();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    render_pass_encoder3010.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer109
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1000.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group304);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer309.destroy()
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer3010, 0, array8, 0, array8.length);
    
    
    render_pass_encoder3020.setVertexBuffer(0, buffer308);
    
    command_encoder305.copyBufferToBuffer(
        buffer303,
        0,
        buffer301,
        0,
        400
    );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout3012,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.setStencilReference(1);
    buffer3010.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder3040.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder3021.pushDebugGroup("group_marker");
    query103.destroy()
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer108.destroy()
    device30.pushErrorScope("validation");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer1010, 0, array2, 0, array2.length);
    render_pass_encoder3010.insertDebugMarker("marker");
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder1001.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query102.destroy()
    render_pass_encoder3041.insertDebugMarker("marker");
    query201.destroy()
    render_pass_encoder1001.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer303.destroy()
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout307,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    render_pass_encoder3050.setPipeline(render_pipeline301);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder100.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout304,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder102.drawIndirect(buffer100, 0);
    render_pass_encoder3050.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3021.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group305);
    buffer107.destroy()
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout303]
    });
    buffer305.destroy()
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1001.executeBundles([])
    buffer307.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query101.destroy()
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query104.destroy()
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout3013,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setPipeline(render_pipeline106);
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder1000.setPipeline(render_pipeline105);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3041.setBindGroup(0, bind_group306);
    render_pass_encoder3050.setVertexBuffer(0, buffer3012);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3000.setVertexBuffer(0, buffer308);
    render_pass_encoder3050.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3051.setPipeline(render_pipeline302);
    render_pass_encoder3021.setPipeline(render_pipeline302);
    render_pass_encoder3021.popDebugGroup();
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group307);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder3041.setVertexBuffer(0, buffer3014);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group308);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group309);
    render_pass_encoder3041.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3040.setVertexBuffer(0, buffer3010);
    render_pass_encoder3040.popDebugGroup();
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline106.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group104);
    render_pass_encoder3041.drawIndirect(buffer307, 0);
    render_pass_encoder3050.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder1001.setVertexBuffer(0, buffer100);
    render_pass_encoder3040.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3010.end();
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3041.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3040.drawIndirect(buffer3014, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer109);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder1001.draw(3);
    render_pass_encoder3050.end();
    render_pass_encoder1000.end();
    compute_pass_encoder3040.end();
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder3021.setVertexBuffer(0, buffer304);
    render_pass_encoder3021.drawIndirect(buffer3015, 0);
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3021.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, command_buffer305, ]);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3051.setBindGroup(0, bind_group3011);
    render_pass_encoder3041.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder3020.draw(3);
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder3051.setVertexBuffer(0, buffer3018);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3051.drawIndirect(buffer307, 0);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3021.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3023, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder3010.drawIndirect(buffer303, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1001.endOcclusionQuery()
    render_pass_encoder3040.end();
    render_pass_encoder3000.drawIndirect(buffer3018, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3021.drawIndexedIndirect(buffer304, 0);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3012);
    render_pass_encoder3050.drawIndirect(buffer3021, 0);
    render_pass_encoder3051.end();
    render_pass_encoder3010.drawIndirect(buffer3022, 0);
    render_pass_encoder3040.drawIndirect(buffer306, 0);
    device10.queue.submit([]);
    render_pass_encoder3000.end();
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder1000.drawIndirect(buffer102, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer300, command_buffer303, command_buffer305, ]);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3050.end();
    device50.queue.submit([]);
    render_pass_encoder3041.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer100, 0);
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3000.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1001.drawIndirect(buffer100, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3041.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3050.drawIndexedIndirect(buffer309, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3013);
    render_pass_encoder3010.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer106, 0);
    render_pass_encoder1001.end();
    render_pass_encoder3010.draw(3);
    device10.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder3051.draw(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer300, 0);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder3021.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3016, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3020, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1001.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.draw(3);
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([]);
    render_pass_encoder1000.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3028, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3051.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3010.setIndexBuffer(buffer306, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3012, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3041.drawIndirect(buffer307, 0);
    render_pass_encoder3021.end();
    compute_pass_encoder3000.end();
    render_pass_encoder3050.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer3013, 0);
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder3041.drawIndexed(3);
    render_pass_encoder3041.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3041.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3041.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1017, 0);
    render_pass_encoder3020.drawIndirect(buffer3018, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3018, "uint16");
    render_pass_encoder3010.drawIndirect(buffer3026, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer308, 0);
    device30.queue.submit([command_buffer300, command_buffer302, command_buffer304, ]);
    render_pass_encoder3050.drawIndexedIndirect(buffer304, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3050.drawIndirect(buffer3017, 0);
    render_pass_encoder3010.end();
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3029, 0);
    render_pass_encoder3040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1001.end();
    device30.queue.submit([command_buffer304, ]);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3051.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3050.end();
    render_pass_encoder3021.end();
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline309.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3014);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder3051.setIndexBuffer(buffer3030, "uint16");
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder3041.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder1000.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3041.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3050.draw(3);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3029, 0);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3051.end();
    render_pass_encoder1001.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3032, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer3032, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3033, 0);
    render_pass_encoder3041.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3021.drawIndexed(3);
    device30.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3040.drawIndirect(buffer3033, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3020.end();
    render_pass_encoder1000.setIndexBuffer(buffer1015, "uint16");
}