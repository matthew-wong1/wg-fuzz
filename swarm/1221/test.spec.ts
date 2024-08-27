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
    const array0 = new Float32Array([-0.5, 0.5, -0.5, 0.75, -1.0, -0.25, 0.5, -1.0, -0.25, 0.75, 0.0, -1.0, 0.5, 0.75, -0.75, 1.0, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, -0.5, 0.0, 0.0, -0.75, 0.0, -0.5, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.25, -1.0, -0.75, 0.0, -1.0, -1.0, 0.5, 0.0, 0.5, -0.25, -0.25, -0.5, 1.0, -0.5, -1.0, 0.25, -0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 1.0, 0.0, -0.25, 0.75, -0.5, 0.0, 0.25, -0.5, 0.25, 1.0, -1.0, 0.5, 0.25, -0.5, -0.5, 0.75, 1.0, 0.0, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, 0.75, -0.25, -1.0, 0.5, -0.25, -0.25, 0.75, 0.5, -0.25, 1.0, 0.0, -0.25, 0.0, ]);
    const array1 = new Float32Array([0.0, 1.0, 0.25, -1.0, 1.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 1.0, -0.75, 0.75, -0.5, 0.75, -0.25, -1.0, 0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 0.5, 1.0, -0.5, 0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 1.0, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.5, 0.25, 1.0, 0.5, 1.0, 0.25, 0.75, 0.25, 0.75, 0.5, 0.75, 0.75, 0.25, 0.5, -0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.5, 0.75, 0.5, 0.5, -1.0, 0.5, -1.0, 0.0, 0.5, 0.25, -0.75, 0.5, 0.25, 0.25, 0.75, 1.0, -0.25, -0.25, 0.25, 1.0, 0.25, 0.0, 1.0, -0.5, 1.0, -0.5, -0.25, -0.25, 0.25, -1.0, -0.75, 0.0, ]);
    const array2 = new Float32Array([-1.0, 0.75, -0.5, -0.25, 0.75, -0.5, -0.25, -0.25, -1.0, 0.5, -0.25, 0.0, -1.0, 0.5, -0.75, 0.0, -0.75, 1.0, 0.75, 1.0, -0.25, 0.0, 0.0, -0.75, -0.5, 0.25, 0.25, 0.0, -1.0, 0.25, -1.0, 0.75, -0.5, 0.75, 0.0, -0.25, 1.0, 0.25, -0.25, -1.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.25, -0.75, 1.0, -0.25, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, -0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.75, -0.25, 1.0, 0.0, 0.5, -0.25, 0.5, 0.25, 0.25, -0.75, 1.0, 1.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.5, 0.5, 0.75, -0.25, 0.5, 0.25, 0.5, 1.0, 0.0, 0.25, 0.25, -1.0, -1.0, 0.75, -0.75, -0.75, ]);
    const array3 = new Float32Array([-0.75, -0.5, -1.0, 1.0, 0.25, -1.0, -0.25, -0.5, -0.5, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, -0.5, -0.5, 0.0, 0.0, -0.25, 0.5, -0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 1.0, 0.0, -0.5, 0.25, 0.0, 0.0, 0.5, -0.25, 0.0, -0.75, -1.0, 0.0, -1.0, 0.0, -0.75, -0.25, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 0.25, 0.75, -1.0, 0.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 1.0, 1.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.75, 0.25, -0.75, 0.0, 1.0, -0.75, 1.0, -0.5, -0.75, -1.0, -0.25, -0.5, -0.75, 0.5, -1.0, 0.5, 0.0, 0.0, -0.25, -0.25, 0.25, 0.5, -0.75, -0.5, 0.25, 0.0, -0.75, 0.0, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture101.destroy();
    const array4 = new Float32Array([-0.75, -1.0, -0.25, 1.0, 0.75, 0.5, -0.75, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, 0.5, 0.25, -0.5, 0.5, -0.5, 0.75, 0.0, 0.75, -0.5, -1.0, -0.75, -0.75, 0.5, 1.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.75, 0.5, -0.5, -0.5, 0.0, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.5, 0.5, -1.0, 0.0, 0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -0.25, -0.25, -1.0, 0.75, -1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -1.0, -0.25, 0.0, 0.5, 0.5, -0.5, -1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.0, 0.5, -0.75, 0.25, 0.5, 1.0, 0.75, -0.75, -1.0, -0.75, 0.5, 0.5, -0.25, 0.25, -0.75, 0.5, -0.75, -0.75, ]);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.executeBundles([])
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    device10.pushErrorScope("validation");
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_buffer400 = command_encoder400.finish();
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1000.popDebugGroup();
    device30.pushErrorScope("out-of-memory");
    device20.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    texture100.destroy();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8sint",
        dimension: "2d"
    });
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, ])
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1000.setStencilReference(1);
    
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
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    texture102.destroy();
    
    texture100.destroy();
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer100.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    const array5 = new Float32Array([0.25, -1.0, 0.25, 0.75, -0.5, 0.75, -0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.25, -1.0, -0.75, 0.0, 0.75, 1.0, 0.0, -0.25, -0.25, -0.5, -0.25, -0.5, -1.0, -0.75, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, 0.75, 0.0, 1.0, -0.25, 0.25, -0.25, -0.75, -0.25, -0.25, -0.75, 0.75, 0.5, 0.0, -1.0, 0.5, 0.25, 0.5, -0.5, -0.25, 0.25, 0.75, -0.75, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, -1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, 0.25, 0.25, 0.0, 0.25, 0.0, -0.75, 0.0, -0.75, 1.0, -0.75, 1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -0.75, 0.5, -1.0, 0.0, 1.0, 1.0, ]);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.75, -0.25, -0.5, -1.0, -0.25, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, -0.5, 0.0, -0.5, -0.5, -0.75, 1.0, 0.75, -1.0, 0.0, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, 0.0, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, -0.25, -0.75, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.25, -0.75, -0.75, 0.25, 0.0, -0.5, -0.5, 0.75, 0.75, -0.75, -0.25, -0.25, -0.25, -0.5, 0.25, -0.25, 0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, 0.5, 0.25, 1.0, 0.25, 0.75, 0.0, -1.0, -0.25, -1.0, 0.0, 1.0, 0.25, 0.25, -0.5, 0.0, 0.5, 0.0, 0.0, -1.0, 0.75, 1.0, -0.25, 0.25, -0.5, 0.25, -1.0, ]);
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture200.destroy();
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    
    
    const array7 = new Float32Array([0.25, -0.75, -0.5, -0.5, 0.5, -0.25, 0.25, -0.5, -0.25, 0.25, -0.25, 0.0, 0.5, 0.0, 0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 1.0, -0.25, 1.0, 0.75, 1.0, -0.25, 1.0, 1.0, -0.5, 1.0, -0.75, -0.75, -0.5, -0.75, -0.5, 1.0, 1.0, 1.0, -0.25, 0.0, 0.0, 0.0, 0.75, 1.0, -0.5, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.25, 1.0, -0.75, 0.5, 0.25, 1.0, 0.0, 0.75, 0.0, 0.25, -0.75, -0.75, -1.0, -0.75, -1.0, 0.0, 0.75, 0.5, 0.5, -0.5, 0.75, 0.5, -1.0, -0.25, 0.0, 0.75, -0.25, 0.5, -1.0, 1.0, -1.0, 0.25, 1.0, 0.75, -1.0, -0.5, 0.0, 0.75, 0.5, 0.75, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, ]);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    texture104.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    texture105.destroy();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_buffer401 = command_encoder401.finish();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder402.insertDebugMarker("mymarker");
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder1001.executeBundles([])
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer300.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.pushErrorScope("validation");
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder402.clearBuffer(buffer402);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_buffer403 = command_encoder403.finish();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    render_pass_encoder1000.insertDebugMarker("marker");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4011,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture104.destroy();
    render_bundle_encoder101.popDebugGroup();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    texture000.destroy();
    
    
    buffer401.destroy()
    
    
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder400.popDebugGroup();
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4020.insertDebugMarker("marker");
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer200.destroy()
    render_pass_encoder4040.executeBundles([render_bundle_encoder400, ])
    render_pass_encoder4020.executeBundles([])
    command_encoder404.clearBuffer(buffer402);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder301.copyBufferToBuffer(
        buffer301,
        0,
        buffer300,
        0,
        400
    );
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder404.copyBufferToBuffer(
        buffer403,
        0,
        buffer402,
        0,
        400
    );
    render_pass_encoder1001.executeBundles([render_bundle_encoder100, render_bundle_encoder101, ])
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    render_pass_encoder1001.executeBundles([])
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer101
        },
        {
            texture: texture105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    texture106.destroy();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    buffer101.destroy()
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4041.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_pass_encoder4040.executeBundles([])
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture103.destroy();
    buffer403.destroy()
    render_pass_encoder4020.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.submit([command_buffer300, ]);
    
    texture401.destroy();
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    render_pass_encoder4020.insertDebugMarker("marker");
    device40.queue.submit([command_buffer401, ]);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    render_pass_encoder4041.insertDebugMarker("marker");
    texture400.destroy();
    const command_buffer304 = command_encoder304.finish();
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer404.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([-0.25, -0.5, 0.75, -1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.25, -1.0, -1.0, 0.75, -1.0, -1.0, 0.0, -1.0, 0.5, 0.5, 1.0, 0.75, 0.25, 0.75, -0.25, 0.5, -0.5, 0.25, 0.75, 1.0, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.5, -0.25, 0.75, 0.75, -0.75, -0.25, -0.25, 0.75, 0.0, 0.5, 0.75, -0.25, 0.5, -0.75, -0.75, 0.25, -0.75, -0.75, 0.0, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, -0.25, 0.25, 0.0, -1.0, -1.0, 1.0, 0.0, -0.25, 1.0, -0.5, 0.75, -0.5, 0.75, -0.5, 0.25, 0.25, 0.25, 0.25, 0.25, -0.25, -0.75, 0.0, 0.75, 0.75, 1.0, 1.0, -0.75, 0.75, 0.5, 0.75, 1.0, -0.25, -0.75, 0.25, 0.25, 0.25, -1.0, -1.0, 0.25, 0.75, ]);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer402.destroy()
    buffer102.destroy()
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const command_buffer303 = command_encoder303.finish();
    
    render_pass_encoder4041.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder4041.setStencilReference(1);
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4040.executeBundles([])
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder4041.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    command_encoder402.insertDebugMarker("mymarker");
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4041.executeBundles([])
    render_pass_encoder1000.executeBundles([render_bundle_encoder101, ])
    render_pass_encoder4041.insertDebugMarker("marker");
    
    render_pass_encoder4020.executeBundles([])
    render_pass_encoder4020.executeBundles([render_bundle_encoder401, ])
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture600.destroy();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder402.clearBuffer(buffer403);
    render_pass_encoder4041.insertDebugMarker("marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder101.popDebugGroup();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4041.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    command_encoder402.clearBuffer(buffer402);
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_pass_encoder4041.insertDebugMarker("marker");
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4041.executeBundles([])
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4041.setStencilReference(1);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture401.destroy();
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    buffer405.destroy()
    
    render_pass_encoder1001.executeBundles([])
    const command_buffer101 = command_encoder101.finish();
    
    render_pass_encoder4021.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4041.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_pass_encoder4041.executeBundles([])
    render_pass_encoder4041.executeBundles([])
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array9 = new Float32Array([-0.75, 0.75, 0.0, -0.75, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, -0.5, -0.25, -1.0, 0.5, 0.0, -0.75, 0.25, 0.0, 0.5, 0.25, 0.5, 0.25, -1.0, 0.75, -0.75, -0.25, -1.0, 0.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.25, 0.25, -0.25, -0.25, -0.25, -0.25, 0.25, 1.0, -0.75, -0.25, 1.0, 1.0, 0.75, 0.5, 0.25, -0.75, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -0.75, 0.75, -1.0, -0.25, 1.0, 0.25, 1.0, 0.75, -1.0, -0.5, -0.5, 0.25, 0.75, -0.25, -0.25, 1.0, -0.25, -1.0, 1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -0.5, -0.75, -0.5, 1.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.25, 0.0, 0.75, -1.0, 0.0, 1.0, -1.0, 1.0, -0.25, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder4021.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const array10 = new Float32Array([-0.5, 0.0, -0.5, 1.0, 0.5, 0.25, 0.5, 0.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, -0.5, 0.25, -0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -0.25, 0.5, 0.25, 0.75, -0.5, -0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -0.5, 0.5, 0.5, 0.0, -0.5, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.25, 0.0, -1.0, -0.25, 0.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.5, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, 0.5, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, -0.75, -1.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array11 = new Float32Array([0.25, 0.0, -0.5, 1.0, 0.25, -0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, -0.25, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, -0.25, -0.25, 0.5, -0.5, 0.75, 0.25, 0.25, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, 1.0, 0.0, -1.0, 0.25, 0.75, 1.0, 1.0, -0.25, -0.75, -0.5, 0.75, 0.0, 1.0, -0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 0.25, 0.5, 0.5, 0.25, 0.75, 0.5, 0.5, -1.0, -0.75, -0.75, 0.75, -1.0, 1.0, 0.75, -0.5, 0.0, 0.5, 0.75, -0.75, 0.5, -0.75, -0.25, -1.0, 0.0, -0.25, ]);
    render_pass_encoder4041.insertDebugMarker("marker");
    render_pass_encoder4040.executeBundles([])
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    render_pass_encoder4041.executeBundles([])
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer301.destroy()
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    device50.queue.submit([]);
    buffer103.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer400.destroy()
    render_pass_encoder4040.executeBundles([])
    texture403.destroy();
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder600.popDebugGroup();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    buffer500.destroy()
    
    device40.queue.submit([command_buffer400, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    texture601.destroy();
    render_pass_encoder4040.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4041.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer501.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder4021.pushDebugGroup("group_marker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    texture500.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    device60.pushErrorScope("out-of-memory");
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1001.popDebugGroup();
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder1011.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const command_buffer502 = command_encoder502.finish();
    
    render_pass_encoder4041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    buffer600.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture105.destroy();
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture402.destroy();
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_bundle_encoder602.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    buffer100.destroy()
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1020.executeBundles([])
    command_encoder600.clearBuffer(buffer601);
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer100 = command_encoder100.finish();
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout404]
    });
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    render_pass_encoder4041.executeBundles([])
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setStencilReference(1);
    command_encoder404.copyTextureToBuffer(
        {
            texture: texture402
        },
        {
            buffer: buffer400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    render_pass_encoder1011.insertDebugMarker("marker");
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4050 = command_encoder405.beginRenderPass({
        label: "render_pass_encoder4050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4012,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.pushErrorScope("internal");
    render_pass_encoder4041.pushDebugGroup("group_marker");
    render_pass_encoder4050.pushDebugGroup("group_marker");
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer404
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder600.popDebugGroup();
    render_pass_encoder1011.executeBundles([render_bundle_encoder101, ])
    const render_pass_encoder4060 = command_encoder406.beginRenderPass({
        label: "render_pass_encoder4060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_pass_encoder4020.executeBundles([render_bundle_encoder401, ])
    render_pass_encoder4060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer601.destroy()
    render_pass_encoder4040.executeBundles([])
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder4050.popDebugGroup();
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4041.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder1011.executeBundles([])
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1010.popDebugGroup();
    const command_buffer503 = command_encoder503.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.popDebugGroup();
    device50.queue.submit([]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder4020.popDebugGroup();
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4050.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder6000.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder1011.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    const command_buffer405 = command_encoder405.finish();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer403, command_buffer405, ]);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder4050.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1000.popDebugGroup();
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    render_pass_encoder1001.popDebugGroup();
    device50.queue.submit([command_buffer503, ]);
    device60.queue.submit([]);
    device10.queue.submit([command_buffer103, ]);
    const command_buffer404 = command_encoder404.finish();
    device60.queue.submit([]);
    render_pass_encoder1011.popDebugGroup();
    device60.queue.submit([]);
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder4021.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder6000.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    device40.queue.submit([]);
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4020.popDebugGroup();
    device60.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device40.queue.submit([command_buffer405, ]);
    device60.queue.submit([]);
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer404, ]);
    const command_buffer406 = command_encoder406.finish();
    render_pass_encoder1020.popDebugGroup();
    device40.queue.submit([command_buffer406, ]);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([command_buffer502, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder4040.popDebugGroup();
}