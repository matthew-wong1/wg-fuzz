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
    
    const array0 = new Float32Array([0.0, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, 0.25, 0.5, -0.25, -0.75, 0.25, 1.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.5, -0.75, 0.5, -0.5, -0.75, 1.0, -0.75, -0.75, 0.75, 0.25, -1.0, 0.25, 0.75, -1.0, -0.5, -0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, 0.25, -0.25, -0.5, 0.75, 0.75, 0.25, 0.25, 0.5, 0.75, -1.0, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, 1.0, -1.0, -1.0, 0.0, 0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, 0.75, 0.75, -0.5, 0.25, 0.25, 0.25, -0.25, 0.25, -0.5, 1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.5, ]);
    const array1 = new Float32Array([-0.25, -0.25, 0.0, 0.75, 1.0, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, -0.75, -0.5, -0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 0.0, 1.0, -0.5, 0.25, 0.75, 0.75, 0.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.25, 0.75, -0.25, 0.0, -0.75, -0.25, -0.25, 0.75, -1.0, 0.25, 0.25, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 1.0, 0.0, -0.5, -0.75, 1.0, 0.75, 0.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.0, -0.75, -1.0, -0.5, 0.75, 1.0, 0.25, -1.0, -0.25, 0.5, 1.0, 0.0, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, 0.0, -0.25, 0.5, 0.75, -0.75, -0.75, 0.5, -1.0, 0.25, 0.25, 1.0, 0.0, 0.0, -0.25, -1.0, ]);
    const array2 = new Float32Array([-0.5, 1.0, 0.5, -0.5, -1.0, 0.75, 0.0, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 0.0, 0.25, -0.75, 1.0, 0.25, 0.5, 0.5, -1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.25, -1.0, 0.25, 1.0, -0.25, -0.5, -0.25, 1.0, -0.5, -0.75, -0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 0.25, 0.5, -0.5, -0.5, -0.5, 0.5, 0.25, -1.0, 0.75, 0.5, 0.75, 0.0, -0.75, 0.0, 1.0, -1.0, 0.75, 0.25, 0.0, 1.0, 0.25, -0.75, 0.5, -0.75, 0.25, -0.5, -0.5, 1.0, 0.5, 0.0, -0.5, 0.5, -1.0, -0.25, 0.5, -0.25, -0.25, -0.25, 0.5, -0.25, -0.25, -1.0, 0.5, -0.5, -0.75, -0.5, -0.5, -0.25, -0.25, -0.5, -1.0, 0.5, 0.0, ]);
    
    const array3 = new Float32Array([-0.75, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, -0.25, -0.25, 0.25, 0.5, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.75, -0.25, -0.75, -0.5, 0.0, 0.5, 0.25, 0.0, -0.25, 1.0, 1.0, -0.75, 0.75, 0.25, 0.5, 0.75, -0.5, -0.5, 0.75, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, 1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -1.0, 0.0, -0.25, 1.0, -0.25, -0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 1.0, 0.0, 0.5, -0.75, -1.0, -0.25, -0.75, -0.5, 0.5, 0.25, 1.0, 0.75, 0.25, 0.5, 0.25, 1.0, 1.0, -1.0, -1.0, -0.5, 0.25, ]);
    
    const array4 = new Float32Array([-0.5, 1.0, -0.5, 0.25, -0.5, 0.5, -1.0, -0.75, -0.5, -1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.25, 0.25, -0.75, 0.75, -1.0, 0.25, -0.25, 0.25, 0.75, 0.5, -0.5, 0.75, 0.25, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, -1.0, 0.75, -0.75, -1.0, -0.75, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -1.0, -1.0, 1.0, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.75, 0.5, 0.75, 1.0, 1.0, -0.5, 0.75, 0.25, -0.25, 1.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, 0.5, -0.25, -0.75, 0.75, -1.0, -0.25, 1.0, -1.0, 0.25, 0.5, -0.25, -1.0, 1.0, ]);
    const array5 = new Float32Array([-0.75, -0.75, 0.0, -1.0, -1.0, 0.5, 0.0, -1.0, -1.0, -0.25, 0.0, 0.25, -0.5, -1.0, -0.25, 1.0, -0.25, 0.75, 0.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 0.75, 0.25, 0.0, -1.0, -0.25, 0.25, 0.25, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.0, 0.75, 0.5, 0.75, -0.5, -0.5, -1.0, -0.25, -0.75, -0.5, 0.5, -1.0, 0.25, -0.25, 0.75, 0.5, 1.0, -0.75, -1.0, 1.0, -0.5, -1.0, 1.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, 1.0, 0.25, 0.0, 0.0, -0.5, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([-0.5, 0.5, -0.75, -1.0, -0.75, -0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.25, 0.0, 0.25, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, 0.75, -0.5, 0.25, 0.0, -1.0, 1.0, 0.5, 0.25, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, -1.0, -1.0, 1.0, 0.75, 1.0, 0.5, 0.5, -0.25, -1.0, -0.75, 1.0, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, 0.0, -0.5, -1.0, -0.25, -0.5, 1.0, 0.5, 0.0, 0.5, 0.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.25, -0.75, -0.25, -0.75, 0.75, 0.25, 1.0, 0.5, -0.25, -0.25, 0.0, 0.5, -0.25, 0.25, 1.0, 1.0, 0.0, -0.25, 0.25, 0.5, 0.5, 0.0, ]);
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array7 = new Float32Array([1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.25, -0.5, -0.75, 1.0, -0.5, 1.0, 1.0, 1.0, -0.5, 0.25, -0.75, -0.25, 0.75, -1.0, -0.5, 0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -0.75, 0.5, 0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 0.25, -0.25, 0.0, -1.0, 0.25, 0.0, 0.25, 0.75, 0.0, -1.0, 0.25, 1.0, 0.0, 0.25, -0.5, 1.0, -0.25, -0.25, 0.5, -0.75, 0.25, -1.0, -0.75, 0.5, -0.75, 0.25, -0.25, -1.0, 0.5, 0.0, -0.75, 0.5, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, -0.25, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.0, 0.25, -0.75, -0.25, 0.25, -0.5, 0.75, 1.0, -1.0, -0.25, -0.5, 0.25, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, 0.0, -0.5, 0.0, -1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.75, 0.5, 0.0, -1.0, -1.0, 0.25, -1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.75, 0.25, 0.0, -0.75, 0.75, -1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 0.75, -1.0, 0.0, -1.0, -0.25, 0.0, 0.25, 1.0, -1.0, -0.75, 1.0, -0.5, -0.25, -0.75, -0.75, 0.25, -0.5, 0.25, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, -0.5, 0.25, 0.25, 0.0, 0.75, 1.0, -0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, -0.5, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.75, -0.5, -1.0, -0.75, 0.25, 1.0, 0.25, 0.25, 0.25, 0.0, 1.0, ]);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    const array9 = new Float32Array([0.25, -1.0, -1.0, -0.75, -1.0, -1.0, -0.5, 0.5, -1.0, 0.0, -0.5, -0.75, 0.5, -0.5, 1.0, 0.5, 1.0, 0.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, -0.75, -0.25, 0.5, 0.75, 1.0, -0.75, 0.0, 0.5, -0.75, -1.0, 0.25, -0.5, 0.25, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, 0.5, 0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.25, -0.75, -0.5, -0.75, 0.5, 0.0, 0.5, -0.5, -0.25, 0.25, 0.75, 0.5, -0.5, 0.75, -0.75, -1.0, -0.75, -0.75, 0.25, 0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 0.25, -0.25, 0.75, -0.75, 0.25, 1.0, -1.0, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, 0.0, -1.0, ]);
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const array10 = new Float32Array([-0.75, 1.0, 0.5, -0.25, -0.75, 0.25, -0.75, 0.0, 0.5, 0.5, -0.75, -1.0, 0.0, 0.5, -0.5, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, -1.0, 1.0, 1.0, 1.0, 0.0, -1.0, -0.5, 0.5, 0.5, 0.5, -1.0, 0.5, 0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 1.0, -0.25, 0.0, -0.75, 0.5, -1.0, -0.25, 1.0, -0.5, -1.0, -0.75, 1.0, -0.75, 1.0, 0.25, 0.0, -0.25, 0.75, -1.0, -0.25, 0.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.5, 1.0, -0.25, 0.5, 0.5, 0.5, -0.25, 0.75, -0.5, -0.75, -1.0, -0.75, -0.5, 0.75, 0.75, 0.75, -0.25, 0.5, 0.25, 0.0, -0.75, 0.0, 0.5, -0.5, 1.0, 0.0, ]);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    query000.destroy()
    
    const array11 = new Float32Array([-0.75, -0.75, 0.25, 1.0, 0.25, 0.5, 0.5, 1.0, 0.75, 0.0, 0.5, 0.5, 0.0, -0.25, -1.0, 0.75, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, -0.5, -0.75, 0.5, 1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, -0.25, 0.0, 0.5, -0.25, -0.5, 0.75, -1.0, 1.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.75, 1.0, -0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -1.0, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, -0.25, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, 0.25, -0.25, -0.25, -1.0, 0.5, -0.5, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.5, 0.0, -1.0, -0.75, -0.75, 0.5, ]);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    query000.destroy()
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    query000.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
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
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group000);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const array12 = new Float32Array([0.0, -0.75, 1.0, 0.25, -0.25, 0.0, 0.75, -1.0, -0.5, 1.0, 0.75, -1.0, -0.5, 0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -0.5, 0.0, 0.5, -0.5, -0.75, -0.5, 1.0, 0.0, -1.0, 0.75, 1.0, -1.0, -1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 0.75, -1.0, 1.0, -0.5, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, -1.0, 1.0, 1.0, 0.25, 0.0, -0.5, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.5, -0.5, -0.75, -0.25, 0.75, 0.5, 0.5, -1.0, 1.0, 1.0, 0.25, 0.75, 0.75, 0.25, -1.0, 0.25, 0.25, -1.0, -0.25, -0.25, -0.5, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, -0.75, 0.0, 0.75, -0.25, 1.0, ]);
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
    
    query000.destroy()
    
    device10.pushErrorScope("internal");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query000.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device20.pushErrorScope("internal");
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query200.destroy()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
    
    
    query002.destroy()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const array13 = new Float32Array([-0.25, -0.25, -0.75, 0.0, 0.25, 0.25, -0.25, 0.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, -0.75, 0.25, 0.0, 1.0, 1.0, -0.5, -0.25, -0.25, 1.0, 0.5, 0.0, 0.75, -0.25, 1.0, -0.25, 0.0, 1.0, 0.5, -0.75, 0.0, 0.75, -0.75, 0.25, -0.5, -0.5, -0.5, 0.25, 0.25, -0.25, 0.0, -0.25, -1.0, 0.75, 0.75, 0.75, -0.5, 0.25, 0.0, -1.0, 0.5, 0.0, -0.75, 0.75, 0.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.5, 0.75, 0.5, 0.5, 0.0, -0.5, -0.75, 1.0, -0.25, 1.0, -0.5, -1.0, 0.25, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.75, 0.5, -1.0, -0.5, -0.75, 1.0, ]);
    query001.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const array14 = new Float32Array([-1.0, 0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.25, -1.0, -0.5, 1.0, 0.5, 0.5, -0.25, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, -0.5, -1.0, -0.5, -0.75, -0.75, 1.0, 0.25, 0.25, -0.75, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, -1.0, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, -0.5, 0.0, 0.25, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.0, 0.5, 0.25, 0.25, 0.5, 1.0, -0.25, -0.5, 0.0, -0.25, 0.5, 1.0, -0.25, -0.5, 0.0, 0.5, 1.0, 0.75, 0.75, -0.25, 0.0, 0.25, 0.5, 0.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, ]);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    render_bundle_encoder000.draw(3);
    
    
    query101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder101.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query200.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1020.popDebugGroup()
    query101.destroy()
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    query101.destroy()
    
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_bundle_encoder002.setIndexBuffer(buffer006, "uint16");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query002.destroy()
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    
    
    const array15 = new Float32Array([-0.75, 1.0, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.0, 0.75, 0.75, 0.5, 0.5, 0.5, -0.25, 0.25, 0.75, 0.0, -1.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.0, 0.75, -0.5, -0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.75, 0.0, 0.5, 0.5, -0.5, 1.0, -1.0, 0.0, 0.25, -1.0, -0.5, -0.5, -0.5, -0.25, 0.25, 0.25, -1.0, 0.0, 0.5, 0.75, 0.25, -1.0, 1.0, -0.75, -0.25, -0.75, -0.75, -1.0, 0.75, -0.25, -1.0, -0.75, 1.0, -0.5, -1.0, -0.75, 0.5, -0.25, 0.5, -0.5, -1.0, 0.0, 0.75, 1.0, -0.25, 0.75, -0.25, -0.25, -1.0, 0.25, -0.75, -0.5, 0.25, 0.75, 0.5, 0.25, 0.25, -0.25, 0.75, 1.0, -0.25, 0.0, -1.0, 0.0, -0.25, -1.0, 1.0, ]);
    
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
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder103.clearBuffer(buffer103);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder002.draw(3);
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
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    render_bundle_encoder002.finish();
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
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
    render_bundle_encoder101.setPipeline(render_pipeline100);
    query300.destroy()
    
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
    
    query002.destroy()
    command_encoder200.insertDebugMarker("mymarker");
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
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query003.destroy()
    
    
    device10.pushErrorScope("internal");
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
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    query003.destroy()
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.setPipeline(render_pipeline102);
    
    
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
    
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    
    query100.destroy()
    
    
    render_bundle_encoder000.finish();
    
    
    query101.destroy()
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
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
    compute_pass_encoder1020.popDebugGroup()
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    device30.pushErrorScope("validation");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer002 = command_encoder002.finish();
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
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
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    query200.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const command_buffer201 = command_encoder201.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_buffer202 = command_encoder202.finish();
    
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
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    query001.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    render_bundle_encoder001.draw(3);
    
    
    
    query001.destroy()
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder0000.popDebugGroup()
    
    
    query301.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
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
    
    
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
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
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query301.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder001.finish();
    command_encoder003.clearBuffer(buffer008);
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query101.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    device30.queue.submit([command_buffer300, ]);
    
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const array16 = new Float32Array([1.0, 0.25, -1.0, -0.5, 0.75, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, -0.25, -0.75, 1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.25, -0.25, -0.75, 0.25, -0.75, 0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, 1.0, 1.0, 0.25, -0.25, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, -0.75, 0.5, -0.25, 0.0, 0.5, 0.75, -1.0, -0.75, 1.0, -0.5, -1.0, 0.25, 0.75, 0.25, 0.0, 1.0, -0.5, -1.0, -1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.5, -1.0, -1.0, 0.0, -1.0, -0.25, -0.5, -0.25, 0.0, 0.0, 0.5, 0.0, -0.5, -0.25, -1.0, 1.0, -0.75, -0.75, 0.0, 1.0, 0.5, -1.0, 0.5, 0.5, 0.5, -0.25, ]);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    device00.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    query301.destroy()
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_buffer003 = command_encoder003.finish();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer201, ]);
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer203, ]);
}