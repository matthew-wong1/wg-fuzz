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
    const array0 = new Float32Array([-0.25, -0.5, -0.5, 0.5, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.75, -0.25, 0.25, 0.0, 0.75, 1.0, 1.0, 0.5, -0.5, -0.75, 0.0, 0.25, 1.0, -0.5, -0.25, 1.0, -0.25, 0.75, 0.5, 0.75, -0.25, 1.0, 0.5, 0.5, 1.0, -0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -0.75, 0.25, -1.0, 1.0, -0.25, -0.25, -0.5, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, -0.75, -0.5, -1.0, 0.5, 0.0, 0.25, -0.5, 1.0, -0.75, -0.25, 1.0, -0.5, 0.5, -0.75, 0.25, -1.0, -0.75, 0.25, 0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -1.0, 0.25, 0.75, 0.0, 0.75, 0.25, 0.75, -1.0, -0.75, 0.75, 0.5, 0.75, ]);
    const array1 = new Float32Array([0.5, -1.0, 1.0, 0.75, 1.0, 1.0, -0.75, 0.0, -1.0, -1.0, -0.25, -0.25, 1.0, 0.25, 0.75, 1.0, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.75, 0.5, 1.0, -0.25, -1.0, -1.0, -0.75, 0.5, 0.5, 0.25, 0.25, 0.0, 0.75, 0.5, 0.0, -0.5, -1.0, 0.75, 0.5, 0.0, 0.25, -0.25, 0.5, 0.25, 0.25, -0.5, 0.25, 0.0, -0.5, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 0.75, -1.0, 0.0, 0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -0.5, 0.5, -0.25, -0.5, 0.0, 0.5, 1.0, 0.25, -0.75, 0.0, -0.75, 0.75, 1.0, 0.25, 0.25, -0.5, 1.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.75, -0.5, 1.0, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.75, -0.5, -1.0, -0.5, -0.5, 0.5, 0.25, 0.25, 0.0, -0.25, 1.0, -1.0, -0.5, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, -1.0, -0.25, -0.75, -0.75, 0.25, -1.0, 0.5, -1.0, -1.0, -0.5, 0.5, 0.0, 0.75, -0.75, 0.5, -0.75, 0.5, -0.25, 0.5, -0.75, 0.0, -0.5, -0.5, 0.5, 1.0, 0.25, 1.0, -0.75, 0.5, 0.25, 0.75, -0.5, -0.25, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, -0.75, -0.5, -0.75, 1.0, 0.5, 0.75, -0.25, -1.0, 0.25, 0.0, 1.0, -0.25, -0.5, -0.5, 0.0, -0.5, -0.75, -1.0, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, -0.25, 1.0, 0.25, -0.5, 0.5, 0.0, 0.75, 0.75, -0.25, -0.75, ]);
    
    const array3 = new Float32Array([0.75, 0.75, 0.75, -0.25, -0.25, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 0.75, 0.25, -0.25, 0.0, 0.5, 0.5, 0.25, -0.75, 1.0, -0.25, -0.25, 0.75, 0.0, -0.25, 1.0, -0.75, -0.75, 0.25, 1.0, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.5, -1.0, -1.0, -0.5, 0.5, -0.25, -0.75, 0.25, -0.75, 0.75, -0.75, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.25, 0.0, -0.5, 0.5, -1.0, 1.0, 0.0, 0.25, 0.75, 1.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, 0.75, 0.25, -0.5, 0.0, -0.25, 0.25, 1.0, 0.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    
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
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.destroy();
    
    
    const array4 = new Float32Array([0.75, 0.0, 0.75, -0.75, -1.0, -0.75, 1.0, 0.75, 0.25, 1.0, -0.75, -0.75, -0.25, 0.0, -1.0, 1.0, -0.25, 0.75, -1.0, 0.0, -1.0, 0.25, -1.0, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.75, 0.5, -1.0, -0.75, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, 0.0, 1.0, 0.25, 0.5, 0.75, -0.5, 0.25, 0.25, 0.0, 1.0, 0.75, 0.5, -0.75, -1.0, 0.25, 0.25, -0.25, -1.0, -1.0, -0.5, 1.0, 0.25, 0.25, 1.0, -0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.5, 1.0, -1.0, -0.75, 0.5, -0.25, -1.0, 0.5, 0.75, -0.25, 0.75, -0.25, 0.0, -1.0, -0.75, 1.0, -0.5, 0.5, 0.5, -0.75, -0.5, 0.0, -0.75, 0.5, -0.25, 0.5, 0.0, 0.5, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array5 = new Float32Array([0.5, 0.25, 0.5, 0.5, 0.5, -0.75, -0.5, 0.75, 0.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 1.0, 1.0, 0.25, -1.0, 0.5, -1.0, 0.5, 0.0, 0.5, 0.75, -0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -0.25, 0.5, 0.25, 0.25, 0.25, -0.25, -0.5, 0.75, 0.5, 0.0, -0.25, 0.75, -0.5, 1.0, 1.0, 0.5, 0.5, -0.25, -0.25, -0.25, -0.75, 1.0, 0.75, -0.5, 0.5, -0.5, -0.5, 0.5, 0.0, -0.5, -0.25, -0.75, 0.5, -0.25, 0.5, 0.0, 1.0, 1.0, -0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.0, 0.25, 0.5, -0.75, -1.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, 0.5, 1.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    const array6 = new Float32Array([0.0, -0.25, 0.25, 0.0, 1.0, 1.0, 0.25, 0.75, 0.75, 0.75, 0.0, -0.75, -0.75, 1.0, 0.25, -0.25, -0.75, -0.5, 1.0, 0.25, -1.0, 0.25, 0.25, 0.75, 0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.5, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.75, 1.0, 1.0, 0.25, 1.0, 0.75, 0.0, -0.75, -0.25, -1.0, -1.0, -0.75, -0.25, 0.25, -0.75, -0.25, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 0.5, 0.25, 0.75, -0.75, -0.75, 0.5, -0.25, -0.25, 0.75, 0.25, 0.0, -0.75, -0.75, 0.5, -0.5, 0.0, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -0.75, 0.0, 0.5, -1.0, 0.25, 1.0, -1.0, 0.75, -0.25, -0.25, 1.0, 0.5, -0.25, ]);
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array7 = new Float32Array([0.75, 0.75, -1.0, -1.0, -1.0, -0.25, -0.75, -1.0, -0.5, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.75, -0.75, -0.25, 0.5, 0.5, -1.0, 0.0, 1.0, 0.0, -0.5, -0.75, 0.0, -0.75, 1.0, 1.0, -0.25, -0.5, 0.75, -0.25, -0.25, 0.75, 1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.75, 0.75, 0.75, -0.75, 1.0, -0.5, 0.75, -0.25, 0.0, 0.5, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, -0.5, -1.0, -0.25, -1.0, -1.0, 0.0, 0.75, 0.75, 1.0, 0.5, 0.25, -0.75, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, -1.0, 0.75, -0.5, -1.0, 0.25, -1.0, -1.0, 0.0, 1.0, 0.25, 1.0, -1.0, 0.75, 1.0, -1.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, ]);
    
    device30.destroy();
    const array8 = new Float32Array([-0.5, -0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.25, -0.75, -0.25, 0.25, 1.0, 0.25, 0.0, -1.0, -0.25, 1.0, -0.25, 0.25, -0.25, 1.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 0.25, -0.5, 0.75, 0.75, -0.25, 0.25, 0.75, -0.5, -0.5, -0.5, -0.75, 0.75, 0.0, -1.0, 1.0, 0.0, -0.75, -1.0, 0.5, 1.0, 0.5, 0.5, -1.0, 0.25, -0.5, 0.5, -1.0, 0.0, -1.0, -1.0, -0.25, -0.25, -0.5, 0.75, 0.0, -1.0, 0.75, -0.5, -0.25, -0.25, -0.75, 1.0, 0.0, -0.25, -1.0, -1.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, 0.5, -1.0, 0.0, -0.25, 1.0, 1.0, -0.5, 1.0, 0.0, 0.75, ]);
    
    
    
    const array9 = new Float32Array([0.25, 0.75, -0.5, 0.25, -0.25, 0.5, 0.75, 0.75, -1.0, 0.25, 1.0, 1.0, 0.0, 0.75, -0.5, -0.75, -0.75, -1.0, 1.0, 0.25, 0.75, -0.75, 0.25, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, 0.75, 0.25, 0.75, 1.0, 0.0, 0.75, 0.25, 0.25, -0.5, 0.0, 0.5, 0.5, -0.25, 1.0, -0.5, 0.5, -0.25, 0.0, -0.75, 0.0, 0.25, 0.0, 0.0, -0.75, 1.0, -0.5, -0.25, -0.5, 0.25, -0.5, 1.0, 1.0, -1.0, 0.25, 0.5, 0.25, -0.75, -0.25, 0.75, 0.0, 0.25, 1.0, -1.0, -1.0, -0.25, 1.0, 0.5, 0.75, 0.75, 0.0, 0.75, 0.25, 0.0, -0.5, -0.75, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, -0.25, -0.25, -1.0, 0.25, -1.0, 0.5, -0.25, 0.0, -1.0, ]);
    
    const array10 = new Float32Array([-0.75, 0.75, -0.25, 0.25, -0.5, 0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -0.5, 1.0, -1.0, 1.0, 1.0, -0.75, -0.75, -0.25, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, 0.25, 0.25, 0.25, 0.25, 0.5, 0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.25, 0.5, 1.0, -1.0, -0.25, -0.25, -1.0, 0.75, -0.75, 0.75, -1.0, 0.5, 0.75, -1.0, -0.25, -0.25, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, -0.25, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 0.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.0, 0.5, 0.5, -0.25, -1.0, 1.0, -0.5, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array11 = new Float32Array([-0.5, 0.5, 1.0, -1.0, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, -0.25, 0.25, -0.5, 0.5, 0.5, 0.25, -0.5, -0.25, -1.0, 0.0, 1.0, 0.5, -1.0, -1.0, -1.0, 0.75, -0.75, 0.5, 0.0, -0.25, 1.0, 0.75, 0.25, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 0.0, 0.25, 0.5, 0.5, -1.0, 0.5, 1.0, 1.0, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 1.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, -1.0, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, 0.5, 0.5, -1.0, -0.5, -0.75, -0.75, 0.5, 0.25, 0.0, 0.0, -0.25, -1.0, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture400.destroy();
    
    
    device40.destroy();
    
    
    
    
    
    
    
    const array12 = new Float32Array([-0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, 0.25, -0.25, 0.75, -0.25, -1.0, -0.75, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 0.25, -0.25, 1.0, -0.75, -0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 0.0, 0.0, -0.25, 0.25, -0.75, 0.25, -0.75, -0.75, 1.0, -0.75, 0.5, 0.25, -0.75, -0.5, 1.0, -0.25, -0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 0.25, 1.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, 0.5, -1.0, -0.25, -1.0, 0.5, -1.0, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 0.0, 0.75, 0.5, 0.75, -0.25, -0.75, -0.25, 0.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, -0.25, 0.0, 0.25, -0.5, -0.75, -1.0, -0.25, -0.75, -0.75, -0.25, ]);
    
    
    
    
    const array13 = new Float32Array([-0.25, 0.25, 0.5, -0.75, -0.5, -0.5, 0.25, 1.0, 0.0, 0.25, 0.0, -0.75, -0.25, -0.5, -1.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.75, 0.0, -1.0, 1.0, 0.25, -0.25, 0.5, -0.75, 0.5, 0.5, -0.5, 0.75, 0.0, -0.75, 0.0, -0.5, 0.25, 0.0, -0.5, 1.0, -0.25, 1.0, -0.25, 1.0, -0.75, 1.0, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, 0.75, 1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, -0.25, 0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.5, -0.75, -0.25, 0.25, 0.5, -0.25, -1.0, -0.5, 1.0, -0.5, -1.0, -0.75, 0.25, 0.0, 0.5, -1.0, -0.5, ]);
    
    const array14 = new Float32Array([-1.0, 0.25, -0.25, -0.5, -0.5, 0.5, -1.0, 0.75, 0.5, -0.5, 0.0, 1.0, 0.0, -0.75, -0.5, -1.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 1.0, -1.0, 0.5, 0.25, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.25, 0.25, -0.25, -0.75, -0.5, 0.0, 0.75, -0.25, 0.25, -0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 0.25, 0.5, 1.0, 0.25, 0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, -1.0, -0.25, 0.75, 0.0, -0.75, -0.75, -0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.0, 1.0, 0.25, -0.5, -1.0, 0.0, -1.0, -0.25, -0.75, 0.75, -1.0, 0.0, -0.25, -0.75, -0.75, 1.0, -0.5, -1.0, -0.5, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query202.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
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
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    texture200.destroy();
    query200.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    query201.destroy()
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
    render_pass_encoder2000.insertDebugMarker("marker");
    query200.destroy()
    
    render_pass_encoder2000.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    query200.destroy()
    
    
    render_pass_encoder2000.executeBundles([])
    texture201.destroy();
    render_pass_encoder2000.setStencilReference(1);
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    texture202.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.pushErrorScope("validation");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    buffer200.destroy()
    
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    const array15 = new Float32Array([-0.5, 0.0, 0.75, 0.0, 0.5, 0.0, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, 0.0, -0.75, -0.5, -0.25, 0.25, 0.5, 1.0, 0.75, 0.25, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, -0.75, 0.75, -0.75, -0.5, -0.5, 1.0, -0.5, 0.0, 0.25, 0.0, 1.0, 0.25, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -0.75, 0.25, 0.5, -0.75, -0.25, -0.5, 0.75, -0.25, -1.0, 1.0, 0.0, -1.0, -0.5, 0.25, -0.5, -1.0, -1.0, -0.75, -0.75, 0.5, -0.5, -0.25, 0.75, 0.5, 0.25, 0.75, -0.25, -0.75, 0.75, -0.5, 1.0, -0.5, -0.25, 0.0, 0.25, 0.5, -0.5, 0.0, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, 0.25, -0.5, 0.5, 0.75, -0.25, 0.0, 0.0, ]);
    
    render_pass_encoder2000.setStencilReference(1);
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    
    buffer201.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array16 = new Float32Array([0.0, 0.75, -0.5, 0.5, -0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 1.0, 0.0, -0.25, -1.0, -0.5, -0.5, 1.0, 0.5, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, -0.5, 0.5, 0.25, -0.5, 0.75, -0.75, 1.0, -0.5, -1.0, 0.5, 0.0, 1.0, 0.5, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, 1.0, 0.25, -0.75, 0.0, 0.25, -0.75, -1.0, 0.0, 0.0, 0.5, 0.5, 0.75, -0.75, 0.75, 0.75, -1.0, -0.25, -0.25, -1.0, -0.25, 0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -1.0, -1.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, -0.5, -0.5, -1.0, 1.0, 0.25, 0.75, 0.75, 0.5, 0.0, 0.75, -0.25, ]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2010.setStencilReference(1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    render_bundle_encoder201.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder2010.executeBundles([])
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    
    render_pass_encoder2010.setStencilReference(1);
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.insertDebugMarker("marker");
    
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
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device60.pushErrorScope("validation");
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder500.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    command_encoder501.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const array17 = new Float32Array([-0.5, 0.5, 0.0, -0.5, 0.5, -0.5, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.5, -1.0, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, -0.25, 0.75, 0.75, 1.0, -0.25, 0.5, 0.0, 1.0, -0.25, 0.5, -0.25, 1.0, -1.0, -0.25, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 0.5, 0.5, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, -0.75, -1.0, 1.0, 1.0, 1.0, 0.0, 0.5, 0.5, 0.75, -1.0, 0.0, 1.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 0.75, 1.0, -0.75, 0.0, 1.0, -1.0, -0.25, 0.5, -0.25, -1.0, 0.75, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, -1.0, -0.75, -0.5, 0.5, -0.75, 0.75, 0.5, 0.75, ]);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    
    
    render_pass_encoder2020.insertDebugMarker("marker");
    
    command_encoder600.insertDebugMarker("mymarker");
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    render_pass_encoder2010.insertDebugMarker("marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_bundle_encoder202.popDebugGroup();
    buffer202.destroy()
    query600.destroy()
    device20.pushErrorScope("internal");
    render_bundle_encoder200.setPipeline(render_pipeline202);
    render_pass_encoder2020.popDebugGroup();
    query600.destroy()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder2020.setStencilReference(1);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder202.popDebugGroup();
    
    query202.destroy()
    render_pass_encoder2010.popDebugGroup();
    
    query201.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline203);
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_pass_encoder2030.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2030.setPipeline(render_pipeline203);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2020.setStencilReference(1);
    query600.destroy()
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder2020.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder2020.setPipeline(render_pipeline202);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder201.popDebugGroup();
    const array18 = new Float32Array([1.0, -0.5, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, -0.75, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, 0.75, -0.25, 1.0, 0.25, -0.5, -0.75, -0.25, 0.0, 0.25, -0.75, 0.75, -0.5, 1.0, -0.25, -0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 0.0, -0.5, 0.75, 0.0, -0.75, 0.0, 1.0, -0.75, 0.75, -0.25, 0.75, 0.75, -0.5, -0.75, -0.75, -1.0, -0.5, 0.75, -0.5, 0.75, 0.5, 1.0, 0.25, -0.25, 0.0, 0.25, -0.25, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, 0.25, -0.5, 0.75, -0.75, -0.25, 0.75, 1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 0.25, 0.5, -0.75, -1.0, -0.25, -1.0, -0.75, -0.5, 0.25, 0.25, ]);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
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
    command_encoder500.insertDebugMarker("mymarker");
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2010.insertDebugMarker("marker");
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
    render_pass_encoder2000.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    query200.destroy()
    
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    render_pass_encoder2010.setStencilReference(1);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder2020.popDebugGroup();
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    compute_pass_encoder5020.insertDebugMarker("marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    device50.pushErrorScope("validation");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.pushDebugGroup("group_marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2010.popDebugGroup();
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2020.setStencilReference(1);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
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
    device60.pushErrorScope("internal");
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
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
    device20.pushErrorScope("validation");
    render_bundle_encoder202.insertDebugMarker("marker");
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    compute_pass_encoder5010.popDebugGroup()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    command_encoder601.insertDebugMarker("mymarker");
    
    query202.destroy()
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
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
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
    
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.setStencilReference(1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    const array19 = new Float32Array([1.0, -0.75, -0.25, -0.75, -1.0, 1.0, 1.0, -0.5, -0.5, -0.75, 0.5, 0.5, -1.0, 0.5, 0.25, -0.5, -0.25, -0.5, 0.75, -0.25, -0.25, -0.5, -0.75, -0.5, -0.5, 0.0, -0.5, -1.0, 0.25, -0.75, 0.25, -0.75, 0.25, 1.0, 0.0, -0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.25, 0.75, 1.0, 0.0, 0.0, 0.25, 0.0, 0.25, 0.25, 0.0, 0.25, -1.0, -0.25, 0.75, -0.25, 0.0, -0.25, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, 0.0, 0.75, 0.5, 0.25, 0.75, 0.25, -0.5, 1.0, 0.25, -0.75, 0.25, -0.5, 0.0, -0.75, 1.0, -1.0, -0.25, -0.25, 0.25, -0.75, -0.75, 0.75, 1.0, -1.0, 0.5, 0.25, -0.5, -0.75, 1.0, 0.75, 0.25, 0.75, 1.0, ]);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device50.pushErrorScope("out-of-memory");
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    render_pass_encoder2030.setStencilReference(1);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2050.setPipeline(render_pipeline2010);
    render_pass_encoder2030.setStencilReference(1);
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    compute_pass_encoder6000.popDebugGroup()
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_pass_encoder2010.setStencilReference(1);
    
    
    query600.destroy()
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    render_pass_encoder2020.setStencilReference(1);
    const render_pipeline2013 = device20.createRenderPipeline({
        label: "render_pipeline2013",
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
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2040.setPipeline(render_pipeline206);
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    buffer204.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const array20 = new Float32Array([0.75, 0.5, 0.5, -0.75, 0.75, 1.0, -0.5, 0.5, 0.5, 0.75, -0.25, -0.75, -0.25, 0.75, 0.75, -0.75, -0.25, 0.5, -0.25, 0.75, 0.0, 0.5, 0.0, 0.25, -0.75, 0.25, 0.0, 1.0, 1.0, 0.5, -0.25, 0.75, 0.5, 0.0, 0.0, 0.25, 0.25, -1.0, 0.25, -1.0, 1.0, -1.0, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, 1.0, -0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, 1.0, 0.25, -1.0, -0.75, -0.25, 0.0, 0.0, 1.0, -0.25, -0.25, -0.5, 1.0, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.5, -1.0, -0.5, 0.25, -0.5, -0.25, -0.5, -0.5, -0.5, 1.0, 0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 0.25, 0.25, -0.75, 0.0, ]);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2050.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    buffer500.destroy()
    query602.destroy()
    render_bundle_encoder601.insertDebugMarker("marker");
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pipeline2014 = device20.createRenderPipeline({
        label: "render_pipeline2014",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder2030.setStencilReference(1);
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    buffer203.destroy()
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    query600.destroy()
    const render_pipeline2015 = device20.createRenderPipeline({
        label: "render_pipeline2015",
        vertex: {
            module: shader_module208,
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
            module: shader_module208,
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
    render_pass_encoder2030.setStencilReference(1);
    query600.destroy()
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline2016 = device20.createRenderPipeline({
        label: "render_pipeline2016",
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
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    query603.destroy()
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_pass_encoder2010.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder5010.popDebugGroup()
}