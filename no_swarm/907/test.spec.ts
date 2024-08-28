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
    
    
    const array0 = new Float32Array([-0.25, -1.0, 0.75, -0.5, 1.0, 0.0, 1.0, -0.75, 0.5, 1.0, 0.75, 1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -1.0, -1.0, 0.5, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.25, -0.5, 1.0, 0.75, 0.25, 0.5, -1.0, 0.5, 0.25, 1.0, 1.0, -0.5, -1.0, -1.0, -0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, 0.25, 0.5, 1.0, 0.25, 0.0, 0.5, 1.0, 0.0, 0.25, 0.25, 1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, 0.0, -0.75, 0.0, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.75, -0.25, -1.0, -0.5, 0.5, 0.75, 0.5, 1.0, -0.5, -1.0, 1.0, 0.5, 0.25, 0.75, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.5, -0.25, 0.25, -0.75, 1.0, 0.5, -1.0, -1.0, 0.75, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, 0.25, 0.75, 0.0, -0.5, -1.0, 0.75, 0.25, 0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.5, 1.0, 0.0, 0.75, -0.25, -0.25, 0.0, 0.0, 0.0, -0.5, -0.5, -1.0, -0.25, 1.0, -1.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.75, -0.5, -0.5, -0.75, -1.0, 0.25, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, 0.25, -0.5, -1.0, -0.25, -0.75, 0.75, 0.75, 0.75, 0.75, -0.75, 0.0, -0.25, -0.5, 1.0, 0.25, -1.0, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 1.0, 0.25, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer000.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([-1.0, -0.25, -0.75, 0.0, 0.5, 1.0, 0.0, -0.75, -0.75, 0.25, 1.0, 0.75, -0.75, 0.5, -1.0, 0.5, -1.0, -0.25, 0.75, 1.0, -0.75, -1.0, -1.0, -0.5, -0.25, 1.0, 0.25, -0.75, -1.0, -0.75, 1.0, -0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.75, 0.5, -1.0, 0.25, -0.75, 0.5, -0.75, 0.0, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, 0.5, -0.75, -0.25, -0.25, -0.5, -0.75, 0.25, 0.75, -0.25, 1.0, -1.0, -1.0, -0.25, -1.0, 0.0, 0.75, -0.75, 0.75, -1.0, -0.25, -0.5, 0.25, 1.0, 0.5, -0.75, 0.25, -0.25, -1.0, 0.75, -1.0, -0.25, 0.25, -1.0, -0.75, -0.25, 0.5, -0.75, -0.75, 0.5, ]);
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const array3 = new Float32Array([0.25, 0.25, 0.75, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, -0.75, 0.75, -0.25, 0.0, 0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.25, 1.0, -1.0, -0.75, 0.0, -0.5, 0.25, 1.0, -1.0, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.0, 0.5, -0.75, -0.5, -0.25, 0.5, 0.25, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.25, 0.25, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, 1.0, 0.0, -1.0, 0.75, 0.75, 1.0, -1.0, 0.25, 1.0, 0.25, 0.5, 0.75, -0.25, 0.0, 0.75, 0.0, 0.0, -0.25, 0.0, 0.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.25, 0.75, -1.0, 0.25, 0.75, -1.0, 0.0, 0.25, 0.5, -0.25, 0.0, -0.25, -0.5, ]);
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder000.insertDebugMarker("mymarker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array4 = new Float32Array([0.25, 0.25, -0.25, 0.75, 0.25, 1.0, -1.0, 0.25, -1.0, -0.25, -0.5, -0.5, -1.0, 0.0, 0.5, -0.25, -0.5, 0.75, 0.0, -0.75, -1.0, 0.0, 1.0, 0.5, -1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.5, -0.75, 1.0, -0.25, 0.25, -0.75, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.25, -0.75, 0.5, 0.25, -1.0, -1.0, 0.25, -0.5, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, -1.0, 0.25, -0.75, 0.25, 0.75, -0.25, 0.75, -0.25, -0.75, 0.75, 1.0, -0.5, -0.25, 0.5, -0.25, 0.5, 0.25, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, 1.0, ]);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer100.destroy()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([0.75, 0.0, 0.0, 0.0, -1.0, -0.75, -1.0, 1.0, 1.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.25, 1.0, 0.75, 0.75, -0.75, -1.0, 0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.75, 0.75, 0.25, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.5, 1.0, 0.0, 0.75, -0.5, 1.0, -1.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.5, -0.5, -0.5, 0.75, -0.5, 0.5, -1.0, -1.0, 0.5, 1.0, -0.5, 1.0, 0.0, 0.0, -0.75, 0.25, 1.0, 1.0, 1.0, 0.75, -1.0, -0.25, 1.0, -1.0, -0.25, -0.5, 1.0, 0.25, 0.75, 0.0, -1.0, -0.75, 1.0, 0.0, -1.0, -0.5, ]);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    device10.destroy();
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    texture000.destroy();
    
    query001.destroy()
    const command_buffer000 = command_encoder000.finish();
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.25, 0.75, 1.0, 1.0, 0.0, 0.0, -0.75, 0.25, -0.75, 0.25, -0.25, -0.25, -1.0, -0.5, 1.0, -0.5, 0.0, -0.25, -1.0, -0.75, -0.5, -0.5, -0.75, -0.5, -1.0, 0.0, 0.5, 1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, 0.5, 1.0, 0.5, 0.75, -1.0, -0.75, 0.25, 0.25, -0.25, -1.0, 0.5, -0.25, 0.5, 0.25, 0.0, -0.75, 1.0, 0.25, 1.0, -0.25, -0.5, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -1.0, 0.25, -0.75, -0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.25, 0.75, 1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.75, 0.0, -1.0, -0.25, -1.0, 0.75, -0.5, -0.5, 1.0, 0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.5, -0.25, 0.0, 0.5, 0.75, ]);
    texture001.destroy();
    
    
    query001.destroy()
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.popDebugGroup();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array7 = new Float32Array([0.25, 0.5, -0.25, 0.75, 0.75, -0.75, 0.75, -0.25, 1.0, 0.0, -0.25, 0.0, 0.0, 1.0, -1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.5, 0.75, -1.0, 0.0, 0.75, 0.75, 0.0, -0.5, -0.25, -1.0, -0.75, 0.0, 0.25, -1.0, 0.75, 0.0, 0.0, 1.0, 1.0, -0.75, -0.25, -1.0, -0.75, -0.25, -0.5, -0.5, 0.75, 0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -1.0, -0.25, 1.0, 0.75, 0.5, 0.25, -1.0, 0.0, -0.25, -0.5, -0.75, 0.75, 1.0, -0.25, -0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, -0.75, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 0.25, -1.0, 0.5, 0.25, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, -0.25, -1.0, 0.25, 0.75, -0.25, 0.0, ]);
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture003.destroy();
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    buffer001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device20.pushErrorScope("internal");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.beginOcclusionQuery(0)
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer002.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    
    const array8 = new Float32Array([0.5, -0.5, -0.75, -0.75, -0.75, 0.0, 0.0, -1.0, 0.75, -1.0, 0.25, -0.5, 0.5, -0.75, -0.75, -1.0, -0.25, 0.0, 0.25, 1.0, -1.0, -1.0, 0.0, -0.75, 0.0, 0.75, 0.0, 0.0, -0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, 0.0, 0.25, -0.25, -0.5, 0.25, 0.25, 1.0, -0.5, 0.5, -0.5, -0.5, 0.25, -1.0, 0.75, 0.75, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 0.25, 0.0, 0.75, -1.0, -1.0, -0.25, -1.0, 0.5, -0.5, 0.25, -1.0, 0.5, -0.75, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 0.5, 0.75, 0.5, -0.75, 0.5, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.5, ]);
    
    
    query000.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const array9 = new Float32Array([-1.0, 0.25, 0.0, -0.5, 0.25, 0.0, 0.25, 0.25, -0.5, -1.0, -0.5, 0.25, 0.0, -1.0, 1.0, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, -0.25, -1.0, -0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 0.0, 0.25, 0.0, -0.25, 0.75, -0.75, -1.0, 0.25, -1.0, 0.0, 1.0, -0.5, -0.75, -0.5, 1.0, -0.25, -0.75, -0.75, 1.0, -0.75, -0.5, 0.0, 1.0, 1.0, 0.75, -0.5, 0.25, -1.0, -0.5, 0.5, 0.5, -0.5, 0.0, 0.0, -1.0, -0.5, 1.0, -0.5, -0.25, -0.75, 0.75, 0.25, 0.75, 0.0, 1.0, 1.0, 0.25, 0.5, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, 0.25, 0.5, -0.25, -0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -0.75, 0.0, 0.75, 0.25, -0.25, -0.5, 0.0, 1.0, ]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    query001.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    render_pass_encoder0020.popDebugGroup();
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
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
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device00.pushErrorScope("validation");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
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
    device20.pushErrorScope("validation");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([1.0, -0.25, -0.75, 0.25, 0.75, -0.5, -0.75, -0.5, 0.25, 0.5, 0.75, -0.5, 0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -0.25, 0.5, -1.0, -0.75, 0.75, 0.0, -0.5, -0.75, 0.25, -1.0, -0.25, -0.25, 0.0, 0.75, -0.75, -1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -1.0, 1.0, 1.0, -0.75, 1.0, -0.5, 1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.75, 0.0, 0.0, -0.25, -0.75, 0.75, 0.5, 0.25, -0.75, 0.25, -0.25, -0.5, -0.25, -0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 1.0, -1.0, 0.0, 1.0, -1.0, 0.0, -0.5, 1.0, 0.25, -0.25, 0.75, -0.75, 0.75, 0.5, 0.5, 0.0, 0.25, -0.25, 0.75, -0.75, 0.75, -1.0, 0.25, -0.5, -0.5, -0.25, ]);
    render_pass_encoder0020.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer007.destroy()
    
    buffer006.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    buffer300.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer009, 0, array10, 0, array10.length);
    
    
    
    
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    const query002 = device00.createQuerySet({
        label: "query002",
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
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    buffer004.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.popDebugGroup();
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
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
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.destroy();
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    const array11 = new Float32Array([0.25, -1.0, 1.0, -0.5, 0.25, 0.0, -0.75, 0.0, -0.25, -1.0, -0.5, 0.25, -0.75, -1.0, 0.75, -0.25, 0.0, 0.75, -1.0, 1.0, 0.0, 1.0, 0.75, 0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 0.75, 0.25, -0.75, 0.5, 1.0, 0.0, 0.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.25, -1.0, 1.0, 0.25, 0.0, -0.75, -1.0, 0.5, -1.0, -0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 0.25, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.5, 1.0, 1.0, 1.0, 0.75, 1.0, 0.75, 0.75, -0.75, 1.0, -0.5, -0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.75, 1.0, -1.0, 0.25, -0.25, -1.0, -0.75, 0.0, -0.5, 0.5, -0.5, 1.0, 0.5, 0.5, ]);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    buffer003.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer009, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer009, 0, array10, 0, array10.length);
    query002.destroy()
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer005.destroy()
    buffer009.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    render_bundle_encoder002.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const array12 = new Float32Array([-0.75, 0.5, 0.75, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, 0.5, -1.0, -0.5, 1.0, 0.75, 0.25, -1.0, -1.0, 0.5, -0.5, 0.5, 0.75, 0.25, 1.0, -1.0, 0.25, 1.0, 0.75, -1.0, 0.5, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, 0.75, 0.0, -0.5, -1.0, 0.75, -0.75, -0.5, 0.0, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, 0.25, 0.75, -1.0, -0.75, -0.5, 1.0, -0.75, 0.25, 0.75, 1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.0, -0.25, 0.25, 1.0, -0.25, 0.5, 1.0, -1.0, 1.0, -0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -0.5, 0.25, 0.0, -0.5, -0.75, 1.0, -0.25, 0.25, 1.0, 0.0, -0.5, 0.5, 0.75, 0.25, 0.75, 0.75, 0.75, -0.75, -0.75, -1.0, -1.0, ]);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    query003.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0020.insertDebugMarker("marker");
    device40.destroy();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    buffer0012.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    buffer0010.destroy()
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer0011.destroy()
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer200.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer0014, 0, array8, 0, array8.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0030.setPipeline(render_pipeline002);
    
    
    {
        await buffer0014.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0014.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0014.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    buffer0014.destroy()
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    query003.destroy()
    
    
    render_bundle_encoder202.popDebugGroup();
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    buffer0013.destroy()
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder0030.popDebugGroup();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    query004.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer204.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.popDebugGroup();
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    const command_buffer200 = command_encoder200.finish();
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.setVertexBuffer(0, buffer205);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    buffer008.destroy()
    
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    buffer201.destroy()
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device00.pushErrorScope("out-of-memory");
    
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query004.destroy()
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0020.popDebugGroup();
    device20.pushErrorScope("out-of-memory");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer0015.destroy()
    texture004.destroy();
    
    buffer500.destroy()
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.popDebugGroup();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query001.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    query006.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query007.destroy()
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    render_pass_encoder0030.insertDebugMarker("marker");
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
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.draw(3);
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    query200.destroy()
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile(__dirname + '/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const command_buffer004 = command_encoder004.finish();
    const command_buffer202 = command_encoder202.finish();
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    const command_buffer500 = command_encoder500.finish();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2010, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder2010.end();
    device00.queue.submit([command_buffer000, ]);
    const command_buffer201 = command_encoder201.finish();
}