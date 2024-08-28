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
    
    
    const array0 = new Float32Array([-0.75, 0.0, 0.75, 0.25, 0.5, -0.5, -0.25, 0.5, -0.5, 1.0, -0.25, 0.0, -0.5, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.0, -0.75, 0.25, -0.25, -1.0, 0.25, -0.5, 0.75, -1.0, -0.75, -0.5, 0.5, 0.0, -1.0, -0.25, -0.75, -0.5, 0.75, -0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -0.25, 0.5, -0.5, -1.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, -0.75, 0.75, -0.75, -0.75, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, -0.25, -0.5, 1.0, 0.5, -0.75, 0.25, -1.0, 0.0, -0.25, 0.0, -0.75, 0.5, ]);
    
    
    const array1 = new Float32Array([-1.0, 1.0, -0.75, -0.75, 0.0, -0.25, -0.75, -0.5, -0.75, -0.25, -1.0, 0.75, -1.0, 0.25, 0.75, -0.5, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, 0.5, 0.25, 0.75, 0.5, -0.75, 0.5, 0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 0.25, -0.5, -1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.0, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, 0.0, -0.25, 0.5, -0.75, 1.0, 0.0, 0.0, -1.0, -1.0, -0.25, -0.75, 0.0, -0.5, -0.75, -1.0, -0.75, 0.25, 0.75, 0.5, 0.0, 0.5, 0.75, 1.0, 0.75, 0.5, -0.75, 0.5, 0.25, 0.0, 0.5, 0.0, -0.5, -0.25, -0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -1.0, -0.75, ]);
    const array2 = new Float32Array([0.25, -0.75, -0.25, 0.25, -0.25, -0.5, 0.25, -0.25, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, -1.0, -1.0, -1.0, 0.75, 0.75, 1.0, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, 0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 0.0, 0.0, -0.5, 0.5, 1.0, -0.5, 1.0, -0.75, -0.75, -0.25, 0.25, -0.25, 0.75, 0.0, 0.5, 0.25, 0.25, -0.5, -0.75, 0.5, 0.5, 0.0, 0.0, 0.5, -0.5, 0.0, -1.0, 0.75, -0.5, 0.25, 0.5, -1.0, -0.5, 0.75, 0.25, 1.0, -0.75, -0.25, 0.0, -0.5, -0.25, 0.0, -0.25, -0.75, 0.75, 0.75, 1.0, -1.0, -0.5, 1.0, -1.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.25, 1.0, -0.5, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-0.75, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, -0.75, 0.5, 0.75, -1.0, 0.25, 0.5, -1.0, 0.75, 0.25, -1.0, -0.75, -0.5, 0.5, 0.25, 0.5, -0.25, 0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 0.25, 0.25, -0.5, -0.75, -0.25, 0.0, -0.75, 1.0, -1.0, 0.75, -0.75, -1.0, 1.0, 0.5, -0.75, 0.25, -0.25, -0.25, -0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 1.0, -0.5, 0.25, -0.75, 0.5, -1.0, -0.5, -0.75, -1.0, 0.75, 1.0, 0.25, -0.25, 0.0, -0.25, 0.0, -0.75, 0.25, 0.0, 0.0, 0.25, -1.0, -0.25, -0.5, -0.5, 0.0, 1.0, 1.0, -0.75, 0.0, 0.0, 0.5, 0.75, -0.25, -0.5, -0.5, 0.75, 0.75, -0.25, 0.25, -0.75, 0.25, 0.0, 0.0, 0.25, 0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array4 = new Float32Array([-0.5, 1.0, -1.0, -1.0, -0.25, 1.0, -0.75, 0.25, 0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 0.75, -0.25, -1.0, -0.25, 0.5, -1.0, -0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.75, 0.25, 0.5, 0.25, 0.5, -0.5, 0.75, -1.0, 0.75, 1.0, -0.75, -0.25, -1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 1.0, -0.5, -0.25, 1.0, -1.0, 1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, 0.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.25, -0.75, -0.5, -0.5, 0.25, 0.25, 0.75, 0.75, -0.75, 0.5, 1.0, 0.25, 0.25, -1.0, -0.25, -1.0, -0.5, -0.5, -0.25, 0.5, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, -0.5, 0.75, 1.0, -0.75, 0.25, -1.0, 0.0, -0.75, 0.25, ]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array5 = new Float32Array([-0.5, 0.75, 0.0, -1.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.75, -1.0, -0.25, 1.0, -0.25, 0.25, 0.25, 0.25, -0.5, -0.25, 0.25, 0.5, 1.0, 0.5, -0.25, 1.0, 0.5, 0.75, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -1.0, 0.0, -1.0, 0.5, -0.5, 0.25, 0.75, -0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, -0.75, -0.75, 0.0, 1.0, -0.25, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -0.75, -0.25, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 0.75, 0.0, -1.0, 0.25, 0.75, 0.5, 0.0, 0.25, 1.0, 0.5, 0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 0.25, 0.5, -0.25, -0.75, -0.75, -0.5, -0.75, -0.5, -0.75, 0.75, -1.0, -1.0, -0.75, -0.25, 0.5, 0.25, 0.0, ]);
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array6 = new Float32Array([-1.0, 0.0, 0.0, 1.0, 0.75, 1.0, 0.75, -0.75, -0.5, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, 0.75, 0.25, 0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.25, 0.5, 0.5, 0.0, 1.0, -0.25, 0.25, 0.0, -0.75, 1.0, 0.0, 1.0, 1.0, 0.25, 0.25, 1.0, -0.5, -0.25, -1.0, 0.25, 0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, 0.25, 1.0, -0.25, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, 0.0, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.75, -0.25, 0.75, -1.0, 0.25, 1.0, -0.75, 0.5, -0.5, -0.75, 0.0, -0.5, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, -0.5, -0.75, -0.75, -0.25, -0.25, ]);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.destroy();
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    texture200.destroy();
    const array7 = new Float32Array([0.0, 1.0, 0.5, 0.75, 1.0, -1.0, 0.25, -1.0, 0.5, 0.25, -0.5, 0.75, 0.5, -1.0, -1.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -0.5, 0.5, -0.75, 0.0, 0.0, 0.75, -0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.25, 0.5, -0.75, -0.5, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.5, -0.25, 0.0, -0.25, 0.25, -0.75, 0.25, 0.5, 0.0, -0.5, -0.5, -0.5, 0.25, 0.0, 0.0, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, -0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 0.75, 0.75, 0.5, -0.5, -0.75, -0.25, -1.0, 0.25, 0.25, 0.75, -0.75, 1.0, 1.0, 0.0, ]);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    buffer200.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    const array8 = new Float32Array([0.75, -0.25, 0.75, 1.0, -0.25, -0.25, -1.0, -1.0, 0.5, -0.5, -1.0, 0.5, -0.5, -1.0, -0.25, 0.0, 0.25, 0.75, 0.5, 1.0, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.25, -0.75, -0.5, 1.0, -0.5, 0.75, -0.5, -0.75, 1.0, -0.25, 1.0, 0.0, -0.75, 1.0, -0.75, -0.25, 0.5, 0.0, 0.25, 0.75, -0.5, -0.25, -0.25, -0.75, -1.0, -0.5, 0.75, -0.25, -0.25, 0.0, 0.5, 0.5, -0.75, 0.0, 0.25, 1.0, 0.0, 1.0, -0.75, 1.0, -0.5, 1.0, 0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 1.0, -0.5, -0.5, 0.75, 1.0, -0.5, 0.0, 0.5, -0.25, -0.25, 1.0, 0.75, 0.5, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.5, 0.75, ]);
    const array9 = new Float32Array([1.0, 0.5, 0.25, -0.25, -1.0, -1.0, -0.75, -0.5, 1.0, 1.0, 0.5, -0.25, -0.5, -0.25, -0.75, 0.75, 0.0, 0.0, -0.5, 1.0, 0.5, 0.25, -1.0, -1.0, -1.0, 1.0, 0.5, -0.5, 0.25, -0.5, -0.5, -0.25, -0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 0.5, -0.75, -0.75, -1.0, -0.75, 0.75, -1.0, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, 0.25, 0.0, 0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 1.0, -0.75, 0.0, 1.0, 0.25, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.5, -0.25, -1.0, -0.5, -1.0, -1.0, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.75, -1.0, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, -0.75, -0.25, ]);
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture103.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture204.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    render_bundle_encoder100.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture104.destroy();
    buffer100.destroy()
    texture202.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    texture105.destroy();
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    texture201.destroy();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const array10 = new Float32Array([0.75, 0.5, -0.5, -1.0, -1.0, 0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, -0.75, -0.25, -0.25, 0.25, -0.5, 1.0, 0.25, -1.0, 0.75, 0.5, 0.25, -0.5, -0.5, -0.25, -0.25, -1.0, -0.5, 0.25, 0.5, -1.0, -1.0, 0.5, 0.0, 0.5, 0.0, 0.0, 0.75, 0.25, -0.75, 0.25, 1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.75, -1.0, -1.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, -0.25, 0.75, 0.75, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, -0.5, -1.0, -0.75, 0.25, 0.75, -0.25, -0.5, -1.0, 1.0, 0.5, 0.0, -0.5, -0.75, -1.0, -0.5, 0.25, -0.5, 0.25, 1.0, 0.5, 0.5, -0.25, 0.0, 0.5, ]);
    texture101.destroy();
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_bundle_encoder201.popDebugGroup();
    buffer202.destroy()
    
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer101.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const array11 = new Float32Array([0.0, 0.0, 0.0, 0.75, 0.0, -1.0, -1.0, -0.75, -0.75, -0.5, -1.0, 0.0, -0.75, 0.75, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 1.0, 1.0, -1.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, -0.75, 0.75, 1.0, 0.5, -0.75, -0.75, -0.25, -0.25, -0.25, 0.0, 0.75, -0.25, -0.75, 1.0, -0.25, -0.5, -0.5, 0.25, 0.25, 0.75, -0.5, 0.0, 0.25, -0.25, 0.0, 1.0, 0.75, 0.0, 1.0, 0.0, 0.0, -0.25, 0.75, 0.0, 0.0, 1.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, 0.0, 1.0, 0.5, -0.5, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, 0.75, 0.75, -0.5, ]);
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    buffer203.destroy()
    
    
    render_bundle_encoder201.popDebugGroup();
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
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
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_bundle_encoder100.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture203.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    buffer204.destroy()
    
    
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    render_bundle_encoder200.popDebugGroup();
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    command_encoder204.clearBuffer(buffer205);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    texture100.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer205, 0, array11, 0, array11.length);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    command_encoder204.insertDebugMarker("mymarker");
    
    buffer205.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    command_encoder204.clearBuffer(buffer207);
    device40.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer206.destroy()
    
    command_encoder204.insertDebugMarker("mymarker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    texture106.destroy();
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    texture205.destroy();
    device20.queue.writeBuffer(buffer207, 0, array0, 0, array0.length);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder205.insertDebugMarker("mymarker");
    
    render_bundle_encoder202.setPipeline(render_pipeline202);
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    
    
    
    
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
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
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    
    render_bundle_encoder101.popDebugGroup();
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder205.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    
    buffer209.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer207, 0, array7, 0, array7.length);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer207, 0, array9, 0, array9.length);
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    device20.queue.writeBuffer(buffer207, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    texture107.destroy();
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer207, 0, array6, 0, array6.length);
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device20.queue.writeBuffer(buffer207, 0, array11, 0, array11.length);
    device20.queue.writeBuffer(buffer207, 0, array5, 0, array5.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/shader_module2010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    device20.queue.writeBuffer(buffer207, 0, array4, 0, array4.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture109.destroy();
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    buffer102.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const array12 = new Float32Array([-0.75, -0.25, -1.0, -0.5, 0.0, -1.0, -0.75, -1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.0, -1.0, -0.75, 0.5, 1.0, 1.0, 1.0, -0.75, -0.5, 0.0, -0.75, -0.75, 0.0, -0.5, -0.25, 1.0, -0.25, 0.75, 0.75, 0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, -0.75, 0.25, 0.75, -1.0, -0.25, -0.5, 0.75, 0.25, -0.25, 0.75, 0.25, 1.0, -0.75, -1.0, 0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.75, -0.5, -0.75, -0.75, -0.5, 0.75, -0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.0, 1.0, -0.25, 0.75, 0.75, -0.25, -0.5, 1.0, 1.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.75, ]);
    
    device20.queue.writeBuffer(buffer207, 0, array12, 0, array12.length);
    
    device20.queue.writeBuffer(buffer207, 0, array10, 0, array10.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer207, 0, array2, 0, array2.length);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    buffer207.destroy()
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    command_encoder103.insertDebugMarker("mymarker");
    render_bundle_encoder200.popDebugGroup();
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    command_encoder103.popDebugGroup()
    
    
    
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    command_encoder104.pushDebugGroup("mygroupmarker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer103.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    
    buffer2012.destroy()
    
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_bundle_encoder102.setPipeline(render_pipeline105);
    
    command_encoder104.insertDebugMarker("mymarker");
    
    command_encoder104.popDebugGroup()
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    
    
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder207.pushDebugGroup("mygroupmarker")
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    command_encoder207.popDebugGroup()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline2012 = device20.createRenderPipeline({
        label: "render_pipeline2012",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture102.destroy();
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    command_encoder208.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    texture206.destroy();
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    buffer201.destroy()
    
    command_encoder207.insertDebugMarker("mymarker");
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    render_bundle_encoder100.insertDebugMarker("marker");
}