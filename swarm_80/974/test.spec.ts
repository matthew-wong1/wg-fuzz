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
        powerPreference: undefined
    });
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array0 = new Float32Array([-0.75, 0.25, 1.0, 0.0, 0.75, 0.25, 0.5, -0.5, 1.0, -0.25, 0.75, 0.5, -0.5, 0.0, 1.0, -0.5, -0.75, 1.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.25, 0.75, 0.5, 0.75, -0.5, 0.25, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.0, 0.75, -0.5, -0.25, 0.0, 0.5, -1.0, 0.75, 0.5, -0.25, 0.0, -0.25, 0.25, -0.25, -0.5, -0.5, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 0.25, 0.5, 0.5, -0.5, 0.5, 0.5, -1.0, -1.0, -1.0, -0.5, -0.5, -0.5, 0.5, -1.0, 0.75, 0.5, 0.0, 0.75, -0.25, 0.0, 0.0, 0.0, -0.5, 0.25, 0.5, -1.0, -1.0, -1.0, 0.5, -0.5, 0.0, -0.25, 0.0, -0.5, 0.0, 0.5, -1.0, -1.0, 0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    query000.destroy()
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    query200.destroy()
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([1.0, 0.0, 0.0, -0.75, -0.5, 0.75, 0.25, 0.0, -1.0, -0.75, 1.0, 0.75, 1.0, 0.75, -0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.5, 1.0, 1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 0.5, -0.25, 0.0, -1.0, 0.25, -0.5, 0.0, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, -0.5, -0.75, 0.25, 0.0, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, 1.0, -0.25, 0.5, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, 1.0, 0.0, 0.25, 0.75, -1.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.0, 0.0, -0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 0.0, 0.25, -0.75, -0.25, 0.75, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
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
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array2 = new Float32Array([0.25, 0.75, -0.25, 0.0, -1.0, 0.0, 0.25, -0.75, 0.5, -1.0, 0.25, -0.5, 0.25, -0.25, 0.25, 0.5, 0.25, 0.75, -1.0, 0.5, -0.25, -0.5, -0.25, -1.0, 0.25, 0.75, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 0.75, 0.25, -0.5, 0.5, -0.5, 0.0, -0.25, 0.25, 0.0, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 0.25, -1.0, -0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, 0.5, -0.25, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, 1.0, 0.0, 0.5, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.5, -1.0, -1.0, -0.25, -0.5, ]);
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
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder200.popDebugGroup();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array3 = new Float32Array([0.25, 0.5, -0.5, 0.75, 0.25, -0.5, 0.25, 0.0, 0.5, 0.25, 0.25, 0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, -1.0, -0.75, -1.0, 0.75, 0.25, 0.75, 0.0, 0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, -1.0, -1.0, 1.0, -0.75, -0.75, -0.5, 0.0, 0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.5, 0.0, -1.0, -0.5, -0.5, 0.25, 0.5, 0.5, 0.75, 1.0, 0.5, 1.0, 1.0, -0.75, 0.25, 0.75, 0.25, 1.0, 0.5, -0.5, 0.0, 0.25, 0.75, 0.0, -0.25, 0.25, -0.25, 0.0, 0.25, 0.5, -1.0, -0.25, 0.5, 0.0, 0.5, 0.5, 0.0, 0.0, -0.25, -0.75, -0.5, 0.0, 0.0, -1.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.25, -0.75, 1.0, ]);
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    device20.destroy();
    
    
    query000.destroy()
    const array4 = new Float32Array([0.25, -0.25, -0.5, -0.25, -1.0, 0.25, -0.75, 0.5, 0.75, 0.25, 0.0, 0.0, 0.0, -1.0, 0.25, 0.75, -0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.75, 0.75, -0.5, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, 0.0, -1.0, -0.75, 0.5, 0.0, -1.0, 0.75, 1.0, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, -0.5, -1.0, 0.0, 0.25, -0.25, -0.25, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, 0.0, -0.25, 0.25, -0.5, -0.75, -0.5, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, 1.0, -0.25, -0.5, -0.75, -0.75, -0.25, 0.25, -0.25, -0.25, 0.25, -0.75, 1.0, -0.25, -0.25, -1.0, -0.5, -0.75, -0.5, 0.5, -0.25, 1.0, 0.75, ]);
    query000.destroy()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    texture100.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.5, 0.75, 0.75, -1.0, 0.5, -0.25, 0.75, -0.75, -0.5, -0.75, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, 0.75, 0.25, -0.75, -0.5, 0.25, -0.75, 0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, -0.75, 0.5, -0.5, -0.75, -0.5, 0.5, -1.0, 0.5, -0.5, 0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.0, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, -1.0, 1.0, 0.75, 0.0, -0.25, 0.5, -0.5, 0.5, 1.0, -0.75, -0.25, -0.25, -0.25, -1.0, 0.75, 0.0, -0.75, -1.0, 0.75, -1.0, 1.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.25, -1.0, 1.0, 1.0, -1.0, -1.0, -0.5, 0.5, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    texture300.destroy();
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
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
    query100.destroy()
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.destroy();
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    texture102.destroy();
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture104.destroy();
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    query100.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder101.popDebugGroup();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    texture101.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const array6 = new Float32Array([-0.5, -0.25, -0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, -0.75, 0.0, 0.5, 0.75, 0.0, 0.5, -0.5, -0.75, 0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -0.25, -0.75, -0.75, -0.75, 0.75, 1.0, 0.0, 0.75, 0.75, -1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -1.0, -0.5, 1.0, -0.25, -0.5, -1.0, -0.5, 0.5, -0.75, 0.5, -0.5, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, 1.0, -0.5, 0.25, -0.5, -0.25, 0.25, 0.25, -0.5, -0.25, 0.25, -0.25, -1.0, -0.5, -1.0, -0.25, -1.0, 0.0, 0.0, 0.25, -0.75, -1.0, -0.5, -0.25, -0.75, -0.25, -1.0, -0.25, 0.5, -0.5, 1.0, -0.25, 0.75, 0.0, 1.0, -1.0, 0.5, -0.25, -1.0, -1.0, -1.0, -0.5, -0.25, ]);
    query100.destroy()
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture105.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query100.destroy()
    
    query601.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    device60.destroy();
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const array7 = new Float32Array([0.0, -1.0, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, 0.75, 1.0, 0.5, 0.25, 0.5, 0.75, 0.75, 0.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, -0.5, 1.0, -0.25, 0.0, 0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 0.75, -0.75, 1.0, -0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, 0.5, 0.25, -0.25, 0.0, -0.5, 0.5, 0.5, -1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, 0.75, 1.0, -0.5, -1.0, 0.0, -0.25, -0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -1.0, 1.0, -0.5, -0.75, -1.0, 0.0, -0.25, 0.0, -0.75, 1.0, 0.0, 0.75, 0.75, -0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.5, 0.25, 0.75, -0.5, -0.25, 0.75, ]);
    query101.destroy()
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    texture106.destroy();
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    query100.destroy()
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    texture107.destroy();
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    
    
    
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    device90.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array8 = new Float32Array([1.0, -0.25, -0.75, 1.0, 0.0, -0.75, 0.0, 0.0, 0.5, 0.75, -1.0, 0.75, 1.0, -1.0, 0.0, 0.5, -0.25, -0.75, -0.25, 0.25, 0.5, -1.0, -1.0, 0.75, 1.0, -0.75, -0.75, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.0, -0.75, 1.0, -0.75, 0.25, -0.75, 1.0, 0.0, -0.5, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, 0.25, 0.5, -0.75, 0.5, 1.0, -1.0, 0.5, 1.0, -1.0, 0.5, 0.0, 0.0, 1.0, -1.0, -0.5, 0.75, -1.0, -0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -1.0, -0.75, 0.25, 1.0, 0.75, 0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -0.75, -0.25, -0.5, -0.75, ]);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    query700.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
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
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder100.popDebugGroup();
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    query700.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    query701.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture108.destroy();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32sint",
        dimension: "2d"
    });
    texture500.destroy();
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    query700.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    const array9 = new Float32Array([0.75, -0.5, 0.75, -0.5, -0.75, 1.0, -0.5, -0.5, 0.0, -0.5, 0.25, 0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 1.0, 0.0, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 0.25, -0.25, -0.75, -0.75, -1.0, -1.0, 0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.25, -0.25, -0.75, 0.5, 0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 0.75, -0.75, 1.0, 0.0, 0.25, 0.75, -0.25, -0.25, -1.0, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, -1.0, 0.25, 0.75, 0.5, -0.75, 0.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.0, -1.0, 0.25, 0.25, -0.25, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, 1.0, 0.5, -0.25, -0.25, 1.0, -1.0, 0.75, ]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    query100.destroy()
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    query701.destroy()
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    device110.pushErrorScope("validation");
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    render_bundle_encoder100.popDebugGroup();
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    query102.destroy()
    query400.destroy()
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    texture400.destroy();
    query701.destroy()
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    query701.destroy()
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    query400.destroy()
    
    
    
    
    query701.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
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
}