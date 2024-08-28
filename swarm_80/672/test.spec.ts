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
    const array0 = new Float32Array([-1.0, 0.75, -0.75, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 0.5, 0.75, 0.5, 1.0, -0.75, 1.0, 0.5, 0.25, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.0, 0.5, 0.5, -0.5, 1.0, -0.75, -0.5, 0.5, 0.5, -1.0, 0.0, -0.75, -0.5, 0.25, -1.0, 0.5, -1.0, -0.25, 0.5, -0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 0.5, 0.25, -0.5, -0.5, 0.0, -0.5, 0.25, -0.25, 1.0, 0.25, -0.25, 0.75, -0.5, 0.5, 0.25, -0.75, -0.75, -0.5, -1.0, 1.0, 0.75, 0.0, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, 0.0, -0.5, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -1.0, 0.75, 1.0, 0.25, -0.25, -0.25, 0.0, 1.0, ]);
    const array1 = new Float32Array([-0.5, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, 0.75, 0.25, 0.25, -0.75, -0.75, -0.75, -1.0, -1.0, 0.5, -0.25, -0.25, -1.0, 1.0, 0.0, 0.25, 0.5, 0.75, -0.75, 0.25, -0.75, -0.5, 0.0, -0.75, -0.75, 0.0, -0.25, 0.75, 0.5, -0.5, 0.0, -0.5, -0.75, 1.0, -0.75, -0.25, -0.5, 0.5, -0.25, 0.75, 0.0, 1.0, -0.75, -0.75, 0.5, -0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, 0.75, 0.5, 0.75, 0.75, -0.75, -0.5, 0.0, -0.5, 0.5, 0.25, -0.75, 0.5, 1.0, -0.75, 0.5, 0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 1.0, -1.0, -0.25, 0.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.25, 1.0, -0.5, -0.75, 0.0, -0.75, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    
    const array2 = new Float32Array([0.75, -0.5, 0.5, -0.25, -1.0, 0.0, -0.5, -0.75, -0.75, 0.0, 0.5, 0.25, -0.5, -0.25, 0.0, 0.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.5, 0.25, 0.5, 0.25, 0.25, 1.0, -0.5, -0.75, 0.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.5, -0.5, -0.25, 0.0, 0.25, -0.5, 0.0, -0.25, 0.5, -0.75, -1.0, 0.5, 0.5, -0.5, 0.25, -1.0, 1.0, 0.75, 1.0, 1.0, 0.75, -0.25, 1.0, 1.0, -0.25, 0.75, -1.0, -0.25, -1.0, -1.0, -1.0, 1.0, 0.25, 0.25, 0.5, 0.25, 0.0, -0.75, 0.75, -0.5, 1.0, -1.0, 0.25, -0.75, 0.5, -0.25, -0.25, 0.0, 0.75, 0.75, -0.75, 1.0, -0.5, 0.75, 1.0, 0.0, 0.25, 0.5, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, 0.5, ]);
    
    
    const array3 = new Float32Array([0.5, 0.0, 0.0, -0.25, 0.5, 0.0, -1.0, -0.75, -0.5, -0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.5, 0.75, -0.25, -0.25, 0.5, 0.0, -1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, -0.75, -1.0, 0.5, 0.25, 0.5, -0.5, -0.75, 0.5, -0.25, 0.25, -0.75, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, 0.25, 0.0, -0.25, -0.5, -0.75, -0.75, 0.75, 0.5, -0.25, 0.5, 0.75, 1.0, 0.75, 0.5, -0.25, -0.25, -0.75, -0.75, -0.5, 0.75, -0.75, 1.0, 0.0, 0.0, 0.25, -0.25, -1.0, -1.0, -0.25, -0.5, -1.0, 0.5, -1.0, -0.25, -0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 0.5, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("validation");
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
    
    
    
    const array4 = new Float32Array([-0.75, -0.5, 0.75, -0.75, -1.0, 0.5, 0.75, 0.75, 1.0, -0.25, -0.75, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 0.0, -1.0, 0.0, -0.25, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 0.25, 0.25, 0.0, -0.5, 1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, 0.5, 0.5, -0.25, 0.5, -0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 0.75, -1.0, -0.25, 0.75, 0.0, 1.0, 0.5, 1.0, -0.5, -1.0, -1.0, -0.75, -0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.75, -0.5, -1.0, 0.5, -1.0, -0.5, -1.0, 1.0, 0.5, -0.25, -0.25, -0.25, 0.5, 1.0, 0.75, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -0.25, ]);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array5 = new Float32Array([0.5, -0.5, 0.25, 1.0, 0.25, -0.25, -0.5, -1.0, -1.0, 0.5, 0.5, -0.25, 0.75, 0.5, 0.25, -1.0, 0.75, 0.0, 0.25, -0.5, 0.25, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 0.25, 0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -0.25, -1.0, -0.25, -0.75, 0.0, -1.0, 0.25, 0.0, 0.0, 0.25, -0.25, 1.0, 1.0, 0.5, -0.25, 1.0, -0.5, -0.75, -1.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -0.25, 0.25, -1.0, 0.0, -0.5, -0.75, -0.75, 1.0, 0.25, -0.75, 0.0, -1.0, 0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, -0.25, -0.5, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("internal");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const array6 = new Float32Array([1.0, -0.25, 0.25, -0.75, -0.5, 0.25, -0.75, 0.5, 1.0, -1.0, -0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.25, 1.0, -0.5, -1.0, 0.5, 0.25, -0.25, 0.0, -0.25, -0.25, 0.0, -0.75, 0.25, -1.0, -0.25, -1.0, -1.0, -0.25, 0.5, -1.0, -0.5, 1.0, -1.0, 0.75, 1.0, 1.0, -0.5, -0.5, 1.0, 0.25, 0.25, 0.25, -0.25, 0.0, -1.0, 1.0, -0.75, 1.0, 0.75, 0.5, 0.5, -0.25, -0.75, -1.0, 0.0, -0.5, -0.25, 0.25, 0.0, 1.0, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, 0.25, -0.25, -0.75, -0.5, -1.0, -0.75, 0.25, 0.25, 0.75, 0.0, 0.0, 0.75, 0.0, 0.5, 1.0, 0.25, 0.25, 0.5, -0.25, -0.75, 0.5, -0.75, 0.0, 0.25, ]);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
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
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder102.popDebugGroup();
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device10.pushErrorScope("out-of-memory");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.destroy();
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
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const array7 = new Float32Array([0.25, 0.75, -1.0, 0.5, 0.5, 0.5, 0.5, 1.0, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, 0.25, 0.25, 0.75, -0.75, -0.25, 1.0, -0.75, 0.25, -1.0, 0.75, 1.0, 0.25, 0.75, -0.25, -0.25, 0.75, -0.5, -0.75, -0.5, -0.25, -1.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.75, -1.0, -0.25, 0.0, 0.25, 0.25, -0.75, 0.75, 0.0, 1.0, -0.25, -0.5, 1.0, -0.75, 0.0, 0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 0.25, -0.5, 0.75, -1.0, 0.75, 0.0, -0.5, -0.5, 1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, 0.0, 0.75, 1.0, -1.0, -1.0, 1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -0.75, -0.25, -0.75, -0.25, -1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.0, 0.75, ]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder202.popDebugGroup();
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.destroy();
    
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const array8 = new Float32Array([-0.25, 0.5, -1.0, 0.0, -1.0, 0.5, 0.0, 0.0, -0.25, -0.75, 0.0, 0.75, 0.25, 0.25, 0.25, 1.0, -1.0, -1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, -0.25, 0.0, 0.5, 0.0, -1.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, -0.25, -1.0, 0.75, -0.5, -0.5, -1.0, 0.5, -0.25, 0.25, 0.0, -1.0, 0.5, 0.5, 1.0, 0.25, 0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, -0.5, 0.5, 1.0, 0.25, -1.0, 1.0, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 1.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 1.0, -1.0, 0.75, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 1.0, 0.75, 1.0, 0.5, -1.0, 1.0, -0.25, 0.75, -1.0, ]);
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-1.0, -0.5, 0.0, 0.5, 0.5, -1.0, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 0.0, 1.0, 0.25, -0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.25, -0.25, 0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, 1.0, 1.0, 0.75, -1.0, -0.25, -1.0, -1.0, -1.0, 0.25, 1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 1.0, -0.5, 0.75, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 1.0, 0.75, 1.0, 0.0, 0.75, -0.5, 0.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.0, 0.25, 1.0, -0.25, 0.75, -0.75, 0.75, 0.75, 0.75, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.0, 1.0, -0.25, 1.0, 1.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.popDebugGroup();
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.popDebugGroup();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.destroy();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device70.pushErrorScope("internal");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    render_bundle_encoder402.popDebugGroup();
    
    
    
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
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    device40.pushErrorScope("internal");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array10 = new Float32Array([-1.0, -0.25, 0.5, -0.75, -1.0, -1.0, -0.5, -0.25, 0.75, -0.25, 0.5, -0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.5, 0.25, -0.25, -0.75, -1.0, 1.0, -0.5, 0.25, -1.0, 0.75, -1.0, 0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -0.25, 0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.25, 0.5, 0.0, -0.25, -0.25, 0.75, -0.75, 0.25, 1.0, 0.5, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, -0.75, 0.75, 0.75, -0.5, 0.5, 0.75, 0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.5, 1.0, -0.5, -1.0, -0.75, 0.25, -0.25, 0.75, 0.0, 0.5, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, -0.25, -0.25, 0.75, 0.0, 0.75, -0.75, 0.75, 0.75, 0.25, 0.5, -0.5, -0.25, ]);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const array11 = new Float32Array([0.25, 0.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, -0.75, -0.25, 1.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.75, 0.0, -0.25, -1.0, 0.75, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, 0.5, 0.25, -0.75, 0.75, 0.25, 0.25, -0.25, -0.25, 0.0, 0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -0.5, -0.5, 1.0, 0.0, 0.0, 0.25, -1.0, 0.25, -1.0, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, 0.0, -0.75, -0.5, -1.0, 1.0, -1.0, -0.75, -0.25, -0.25, -0.75, 0.25, 0.75, -0.75, -0.5, -0.25, 0.5, 0.75, 0.5, -0.75, 0.75, 0.75, 0.5, -1.0, 0.0, 0.5, -0.5, 0.75, 0.75, 0.5, 0.5, 1.0, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.5, -0.75, 0.0, -0.75, -1.0, ]);
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout703]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    device70.pushErrorScope("internal");
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout702]
    });
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout702]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder402.popDebugGroup();
    
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout702]
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout402]
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    const array12 = new Float32Array([1.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.75, -1.0, 0.5, -0.5, 0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -1.0, -1.0, -0.25, -0.5, 0.0, 0.75, -0.25, 0.75, 0.0, -0.75, -0.75, -0.75, -0.75, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, -0.25, -0.75, -0.75, -0.25, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, -0.5, 0.0, 0.0, 0.5, -0.25, 0.75, -0.75, 0.75, -0.75, 0.75, -1.0, 0.75, -0.75, -0.5, 0.5, 0.5, -1.0, 0.25, 0.75, -0.5, 0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.25, -0.25, 1.0, 0.5, 0.75, 0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -1.0, -0.25, 0.0, ]);
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
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
    device70.destroy();
    device110.pushErrorScope("validation");
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.destroy();
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    render_bundle_encoder401.popDebugGroup();
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout404]
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
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
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.destroy();
    const array13 = new Float32Array([-1.0, -0.75, -0.5, 0.0, 0.75, 1.0, 0.75, -1.0, 0.5, -0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.25, -0.25, 0.75, -0.5, -0.25, 0.5, -0.25, -0.5, 0.75, 0.5, 0.5, 0.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.25, -0.25, 0.5, 0.25, 0.75, 0.0, -0.75, -0.75, -1.0, -1.0, -0.5, 0.25, -0.25, 0.5, -0.5, 0.5, 0.25, 0.75, -1.0, 0.0, 0.0, -1.0, -0.25, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.75, -0.25, 1.0, 0.75, 1.0, 0.0, 1.0, 1.0, 0.75, -1.0, -0.25, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.5, 0.5, 0.25, 1.0, -0.5, -1.0, ]);
    device100.pushErrorScope("validation");
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    device120.destroy();
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}