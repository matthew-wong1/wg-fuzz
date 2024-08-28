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
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([0.5, -0.75, 0.5, 0.75, 1.0, -0.75, -0.5, -0.5, 0.25, -1.0, 0.0, -0.75, -1.0, 0.75, 0.75, -0.75, 0.25, -1.0, -0.25, -1.0, -0.5, 0.75, -0.75, -0.25, -1.0, 1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.25, 1.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.25, 0.75, -0.25, 0.5, -1.0, -0.75, -0.25, -0.5, -1.0, 0.0, 0.75, -0.75, -1.0, -1.0, 0.75, -0.75, 0.75, 0.75, -1.0, -0.5, -0.5, 1.0, 0.5, -0.5, 1.0, -0.5, 0.5, 1.0, -0.75, -1.0, -1.0, -0.25, 0.0, 0.0, -0.5, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 0.25, -1.0, -1.0, -1.0, 0.0, -0.75, -1.0, 1.0, 0.0, 0.75, 0.0, 1.0, 0.25, -0.5, 1.0, 0.5, 0.5, 0.75, 1.0, 0.75, -0.5, ]);
    const array1 = new Float32Array([1.0, -1.0, 0.25, 0.25, -0.5, 0.5, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, 1.0, -0.75, 1.0, -0.75, 0.25, -1.0, -0.75, 1.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 1.0, 0.25, 0.25, -0.75, -1.0, 0.75, -0.25, 0.0, -0.25, -1.0, 1.0, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.75, 0.0, 0.0, -0.5, 0.5, 1.0, -0.75, 0.0, 1.0, -0.75, 0.5, -0.25, 0.25, -1.0, -0.75, 0.5, -0.25, -1.0, 0.75, -0.75, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 0.75, 1.0, 0.0, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, 0.25, 0.25, -1.0, 0.5, 0.75, -0.25, 0.75, 1.0, 0.5, 0.75, 1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array2 = new Float32Array([0.75, -0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.25, -0.25, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, -0.5, -1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.75, -0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.0, -0.25, 0.5, 1.0, -0.75, 0.5, 0.5, -1.0, -1.0, 0.25, 0.5, -1.0, -1.0, 0.5, -0.25, 0.75, 0.5, 0.75, 0.5, 0.25, 0.25, 0.0, -0.5, -0.25, -1.0, 0.25, -0.75, -0.75, -0.75, 0.75, -0.25, -0.5, 0.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, 0.75, 0.0, 0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, 0.25, 0.75, -0.75, -0.5, -0.5, 0.5, -0.25, 0.5, -0.5, 0.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.pushErrorScope("internal");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array3 = new Float32Array([-0.25, 0.0, -1.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.5, -0.25, 1.0, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, 1.0, -0.5, 0.25, 0.25, 0.75, 0.5, 0.25, -1.0, 1.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.0, -0.5, -0.75, -1.0, 0.75, 0.5, -0.25, -0.25, -0.5, -0.5, 0.0, -0.75, 1.0, 0.0, 0.25, 0.0, -0.25, -0.5, 0.25, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, -0.5, 1.0, 0.5, -0.25, 0.75, 0.5, -0.5, -0.5, 0.75, 0.0, 0.25, 0.75, -0.5, -0.75, 0.0, 0.25, 1.0, 1.0, -0.5, -0.5, -1.0, 0.0, 1.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.5, -1.0, 0.0, 0.0, 1.0, -0.25, 1.0, -0.25, -0.25, 1.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, ]);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    buffer000.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array4 = new Float32Array([1.0, 0.5, -0.25, -0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 0.0, 0.75, -1.0, 0.25, -0.25, -0.25, -0.5, 1.0, 0.75, -1.0, 1.0, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 1.0, -0.25, 0.5, -1.0, 1.0, -0.25, 0.25, -0.75, -1.0, 0.75, 1.0, -0.25, 0.25, -1.0, -1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.25, -0.75, 0.25, -0.5, 1.0, -0.5, 0.0, -0.75, 0.75, 0.0, -1.0, 0.5, -1.0, 0.0, -1.0, -0.25, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, 1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, 0.0, ]);
    
    const array5 = new Float32Array([-1.0, 0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, 0.75, -0.25, -0.75, 0.5, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.0, 0.5, 0.75, -0.25, 1.0, 0.5, -0.75, 0.0, 0.5, -0.5, -1.0, 0.75, -0.25, 0.25, 0.75, -0.75, 0.75, 0.0, -0.5, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, -1.0, -0.25, -0.75, 0.25, -0.25, -1.0, 0.25, -0.75, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, 1.0, 0.5, -1.0, -0.25, 0.0, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.5, -0.75, -1.0, -0.25, -1.0, 0.25, -1.0, -0.25, -0.5, 0.5, 0.5, -0.25, -0.5, 1.0, 0.75, 0.0, 1.0, 1.0, -0.25, 0.5, -0.75, -0.25, 0.5, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device00.pushErrorScope("internal");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    buffer001.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder200.insertDebugMarker("mymarker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const array6 = new Float32Array([0.0, -0.5, 1.0, -0.75, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, -0.75, 1.0, 0.25, -1.0, 0.25, -0.5, -0.25, -1.0, -0.25, 1.0, 0.5, -0.25, -1.0, -0.5, 1.0, 1.0, -0.25, -0.75, 0.0, 0.75, -0.25, -1.0, 0.25, 0.75, -0.25, -0.25, 0.25, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, 0.75, -0.5, 1.0, 0.25, -0.5, 0.25, -0.25, -0.25, -0.25, 0.75, 0.25, -0.5, 1.0, 0.0, -1.0, -1.0, 0.25, 0.25, -0.75, -0.5, 0.0, 0.0, 1.0, 0.75, -0.75, -1.0, 0.5, -0.25, 1.0, 0.75, 1.0, 0.0, -0.75, 0.75, 0.75, -0.5, -0.75, -0.5, -0.25, -0.75, -0.25, -0.25, -0.75, 0.0, -0.5, 0.25, -0.5, -1.0, 0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 0.0, 0.25, -0.75, ]);
    command_encoder101.clearBuffer(buffer100);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.pushErrorScope("validation");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
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
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
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
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder101.clearBuffer(buffer100);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    command_encoder101.clearBuffer(buffer100);
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query100.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    buffer100.destroy()
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query001.destroy()
    
    device40.destroy();
    buffer300.destroy()
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    query101.destroy()
    
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
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    
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
    command_encoder200.clearBuffer(buffer200);
    device30.pushErrorScope("validation");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.pushErrorScope("validation");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder002.popDebugGroup()
    command_encoder201.pushDebugGroup("mygroupmarker")
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    
    
    command_encoder200.clearBuffer(buffer200);
    
    command_encoder201.insertDebugMarker("mymarker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    command_encoder004.insertDebugMarker("mymarker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    command_encoder004.popDebugGroup()
    
    
    
    
    command_encoder101.popDebugGroup()
    
    
    command_encoder003.insertDebugMarker("mymarker");
    
    command_encoder200.insertDebugMarker("mymarker");
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder200.clearBuffer(buffer200);
    command_encoder002.popDebugGroup()
    command_encoder001.insertDebugMarker("mymarker");
    
    
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder005.insertDebugMarker("mymarker");
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query002.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("validation");
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device10.pushErrorScope("internal");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder001.popDebugGroup()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.pushErrorScope("internal");
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    query000.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    command_encoder001.insertDebugMarker("mymarker");
    
    
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
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder300.popDebugGroup()
    
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    query000.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder101.clearBuffer(buffer103);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array7 = new Float32Array([-0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.75, 1.0, -0.75, -0.75, -0.75, -0.25, -0.75, 0.75, -0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.0, 0.75, 0.0, 1.0, -1.0, -0.75, 0.75, -0.25, 1.0, 0.25, 0.5, -0.5, 0.25, -0.5, -1.0, 1.0, 0.0, 0.75, -0.75, 0.0, 1.0, 0.5, -1.0, -0.5, -0.25, -0.75, -1.0, -0.25, -0.75, 0.75, -1.0, 0.0, 0.5, -0.5, 0.25, -0.5, 0.75, -0.5, 1.0, 1.0, 1.0, 0.0, 0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -1.0, -1.0, -1.0, -0.75, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.25, -1.0, -0.75, 0.5, 0.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.75, -0.25, -0.25, -1.0, -0.5, -0.5, -1.0, ]);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
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
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    command_encoder201.popDebugGroup()
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    query003.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    buffer301.destroy()
    command_encoder003.pushDebugGroup("mygroupmarker")
    command_encoder001.insertDebugMarker("mymarker");
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder300.insertDebugMarker("mymarker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    query002.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.insertDebugMarker("mymarker");
    query200.destroy()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder002.popDebugGroup()
    query002.destroy()
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder302.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    command_encoder200.clearBuffer(buffer200);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder002.insertDebugMarker("mymarker");
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    command_encoder200.popDebugGroup()
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer101.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture005 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    query100.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture005 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query201.destroy()
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
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
    
    query000.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query500.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder102.popDebugGroup()
    command_encoder200.insertDebugMarker("mymarker");
    
    command_encoder102.pushDebugGroup("mygroupmarker")
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder100.clearBuffer(buffer103);
    
    device00.queue.writeTexture({ texture: texture005 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer701.destroy()
    device70.pushErrorScope("validation");
    query700.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder003.popDebugGroup()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder007.insertDebugMarker("mymarker");
    
    query202.destroy()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    device00.pushErrorScope("validation");
    
    command_encoder004.insertDebugMarker("mymarker");
    
    buffer200.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder004.insertDebugMarker("mymarker");
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    command_encoder101.clearBuffer(buffer103);
    query000.destroy()
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    query001.destroy()
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder000.popDebugGroup()
    command_encoder005.popDebugGroup()
    command_encoder001.popDebugGroup()
    command_encoder100.popDebugGroup()
    command_encoder200.popDebugGroup()
    command_encoder004.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.popDebugGroup()
}