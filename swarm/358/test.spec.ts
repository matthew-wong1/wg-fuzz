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
    
    const array0 = new Float32Array([-0.25, 1.0, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, -0.25, 0.0, 0.5, -1.0, -0.5, 0.5, 1.0, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, -1.0, -0.75, -1.0, -0.25, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -0.5, -0.25, -0.5, -0.5, 0.75, 0.25, -0.75, 0.75, 0.0, -0.75, -0.75, 0.5, -0.75, -0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.5, 0.25, 0.75, 0.0, 1.0, -0.75, -0.75, -0.25, 0.75, -0.5, -0.75, 0.25, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, 0.5, 0.25, 0.75, 0.75, 1.0, 0.0, 0.0, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, -0.5, -1.0, -1.0, 0.75, 0.5, -0.25, 0.0, 0.25, -1.0, 0.75, -0.5, 1.0, 0.25, 0.25, -0.25, -0.25, 0.25, 0.75, -1.0, ]);
    
    
    const array1 = new Float32Array([-0.75, -0.5, 0.0, 0.25, -1.0, 1.0, -0.25, -1.0, 1.0, 1.0, 1.0, -0.5, 1.0, -0.75, -1.0, 1.0, 0.25, -1.0, -0.75, 0.25, 1.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.75, -1.0, -0.75, 1.0, -1.0, 0.75, -0.25, -1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -1.0, 0.25, 0.75, 0.75, 0.5, 0.5, 0.5, -1.0, 0.75, 0.0, -0.75, -0.5, 0.75, -0.5, 0.5, 0.75, -0.25, -0.5, -1.0, 0.5, -0.25, 0.0, 0.25, 0.0, 0.75, -0.25, 1.0, -0.75, -0.25, 0.0, -1.0, 0.5, -1.0, -1.0, -0.5, -0.75, 0.5, 0.25, -1.0, -1.0, -0.25, -1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 1.0, 1.0, -0.75, 0.0, 0.75, 1.0, 0.0, 1.0, -0.25, 0.0, 0.0, -0.5, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([-0.5, 0.0, 0.0, 0.75, 0.75, -0.5, 1.0, -0.25, 1.0, 0.75, 0.5, 1.0, -0.25, 1.0, 1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.0, 0.0, 0.75, -0.25, 0.25, 1.0, -0.75, 0.5, -0.25, -0.5, 0.5, -0.5, 0.5, -0.25, -0.5, 0.5, 0.75, -0.5, 0.25, -1.0, 0.75, -0.25, 0.5, 0.25, 1.0, -0.5, 0.75, -0.5, 0.75, -0.25, -1.0, 0.0, -1.0, 0.25, -1.0, -0.75, -0.5, 0.0, -0.25, 0.75, 0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 0.0, 1.0, 0.5, 1.0, -0.75, 0.5, 0.25, 0.5, -0.25, -0.5, 0.0, 1.0, 0.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -0.25, 0.0, 0.5, -1.0, -1.0, 0.75, -0.75, 0.0, ]);
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -0.25, 0.75, -0.75, -0.5, -0.5, -0.5, -0.25, 0.5, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -0.25, 0.0, 0.25, -0.25, 1.0, -1.0, 0.0, 0.0, -0.25, 0.0, 0.25, 0.25, 1.0, -0.75, -0.5, 0.5, -1.0, 0.5, -0.75, -0.5, -0.5, 0.0, -0.25, -0.75, 0.75, 0.25, -0.75, 0.0, -1.0, -0.5, -1.0, 0.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, 1.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.25, 0.5, 1.0, 0.75, 0.75, 0.75, -1.0, -0.5, -0.25, -1.0, 0.25, 1.0, 1.0, 0.5, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, -0.5, 0.75, -0.25, -1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -1.0, 0.5, ]);
    device00.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer000 = command_encoder000.finish();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array4 = new Float32Array([1.0, -0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -0.5, 0.25, -1.0, 0.5, -0.5, 0.25, -0.5, 0.0, 0.5, 0.0, -0.5, 0.25, 0.25, -0.75, 0.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.5, -0.75, 1.0, -0.25, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, 0.75, -1.0, 0.5, 0.0, -0.25, -0.5, 0.75, -0.75, -0.75, 0.0, -0.75, -0.75, 1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.0, 1.0, 0.0, 1.0, 0.25, 0.0, -0.5, 0.0, -0.5, 0.75, 0.5, -0.75, 0.0, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, -0.5, -0.5, -0.75, 0.0, -0.25, 0.5, -1.0, -1.0, 0.5, 0.25, 1.0, -0.5, ]);
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
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer002.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    query000.destroy()
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_buffer002 = command_encoder002.finish();
    const array5 = new Float32Array([-0.75, -0.75, -0.25, 1.0, 0.5, -0.5, -0.25, 0.75, -0.5, 0.25, -1.0, 0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 1.0, 0.0, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, 0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.25, 0.0, 0.75, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, 0.75, 1.0, 0.0, 1.0, 0.5, 0.75, 1.0, -0.25, -0.75, 0.25, -0.5, -1.0, -0.25, -0.25, 0.75, -0.5, 1.0, -0.25, 1.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, 0.25, -1.0, -0.75, 0.0, 0.0, -0.75, 0.25, 0.25, -1.0, -0.75, -0.5, -0.75, -0.25, -1.0, -1.0, 0.25, 0.0, 1.0, 0.0, -0.5, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    buffer003.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    command_encoder001.insertDebugMarker("mymarker");
    
    const command_buffer003 = command_encoder003.finish();
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array6 = new Float32Array([-0.25, 1.0, 0.0, -1.0, 0.0, 1.0, -1.0, -0.25, 0.75, 0.25, 0.75, 1.0, -0.5, -0.75, -0.75, -1.0, 0.0, 1.0, -0.75, 0.0, -0.5, -0.25, -0.25, 0.25, 0.0, -0.5, -0.75, -1.0, 0.5, -0.5, -1.0, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, -0.25, 0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 0.0, -1.0, 0.75, 0.5, -0.5, -1.0, -0.5, 1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.25, 1.0, -0.5, 0.5, -0.75, -0.5, -0.5, 1.0, -1.0, -0.5, -0.25, 0.5, 1.0, 0.25, -0.5, 0.25, 0.25, -1.0, 0.5, 1.0, -0.75, -0.25, 1.0, -0.75, 0.75, 0.25, -0.5, 0.75, -0.5, -1.0, 0.25, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 0.0, -0.75, 0.75, -0.25, 0.5, -1.0, ]);
    texture101.destroy();
    render_bundle_encoder001.popDebugGroup();
    command_encoder001.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    buffer100.destroy()
    const array7 = new Float32Array([-1.0, -1.0, -0.5, 0.0, -1.0, 0.25, -0.25, -0.75, 0.25, 1.0, 0.0, -0.25, 0.5, -0.25, 1.0, -0.25, 0.75, -0.5, 0.5, -0.25, 1.0, -1.0, 1.0, 0.0, 0.0, 0.0, -0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -0.5, -0.75, 0.0, -0.5, 0.0, 0.0, -0.5, 0.0, 0.5, -1.0, 0.25, -1.0, 0.0, 1.0, 1.0, -0.75, -1.0, 1.0, 0.0, -1.0, 0.25, -0.25, 0.0, -0.25, 0.5, 0.25, -1.0, -0.5, 1.0, 0.0, 0.75, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 1.0, 0.25, -1.0, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 0.25, 0.25, -0.25, 0.5, -1.0, 0.25, -0.75, 0.25, 0.0, -0.75, 0.25, 0.5, 1.0, -0.75, 0.25, 0.5, 1.0, 0.5, 0.75, -0.5, -0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.insertDebugMarker("mymarker");
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
    render_pass_encoder1010.executeBundles([])
    const command_buffer001 = command_encoder001.finish();
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    const array8 = new Float32Array([-0.25, 0.25, 1.0, 1.0, 0.75, 1.0, -0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.5, -0.25, 0.5, 1.0, -0.25, -0.5, 0.75, -0.5, 0.25, 1.0, -0.75, 0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -0.5, -0.25, -0.25, 0.75, 0.75, -1.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -0.25, 0.25, 0.75, -0.5, 0.0, -0.75, 0.0, 0.75, 1.0, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, -0.5, -0.5, 1.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.5, 0.25, 0.25, 0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.25, -1.0, 0.0, 1.0, 0.5, 0.0, 0.25, -0.25, 0.0, 0.5, 0.75, 0.25, 1.0, -0.75, 0.5, 0.5, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture102.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    query002.destroy()
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    buffer001.destroy()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    texture001.destroy();
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query000.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
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
    render_pass_encoder1000.executeBundles([])
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    buffer004.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    buffer101.destroy()
    
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
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    texture103.destroy();
    query201.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query101.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_pass_encoder1000.setStencilReference(1);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture201.destroy();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    
    query000.destroy()
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture000.destroy();
    buffer103.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setStencilReference(1);
    query100.destroy()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.destroy();
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer201.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer102.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    
    texture104.destroy();
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    render_pass_encoder1010.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder1000.setStencilReference(1);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    buffer005.destroy()
    query200.destroy()
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    query003.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer104.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder2000.setStencilReference(1);
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    buffer200.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array9 = new Float32Array([-1.0, -0.25, 0.75, -0.75, -0.75, 0.75, -0.75, -0.25, -1.0, -0.75, 1.0, -1.0, -0.5, -0.25, 0.75, -1.0, 1.0, 0.25, -0.25, 1.0, -0.25, 0.25, 0.5, 0.25, 1.0, -0.5, 1.0, 0.25, -0.25, 0.25, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, -1.0, 1.0, 0.75, 0.0, 0.25, 0.25, 0.5, -0.5, 0.75, -0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -0.5, -0.25, 1.0, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, 0.5, -0.25, -0.75, 0.5, 1.0, 0.25, -0.5, 0.75, -0.75, -1.0, 0.0, -0.5, 1.0, 0.0, -0.25, 0.0, -0.75, 1.0, -1.0, -0.5, -1.0, 0.25, 0.75, -0.25, 0.0, -0.25, -0.75, 0.5, 0.75, 1.0, 0.25, -0.5, ]);
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1000.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer006, 0, array9, 0, array9.length);
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    query004.destroy()
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const array10 = new Float32Array([-0.75, 0.25, -0.75, -0.25, -0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.5, -1.0, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, 0.5, 0.75, -1.0, -0.25, -0.25, 0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.25, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, -1.0, -0.5, -0.75, 0.0, -0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 0.75, -0.25, -0.75, -0.5, -1.0, 0.75, -0.5, 0.25, 0.25, 0.0, -0.25, 1.0, 0.0, -1.0, -0.25, 0.5, 0.0, 0.5, 0.5, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, -0.75, -1.0, 0.0, 0.5, -0.75, -0.25, 0.75, -0.25, -0.25, 0.5, -0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 1.0, -0.75, 0.25, -0.25, -0.75, -0.25, ]);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2010.executeBundles([])
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer006, 0, array8, 0, array8.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array10, 0, array10.length);
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture107 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture107 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array11 = new Float32Array([0.75, 0.5, 0.0, -0.5, 0.5, 0.75, -0.25, 0.75, -0.25, 0.25, 1.0, -0.75, -0.75, 1.0, 1.0, 0.75, -0.25, 0.5, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, 0.25, 0.25, 0.25, -0.25, -0.25, 0.25, -0.5, 0.25, -1.0, 0.5, -0.5, -0.25, 0.5, 0.5, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, 0.5, 0.25, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, -0.25, 1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.5, -0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 0.75, -1.0, -0.5, -0.75, 0.0, -0.75, -1.0, -0.25, -0.5, 0.0, -0.25, -0.5, 0.0, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 1.0, 1.0, -1.0, -0.75, -1.0, 0.25, 1.0, -0.5, ]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device20.queue.writeTexture({ texture: texture205 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture107 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    
    
    
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.submit([command_buffer003, ]);
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
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    buffer006.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture107 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture107.destroy();
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
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
        occlusionQuerySet: query200
    });
    texture002.destroy();
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1010.executeBundles([])
    const array12 = new Float32Array([-0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.5, -0.25, 0.25, 1.0, 0.0, 0.5, -0.25, -0.5, -0.25, -1.0, 0.25, -0.5, -0.5, 1.0, 0.0, -1.0, -1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 1.0, -1.0, -0.5, -1.0, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 0.25, -1.0, 0.0, 0.0, -0.75, 0.75, 0.75, 0.5, 1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.5, 0.5, -1.0, -0.5, 0.75, -0.75, 0.25, 0.75, 0.25, -0.5, 0.5, -0.5, -1.0, -0.25, -1.0, -1.0, 0.75, 0.0, 0.75, -1.0, 0.0, -1.0, -0.25, -0.75, 0.0, 0.5, 1.0, -0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.25, -0.75, -0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 0.0, 0.0, 0.75, 0.0, 0.5, ]);
    render_pass_encoder1010.executeBundles([])
    texture105.destroy();
    render_pass_encoder0040.executeBundles([])
    buffer007.destroy()
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.submit([command_buffer001, ]);
    query200.destroy()
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    query000.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const array13 = new Float32Array([1.0, -0.25, 0.5, -1.0, -0.75, -0.25, 0.25, 0.5, 1.0, 0.5, -1.0, 0.25, -0.25, 0.75, 0.75, 0.25, -1.0, 1.0, 0.75, 0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.5, 0.25, 0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 1.0, 1.0, 0.75, 1.0, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.75, -1.0, -0.5, 0.0, -0.5, 1.0, 0.25, 1.0, 0.25, 0.25, -0.75, -1.0, -0.25, 1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.0, -1.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.5, -0.75, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, -0.5, -0.5, ]);
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    device20.queue.writeTexture({ texture: texture205 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    query000.destroy()
    query002.destroy()
    
    query102.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query200.destroy()
    render_pass_encoder2030.executeBundles([])
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query101.destroy()
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0040.executeBundles([])
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query006.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    query101.destroy()
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    query007.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query006.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device00.queue.submit([command_buffer000, ]);
    
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    query002.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture205 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder2020.insertDebugMarker("marker");
    
    render_pass_encoder1000.setStencilReference(1);
    
    device20.queue.writeTexture({ texture: texture205 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.submit([command_buffer002, ]);
}