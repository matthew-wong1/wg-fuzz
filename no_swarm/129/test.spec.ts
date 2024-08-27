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
    
    const array0 = new Float32Array([1.0, 0.5, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.25, 0.75, 0.0, 0.25, 0.75, 0.25, 0.5, 0.25, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, -1.0, -0.5, 0.0, 0.0, 0.75, -1.0, 0.5, -1.0, -0.5, 0.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, 0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.25, -0.75, -0.5, -0.75, -0.5, -0.5, -0.75, 0.75, 0.5, 0.75, -0.75, 0.75, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, 0.5, 0.5, -0.5, -0.5, -0.25, -0.5, -0.25, -0.25, -0.5, -0.5, -0.75, 0.5, 0.0, 1.0, 0.25, 1.0, 0.5, ]);
    
    
    const array1 = new Float32Array([-0.5, -1.0, 0.25, 0.0, 0.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.25, 0.0, 0.25, -0.5, -0.25, 0.75, 0.5, 0.25, 1.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 1.0, 0.5, 1.0, -0.5, 0.25, 0.5, 0.0, 1.0, 0.25, 0.25, 1.0, -0.5, -1.0, 0.5, -0.25, 0.25, -0.75, 0.25, -0.5, 0.5, 1.0, 1.0, -0.25, 0.75, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 0.0, -1.0, 0.5, -0.5, 0.25, 0.75, 0.25, 0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, -0.25, 0.0, -0.5, -0.75, 0.5, 0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 0.0, -1.0, 0.5, 0.75, -1.0, 0.75, -1.0, -0.5, 0.0, ]);
    
    
    const array2 = new Float32Array([0.25, -0.75, 0.0, -0.25, 0.75, -0.25, 0.5, 0.0, -0.75, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, 1.0, -0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 0.25, 0.5, 0.75, -0.75, -0.5, -0.75, 0.0, -1.0, 0.5, 1.0, 0.25, -0.75, -0.25, -0.25, 0.25, -1.0, -1.0, 0.5, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.25, 1.0, -0.25, -1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.75, -0.25, -0.75, -0.5, 1.0, -0.5, 0.5, 0.75, 0.5, 0.75, 0.25, -0.5, -0.25, 1.0, -0.75, 0.5, 0.0, -1.0, -1.0, 0.25, 0.75, -0.75, -0.5, 0.5, -0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 0.75, -0.5, 0.75, 1.0, 0.25, ]);
    const array3 = new Float32Array([1.0, 0.5, 0.5, 0.75, 0.0, 0.5, -0.75, 0.75, -0.25, 0.75, 0.5, -1.0, 1.0, -1.0, 0.25, 1.0, -0.5, -0.75, -0.5, -0.75, 0.0, 0.5, 1.0, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, -1.0, 0.5, 0.0, -0.75, -0.5, 0.0, -0.25, -1.0, -1.0, -0.75, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.5, 0.25, -0.25, 0.0, -0.25, 0.5, 0.5, 1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.25, -0.25, 0.25, 0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, -0.75, -0.25, 0.75, -1.0, 0.25, 0.5, 0.25, -0.25, -1.0, -0.25, -0.75, -0.75, 0.25, -0.75, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, 0.25, ]);
    const array4 = new Float32Array([-0.5, 0.0, 0.0, -0.75, 0.25, -0.25, 1.0, -0.75, -0.25, -0.5, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -1.0, -0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, 0.75, -1.0, -0.75, 0.5, 1.0, 0.25, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, -0.75, 0.25, -0.25, 0.25, -0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 1.0, -1.0, -0.75, -0.25, 0.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.25, 0.0, 0.0, 1.0, -0.75, -0.25, 0.5, -0.25, -0.75, 1.0, 0.5, 1.0, -0.5, 0.5, -0.25, 0.75, -0.25, 0.5, -1.0, 1.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.25, -0.25, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 0.5, 0.0, ]);
    
    const array5 = new Float32Array([1.0, 1.0, 1.0, -0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.75, -0.25, -0.75, -0.25, 0.0, 0.75, -0.75, -0.25, 0.75, -1.0, 0.5, -0.5, 0.75, -0.75, -0.5, 0.25, 0.0, -0.5, 0.0, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 0.0, -0.75, 0.75, 0.75, 0.75, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, 0.0, -1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.0, 0.25, -1.0, -1.0, 0.25, 0.0, -1.0, 0.75, 1.0, 0.75, -0.25, -0.5, -0.75, -0.25, -0.75, -0.75, 0.5, -0.75, -0.25, -0.75, -0.5, -1.0, 0.75, -1.0, 1.0, 0.75, -0.25, 0.25, -1.0, 0.25, 0.75, -0.25, 1.0, -0.5, 0.5, -1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([-0.5, -0.5, 0.75, -0.5, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, -0.5, -0.75, 0.5, 0.75, -0.75, 0.0, 0.75, 0.25, -0.25, -0.25, 0.5, 0.5, -0.5, -0.75, -1.0, -1.0, 0.75, 1.0, -1.0, -0.25, -0.75, -0.25, -0.25, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.75, 1.0, 0.25, 0.0, -0.25, -0.75, -0.5, -0.75, 0.5, 0.5, 0.75, -0.25, -0.75, 0.5, -0.25, -0.25, 1.0, 0.0, 0.5, -0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.5, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.0, -1.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.0, -0.25, -1.0, 1.0, 0.25, 0.25, 0.25, -0.25, 0.75, 0.75, 0.0, -0.75, -0.75, 0.5, 1.0, 0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([0.0, -0.5, -0.75, 0.25, 1.0, 0.5, -1.0, 1.0, 0.25, 0.5, 1.0, -0.75, 0.5, -1.0, 0.5, -0.25, 0.75, -1.0, 0.25, -0.75, 0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -1.0, -0.75, -0.75, 0.25, 0.25, -0.75, -0.75, -1.0, 0.25, -1.0, -0.75, 1.0, 0.5, -0.75, 0.5, -0.5, -1.0, 0.0, -1.0, -0.25, 0.75, 0.5, 0.5, 0.5, -0.25, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, 0.25, -1.0, -0.75, 0.5, 0.25, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, -0.5, -0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, -0.5, -1.0, 0.75, -0.75, -1.0, 0.0, 1.0, -0.75, -0.75, 0.5, 0.0, 0.75, -0.25, -0.5, -0.25, -0.75, 0.75, -0.5, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    device00.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device20.pushErrorScope("validation");
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer200.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer200 = command_encoder200.finish();
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query200.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder202.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([0.75, 1.0, -1.0, 0.0, 1.0, 0.25, -0.5, 0.0, -0.75, 0.5, 1.0, -0.25, 0.75, -0.25, -1.0, 0.5, -1.0, 0.5, 0.25, 0.5, 1.0, 0.25, 1.0, -0.5, 1.0, -1.0, -1.0, 0.5, 0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, -0.75, -0.75, 0.0, 0.75, 0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -1.0, 1.0, 0.25, 0.0, -0.5, -0.5, -1.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, -0.25, -0.75, -0.25, -0.75, 1.0, 0.0, 0.75, -0.25, -1.0, -0.75, 1.0, -1.0, -0.25, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.75, -0.5, 0.0, 0.5, 0.5, -0.25, 1.0, 0.25, -1.0, -0.25, 0.25, 0.25, ]);
    device20.queue.submit([command_buffer200, ]);
    query200.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array9 = new Float32Array([1.0, 0.0, -0.75, 1.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.75, 1.0, -0.25, 0.0, -0.25, -0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 0.5, 1.0, 1.0, -0.25, 0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.75, -1.0, 1.0, 0.75, -0.5, -0.25, 0.75, -0.5, 0.25, 1.0, 0.0, -0.5, 1.0, 0.0, 0.25, 1.0, -0.25, 0.5, -0.25, -0.5, 0.75, 0.0, 0.25, -1.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.25, -0.25, -0.5, 0.25, -0.5, 0.5, 0.0, -0.75, 0.5, 0.5, 0.0, -0.5, 0.75, -0.25, -0.75, -0.5, 1.0, -1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 0.25, -0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 0.75, -0.25, 0.5, -1.0, 0.0, 0.0, 0.5, -1.0, -0.5, -1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    command_encoder202.popDebugGroup()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture200.destroy();
    
    query200.destroy()
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    command_encoder203.insertDebugMarker("mymarker");
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query200.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    buffer202.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2040.setStencilReference(1);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    texture201.destroy();
    render_pass_encoder2030.setStencilReference(1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2040.insertDebugMarker("marker");
    buffer201.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer205, 0);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query200.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    query200.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setPipeline(render_pipeline201);
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    
    compute_pass_encoder2010.end();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const array10 = new Float32Array([-0.5, 0.25, -1.0, -0.75, 0.25, -0.5, -0.75, 0.25, -0.25, -0.75, 0.0, -0.5, 0.75, 0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.75, 0.25, 0.5, -0.75, 0.5, 0.25, -1.0, 0.5, 0.25, -0.25, -1.0, -0.5, 0.75, 0.5, -0.5, -0.75, 0.25, 0.5, 1.0, -0.75, 0.5, 0.75, 0.0, -0.75, 0.25, 0.0, -0.25, 0.25, -0.25, -0.25, -0.25, 0.5, -0.25, 1.0, 1.0, 1.0, -0.75, 0.5, -1.0, 1.0, -0.75, -0.75, 0.5, 1.0, -1.0, 0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, -0.5, 0.0, -0.75, 0.25, 0.25, 0.75, -1.0, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -0.75, ]);
    command_encoder201.clearBuffer(buffer205);
    texture202.destroy();
    buffer205.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    
    
    query201.destroy()
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    device30.destroy();
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer400, ]);
    query201.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder202.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2030.insertDebugMarker("marker");
    query400.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2040.setPipeline(render_pipeline201);
    
    query202.destroy()
    render_pass_encoder2040.insertDebugMarker("marker");
    
    
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    render_pass_encoder2040.setStencilReference(1);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    buffer207.destroy()
    const array11 = new Float32Array([0.75, -0.75, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 0.5, 0.75, -0.75, 1.0, 0.5, 0.75, 0.75, 0.75, -0.75, -0.25, 1.0, 0.0, -0.25, -1.0, 0.25, -1.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.75, -0.75, -0.75, -0.25, 0.0, 0.75, 1.0, 1.0, 0.25, 0.25, -0.5, -0.25, -0.5, -0.75, 0.0, -0.75, 0.25, -0.5, -0.5, -0.25, 0.75, 0.25, 0.25, 0.25, 0.5, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, 1.0, -1.0, -0.75, -0.5, 0.75, -0.75, 0.75, -1.0, -0.5, 1.0, 0.75, 1.0, 0.25, -1.0, 1.0, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -1.0, -0.75, 1.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, -1.0, 0.75, 1.0, 0.5, ]);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    render_pass_encoder2040.popDebugGroup();
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer209, 0, array0, 0, array0.length);
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
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
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    device40.pushErrorScope("out-of-memory");
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    query400.destroy()
    
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group205);
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder202.popDebugGroup();
    buffer2013.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer2015.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer209, 0, array1, 0, array1.length);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    device40.queue.writeTexture({ texture: texture400 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer2012.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    buffer208.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer209.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer2016.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer2014.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder2030.setStencilReference(1);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    device40.destroy();
    
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    buffer2010.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device20.pushErrorScope("validation");
    render_pass_encoder2030.setStencilReference(1);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer2011.destroy()
    query203.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2040.setStencilReference(1);
    query200.destroy()
    
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder2030.setStencilReference(1);
    device20.queue.writeBuffer(buffer2020, 0, array9, 0, array9.length);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2020, 0, array3, 0, array3.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.submit([command_buffer202, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
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
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2020, 0, array8, 0, array8.length);
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer2020.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    buffer204.destroy()
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query202.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    buffer500.destroy()
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    command_encoder600.insertDebugMarker("mymarker");
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query203.destroy()
    query201.destroy()
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    query500.destroy()
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query202.destroy()
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    command_encoder600.insertDebugMarker("mymarker");
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer2019.destroy()
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer2017.destroy()
    
    
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
    render_pass_encoder2030.insertDebugMarker("marker");
    device50.pushErrorScope("out-of-memory");
    query201.destroy()
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    render_pass_encoder2030.popDebugGroup();
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    texture600.destroy();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    render_bundle_encoder200.popDebugGroup();
    texture500.destroy();
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    command_encoder600.popDebugGroup()
    command_encoder601.insertDebugMarker("mymarker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer600 = command_encoder600.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
}