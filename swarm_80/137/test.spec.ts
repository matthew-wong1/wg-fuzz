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
    const array0 = new Float32Array([-1.0, 0.75, -0.25, -0.25, -0.5, 0.75, 0.0, 0.75, -0.75, 0.5, 1.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 0.25, -1.0, 1.0, -0.75, 1.0, 0.25, -0.5, 0.25, -0.5, 1.0, 0.25, 1.0, 0.5, 0.0, -0.25, 0.5, -1.0, -1.0, -1.0, 0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.75, -0.25, 0.0, -0.25, 0.0, 0.75, 0.75, 0.25, 0.25, -0.25, 0.5, -0.5, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, -0.75, 0.25, -0.75, -0.75, -0.5, 0.75, 0.5, 0.0, 0.25, 0.0, -0.75, 0.5, 0.25, 1.0, 1.0, -0.25, 0.25, 1.0, 0.25, -0.75, 1.0, 0.75, -0.5, -0.25, 0.0, -0.5, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, 0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const array1 = new Float32Array([0.25, -0.75, 1.0, 0.75, 0.25, -0.75, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, -1.0, 0.25, -0.75, 0.75, 0.0, 0.75, 0.5, -0.75, 1.0, -1.0, 0.25, -1.0, 0.75, -0.75, 1.0, 1.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, 0.0, 0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 1.0, -0.75, 0.25, 1.0, 0.25, -0.75, -0.5, 0.5, 0.75, 0.0, 0.0, -0.5, 0.5, 0.75, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, 0.0, 0.0, 0.5, -0.25, -0.75, 0.0, 0.25, 0.25, -0.25, 0.25, -0.5, 0.25, 0.25, 0.75, 0.5, -0.75, 0.5, -0.75, 1.0, -0.25, 0.5, -0.25, -0.5, 0.75, 0.75, 0.0, -0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 0.75, -0.5, -0.75, -0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query000.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device10.destroy();
    
    device40.pushErrorScope("internal");
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device50.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const array2 = new Float32Array([-0.75, -0.75, 0.25, -0.5, 0.25, -0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -1.0, 0.75, -0.25, 1.0, -0.25, 0.0, -1.0, 0.25, -0.75, -0.75, -0.75, 1.0, 0.0, -0.5, 0.5, 0.0, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, -0.5, -0.25, 0.0, -1.0, -0.25, 0.5, 0.75, 1.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.25, 0.25, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.5, 0.0, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -1.0, -0.25, -0.75, -0.5, -0.5, 0.5, 0.25, -0.25, -1.0, -0.25, 0.25, -1.0, -1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 0.75, 0.0, -0.5, -0.25, 0.5, 0.0, -1.0, ]);
    command_encoder400.copyBufferToTexture(
        {
            buffer: buffer400
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
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_buffer400 = command_encoder400.finish();
    buffer401.destroy()
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    query000.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder402.copyBufferToTexture(
        {
            buffer: buffer400
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
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    device00.pushErrorScope("validation");
    
    
    query001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    buffer002.destroy()
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query400.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
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
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer400
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    
    query401.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.clearBuffer(buffer000);
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
    query301.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder402.popDebugGroup()
    
    buffer400.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer001.destroy()
    
    query300.destroy()
    query003.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    buffer000.destroy()
    buffer300.destroy()
    command_encoder001.popDebugGroup()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    
    const array3 = new Float32Array([-0.5, -0.25, 0.75, -1.0, 0.0, 0.75, 0.5, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 1.0, -0.75, 0.75, 1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.5, 1.0, -1.0, -0.25, -0.75, -0.75, 0.75, -0.25, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.5, 0.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.5, -0.5, 1.0, 0.0, 0.75, 0.75, -1.0, 0.75, 0.25, -0.25, -0.75, 0.25, -1.0, -0.5, -0.5, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.5, 0.75, -0.25, 1.0, 1.0, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, 0.5, -0.5, 0.0, 1.0, 0.25, 0.25, 0.5, -0.5, 0.75, 0.75, -0.25, -0.75, -0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.0, -0.75, 0.0, -1.0, ]);
    query301.destroy()
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    device00.pushErrorScope("internal");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_buffer001 = command_encoder001.finish();
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query402.destroy()
    query004.destroy()
    query402.destroy()
    
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    query000.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    query003.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    query402.destroy()
    query400.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    compute_pass_encoder4020.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer403, 0, array1, 0, array1.length);
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout402]
    });
    buffer402.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    query003.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query305.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    buffer403.destroy()
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0020.popDebugGroup()
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device40.pushErrorScope("validation");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    compute_pass_encoder4030.insertDebugMarker("marker")
    query301.destroy()
    query302.destroy()
    query001.destroy()
    
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder4020.insertDebugMarker("marker")
    device30.queue.submit([command_buffer300, ]);
    
    query303.destroy()
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    
    
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
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query305.destroy()
    
    
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
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout402]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    query005.destroy()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout005]
    });
    query003.destroy()
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query401.destroy()
    const array4 = new Float32Array([-0.25, -0.25, 0.75, -0.75, 0.25, 0.75, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, -0.75, 1.0, -0.25, 0.75, -0.75, -0.75, -0.25, -1.0, -0.5, 0.0, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, 0.5, -1.0, -0.5, -0.25, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, -1.0, 0.0, -1.0, 0.25, -0.5, 0.0, -0.25, -0.75, -0.75, -1.0, 0.25, -0.25, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, -1.0, -1.0, -0.5, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, -0.75, -0.75, -0.5, -0.75, 0.0, -1.0, -0.25, 0.5, -1.0, -0.75, -0.75, 0.5, -1.0, -0.75, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, ]);
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout403]
    });
    query001.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    compute_pass_encoder0000.popDebugGroup()
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query001.destroy()
    buffer404.destroy()
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout403]
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query304.destroy()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    device40.pushErrorScope("internal");
    
    
    query305.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query403.destroy()
    query306.destroy()
    
    query400.destroy()
    
    buffer004.destroy()
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer405.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout404]
    });
    query403.destroy()
    buffer003.destroy()
    
    query302.destroy()
    device30.pushErrorScope("out-of-memory");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query301.destroy()
    
    query302.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    const command_buffer401 = command_encoder401.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query306.destroy()
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query306.destroy()
    
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
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
    query305.destroy()
    
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder0000.popDebugGroup()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    query303.destroy()
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    compute_pass_encoder4030.insertDebugMarker("marker")
    const array5 = new Float32Array([-1.0, -0.75, -1.0, 0.5, -1.0, -1.0, -1.0, 0.0, 1.0, -0.75, -0.5, 0.25, -0.75, 0.5, 0.25, -1.0, 0.0, -0.25, -0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -0.75, -0.5, 1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 0.75, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -0.25, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.5, -1.0, -0.5, -0.5, 0.0, 0.75, -0.25, -0.25, 1.0, 0.75, -0.5, -0.5, 0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.75, 0.75, 0.0, -0.5, -0.75, -0.25, -1.0, -0.25, -1.0, 1.0, -1.0, 0.75, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, -0.5, -1.0, -0.25, 0.5, 1.0, -1.0, 0.0, -0.25, ]);
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    query304.destroy()
    command_encoder404.pushDebugGroup("mygroupmarker")
    command_encoder404.popDebugGroup()
    
    
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout006]
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer005.destroy()
    compute_pass_encoder0020.popDebugGroup()
    
    query000.destroy()
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder4030.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder3010.popDebugGroup()
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    
    query403.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer301.destroy()
    const array6 = new Float32Array([0.25, -1.0, 0.0, 0.5, -1.0, 1.0, 0.25, -1.0, 0.5, -0.75, 0.25, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, -0.25, 0.5, -0.5, 0.5, 0.25, -0.75, -1.0, 0.5, -1.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, 0.75, 0.25, 0.25, -1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.75, -0.5, -0.75, -0.5, -1.0, -0.75, 1.0, -0.5, -0.5, -0.5, -1.0, 0.5, 1.0, -0.5, -0.75, -0.25, -0.25, 0.25, 1.0, -0.75, 0.0, -0.5, -1.0, -1.0, -0.75, 0.0, -0.75, 0.5, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, 0.75, -0.75, 1.0, 1.0, -0.25, -0.5, 1.0, 0.0, 0.25, -0.5, 1.0, 0.25, 0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 1.0, -0.75, 0.75, -0.75, 0.5, -0.5, -0.75, ]);
    
    
    device00.pushErrorScope("validation");
    
    
    query303.destroy()
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder4030.popDebugGroup()
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    query000.destroy()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    query005.destroy()
    query305.destroy()
    
    
    query403.destroy()
    
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    device40.pushErrorScope("out-of-memory");
    query307.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    query400.destroy()
    const texture406 = device40.createTexture({
        label: "texture406",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    query306.destroy()
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    buffer406.destroy()
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    query403.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    query000.destroy()
    
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout005]
    });
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_buffer302 = command_encoder302.finish();
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    compute_pass_encoder0020.popDebugGroup()
    query404.destroy()
    
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout404]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder4030.popDebugGroup()
    command_encoder003.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder4020.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer404, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer001, command_buffer003, ]);
}