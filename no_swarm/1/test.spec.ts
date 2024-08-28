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
    const array0 = new Float32Array([0.75, 0.0, -0.75, 0.25, -0.25, -0.75, 0.5, -0.25, -0.25, 0.25, 0.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, 0.75, -0.75, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, -0.5, -0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 0.0, -0.25, -0.75, 0.75, -0.5, -0.25, -0.75, 0.25, -0.25, -0.5, -1.0, 0.25, 0.5, 0.0, 0.0, -0.25, -0.75, -0.25, -0.5, -0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -0.25, 0.0, -0.25, -1.0, -0.25, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, 0.25, 0.5, -0.75, 0.5, 0.75, 1.0, 0.25, -0.5, -1.0, -0.75, 0.0, -0.25, -0.25, 0.0, -0.25, -0.75, 0.0, -0.75, -1.0, 0.25, -0.75, 0.25, -0.25, -0.25, 0.0, 0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -0.75, ]);
    
    const array1 = new Float32Array([-0.75, 0.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.0, 0.25, -1.0, 0.0, 0.5, -0.75, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 0.75, -0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -0.5, 1.0, 0.0, 0.0, -0.5, -0.25, 1.0, -0.25, -1.0, -0.75, 0.5, -0.75, -1.0, 0.0, 0.25, -0.25, -0.25, 1.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.25, 0.25, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.5, 0.5, 0.75, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, 0.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, 0.25, -0.5, 0.75, -0.75, -0.25, -1.0, 1.0, 0.0, -0.5, 0.0, 0.25, -0.5, -0.75, ]);
    
    const array2 = new Float32Array([0.5, 1.0, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, -0.5, -0.75, 1.0, 0.0, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.25, -0.75, -1.0, -0.25, -0.25, 0.75, -0.5, -0.5, 0.5, -1.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.0, -0.75, 0.75, 0.25, -1.0, -1.0, 0.5, 0.0, -0.25, -0.25, 0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 1.0, 0.75, -0.5, 0.75, -0.25, -0.75, 0.0, 0.5, 1.0, 0.25, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, 0.25, 0.25, 0.75, 1.0, 0.0, 0.0, -0.25, 0.75, 0.5, 0.25, ]);
    const array3 = new Float32Array([0.25, -0.5, 1.0, 1.0, 0.25, -0.5, 0.0, 0.75, 0.75, -0.75, 0.25, -0.25, 0.25, -0.75, -0.5, -0.75, 0.75, -1.0, -1.0, 0.0, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 0.75, 0.25, 1.0, 0.25, 0.75, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, -0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.75, 0.5, 0.75, 0.5, -0.5, 0.0, 0.75, -1.0, -0.75, -0.5, -0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.5, -1.0, -0.25, 0.0, 0.0, 1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 1.0, -1.0, 0.0, 0.25, -0.25, -0.75, ]);
    const array4 = new Float32Array([0.5, -0.75, 0.25, -0.25, 0.5, 0.0, 0.75, 0.25, 0.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.75, -0.5, 1.0, -1.0, -0.5, 0.75, -0.5, 0.75, 0.25, -0.75, -0.75, 0.75, 0.5, -0.5, -1.0, 0.0, 0.25, 0.75, -0.5, 0.25, 0.5, -0.75, 0.5, 0.0, 0.0, -0.5, -0.75, -1.0, 1.0, -0.25, 0.25, 0.75, -0.5, -0.75, 0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.5, 1.0, -0.5, 0.0, -0.75, 0.75, 0.5, 0.25, 0.0, -1.0, 0.0, -0.25, 0.0, -0.5, 1.0, -0.75, -1.0, -1.0, -1.0, -0.75, 0.0, 0.5, -1.0, -0.75, 1.0, -1.0, -0.25, -0.25, -0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 0.5, 1.0, 1.0, 0.25, 0.25, -1.0, 0.5, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    query100.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const array5 = new Float32Array([-0.75, 1.0, 0.5, -0.5, 0.5, -0.75, -0.25, -0.75, -1.0, 0.25, 0.25, -0.5, 1.0, -0.5, 0.25, 0.75, 0.5, 0.0, 1.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.75, -1.0, -0.5, 0.0, 0.5, -0.75, -0.25, -0.5, -0.75, -1.0, -0.5, -0.5, 0.25, -0.25, 1.0, -0.75, -1.0, 0.0, -0.5, -0.25, -0.75, 0.25, 1.0, 1.0, 0.5, 0.0, -1.0, 0.25, 0.0, -0.75, -1.0, 0.0, -0.5, -0.75, 0.0, -0.5, -0.75, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 0.75, -0.75, 0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 0.5, -0.5, 0.25, -0.75, -0.25, 1.0, -0.5, 0.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.75, -0.25, ]);
    const array6 = new Float32Array([0.25, 0.75, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.75, 1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -0.75, 0.25, 1.0, 1.0, 1.0, -1.0, -0.5, -1.0, 0.0, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, -1.0, -0.5, -1.0, 0.25, 0.0, 1.0, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -1.0, -0.5, -0.75, -0.75, -0.75, 0.75, 0.25, -1.0, 1.0, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 0.0, 0.0, -0.75, -0.5, -1.0, 0.75, 1.0, 1.0, 0.0, 0.5, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, 1.0, 0.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.25, 0.0, ]);
    const command_buffer100 = command_encoder100.finish();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query100.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
    query100.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query102.destroy()
    device00.destroy();
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
    
    const array7 = new Float32Array([1.0, -0.75, -1.0, -0.75, 1.0, -0.75, -0.5, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, -0.75, 0.0, 0.75, -0.25, -0.5, 0.5, 0.75, 0.0, -0.25, 1.0, 0.25, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.5, -1.0, 0.5, -1.0, -0.5, 0.0, 0.75, 0.0, -1.0, -1.0, -1.0, 0.5, 1.0, 0.5, 0.75, 1.0, 0.25, -1.0, 0.0, 0.25, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, 1.0, 0.25, 0.5, 0.0, 0.5, 0.25, -1.0, 0.25, -1.0, -0.5, -0.75, -0.75, 0.25, -0.75, 1.0, -0.75, -1.0, 0.0, 0.75, 0.5, 0.75, 0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, -0.25, 0.25, -0.5, -0.75, -1.0, 0.75, 1.0, -1.0, ]);
    device10.queue.submit([command_buffer100, ]);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    query100.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    buffer100.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([0.25, -0.75, -0.5, -0.5, -1.0, -0.25, -0.5, 0.75, 0.0, -0.5, -0.5, -0.75, -0.75, 0.5, -0.25, 0.5, -0.25, -0.75, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, 1.0, -1.0, 0.75, -0.75, -0.75, -0.25, 1.0, 0.5, -0.75, 1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.5, 0.5, 0.5, -0.25, -1.0, -0.5, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, -0.25, 0.75, -1.0, 0.25, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 0.5, -1.0, 0.5, 0.75, 0.0, -0.25, 0.5, -0.5, 0.5, -0.5, -0.25, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, -0.75, -0.5, -0.5, -1.0, -0.75, -0.25, -0.5, 0.5, 0.0, 0.0, 0.5, 0.0, -1.0, 0.75, 0.75, ]);
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-0.75, 0.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.25, 0.5, -0.75, -1.0, 0.75, 0.0, -1.0, -1.0, -0.25, -0.25, 0.5, -0.75, 1.0, 0.75, 0.75, 0.5, -0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 0.25, 0.5, -0.25, 0.0, 0.0, -0.75, 1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.0, 0.0, 0.25, -1.0, -0.75, -0.75, -0.5, 0.25, 0.5, -0.25, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, 0.5, 0.5, 1.0, 0.75, -1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 0.5, -0.25, -1.0, 1.0, -1.0, -1.0, -0.25, 0.75, -1.0, -0.5, 1.0, -0.5, 0.5, -0.5, 0.5, 0.0, 1.0, 0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 0.5, 0.75, 0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 0.75, 0.25, ]);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    query103.destroy()
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    render_pass_encoder1010.beginOcclusionQuery(0)
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1010.endOcclusionQuery()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    query103.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    
    
    
    render_pass_encoder1010.setStencilReference(1);
    
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
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1010.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query102.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder100.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    query100.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_pass_encoder1010.setStencilReference(1);
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
    query103.destroy()
    
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
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.beginOcclusionQuery(0)
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1010.executeBundles([])
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    query100.destroy()
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    command_encoder300.insertDebugMarker("mymarker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1010.setPipeline(render_pipeline101);
    query301.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    texture102.destroy();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    query100.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.setStencilReference(1);
    
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
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setPipeline(render_pipeline103);
    texture300.destroy();
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_buffer300 = command_encoder300.finish();
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([])
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group100);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setPipeline(render_pipeline101);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setStencilReference(1);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1030.beginOcclusionQuery(0)
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1040.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1020.popDebugGroup();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group101);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder101.insertDebugMarker("marker");
    query301.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const array10 = new Float32Array([0.5, 0.25, -0.75, 1.0, 0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 0.75, 1.0, -0.5, -1.0, 0.25, -0.5, 0.25, -0.25, -0.25, 0.25, 1.0, 0.25, 0.5, 1.0, -0.5, 0.5, 1.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.5, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, -0.5, 1.0, -0.75, -0.75, -0.75, -0.5, 0.25, -0.25, -0.75, 0.0, 0.75, -0.5, 0.5, 0.25, 0.0, 0.0, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, 0.0, -1.0, -0.5, -0.5, 0.25, 0.25, -0.75, -0.25, 0.0, -0.25, -0.75, 1.0, -0.5, 1.0, -1.0, 0.0, -0.25, 0.5, -1.0, 0.0, -0.75, 1.0, 0.75, -0.75, 0.0, -0.25, -0.75, 0.25, -0.25, -0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    buffer103.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder301.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture103.destroy();
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder1040.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
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
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    query100.destroy()
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    query102.destroy()
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
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
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.beginOcclusionQuery(0)
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    texture104.destroy();
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    query302.destroy()
    
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    
    
    query100.destroy()
    query104.destroy()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.endOcclusionQuery()
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query104.destroy()
    
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query300.destroy()
    
    render_pass_encoder1010.popDebugGroup();
    device30.pushErrorScope("internal");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    
    query301.destroy()
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    buffer109.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.setPipeline(render_pipeline108);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setStencilReference(1);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group105);
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    buffer1012.destroy()
    buffer105.destroy()
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder3020.setPipeline(compute_pipeline302);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    query100.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer1013.destroy()
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout108,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    buffer1014.destroy()
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    query104.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    texture301.destroy();
    buffer300.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    
    query300.destroy()
    render_pass_encoder1010.endOcclusionQuery()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group302);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer308, 0);
    compute_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer302, ]);
}