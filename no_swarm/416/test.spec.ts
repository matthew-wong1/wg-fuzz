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
    
    const array0 = new Float32Array([-0.25, -0.5, -0.75, 0.0, 0.5, -0.5, -0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.5, -0.5, 0.25, 1.0, -0.5, 1.0, 0.25, -1.0, 0.75, -1.0, -0.5, 0.0, -0.25, -0.75, 1.0, -0.25, -0.75, 0.5, 0.75, -0.25, 1.0, 0.25, 0.5, -0.25, 1.0, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 0.5, -1.0, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, -0.5, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, -0.75, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, -1.0, -0.5, 0.25, 1.0, -1.0, 0.5, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, -0.25, -1.0, 0.25, -0.5, 0.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.0, -0.75, 1.0, -0.5, ]);
    const array1 = new Float32Array([0.75, 0.5, 0.0, -0.25, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, -0.75, 0.0, 0.25, 0.0, 0.5, 0.5, 0.0, 0.75, 0.5, -0.5, 0.0, 0.75, 0.5, -1.0, 0.75, -1.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.75, -0.25, -0.75, -0.5, 1.0, 0.25, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 1.0, -0.25, -0.75, 1.0, -1.0, -1.0, 0.0, -0.5, -0.5, -1.0, -0.5, 0.0, 1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, 1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.75, 1.0, 0.5, 1.0, -0.25, 1.0, -0.75, 0.75, 1.0, -0.25, ]);
    
    
    const array2 = new Float32Array([-0.75, 0.0, -0.75, -0.25, -0.25, 0.5, 0.0, 0.5, -0.5, 0.25, -0.25, 1.0, -0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, -0.25, -0.5, -0.25, -0.75, 0.25, -0.75, 0.75, 0.0, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, 1.0, -0.5, 0.25, 1.0, 0.0, 1.0, -0.75, 0.0, -0.75, -0.5, -0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 1.0, 0.0, -0.5, 0.75, 0.75, 0.75, -0.25, 1.0, 0.25, 0.0, 1.0, -1.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, 0.75, 0.75, 1.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, -1.0, 0.0, -0.25, 0.0, -0.75, -0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 1.0, 0.75, -1.0, -0.25, 0.5, 0.5, -0.5, -0.75, 0.0, -1.0, -0.5, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([1.0, 0.75, 1.0, -0.75, -0.75, 0.25, -0.5, -0.5, -1.0, -0.25, -0.5, -0.25, 1.0, 0.5, 0.25, -0.25, -0.75, 1.0, 0.0, -0.25, 0.5, 0.0, -0.5, 0.75, -1.0, -0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -0.75, -0.5, -0.75, 0.25, -0.25, 0.25, 1.0, -0.5, 0.25, -1.0, 0.0, 0.0, 0.5, 0.25, 1.0, 0.75, 0.75, -0.75, -0.5, -0.25, 0.75, -1.0, 0.0, 0.0, -1.0, -1.0, -0.75, 1.0, 0.25, 1.0, -1.0, 0.75, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, -0.75, -0.5, -0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 0.25, 1.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.75, 0.75, 0.25, 0.0, -0.25, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, -0.5, -1.0, ]);
    const array4 = new Float32Array([0.75, 1.0, 0.5, 1.0, 0.5, -0.25, -1.0, 0.5, -0.75, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, -0.5, 0.75, -0.25, -0.5, 0.75, -0.25, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, 0.5, -0.25, 0.75, 0.25, 0.25, 0.25, 0.75, -0.25, -0.25, 0.75, 0.75, -1.0, 0.0, -0.75, 0.25, -1.0, -0.25, 0.5, 0.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.75, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, -0.75, 0.0, -1.0, -0.5, 0.0, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.25, -1.0, 0.25, 0.5, -0.75, -0.25, 0.25, 0.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.75, -0.75, 1.0, 0.75, -0.25, -0.75, 0.75, 1.0, -0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.25, -0.75, -0.5, -0.75, 1.0, -0.25, -0.75, -0.5, 1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 1.0, 0.5, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 1.0, 0.75, -0.75, -0.75, -0.25, 1.0, -0.75, -0.75, 0.75, -0.25, -0.25, 0.0, 0.25, -1.0, -0.25, 0.0, -1.0, 0.25, 0.25, 0.0, -1.0, -1.0, -1.0, 1.0, -0.5, -0.25, -1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.75, -0.25, 0.25, 0.75, 1.0, 0.25, 0.75, -0.75, 0.25, 0.25, 0.25, -0.25, -1.0, -0.25, -0.25, -0.75, -0.25, 0.0, 0.5, -0.75, 1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.0, 0.25, 1.0, -0.75, -0.75, -0.25, -0.25, -1.0, 0.25, -0.75, 0.0, -0.25, 1.0, 0.0, 0.0, 0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.pushErrorScope("out-of-memory");
    const array6 = new Float32Array([0.0, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, 0.0, -0.75, -0.5, 0.75, -0.5, 0.5, -0.75, -0.5, 0.5, 0.5, 0.75, 0.0, 0.5, 0.0, -0.25, -0.75, 1.0, 1.0, -0.25, 0.25, -0.5, -0.75, -0.25, -0.75, 1.0, 1.0, 0.0, 0.5, 0.0, 0.5, 1.0, -0.25, 0.0, -0.25, -0.5, 0.0, 0.0, 1.0, 0.75, -0.25, -0.75, 0.5, -1.0, 1.0, 1.0, -0.5, 0.75, -1.0, 1.0, 0.25, -0.75, 0.75, -0.5, -0.5, -0.75, 0.75, 1.0, -0.75, 0.0, 0.5, -0.5, -0.5, -0.5, -0.25, -0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, 1.0, 0.5, 0.0, 0.75, 0.5, -0.5, -0.25, -0.5, ]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query302.destroy()
    device00.destroy();
    
    
    buffer300.destroy()
    query302.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
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
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query200.destroy()
    query200.destroy()
    texture200.destroy();
    device30.pushErrorScope("out-of-memory");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder301.insertDebugMarker("mymarker");
    texture300.destroy();
    
    
    
    query200.destroy()
    buffer200.destroy()
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query301.destroy()
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer300 = command_encoder300.finish();
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query201.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer301 = command_encoder301.finish();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    texture302.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        occlusionQuerySet: undefined
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
        occlusionQuerySet: query300
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    command_encoder201.insertDebugMarker("mymarker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    texture203.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer301.destroy()
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    texture303.destroy();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
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
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.executeBundles([])
    texture305.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    
    buffer201.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2000.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture205 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    query201.destroy()
    device20.pushErrorScope("out-of-memory");
    
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2010.popDebugGroup();
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    texture205.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2000.setStencilReference(1);
    
    texture304.destroy();
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder300.popDebugGroup();
    texture202.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    query301.destroy()
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    buffer202.destroy()
    texture201.destroy();
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    query201.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder2000.executeBundles([])
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    texture204.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
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
    render_pass_encoder3020.setPipeline(render_pipeline300);
    compute_pass_encoder3030.setPipeline(compute_pipeline301);
    device10.pushErrorScope("internal");
    query301.destroy()
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    query302.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline202);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    texture206.destroy();
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
        layout: render_pipeline202.getBindGroupLayout(0),
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
    render_bundle_encoder200.popDebugGroup();
    device40.destroy();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    
    texture306.destroy();
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder2010.insertDebugMarker("marker");
    texture301.destroy();
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

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query202.destroy()
    render_bundle_encoder300.popDebugGroup();
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer304.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
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
    
    const texture_view3080 = texture308.createView({ label: "texture_view3080" });
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
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
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    
    
    
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    query202.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    buffer204.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query303.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    const texture_view2070 = texture207.createView({ label: "texture_view2070" });
    const texture309 = device30.createTexture({
        label: "texture309",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    buffer302.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    texture307.destroy();
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query302.destroy()
    query306.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.popDebugGroup();
    texture207.destroy();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
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
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    render_pass_encoder3020.popDebugGroup();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder304.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query304
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.pushErrorScope("internal");
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
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
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    query300.destroy()
    render_pass_encoder3040.executeBundles([])
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const texture_view3090 = texture309.createView({ label: "texture_view3090" });
    query205.destroy()
    render_pass_encoder3040.setStencilReference(1);
    
    query306.destroy()
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module307,
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
            module: shader_module307,
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    texture208.destroy();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    buffer203.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const texture_view3091 = texture309.createView({ label: "texture_view3091" });
    
    
    
    
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer305, 0);
    
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query204.destroy()
    
    query302.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    query305.destroy()
    
    const texture_view3092 = texture309.createView({ label: "texture_view3092" });
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    
    const texture209 = device20.createTexture({
        label: "texture209",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer101.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2020.setPipeline(compute_pipeline200);
    query304.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2020.insertDebugMarker("marker")
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
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout305,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.executeBundles([])
    render_pass_encoder3040.setStencilReference(1);
    
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder2010.popDebugGroup();
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

    render_pass_encoder2000.setBindGroup(0, bind_group203);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2011, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2011, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder3040.setPipeline(render_pipeline300);
    compute_pass_encoder2020.end();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group301);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    render_pass_encoder3040.drawIndirect(buffer305, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder3040.end();
    compute_pass_encoder3030.end();
    const command_buffer304 = command_encoder304.finish();
    const command_buffer303 = command_encoder303.finish();
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group302);
    render_pass_encoder3020.setVertexBuffer(0, buffer300);
    render_pass_encoder3020.drawIndirect(buffer305, 0);
    render_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
}