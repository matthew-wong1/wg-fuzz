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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    const array0 = new Float32Array([-0.25, -1.0, -0.75, 1.0, -0.25, -1.0, -0.5, -0.5, 0.5, 0.0, -0.25, -1.0, -0.75, -0.25, -1.0, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -1.0, -0.25, -0.25, -0.5, 0.25, 0.25, 1.0, 0.75, 0.25, 1.0, -0.5, 1.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 0.75, 1.0, 0.5, -0.25, 0.75, 0.0, -0.5, 0.0, -0.5, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -0.25, 0.75, 0.5, 0.25, 0.25, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -1.0, 0.5, 0.5, 0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 0.0, 0.75, -0.25, 0.25, -0.5, 0.5, 0.0, 0.25, 0.25, -0.75, 0.5, 1.0, -0.75, 0.0, -0.5, 0.0, ]);
    
    
    const array1 = new Float32Array([-0.25, 1.0, -0.75, 0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -0.75, 0.0, -1.0, 0.25, -0.75, 0.75, 0.25, 0.75, 0.0, -1.0, 1.0, -1.0, -0.75, -0.75, -0.75, -0.5, -0.75, 1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.5, 1.0, -0.25, -0.75, 0.25, 0.25, 1.0, -1.0, -0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.5, -1.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, -0.75, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, 0.0, -1.0, -0.5, -1.0, -0.5, -0.75, 1.0, 0.5, 0.25, -0.5, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.0, 0.0, 0.25, 0.75, -0.25, -0.75, -0.25, -0.5, -0.5, 0.5, -1.0, 0.25, ]);
    
    const array2 = new Float32Array([0.25, 0.75, -0.25, 0.0, 0.25, -0.75, -0.5, 0.25, -1.0, 0.5, -0.75, 0.75, 0.5, -0.5, 1.0, -0.5, 1.0, -0.75, 0.0, -0.25, 1.0, 0.25, 0.0, -0.75, -0.5, -0.25, 0.75, 0.0, -0.75, -0.25, 0.75, -1.0, -1.0, 0.0, 0.0, 0.75, -0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, -0.5, -0.25, 0.25, 0.0, 0.25, -0.5, -0.25, 0.25, 0.75, -0.75, 1.0, 1.0, 0.0, 1.0, -0.5, 0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 0.25, -0.25, 0.25, -0.25, 0.75, -0.75, 0.5, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, -1.0, 0.25, 1.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.0, 0.75, 0.75, ]);
    
    
    const array3 = new Float32Array([0.5, 1.0, 0.0, -0.75, -0.5, -0.5, 0.5, 0.0, -0.75, 0.5, -0.75, 0.0, 0.5, -0.25, 0.5, 0.25, 0.0, 0.25, 0.5, 0.0, -0.75, 0.25, 0.5, 0.5, -0.75, 1.0, -1.0, 1.0, -0.75, 0.5, -0.25, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, 0.75, 0.25, 0.75, 0.0, 0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, -1.0, 0.75, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, -0.75, 0.5, 0.75, -0.25, 0.0, 0.75, -0.5, 0.0, -0.25, 0.5, 0.0, 0.5, 0.75, 0.75, -0.75, -0.75, 0.75, 0.75, 0.0, -0.25, 0.0, 0.0, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, 1.0, -1.0, 0.25, 0.0, 0.75, 1.0, 0.5, 0.25, 0.0, -0.25, -0.5, ]);
    
    
    const array4 = new Float32Array([0.75, 0.0, 0.75, 1.0, -0.5, 0.5, -1.0, 0.25, -0.5, 0.5, -0.75, 1.0, 0.0, -1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, -1.0, 0.75, 0.5, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, -1.0, -0.5, -0.75, -0.25, 0.5, 0.0, 0.75, 1.0, -0.5, -0.5, 0.25, 0.25, -0.25, 0.0, 0.0, 0.0, 0.75, 0.75, -0.5, -0.5, -0.75, -0.5, -1.0, 0.5, -0.5, -0.25, -0.75, 0.5, -0.25, -0.5, -0.25, -1.0, -0.5, 0.25, 1.0, 0.75, 1.0, 0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.5, -0.75, -0.25, -0.5, 0.5, -0.75, -0.75, 0.25, 0.25, -1.0, -0.25, -0.75, -1.0, 0.25, -0.25, 0.25, -0.5, 0.0, -0.25, ]);
    
    const array5 = new Float32Array([0.0, -1.0, -0.75, -0.5, 0.5, 0.0, 0.25, 0.75, 0.25, 0.0, 0.0, -0.5, 0.25, 0.5, -0.5, -0.75, 0.25, 0.0, 0.75, 1.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.5, 0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, -1.0, -0.5, 0.0, 0.25, -0.25, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -1.0, 0.75, 1.0, -0.75, -0.75, 0.75, -1.0, 1.0, 1.0, 0.25, -0.75, 0.75, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, 0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.5, -1.0, -0.5, -1.0, 0.25, -0.25, -0.5, 0.75, -0.25, 0.25, -0.5, 0.5, 1.0, 1.0, -1.0, 0.75, 0.5, -0.25, 1.0, ]);
    
    const array6 = new Float32Array([1.0, -0.25, 0.5, 0.5, 0.25, -1.0, -0.75, -1.0, -1.0, 0.25, -0.75, 1.0, -0.5, -1.0, 0.25, -0.25, -0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, -0.25, 0.0, 0.25, -0.25, 0.25, 0.0, 1.0, 0.75, -0.75, 1.0, 0.75, 0.5, 0.5, 0.75, -0.75, 0.5, 0.5, -0.25, -0.75, 0.5, 0.25, 0.0, 0.5, -0.25, 0.75, -1.0, 0.75, -1.0, 0.5, 0.25, -0.25, 0.5, -0.5, 0.0, 0.5, -0.5, 1.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, 0.75, 0.25, -0.75, 0.75, 1.0, 0.0, -0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 0.25, 0.0, -1.0, -0.25, 0.5, -0.25, -0.25, -0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.5, 0.5, -0.5, 0.75, -1.0, 0.75, ]);
    const array7 = new Float32Array([0.0, 0.25, -1.0, 0.75, 0.25, 0.0, 1.0, 0.0, 0.5, -0.5, 1.0, 0.75, 0.5, -0.75, 0.0, -0.25, 0.0, 0.5, -0.75, -1.0, -0.5, -1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.25, 0.0, -0.75, -1.0, 0.0, 0.25, 0.0, -1.0, 0.5, 0.75, -0.75, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, 0.25, 0.0, 0.75, 0.5, 1.0, 1.0, 0.5, 0.25, 0.75, -0.5, -1.0, -0.25, 0.75, 0.25, -0.5, -0.25, 1.0, 0.25, 0.0, -0.75, 0.5, -1.0, 1.0, 1.0, 0.0, -0.25, 0.75, 0.75, 1.0, -0.75, -1.0, -1.0, 1.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.75, 0.25, 0.0, 0.75, 0.75, 0.5, -0.25, -0.75, 0.25, -0.5, -0.75, -0.5, -0.25, -0.75, 0.75, 0.75, 0.5, ]);
    const array8 = new Float32Array([0.25, 0.25, 0.25, 0.25, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, -0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -0.75, 0.25, -0.75, 0.25, 0.25, -0.5, -1.0, 1.0, 1.0, -1.0, 0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 0.0, -0.25, -0.5, 1.0, 0.25, 0.5, 1.0, 1.0, 0.25, 1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.25, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.5, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, -0.75, 0.5, 0.75, -0.5, -0.25, 0.5, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 0.25, -1.0, 0.75, 1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.5, 0.25, -0.75, -0.5, -0.5, 0.25, -0.25, 0.25, 0.5, 0.5, -0.25, -1.0, 0.25, -0.5, ]);
    
    
    const array9 = new Float32Array([0.0, -0.75, -1.0, -0.25, -0.5, -0.25, 1.0, -1.0, -0.5, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, 0.0, 0.25, 1.0, 1.0, 0.0, -1.0, 0.25, 0.5, 0.0, -0.25, 0.75, -1.0, 1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.25, -0.5, -1.0, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, 0.5, 0.0, -0.25, 0.25, 0.25, -0.75, -0.25, -1.0, 0.5, 0.75, 0.0, 0.5, -0.75, 1.0, 0.75, 0.5, 1.0, -0.5, 1.0, 0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.75, -1.0, 1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -0.5, 1.0, 0.5, 0.0, 0.75, -0.5, 0.25, 0.0, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, -0.5, 0.75, -0.25, 0.5, 0.5, 0.5, -1.0, 0.5, -0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array10 = new Float32Array([0.0, -1.0, 0.25, -1.0, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, -0.75, -0.25, 0.5, -0.75, -0.75, -0.75, 0.25, 0.75, -0.5, -0.75, -0.75, 0.25, 0.5, -0.75, -1.0, 0.5, -0.5, -0.75, 0.5, -0.25, 0.0, -0.75, 1.0, 1.0, 0.75, 0.0, 0.25, 0.5, -0.5, 0.0, 1.0, 0.5, 0.25, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, 0.75, -0.5, 0.0, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, -0.25, 0.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.5, 0.5, 1.0, 0.5, -0.25, 0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.75, -0.5, 0.0, -0.25, 1.0, -0.5, 1.0, 1.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.25, ]);
    
    
    const array11 = new Float32Array([0.75, -0.75, 0.0, -0.75, -0.75, 0.75, 0.0, 0.25, -0.75, 0.75, 0.0, 0.5, 0.0, 0.5, 0.75, 0.25, -0.25, 1.0, -0.5, -1.0, -0.5, 0.25, 0.75, -0.25, -0.75, -0.75, 1.0, -0.25, 0.75, -0.25, 1.0, -0.75, -0.25, 1.0, 1.0, -0.25, -0.75, 0.0, -0.5, 0.75, -0.5, -0.75, 0.25, 0.75, 0.75, 0.5, -0.5, -0.5, -1.0, 0.75, 0.25, 0.25, 1.0, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, -1.0, -0.25, -1.0, 0.25, -0.25, -0.75, -0.5, -0.25, -0.5, 0.5, 0.25, 0.25, 0.5, -0.5, 0.5, -0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 0.25, -0.75, 0.5, -0.5, -0.5, 0.75, -1.0, 0.0, 0.0, 0.75, 0.75, -0.75, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const array12 = new Float32Array([0.75, 0.75, 0.75, -1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, 0.25, 0.25, -0.5, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.25, 0.0, 0.25, -1.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, -1.0, 0.5, 0.0, 0.5, -0.5, 0.5, -0.75, 0.5, -0.25, -1.0, -0.5, 0.25, 0.75, 1.0, 0.75, -0.5, -0.25, 0.5, 0.5, -0.5, -1.0, 1.0, 0.5, -1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, 0.5, 0.75, 0.5, 0.0, 0.0, 1.0, 1.0, 0.75, 0.75, 0.0, 0.0, 0.25, 0.5, 0.25, 0.0, 0.25, 1.0, -0.75, 0.25, -0.5, 0.75, -0.5, 0.5, 1.0, 0.25, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array13 = new Float32Array([0.75, -0.75, -0.25, -0.5, 0.5, -0.25, 0.75, -0.75, 1.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 1.0, 0.0, 0.5, 1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.5, 0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -0.75, 0.0, 0.25, -0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -0.5, -1.0, 0.5, 0.5, 0.75, -0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 0.0, 0.25, 0.0, 0.5, -0.5, 0.25, -0.25, 0.5, -0.5, 0.5, 0.5, 1.0, -0.25, -0.25, 0.0, -0.5, 0.0, -0.75, -1.0, -0.25, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, 0.5, 0.25, ]);
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    buffer100.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.popDebugGroup();
    device10.pushErrorScope("validation");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const array14 = new Float32Array([0.25, 0.5, -1.0, -0.75, 0.25, -0.5, 0.75, 0.25, -0.75, 1.0, 0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.75, 0.0, 1.0, 0.25, 1.0, 0.25, -0.25, -0.5, -0.5, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.25, 0.75, 0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 1.0, 0.25, 0.0, -0.5, 0.5, -0.25, 0.25, 0.0, -1.0, -0.25, 0.0, -0.5, 0.75, -0.5, -0.75, -0.25, 0.75, 0.0, 0.5, 1.0, 0.5, 0.25, 0.0, 0.75, -1.0, 0.25, -0.75, 1.0, -1.0, 0.25, -0.75, 0.75, 0.75, -0.75, 0.5, 0.25, 0.25, 1.0, -0.75, -0.5, -1.0, 1.0, -1.0, -0.75, 0.0, -0.5, -1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 0.25, 0.25, 1.0, -0.25, -0.75, -0.75, 0.25, 0.5, 0.0, ]);
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
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
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.setPipeline(render_pipeline103);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer101.destroy()
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder200.insertDebugMarker("mymarker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    texture100.destroy();
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const array15 = new Float32Array([0.75, -0.25, 0.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.0, 0.5, -0.75, 1.0, -1.0, -1.0, -0.25, -0.5, 1.0, 0.5, -0.25, 0.75, -1.0, 0.0, -0.75, 1.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.75, -0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.75, -0.75, -0.5, -0.75, 0.75, 1.0, 0.75, -1.0, 0.25, 0.0, 0.0, 0.0, 0.25, 0.5, 0.5, -0.75, -1.0, 1.0, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.75, -1.0, 0.5, -0.75, 0.0, -0.75, 0.0, 0.25, -1.0, 0.5, 0.0, 0.25, -0.25, 0.75, -0.25, -0.25, 0.0, -0.5, 0.5, 0.25, 1.0, 0.75, 0.75, 0.25, -0.75, -1.0, 0.0, 1.0, -0.25, -0.5, 1.0, -0.5, -0.5, ]);
    render_bundle_encoder100.setPipeline(render_pipeline104);
    query100.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query200.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    texture200.destroy();
    
    
    
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    query200.destroy()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
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
    const array16 = new Float32Array([-0.5, 0.5, 0.5, 0.75, -1.0, -0.25, -0.75, 0.5, 0.25, 0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.25, 0.75, -0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.75, 0.25, 0.25, 1.0, 1.0, -0.75, 0.5, 0.5, 1.0, 1.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.5, -1.0, 0.75, 0.25, 1.0, 1.0, 0.75, -0.25, -0.25, 0.5, 0.0, 0.5, 0.0, -0.5, 0.0, 0.25, 0.0, -0.25, -0.25, 0.5, 1.0, -0.25, -1.0, 0.25, -1.0, -0.75, 0.25, 0.5, -0.75, 0.5, -0.25, -0.25, -0.5, -0.25, -0.5, -0.5, -0.5, 0.75, 0.5, -0.5, 0.5, ]);
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
        layout: render_pipeline101.getBindGroupLayout(0),
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
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.submit([command_buffer101, ]);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
        layout: render_pipeline104.getBindGroupLayout(0),
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer102.destroy()
    device30.destroy();
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    device10.pushErrorScope("validation");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    texture201.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.pushErrorScope("out-of-memory");
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
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
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
    buffer107.destroy()
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    buffer402.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder101.popDebugGroup();
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1011, 0);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.queue.writeBuffer(buffer1011, 0, array15, 0, array15.length);
    device10.queue.writeBuffer(buffer1011, 0, array12, 0, array12.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    buffer108.destroy()
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer1011, 0, array9, 0, array9.length);
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer104.destroy()
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    buffer105.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
    
    const command_buffer202 = command_encoder202.finish();
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    
    buffer1011.destroy()
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    buffer201.destroy()
    buffer109.destroy()
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder1000.end();
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    query400.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder201.setBindGroup(0, bind_group201);
    query200.destroy()
    device20.queue.submit([command_buffer202, ]);
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    compute_pass_encoder1001.setPipeline(compute_pipeline1019);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer203.destroy()
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline1019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group104);
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1015, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer1015, 0, array7, 0, array7.length);
    
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout103,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    device40.queue.writeTexture({ texture: texture401 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    query400.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer1012.destroy()
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout102,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    buffer404.destroy()
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    compute_pass_encoder1001.insertDebugMarker("marker")
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
    device20.pushErrorScope("validation");
    
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1010.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    query102.destroy()
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1015, 0, array9, 0, array9.length);
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setStencilReference(1);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    buffer1015.destroy()
    
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
    compute_pass_encoder2010.popDebugGroup()
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    render_pass_encoder4000.executeBundles([])
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer205.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    query100.destroy()
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
    query200.destroy()
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout104,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    device40.queue.writeTexture({ texture: texture401 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout104,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout103,
        compute: {
            module: shader_module1011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.popDebugGroup();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer103.destroy()
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout103,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device40.queue.writeTexture({ texture: texture401 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout105,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_buffer401 = command_encoder401.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder1001.end();
    device40.queue.submit([command_buffer401, ]);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
}