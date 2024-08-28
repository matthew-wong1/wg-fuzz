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
    const array0 = new Float32Array([-1.0, 0.5, 0.0, 0.75, 0.5, 1.0, 1.0, 0.5, -1.0, 0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -0.75, -0.5, -0.75, -0.25, 1.0, 0.5, 0.75, 1.0, 0.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, 0.5, -0.75, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.75, 0.5, -0.75, 0.25, -0.25, -0.25, 0.0, -0.5, -0.25, -1.0, 0.25, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.5, 0.5, -0.75, 0.0, 0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.0, 0.25, -0.5, 0.0, 0.0, 0.25, 0.5, 0.75, 0.0, 0.75, -0.75, -0.25, 0.5, -0.5, -0.25, 0.25, 0.25, 0.25, -1.0, 0.75, -1.0, -0.5, ]);
    
    
    
    const array1 = new Float32Array([0.5, 1.0, 0.5, 0.25, 0.25, -0.25, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, -0.25, 0.0, -1.0, 1.0, 0.75, 0.25, -0.75, 1.0, 0.0, -0.25, -1.0, 0.5, -1.0, 0.5, -0.75, 0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -1.0, 1.0, -0.75, 0.5, 0.25, 0.0, 0.25, 0.0, 0.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.75, 0.75, 0.25, 0.0, -0.75, 0.75, -0.75, -1.0, 0.0, -0.25, -1.0, -1.0, 1.0, -1.0, -0.5, 0.0, 0.75, 0.5, 1.0, 0.75, 0.25, 1.0, -0.25, 0.75, 0.25, -1.0, -0.75, -0.5, 0.75, 0.75, 0.25, -0.75, -0.5, 0.75, -0.25, 0.0, -0.25, 0.25, 0.5, -0.5, 0.5, -0.25, -1.0, 0.25, 0.75, 0.0, 1.0, 0.25, ]);
    const array2 = new Float32Array([1.0, -0.5, -0.75, -1.0, 0.25, 0.5, 0.5, 0.75, -0.75, 0.25, -0.5, -0.5, 0.75, 1.0, 0.5, -0.25, -1.0, -0.75, -0.5, 1.0, -0.75, 0.5, -0.75, 0.5, 1.0, -1.0, -0.25, -0.75, 0.5, 0.25, -0.25, 0.75, 0.75, -1.0, 0.0, 0.0, -1.0, -0.5, -1.0, -1.0, 0.0, -0.75, -0.5, 0.75, 0.25, -1.0, 0.75, 0.0, -0.5, -0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.0, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, 0.25, 1.0, 0.0, -0.25, -1.0, 0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 1.0, -0.25, 0.0, -1.0, -0.75, -0.5, 0.25, 0.5, 0.5, 0.75, -0.75, -0.25, 0.25, 0.0, 0.75, -0.25, 0.25, 0.25, -0.75, 0.25, -1.0, -1.0, 0.0, 0.25, -1.0, 0.75, 0.25, ]);
    
    const array3 = new Float32Array([-1.0, 0.0, 0.25, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.0, 0.75, -1.0, 0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 1.0, -0.5, 0.0, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -0.25, 0.25, 1.0, -0.75, 0.5, -0.25, 0.0, 1.0, 1.0, 1.0, -0.75, 0.75, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, 0.5, 1.0, -0.75, 0.0, -0.75, 0.0, 1.0, -1.0, -1.0, 1.0, -0.5, 0.0, 0.75, 0.25, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.25, -0.75, -1.0, 0.75, 0.5, -0.25, 0.5, -0.75, -1.0, 0.0, 0.5, 0.25, -0.25, 0.25, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, -1.0, ]);
    const array4 = new Float32Array([-0.5, 0.0, -1.0, 0.0, -0.25, 1.0, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 0.25, -0.25, -1.0, 0.25, 1.0, -0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, 1.0, 0.75, -0.25, -0.25, -0.75, -0.5, 0.5, 0.0, 0.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.75, -1.0, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, 0.5, 0.25, -0.25, -0.25, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.75, 0.75, 1.0, 1.0, -0.25, -0.5, 0.75, 1.0, -1.0, 1.0, 0.5, -1.0, -0.5, 0.25, 0.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 0.75, 0.75, 0.0, 0.5, -1.0, 0.0, 1.0, -0.25, -0.75, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const array5 = new Float32Array([0.25, -0.5, 0.0, -0.25, 0.0, 0.5, 0.0, 0.5, -0.5, 0.0, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, 1.0, -1.0, 0.0, 0.5, -0.5, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, -0.25, 1.0, -0.75, 0.0, -1.0, -0.75, 0.0, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.5, 0.25, -0.5, -0.75, 0.25, 1.0, -0.25, 0.75, -0.25, -1.0, -0.5, -0.25, 0.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.75, -0.5, -0.5, 1.0, 0.5, 0.0, -0.75, -1.0, 1.0, 0.25, 0.75, 0.75, 1.0, 0.25, -0.75, 0.25, 1.0, 0.25, 0.0, 0.25, -1.0, 1.0, 0.75, -0.5, -0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array6 = new Float32Array([1.0, 1.0, -0.5, -0.25, -0.5, 1.0, -0.25, 0.75, -0.75, 0.0, 0.25, -0.25, -1.0, 0.75, -1.0, -0.5, -0.5, -0.5, 1.0, -0.75, 0.5, 0.0, 1.0, -0.5, 0.25, 0.0, 0.25, 1.0, -0.25, -0.5, 0.75, -0.25, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, -0.25, 0.25, 0.75, -0.5, 0.25, 0.75, -0.25, -1.0, -0.75, -0.5, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, 0.0, 0.25, -0.5, 0.0, 0.75, 0.75, -0.75, -1.0, -0.25, 1.0, -0.5, 0.25, -0.5, 0.25, -1.0, -0.5, -0.5, -0.25, 0.5, -0.25, -1.0, -1.0, 1.0, 0.5, 1.0, 0.25, -0.5, -0.5, 0.25, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -0.25, 0.5, -0.25, 0.25, -0.5, 0.25, 0.5, -0.75, -0.75, 0.0, 0.75, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture000.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    texture002.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    command_encoder001.pushDebugGroup("mygroupmarker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer000,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer002, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer002, 0);
    render_pass_encoder0010.setStencilReference(1);
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    texture001.destroy();
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    buffer002.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_pass_encoder0010.executeBundles([])
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0030.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    query000.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder0030.setStencilReference(1);
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    
    render_pass_encoder0010.executeBundles([])
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture004.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.end();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    buffer001.destroy()
    query200.destroy()
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_pass_encoder0040.popDebugGroup();
    device00.pushErrorScope("internal");
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    query000.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0030.setStencilReference(1);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    render_pass_encoder0040.setStencilReference(1);
    query002.destroy()
    query001.destroy()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
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
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setPipeline(render_pipeline000);
    render_pass_encoder0040.popDebugGroup();
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    query001.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline000);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture006 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer007.destroy()
    
    compute_pass_encoder0020.insertDebugMarker("marker")
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
    buffer300.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder0020.dispatchWorkgroups(100);
    query002.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    texture005.destroy();
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer000.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture006 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query200.destroy()
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture006 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture006 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer302 = command_encoder302.finish();
    device30.pushErrorScope("validation");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query003.destroy()
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device20.pushErrorScope("validation");
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0050.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
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
    
    
    query200.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    
    render_pass_encoder0030.popDebugGroup();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture006.destroy();
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder101.insertDebugMarker("mymarker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder0000.executeBundles([])
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device00.pushErrorScope("out-of-memory");
    
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    buffer301.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0050.setStencilReference(1);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    query003.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.0, 0.75, 0.0, -0.75, -0.25, 0.5, 0.75, -0.25, -0.75, -0.75, -0.5, -0.25, -1.0, 0.25, 0.75, 0.75, 1.0, 0.75, -0.75, -1.0, -0.5, 0.5, 0.5, -0.5, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, 1.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.5, 0.25, 0.0, 0.0, 0.0, 0.25, -0.25, -0.25, -0.75, -0.75, -0.75, 0.25, 1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 0.25, -1.0, 0.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 1.0, 0.75, -0.25, -1.0, 0.0, 0.0, -0.25, -0.5, 1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 1.0, 0.25, -0.5, 0.0, 1.0, -0.5, 0.5, -0.25, -0.25, 0.0, 0.0, -0.5, -1.0, 0.0, 0.25, ]);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0000.executeBundles([])
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder0000.setStencilReference(1);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder201.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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

    render_bundle_encoder001.setBindGroup(0, bind_group003);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer0011.destroy()
    buffer006.destroy()
    
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture_view0071 = texture007.createView({ label: "texture_view0071" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.executeBundles([])
    
    command_encoder007.clearBuffer(buffer005);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0070,
            },
        ],
        occlusionQuerySet: query004
    });
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query004.destroy()
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture007.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_buffer201 = command_encoder201.finish();
    texture201.destroy();
    render_pass_encoder0000.setStencilReference(1);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_pass_encoder0070.setViewport(0, 0, texture007.width / 2, texture007.height / 2, 0, 1);
    render_bundle_encoder200.insertDebugMarker("marker");
    texture003.destroy();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    query002.destroy()
    
    render_pass_encoder0060.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0070.insertDebugMarker("marker");
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0030.setBindGroup(0, bind_group004);
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder0050.popDebugGroup();
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0060.setPipeline(render_pipeline000);
    render_pass_encoder0040.setVertexBuffer(0, buffer004);
    command_encoder202.popDebugGroup()
    render_pass_encoder0070.setPipeline(render_pipeline000);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0000.setPipeline(render_pipeline000);
    render_pass_encoder0040.drawIndirect(buffer002, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.setVertexBuffer(0, buffer004);
    const command_buffer304 = command_encoder304.finish();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    const command_buffer202 = command_encoder202.finish();
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group007);
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
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_pass_encoder0050.end();
    const command_buffer002 = command_encoder002.finish();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder0040.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0070.setVertexBuffer(0, buffer004);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0080.setPipeline(render_pipeline000);
    device00.queue.submit([command_buffer002, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer004);
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
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group0010);
    render_pass_encoder0060.setVertexBuffer(0, buffer004);
    render_pass_encoder0060.drawIndirect(buffer008, 0);
    render_pass_encoder0010.setPipeline(render_pipeline000);
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
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0000.drawIndirect(buffer002, 0);
    render_pass_encoder0070.end();
    const command_buffer007 = command_encoder007.finish();
    render_pass_encoder0060.end();
    const command_buffer006 = command_encoder006.finish();
    const command_buffer005 = command_encoder005.finish();
    device20.queue.submit([command_buffer202, ]);
    command_encoder301.popDebugGroup()
    render_pass_encoder0030.setVertexBuffer(0, buffer004);
    render_pass_encoder0000.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0010.setVertexBuffer(0, buffer004);
    render_pass_encoder0080.setVertexBuffer(0, buffer004);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0010.drawIndirect(buffer008, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    render_pass_encoder0080.drawIndirect(buffer008, 0);
    render_pass_encoder0030.draw(3);
    const command_buffer004 = command_encoder004.finish();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer007, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0080.end();
    const command_buffer008 = command_encoder008.finish();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    const command_buffer003 = command_encoder003.finish();
    device30.queue.submit([command_buffer301, ]);
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer008, ]);
}