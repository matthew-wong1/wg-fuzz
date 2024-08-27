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
    
    const array0 = new Float32Array([1.0, -0.5, 0.0, 0.0, -0.25, 0.75, 0.5, 0.25, 0.25, 0.0, 0.25, -0.5, 0.0, 0.75, 0.0, 1.0, 0.25, -1.0, -0.25, -0.25, -0.75, -1.0, 0.5, -0.75, 0.5, -0.75, 0.25, -0.75, 0.0, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, 0.75, -0.25, 0.5, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 0.25, 0.5, 0.25, -1.0, 0.75, 0.75, -0.25, -0.75, -0.75, -1.0, -1.0, -0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.25, -0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 0.25, -0.5, -0.75, -0.25, 0.25, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 1.0, 0.5, 1.0, -1.0, -0.25, -0.75, -0.5, -0.5, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, -0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-1.0, -1.0, 0.25, 0.25, 0.75, 1.0, 1.0, -0.75, -0.25, 0.25, 0.25, -0.25, 0.25, 0.5, 1.0, -0.75, -0.75, 1.0, -0.25, 0.25, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, -0.75, 0.5, -0.5, -0.75, 1.0, -0.75, 0.5, -0.75, 0.25, -0.75, 0.5, -1.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.25, -0.25, 0.25, -0.5, 0.0, 0.0, 1.0, 0.5, -1.0, 1.0, 0.75, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.0, -0.75, 0.5, 0.25, -0.25, -0.75, -0.5, 0.25, 0.0, 1.0, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, 1.0, 0.75, -0.25, 0.25, -0.25, -0.75, -0.75, -0.25, 0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 0.75, 0.25, -0.75, -1.0, 0.25, -0.25, 1.0, 0.5, -0.25, -0.25, ]);
    
    const array2 = new Float32Array([-1.0, -0.75, 0.25, 0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.75, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, -0.25, -0.5, 0.0, -0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.0, -0.25, 0.5, -1.0, -0.5, 0.25, 0.75, -0.5, -0.5, 1.0, 0.5, -0.25, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, 0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.5, -0.75, -0.75, -0.75, 0.25, -0.75, 0.0, -0.75, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 0.0, 0.0, -1.0, -0.5, -0.5, 0.75, 1.0, 0.25, 0.5, 1.0, 0.5, 0.25, -0.5, 0.25, 1.0, 0.75, 0.75, 0.75, -0.75, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("out-of-memory");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    
    texture000.destroy();
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const array3 = new Float32Array([-0.5, 0.75, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, 0.0, 0.75, 0.0, 0.5, -0.5, 0.75, -0.25, 0.25, 0.75, 0.0, 0.5, 0.0, 0.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.5, -0.75, -1.0, 0.25, 0.0, -0.25, -0.5, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, -1.0, -0.25, -0.25, 1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, 0.5, -1.0, 0.5, -0.25, -0.25, 0.25, 0.25, 0.5, -0.5, 0.0, -0.75, 0.25, 0.75, 1.0, 0.5, -1.0, -1.0, -0.25, 0.5, -0.75, -0.25, -1.0, 0.75, -0.75, -0.5, -0.5, 0.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.25, 1.0, 0.25, 0.5, 1.0, 0.75, -0.25, 0.0, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer200.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array4 = new Float32Array([0.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.25, 0.5, -0.75, -0.25, -0.25, -0.75, 0.5, 0.25, 0.5, 0.75, -0.5, 0.5, 0.5, 0.0, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.25, 0.5, -0.5, -1.0, -0.5, 0.25, 1.0, 0.25, -0.25, -0.25, -0.5, -0.75, 0.0, -0.25, -0.75, -0.5, 0.5, -0.75, 1.0, -0.5, 1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.5, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, 0.75, 0.75, -0.25, 0.5, 0.5, -0.5, 0.75, -1.0, -0.5, 0.5, -0.25, 0.5, 0.5, -0.75, 0.5, -0.25, -0.25, 0.25, 0.0, -0.75, 0.0, 1.0, ]);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    buffer001.destroy()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    device00.destroy();
    buffer201.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const array5 = new Float32Array([0.75, 0.25, -0.5, -0.25, -0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -0.75, 0.5, 0.25, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, 0.5, 0.75, 1.0, -0.25, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.75, 0.0, -1.0, 0.25, 1.0, 0.25, 0.75, -0.25, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, 0.0, -0.5, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, 0.75, -0.25, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, 1.0, 0.5, 0.25, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, -0.75, -1.0, 1.0, 0.25, 0.75, -1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 0.75, 1.0, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, -0.75, 0.0, 0.25, ]);
    texture101.destroy();
    
    buffer100.destroy()
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    texture100.destroy();
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    device40.destroy();
    const array6 = new Float32Array([-0.75, 0.5, -1.0, -0.75, -0.25, -0.5, 1.0, -0.75, 0.5, -0.75, 0.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.0, 1.0, -1.0, -1.0, 0.5, -0.5, 0.75, -0.25, 0.75, -0.25, 0.5, 0.75, 0.0, 0.0, 0.0, 0.5, -0.75, 0.75, -0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 1.0, -0.25, 0.0, 0.5, -0.25, -0.5, 1.0, 0.5, 0.0, 0.25, 0.5, 0.0, 0.0, 0.5, -0.5, 0.5, 1.0, -0.75, 0.0, -0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, -1.0, -1.0, 0.75, 0.0, 0.5, -0.75, -0.5, 0.0, 0.25, 0.75, 0.5, 0.5, 0.25, 0.0, -0.25, 0.25, 0.5, 0.0, 0.25, 0.0, 0.0, 1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.0, 0.75, ]);
    const array7 = new Float32Array([-1.0, 0.25, -0.75, -0.75, 0.0, 1.0, 0.75, -0.5, -0.5, -1.0, -0.5, -1.0, 0.25, -0.5, -0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.5, -0.25, -0.75, -1.0, -0.5, 1.0, 0.75, -1.0, 0.5, 1.0, -0.25, -0.5, -0.75, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -0.75, -0.5, 0.0, 0.5, -0.5, 0.5, -0.25, 0.25, 0.0, -0.5, 0.0, -0.5, -0.5, -0.25, -0.25, -1.0, -0.5, 0.25, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.0, -1.0, 1.0, 0.5, -1.0, -0.75, 0.75, -0.25, 0.0, 0.25, -1.0, -0.5, 0.75, 0.0, 0.5, 0.25, -0.5, -1.0, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.5, -0.25, 1.0, ]);
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const array8 = new Float32Array([0.0, -0.75, 0.25, 1.0, 0.0, 1.0, 0.25, -0.5, 0.25, -0.25, 0.75, 0.5, 0.75, -0.75, 0.75, -1.0, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, 0.5, -0.25, -1.0, -0.25, 0.25, 1.0, -0.5, 0.25, -0.75, -1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 0.0, -1.0, 1.0, -0.5, 0.5, -0.25, -1.0, -0.25, 0.0, 0.25, 1.0, -0.75, 0.25, 0.25, -0.25, -0.25, -0.25, -0.75, 0.25, 0.0, 0.5, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 0.75, -0.5, -1.0, -0.25, 1.0, 0.75, 1.0, 0.0, -0.75, 0.25, 0.5, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, 0.5, 0.25, -0.75, 0.0, 0.0, 0.25, -0.25, 0.25, -1.0, 0.25, -1.0, 0.5, -0.5, -1.0, -1.0, -1.0, -0.75, 0.75, 0.75, ]);
    const array9 = new Float32Array([0.0, 0.75, 0.25, 1.0, -1.0, 0.75, -0.75, 1.0, -0.25, 1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.25, -0.25, 1.0, 0.75, -0.5, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, 0.75, -0.75, 0.0, 0.25, -0.5, -0.25, -0.5, 0.5, 0.25, 0.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.0, -0.25, 1.0, -1.0, 1.0, 1.0, 0.5, 0.75, -0.75, -0.5, 0.5, 0.0, 0.75, -0.25, -0.75, 0.25, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, -0.5, -1.0, 0.5, 0.5, 0.75, -0.5, 0.0, 0.0, -0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 0.5, -0.5, 1.0, 0.25, -0.75, -1.0, -0.25, 0.0, 0.25, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -0.75, 0.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    buffer102.destroy()
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array10 = new Float32Array([0.75, 0.75, 0.75, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 0.75, -0.75, 1.0, 1.0, -0.25, 0.75, -0.75, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, -0.75, -0.25, 0.0, 1.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.5, 0.5, 0.25, -0.75, -0.75, 0.75, -0.75, 0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.5, -0.25, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, -0.75, 0.5, 0.0, -0.75, -0.75, -1.0, -0.25, -0.5, -0.75, -0.5, 0.0, 0.0, 0.75, -0.75, 0.75, 1.0, 0.0, 1.0, -0.75, 0.25, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const array11 = new Float32Array([-1.0, -0.5, 0.0, -0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 0.75, 1.0, 0.5, -0.75, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, -0.75, -1.0, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.75, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, -1.0, 0.25, 0.25, 0.25, 1.0, 0.75, -0.75, 0.25, 0.5, 1.0, 1.0, 0.0, -0.25, -1.0, 0.75, -0.25, -1.0, 0.25, 0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, -0.75, 1.0, 0.25, -1.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, 0.25, 0.0, -0.25, -1.0, -0.25, 1.0, -1.0, 0.75, 0.75, -0.25, 0.75, -0.5, 0.0, -0.25, -0.25, 0.25, 0.75, 0.5, 0.25, 0.25, -0.75, 1.0, -0.5, -0.25, ]);
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
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
    device70.pushErrorScope("internal");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array12 = new Float32Array([0.75, 1.0, 0.25, -1.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, -1.0, -0.25, -0.75, -0.5, 0.75, 0.5, 0.75, 0.75, 0.0, 1.0, 0.5, 1.0, 1.0, -0.75, 0.25, 1.0, 0.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, -0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 1.0, -0.25, 0.25, -1.0, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.25, 0.5, 1.0, -0.5, 0.75, 0.75, 0.0, -0.25, 0.5, -1.0, 1.0, -0.75, 0.75, -0.75, -0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 1.0, 0.5, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, 1.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer104.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.pushErrorScope("internal");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer103.destroy()
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device10.pushErrorScope("validation");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture701.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture102.destroy();
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device90.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    texture700.destroy();
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device70.pushErrorScope("validation");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer105.destroy()
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device50.destroy();
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder602.insertDebugMarker("marker");
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("validation");
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture703.destroy();
    device70.pushErrorScope("out-of-memory");
    texture702.destroy();
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view6021 = texture602.createView({ label: "texture_view6021" });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    buffer106.destroy()
    buffer601.destroy()
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device80.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    buffer107.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.popDebugGroup();
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view1034 = texture103.createView({ label: "texture_view1034" });
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer1000.destroy()
    
    device10.destroy();
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
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
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    texture601.destroy();
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    texture300.destroy();
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout605,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const texture_view6022 = texture602.createView({ label: "texture_view6022" });
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    
    device30.destroy();
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture1000.destroy();
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder1000.popDebugGroup();
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const texture_view6023 = texture602.createView({ label: "texture_view6023" });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder602.popDebugGroup();
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}