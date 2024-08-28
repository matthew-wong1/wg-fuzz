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
    
    
    
    
    const array0 = new Float32Array([0.5, -0.5, -0.75, 1.0, 0.5, 0.5, 0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 0.5, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, -0.5, -0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 1.0, -0.5, -0.5, 0.25, -0.75, 0.5, 1.0, -0.25, 1.0, 0.0, 1.0, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 1.0, -0.75, 0.5, 1.0, -1.0, -1.0, -0.25, -0.25, 0.5, -1.0, 1.0, 0.75, -0.5, -0.5, -1.0, 0.0, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, -0.75, 1.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.5, 1.0, 0.0, 0.0, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, -0.5, -0.25, 0.5, 1.0, 0.75, -0.5, -1.0, 0.0, -0.25, -0.25, 0.0, 0.25, -0.75, 0.25, -0.75, 0.0, ]);
    
    const array1 = new Float32Array([-0.25, 0.75, 0.75, 1.0, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, 0.25, 0.5, -1.0, -0.75, 0.75, -0.5, 1.0, -0.25, 0.5, -1.0, -0.25, 0.0, -0.25, 0.5, -0.75, -0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.75, 1.0, -1.0, -0.25, 1.0, 0.5, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.25, 1.0, 1.0, 0.75, -0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, -0.75, -0.5, 0.0, 0.0, 0.25, 1.0, -1.0, -0.5, 1.0, 1.0, -1.0, -0.25, 0.25, -0.25, -0.75, 0.25, -0.75, 0.75, -0.75, 0.5, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.0, 0.5, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, -1.0, ]);
    const array2 = new Float32Array([-0.25, 0.25, 0.5, -0.75, -0.75, -0.5, 0.0, 0.0, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 0.0, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.5, -0.5, 0.0, 0.25, -0.25, 1.0, 0.75, -0.75, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.25, -0.75, 0.75, 0.25, 0.0, -0.5, 0.0, -0.25, 0.25, 0.0, -0.75, 1.0, -0.25, 0.0, 1.0, 0.25, -0.5, 0.25, 0.0, 1.0, 0.5, 0.5, -0.5, -0.25, 0.25, 0.75, 0.25, -0.25, 0.0, 0.5, -0.5, 0.75, 1.0, 0.0, -1.0, 0.75, -0.5, 1.0, 0.25, 0.0, -0.75, -0.5, -1.0, 0.25, -0.25, 0.5, -0.25, 1.0, -0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.25, -0.75, 0.75, 0.25, ]);
    
    const array3 = new Float32Array([0.75, -1.0, 1.0, -0.25, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 1.0, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, -0.25, 1.0, 0.0, 0.5, 1.0, 0.5, 1.0, -0.5, 0.5, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, 1.0, 0.75, -0.25, -1.0, 0.5, -1.0, 0.0, 0.75, -0.75, 0.5, -0.25, 0.5, 0.5, 0.75, 0.0, 0.5, -0.75, 0.25, 0.25, -1.0, -0.5, 0.5, 0.5, -0.75, 1.0, 1.0, -0.5, -0.25, 0.5, -0.5, 0.25, -0.25, 0.25, 0.25, 1.0, 0.75, -0.75, -0.5, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.0, -0.75, -0.25, 0.0, -0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([-0.75, 0.75, 0.25, 1.0, 0.75, 0.5, 0.25, 0.25, -0.5, -1.0, -1.0, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.5, -0.75, 0.75, 0.5, 0.25, -1.0, 1.0, -0.75, -1.0, 0.75, 0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -0.25, -0.75, -0.75, -1.0, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.25, 0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 1.0, 0.75, 0.5, 0.75, -0.75, 1.0, -0.25, 0.5, 0.0, 0.75, 0.0, -0.5, 0.25, -1.0, 1.0, -0.5, 0.75, 0.0, -0.75, 1.0, 0.25, -0.25, -0.25, -0.5, 0.5, 0.5, -0.5, 0.5, 0.75, -0.75, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, -0.25, -0.75, 1.0, 0.5, -0.75, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.25, 0.5, 0.75, 0.25, -0.75, 0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -0.5, -0.75, -0.5, 0.75, 0.5, -1.0, -0.5, -0.75, 0.75, -0.5, -0.75, 0.75, 0.0, -0.5, -1.0, 0.75, 0.0, -0.25, 0.5, 1.0, -0.5, 0.25, 1.0, 0.0, 1.0, -0.5, -0.75, 0.0, -1.0, -0.25, -0.75, 0.75, 1.0, 1.0, -0.5, 1.0, -0.75, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.0, 0.25, 0.75, 0.5, 0.25, -0.5, 0.75, 0.0, 0.5, 0.0, -1.0, 0.75, 1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, -1.0, -0.25, -0.25, 0.25, 0.25, -0.75, -0.75, 1.0, 1.0, 0.25, -0.5, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array6 = new Float32Array([0.0, 0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.5, -1.0, 0.25, 0.25, -0.75, 0.0, 0.75, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, 1.0, 0.25, -0.25, -1.0, -0.25, 0.5, 0.0, -0.5, -0.5, -1.0, 0.0, 0.25, -1.0, 0.5, 0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.0, -0.75, -0.5, -0.25, -0.5, 0.0, -0.5, -0.75, -0.75, -0.75, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, 0.75, -1.0, 1.0, 0.0, 0.25, -0.25, -0.5, -0.25, 1.0, 1.0, -0.25, 0.25, -0.5, 0.5, 0.75, 0.25, -0.5, -0.75, 1.0, 0.75, 0.25, -1.0, -1.0, -0.25, -0.5, 0.75, 0.0, 0.75, 0.5, 0.75, 0.25, -1.0, -0.75, -0.75, -0.25, 0.25, 1.0, 0.5, 0.75, -0.75, 1.0, ]);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.25, -0.25, -0.25, -1.0, 0.5, 0.5, 1.0, 0.25, -0.5, 1.0, 1.0, 0.0, -0.5, 0.75, -1.0, -0.5, -0.25, 0.5, 0.75, -0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, -0.5, -0.75, 0.0, 0.25, -1.0, 0.25, -1.0, -1.0, 0.0, 0.0, 0.75, -0.25, 0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 0.25, -0.75, -1.0, -0.75, -1.0, 0.0, 0.25, 0.5, 1.0, 0.75, -1.0, -0.25, -0.75, -1.0, 0.0, 1.0, 1.0, 0.75, 0.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, 0.5, -0.5, -0.75, -0.25, 0.25, -0.25, -0.75, -0.5, -0.75, -0.5, -1.0, 0.5, -0.75, -0.25, -0.5, -0.75, 0.75, -0.5, -0.25, 0.25, 0.75, -0.5, -0.75, -0.25, 0.25, -0.5, 1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
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
    render_bundle_encoder101.popDebugGroup();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query200.destroy()
    query200.destroy()
    const array8 = new Float32Array([0.75, -0.5, 0.25, -0.25, 0.5, 0.5, 0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 0.25, -0.5, -0.5, -0.5, 0.0, 0.25, 1.0, 0.25, 0.0, -0.25, -0.5, 0.0, 0.75, -1.0, 0.75, 0.0, 0.0, 0.5, 0.0, 0.5, -0.75, -0.75, 0.0, 0.75, -1.0, 0.5, 0.75, -0.25, 0.25, -0.25, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, 1.0, -1.0, 0.25, 0.5, 1.0, 0.5, -1.0, -0.25, 0.25, -0.75, 0.5, 0.0, 0.5, 0.25, 1.0, 1.0, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.25, -0.25, -0.75, -1.0, -1.0, 0.0, 1.0, -0.5, -0.75, 0.25, 0.0, -0.75, 1.0, 0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.75, 0.75, 0.0, -1.0, ]);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    query100.destroy()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    query100.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query000.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture100.destroy();
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    buffer000.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.25, 0.25, -0.75, -0.5, -0.5, -1.0, -0.5, 0.0, -0.75, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.25, 0.75, -0.25, 0.5, 1.0, 0.75, 0.5, 0.25, 0.75, -0.75, 0.5, 0.25, 0.25, -0.25, -0.25, -0.5, -0.25, 0.0, -0.5, 0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.75, -0.25, 0.25, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 1.0, -1.0, 1.0, 0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.5, 0.5, -0.75, 1.0, 0.5, -1.0, 0.5, -0.75, -1.0, -0.25, 0.25, 1.0, -0.25, -0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -0.75, 0.0, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.0, -0.5, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.popDebugGroup()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
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
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query001.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer101.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    query500.destroy()
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    command_encoder003.insertDebugMarker("mymarker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer102.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder1010.executeBundles([])
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    texture102.destroy();
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    render_pass_encoder1010.executeBundles([])
    query000.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    query000.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device50.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
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
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query001.destroy()
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    buffer100.destroy()
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
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
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group101);
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer106.destroy()
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer104, 0, array6, 0, array6.length);
    
    
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
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer104.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
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
    
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture103 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query000.destroy()
    
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device00.queue.submit([command_buffer001, ]);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.setStencilReference(1);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
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
    
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder102.insertDebugMarker("marker");
    texture103.destroy();
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    query002.destroy()
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const command_buffer300 = command_encoder300.finish();
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.submit([command_buffer300, ]);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
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
    render_bundle_encoder300.popDebugGroup();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    const command_buffer301 = command_encoder301.finish();
    texture000.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    device10.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout108,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    render_bundle_encoder102.popDebugGroup();
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
    
    
    buffer105.destroy()
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1010.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout106,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    render_bundle_encoder100.setVertexBuffer(0, buffer107);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    buffer103.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    device30.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture105.destroy();
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    buffer109.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture101.destroy();
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeTexture({ texture: texture106 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer004.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture106.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout108,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer004 = command_encoder004.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1012, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder1010.setVertexBuffer(0, buffer107);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    const command_buffer101 = command_encoder101.finish();
}