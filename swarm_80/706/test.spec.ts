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
    
    const array0 = new Float32Array([0.0, 1.0, 0.75, -0.25, -0.5, 1.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.25, 0.75, -1.0, 0.5, -1.0, 0.0, -1.0, 1.0, 1.0, 0.25, -1.0, 1.0, -0.5, -1.0, -0.25, 0.0, 0.75, -1.0, 0.25, 0.75, 0.75, -0.75, -0.75, -0.25, -0.75, 0.75, -0.5, 0.5, 0.75, -0.5, 1.0, -0.25, 0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 0.0, 0.75, 1.0, -0.25, 0.25, 0.0, -0.25, -0.5, 1.0, 0.25, -0.25, 0.25, 1.0, 1.0, 0.75, 1.0, 0.75, -0.25, -0.25, -0.75, -0.5, 0.75, 0.5, -0.75, 0.75, 0.75, 0.25, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 0.25, 0.5, -0.5, -1.0, -1.0, 0.5, 0.0, 0.5, -0.5, 1.0, -0.5, -0.25, 0.5, 0.0, -1.0, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array1 = new Float32Array([0.0, -0.75, 0.5, 0.0, 0.25, 0.0, 1.0, 0.5, 0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.5, -1.0, 1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.75, -0.25, 0.25, -0.75, 0.75, 0.5, -0.5, 0.75, -0.25, 1.0, -1.0, 0.75, -1.0, 0.75, 0.25, 1.0, 0.25, -0.5, 0.25, 0.75, -0.25, -1.0, -0.5, -0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.5, -0.75, -0.25, 0.0, 0.5, 0.5, -1.0, 1.0, -1.0, 0.75, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -0.75, -1.0, 0.25, -1.0, -0.75, -1.0, -0.75, 0.75, 0.0, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, 0.5, ]);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("out-of-memory");
    const array2 = new Float32Array([-0.25, 0.0, 0.5, 0.5, -0.5, -1.0, -1.0, 0.5, -0.75, -1.0, -0.5, -0.25, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, 0.75, 0.25, 0.0, 0.25, 0.75, 1.0, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, -0.25, -0.75, -0.75, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 1.0, 0.75, -1.0, 0.25, -0.75, 0.0, 0.25, 0.0, -0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 0.5, -0.5, -1.0, 0.5, 0.25, -0.5, 0.0, -0.75, 1.0, 0.5, -0.25, 0.5, 0.75, 0.5, -0.5, 0.0, -0.75, -0.5, -1.0, -0.5, 0.5, -0.25, -0.25, 0.5, -0.5, 0.75, -0.5, -0.25, 0.0, 1.0, -0.5, 0.0, 0.5, 0.5, -0.25, 0.5, -0.25, -1.0, 1.0, 0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([-0.75, 0.5, 0.0, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, -1.0, -0.5, -0.25, -1.0, -0.5, 0.75, -0.25, 0.0, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.5, 1.0, 0.25, 0.5, 0.5, -0.75, 0.0, 1.0, -0.25, 0.75, -1.0, 0.25, 0.0, -1.0, 0.25, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 1.0, 0.75, -0.5, -0.75, 0.5, 1.0, 1.0, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, -0.75, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.0, -0.75, 0.0, -0.25, 0.5, -0.25, 0.75, 0.75, -0.5, 0.75, -0.75, 1.0, 0.0, 0.5, 0.25, 1.0, 0.5, -0.75, -0.75, 0.25, -0.5, -1.0, 0.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.5, -0.25, 0.0, 1.0, 0.0, -0.75, ]);
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture100.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query101.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    const array4 = new Float32Array([-1.0, 0.5, 0.25, 0.0, 0.0, -0.25, -0.5, 0.0, -0.75, 0.25, 0.25, 1.0, -1.0, -1.0, -0.25, -0.25, -0.75, 0.25, 0.25, 0.25, 0.25, 0.0, 0.5, 0.25, 0.75, -1.0, -1.0, -0.75, 0.25, 0.25, -0.5, 0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.75, -0.25, 0.0, -1.0, 0.5, 0.25, -0.5, 0.75, -0.25, 0.0, 0.25, 0.5, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, 0.0, 0.5, -0.5, -0.25, -0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, 1.0, 1.0, 0.75, -0.25, -0.25, -1.0, -0.5, 0.5, -0.5, 0.0, -0.25, 0.25, -1.0, -0.5, 0.25, 0.0, 0.25, 0.0, -0.25, -0.75, 0.0, -0.5, 1.0, 1.0, 0.5, -0.25, 0.5, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query100.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    query101.destroy()
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.popDebugGroup();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    query100.destroy()
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.popDebugGroup();
    const command_buffer103 = command_encoder103.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    const command_buffer104 = command_encoder104.finish();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer200 = command_encoder200.finish();
    query104.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query105.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    query100.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder202.insertDebugMarker("mymarker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    query106.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder202.insertDebugMarker("mymarker");
    const array5 = new Float32Array([0.5, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 0.0, 0.5, -0.75, -1.0, -1.0, 1.0, 0.75, 0.75, 0.25, -1.0, -0.75, -1.0, 0.25, 0.5, -0.75, 0.75, -0.5, -0.5, -0.25, 1.0, 0.25, 0.25, 0.0, -1.0, 0.25, -0.25, -0.25, -0.25, -0.5, -1.0, 1.0, -0.75, 0.25, -0.5, 0.0, 0.25, 1.0, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -0.25, 1.0, 0.75, -0.25, 0.25, 1.0, 0.75, -0.5, 0.0, -1.0, 0.75, 0.0, 0.0, 0.75, 0.25, -0.75, -0.75, -0.75, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, -0.75, 1.0, 0.25, -0.75, 0.5, 1.0, -0.5, 0.0, 0.75, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.5, -0.75, 0.5, 1.0, -0.25, -1.0, -0.5, -0.75, -0.5, -0.5, 0.25, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query106.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([-0.25, -1.0, 0.25, -0.75, 0.25, -0.75, -0.25, -0.25, 0.0, 0.25, 0.75, -0.5, 0.5, -1.0, -0.25, 0.5, 0.75, -0.5, -0.25, 1.0, -0.75, 0.25, -0.5, -0.75, -0.5, -0.25, 0.5, -0.25, 0.75, -0.25, 0.0, 0.5, -0.5, -1.0, 0.5, 0.75, 1.0, 0.0, 0.0, -1.0, -1.0, 0.75, 0.25, -1.0, -0.25, -1.0, 0.0, -0.5, 0.75, 1.0, 0.25, -0.75, -0.75, 0.25, 0.75, -0.75, 0.5, -0.75, 0.75, 0.25, 0.75, -0.75, -0.5, 0.75, -0.5, -1.0, -0.5, -0.25, -1.0, 0.25, -0.5, -0.75, 0.25, 1.0, -0.75, -0.75, 1.0, 0.75, -1.0, -1.0, 0.0, 1.0, 0.0, 0.25, 0.0, -0.5, 0.5, -1.0, 0.75, -0.75, 1.0, -1.0, -1.0, -0.25, -0.75, -1.0, 0.25, 0.25, 0.25, 0.0, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.pushErrorScope("validation");
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    query107.destroy()
    query107.destroy()
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
    query109.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.pushErrorScope("internal");
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    query100.destroy()
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
    compute_pass_encoder1050.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    query109.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query106.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1060.pushDebugGroup("group_marker");
    query100.destroy()
    query106.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query108
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1070.executeBundles([])
    render_pass_encoder1070.beginOcclusionQuery(0)
    texture200.destroy();
    query100.destroy()
    
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    query104.destroy()
    
    render_bundle_encoder201.setPipeline(render_pipeline204);
    query105.destroy()
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.popDebugGroup()
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    query103.destroy()
    device20.pushErrorScope("validation");
    
    const command_buffer202 = command_encoder202.finish();
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
    query100.destroy()
    render_pass_encoder1060.setPipeline(render_pipeline100);
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
    render_bundle_encoder100.setPipeline(render_pipeline102);
    render_pass_encoder1070.setPipeline(render_pipeline101);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    render_bundle_encoder101.setPipeline(render_pipeline101);
    query106.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    query100.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group100);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1070.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    render_bundle_encoder201.popDebugGroup();
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.pushErrorScope("internal");
    render_pass_encoder1070.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    render_pass_encoder1080.setPipeline(render_pipeline100);
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    query102.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1080.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query102.destroy()
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device50.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.75, 0.75, 1.0, 0.0, 1.0, 1.0, -1.0, 0.0, 1.0, 0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 0.5, 0.0, 0.0, -1.0, 0.75, 0.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.5, -1.0, -1.0, 0.0, -0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, 0.0, -0.75, -1.0, 0.25, -0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -0.75, 0.5, 1.0, -1.0, 0.75, -1.0, -0.5, 0.25, 0.5, 0.25, 0.0, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, -0.75, 1.0, -0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, -0.5, -0.5, 0.25, 0.5, -0.75, ]);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query109.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query102.destroy()
    query107.destroy()
    command_encoder203.pushDebugGroup("mygroupmarker")
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1070.endOcclusionQuery()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    query107.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    query201.destroy()
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    query102.destroy()
    query108.destroy()
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.insertDebugMarker("marker");
    const render_pass_encoder1090 = command_encoder109.beginRenderPass({
        label: "render_pass_encoder1090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: query109
    });
    
    render_bundle_encoder200.popDebugGroup();
    
    query106.destroy()
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    render_pass_encoder1090.executeBundles([])
    query106.destroy()
    device40.pushErrorScope("validation");
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    
    query201.destroy()
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    texture102.destroy();
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    command_encoder204.pushDebugGroup("mygroupmarker")
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture103.destroy();
    
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder203.insertDebugMarker("mymarker");
    query102.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1090.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture202.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1060.setBindGroup(0, bind_group103);
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    query104.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_pass_encoder1060.insertDebugMarker("marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    query1010.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    query101.destroy()
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_pass_encoder1080.setBindGroup(0, bind_group104);
    
    render_pass_encoder1080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setPipeline(render_pipeline209);
    render_pass_encoder1090.setPipeline(render_pipeline102);
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const array8 = new Float32Array([0.5, 0.5, -0.5, -1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.25, 0.0, 0.25, 0.25, 0.25, -0.5, 0.25, 0.75, -0.25, -0.5, -0.25, 0.75, -0.25, 0.25, 0.75, 0.5, -0.25, 0.0, 0.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.75, 0.5, 0.5, 0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, -0.25, -0.25, -0.5, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, 0.0, 0.0, 0.75, 0.25, 0.75, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.0, -0.5, -0.25, -0.75, -0.25, 0.0, -0.25, -0.5, -0.25, 0.75, 0.25, -0.5, 0.75, 0.5, 1.0, -1.0, -0.5, 0.5, -0.25, 1.0, -0.75, 0.75, 0.5, -1.0, 0.0, -0.5, 0.25, -1.0, -1.0, -0.25, 1.0, ]);
    render_bundle_encoder402.insertDebugMarker("marker");
    query103.destroy()
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    
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
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    query400.destroy()
    query101.destroy()
    
    device10.pushErrorScope("out-of-memory");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
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
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group202);
    query200.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group105);
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    
    render_pass_encoder1080.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder2010.insertDebugMarker("marker")
    query200.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    query105.destroy()
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder402.popDebugGroup();
    render_pass_encoder1060.popDebugGroup();
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1050.insertDebugMarker("marker")
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    query400.destroy()
    query104.destroy()
    render_pass_encoder1090.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder1090.pushDebugGroup("group_marker");
    render_pass_encoder1070.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1060.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    device60.pushErrorScope("internal");
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    query400.destroy()
    query103.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    query1011.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler601 = device60.createSampler( { label: "sampler601" } );
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
    
    texture201.destroy();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1090.setBindGroup(0, bind_group106);
    compute_pass_encoder1050.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1020.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1090.popDebugGroup();
}