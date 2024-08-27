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
    const array0 = new Float32Array([-1.0, -0.5, -0.75, -0.75, -1.0, -0.25, -0.75, 1.0, -0.25, -0.75, -0.75, 0.75, -1.0, -0.75, -0.25, 0.5, -0.25, 0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -0.5, 0.0, 0.25, -0.75, 0.0, -1.0, -0.75, 0.25, 0.75, 0.75, -0.75, 0.5, -0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, -0.75, -0.25, 0.0, 1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 0.25, -0.25, -0.25, 0.25, -1.0, -0.75, -1.0, -0.75, -0.5, -0.5, -0.75, -0.5, 0.75, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 0.5, 0.0, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 0.75, 0.25, -0.5, ]);
    
    
    
    const array1 = new Float32Array([1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -1.0, 0.75, 0.0, -0.75, 0.75, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, -0.5, 0.25, -0.75, 0.5, 1.0, 0.0, 0.5, -0.5, -1.0, 0.5, 1.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, 0.0, 0.0, 0.0, -0.5, -0.25, 0.75, 1.0, 1.0, 0.0, -0.25, 0.75, 0.25, 0.5, -0.75, 1.0, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.25, 1.0, -0.5, -0.25, 0.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.75, 0.0, 0.75, 0.0, -1.0, 0.25, -0.5, 0.5, 1.0, ]);
    const array2 = new Float32Array([1.0, 0.5, 0.0, 1.0, -0.75, -0.5, 0.25, 0.0, 0.5, 1.0, 1.0, 0.0, -1.0, 0.5, -0.25, 0.5, 0.75, -1.0, 0.5, 0.25, 0.0, 1.0, -0.25, -0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 0.0, -0.25, 0.25, -1.0, 0.25, -0.75, -0.5, -0.25, 0.0, 0.0, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -0.25, 1.0, -0.25, 0.75, -0.75, 0.5, 1.0, 0.5, 0.75, -1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.0, -0.75, 0.5, 0.5, -0.25, 1.0, 0.75, 0.0, 1.0, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.25, -0.25, -1.0, 0.25, -1.0, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device20.pushErrorScope("internal");
    
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    texture000.destroy();
    
    const array3 = new Float32Array([-0.75, -0.5, -0.75, -1.0, 1.0, 0.25, 0.0, 0.75, -1.0, -0.25, -0.25, -1.0, 0.5, 1.0, -0.75, 0.5, -0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 0.25, 1.0, 0.5, -1.0, 0.0, 1.0, 1.0, 1.0, 1.0, -0.75, -0.5, -0.25, -0.5, -0.25, -1.0, -1.0, -0.5, -1.0, -0.75, -0.25, 1.0, 0.75, -0.25, 0.5, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 0.25, -0.5, -0.5, 0.5, 0.75, -0.25, 0.25, -1.0, -0.75, 1.0, -0.75, 0.5, -0.75, -1.0, -0.5, 1.0, -1.0, 0.0, 0.5, -0.25, 0.25, 0.5, 0.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 0.25, 0.25, 0.0, -0.5, 0.0, -0.5, 0.5, -0.25, 0.25, -0.25, -0.25, -0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.5, 1.0, ]);
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device30.destroy();
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    texture400.destroy();
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([1.0, 0.25, 0.5, -0.75, -0.75, 0.75, -1.0, -0.25, -1.0, 0.5, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, 0.75, 0.0, 0.25, 0.25, -1.0, 0.75, -1.0, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, 0.0, -0.75, -0.75, 0.5, 0.0, 0.75, 1.0, 0.5, 0.25, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.75, -0.5, 0.0, 0.25, 0.25, -1.0, -0.25, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 0.75, 0.5, 0.25, -0.5, -0.75, 1.0, 0.75, 1.0, 1.0, 0.25, -0.75, -0.5, 0.75, 0.5, 0.75, 0.0, 0.75, 0.25, 0.75, 0.25, -0.5, 1.0, 1.0, 0.75, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, -0.75, 0.0, ]);
    
    device40.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    device40.pushErrorScope("out-of-memory");
    
    const array5 = new Float32Array([1.0, 0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 0.0, -1.0, -0.75, -1.0, -1.0, 0.75, -0.25, 0.5, -0.5, 0.5, -0.75, -0.75, -0.25, 0.0, 0.25, 1.0, -0.75, -0.5, -0.25, 0.75, 0.75, 0.75, 0.0, 1.0, -0.5, -0.25, 0.0, 1.0, -1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.75, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, -0.5, -0.25, -1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 0.5, 1.0, -0.75, -0.75, -0.75, 0.5, 1.0, 0.0, 0.5, 0.5, -0.25, -0.5, -0.25, -1.0, 0.5, -0.5, -0.25, 0.5, -0.75, 1.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -0.5, -0.75, 0.5, -0.25, -0.25, -0.75, 0.25, 0.25, 0.25, 1.0, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
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
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device50.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    const array6 = new Float32Array([1.0, -0.75, 0.75, 0.5, 0.25, -0.25, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, 1.0, -0.75, 1.0, 0.75, 1.0, 0.0, -1.0, -0.75, -1.0, 0.25, -1.0, 0.5, -0.5, -0.25, -0.25, 0.25, 1.0, -0.75, -0.75, 0.5, 0.25, 1.0, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -0.25, -0.5, -1.0, 0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.5, 0.5, 0.25, 0.25, -1.0, 0.75, -0.75, 0.75, 1.0, 0.0, -0.5, -0.5, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.25, 1.0, -0.25, 0.0, 0.25, 1.0, -0.25, 0.75, -0.5, -0.25, 1.0, 0.0, 0.75, -1.0, 0.0, -0.75, -0.25, 0.25, 0.0, -0.5, 1.0, 1.0, 0.75, 0.5, 0.0, -0.25, -0.5, -0.5, 0.75, -0.25, ]);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const array7 = new Float32Array([0.25, 0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 0.75, 1.0, 0.25, 0.5, -0.5, -1.0, -0.25, 1.0, -0.5, 0.75, 1.0, 0.0, -1.0, 0.25, 0.75, 1.0, -1.0, 0.25, 0.25, -0.5, -0.5, 0.75, -0.75, 1.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.0, 1.0, -0.75, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, -0.25, -1.0, -1.0, 0.5, 1.0, 0.0, -0.75, 0.25, 1.0, 0.25, -0.75, 0.5, -0.75, 0.75, 0.25, 0.5, 0.25, -0.75, 0.0, 0.75, 0.25, 0.5, -1.0, -0.75, 0.75, 1.0, -1.0, -0.75, 0.0, -0.75, -0.25, -0.5, 1.0, 0.0, 0.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.0, -0.5, -1.0, -1.0, -0.75, -0.5, 1.0, -0.5, -1.0, 0.25, ]);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const array8 = new Float32Array([-0.25, 1.0, 0.5, -0.75, 0.5, -0.5, 0.0, -1.0, -0.75, 0.75, 0.5, -0.25, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, -0.5, 0.75, 0.75, -1.0, -0.75, 0.0, 0.0, 0.5, -0.75, -0.5, 0.25, -0.25, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, -1.0, -0.75, 0.5, -0.5, 0.75, 0.75, 0.0, -0.75, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, 0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -0.5, 0.5, -0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, -0.75, 0.25, -0.25, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, -0.25, -0.5, -1.0, -1.0, -1.0, -0.25, 0.75, -0.5, -0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, 1.0, ]);
    texture100.destroy();
    
    texture000.destroy();
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const array9 = new Float32Array([0.5, 0.25, 1.0, 1.0, -0.25, -1.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, -0.25, 0.75, 0.0, 0.25, -1.0, -0.25, 0.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, -0.25, 0.75, -0.75, 1.0, -0.25, 0.5, -0.75, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, 0.5, -0.75, 0.5, 0.5, 0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 0.5, 0.5, -0.75, 1.0, -0.75, 0.5, 0.0, -0.25, 1.0, -0.75, 0.0, 0.25, 0.25, -0.25, 0.5, 0.0, -0.25, -0.75, -1.0, 0.5, -0.75, -0.75, -1.0, ]);
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
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
    const array10 = new Float32Array([0.5, 0.75, -0.5, -0.5, -0.5, -0.75, -1.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, -0.5, -0.25, -0.75, 0.0, -0.5, 0.75, 0.0, -0.25, 0.75, 0.5, -0.25, -0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.0, 0.5, -0.25, -0.25, 0.75, -1.0, -0.75, -0.5, 0.5, 1.0, 0.25, 0.0, 0.5, 1.0, -0.75, 0.5, 1.0, 1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -1.0, -0.75, 0.5, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -0.25, 1.0, 1.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, ]);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array11 = new Float32Array([0.0, -0.75, 1.0, 1.0, 1.0, -1.0, -1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.0, -1.0, 0.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.75, 0.0, -0.75, -0.25, -0.25, -0.5, -0.75, -0.25, -0.25, 0.75, 0.75, 0.0, -0.25, -0.25, 0.0, -0.75, 0.25, 0.0, -0.25, 0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 0.75, 0.5, -0.75, 0.25, 0.25, -0.75, 0.0, -0.5, 0.75, 0.25, 0.75, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 1.0, 0.25, 0.5, 0.75, 0.5, 0.0, 0.75, -0.5, 0.75, -0.5, 0.5, 1.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 0.0, 1.0, -0.5, 0.25, -1.0, -0.25, -1.0, 1.0, 0.0, -0.25, -1.0, 0.25, ]);
    texture001.destroy();
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    device80.destroy();
    const array12 = new Float32Array([1.0, -0.5, 0.75, 0.75, 0.75, 1.0, 1.0, 0.75, -0.75, 0.5, -1.0, 0.75, -0.25, -1.0, -0.25, -0.75, 1.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.0, 0.25, -0.25, 0.5, 0.75, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, -0.25, 0.5, 0.5, 0.0, -0.75, 0.25, -0.25, 0.75, 0.0, -0.25, 1.0, 0.25, 0.25, 0.25, 1.0, 0.25, 1.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, 0.25, -0.75, 0.0, 0.0, -0.75, -0.75, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.5, 0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, 1.0, 0.75, 0.0, 1.0, -0.75, 0.5, -0.5, -0.75, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture101.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const array13 = new Float32Array([-0.5, -0.75, -0.25, -0.75, 0.0, 0.0, 0.25, 1.0, 0.25, 0.25, -1.0, 0.75, -1.0, 1.0, -0.5, 0.5, 0.75, 1.0, 0.75, -1.0, 0.0, 0.75, -1.0, -0.5, 0.5, -0.25, 0.0, 0.25, 1.0, 0.5, -1.0, 0.5, -1.0, -0.5, 1.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.25, -1.0, 0.5, 0.75, -0.25, -0.75, -0.5, 0.0, 0.25, 0.5, -0.75, -1.0, 0.5, -0.5, 0.75, -1.0, 0.25, 0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -0.5, 0.5, -0.25, -0.25, 0.0, 0.75, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, 0.25, 1.0, -0.75, 0.75, -0.75, -1.0, -0.25, -0.25, 0.5, -0.25, 0.0, 0.0, -1.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.25, ]);
    const array14 = new Float32Array([-0.25, 0.0, 1.0, 0.0, 0.75, -0.5, 0.25, 0.5, 0.0, 0.75, -1.0, 0.5, 0.0, 0.75, 0.0, 0.75, -1.0, 0.25, -1.0, -0.75, -0.25, -0.25, -0.25, -0.25, 0.25, 0.0, -0.25, 0.5, -0.5, 0.75, -0.75, -0.5, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, 1.0, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 0.0, -1.0, 0.5, 0.25, 1.0, -0.5, 0.75, 0.0, 1.0, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -0.5, -0.25, 0.0, 0.0, -0.75, 0.5, -1.0, -0.25, -0.25, 0.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 1.0, -0.25, -0.5, -0.75, 0.75, 0.5, 0.0, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, -1.0, -0.25, 0.25, 0.25, 0.5, -0.25, ]);
    const array15 = new Float32Array([-1.0, 0.25, -0.75, 0.75, 1.0, 1.0, 0.0, -1.0, 0.0, -0.75, 0.0, -0.75, -0.5, 0.75, -0.75, -0.25, 0.75, 0.75, -0.75, 0.0, 0.5, 0.25, -0.25, 1.0, -0.25, 0.5, 0.25, 0.75, 0.75, 1.0, 0.25, -0.5, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, 1.0, 1.0, 1.0, 0.5, -0.25, -1.0, -0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.5, -0.25, -1.0, -0.25, -0.5, 0.75, 0.0, -0.5, 0.5, 0.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, -0.5, 0.25, -1.0, -0.75, 0.25, -0.5, 0.75, 0.5, 0.75, 0.25, -0.75, 0.0, -1.0, 0.75, -0.75, -0.75, -0.25, -0.5, -1.0, -0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 0.75, -1.0, 0.75, -0.25, 0.75, 0.25, 0.25, -0.25, 0.5, ]);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device90.destroy();
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    
    
    texture700.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device100.destroy();
    
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
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device100.pushErrorScope("internal");
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    
    
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.queue.writeTexture({ texture: texture900 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    device40.destroy();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder1102.insertDebugMarker("marker");
    device110.destroy();
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const array16 = new Float32Array([0.75, 0.5, 0.75, 0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -0.75, -0.75, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, -0.25, 0.5, -1.0, 1.0, -0.5, 0.0, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 0.5, -0.5, -0.25, -0.5, 1.0, 0.0, -0.25, -0.75, 0.5, 0.5, -0.5, 0.0, -0.5, -0.5, 0.25, -1.0, 0.0, -0.75, -1.0, -0.5, 0.0, 0.5, -0.25, 0.5, 1.0, -0.25, 0.5, -0.75, 0.0, 1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 1.0, ]);
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query500.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture500.destroy();
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    device80.queue.writeTexture({ texture: texture801 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeTexture({ texture: texture802 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    
    device140.queue.writeTexture({ texture: texture1400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture1400.destroy();
    device120.destroy();
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1400.insertDebugMarker("marker");
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device140.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const query1400 = device140.createQuerySet({
        label: "query1400",
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
    device10.queue.writeBuffer(buffer102, 0, array11, 0, array11.length);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    device150.queue.writeBuffer(buffer1500, 0, array11, 0, array11.length);
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    device150.pushErrorScope("internal");
    device90.queue.writeTexture({ texture: texture900 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    device60.queue.writeTexture({ texture: texture600 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeTexture({ texture: texture402 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array17 = new Float32Array([0.25, 0.75, 0.25, -0.25, -0.5, 0.75, 0.75, -0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 1.0, -0.25, 1.0, -1.0, -0.25, 0.25, 0.5, 1.0, 0.25, 0.25, -0.25, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -0.5, 1.0, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.25, -0.5, 0.5, 0.0, 0.0, 0.25, -0.25, 0.25, 1.0, -0.25, -0.5, 0.5, 0.0, -0.75, 0.25, 0.25, -1.0, 0.0, -0.25, -0.5, 0.5, 0.25, 0.0, -0.5, 0.0, -0.5, 0.0, 0.5, -0.75, 0.0, -1.0, -0.75, 0.25, 0.5, -1.0, 1.0, -0.5, 0.5, -1.0, 0.75, -0.25, -1.0, -0.5, -0.75, 0.0, -1.0, -0.5, 0.0, -0.75, 0.5, 0.25, -0.75, -0.75, -0.25, -1.0, 0.0, -0.5, -0.75, 0.0, 0.0, ]);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query1400.destroy()
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("validation");
    
    
    device30.queue.writeBuffer(buffer300, 0, array15, 0, array15.length);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    query200.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    {
        await buffer1501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1501.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device90.queue.writeTexture({ texture: texture900 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("validation");
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    texture500.destroy();
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    
    
    var shader_module1501_code = "";
    try {
        shader_module1501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1501 = await device150.createShaderModule({ label: "shader_module1501", code: shader_module1501_code })
    const render_bundle_encoder1601 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1601",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.submit([]);
    
    query1500.destroy()
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeBuffer(buffer300, 0, array15, 0, array15.length);
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1500.destroy();
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1500 = device150.createPipelineLayout({ 
        label: "pipeline_layout1500",
        bindGroupLayouts: [bind_group_layout1500]
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    device150.queue.writeTexture({ texture: texture1501 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeBuffer(buffer900, 0, array13, 0, array13.length);
    const buffer1502 = device150.createBuffer({
        label: "buffer1502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    
    
    device160.queue.writeTexture({ texture: texture1600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
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
    device130.pushErrorScope("out-of-memory");
    
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
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
    render_bundle_encoder1600.insertDebugMarker("marker");
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    device130.queue.writeBuffer(buffer1300, 0, array7, 0, array7.length);
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.submit([]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
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
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.pushErrorScope("internal");
    const compute_pipeline1500 = device150.createComputePipeline({
        label: "compute_pipeline1500",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1501,
            entryPoint: "main"
        }
    });
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device150.queue.writeBuffer(buffer1501, 0, array0, 0, array0.length);
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1501 = device150.createComputePipeline({
        label: "compute_pipeline1501",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1501,
            entryPoint: "main"
        }
    });
    
    device160.queue.writeTexture({ texture: texture1601 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device150.queue.writeBuffer(buffer1500, 0, array6, 0, array6.length);
    
    device160.queue.writeTexture({ texture: texture1601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture1600.destroy();
    device130.queue.writeTexture({ texture: texture1300 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeTexture({ texture: texture1501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const compute_pipeline1502 = device150.createComputePipeline({
        label: "compute_pipeline1502",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    device160.queue.writeTexture({ texture: texture1601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    device150.queue.writeTexture({ texture: texture1501 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeBuffer(buffer1500, 0, array1, 0, array1.length);
    
    render_bundle_encoder1000.insertDebugMarker("marker");
    device160.queue.writeTexture({ texture: texture1600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    device150.queue.writeBuffer(buffer1502, 0, array13, 0, array13.length);
    render_bundle_encoder1300.insertDebugMarker("marker");
    device160.queue.writeTexture({ texture: texture1601 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    texture401.destroy();
    
    
    device160.queue.writeTexture({ texture: texture1601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1501.destroy();
    const compute_pipeline1503 = device150.createComputePipeline({
        label: "compute_pipeline1503",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1501,
            entryPoint: "main"
        }
    });
    
    device150.queue.writeBuffer(buffer1502, 0, array8, 0, array8.length);
    device160.queue.writeBuffer(buffer1601, 0, array13, 0, array13.length);
    
    
    device160.queue.writeTexture({ texture: texture1601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1501.destroy()
    const texture1602 = device160.createTexture({
        label: "texture1602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    device160.queue.writeTexture({ texture: texture1601 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device80.queue.writeTexture({ texture: texture802 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1400.insertDebugMarker("marker");
    texture1602.destroy();
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder1400.insertDebugMarker("marker");
    device160.queue.writeBuffer(buffer1601, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array16, 0, array16.length);
    
    device160.queue.writeTexture({ texture: texture1601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1601 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    var shader_module1502_code = "";
    try {
        shader_module1502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1502 = await device150.createShaderModule({ label: "shader_module1502", code: shader_module1502_code })
    render_bundle_encoder1300.insertDebugMarker("marker");
    device130.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    device160.queue.writeTexture({ texture: texture1601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeTexture({ texture: texture1601 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1504 = device150.createComputePipeline({
        label: "compute_pipeline1504",
        layout: pipeline_layout1500,
        compute: {
            module: shader_module1500,
            entryPoint: "main"
        }
    });
    const texture1503 = device150.createTexture({
        label: "texture1503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device160.queue.writeTexture({ texture: texture1601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device150.queue.writeBuffer(buffer1502, 0, array13, 0, array13.length);
    
    const query1502 = device150.createQuerySet({
        label: "query1502",
        type: "occlusion",
        count: 32,
    });
    device150.queue.writeBuffer(buffer1502, 0, array17, 0, array17.length);
    device150.queue.writeTexture({ texture: texture1501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1602 = device160.createBuffer({
        label: "buffer1602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device160.queue.writeTexture({ texture: texture1601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device160.queue.writeBuffer(buffer1602, 0, array11, 0, array11.length);
    const render_bundle_encoder1602 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1602",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array15, 0, array15.length);
    
    texture1601.destroy();
    
    
    render_bundle_encoder1500.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
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
    var shader_module1503_code = "";
    try {
        shader_module1503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1503 = await device150.createShaderModule({ label: "shader_module1503", code: shader_module1503_code })
    device150.queue.writeTexture({ texture: texture1502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device150.queue.writeTexture({ texture: texture1503 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}