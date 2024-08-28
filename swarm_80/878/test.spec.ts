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
    
    
    const array0 = new Float32Array([-0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, 0.75, 0.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.5, 0.5, -0.25, 1.0, -1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -0.75, 1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -0.25, 0.5, -0.5, -0.75, -0.75, 1.0, 0.5, 0.0, 0.0, 0.5, 0.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, -0.25, 0.5, 0.25, 0.0, 0.5, 0.5, 0.25, 0.5, 0.25, 0.0, -0.75, 1.0, 0.0, 0.75, 1.0, -0.5, 0.5, 0.75, 0.25, -0.25, -1.0, -0.5, 0.25, -0.25, -0.75, 0.25, -1.0, -0.75, -1.0, 0.0, -0.25, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer000 = command_encoder000.finish();
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array1 = new Float32Array([0.75, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, 0.25, 0.25, 0.5, 0.25, 1.0, 0.5, -1.0, 0.25, 0.75, -0.75, 1.0, -1.0, -0.5, 1.0, 0.0, -0.75, -0.25, 0.0, 0.0, -0.75, 1.0, -0.5, 0.5, -0.75, -0.5, 1.0, -0.75, 0.0, 0.75, 0.75, 0.25, 0.75, 0.75, 1.0, 0.75, -1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -1.0, -0.75, -0.5, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, 0.75, 0.0, -0.75, -1.0, 0.25, -0.25, 0.25, 0.5, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, -1.0, 0.25, 1.0, -0.5, 0.25, 1.0, -1.0, -0.75, 0.0, -0.25, -0.25, -0.25, 0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, 0.5, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.submit([command_buffer000, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array2 = new Float32Array([0.75, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, 1.0, -0.75, -0.25, 0.5, 1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 1.0, 0.75, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.75, 0.5, -0.25, -0.25, -1.0, -0.75, -1.0, 0.25, 0.75, 0.5, -0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.75, -0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.0, -0.25, -0.75, -1.0, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, 0.25, -0.75, 0.25, 0.25, 0.5, -1.0, 0.0, -0.25, 1.0, 0.0, 0.0, -0.25, 0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.25, 1.0, -0.5, 0.5, -0.5, 0.5, 0.25, 0.0, -1.0, 1.0, 1.0, -1.0, -0.75, 0.5, -1.0, 0.0, 0.5, 0.0, -0.75, ]);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer000.destroy()
    const array3 = new Float32Array([1.0, 0.25, -0.75, -0.75, 1.0, -0.5, 1.0, 0.75, -1.0, -1.0, 0.5, -0.5, -0.75, -0.25, -0.5, -0.75, 0.75, -0.5, -0.5, -0.25, 0.25, 0.75, 0.0, 1.0, 1.0, -0.5, 1.0, 0.25, 0.25, -0.5, -0.75, -0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, -0.75, 0.0, -0.5, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, -0.5, 0.5, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.75, -0.5, -0.5, 0.0, 0.75, 0.75, 0.0, 0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 0.5, -0.25, 0.25, -1.0, -0.75, 0.5, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 1.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.5, ]);
    compute_pass_encoder0010.popDebugGroup()
    buffer001.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    
    texture100.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([0.0, -0.25, 1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, -0.25, -0.5, -0.5, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -0.25, -0.5, 0.25, -1.0, 0.25, 0.25, -0.25, 0.25, -1.0, 1.0, -0.5, -0.25, -1.0, 0.5, 0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 0.25, 0.0, 0.75, -0.75, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, -0.25, 0.0, 1.0, 0.25, -0.5, -1.0, -0.5, -0.5, -0.5, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.25, 0.75, 0.0, -1.0, -0.25, -0.25, -1.0, -1.0, 1.0, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, 0.75, 0.5, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, -0.5, -1.0, -0.75, 0.0, -0.75, ]);
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    texture101.destroy();
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    buffer100.destroy()
    const command_buffer101 = command_encoder101.finish();
    buffer002.destroy()
    
    
    
    const array5 = new Float32Array([0.5, 0.75, 0.25, 0.0, 1.0, -1.0, -0.75, -0.5, 0.5, 1.0, -1.0, 0.0, 0.5, 0.75, 0.5, 0.25, 0.25, 0.5, -0.75, 0.0, 0.0, -0.25, -0.75, -0.5, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.75, 0.0, -0.5, -0.5, -0.25, -0.25, 0.5, -1.0, 1.0, -0.25, 0.25, 0.25, 0.25, 0.5, 0.75, 1.0, 0.5, 0.5, 0.75, -1.0, 0.25, 0.5, 0.5, 0.5, 1.0, 1.0, 0.5, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, -1.0, -0.5, 0.0, 0.5, -0.25, 0.25, 0.25, 0.75, 0.0, -1.0, 0.5, -0.5, -1.0, 0.5, 0.25, -1.0, -0.75, -0.5, 0.25, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, 0.0, 1.0, 0.5, -0.5, 0.5, ]);
    compute_pass_encoder0020.popDebugGroup()
    buffer101.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    texture001.destroy();
    compute_pass_encoder0030.insertDebugMarker("marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    
    compute_pass_encoder0030.popDebugGroup()
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    
    device10.queue.submit([command_buffer101, ]);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    texture000.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const array6 = new Float32Array([0.25, -0.75, -0.75, 0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 0.75, -0.25, -0.5, 0.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, -0.25, 0.0, -1.0, 0.75, 1.0, 0.5, 0.5, 0.5, -1.0, -0.25, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -0.25, -0.5, -1.0, -1.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, 0.5, -1.0, 0.75, 0.0, -0.75, -0.25, 0.25, 0.5, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, -0.75, -0.5, 0.25, 0.25, 0.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 0.0, -1.0, 1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.5, 0.5, -0.75, -0.5, -1.0, -0.25, -0.5, ]);
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder004.clearBuffer(buffer003);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    compute_pass_encoder0010.insertDebugMarker("marker")
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    
    render_bundle_encoder001.popDebugGroup();
    
    
    texture102.destroy();
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    
    
    
    compute_pass_encoder1020.popDebugGroup()
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    
    
    texture103.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder005.insertDebugMarker("mymarker");
    
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.submit([command_buffer004, ]);
    buffer006.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    compute_pass_encoder0050.insertDebugMarker("marker")
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
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
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    compute_pass_encoder0010.popDebugGroup()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    texture002.destroy();
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer102.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([0.0, -0.5, 0.0, 1.0, 0.5, -0.75, 0.5, -0.5, -0.5, -0.25, -0.75, 0.25, 1.0, 0.25, 0.5, 0.75, 0.25, 1.0, -0.5, -1.0, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, 0.5, 0.5, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, -0.25, -0.5, -0.25, 0.25, -1.0, -0.25, 1.0, 0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.75, 0.5, -0.75, 0.75, 0.0, -1.0, -0.25, 0.0, 1.0, 0.25, -1.0, -1.0, 0.0, -0.5, -0.5, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, -0.25, 0.5, -0.75, 0.0, -0.5, 0.5, 1.0, -0.75, 1.0, -1.0, 0.5, 0.25, -0.5, 0.75, ]);
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer005.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const array8 = new Float32Array([0.0, -1.0, 0.5, 0.0, -0.75, 0.75, -0.5, -0.5, -0.5, 0.75, -0.75, 0.5, 0.75, -0.75, -1.0, 0.25, 1.0, 0.75, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, -0.75, 0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.5, -0.75, -0.75, -0.75, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 0.75, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, 0.25, -0.25, -0.5, 1.0, 0.75, -0.25, -0.5, -0.5, -0.25, 1.0, 0.5, 0.0, 1.0, -0.75, -0.5, -0.5, -1.0, 0.0, 1.0, -0.75, -0.25, 1.0, 0.0, -1.0, -0.75, -0.75, -1.0, 0.75, -1.0, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -0.75, 0.0, 1.0, 0.25, 0.25, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    
    
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder006.clearBuffer(buffer003);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    buffer009.destroy()
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder001.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer104.destroy()
    render_bundle_encoder100.setPipeline(render_pipeline102);
    compute_pass_encoder1030.insertDebugMarker("marker")
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    buffer007.destroy()
    render_bundle_encoder100.popDebugGroup();
    const command_buffer006 = command_encoder006.finish();
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer008.destroy()
    compute_pass_encoder1030.popDebugGroup()
    
    
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0050.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    buffer004.destroy()
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    
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
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0020.popDebugGroup()
    
    
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer105.destroy()
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    texture003.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
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
    render_bundle_encoder000.popDebugGroup();
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    buffer103.destroy()
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    buffer107.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    texture104.destroy();
    
    
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    texture005.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    texture105.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1030.popDebugGroup()
    
    compute_pass_encoder0050.popDebugGroup()
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    buffer106.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    buffer1011.destroy()
    
    
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module0010,
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
            module: shader_module0010,
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer1010.destroy()
    
    
    
    buffer003.destroy()
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    device10.queue.submit([command_buffer104, ]);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
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
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
    
    
    
    
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
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
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    
    compute_pass_encoder1020.popDebugGroup()
    texture006.destroy();
    const array9 = new Float32Array([-1.0, 0.0, -0.25, 1.0, -0.75, 0.75, -0.75, 1.0, -0.25, 0.25, -0.75, 0.0, 0.5, -0.5, -0.25, -0.5, -0.75, 0.0, 1.0, -1.0, -0.75, 1.0, -0.75, 0.25, 0.5, -1.0, 0.25, 0.75, -0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, 0.5, 1.0, -1.0, 0.75, -0.75, -0.75, 1.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, -0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.75, 0.0, 1.0, -1.0, 0.25, 0.25, 0.0, -0.5, 0.0, -0.5, -0.25, -0.25, 0.0, -0.5, 0.0, 0.75, 0.75, -0.25, -0.5, -0.75, -1.0, -0.25, -0.5, 0.25, -1.0, ]);
    buffer0010.destroy()
    compute_pass_encoder1050.insertDebugMarker("marker")
    texture004.destroy();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    compute_pass_encoder1050.insertDebugMarker("marker")
    buffer108.destroy()
    
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    
    compute_pass_encoder0030.popDebugGroup()
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer0011.destroy()
    buffer0014.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    const array10 = new Float32Array([-0.25, 1.0, 0.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.25, -0.25, -0.25, 0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -1.0, 0.25, 1.0, -0.25, 0.0, 1.0, 0.0, -1.0, 0.5, 0.75, 0.25, -1.0, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, 0.75, 0.25, 0.0, -0.75, -0.25, -0.25, 0.25, 0.25, 0.5, 0.75, 0.75, 1.0, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.0, -1.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, -0.5, 0.25, 0.5, -0.25, 1.0, -0.75, -1.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.25, -1.0, -1.0, 1.0, 0.5, ]);
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
        vertex: {
            module: shader_module0012,
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
            module: shader_module0012,
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
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
}