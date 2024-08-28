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
    const array0 = new Float32Array([-1.0, 0.25, 0.0, -0.75, -0.75, 0.25, 0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -0.5, -1.0, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, 0.0, 1.0, 0.0, 0.0, -1.0, 0.75, -0.5, 0.75, 0.5, -0.5, 0.0, 0.75, 0.0, 0.75, -1.0, -1.0, -0.25, -0.5, 0.0, -1.0, -1.0, 0.75, 0.25, 0.5, 0.75, 1.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 1.0, -0.25, 0.25, 0.5, 1.0, -1.0, -1.0, 0.0, -0.75, 0.5, 1.0, 0.75, -0.25, 0.25, -1.0, 0.75, 0.75, -1.0, 0.75, -0.5, 0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.5, 0.0, -0.75, 0.75, 0.5, -1.0, -0.75, -0.25, 0.75, 0.75, 0.0, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.5, -0.5, -1.0, -0.5, -1.0, 0.25, 0.75, -1.0, 0.25, -0.25, 1.0, 0.25, 0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 0.5, 1.0, -0.75, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, 0.25, -0.25, 0.5, 0.75, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 0.75, -0.25, 1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 0.25, 0.75, -0.25, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 0.25, -0.5, 1.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.75, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -0.5, -0.75, 0.25, 0.75, -0.75, 0.0, 0.25, 0.0, 0.25, -0.75, 0.0, ]);
    const array2 = new Float32Array([-0.25, -1.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -1.0, 0.25, 1.0, -0.75, -1.0, 0.0, 0.25, -0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.5, 0.25, 0.0, 0.0, -0.25, -0.75, 0.0, -0.25, -0.75, 0.5, 0.0, 0.0, -0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 0.5, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, -0.25, 0.0, 0.25, -1.0, 0.5, 1.0, -0.5, 0.25, 1.0, -0.5, 0.5, 1.0, -0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, 1.0, -0.5, 1.0, 0.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.5, -0.25, 0.75, -0.75, -0.25, 0.0, 0.0, -0.75, 0.25, 0.75, -1.0, 0.0, -0.75, 0.25, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.25, 1.0, 0.75, 1.0, 0.0, -1.0, 0.25, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.0, -0.25, 0.0, -0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, -0.5, -0.75, 0.0, 0.5, 0.5, -0.25, 0.0, -0.75, 0.25, 0.5, -0.5, 0.25, -0.75, 0.5, -0.75, 1.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, -1.0, 1.0, -1.0, 0.0, 1.0, -1.0, -0.75, 0.5, 0.0, 0.0, 0.5, -0.75, 0.0, -0.75, 0.25, 0.5, 1.0, -0.5, 1.0, -1.0, 0.5, -0.75, -1.0, 1.0, 0.5, -0.25, -0.25, 1.0, 0.0, -0.75, 0.0, 0.75, -0.75, 0.25, -1.0, -0.25, -0.25, -0.5, -0.5, 0.75, 1.0, ]);
    
    const array4 = new Float32Array([-0.25, 0.0, 0.5, 0.0, -0.75, 1.0, 0.25, -0.75, 0.25, -0.5, 0.0, -1.0, -0.25, -0.5, 0.75, 0.0, -0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 0.5, 1.0, 0.5, -0.75, 0.75, 0.5, -1.0, -0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 0.0, 0.25, -0.25, 1.0, 0.0, 0.0, 0.5, -0.25, 0.25, -0.75, 0.5, -0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 0.25, -0.25, 1.0, 0.5, -0.75, 0.5, 0.5, 0.5, -0.5, 0.75, -0.75, -0.75, 0.0, 0.0, 1.0, -0.5, -0.5, 1.0, -0.5, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, -0.75, 1.0, -0.25, -0.5, 1.0, -0.5, -0.75, 1.0, -0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 0.5, 0.75, 0.5, -0.25, ]);
    
    
    
    
    
    const array5 = new Float32Array([-0.75, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, -0.5, -0.75, -0.5, 0.5, 0.25, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, 0.0, -1.0, 0.5, -1.0, 1.0, -1.0, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, -0.5, 0.75, 0.5, -0.25, -0.25, 0.25, 1.0, 0.0, 0.5, -1.0, 1.0, 0.25, -0.5, -0.5, 0.25, -0.25, -0.75, -0.5, -1.0, 0.75, -0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.0, 1.0, -0.25, -0.5, -0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.5, -1.0, 0.75, 0.5, 0.25, -0.25, -0.75, -1.0, -0.25, 0.5, 0.25, -0.25, 0.75, -0.75, -0.75, 0.5, -0.75, 0.25, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    command_encoder101.pushDebugGroup("mygroupmarker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder101.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.submit([command_buffer100, ]);
    
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    const array6 = new Float32Array([-0.25, 0.5, 0.75, -1.0, 0.75, -0.5, 0.75, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, -1.0, 0.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.75, -0.25, 0.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.5, 0.75, 0.5, -0.5, 0.75, -0.25, 0.0, 0.5, 0.0, -0.5, -0.75, 1.0, -1.0, 0.75, 0.0, 1.0, -0.75, 0.25, 0.75, 0.5, -0.25, 0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, 0.0, -0.5, -0.25, 0.25, -0.5, 0.0, 0.5, -0.75, -0.5, 1.0, 1.0, 0.5, -0.75, 1.0, 0.0, 0.5, -1.0, 1.0, -0.25, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, -0.25, 1.0, 0.0, -0.25, ]);
    
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const array7 = new Float32Array([0.25, 0.75, 0.5, -0.5, -0.25, -0.75, 0.75, 0.25, 0.0, -1.0, -0.25, -1.0, 0.25, -1.0, 0.5, 0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 1.0, 0.25, -0.25, -0.5, 0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.25, 0.5, -0.5, 0.75, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, 0.25, -1.0, -0.75, 0.25, 0.5, 1.0, 1.0, 0.5, -0.25, -0.75, 0.25, 0.25, 0.25, -1.0, 0.5, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 0.5, 0.0, 0.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, -1.0, -1.0, -0.25, 0.25, 0.5, -1.0, -1.0, -0.75, -1.0, -0.75, 0.5, 0.0, -1.0, 0.5, -0.5, 0.0, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, -1.0, 0.75, 1.0, -0.75, -1.0, -0.5, ]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.pushErrorScope("validation");
    render_bundle_encoder100.popDebugGroup();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array8 = new Float32Array([1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -0.75, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.5, 1.0, -1.0, -0.25, 0.75, 0.25, 0.0, -0.75, 0.0, 0.0, 1.0, 0.75, -1.0, 0.5, 0.25, 0.25, -1.0, 0.5, -1.0, 1.0, 0.25, 0.25, 0.5, 0.0, -0.5, -1.0, -0.75, -1.0, 0.0, -0.5, -0.25, 0.0, -1.0, -0.75, 0.0, 0.25, -1.0, 1.0, 1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.75, 0.25, -1.0, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.25, -0.25, 0.0, 1.0, -1.0, -0.5, -1.0, 0.25, 0.0, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, -0.5, 0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -0.5, 0.25, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
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
    
    
    device20.destroy();
    
    buffer101.destroy()
    
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder101.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer100.destroy()
    command_encoder103.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.setStencilReference(1);
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    device30.pushErrorScope("validation");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1020.setPipeline(render_pipeline101);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder1020.beginOcclusionQuery(0)
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.beginOcclusionQuery(1)
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_pass_encoder1030.popDebugGroup();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1030.setPipeline(render_pipeline103);
    
    const array9 = new Float32Array([0.25, -0.25, 0.75, 0.25, -1.0, 1.0, 0.25, 0.0, 1.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.75, -0.5, 0.5, -1.0, 0.75, 0.75, 0.25, -0.5, 0.75, -0.75, 0.5, 0.5, -0.25, 0.75, -0.25, 0.75, -0.5, 0.5, 1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 0.0, 0.25, -1.0, 0.5, 0.75, -0.25, -1.0, -1.0, -0.25, 0.75, -0.25, 0.25, 1.0, -0.25, -1.0, -0.5, -0.75, 0.5, 0.0, -0.5, 0.75, -1.0, -0.75, 0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, -0.25, -0.5, 1.0, -0.75, -0.25, 0.25, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.0, 0.75, 0.25, 0.5, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder1040.setPipeline(render_pipeline100);
    command_encoder105.pushDebugGroup("mygroupmarker")
    buffer300.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder100.popDebugGroup();
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
    command_encoder105.popDebugGroup()
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer102.destroy()
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.pushErrorScope("out-of-memory");
    buffer103.destroy()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder102.setPipeline(render_pipeline103);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    command_encoder301.insertDebugMarker("mymarker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array10 = new Float32Array([-0.25, -0.75, 0.0, -0.5, -0.5, -0.25, 0.5, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -0.25, 0.75, 0.25, 0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.0, 0.25, -1.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 0.5, 0.0, 0.75, -0.25, 1.0, -0.75, -0.25, 0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, 0.0, -0.75, 0.25, -0.5, -0.5, -0.75, -0.5, 0.0, 0.75, -0.75, 0.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -1.0, -0.5, 0.75, -1.0, -0.75, -0.5, 0.5, 0.25, 0.5, 1.0, 0.75, 1.0, -0.5, 0.25, -0.75, 1.0, -0.5, -0.75, 0.75, -0.25, 0.0, -1.0, 1.0, -0.25, 0.75, 0.0, ]);
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder102.popDebugGroup();
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.insertDebugMarker("marker");
    const command_buffer106 = command_encoder106.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    device10.queue.submit([command_buffer106, ]);
    render_bundle_encoder300.popDebugGroup();
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    
    const array11 = new Float32Array([0.25, 1.0, -0.75, -0.5, 1.0, 0.0, -1.0, -1.0, -1.0, -0.25, 0.0, -0.25, -0.5, 0.75, 0.0, 1.0, -0.75, -0.25, -0.5, 0.0, 0.0, 0.25, 1.0, 0.0, 1.0, 0.5, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 1.0, -0.5, 1.0, 0.75, 0.5, 0.25, 1.0, -0.75, -0.25, 0.0, -0.5, -0.5, 0.5, -0.25, 1.0, -0.25, -1.0, -1.0, -0.5, -0.75, 1.0, 0.5, 0.5, 0.0, 0.25, 1.0, 0.25, -0.75, 0.5, -0.25, 0.0, -0.75, -0.5, 0.25, 1.0, 0.75, -1.0, 0.75, -0.25, -1.0, 0.0, 0.75, -0.75, 0.5, -1.0, 0.25, 0.0, 0.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 1.0, 1.0, 0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 1.0, -0.25, 0.25, -0.25, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1070.executeBundles([])
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_pass_encoder1070.executeBundles([])
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    command_encoder400.insertDebugMarker("mymarker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    render_pass_encoder3000.executeBundles([])
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
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
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group102);
    render_pass_encoder1070.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1070.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
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
    render_pass_encoder3000.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.popDebugGroup();
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1070.setPipeline(render_pipeline102);
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
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder1030.popDebugGroup();
    
    
    command_encoder400.pushDebugGroup("mygroupmarker")
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    render_pass_encoder3010.executeBundles([])
    buffer400.destroy()
    render_pass_encoder1070.pushDebugGroup("group_marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder300.setPipeline(render_pipeline300);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder303.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture301
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1070.popDebugGroup();
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3000.setPipeline(render_pipeline301);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder1020.endOcclusionQuery()
    
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
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

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder1030.setStencilReference(1);
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer401,
        0
    )
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.pushErrorScope("out-of-memory");
    render_pass_encoder3010.executeBundles([])
    buffer108.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder1040.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_buffer401 = command_encoder401.finish();
    buffer301.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder3030.setPipeline(render_pipeline301);
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
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
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device50.pushErrorScope("out-of-memory");
    device60.pushErrorScope("out-of-memory");
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder301.popDebugGroup();
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    command_encoder500.insertDebugMarker("mymarker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_pass_encoder1040.popDebugGroup();
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer105.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_pass_encoder1040.setStencilReference(1);
    
    
    device60.pushErrorScope("out-of-memory");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    buffer109.destroy()
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    render_pass_encoder1020.setStencilReference(1);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder1070.pushDebugGroup("group_marker");
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    buffer303.destroy()
    
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer306.destroy()
    
    buffer500.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.insertDebugMarker("mymarker");
    const render_pass_encoder1080 = command_encoder108.beginRenderPass({
        label: "render_pass_encoder1080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    
    
    
    render_pass_encoder1070.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    render_pass_encoder1080.beginOcclusionQuery(0)
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    
    
    
    render_pass_encoder1080.setPipeline(render_pipeline103);
    render_pass_encoder3000.insertDebugMarker("marker");
    buffer304.destroy()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
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
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_pass_encoder1030.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_buffer500 = command_encoder500.finish();
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
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    render_pass_encoder3000.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    render_pass_encoder3030.beginOcclusionQuery(0)
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    device40.queue.writeBuffer(buffer404, 0, array11, 0, array11.length);
    buffer402.destroy()
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder1080.endOcclusionQuery()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline103.getBindGroupLayout(0),
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

    render_pass_encoder1080.setBindGroup(0, bind_group104);
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder3030.endOcclusionQuery()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    render_pass_encoder1070.popDebugGroup();
    compute_pass_encoder1050.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group105);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group106);
    compute_pass_encoder3020.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    device50.queue.submit([command_buffer500, ]);
}