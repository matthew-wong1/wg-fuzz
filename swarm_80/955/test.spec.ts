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
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array0 = new Float32Array([-0.25, 0.75, 1.0, -0.75, 0.25, 0.0, -0.75, -0.75, -0.5, -1.0, -0.75, -1.0, 0.5, -1.0, -0.25, 0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.0, -0.75, -1.0, -0.25, 0.25, -0.75, -1.0, 1.0, 0.25, 1.0, 0.5, -0.5, 0.25, -0.25, 0.5, 0.5, -0.75, 0.0, 1.0, -0.5, 0.5, -0.5, -0.5, 1.0, -0.75, 0.75, 0.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, 0.0, -1.0, -0.5, 0.5, 0.0, -0.75, -0.75, -1.0, 0.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, -0.25, -1.0, 1.0, -0.5, -0.5, 0.25, 1.0, -0.25, -0.75, -1.0, 0.25, 0.75, -0.75, -0.25, 0.5, -0.25, 0.5, 0.5, 0.0, 0.75, -1.0, -0.75, -0.5, 0.75, -0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const array1 = new Float32Array([-0.5, 0.0, 1.0, -0.75, -0.25, -0.75, 0.5, -0.75, -1.0, -0.25, -0.5, 0.0, -0.75, 0.0, -0.25, 0.0, 0.25, -0.75, 0.25, 1.0, 0.5, -0.5, -0.5, 1.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.25, -1.0, -0.75, 0.25, -0.75, -1.0, -0.5, 0.0, 0.5, 0.5, 0.0, 1.0, -0.75, 0.5, 0.5, -0.5, 0.75, 1.0, 0.25, 0.75, -0.5, 0.75, 0.75, -0.25, -1.0, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, 0.5, 0.25, -0.75, -0.5, -0.5, -0.25, 0.0, -0.75, -0.25, 0.5, -0.75, -0.75, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.5, 0.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 0.0, 0.25, 0.5, -0.25, 0.5, -0.75, 0.25, -0.75, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_buffer000 = command_encoder000.finish();
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-0.25, -0.25, -0.75, -0.75, 0.25, -0.5, -0.25, 0.5, -0.5, -0.25, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, -0.5, 0.5, 0.75, 0.0, -0.75, -0.75, -0.75, -0.25, -0.75, -0.25, 0.5, 0.75, -1.0, 0.75, 0.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.0, -0.25, -1.0, -0.5, 0.25, -1.0, 0.75, 0.25, 0.5, -0.5, -1.0, -0.5, 0.5, 0.25, 0.25, -0.5, 0.25, -0.25, -0.75, -0.75, 0.5, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, -0.25, -1.0, 1.0, -0.5, -0.25, -0.25, -0.75, -0.25, -0.25, -1.0, 0.0, 0.0, 0.0, 0.0, -0.5, 1.0, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, 1.0, 0.5, -0.75, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 1.0, -0.5, -0.5, 1.0, -0.75, ]);
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("out-of-memory");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder000.popDebugGroup();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer001.destroy()
    buffer002.destroy()
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    const array3 = new Float32Array([1.0, 1.0, 0.5, -0.75, -0.75, 0.25, 0.0, 0.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.75, -0.25, -0.25, 0.75, 0.0, -0.75, -1.0, 0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -0.5, -0.5, 0.25, 0.75, 0.5, -1.0, 0.75, -0.75, -0.75, 1.0, 1.0, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.25, 0.25, 0.75, -0.75, -0.25, 1.0, 0.5, -0.25, 0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, -0.75, 0.25, 0.75, -0.25, 0.5, 1.0, -1.0, 0.0, -0.5, 1.0, 0.5, -1.0, -0.25, -0.25, -0.25, 0.0, 0.75, 0.75, -0.25, -0.75, 1.0, -0.75, -1.0, -0.75, 0.5, 0.25, 0.5, -0.25, 1.0, 0.0, 0.0, -0.25, -0.75, 0.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder001.popDebugGroup()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([0.5, -0.75, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, 0.0, 0.5, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, -0.75, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.75, 1.0, -0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, -0.5, -0.75, -0.75, -0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 0.0, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.5, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 1.0, -0.25, 0.25, 1.0, 0.0, 0.5, 0.25, 0.25, 0.5, -0.5, ]);
    
    buffer000.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const array5 = new Float32Array([0.75, -1.0, -0.5, 0.25, 0.0, 0.5, -0.75, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, 0.5, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.75, 0.0, 1.0, -0.75, -0.75, 1.0, 0.0, 1.0, -1.0, -0.5, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.5, 0.75, -1.0, -0.5, -1.0, -0.75, 0.25, 0.25, 0.75, -1.0, -0.25, 0.75, 0.75, -1.0, 0.75, -0.5, -0.5, 0.25, -0.25, -1.0, 0.75, 0.5, 0.5, 0.0, 0.0, 0.25, 0.75, 0.5, -1.0, -1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.5, 0.0, -1.0, 0.0, 0.25, 0.0, 0.0, -1.0, 0.25, 0.75, -0.5, -0.25, 1.0, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-0.75, -0.75, 0.5, -1.0, 0.5, 0.75, -1.0, 0.5, -0.75, 0.75, -1.0, 0.25, 1.0, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, -1.0, 0.0, 0.5, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, -0.75, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, -0.25, 0.75, 0.0, 0.75, 0.5, 0.75, 1.0, 0.0, -0.25, -0.25, 0.5, 0.25, -0.5, 0.75, 1.0, -0.5, 0.0, 1.0, 1.0, 1.0, -1.0, -0.5, -0.5, -1.0, -0.75, 0.5, 0.75, -0.5, 0.25, -0.75, 0.0, 1.0, 0.0, 0.0, 0.0, -0.5, 0.0, -0.5, 0.0, -1.0, -0.75, 0.0, 0.75, 1.0, -0.5, 0.25, 0.25, 0.0, 0.5, 1.0, 0.0, 0.75, -0.5, 0.75, 1.0, 0.0, 0.25, 0.75, -0.5, ]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0020.popDebugGroup()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture000.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder0020.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer004.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device50.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array7 = new Float32Array([0.75, 0.75, 0.25, 1.0, 0.75, 0.75, 0.75, -1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.75, -1.0, 1.0, -0.75, -1.0, 0.5, -0.5, 0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.5, -0.25, -1.0, -1.0, -0.25, 0.5, 0.25, 0.75, -0.75, -1.0, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, -0.75, 0.5, 0.5, -1.0, 0.0, 0.5, 0.5, 1.0, -0.75, -0.75, -0.75, -1.0, -1.0, 0.25, 0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 1.0, 0.75, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.75, 0.75, -0.5, 1.0, 1.0, -0.25, 0.0, -0.5, 0.75, 0.75, -1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 0.0, -1.0, -0.25, -0.25, 0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    device00.pushErrorScope("validation");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    texture001.destroy();
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    compute_pass_encoder0010.popDebugGroup()
    device00.pushErrorScope("internal");
    
    buffer003.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    device40.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    render_bundle_encoder001.popDebugGroup();
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_bundle_encoder000.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer102.destroy()
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
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
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer007.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer006.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    device30.pushErrorScope("validation");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    device10.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    device40.destroy();
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    buffer008.destroy()
    device00.pushErrorScope("internal");
    
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.popDebugGroup()
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.popDebugGroup();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    device70.pushErrorScope("out-of-memory");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    buffer005.destroy()
    device80.pushErrorScope("out-of-memory");
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    command_encoder300.pushDebugGroup("mygroupmarker")
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query700 = device70.createQuerySet({
        label: "query700",
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
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    compute_pass_encoder0030.popDebugGroup()
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    buffer300.destroy()
    device80.queue.writeBuffer(buffer800, 0, array2, 0, array2.length);
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    render_bundle_encoder002.popDebugGroup();
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device70.destroy();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    command_encoder004.pushDebugGroup("mygroupmarker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device80.queue.writeBuffer(buffer800, 0, array4, 0, array4.length);
    texture002.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    buffer800.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer009.destroy()
    render_bundle_encoder001.popDebugGroup();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    buffer301.destroy()
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const array8 = new Float32Array([-1.0, 0.5, -0.75, 0.5, -0.5, 0.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, 0.0, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.75, 0.0, -0.5, 1.0, 1.0, -0.25, 0.25, 1.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, 0.5, 0.25, -0.5, 0.25, 0.25, 0.0, -0.25, 0.5, -0.5, 0.0, -1.0, 0.5, 0.75, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, -1.0, -1.0, -0.25, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -0.5, 0.75, -0.5, 1.0, 0.5, -1.0, 1.0, 0.75, -0.25, 0.5, -0.25, -0.25, 0.5, 0.25, -0.5, -0.75, -0.75, 0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 0.25, 1.0, -0.5, 0.25, 0.25, -0.75, -0.5, -1.0, 1.0, 0.0, 0.75, -0.5, 0.25, ]);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.pushErrorScope("internal");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder302.insertDebugMarker("marker");
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_bundle_encoder800.insertDebugMarker("marker");
    command_encoder800.pushDebugGroup("mygroupmarker")
    command_encoder800.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder001.popDebugGroup();
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    command_encoder802.insertDebugMarker("mymarker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    command_encoder800.pushDebugGroup("mygroupmarker")
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    
    compute_pass_encoder0030.popDebugGroup()
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    compute_pass_encoder0010.popDebugGroup()
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder800.insertDebugMarker("mymarker");
    buffer0010.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    
    command_encoder801.pushDebugGroup("mygroupmarker")
    
    buffer0011.destroy()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    
    
    render_bundle_encoder302.setPipeline(render_pipeline301);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
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
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder800.popDebugGroup()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture301.destroy();
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    compute_pass_encoder8000.insertDebugMarker("marker")
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device90.queue.writeBuffer(buffer900, 0, array1, 0, array1.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder901.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.setPipeline(render_pipeline302);
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    texture600.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_buffer600 = command_encoder600.finish();
    buffer901.destroy()
    buffer801.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder901.insertDebugMarker("marker");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline303);
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    compute_pass_encoder0030.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder3000.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    const command_buffer802 = command_encoder802.finish();
    const command_buffer1100 = command_encoder1100.finish();
    device80.queue.submit([command_buffer802, ]);
    const command_buffer1000 = command_encoder1000.finish();
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    command_encoder801.popDebugGroup()
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer801 = command_encoder801.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}