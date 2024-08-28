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
    
    
    const array0 = new Float32Array([1.0, -0.25, -0.25, -0.25, 0.25, -0.25, 0.5, 1.0, 1.0, 1.0, 0.25, -0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, -0.5, 0.5, -0.25, 1.0, -0.5, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 0.0, -1.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.5, 1.0, 0.75, -0.5, -0.75, 0.75, -0.5, 0.5, -0.25, -0.5, -0.75, -0.75, 0.25, -0.5, -0.75, -0.75, 0.0, -0.75, -0.5, -0.75, 1.0, 1.0, -0.75, 0.5, -0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -0.5, -0.5, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, 0.0, -1.0, -0.25, 0.25, 0.75, 1.0, 1.0, 0.25, 0.5, -0.25, 0.0, -0.5, 0.25, 1.0, 0.25, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, 0.0, -1.0, -0.75, 1.0, ]);
    const array1 = new Float32Array([-1.0, 0.75, -0.25, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, -0.25, -0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 0.25, 0.0, 0.5, 0.5, -0.25, 0.75, -1.0, 0.0, 0.5, 0.5, -0.5, 1.0, 0.75, -1.0, 0.5, -0.75, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, -0.5, -1.0, 0.0, 0.5, -0.25, 0.5, -0.25, -0.25, -0.25, -0.5, 0.0, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 1.0, -0.75, 0.75, 0.75, 0.75, 0.75, -0.25, 0.75, 0.0, 0.75, 0.25, 1.0, 0.25, -0.25, -0.5, 0.25, -1.0, 0.5, -0.25, 0.75, 0.5, -0.75, -1.0, 1.0, -0.75, 0.25, 0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, 0.5, -0.75, 0.0, -0.75, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array2 = new Float32Array([0.5, -0.5, 0.0, 0.25, -0.5, 0.5, 0.25, -0.5, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 0.0, 0.0, -1.0, 0.0, 0.75, -0.25, -1.0, 1.0, 0.75, -0.25, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -0.75, -0.25, 0.5, -0.25, 0.25, -0.75, -1.0, -0.75, -0.5, 0.75, -0.25, -0.25, -0.75, -1.0, -0.75, 0.5, 1.0, 0.25, 0.0, -0.75, 0.0, -0.75, 0.5, 0.5, -1.0, -1.0, -0.25, -0.25, 0.5, -0.5, 1.0, 0.5, 0.75, 0.25, -0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 0.0, 1.0, 0.0, -0.5, -0.75, 1.0, 1.0, 0.0, -0.5, -1.0, -0.75, -1.0, 1.0, 1.0, 0.75, 0.75, -1.0, -0.75, 0.5, -0.5, 1.0, -0.75, -0.25, 0.5, -1.0, -0.75, ]);
    
    const array3 = new Float32Array([0.25, 1.0, 0.25, -0.5, 0.25, 0.75, -0.25, 1.0, -0.75, -0.25, 0.25, 1.0, 1.0, -0.75, -0.75, -0.5, -1.0, 0.75, -0.5, 1.0, -1.0, -0.25, -0.75, -0.75, -0.5, 0.5, -0.5, 0.5, 0.5, -0.75, 1.0, -0.5, -0.5, 0.75, 0.5, 0.0, 0.0, -1.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, -0.75, -0.5, 0.0, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, -1.0, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, -0.75, -0.5, 1.0, -0.25, 0.0, -0.25, -0.25, 0.5, 0.75, -1.0, 0.5, 1.0, 1.0, -1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.25, 1.0, 0.25, 0.0, -0.25, 0.25, -0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 1.0, 0.5, -0.25, -0.5, ]);
    const array4 = new Float32Array([0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -0.75, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, -1.0, 0.0, -1.0, 0.0, -0.75, 0.75, -1.0, 1.0, -0.25, 0.0, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 0.0, 0.75, -0.5, -0.25, -0.25, 1.0, -1.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.5, -0.25, -0.5, -1.0, 0.75, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, 1.0, 0.0, -0.25, 0.5, 1.0, 0.25, -0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 0.0, 0.75, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 1.0, -0.5, -1.0, 0.0, 0.75, -0.5, 0.0, 0.25, -0.75, -0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 0.5, -0.5, -1.0, -0.25, ]);
    
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array5 = new Float32Array([-1.0, 0.5, 0.5, 1.0, 0.0, 1.0, -0.5, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, 1.0, 1.0, -0.5, -0.5, -1.0, 1.0, -0.25, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.25, 1.0, -0.25, 0.25, -0.25, 1.0, -0.75, -0.25, 1.0, -0.75, -0.5, 0.25, 0.5, 0.0, -0.5, 0.25, 0.25, -1.0, -0.75, -0.25, 1.0, -0.75, 0.5, -1.0, -0.25, -0.75, 0.5, 0.5, -0.25, 0.25, 0.5, -0.25, 0.0, 1.0, -0.75, 1.0, 0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -0.75, 0.0, 1.0, 0.25, -0.25, 0.25, 0.5, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, -0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, 0.5, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array6 = new Float32Array([-1.0, -0.5, -0.5, -0.75, 1.0, 0.25, 0.0, -0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 1.0, 0.25, 0.5, -1.0, 0.5, -0.5, -0.25, -0.5, -0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.25, -1.0, 0.75, 0.25, 1.0, 1.0, 0.25, -0.5, 0.0, -0.5, -0.75, 0.0, 0.25, 0.0, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, 1.0, 0.5, 0.75, -0.75, 0.25, 0.5, 0.5, -0.25, 0.0, -0.75, -0.5, -0.25, 1.0, -0.5, 0.25, 0.0, -1.0, 0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, -0.5, 0.75, 0.0, 0.75, 1.0, 0.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.75, -1.0, 0.25, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.25, 0.5, -1.0, ]);
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.destroy();
    
    
    
    const array7 = new Float32Array([0.75, 1.0, 0.75, -0.25, -0.75, 0.25, 0.75, -0.25, -1.0, 0.25, -0.5, 0.25, -0.75, -0.5, -0.25, 0.5, 1.0, 0.75, 0.75, 0.0, -0.5, -0.25, 0.5, 1.0, -0.75, 1.0, 0.5, 0.75, -1.0, -1.0, 0.5, 1.0, -0.75, -0.75, -0.5, -0.25, -0.75, -0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 0.5, -0.25, -0.75, 1.0, 0.75, -0.5, 0.75, -1.0, -0.75, 0.25, -0.75, 1.0, 1.0, 0.25, 0.25, 0.75, 0.0, 1.0, 1.0, 0.75, 0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -1.0, 0.5, 0.5, 0.25, -1.0, -1.0, -0.25, -0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -0.25, 0.75, 0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, 1.0, 1.0, -0.5, -1.0, -1.0, 0.0, -0.75, ]);
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device20.destroy();
    
    
    const array8 = new Float32Array([0.0, -0.25, 0.75, 0.75, 0.5, 0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, -0.25, -1.0, 0.0, -0.75, 0.5, 0.75, 1.0, -0.5, -0.25, 0.0, 0.5, 0.75, 0.25, 0.0, -1.0, 0.5, -1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.5, 1.0, -0.75, 0.75, 0.5, 0.75, 1.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.5, 0.5, 0.75, 0.0, 0.75, 0.5, 0.5, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.0, 0.5, 0.5, -1.0, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, 0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 0.5, -1.0, -1.0, 0.75, -0.75, -0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 1.0, 0.0, -1.0, -0.5, ]);
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
    device30.pushErrorScope("validation");
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
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const array9 = new Float32Array([0.75, -0.5, 0.25, -1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, 0.5, 0.75, 0.25, 0.25, 0.0, 0.0, -0.75, 0.0, 0.75, -0.5, -0.75, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, -0.25, 0.0, 1.0, 0.5, 0.25, 0.5, 0.5, -0.25, -0.5, 1.0, -1.0, 1.0, -0.25, 0.25, 0.0, 1.0, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, 0.0, -0.5, -1.0, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.5, 1.0, -0.75, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, 1.0, -1.0, -1.0, 0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 0.25, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -1.0, 1.0, -1.0, 0.0, 0.75, ]);
    command_encoder300.popDebugGroup()
    
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
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
    
    const array10 = new Float32Array([0.5, 1.0, 0.5, 0.75, -0.25, 0.5, -1.0, 0.5, -0.5, 1.0, 0.0, 0.5, -0.25, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, 1.0, 0.5, -1.0, 0.75, 0.5, 1.0, 0.0, 0.5, 0.0, -0.5, 1.0, -0.75, 0.25, 0.75, -0.75, 1.0, -0.25, -0.75, 0.25, 0.25, 0.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.25, -0.5, -0.5, -0.75, -0.75, 0.5, -1.0, -0.25, -0.75, 0.0, 0.5, 0.0, 0.5, 1.0, -0.75, 0.0, 0.5, -0.25, 0.5, -1.0, 0.25, -1.0, 0.0, -0.25, -0.5, -1.0, 1.0, 1.0, -1.0, 1.0, 0.75, -0.25, 0.25, -0.25, -0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.0, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer301.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    command_encoder300.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    query301.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
        occlusionQuerySet: query300
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    command_encoder400.pushDebugGroup("mygroupmarker")
    query302.destroy()
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    render_pass_encoder3000.setPipeline(render_pipeline302);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_pass_encoder3000.beginOcclusionQuery(0)
    query301.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3000.endOcclusionQuery()
    
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    texture300.destroy();
    device40.pushErrorScope("validation");
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    command_encoder401.insertDebugMarker("mymarker");
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    
    device30.pushErrorScope("internal");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    
    
    query300.destroy()
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    render_pass_encoder3000.insertDebugMarker("marker");
    compute_pass_encoder4010.insertDebugMarker("marker")
    const array11 = new Float32Array([-1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 1.0, 0.0, 0.5, -1.0, 0.75, -0.5, 1.0, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 1.0, -0.75, 0.25, -1.0, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.5, 1.0, -0.75, 0.5, 0.0, -0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 0.0, -0.5, 1.0, 0.25, -1.0, 0.75, -0.25, 0.0, 1.0, -1.0, -0.25, -0.25, 1.0, -0.75, -1.0, -0.75, 0.5, -0.75, -0.75, 0.0, 0.0, -0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.5, 1.0, 0.0, 0.75, -1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.25, 0.25, ]);
    
    buffer303.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder4010.insertDebugMarker("marker")
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    compute_pass_encoder4000.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    
    query300.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    device50.pushErrorScope("out-of-memory");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    query304.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    query302.destroy()
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    query301.destroy()
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    texture400.destroy();
    render_pass_encoder3000.setStencilReference(1);
    
    compute_pass_encoder4000.popDebugGroup()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
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
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
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
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    buffer400.destroy()
    query300.destroy()
    
    
    
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
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
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group301);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    texture401.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    query305.destroy()
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    render_bundle_encoder400.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3000.setStencilReference(1);
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    
    query305.destroy()
    query305.destroy()
    query304.destroy()
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    buffer306.destroy()
    device50.pushErrorScope("out-of-memory");
    buffer305.destroy()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: query300
    });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    render_pass_encoder4020.executeBundles([])
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3010.setPipeline(render_pipeline304);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4020.setStencilReference(1);
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
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
    query303.destroy()
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    texture301.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer302.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    
    
    device30.pushErrorScope("validation");
    query403.destroy()
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.writeBuffer(buffer3011, 0, array5, 0, array5.length);
    
    texture402.destroy();
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer3011, 0, array10, 0, array10.length);
    {
        await buffer3011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3011.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    buffer307.destroy()
    device30.queue.writeBuffer(buffer3011, 0, array7, 0, array7.length);
    
    buffer309.destroy()
    
    query500.destroy()
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    buffer3011.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    query500.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder4020.executeBundles([])
    query500.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    render_pass_encoder4020.beginOcclusionQuery(0)
    device40.pushErrorScope("validation");
    buffer3010.destroy()
    
    
    buffer304.destroy()
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout305,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    render_pass_encoder4020.endOcclusionQuery()
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query304.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
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
    query305.destroy()
    render_pass_encoder4020.beginOcclusionQuery(1)
    query401.destroy()
    render_pass_encoder4020.endOcclusionQuery()
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.popDebugGroup();
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture302.destroy();
    device100.pushErrorScope("internal");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    compute_pass_encoder4010.setPipeline(compute_pipeline400);
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder4020.executeBundles([])
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeBuffer(buffer3012, 0, array11, 0, array11.length);
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    
    
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
        layout: compute_pipeline400.getBindGroupLayout(0),
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

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder4020.setStencilReference(1);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer403 = command_encoder403.finish();
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer404, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer404, 0);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder4010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer407, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer407, 0);
    compute_pass_encoder4000.popDebugGroup()
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder4000.end();
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    compute_pass_encoder4010.end();
    command_encoder400.popDebugGroup()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    command_encoder401.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    compute_pass_encoder5000.end();
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
}