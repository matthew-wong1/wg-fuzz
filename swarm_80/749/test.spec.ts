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
    
    
    
    
    const array0 = new Float32Array([-0.75, 0.0, 0.0, 0.0, -0.5, -1.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, -1.0, -0.5, 0.0, 0.5, -0.25, -0.5, -0.75, -0.5, -1.0, -1.0, -0.25, 0.75, -1.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.5, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, 0.5, 0.5, 0.25, 1.0, -0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 0.75, -1.0, 0.75, 1.0, -0.5, -0.75, 0.75, 1.0, 0.25, 0.25, -0.25, -1.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 0.5, 0.5, 1.0, -1.0, 0.5, 0.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.25, 0.0, -1.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.5, 0.0, -0.5, 0.0, -0.75, 0.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.5, 0.25, -0.5, -0.75, -0.5, 0.25, 0.75, -0.75, 0.5, 0.5, 0.75, -0.5, -0.25, -0.5, -0.5, 0.75, 1.0, -0.5, 0.5, 0.75, 0.0, 0.5, 0.25, 0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.75, -0.25, 0.75, -0.5, -0.5, -0.75, 1.0, -0.5, -0.75, 0.25, 0.5, -1.0, 0.75, -1.0, -0.75, 0.75, 0.0, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, -0.5, -0.5, -0.75, -0.5, 0.75, -0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 0.0, -1.0, -0.5, 0.25, 0.0, 1.0, -0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.75, 0.25, -1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -1.0, 0.5, -1.0, 0.0, 0.5, 0.75, 0.75, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array2 = new Float32Array([0.75, 0.0, -0.25, 1.0, -1.0, 0.5, 1.0, 0.25, 0.5, 0.75, 1.0, 0.75, -1.0, 0.75, -0.75, -0.5, 1.0, -1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 0.75, 0.75, 0.25, 0.25, 0.0, 0.0, -0.25, -0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 0.25, -1.0, 0.25, -0.75, 1.0, -0.25, 0.25, -0.75, 0.75, 0.75, 0.75, 1.0, 0.0, -0.75, 0.0, 0.0, -0.25, 1.0, -1.0, -1.0, 0.5, -0.25, -0.25, -0.25, 0.25, 0.0, -0.5, -0.5, 0.75, 0.5, -0.25, -0.25, -1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 0.0, -1.0, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 1.0, 0.25, 0.0, 0.25, -0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 1.0, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    query200.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query201.destroy()
    device30.destroy();
    buffer401.destroy()
    device40.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query101.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    query500.destroy()
    device50.destroy();
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
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
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder100.pushDebugGroup("mygroupmarker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query101.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder201.insertDebugMarker("mymarker");
    query103.destroy()
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    query200.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const array3 = new Float32Array([0.0, 0.0, 0.75, 0.25, 0.75, 1.0, 0.0, -1.0, -1.0, -1.0, 0.0, 0.75, 0.25, -0.5, 0.25, -0.75, 0.75, -0.5, -0.25, -1.0, -0.5, -0.5, 0.25, -0.75, -1.0, 0.0, 1.0, 0.25, 0.5, 0.75, 0.25, 0.75, -0.5, -0.5, -0.5, -1.0, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.0, -0.75, -0.75, -0.5, 0.0, 0.0, 0.5, -0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.0, 0.0, 0.25, 1.0, 0.75, -0.5, 0.25, -1.0, -0.75, -1.0, -0.75, 0.25, 0.0, -0.5, -0.25, 0.5, 0.25, -0.75, 0.25, -0.5, 0.75, 0.5, 0.75, 1.0, 1.0, -1.0, -0.75, 0.0, 0.25, -0.75, 1.0, 0.5, -1.0, 1.0, 0.0, 0.5, -0.75, 1.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.25, 0.75, ]);
    query202.destroy()
    query202.destroy()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    query200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const array4 = new Float32Array([-0.5, 1.0, -0.5, -0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 1.0, 0.75, -0.25, -0.25, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, 0.75, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -0.75, 0.5, -1.0, -0.75, 0.25, -0.5, -0.25, -1.0, -1.0, 1.0, 1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.0, -1.0, -0.5, -0.75, 1.0, -0.5, -0.25, -0.75, -0.75, 0.0, -0.5, 0.5, 0.0, -0.25, -0.25, -0.5, -0.25, -1.0, 0.75, 1.0, -0.25, 0.5, -0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.5, -0.5, -1.0, -0.5, -0.25, 0.5, 1.0, 0.25, 1.0, -0.25, -0.75, 0.5, -0.25, 0.25, -0.5, 0.5, -1.0, 0.25, 0.75, -0.5, -0.5, 1.0, -0.75, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    query203.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query104.destroy()
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer200.destroy()
    query202.destroy()
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
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    buffer201.destroy()
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    query203.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    query104.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query201.destroy()
    
    query102.destroy()
    
    device80.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    query202.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query100.destroy()
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query200.destroy()
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_bundle_encoder202.setPipeline(render_pipeline206);
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query105.destroy()
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline206.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    command_encoder600.pushDebugGroup("mygroupmarker")
    query202.destroy()
    query105.destroy()
    
    buffer202.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query100.destroy()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device70.destroy();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device90.destroy();
    
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query201.destroy()
    query104.destroy()
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    buffer205.destroy()
    query100.destroy()
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query203.destroy()
    query100.destroy()
    command_encoder103.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    
    
    buffer206.destroy()
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    compute_pass_encoder1020.popDebugGroup()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder602.clearBuffer(buffer600);
    
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder6010.popDebugGroup()
    render_bundle_encoder600.setPipeline(render_pipeline601);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    command_encoder602.insertDebugMarker("mymarker");
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
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
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder6000.popDebugGroup()
    
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    query201.destroy()
    
    query100.destroy()
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    render_bundle_encoder102.insertDebugMarker("marker");
    query105.destroy()
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder104.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer203.destroy()
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_bundle_encoder200.setBindGroup(0, bind_group202);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    buffer204.destroy()
    
    
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
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
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder6000.insertDebugMarker("marker")
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    command_encoder603.insertDebugMarker("mymarker");
    command_encoder603.clearBuffer(buffer600);
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder202.insertDebugMarker("mymarker");
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    
    query102.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    command_encoder105.insertDebugMarker("mymarker");
    
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer2011,
        0
    )
    buffer208.destroy()
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer102,
        0
    )
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder202.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder6020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer2011,
        0
    )
    
    query601.destroy()
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    compute_pass_encoder6020.insertDebugMarker("marker")
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    query103.destroy()
    query105.destroy()
    compute_pass_encoder6030.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    
    
    
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    
    
    buffer602.destroy()
    
    query101.destroy()
    query202.destroy()
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer102,
        0
    )
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    command_encoder104.insertDebugMarker("mymarker");
    query600.destroy()
    
    compute_pass_encoder6010.insertDebugMarker("marker")
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    query102.destroy()
    query100.destroy()
    
    
    query104.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    query202.destroy()
    query201.destroy()
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    buffer104.destroy()
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query202.destroy()
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder6030.popDebugGroup()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    command_encoder104.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    query103.destroy()
    const array5 = new Float32Array([-0.75, -0.25, 0.25, 1.0, -0.75, 0.0, 0.25, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, 0.25, 0.25, -0.75, 0.0, -0.5, -1.0, -0.25, 1.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.0, -0.5, 1.0, 1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.25, 0.5, 0.0, 0.0, -0.75, 0.75, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.5, 0.5, -0.5, -0.75, 0.75, 0.0, 0.5, -0.5, 1.0, -0.75, -0.5, 1.0, 0.25, 0.75, -0.25, 0.5, -0.5, -1.0, 1.0, 0.75, -0.25, 0.75, -1.0, -0.75, -0.25, 0.5, -0.25, -0.25, 0.5, -0.25, -0.25, -1.0, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, -0.25, 0.75, 0.25, 0.25, 0.25, 0.25, 1.0, -0.5, 0.5, -0.25, ]);
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
}