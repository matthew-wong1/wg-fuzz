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
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.5, 0.0, 0.5, 1.0, -0.75, -0.5, -0.75, 0.25, 0.25, -1.0, 0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.0, 0.0, 0.0, -1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.25, 0.75, -0.75, -0.25, 0.75, 0.0, -0.5, -1.0, -0.75, 0.75, 0.0, 1.0, -0.5, 0.5, 0.25, 0.75, -0.25, -0.25, 1.0, 0.25, 0.0, -0.25, -1.0, -0.5, -0.25, -1.0, 0.0, -0.75, 1.0, -0.75, 0.25, -0.5, 0.0, 0.75, 0.75, 0.0, -0.5, 0.75, -0.25, 0.75, 0.5, -0.25, 0.25, -0.5, 0.25, 0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.5, 0.25, 0.75, -1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.75, 0.75, 0.75, 0.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 0.5, -0.75, 0.25, ]);
    const array1 = new Float32Array([-0.25, -0.75, 0.25, -0.5, -0.75, 0.25, 0.75, 0.25, -0.75, -0.5, -0.25, 0.5, -0.75, 0.75, 0.75, -0.5, -0.25, -0.5, 0.75, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.25, -0.5, -0.5, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.5, -0.25, -1.0, -0.75, -0.75, -0.5, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.0, 1.0, -1.0, 1.0, -1.0, 1.0, 0.5, 0.75, 0.25, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.75, -1.0, -0.75, 1.0, 0.0, 0.25, -0.25, 1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer100 = command_encoder100.finish();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const array2 = new Float32Array([1.0, -0.75, -1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 0.5, -0.25, -0.75, 0.25, 0.25, -0.5, -0.25, -0.75, -0.25, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, 0.25, -0.5, 0.25, 0.75, -0.5, 0.0, -1.0, 0.75, 0.75, -0.25, -1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.75, -0.25, 0.5, -0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, -0.25, 1.0, -1.0, 0.5, -0.5, -1.0, 0.75, 0.25, -0.5, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.0, 0.75, 0.25, -0.75, -0.75, 1.0, 1.0, 0.5, 0.25, -0.25, 0.25, 0.25, -0.5, -0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 0.75, -0.5, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    query100.destroy()
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
    
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    const command_buffer000 = command_encoder000.finish();
    command_encoder002.insertDebugMarker("mymarker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    query100.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    buffer000.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query000.destroy()
    const command_buffer301 = command_encoder301.finish();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
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
    device00.pushErrorScope("out-of-memory");
    query101.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_buffer002 = command_encoder002.finish();
    command_encoder302.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture301.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query100.destroy()
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3020.executeBundles([])
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
    query101.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3020.executeBundles([])
    query002.destroy()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3020.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    query100.destroy()
    const array3 = new Float32Array([0.25, 0.5, -0.25, -0.75, 0.0, 0.25, -0.75, 1.0, -0.75, -0.25, 0.75, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -1.0, 0.75, -1.0, -1.0, -0.5, 0.75, 1.0, 0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 0.75, -0.75, 0.75, -0.5, -1.0, 0.0, -0.75, 0.5, 0.0, 0.75, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, -0.25, 0.5, -0.5, 0.75, -0.75, -0.75, 0.75, -1.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.0, 0.25, -0.5, -0.5, 0.5, -1.0, -0.75, -0.75, -0.75, 1.0, 0.75, 0.5, 0.75, 0.75, -0.75, -0.5, 0.25, 1.0, -1.0, -0.25, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, ]);
    device10.queue.submit([command_buffer100, ]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3020.popDebugGroup();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array4 = new Float32Array([1.0, -0.75, 0.5, 0.0, -0.5, 0.25, -0.75, -0.25, -1.0, 0.25, 0.5, 0.0, 0.0, -0.75, 1.0, 1.0, 1.0, 0.0, 0.25, 0.5, -0.25, -1.0, -1.0, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, -0.75, 0.75, -1.0, 1.0, -0.75, 0.25, 1.0, -0.75, 0.75, -0.25, -0.75, 0.75, 1.0, 1.0, -0.75, 0.0, 1.0, -0.75, 0.0, 0.75, -0.25, 1.0, -0.5, 0.25, -1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, 0.25, 0.5, -0.25, 0.25, 0.75, -0.75, 0.5, 1.0, 0.0, 1.0, -0.75, -0.75, 0.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, -0.25, 0.5, 0.5, 0.0, -0.5, 1.0, 0.5, 0.25, 0.5, 0.5, 0.25, 0.0, 0.75, 0.75, -1.0, ]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.destroy();
    render_pass_encoder3020.popDebugGroup();
    const array5 = new Float32Array([-1.0, 0.25, 0.5, -1.0, -0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.25, -1.0, 0.5, 0.0, 0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -1.0, -1.0, 1.0, 0.75, 0.0, 0.25, 0.25, -1.0, 0.0, 0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.0, 1.0, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, -0.75, 0.75, 0.5, -0.25, 0.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.5, -0.75, 0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -1.0, -0.75, 0.75, 0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, -0.25, -0.75, 0.25, 0.5, -1.0, -1.0, -1.0, ]);
    buffer001.destroy()
    render_pass_encoder3020.insertDebugMarker("marker");
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3020.executeBundles([])
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3020.executeBundles([])
    
    render_pass_encoder3020.insertDebugMarker("marker");
    query003.destroy()
    command_encoder003.pushDebugGroup("mygroupmarker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer300.destroy()
    device30.queue.submit([command_buffer301, ]);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder3020.executeBundles([])
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    query002.destroy()
    query004.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_buffer004 = command_encoder004.finish();
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3020.setStencilReference(1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("internal");
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query001.destroy()
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_buffer200 = command_encoder200.finish();
    buffer500.destroy()
    const array6 = new Float32Array([-1.0, -0.5, -0.25, 1.0, 0.5, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, 0.75, 0.25, -1.0, 0.5, -1.0, 0.75, 1.0, -0.25, 1.0, 0.5, -0.25, 0.0, 0.5, -0.5, -0.5, -0.25, 0.5, 0.0, -0.25, -0.5, 0.0, 0.25, -0.25, 0.0, 0.5, -0.5, -1.0, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -0.25, 0.0, 0.25, 0.0, 0.0, 0.75, 1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 1.0, -1.0, 0.0, -0.75, 0.5, -0.25, -0.5, -0.25, 0.25, 0.75, 0.25, -0.75, -0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.5, 0.75, 0.0, 0.0, 1.0, -0.25, -0.25, 1.0, -0.25, -0.75, -0.75, 0.25, ]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    query003.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    buffer003.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    texture302.destroy();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    query004.destroy()
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3020.executeBundles([])
    device20.pushErrorScope("internal");
    query300.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const array7 = new Float32Array([0.0, -0.75, 0.5, -0.75, -0.5, 0.5, 1.0, 0.0, -0.5, 0.75, 0.75, -0.25, -0.25, 0.0, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, -0.5, 0.75, -0.75, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, -0.5, 0.5, 1.0, 0.0, 0.0, 1.0, 1.0, 0.25, -0.5, 0.0, -1.0, -0.5, 0.75, -1.0, -0.5, -1.0, 0.75, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, 1.0, 0.25, 0.5, -0.75, 0.25, -0.75, 0.5, -0.25, -1.0, -1.0, 0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, 0.75, 0.0, -1.0, 0.25, -0.5, -1.0, -0.25, -0.5, -0.25, 0.5, 0.0, -0.5, ]);
    texture501.destroy();
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.submit([command_buffer200, ]);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    
    query303.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder202.insertDebugMarker("mymarker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    query005.destroy()
    texture300.destroy();
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query005.destroy()
    query000.destroy()
    const command_buffer201 = command_encoder201.finish();
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    buffer301.destroy()
    query303.destroy()
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query302.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture700 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder3020.executeBundles([])
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.queue.writeTexture({ texture: texture700 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: query003
    });
    texture303.destroy();
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query302.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer004.destroy()
    query001.destroy()
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3020.executeBundles([])
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    query006.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    query300.destroy()
    query001.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    compute_pass_encoder5000.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.popDebugGroup()
    query304.destroy()
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query304
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer002.destroy()
    compute_pass_encoder5000.insertDebugMarker("marker")
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    texture502.destroy();
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    texture000.destroy();
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder3030.setStencilReference(1);
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.popDebugGroup();
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
    command_encoder204.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    buffer200.destroy()
    
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_pass_encoder0070.executeBundles([])
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    device60.pushErrorScope("validation");
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    query302.destroy()
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder0070.insertDebugMarker("marker");
    query000.destroy()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query304.destroy()
    compute_pass_encoder0010.popDebugGroup()
    query004.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    query501.destroy()
    command_encoder400.pushDebugGroup("mygroupmarker")
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query006.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout304]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    buffer202.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    texture003.destroy();
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder3030.pushDebugGroup("group_marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    texture001.destroy();
    
    render_pass_encoder0060.setStencilReference(1);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder3020.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    render_pass_encoder3030.executeBundles([])
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    command_encoder204.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2030.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer201, command_buffer204, ]);
}