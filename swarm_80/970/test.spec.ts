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
    const array0 = new Float32Array([-0.75, 0.0, 0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 0.25, -0.5, -0.25, 1.0, 0.5, 0.25, -0.25, -0.75, -0.5, 0.75, -1.0, 0.25, -1.0, 0.5, -0.75, 0.5, 0.75, 0.25, 1.0, -1.0, 0.5, -0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 0.0, 1.0, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 0.5, -0.75, -0.25, 1.0, -0.25, 0.0, 1.0, 1.0, 0.0, 1.0, -0.25, -0.5, 0.25, 0.5, -0.5, 0.0, -0.25, -1.0, 0.75, -1.0, 0.0, -0.5, 0.5, 1.0, 0.5, -0.5, -0.75, -0.5, 1.0, -0.5, 0.0, 0.0, 0.75, 0.25, 0.75, 0.5, -0.25, 1.0, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, 0.0, 1.0, -1.0, 0.25, -1.0, 0.0, 1.0, 0.75, -0.5, -1.0, 0.25, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, -0.75, 0.25, -0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 0.75, 0.5, -0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, -0.25, 0.25, -0.5, 0.75, -1.0, 0.5, -1.0, -0.75, 0.5, 0.25, 1.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, -0.5, 0.75, -0.5, 1.0, -0.25, -0.75, -0.25, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 1.0, 1.0, -1.0, -1.0, 0.0, -0.75, -1.0, -0.25, 0.75, -0.5, 0.5, 0.5, -1.0, -0.25, -1.0, 0.0, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.25, 0.25, 0.5, 0.25, 0.0, -1.0, -0.75, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, -1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([0.5, -0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.75, 0.25, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, 1.0, 0.25, 1.0, 0.0, 0.0, -0.75, 1.0, -0.75, -0.25, -1.0, 0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 1.0, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, 1.0, -0.5, 0.25, -0.25, 1.0, -0.5, 0.25, 1.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.25, 0.5, 0.75, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, -1.0, 0.5, 0.25, 0.25, -1.0, -1.0, -0.5, -0.75, -0.5, -0.5, -1.0, -1.0, 1.0, 0.75, -0.5, 0.25, -1.0, -1.0, 0.0, 0.25, 0.5, -0.75, -1.0, 0.5, -0.25, 0.0, 0.5, -0.25, -0.25, 0.0, 0.5, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder100.popDebugGroup();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    query100.destroy()
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query201.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    texture201.destroy();
    buffer101.destroy()
    
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
    const array3 = new Float32Array([-1.0, -0.5, -0.5, 1.0, 0.0, -0.25, -1.0, 1.0, -1.0, -0.5, -0.75, -0.5, 1.0, 0.5, -0.5, -0.5, 0.75, -0.75, -0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 0.0, 0.0, -0.75, -0.25, 0.75, 0.0, -0.25, -1.0, 0.0, 1.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 1.0, 0.5, 0.25, 1.0, -0.75, 0.25, 0.75, -1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 1.0, -0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.25, 0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 0.25, -0.25, -0.25, -1.0, -0.5, 0.0, -1.0, 0.5, -0.25, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, 0.0, 1.0, -0.75, 0.0, -0.75, 0.25, -0.25, 0.5, 0.0, -0.25, 0.0, -1.0, 0.5, 0.75, ]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    query101.destroy()
    
    const array4 = new Float32Array([-0.25, 0.25, -0.5, 0.75, 0.5, -0.25, -0.5, -0.25, -0.25, 0.0, 0.5, -0.5, 0.75, 0.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.5, -0.75, 0.75, -0.5, 0.0, 1.0, 1.0, -0.5, 1.0, -1.0, 1.0, -1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 0.0, 0.5, -1.0, -0.75, 0.5, 0.75, -0.75, 0.5, 0.25, -0.5, -1.0, 0.5, 0.75, 0.25, -0.5, 1.0, 0.25, 0.75, 0.5, -0.25, 0.5, -1.0, 0.75, 0.25, 0.25, 0.0, -0.25, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, -0.75, -0.25, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, 0.5, 0.0, 0.75, 0.25, -1.0, -0.5, 0.25, -1.0, 0.0, -0.25, 0.5, 0.25, -0.25, -0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.75, -0.75, ]);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    device00.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query101.destroy()
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    query100.destroy()
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query204.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    query204.destroy()
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture200.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
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
    texture100.destroy();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query200.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    buffer102.destroy()
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query201.destroy()
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
    render_bundle_encoder100.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    buffer200.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    texture202.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device20.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    buffer100.destroy()
    const array5 = new Float32Array([-0.75, 0.25, -0.5, -0.5, -1.0, 0.25, -1.0, -0.5, -0.5, -0.75, 0.25, 0.75, 1.0, -0.75, 0.0, 0.0, 0.75, -1.0, -0.75, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, 0.75, -0.75, -0.5, 1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -1.0, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.5, 0.0, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, -0.75, 0.5, -0.5, -0.25, 0.75, 1.0, 0.75, 0.5, 0.0, -0.75, 0.25, -1.0, -0.5, 0.0, -1.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 0.5, 0.25, 1.0, -0.75, 1.0, -0.25, 0.75, 0.25, -0.25, -0.5, 0.75, -0.75, 0.75, 1.0, -0.5, -0.25, 0.5, -1.0, 0.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, 0.0, ]);
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query102.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_bundle_encoder101.insertDebugMarker("marker");
    query101.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    
    buffer105.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    texture101.destroy();
    
    device10.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    texture300.destroy();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const array6 = new Float32Array([-0.5, 0.0, 0.25, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.0, 0.5, -0.25, -1.0, -0.75, -0.25, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 0.0, -1.0, 1.0, 1.0, 0.0, -0.75, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.25, -0.5, -0.5, -0.5, -1.0, 0.0, -0.25, 0.0, 0.0, 1.0, -1.0, 0.75, -0.5, 0.5, 0.75, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, -0.75, 0.0, 0.25, -0.25, -0.75, -0.75, -1.0, 0.25, 0.5, 1.0, 0.75, 1.0, 0.75, -0.25, -0.25, -0.5, -0.75, -0.5, -0.5, -0.75, 0.75, -0.75, 0.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.5, 0.5, -0.25, -0.25, 0.75, -0.75, 0.25, ]);
    device40.destroy();
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer301.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array7 = new Float32Array([-0.5, 0.25, 0.0, 0.0, 0.0, 0.25, -0.25, 0.75, 0.0, -0.25, 0.75, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, -1.0, 0.25, -0.25, 0.25, 1.0, 0.5, -1.0, -1.0, 0.75, 0.5, 0.25, -0.25, 0.75, 0.25, -0.25, 0.5, -0.25, 0.0, 0.5, 0.75, 0.75, 0.5, 0.5, 0.25, 0.5, 0.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.25, -0.5, 1.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.25, 0.0, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, 0.5, 0.75, -0.75, -0.75, 0.75, -1.0, -0.5, -0.25, 1.0, 0.0, -0.25, -0.75, 0.25, -0.25, -0.5, -0.5, -0.25, -0.5, 1.0, 0.5, 0.75, 1.0, 0.75, 0.75, -0.75, 0.0, 0.75, -0.25, -0.25, 0.75, -1.0, 0.25, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array8 = new Float32Array([0.0, 0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.25, -0.5, 0.75, -0.5, -0.75, 1.0, 0.5, 1.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.75, 0.75, -1.0, -0.25, -0.25, 0.0, -1.0, 0.0, -0.75, -1.0, 1.0, -1.0, 0.25, 0.25, 1.0, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 1.0, -0.25, -0.75, 0.5, 1.0, 0.25, -0.75, 0.0, -0.25, 0.0, 0.5, 0.5, 0.75, 0.25, 0.25, 1.0, 0.5, 0.75, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 1.0, -0.75, 1.0, 0.5, -1.0, -1.0, -0.25, -0.5, 0.75, 0.0, 0.0, 0.25, -0.25, 0.25, 0.0, -0.5, 0.25, 0.5, -0.75, 0.25, -0.75, -0.75, -1.0, -1.0, 0.25, 0.0, -0.25, -0.25, -1.0, 0.75, ]);
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const array9 = new Float32Array([-0.5, -1.0, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.5, 1.0, 1.0, 0.25, 0.75, 1.0, -0.25, 0.25, -0.5, 0.25, 1.0, 0.0, 1.0, 0.5, -0.75, -1.0, -1.0, 0.25, 0.75, -0.75, 0.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.5, 0.0, 1.0, -0.5, -0.75, -1.0, 0.25, 0.5, -0.75, 0.25, -0.75, -1.0, 0.5, 1.0, -1.0, -0.75, -1.0, 1.0, 0.75, 1.0, 0.5, 0.0, 1.0, -1.0, -0.75, 1.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, 1.0, 0.25, -0.25, -0.75, -0.25, 0.0, 1.0, -0.5, -0.75, 0.75, -0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, 0.25, 1.0, -1.0, ]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer300.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    texture500.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder500.popDebugGroup();
    query303.destroy()
    buffer303.destroy()
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    buffer302.destroy()
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    const array10 = new Float32Array([-0.5, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 0.5, -0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 0.75, 0.25, -0.25, 0.25, -0.75, -1.0, 0.75, 1.0, 0.75, -0.75, 0.5, 1.0, 0.5, 0.25, -1.0, -1.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.0, -0.5, -1.0, -0.75, -0.5, 1.0, 0.25, 0.0, 0.75, 0.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.5, -0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, -0.5, -1.0, 1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 0.0, -0.25, -0.75, -0.75, -1.0, 1.0, -0.25, 0.25, 1.0, 0.75, -0.5, -1.0, -0.25, -0.25, -0.25, 0.25, -0.75, -0.75, -1.0, -0.75, 0.0, 0.25, -0.75, ]);
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    texture301.destroy();
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
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
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const array11 = new Float32Array([0.0, 0.25, 1.0, -1.0, -1.0, -0.5, 0.5, 0.5, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, 1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.75, -0.5, -0.75, -0.25, 1.0, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, -1.0, 1.0, -0.75, 1.0, -0.75, -1.0, 0.75, -0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 1.0, -1.0, 0.25, -0.75, -0.5, 0.0, 1.0, -0.25, -0.75, 0.5, 0.75, 1.0, -0.75, 0.75, -0.75, 0.5, 0.75, 0.25, -0.5, -1.0, -0.25, 0.75, 0.0, 0.5, 1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.5, -0.25, -1.0, -0.25, 1.0, -0.75, 0.75, -0.75, -0.25, 0.75, 0.0, 0.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.25, 0.75, -0.75, -0.75, ]);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.destroy();
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    render_bundle_encoder500.insertDebugMarker("marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    buffer500.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    
    
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    
    device50.destroy();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array12 = new Float32Array([-0.5, -0.5, 0.0, 0.0, 0.0, -0.75, 0.0, 0.5, 0.0, 0.5, 0.75, -0.75, -1.0, -0.5, -1.0, 0.0, 0.5, -0.75, -0.75, 1.0, 1.0, -0.75, -0.25, -0.75, -1.0, 0.0, 1.0, -0.25, 0.75, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 0.5, -0.5, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -1.0, 0.75, 0.0, -1.0, -0.5, -0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 1.0, 1.0, 0.75, -0.5, -1.0, -0.25, 1.0, 0.75, 1.0, -1.0, 1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, -0.5, -0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, 0.75, 0.75, -0.5, -1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.25, 0.75, ]);
    
    
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device60.destroy();
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([0.5, -1.0, -1.0, 0.5, -0.75, 0.75, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, -0.75, -1.0, 0.25, -0.75, 0.25, -0.75, 0.75, 0.5, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, 0.5, -0.5, -1.0, 0.0, 0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.5, 1.0, 0.25, 0.0, -1.0, -0.75, 0.75, 1.0, 0.5, 1.0, 0.5, 0.0, -0.25, -0.5, -0.75, 0.75, 0.75, -1.0, 1.0, -1.0, 0.25, 0.25, -0.25, -1.0, 0.25, -1.0, -0.75, -0.75, -0.5, 0.5, -0.75, 0.0, -0.75, -1.0, 0.0, -0.5, -1.0, 0.5, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 1.0, -0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 0.5, 0.25, -0.75, 0.0, -0.25, 0.5, -0.25, 0.5, -0.5, -1.0, -0.75, -0.25, ]);
    
    
    const array14 = new Float32Array([-1.0, 0.25, 0.5, -0.25, 0.5, 0.0, 0.0, 0.5, 0.0, 0.75, -1.0, -1.0, 0.0, 0.5, -0.5, 0.5, 0.5, -0.25, 0.0, -1.0, -1.0, -1.0, -0.75, 0.75, -0.75, -1.0, -0.5, -0.5, 1.0, -0.25, -0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.0, 0.0, -0.25, -0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 1.0, 0.75, 0.25, -0.25, 1.0, 1.0, 0.5, 0.5, -0.5, 0.0, 0.0, -0.75, 0.75, 1.0, -1.0, -1.0, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, -0.5, -1.0, 0.5, 0.75, 0.0, 0.25, 0.25, 0.75, 0.75, -1.0, 0.25, 0.25, -0.5, 0.5, 1.0, -0.75, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, -0.5, 0.5, 0.25, -0.5, -0.5, -0.25, -0.5, -1.0, 0.25, -1.0, -0.75, ]);
    
    
    const array15 = new Float32Array([-0.75, 0.75, 0.5, 0.75, 0.75, -0.25, 0.25, -0.5, 0.5, -1.0, -0.25, 1.0, 1.0, 0.0, -1.0, 0.0, -0.75, -1.0, -0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -1.0, 0.0, 0.25, 0.5, -0.75, 0.5, 0.25, -0.5, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.25, -0.25, 0.5, 0.5, 0.0, 0.25, 0.0, 1.0, 0.5, -0.25, 0.75, -0.25, -0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 0.0, -0.5, 1.0, -0.75, 1.0, 0.0, 0.5, -0.5, -1.0, 0.0, -1.0, -0.75, 1.0, 0.5, 0.5, 0.5, -0.75, -1.0, -0.75, 1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 1.0, 0.75, -0.25, -0.5, 0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.25, 1.0, ]);
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device70.destroy();
    device90.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array16 = new Float32Array([1.0, -1.0, 1.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, -1.0, -0.75, 0.25, 1.0, 1.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.25, 0.75, 0.25, 0.75, -0.25, 0.0, 0.0, 0.5, 0.25, 0.75, 0.0, -0.25, -1.0, -1.0, 0.5, -0.25, 1.0, 0.0, -0.25, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 0.75, -0.5, -1.0, 0.5, 0.5, 0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 1.0, -0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, -0.75, 0.75, 0.5, -0.25, 1.0, ]);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const array17 = new Float32Array([0.25, -0.5, -0.75, -0.75, 0.5, 0.75, -0.75, 0.5, 0.0, 0.0, -0.25, -1.0, -0.75, 1.0, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, -0.75, -0.25, 0.5, -1.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.25, 0.75, 0.25, 0.5, 0.75, 0.25, -1.0, 1.0, -0.5, 0.25, 1.0, -1.0, -0.5, -0.75, -1.0, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -1.0, -0.75, 0.0, 0.0, 0.25, -1.0, -0.75, 0.5, -0.5, -0.5, -0.75, 0.25, 0.0, 0.5, 0.0, -1.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 0.25, 0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -0.75, 0.5, -1.0, 0.75, 1.0, -0.75, 0.5, 0.5, 1.0, 1.0, -1.0, -0.75, ]);
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
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    texture1100.destroy();
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    const array18 = new Float32Array([0.5, 0.25, -0.5, -0.25, 0.25, 0.0, 1.0, 0.25, -0.5, 0.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 0.5, -0.5, -0.25, -0.75, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -0.75, 0.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.75, 0.5, -0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 0.25, -0.25, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 0.25, 0.25, -1.0, 0.25, 0.25, 0.25, 0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.75, -0.75, 0.5, -1.0, 0.75, -0.75, -1.0, -1.0, 0.0, 0.75, -0.25, -1.0, -0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, 1.0, 0.25, -0.25, -0.25, -0.25, ]);
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    query1200.destroy()
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1001]
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    render_bundle_encoder1101.insertDebugMarker("marker");
    
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1001]
    });
    device100.destroy();
    device120.destroy();
    
    
    
    
    
    device110.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const array19 = new Float32Array([0.0, 0.25, 0.0, -1.0, 1.0, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, 1.0, -1.0, 0.75, 0.0, -0.25, 0.75, 0.5, 1.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.25, 0.5, 0.5, 0.75, -1.0, -0.5, 0.5, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -0.25, -0.25, 0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 1.0, 0.5, 0.25, 0.0, -0.5, 1.0, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, -0.75, -1.0, -0.5, -0.5, 0.5, -1.0, -0.75, 1.0, -0.25, 0.75, -0.25, -0.5, -0.75, 1.0, -0.75, 0.0, 0.0, 0.25, -0.5, -0.75, 0.25, -1.0, -1.0, -0.75, 0.75, 0.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.0, 0.25, -0.5, 0.5, ]);
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
}