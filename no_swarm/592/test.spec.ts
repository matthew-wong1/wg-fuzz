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
    const array0 = new Float32Array([0.0, -0.25, 0.25, 0.75, -0.25, -0.75, 1.0, 0.0, 0.75, 0.75, 0.0, 0.75, 0.75, 0.0, 0.75, 0.5, 0.75, 0.0, -0.25, -1.0, -0.75, 0.0, -0.25, 0.25, -0.5, -1.0, 0.75, 1.0, -0.5, -0.25, 0.0, 1.0, -1.0, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.0, 0.25, -1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -0.5, -0.5, -1.0, 0.75, 0.75, 0.75, 0.5, 0.25, 0.25, -0.5, 0.5, -0.5, 0.25, -1.0, 0.0, 0.75, -0.75, -0.5, 0.0, 0.5, 0.25, -0.25, -0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.0, 0.25, 0.0, -1.0, -0.75, 0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-0.5, -0.75, -1.0, 0.25, 0.25, -0.75, 0.25, -0.5, 0.5, -0.25, -0.25, -1.0, -0.25, -0.25, 1.0, 1.0, -0.75, -0.75, -0.5, 0.5, -0.25, -0.75, -1.0, -0.25, -0.25, 0.0, 0.0, 0.5, -1.0, 0.0, 0.75, -0.75, 0.75, -1.0, -0.25, -1.0, 0.0, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.5, -0.25, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 0.5, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, -1.0, 0.25, 0.5, -0.5, 1.0, 0.75, 0.0, -0.25, -0.25, 0.25, -0.5, 0.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 0.75, -1.0, -0.25, -0.75, -0.75, 0.75, -0.75, 1.0, 0.75, 0.25, -0.25, 1.0, 0.5, 0.25, 0.75, 1.0, 0.75, ]);
    const array2 = new Float32Array([-1.0, -0.75, 0.5, 0.5, -0.75, 0.0, 0.0, 0.5, -0.75, -0.5, 0.5, 1.0, -0.25, 0.25, 0.0, -1.0, -1.0, -0.25, -1.0, -1.0, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, 0.0, -1.0, 0.25, 0.75, -1.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.75, -0.75, 0.0, 0.75, -0.75, -0.75, 1.0, -0.75, 0.5, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, 0.75, 0.75, 0.75, 0.25, 1.0, 1.0, -0.5, 0.75, -0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.25, 0.5, -0.5, 1.0, 0.5, -0.75, 0.5, -0.75, -0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, -0.25, -0.25, -0.5, 0.5, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, 0.5, ]);
    const array3 = new Float32Array([-1.0, -1.0, 0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, -0.5, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, -0.25, -0.5, -0.75, -0.5, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, -1.0, -0.75, 0.0, -1.0, 0.5, 0.0, -0.5, 0.25, 0.75, 0.0, -0.5, 0.0, 1.0, -0.75, 0.75, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, -0.5, 0.0, -0.25, 0.0, 0.25, 0.0, 0.5, -0.5, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 0.25, 0.75, 0.0, -0.75, 0.5, 1.0, 0.5, 0.25, 0.25, 0.25, -0.75, -0.5, -1.0, -0.5, -0.5, 0.0, -1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.5, 0.75, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array4 = new Float32Array([-0.75, 0.25, 1.0, 1.0, -0.5, 1.0, -0.25, 0.75, 0.75, 0.0, -0.5, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, -0.75, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, 0.0, 0.5, 0.75, 0.75, -1.0, 1.0, -0.25, 1.0, -1.0, -1.0, 0.0, -1.0, 0.5, -0.5, -0.25, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, -0.75, 0.0, -1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -1.0, 0.5, 0.5, -0.75, -1.0, 0.5, -0.75, 1.0, 0.75, -0.5, 0.5, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.25, 0.75, -0.75, 0.0, 1.0, 0.5, -1.0, -0.25, -1.0, -1.0, -0.25, 0.25, -0.25, -0.25, 0.0, 0.25, -0.25, -0.75, 0.0, 0.0, -0.75, 0.25, 0.0, 1.0, 1.0, 1.0, 0.25, -1.0, ]);
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const array5 = new Float32Array([0.5, -0.5, -0.75, 0.5, -0.75, 1.0, 0.0, -0.25, 0.5, -0.5, -0.75, 0.0, 0.5, 0.25, 1.0, -0.5, 0.0, 0.75, -0.75, -0.5, -1.0, 0.25, 1.0, -0.25, -0.25, -0.25, -0.25, 0.25, -0.25, 0.0, -0.25, 1.0, 0.0, 0.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, -0.25, -0.25, 1.0, 1.0, -0.25, -1.0, -0.5, -0.5, 0.5, -0.75, -1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.0, 0.5, -0.5, -0.75, 0.0, -0.75, -1.0, -1.0, 0.5, 0.0, 0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.0, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, 0.0, -1.0, 0.75, 0.5, -1.0, -0.5, -0.75, 0.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, 0.25, 0.25, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device50.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture101.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    texture200.destroy();
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query102.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    query100.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder102.insertDebugMarker("mymarker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder1010.insertDebugMarker("marker")
    query101.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array6 = new Float32Array([0.0, -0.75, 1.0, -0.5, 0.75, 0.75, -1.0, 1.0, -0.75, 0.75, -0.25, 1.0, 0.25, -0.25, -0.75, 0.75, 1.0, 0.5, 0.5, 0.5, 0.75, 1.0, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, 0.5, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -0.25, -0.5, -0.5, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 0.0, -1.0, 0.5, -0.75, -1.0, 1.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, -0.5, -1.0, 0.75, 0.5, 0.5, -1.0, -0.25, 0.25, 0.75, -1.0, 1.0, 0.5, -0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.5, 0.5, 0.0, 1.0, -0.5, -0.25, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, ]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
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
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder201.insertDebugMarker("marker");
    device00.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    command_encoder202.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder200.popDebugGroup();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    buffer201.destroy()
    const command_buffer201 = command_encoder201.finish();
    buffer101.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.popDebugGroup()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device60.pushErrorScope("out-of-memory");
    
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
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
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    query401.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device60.pushErrorScope("validation");
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2020.setPipeline(render_pipeline200);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("validation");
    command_encoder102.pushDebugGroup("mygroupmarker")
    
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    compute_pass_encoder6010.insertDebugMarker("marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    buffer200.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.insertDebugMarker("mymarker");
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device40.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query400.destroy()
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    query104.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
    
    query401.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    command_encoder102.insertDebugMarker("mymarker");
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
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
    
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    device10.pushErrorScope("internal");
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    texture600.destroy();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query104.destroy()
    query102.destroy()
    command_encoder603.pushDebugGroup("mygroupmarker")
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
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    buffer400.destroy()
    
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
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_pass_encoder2020.setStencilReference(1);
    command_encoder603.popDebugGroup()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    query402.destroy()
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder604.insertDebugMarker("mymarker");
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder602.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    command_encoder604.pushDebugGroup("mygroupmarker")
    buffer205.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query400.destroy()
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    query401.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const array7 = new Float32Array([1.0, 1.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.75, -0.25, 0.0, -1.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.75, 0.25, -0.25, -1.0, -0.5, 1.0, -0.75, 1.0, -0.25, 0.0, 0.25, -0.25, 0.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 1.0, 1.0, 1.0, -0.5, 0.0, -0.75, 0.5, -1.0, -0.5, -0.75, 0.5, -0.75, 0.0, 0.0, -0.75, -0.5, -0.5, 1.0, 0.0, 1.0, -0.75, 0.25, -0.5, -0.25, -1.0, -0.75, -0.25, -1.0, -0.5, -0.5, 0.0, -1.0, 0.75, 0.0, 0.25, 0.25, -0.5, 1.0, 1.0, -0.25, -0.5, -0.75, -0.75, -0.75, 1.0, -0.5, 0.5, 0.5, -1.0, -0.25, 1.0, 0.0, 0.5, -0.75, 0.25, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    device70.pushErrorScope("validation");
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    buffer202.destroy()
    
    
    
    
    query402.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device40.pushErrorScope("internal");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder7000.insertDebugMarker("marker")
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder6010.insertDebugMarker("marker")
    query600.destroy()
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder600.setPipeline(render_pipeline600);
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer206.destroy()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const render_pass_encoder6030 = command_encoder603.beginRenderPass({
        label: "render_pass_encoder6030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query600
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder6050 = command_encoder605.beginRenderPass({
        label: "render_pass_encoder6050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
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
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6030.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
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
    
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_pass_encoder2040.setPipeline(render_pipeline200);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    texture602.destroy();
    command_encoder701.insertDebugMarker("mymarker");
    render_pass_encoder2050.setPipeline(render_pipeline202);
    
    buffer203.destroy()
    buffer204.destroy()
    render_pass_encoder6030.pushDebugGroup("group_marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    query700.destroy()
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.popDebugGroup();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    device80.pushErrorScope("out-of-memory");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    query401.destroy()
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_pass_encoder2050.setStencilReference(1);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const array8 = new Float32Array([0.25, -0.75, 0.5, -1.0, -1.0, 0.25, 0.5, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, -0.25, 0.75, -0.75, -0.75, -0.5, -0.25, 0.25, 0.5, -1.0, 0.0, -0.75, -0.75, 1.0, -0.25, 1.0, -0.75, -0.75, 0.75, -0.75, -1.0, -0.5, 0.25, 0.25, -0.75, 0.25, 0.25, 0.75, 0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 0.0, -0.75, 0.75, -0.25, 0.25, 0.0, -0.25, 0.75, -0.75, -0.5, -0.75, -0.75, -0.75, 0.0, -0.75, -0.75, -1.0, -1.0, 0.25, 0.5, 0.5, -1.0, -0.75, 0.25, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, -0.5, -0.25, 0.5, 0.75, -0.5, 0.25, -0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 0.5, 1.0, -0.5, -1.0, 0.25, -0.25, 1.0, ]);
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6040.insertDebugMarker("marker")
    texture202.destroy();
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder6050.executeBundles([])
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder6030.popDebugGroup();
    device60.pushErrorScope("out-of-memory");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
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
    
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder200.draw(3);
    render_pass_encoder2070.setPipeline(render_pipeline202);
    render_bundle_encoder801.insertDebugMarker("marker");
    const compute_pass_encoder2080 = command_encoder208.beginComputePass({ label: "compute_pass_encoder2080" });
    render_pass_encoder6050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2060.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder2060.setPipeline(render_pipeline200);
    
    compute_pass_encoder2080.setPipeline(compute_pipeline200);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.setPipeline(render_pipeline402);
    buffer207.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    render_pass_encoder2050.insertDebugMarker("marker");
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    query402.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    texture601.destroy();
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    query104.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6050.setPipeline(render_pipeline600);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6030.setPipeline(render_pipeline601);
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder7010.insertDebugMarker("marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer401,
        0
    )
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    
    
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

    render_pass_encoder2020.setBindGroup(0, bind_group203);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query800.destroy()
    render_pass_encoder2020.popDebugGroup();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group204);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.popDebugGroup()
    render_pass_encoder2050.setVertexBuffer(0, buffer200);
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
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
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

    render_pass_encoder6050.setBindGroup(0, bind_group601);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_pass_encoder6030.setBindGroup(0, bind_group602);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group205);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2015, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2015, 0);
    render_pass_encoder2000.draw(3);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2070.setBindGroup(0, bind_group206);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group207);
    render_pass_encoder2050.draw(3);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    const command_buffer400 = command_encoder400.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2000.end();
    compute_pass_encoder6040.popDebugGroup()
    render_pass_encoder2070.setVertexBuffer(0, buffer200);
    render_pass_encoder2070.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group208);
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder2030.end();
    render_pass_encoder2050.end();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2070.end();
    render_pass_encoder2020.end();
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2040.setVertexBuffer(0, buffer200);
    render_pass_encoder2040.draw(3);
    command_encoder202.popDebugGroup()
    command_encoder203.popDebugGroup()
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    compute_pass_encoder2080.setBindGroup(0, bind_group209);
    compute_pass_encoder2080.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer207, ]);
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder2080.end();
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2060.setVertexBuffer(0, buffer200);
    render_pass_encoder2060.drawIndirect(buffer2015, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2040.end();
    render_pass_encoder2060.end();
    const command_buffer208 = command_encoder208.finish();
    device20.queue.submit([command_buffer208, ]);
    const command_buffer204 = command_encoder204.finish();
    const command_buffer203 = command_encoder203.finish();
    const command_buffer206 = command_encoder206.finish();
    device20.queue.submit([command_buffer204, ]);
}