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
    
    const array0 = new Float32Array([0.75, -0.75, 0.75, -0.5, 0.75, 0.25, 0.5, -0.5, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, -1.0, 0.5, -0.75, 1.0, -1.0, 1.0, -1.0, 0.5, 0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.5, 0.75, 0.0, 0.75, -0.25, 0.5, -0.75, -1.0, 0.0, 0.5, -0.75, 0.25, 0.5, -0.25, -0.25, -0.75, 1.0, -0.5, 0.25, 0.25, 1.0, -0.75, -0.25, 1.0, -0.75, -1.0, 0.25, -1.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.0, -0.5, 1.0, 1.0, -1.0, 0.75, 1.0, -0.25, -0.5, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.0, -1.0, -0.75, 0.0, 0.75, -0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, -0.75, 0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, ]);
    const array1 = new Float32Array([0.75, 0.25, -0.75, 0.75, -1.0, -1.0, -0.5, 0.5, -0.5, 1.0, -1.0, -0.75, 0.25, -0.5, 0.25, -0.75, -0.25, -0.75, -0.25, 0.5, -0.75, -1.0, -0.75, 0.0, 0.75, 0.75, 0.75, -1.0, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 0.5, 0.25, -0.5, -0.25, -0.25, -0.25, -0.75, 0.25, -0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -1.0, -0.25, 1.0, 0.75, -0.75, -1.0, -0.5, -0.5, 0.25, 0.5, -0.5, -0.5, -0.75, 0.0, -1.0, 0.75, -0.75, -0.25, -0.75, -0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.0, -1.0, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, 0.5, 1.0, 0.25, 0.0, -0.25, 1.0, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, 0.25, 0.25, -1.0, 0.0, -1.0, 0.25, ]);
    
    
    
    
    
    
    const array2 = new Float32Array([0.5, -0.5, 1.0, 0.75, -1.0, 0.25, 1.0, 1.0, 0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.5, -0.75, 0.75, 0.5, -0.75, 1.0, 1.0, 0.25, 0.5, -0.25, 1.0, -1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 0.25, -1.0, -0.5, 0.0, 0.25, -1.0, 0.0, -1.0, 0.75, 0.25, 0.25, 0.0, -1.0, 0.0, 0.5, -0.5, -0.75, -0.75, 0.5, 0.5, 0.5, -0.75, 0.75, 0.5, -1.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.75, 0.25, -0.25, -1.0, 1.0, 1.0, 1.0, 0.5, -0.25, -0.75, 1.0, 0.5, 0.75, 1.0, 1.0, 1.0, -0.25, 0.25, -1.0, 0.75, -1.0, 0.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.75, 1.0, 0.75, -0.75, ]);
    
    
    const array3 = new Float32Array([-0.75, -0.25, -1.0, 0.25, 0.25, -1.0, 0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, 0.25, -0.5, 0.5, -0.5, -0.5, 1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.5, 0.75, -0.75, -0.25, -1.0, 0.75, -0.25, 0.5, 0.0, 0.0, -1.0, 1.0, -0.75, -1.0, 0.5, 0.75, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, -0.5, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.75, -0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, 0.25, -1.0, 1.0, -0.25, 1.0, 0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.0, -1.0, 0.25, 0.25, -1.0, -0.25, 1.0, 0.25, -0.75, -0.5, -0.75, 0.5, 0.25, -0.25, 0.75, -0.5, -0.75, -1.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, 0.5, 0.75, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([0.75, -0.5, -0.5, 0.0, -1.0, 1.0, 0.25, 0.0, 1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.75, -1.0, -0.25, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, 0.25, -0.5, -0.5, -0.5, -0.25, 1.0, -1.0, 0.0, 0.25, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, -0.5, -0.75, -1.0, -0.5, -1.0, -0.75, 1.0, 0.75, 0.0, -1.0, -0.75, -1.0, 0.75, 0.0, 0.5, 0.5, -0.5, 0.0, -0.25, -0.75, 1.0, -0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.25, -0.5, -0.75, 0.5, -0.75, 0.0, 0.0, 0.25, 0.75, -0.75, 0.0, 1.0, -0.75, 0.75, -0.25, 0.0, 0.5, -1.0, 0.75, 0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.0, -0.75, 0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    buffer001.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query000.destroy()
    
    const command_buffer001 = command_encoder001.finish();
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    command_encoder003.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer002,
        0,
        400
    );
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
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
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer001,
        0,
        400
    );
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer003.destroy()
    const array5 = new Float32Array([1.0, -1.0, 1.0, 0.5, -0.5, -0.5, -0.75, -1.0, 1.0, 0.25, -1.0, -0.5, 0.25, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.0, 0.0, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.25, -0.75, -0.25, 0.0, 0.0, 1.0, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, 0.0, -0.25, -0.25, 0.0, -0.75, -0.5, 0.75, 0.5, 0.5, -0.25, -0.25, -0.75, -1.0, 0.25, -0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -1.0, -0.75, 0.5, 0.5, -0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, 0.0, 0.75, 0.5, 1.0, -1.0, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, 0.0, 0.0, 0.75, -1.0, 0.25, 0.0, -0.75, -0.5, 0.5, ]);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer004.destroy()
    command_encoder002.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder002.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer003
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const array6 = new Float32Array([0.5, 1.0, -0.5, -0.5, 1.0, -0.75, -0.75, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, 0.0, -0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 1.0, -0.25, -1.0, -0.5, 0.5, -1.0, 0.0, 1.0, 0.0, -0.25, -0.25, 0.0, 0.0, 0.5, 0.0, -0.25, -1.0, 0.75, -0.25, 0.75, 1.0, -0.5, -0.25, -0.25, -0.5, 0.5, -1.0, -0.75, 0.0, 1.0, -1.0, 0.0, 0.75, 0.75, 1.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.5, 0.25, -0.75, -0.75, 0.75, 0.75, 1.0, 0.75, -0.5, -0.75, -0.75, -1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.0, 0.75, 1.0, -0.25, 1.0, -0.75, -0.25, 0.5, -0.5, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 0.5, 0.25, 0.75, 0.75, 0.75, -0.5, ]);
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.popDebugGroup()
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture000.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder002.insertDebugMarker("mymarker");
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer004 = command_encoder004.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.pushDebugGroup("mygroupmarker")
    texture001.destroy();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    query001.destroy()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const array7 = new Float32Array([-0.5, 0.75, -0.25, -0.25, 0.25, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.25, -1.0, -0.5, -0.5, 0.75, -0.25, -1.0, -0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, -0.25, -0.5, 0.0, 0.75, 1.0, -1.0, -0.25, -1.0, 1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, 0.0, -0.25, 0.75, -0.75, 0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, 0.0, -1.0, 0.25, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 0.25, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, -0.75, -0.25, 0.0, ]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
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
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const compute_pass_encoder0031 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0031" });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0050.executeBundles([])
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const array8 = new Float32Array([-0.75, 0.25, -0.5, 1.0, -0.25, -0.75, 0.75, 0.75, 0.25, 0.5, -0.75, 1.0, 1.0, -0.5, 0.5, -0.75, 1.0, 1.0, -1.0, 0.0, -0.5, 0.25, -1.0, -0.25, -1.0, -0.25, -1.0, 0.5, -0.5, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.25, 0.75, -0.75, -1.0, 1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.5, -0.5, 0.5, -0.75, -0.5, -0.25, 0.75, 0.25, -0.5, 0.5, -0.75, -0.5, 1.0, 0.0, 0.5, 0.5, -1.0, 1.0, -1.0, -0.25, -1.0, -1.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 0.5, 0.5, 0.0, -0.75, -0.75, -0.75, 1.0, 0.25, 0.75, -0.5, -0.75, 0.25, -1.0, -0.25, -0.75, -0.75, 1.0, 0.25, ]);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    const array9 = new Float32Array([1.0, 0.5, 0.25, 0.5, -1.0, 1.0, 1.0, -0.5, -0.25, -0.5, 1.0, 0.5, -0.5, -0.5, 1.0, 0.75, 1.0, -0.25, 0.25, 0.75, -0.5, 0.5, 0.75, 0.0, -0.75, 1.0, -0.5, 0.5, -0.75, 0.25, 0.25, -0.25, 1.0, 0.5, 0.25, 0.5, 0.25, -0.5, -0.5, 0.75, -1.0, -0.5, 0.75, 0.75, 0.0, 0.5, -0.75, 0.75, -1.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, 0.25, 0.25, -0.75, -1.0, -0.75, 0.5, 0.75, 0.25, 0.5, -0.5, -0.5, 0.25, -0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 0.75, -0.75, -0.25, 0.0, 0.5, 0.0, 0.0, 0.5, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 0.0, ]);
    render_pass_encoder0050.insertDebugMarker("marker");
    const command_buffer006 = command_encoder006.finish();
    render_bundle_encoder000.popDebugGroup();
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
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
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder003.clearBuffer(buffer005);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    render_pass_encoder0031.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array10 = new Float32Array([-0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 0.0, 0.5, 0.25, -0.5, 0.25, -0.75, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.75, -1.0, -0.25, -0.5, 0.25, -1.0, -0.5, -0.5, -0.5, 0.25, -0.75, 0.25, 0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.25, 1.0, 0.75, 1.0, 0.0, 0.75, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, 1.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.0, -1.0, 0.75, 1.0, -0.25, -0.5, -0.25, -0.75, -0.5, 0.5, 1.0, -0.25, 0.0, 0.25, 1.0, 0.0, -0.5, -0.25, 0.0, -0.5, -0.25, 0.5, 0.75, -1.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, ]);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0031.insertDebugMarker("marker")
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder0031.popDebugGroup()
    query001.destroy()
    render_pass_encoder0031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0030.setPipeline(compute_pipeline001);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array11 = new Float32Array([0.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.25, -0.75, -1.0, 0.75, -0.75, 0.75, -1.0, -1.0, 0.0, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, -0.25, -0.75, -0.75, 0.0, -1.0, 0.25, 0.75, 0.25, 0.0, -1.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, 0.0, 0.5, 1.0, 0.5, 0.0, 0.25, -1.0, -0.75, -0.25, -0.5, 0.0, -1.0, 0.25, 1.0, 0.5, 0.75, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, 1.0, -1.0, 0.0, -1.0, -0.75, -1.0, -0.75, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, -0.5, -0.25, -0.5, 1.0, -0.25, -0.5, -0.25, 0.0, 0.25, -0.5, -0.5, -0.25, -0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.75, ]);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    command_encoder007.copyBufferToBuffer(
        buffer005,
        0,
        buffer004,
        0,
        400
    );
    compute_pass_encoder0031.setPipeline(compute_pipeline002);
    const command_buffer007 = command_encoder007.finish();
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    device00.pushErrorScope("internal");
    render_pass_encoder0030.executeBundles([])
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0031.popDebugGroup();
    
    render_pass_encoder0031.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_pass_encoder0030.setStencilReference(1);
    compute_pass_encoder0031.insertDebugMarker("marker")
    
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
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
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

    compute_pass_encoder0031.setBindGroup(0, bind_group000);
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder0031.executeBundles([render_bundle_encoder000, ])
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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
    render_pass_encoder0050.insertDebugMarker("marker");
    
    render_pass_encoder0020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    
    query001.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0031.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_pass_encoder0031.popDebugGroup();
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setStencilReference(1);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0021.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    render_pass_encoder0050.popDebugGroup();
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer000.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
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
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    command_encoder100.clearBuffer(buffer100);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder0032 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0032",
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query002.destroy()
    
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0051.insertDebugMarker("marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer008, 0, array11, 0, array11.length);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const command_buffer101 = command_encoder101.finish();
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer008, 0, array9, 0, array9.length);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query001.destroy()
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query001.destroy()
    render_pass_encoder0021.pushDebugGroup("group_marker");
    command_encoder005.clearBuffer(buffer008);
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0032.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    texture002.destroy();
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer008, 0, array9, 0, array9.length);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
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
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
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
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group002);
    
    
    buffer005.destroy()
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer009.destroy()
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer008, 0, array6, 0, array6.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0032.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0050.endOcclusionQuery()
    compute_pass_encoder0031.insertDebugMarker("marker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_pass_encoder0032.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
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
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer008.destroy()
    device00.queue.writeBuffer(buffer007, 0, array4, 0, array4.length);
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0050.pushDebugGroup("group_marker");
    buffer0010.destroy()
    render_pass_encoder0032.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device00.queue.writeBuffer(buffer0011, 0, array11, 0, array11.length);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query003.destroy()
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeBuffer(buffer0012, 0, array3, 0, array3.length);
    compute_pass_encoder0020.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    render_pass_encoder0021.executeBundles([])
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0021.insertDebugMarker("marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.popDebugGroup();
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer007, 0, array6, 0, array6.length);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.insertDebugMarker("marker");
    query003.destroy()
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group004);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    command_encoder002.copyBufferToBuffer(
        buffer001,
        0,
        buffer004,
        0,
        400
    );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0031.popDebugGroup()
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
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
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
    buffer0011.destroy()
    query000.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array11, 0, array11.length);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
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

    render_pass_encoder0030.setBindGroup(0, bind_group005);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    query100.destroy()
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder000.clearBuffer(buffer006);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    query000.destroy()
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0032.setPipeline(render_pipeline000);
    buffer006.destroy()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.beginOcclusionQuery(0)
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder0020.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout007,
        compute: {
            module: shader_module009,
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
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0032.setStencilReference(1);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer0017.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0033 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0033",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0020.popDebugGroup()
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0032.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0033.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setVertexBuffer(0, buffer002);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0031.end();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0019, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
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
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group006);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0021.setPipeline(render_pipeline000);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.setPipeline(render_pipeline000);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0031.setPipeline(render_pipeline000);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
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
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group007);
    render_pass_encoder0021.endOcclusionQuery()
    render_pass_encoder0033.setPipeline(render_pipeline000);
    render_pass_encoder0051.setVertexBuffer(0, buffer0022);
    render_pass_encoder0051.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0030.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    render_pass_encoder0051.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0051.setIndexBuffer(buffer0016, "uint16");
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
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
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    render_pass_encoder0051.drawIndexed(3);
    render_pass_encoder0021.setVertexBuffer(0, buffer004);
    render_pass_encoder0050.setVertexBuffer(0, buffer0016);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0018, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.end();
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
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
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0033.setBindGroup(0, bind_group009);
    render_pass_encoder0050.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0051.end();
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
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
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0031.setBindGroup(0, bind_group0010);
    render_pass_encoder0033.setVertexBuffer(0, buffer0020);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0050.endOcclusionQuery()
    render_pass_encoder0033.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0031.setVertexBuffer(0, buffer0027);
    render_pass_encoder0033.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    device00.queue.submit([]);
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
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
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0032.setBindGroup(0, bind_group0011);
    render_pass_encoder0032.setVertexBuffer(0, buffer0019);
    render_pass_encoder0033.end();
    render_pass_encoder0033.drawIndirect(buffer006, 0);
    render_pass_encoder0032.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0032.drawIndirect(buffer004, 0);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group0012);
    render_pass_encoder0020.setVertexBuffer(0, buffer0015);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.end();
    command_encoder002.popDebugGroup()
    render_pass_encoder0032.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer005, ]);
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0032.end();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0020.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer004, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0033.drawIndexed(3);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.end();
    render_pass_encoder0050.end();
    render_pass_encoder0030.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0051.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0020, 0);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0033.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0033.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.end();
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0021.drawIndirect(buffer003, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexed(3);
    compute_pass_encoder0031.end();
    render_pass_encoder0031.end();
    render_pass_encoder0031.draw(3);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0033.drawIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer008, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0034, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0034, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([]);
    render_pass_encoder0033.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0033.draw(3);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0032.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0024, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.draw(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0031.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0034, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0031.drawIndirect(buffer0034, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0033.popDebugGroup();
    compute_pass_encoder0031.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
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
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
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
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group0014);
    render_pass_encoder0032.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0032.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0051.end();
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0040, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0040, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer008, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0032.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0032.drawIndirect(buffer0034, 0);
    render_pass_encoder0032.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder0031.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0051.drawIndirect(buffer0031, 0);
    render_pass_encoder0031.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0032.drawIndexedIndirect(buffer005, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
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
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder0031.drawIndirect(buffer0040, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0016);
    compute_pass_encoder0031.end();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0047, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer003, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0033.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder0030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0048, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0048, 0);
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer008, 0);
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0033.drawIndirect(buffer0031, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0032.drawIndirect(buffer0034, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0033.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexed(3);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0018);
    render_pass_encoder0021.drawIndirect(buffer0023, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0032.drawIndirect(buffer008, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder0032.drawIndirect(buffer003, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0032.drawIndirect(buffer004, 0);
    render_pass_encoder0031.drawIndirect(buffer0047, 0);
    render_pass_encoder0032.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0040, 0);
    device10.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0031.drawIndexedIndirect(buffer008, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0052, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0052, 0);
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
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0019);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0049, 0);
    device10.queue.submit([]);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0032.popDebugGroup();
    render_pass_encoder0031.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0034, 0);
    render_pass_encoder0033.end();
    render_pass_encoder0033.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0031.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder0033.drawIndexedIndirect(buffer0026, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0055, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0055, 0);
    render_pass_encoder0021.drawIndirect(buffer0034, 0);
    render_pass_encoder0032.drawIndirect(buffer0011, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0048, 0);
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
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0059,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0021);
    render_pass_encoder0030.drawIndirect(buffer0052, 0);
    render_pass_encoder0051.drawIndirect(buffer0044, 0);
    compute_pass_encoder0031.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0031.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0058, 0);
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
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
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0022);
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
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

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0033.drawIndirect(buffer0052, 0);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0051.draw(3);
    render_pass_encoder0032.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0021.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0051.drawIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer006, ]);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0024);
    render_pass_encoder0032.drawIndirect(buffer0049, 0);
    render_pass_encoder0032.end();
    render_pass_encoder0051.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0033.setIndexBuffer(buffer0020, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0033.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0033.popDebugGroup();
    const uint32_0031 = new Uint32Array(3);

    uint32_0031[0] = 100;
    uint32_0031[1] = 1;
    uint32_0031[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0031, 0, uint32_0031.length);

    compute_pass_encoder0031.dispatchWorkgroupsIndirect(buffer0066, 0);
    render_pass_encoder0033.end();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group0025);
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0069, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0069, 0);
    compute_pass_encoder0031.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0070, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0070, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0031.setIndexBuffer(buffer0047, "uint16");
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
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

    compute_pass_encoder0031.setBindGroup(0, bind_group0026);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0032.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0031.end();
    render_pass_encoder0031.drawIndirect(buffer0070, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0033.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.end();
    render_pass_encoder0051.setIndexBuffer(buffer0056, "uint16");
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0074,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0027);
    render_pass_encoder0051.drawIndirect(buffer0070, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder0033.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0031.drawIndirect(buffer008, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0032.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0033.end();
    render_pass_encoder0031.drawIndirect(buffer0069, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0028);
    render_pass_encoder0033.drawIndirect(buffer003, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0031.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0033.popDebugGroup();
    render_pass_encoder0033.drawIndirect(buffer003, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndirect(buffer0057, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0033.drawIndirect(buffer0047, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndirect(buffer0065, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer003, command_buffer007, ]);
    compute_pass_encoder0020.popDebugGroup()
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0029);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0080,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0030);
    render_pass_encoder0033.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0051.drawIndirect(buffer008, 0);
    render_pass_encoder0021.drawIndirect(buffer0069, 0);
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder0021.drawIndexedIndirect(buffer0053, 0);
    compute_pass_encoder0031.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    compute_pass_encoder0031.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0066, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0031.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0050.drawIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.drawIndirect(buffer0026, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0051.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndirect(buffer0070, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0072, 0);
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0032);
    render_pass_encoder0020.end();
    render_pass_encoder0032.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0031.drawIndirect(buffer0019, 0);
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0085, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0051.setIndexBuffer(buffer0052, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0087,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0033);
    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0089,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder0051.popDebugGroup();
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0031.setBindGroup(0, bind_group0035);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0030.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0021.drawIndirect(buffer0040, 0);
    render_pass_encoder0033.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0032.drawIndexedIndirect(buffer0055, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0031.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0051.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0020.drawIndirect(buffer0048, 0);
    render_pass_encoder0032.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    device00.queue.submit([]);
}