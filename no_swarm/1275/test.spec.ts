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
    
    
    const array0 = new Float32Array([-1.0, -1.0, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, -0.25, 0.75, 0.75, 0.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.25, -0.25, 0.0, 0.0, -0.75, 0.25, -0.5, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, -0.5, 0.0, -0.5, 0.25, 0.5, 0.0, 0.5, 0.0, 1.0, 1.0, -0.75, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, -0.75, -0.25, 1.0, -0.25, 0.0, -0.75, 0.5, 0.0, 1.0, 0.25, -0.75, -0.75, 1.0, 0.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.5, 0.5, 0.0, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.5, -1.0, 0.5, -0.5, 0.5, 0.0, -0.25, -0.25, 1.0, -0.5, -1.0, 0.0, 1.0, 0.75, 1.0, ]);
    
    const array1 = new Float32Array([-1.0, 0.25, 0.25, -0.25, -0.25, -1.0, -1.0, -1.0, 0.5, 1.0, 0.0, -0.5, -1.0, 1.0, -1.0, 0.75, 0.75, 0.25, -0.5, -0.25, 0.75, 0.5, 0.75, 0.0, 0.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, -0.75, 1.0, 1.0, 0.5, 0.25, -0.75, 0.5, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, 0.25, -0.75, -0.25, 1.0, 0.75, 0.5, -0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -1.0, 0.5, 0.5, -1.0, 0.75, 1.0, 0.75, 1.0, 0.75, -0.5, 0.0, 0.75, 0.0, 1.0, -0.25, -0.25, 0.5, -1.0, 1.0, 0.5, 0.75, -0.75, -0.25, -1.0, 0.0, 0.75, 0.25, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-1.0, -0.5, 1.0, -1.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.25, -0.75, -0.75, -0.25, 1.0, 1.0, 0.5, -0.5, 0.25, 0.25, -0.25, 1.0, 0.0, -0.5, -0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 0.75, -1.0, -0.5, 0.5, 0.25, -0.75, -0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.25, 0.5, 0.0, -1.0, -0.75, -1.0, 0.5, 0.0, -0.75, 0.25, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, 0.5, -0.25, -0.25, 0.0, 0.5, 0.5, -1.0, 1.0, 0.5, -0.25, 0.25, 0.0, -0.75, 0.5, 0.75, 0.75, -0.75, 1.0, 1.0, -1.0, -0.75, -0.75, -0.5, -0.5, 0.0, 1.0, 0.5, 0.0, -0.75, -0.5, 0.5, 0.75, 0.25, -1.0, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array3 = new Float32Array([1.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.5, 0.75, -0.25, -1.0, -0.5, -1.0, 0.75, 0.25, 0.0, -0.25, 0.5, -0.75, 0.75, -1.0, -0.75, 1.0, 0.75, 0.75, 0.25, 0.25, 0.5, -1.0, 0.5, -0.5, 0.0, -1.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.5, -0.5, 0.5, 0.75, -0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.25, -0.5, 0.75, -0.25, -0.25, -0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, -0.5, 0.75, -0.25, -1.0, -1.0, -0.25, -0.25, -0.25, 0.0, -0.75, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, 0.0, 0.25, -1.0, -0.75, 0.25, -0.5, -0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.0, 0.5, 1.0, -0.5, 1.0, 0.25, 0.75, -1.0, ]);
    device00.pushErrorScope("validation");
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
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const array4 = new Float32Array([0.0, -0.25, -0.75, 1.0, -0.5, 0.25, -1.0, 0.0, 0.0, 0.5, 0.5, 1.0, 0.0, 0.25, 0.25, -0.25, -0.75, 0.25, 0.75, -0.5, 0.25, 0.75, 0.5, -1.0, 0.0, -0.5, 0.25, 1.0, -0.5, -0.75, 0.0, 0.5, -0.25, 0.0, -0.5, 1.0, 0.25, -0.5, -1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.5, 0.5, 0.25, -0.5, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, -1.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, -0.75, -0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -1.0, 0.0, 0.75, 0.5, 1.0, 0.5, -0.75, 0.0, -1.0, 0.25, -1.0, -0.25, 0.0, 0.5, -0.5, -0.25, 1.0, -0.25, 1.0, -0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -1.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const array5 = new Float32Array([1.0, 0.75, -0.25, 0.0, 1.0, 0.0, -0.5, -0.25, -0.25, 1.0, 0.25, 0.75, 0.25, 0.25, 0.75, -1.0, 0.0, -0.5, -0.75, 0.25, 1.0, -1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 1.0, -0.25, 1.0, 0.75, 0.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.0, -0.25, 0.5, 0.75, -1.0, -0.5, -0.25, 0.5, -0.5, 0.75, 0.0, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, 0.5, 0.0, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, 0.5, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, 0.75, -0.5, 0.0, 0.75, 0.75, -0.25, 0.0, 0.0, -1.0, ]);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.destroy();
    device10.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array6 = new Float32Array([-0.5, 0.25, -0.25, -0.5, 1.0, 0.5, -1.0, 1.0, 0.75, 1.0, -0.25, -0.25, 0.0, -0.75, 0.75, -0.5, 0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 1.0, 0.25, -0.25, -1.0, -0.75, -1.0, -0.25, 0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 0.0, -1.0, 1.0, -1.0, 0.0, -0.75, -0.75, 0.5, 0.25, -1.0, -1.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.0, 0.0, 0.0, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 1.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.0, -1.0, -0.5, 0.0, 1.0, -1.0, -0.75, -0.75, 0.5, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, 0.75, -0.75, 0.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.5, -0.5, 0.5, 0.0, 0.5, 0.0, -0.5, 0.0, 0.0, 1.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder201.popDebugGroup();
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device20.destroy();
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array7 = new Float32Array([1.0, 0.25, -0.5, 0.0, 0.75, -0.25, 1.0, -0.5, 1.0, 0.5, 0.5, 0.5, -0.25, -1.0, -0.25, 0.75, -0.5, -1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.25, -0.5, -1.0, 0.75, -0.75, 0.0, -1.0, 0.5, 0.25, 1.0, 0.5, -0.5, -0.75, 0.25, -0.5, -0.5, 1.0, 1.0, 0.5, -0.25, -1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 0.5, -0.5, -1.0, -0.75, 0.0, -0.25, 0.25, -0.25, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, -0.5, 0.0, 0.25, 1.0, -0.5, -1.0, 0.5, -1.0, -0.5, 0.0, 0.5, -1.0, 0.75, -1.0, -0.25, -0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.5, -0.5, -0.5, 1.0, -0.75, 0.75, 1.0, 0.0, -1.0, 1.0, -0.5, 1.0, 0.25, 0.5, ]);
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const array8 = new Float32Array([0.25, 1.0, -0.75, -0.25, -1.0, 0.25, 0.25, -0.25, -1.0, -0.25, -1.0, 0.25, -0.25, 0.0, 0.75, 0.75, -0.25, 0.75, -0.25, 0.25, 0.25, 0.5, 1.0, -1.0, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, -1.0, -1.0, -1.0, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, 0.75, -1.0, -0.25, -0.75, -0.25, 1.0, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, -0.75, 0.5, 0.5, -0.25, 0.75, 0.75, 0.5, 1.0, 0.75, 0.5, 1.0, 0.0, -0.5, 0.0, 0.75, -1.0, -0.25, -0.25, 0.25, 0.75, 1.0, 0.25, -0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -1.0, -1.0, -0.25, -0.5, -1.0, 1.0, 0.25, -1.0, -0.75, -1.0, -0.5, 1.0, ]);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array9 = new Float32Array([0.0, 0.0, -0.75, 1.0, 0.75, -1.0, 1.0, 0.5, 1.0, 0.5, 1.0, 1.0, 0.5, -0.75, -1.0, 0.25, 0.5, -1.0, -0.25, 0.0, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, 0.5, 0.75, 0.5, -0.75, 0.25, -1.0, -0.75, -1.0, 1.0, -1.0, -0.75, -1.0, 0.0, 0.75, 0.0, 0.25, 1.0, -0.25, 0.75, -0.25, -0.5, -0.25, -0.75, 0.0, 0.5, 0.75, 0.5, 1.0, -0.75, -0.25, -0.75, 0.75, 0.25, -1.0, -0.75, 0.5, 1.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.75, 0.5, 0.75, 0.25, -0.25, -0.25, -0.25, 0.75, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, -0.25, -0.75, 0.75, -0.25, -1.0, 1.0, 0.75, -0.25, ]);
    
    
    device40.destroy();
    
    
    
    
    
    
    const array10 = new Float32Array([-0.5, 1.0, 0.0, 0.25, -1.0, -1.0, 0.25, -0.75, 1.0, 0.75, 1.0, 0.25, -0.75, 0.75, -0.75, 0.25, 1.0, 1.0, -0.25, -1.0, -0.5, -0.5, 0.25, -0.75, -1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.5, -0.25, -0.25, 0.0, -0.5, -0.75, 1.0, -0.75, 0.75, 0.25, 0.75, 0.75, -1.0, 0.75, 0.5, -0.25, -0.5, 1.0, 0.5, -1.0, -0.25, 0.25, 0.5, -1.0, -0.25, 0.0, 1.0, -0.25, -0.5, -0.5, 0.75, 0.5, -0.5, -0.75, 0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 0.75, -0.25, -1.0, -0.75, -0.5, 1.0, 0.5, -0.75, 1.0, -0.5, 0.0, 1.0, -0.5, 0.5, 0.0, 0.25, 0.0, 0.0, -0.5, -0.5, -1.0, -0.25, 0.5, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.pushErrorScope("internal");
    
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer500 = command_encoder500.finish();
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    device00.queue.writeBuffer(buffer000, 0, array10, 0, array10.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
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
    query500.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    
    texture000.destroy();
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    command_encoder701.insertDebugMarker("mymarker");
    
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    command_encoder600.pushDebugGroup("mygroupmarker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder700.insertDebugMarker("marker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder501.popDebugGroup();
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer500.destroy()
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    command_encoder600.popDebugGroup()
    command_encoder701.insertDebugMarker("mymarker");
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer501.destroy()
    texture500.destroy();
    
    query700.destroy()
    
    device70.pushErrorScope("validation");
    render_bundle_encoder702.insertDebugMarker("marker");
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder700.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    query700.destroy()
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer500,
        0
    )
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer701 = command_encoder701.finish();
    
    const command_buffer600 = command_encoder600.finish();
    render_bundle_encoder700.setPipeline(render_pipeline700);
    query700.destroy()
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
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
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder602.setPipeline(render_pipeline600);
    render_bundle_encoder702.popDebugGroup();
    const command_buffer601 = command_encoder601.finish();
    query600.destroy()
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_bundle_encoder702.setPipeline(render_pipeline700);
    
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
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    device60.pushErrorScope("validation");
    render_bundle_encoder702.popDebugGroup();
    
    
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer701,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer702,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group700);
    
    
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_pass_encoder5010.beginOcclusionQuery(0)
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group701);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group600);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder702.pushDebugGroup("group_marker");
    device70.queue.submit([command_buffer701, ]);
    render_bundle_encoder500.popDebugGroup();
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const command_buffer700 = command_encoder700.finish();
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_bundle_encoder602.popDebugGroup();
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.endOcclusionQuery()
    render_bundle_encoder702.setVertexBuffer(0, buffer700);
    query600.destroy()
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    texture600.destroy();
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    texture501.destroy();
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    device70.queue.writeBuffer(buffer704, 0, array4, 0, array4.length);
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder700.setVertexBuffer(0, buffer705);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query600.destroy()
    
    
    
    device50.queue.submit([command_buffer500, ]);
    
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder502.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    texture500.destroy();
    
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder701.insertDebugMarker("marker");
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
    {
        await buffer703.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer703.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer703.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout505]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    device50.pushErrorScope("internal");
    buffer700.destroy()
    
    buffer502.destroy()
    render_bundle_encoder700.draw(3);
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout504,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    command_encoder502.insertDebugMarker("mymarker");
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder502.copyTextureToBuffer(
        {
            texture: texture501
        },
        {
            buffer: buffer502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    const array11 = new Float32Array([1.0, 0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 0.75, 1.0, -0.75, 0.0, 0.5, 0.5, 1.0, -0.75, 0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 0.25, 0.25, 0.0, 0.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, -0.25, 1.0, 0.0, 0.0, 0.75, 0.0, -0.5, 0.25, -1.0, -0.75, 0.75, -0.25, 0.25, 0.5, 0.0, 0.75, -0.25, 0.5, 0.0, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.25, 0.75, 0.75, 0.75, 0.0, -0.5, -1.0, -0.75, 0.25, 0.25, -0.25, 0.0, 0.5, -0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.0, -0.25, 1.0, -0.5, 1.0, 0.25, -1.0, ]);
    render_bundle_encoder701.setPipeline(render_pipeline700);
    render_bundle_encoder700.popDebugGroup();
    
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    command_encoder702.copyBufferToBuffer(
        buffer701,
        0,
        buffer702,
        0,
        400
    );
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    
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
    buffer600.destroy()
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    buffer704.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout504]
    });
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout502,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout506,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer701.destroy()
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout506,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    query300.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
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
    buffer705.destroy()
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    compute_pass_encoder5030.setPipeline(compute_pipeline5023);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
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
    
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    command_encoder702.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout506]
    });
    render_pass_encoder5010.setPipeline(render_pipeline500);
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer701,
        0
    )
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    render_pass_encoder5010.beginOcclusionQuery(1)
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    render_bundle_encoder702.insertDebugMarker("marker");
    render_pass_encoder5040.pushDebugGroup("group_marker");
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout505,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    
    query700.destroy()
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout506,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5040.setStencilReference(1);
    
    render_pass_encoder3000.executeBundles([])
    compute_pass_encoder7030.pushDebugGroup("group_marker")
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder5010.popDebugGroup();
    compute_pass_encoder7030.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5040.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group500);
    render_pass_encoder3000.setPipeline(render_pipeline300);
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline5023.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    compute_pass_encoder5030.setBindGroup(0, bind_group501);
    render_pass_encoder3000.endOcclusionQuery()
    const uint32_5030 = new Uint32Array(3);

    uint32_5030[0] = 100;
    uint32_5030[1] = 1;
    uint32_5030[2] = 1;

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer507, 0, uint32_5030, 0, uint32_5030.length);

    compute_pass_encoder5030.dispatchWorkgroupsIndirect(buffer507, 0);
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder5010.endOcclusionQuery()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5040.setPipeline(render_pipeline500);
    render_pass_encoder5020.setPipeline(render_pipeline500);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group502);
    render_pass_encoder5010.setVertexBuffer(0, buffer507);
    command_encoder501.popDebugGroup()
    render_pass_encoder5020.setVertexBuffer(0, buffer509);
    render_pass_encoder5010.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    device50.queue.submit([]);
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5020.setIndexBuffer(buffer506, "uint16");
    render_pass_encoder5020.draw(3);
    render_pass_encoder5010.end();
    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5011,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group503);
    render_pass_encoder5010.drawIndexedIndirect(buffer502, 0);
    compute_pass_encoder5030.end();
    render_pass_encoder5010.popDebugGroup();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    render_pass_encoder5020.drawIndexedIndirect(buffer507, 0);
    render_pass_encoder5040.setVertexBuffer(0, buffer501);
    render_pass_encoder5040.drawIndirect(buffer5010, 0);
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder3000.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5020.end();
    render_pass_encoder5040.end();
    compute_pass_encoder5030.popDebugGroup()
    const command_buffer504 = command_encoder504.finish();
    render_pass_encoder5020.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder5040.end();
    compute_pass_encoder7030.popDebugGroup()
    render_pass_encoder5010.drawIndexedIndirect(buffer507, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5040.popDebugGroup();
    render_pass_encoder5040.end();
}