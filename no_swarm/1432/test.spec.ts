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
    const array0 = new Float32Array([-0.75, -1.0, 0.0, -1.0, 0.25, 0.75, -1.0, -0.75, 0.25, 1.0, 0.75, -0.75, -0.75, 0.5, 0.25, -0.5, -1.0, 0.5, 0.5, -0.25, -0.25, -0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, 0.0, 0.0, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.25, -1.0, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, -0.5, -0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.75, 0.0, 0.0, 0.75, 0.0, 1.0, -1.0, -0.75, -1.0, 0.0, -0.75, -0.5, 1.0, 0.5, 0.25, 0.5, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, 0.25, 0.5, 0.0, -0.75, -1.0, -0.25, -0.5, -1.0, 0.75, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([-0.5, 0.75, 0.25, -0.25, 0.0, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, -0.75, 0.0, -1.0, 0.75, -0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 1.0, 0.25, -0.25, -0.5, 0.25, 0.75, -0.5, 1.0, -0.5, -0.5, -0.25, 0.5, -0.5, 1.0, 0.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.5, 1.0, -0.5, 1.0, -0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 0.0, -0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 1.0, -0.5, 0.0, -0.25, -0.25, 0.5, 0.5, -1.0, -0.25, -0.25, -1.0, 1.0, -0.75, 0.25, 0.0, -0.25, 0.75, -0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.0, 1.0, -0.25, -0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.0, -1.0, -1.0, 0.0, 0.75, -0.25, -0.25, 0.25, ]);
    const array2 = new Float32Array([-1.0, 0.75, -0.25, 0.75, -0.5, -0.75, -0.5, -0.25, -0.25, 0.5, -0.5, -1.0, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, 0.75, 1.0, -0.75, 1.0, -0.25, -0.75, 1.0, 0.25, 1.0, 0.5, -0.25, 0.0, -0.75, -1.0, 0.0, 1.0, -0.5, 1.0, 1.0, 0.0, -0.75, 1.0, 0.0, -0.75, 0.25, -0.25, 0.5, 0.75, -0.25, 0.0, -0.5, -0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 0.0, 0.5, -1.0, -0.75, 0.0, -0.25, 0.0, -0.75, -0.5, 0.5, 0.25, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, 0.0, -0.5, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, 0.0, 0.0, 0.75, 0.75, ]);
    
    
    
    
    const array3 = new Float32Array([0.75, 0.25, -0.25, 0.0, 0.0, 0.75, -0.25, -0.5, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, 0.75, 0.0, -0.75, -0.75, -0.75, 0.75, 0.75, 0.5, 0.25, -0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 0.5, 0.5, 0.0, 0.5, -1.0, 0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.75, 1.0, 1.0, 0.75, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, -0.25, -1.0, -1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.5, 0.0, -1.0, 0.5, -0.75, 0.5, -0.25, 0.25, -0.5, -0.25, 0.0, -0.25, -0.5, -0.75, 0.25, 0.75, 1.0, -1.0, 0.5, -0.75, 1.0, -1.0, 0.25, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, -0.75, ]);
    
    const array4 = new Float32Array([-1.0, 1.0, -0.5, -1.0, 0.25, -0.75, 0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 0.0, 1.0, -0.25, 0.0, 1.0, -0.25, 1.0, 0.75, 0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.75, 0.0, -1.0, -0.25, -0.75, 0.5, 1.0, -0.5, -0.25, -1.0, -0.5, -0.75, -0.75, -0.75, -0.5, -0.5, -0.25, -1.0, -0.25, -1.0, 0.0, -0.75, -0.5, -0.25, 1.0, 0.5, -0.25, 0.5, -1.0, -0.5, 0.25, -1.0, -1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.25, -0.25, 0.25, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, -1.0, -0.75, 0.5, 0.25, 1.0, -0.5, 1.0, 0.0, -0.75, 1.0, -0.5, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_buffer001 = command_encoder001.finish();
    
    device00.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("internal");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    query001.destroy()
    
    
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    query001.destroy()
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
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    query000.destroy()
    device00.pushErrorScope("internal");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query002.destroy()
    
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query002.destroy()
    query002.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    command_encoder000.insertDebugMarker("mymarker");
    
    query002.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    device00.pushErrorScope("out-of-memory");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const array5 = new Float32Array([-0.75, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -0.25, -0.25, 0.75, -0.5, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, -0.25, 0.75, 0.75, 0.75, -0.75, 1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -0.25, 0.75, -0.25, -0.25, 0.25, 0.75, -0.25, -0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -0.25, 0.0, 1.0, 0.75, -0.25, 1.0, -1.0, 0.25, -1.0, -0.5, -0.25, -0.75, 0.25, 1.0, -1.0, -1.0, -0.25, 0.0, -1.0, 0.75, -0.25, 0.5, 0.25, -1.0, 1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 0.75, 0.25, 0.25, -0.5, -0.75, -1.0, 0.25, 0.0, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, -0.75, -1.0, 1.0, -0.5, -0.75, 0.75, -1.0, 0.75, 0.0, 0.5, ]);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0000.popDebugGroup()
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    
    
    
    render_pass_encoder0020.setStencilReference(1);
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setStencilReference(1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer002.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer003.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query001.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0001.insertDebugMarker("marker");
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const array6 = new Float32Array([-0.5, -1.0, -1.0, -0.5, -1.0, 0.25, -0.25, -0.75, -0.75, 0.75, 0.5, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, -1.0, -0.5, 1.0, 0.75, -1.0, 0.0, -1.0, 1.0, 0.25, 0.5, -0.5, 1.0, 0.0, -0.75, -0.75, 0.25, 0.0, 0.0, 1.0, -1.0, 0.75, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 1.0, 0.5, -0.75, 0.25, -0.5, -1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, 0.0, -0.5, 0.0, 0.25, 0.5, 0.75, 0.25, -0.25, 0.25, 0.25, -0.75, 0.25, 0.5, -0.5, -1.0, -0.75, 0.5, -1.0, -0.25, 1.0, 0.5, -0.5, -0.75, 0.25, -0.75, -1.0, -1.0, -0.5, -0.25, ]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer004.destroy()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.executeBundles([])
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    render_bundle_encoder001.popDebugGroup();
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0000.setStencilReference(1);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0000.executeBundles([])
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device20.queue.submit([]);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer006, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer006, 0);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.setPipeline(render_pipeline002);
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture001.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer006.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0001.setPipeline(render_pipeline000);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToBuffer(
        buffer007,
        0,
        buffer003,
        0,
        400
    );
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    
    
    device10.destroy();
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.submit([command_buffer001, ]);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0001.pushDebugGroup("group_marker");
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group002);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.popDebugGroup();
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0021.setPipeline(render_pipeline002);
    render_pass_encoder0001.setStencilReference(1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
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
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group003);
    buffer000.destroy()
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    buffer001.destroy()
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    buffer005.destroy()
    query000.destroy()
    render_pass_encoder0001.setVertexBuffer(0, buffer002);
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0000.setPipeline(render_pipeline003);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer008.destroy()
    render_pass_encoder0000.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
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
    {
        await buffer0010.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0010.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0010.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0021.setStencilReference(1);
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer007);
    buffer100.destroy()
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0010.popDebugGroup()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    device00.pushErrorScope("internal");
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    compute_pass_encoder0000.popDebugGroup()
    render_bundle_encoder000.setVertexBuffer(0, buffer0011);
    buffer002.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    
    
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    buffer200.destroy()
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0021.pushDebugGroup("group_marker");
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder0001.drawIndirect(buffer008, 0);
    buffer201.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group004);
    render_bundle_encoder000.drawIndirect(buffer007, 0);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder200.popDebugGroup();
    buffer0013.destroy()
    render_pass_encoder0020.popDebugGroup();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device00.queue.writeBuffer(buffer0015, 0, array3, 0, array3.length);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture000.destroy();
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    render_pass_encoder0020.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0001.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    const render_pass_encoder0022 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    render_pass_encoder0022.setPipeline(render_pipeline001);
    
    device20.pushErrorScope("internal");
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout204]
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout205]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer009, 0, array6, 0, array6.length);
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0022.setBindGroup(0, bind_group006);
    render_pass_encoder0022.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer007.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout204]
    });
    
    query200.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.drawIndirect(buffer001, 0);
    render_pass_encoder0022.setStencilReference(1);
    render_pass_encoder0022.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder0001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture200.destroy();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query002
    });
    buffer202.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    texture003.destroy();
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group007);
    render_pass_encoder0001.drawIndirect(buffer0018, 0);
    render_pass_encoder0001.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0040.setPipeline(render_pipeline001);
    
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout008,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("out-of-memory");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0041.executeBundles([])
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder0022.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder2010.insertDebugMarker("marker");
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout009,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder0022.setVertexBuffer(0, buffer0011);
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0010.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder0022.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.setPipeline(render_pipeline003);
    render_pass_encoder0000.setVertexBuffer(0, buffer0012);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group009);
    render_pass_encoder0041.setPipeline(render_pipeline003);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    render_pass_encoder0022.drawIndirect(buffer0012, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.setVertexBuffer(0, buffer005);
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0040.setVertexBuffer(0, buffer007);
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2001.setPipeline(render_pipeline200);
    render_pass_encoder0001.drawIndirect(buffer0022, 0);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder2011.setPipeline(render_pipeline200);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2010.setVertexBuffer(0, buffer204);
    render_pass_encoder0000.setIndexBuffer(buffer008, "uint16");
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group0010);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder2000.setVertexBuffer(0, buffer202);
    render_pass_encoder0030.setVertexBuffer(0, buffer0021);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group202);
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0011, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0022.drawIndirect(buffer008, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder2001.setVertexBuffer(0, buffer209);
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0016, 0);
    render_pass_encoder0030.drawIndirect(buffer0019, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0001.draw(3);
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndirect(buffer0023, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0018, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group0012);
    render_pass_encoder0040.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder2011.setVertexBuffer(0, buffer200);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0022.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0041.setVertexBuffer(0, buffer005);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0041.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2001.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0001.drawIndirect(buffer0023, 0);
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0016, "uint16");
    const command_buffer004 = command_encoder004.finish();
    command_encoder000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.drawIndexed(3);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0022.drawIndirect(buffer006, 0);
    render_pass_encoder2011.drawIndexed(3);
    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0036,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0014);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.end();
    device20.queue.submit([]);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0022.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0019, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder0020.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0022.drawIndirect(buffer0015, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0022.draw(3);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.drawIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0022.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0031, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.end();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0022.end();
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0039,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer007, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0027, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0022.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0041.end();
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0016);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0022.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0021.drawIndirect(buffer0028, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0001.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0001.drawIndirect(buffer0016, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.end();
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    render_pass_encoder0001.end();
    render_pass_encoder0021.drawIndirect(buffer0042, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0030, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer006, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0022.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0045,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder0001.end();
    render_pass_encoder0041.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0022.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0022.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder0021.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.draw(3);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0041.end();
    render_pass_encoder2011.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.drawIndirect(buffer007, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0022.drawIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder0001.drawIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0001.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0039, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0021.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0022.end();
    render_pass_encoder2010.end();
    render_pass_encoder0041.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0022.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0001.drawIndirect(buffer004, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder0000.drawIndirect(buffer0035, 0);
    render_pass_encoder0022.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder0022.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0024, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0021.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0043, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2001.draw(3);
    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0047,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.draw(3);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0001.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder0001.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.draw(3);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0020);
    render_pass_encoder0040.drawIndirect(buffer0028, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0050, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0050, 0);
    render_pass_encoder0021.drawIndirect(buffer002, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0022.end();
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2001.setIndexBuffer(buffer209, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0030.setIndexBuffer(buffer0018, "uint16");
    device00.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder2001.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0022.drawIndirect(buffer002, 0);
    render_pass_encoder0021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0022.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer004, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0052, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0022.drawIndirect(buffer0039, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0022.end();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndirect(buffer0050, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0030.drawIndirect(buffer0044, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder2000.end();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0022.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0022.drawIndirect(buffer0046, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndirect(buffer0049, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0052, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0055, 0);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer006, 0);
    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0057,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0001.drawIndirect(buffer006, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0022.drawIndirect(buffer0031, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0022.end();
    render_pass_encoder0021.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2000.draw(3);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0001.drawIndirect(buffer0039, 0);
    render_pass_encoder0041.drawIndirect(buffer007, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0047, 0);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0022.drawIndirect(buffer0037, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0022.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0022.drawIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder2000.drawIndexed(3);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0064, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0064, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0021.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0021, 0);
    render_pass_encoder0022.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2000.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder0022.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0023, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0022.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0052, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0050, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer002, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0065, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0065, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0000.end();
    render_pass_encoder0030.end();
    render_pass_encoder0022.end();
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2010.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer006, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder0001.drawIndirect(buffer0051, 0);
    render_pass_encoder0001.drawIndirect(buffer0065, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0064, 0);
    render_pass_encoder0040.drawIndirect(buffer0064, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0041.drawIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0022.drawIndexedIndirect(buffer0028, 0);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0025);
    render_pass_encoder0040.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0022.drawIndirect(buffer0039, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2011.end();
    render_pass_encoder0022.setIndexBuffer(buffer0041, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0050, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0021.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0022.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer0064, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0039, 0);
    render_pass_encoder0022.drawIndirect(buffer0037, 0);
    render_pass_encoder0022.drawIndirect(buffer0051, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.end();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0000.drawIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0022.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0040.drawIndirect(buffer0058, 0);
    render_pass_encoder0022.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0052, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0055, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0022.drawIndirect(buffer0041, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0065, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0050, 0);
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0065, 0);
    render_pass_encoder0022.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0051, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0050, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0022.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder0020.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0001.drawIndirect(buffer0052, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0001.end();
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder0021.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0038, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0022.draw(3);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0022.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0022.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0037, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0022.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0021.end();
    render_pass_encoder0040.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0040.drawIndirect(buffer0065, 0);
    render_pass_encoder0000.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0001.end();
    render_pass_encoder2000.draw(3);
}