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
    const array0 = new Float32Array([0.0, -1.0, 0.75, -0.75, -0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 1.0, -0.75, -1.0, 0.0, -1.0, -0.25, 0.25, -0.25, 1.0, -0.75, -0.5, 0.75, 0.75, -1.0, -0.25, 1.0, 0.25, 0.5, 0.0, -0.5, 0.5, 1.0, 0.0, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 0.75, -0.75, 1.0, 0.5, -0.25, 0.25, 1.0, 0.25, 1.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.5, -0.25, 0.0, -0.75, 1.0, 1.0, -1.0, 0.75, 0.5, 0.75, 0.25, -1.0, -0.25, 0.0, 0.0, 0.75, 0.25, 0.25, -0.25, -0.25, 1.0, 0.5, -1.0, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, -1.0, 0.25, 0.5, 0.25, -0.5, 0.75, 0.25, -0.75, 0.25, -0.5, -0.5, -1.0, -0.25, 1.0, 0.25, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array1 = new Float32Array([-1.0, 0.75, -0.25, 0.5, 0.25, 1.0, 0.0, -1.0, -0.25, -1.0, 0.75, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, 0.0, -0.25, -0.75, 1.0, 1.0, -0.25, 0.75, -0.25, -1.0, 0.0, 0.25, 0.5, 0.5, 0.5, 0.75, -0.5, 0.25, 0.5, -1.0, -0.75, 1.0, -1.0, -0.5, 0.0, 0.25, -1.0, -0.75, -0.5, 0.0, 0.25, 0.5, -1.0, -0.5, 0.5, -0.5, 0.0, 0.5, 0.25, -0.75, -0.5, -1.0, -0.75, -0.5, 0.5, 0.75, 0.25, 0.75, 1.0, 0.25, 0.75, 0.5, 1.0, -0.25, 0.5, -0.5, 0.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.75, -0.75, -1.0, 0.75, -0.5, 0.5, 0.75, 0.75, 0.75, -0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, ]);
    
    const array2 = new Float32Array([1.0, 0.5, 1.0, 0.25, -1.0, 0.75, 0.0, -0.5, -1.0, 0.5, 1.0, 0.75, 1.0, 0.0, -0.75, -0.25, 0.5, 0.25, 1.0, -0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.75, -0.5, 0.75, 0.0, 1.0, -0.5, -0.5, 1.0, 0.5, -1.0, -0.75, -0.25, -0.75, 0.5, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 1.0, 0.5, -0.5, 1.0, 0.0, -1.0, 0.0, -0.5, -1.0, 1.0, -0.25, -1.0, -0.25, 0.25, -0.5, 0.0, -0.5, 0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -0.25, 0.0, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, -0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 0.0, -1.0, 0.25, ]);
    const array3 = new Float32Array([-1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -1.0, 0.75, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 1.0, -0.75, 0.0, -0.5, 0.75, 0.5, -0.5, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.5, -1.0, -1.0, -0.25, 0.0, 0.75, 0.75, 0.75, -0.25, 0.25, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 1.0, 1.0, -0.75, -0.25, -0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 0.25, 0.5, -1.0, 0.75, 1.0, -0.75, -0.25, -0.75, 0.0, -0.5, 0.25, 1.0, -0.25, -0.5, -0.25, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, 0.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 1.0, -0.5, -0.75, 0.75, 1.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.5, 1.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.75, 0.25, 0.75, -1.0, 0.0, 0.25, 1.0, 0.0, 0.25, -1.0, 1.0, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.75, -0.75, -1.0, -1.0, -0.5, 0.75, 1.0, -0.5, 0.25, 0.5, 0.0, -0.25, -0.75, 1.0, -0.75, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, 0.75, -0.5, -0.5, 0.0, 0.25, 0.75, 0.75, 0.0, 0.0, 0.0, -1.0, -0.25, 1.0, -0.75, 0.0, 0.5, 0.0, 0.5, -0.5, 0.5, 0.75, 0.0, -0.75, -1.0, 0.75, -0.25, -0.25, 0.5, 0.0, -0.25, -0.25, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, -0.75, -0.75, 1.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.0, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("internal");
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query002.destroy()
    device00.destroy();
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array5 = new Float32Array([0.5, 0.25, 0.0, -0.25, 1.0, 0.25, 0.0, 0.0, 0.75, -1.0, -0.5, 1.0, -0.5, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.25, 0.0, -0.25, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -0.5, 0.0, -0.25, 0.5, -0.25, 0.5, 0.25, 0.5, 1.0, 0.0, 1.0, -0.75, 0.25, 1.0, 0.5, 0.0, 0.75, 1.0, -0.5, -0.75, 0.25, 0.5, 0.5, 1.0, -0.25, -0.25, -0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -0.75, 0.0, -0.5, -0.75, -1.0, 0.75, -1.0, -1.0, -0.75, -0.5, 0.0, 0.5, -0.5, 0.75, -0.75, -1.0, -0.5, 1.0, -0.5, 1.0, 0.5, -1.0, -0.25, 1.0, 0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.75, -0.75, ]);
    
    const array6 = new Float32Array([0.5, -0.5, -0.5, -0.25, -0.5, -0.25, 0.5, 0.5, -0.5, -0.75, 1.0, 0.25, -0.75, 0.0, 0.5, -0.75, 1.0, 0.75, 0.0, -0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -1.0, -1.0, 1.0, 0.75, 1.0, 1.0, 0.5, 0.75, 0.0, -0.5, -0.25, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, 1.0, -1.0, 0.75, 0.25, -0.5, -0.25, 0.25, -1.0, 0.75, 0.75, 0.0, -0.25, -1.0, -0.75, 1.0, -0.5, -0.75, 1.0, -1.0, 0.25, 0.25, 0.0, -0.5, -0.75, -1.0, -0.75, 0.0, -0.5, -0.5, 0.5, -1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.0, 0.5, -0.25, 1.0, -0.75, 0.25, 0.75, 0.25, 0.75, -0.75, 0.0, -0.5, 0.5, 0.25, 1.0, -0.75, 1.0, 0.0, 0.75, -0.5, -1.0, 0.25, ]);
    
    
    
    const array7 = new Float32Array([-0.75, 1.0, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -1.0, 0.75, 1.0, 0.75, -1.0, -0.5, -0.5, -0.75, -0.25, -0.75, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, -0.25, -0.25, 0.25, 1.0, 0.25, -1.0, -0.25, 0.0, -0.75, -0.5, 0.0, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, -0.25, -0.75, -0.5, 0.5, 0.0, -0.75, -0.25, 0.25, -1.0, 0.75, 1.0, -0.75, 0.5, 0.0, 0.75, 0.25, -0.25, -0.5, -1.0, -0.25, 0.0, -0.25, -0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 0.5, -0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 0.0, 0.75, ]);
    const array8 = new Float32Array([0.25, -0.25, 0.25, -0.25, 0.5, 0.5, 0.25, -1.0, 0.5, 0.25, 0.25, -0.5, -0.25, -1.0, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, 0.75, -1.0, 0.75, 0.75, 0.5, 0.0, 0.0, 1.0, 0.75, -0.5, 1.0, -0.25, -1.0, -0.25, 1.0, -0.25, -0.75, 1.0, 1.0, -1.0, -0.75, 1.0, 0.25, -0.25, 0.0, 0.5, 0.0, -1.0, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 0.5, 1.0, -0.75, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, 0.0, -1.0, 0.0, 0.5, 0.5, -0.5, -0.25, 0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.5, 0.25, -0.5, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, -0.25, -1.0, 1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.75, -1.0, 0.0, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    device30.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    buffer401.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
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
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    query100.destroy()
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device40.queue.writeBuffer(buffer402, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array9 = new Float32Array([0.0, 0.75, -1.0, 1.0, 0.75, 0.0, 1.0, -0.75, -0.25, -1.0, 1.0, 0.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, 0.0, 0.5, -0.25, -0.75, -0.75, 0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, 0.0, -0.25, -1.0, 0.25, 0.5, -0.5, -0.75, 0.5, 1.0, -1.0, 1.0, 0.25, 1.0, 0.5, -0.25, 0.25, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 1.0, -0.5, -0.75, -0.25, -1.0, -0.25, -0.75, -0.75, -0.5, 1.0, -0.5, 0.25, -0.5, 0.0, 0.25, 0.5, 0.25, -0.75, 0.25, 0.5, 0.25, 1.0, -0.25, 1.0, -1.0, -1.0, 0.5, -0.5, -0.75, ]);
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    buffer403.destroy()
    
    render_bundle_encoder400.popDebugGroup();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder102.clearBuffer(buffer102);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.destroy();
    
    device20.pushErrorScope("validation");
    
    buffer100.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    query100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    command_encoder102.clearBuffer(buffer102);
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer101.destroy()
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device60.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    
    buffer102.destroy()
    const command_buffer101 = command_encoder101.finish();
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    query100.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    buffer103.destroy()
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
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
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device80.destroy();
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    device50.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    query700.destroy()
    
    device70.pushErrorScope("validation");
    
    
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
    query100.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_buffer700 = command_encoder700.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    buffer200.destroy()
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
    
    query700.destroy()
    
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder102.popDebugGroup()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline105);
    command_encoder701.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder101.setPipeline(render_pipeline105);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const command_buffer201 = command_encoder201.finish();
    
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
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer900 = command_encoder900.finish();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query100.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_bundle_encoder102.setPipeline(render_pipeline100);
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query101.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device100.pushErrorScope("internal");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device90.pushErrorScope("validation");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    compute_pass_encoder2000.popDebugGroup()
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.pushErrorScope("out-of-memory");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer102 = command_encoder102.finish();
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
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    render_bundle_encoder1001.insertDebugMarker("marker");
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device90.queue.submit([command_buffer900, ]);
    render_bundle_encoder102.popDebugGroup();
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer700.destroy()
    
    
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    query101.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    compute_pass_encoder10000.insertDebugMarker("marker")
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const command_buffer202 = command_encoder202.finish();
    
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
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    device20.pushErrorScope("internal");
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    query701.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
        bindGroupLayouts: [bind_group_layout200]
    });
    const array10 = new Float32Array([1.0, 0.5, 0.0, -0.75, -0.5, -1.0, -1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 1.0, 0.0, 0.0, -0.25, 0.5, 0.25, -0.5, 1.0, 0.0, 1.0, -0.5, 1.0, 0.5, 0.75, -1.0, -1.0, -0.25, 0.5, 0.25, 1.0, 0.25, 1.0, 0.0, 0.0, -0.5, -0.5, 0.5, -0.25, 1.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.25, -0.75, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.0, -0.25, 1.0, 0.5, 0.75, 1.0, -0.75, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, -1.0, -0.5, 0.25, -0.75, 1.0, -0.75, 0.75, 0.0, -0.5, -1.0, 0.5, -0.5, -0.75, 1.0, 0.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.75, -0.75, 1.0, -0.5, 0.75, 0.25, 0.5, -0.25, 0.75, -1.0, -0.25, -1.0, -0.75, ]);
    const command_buffer1100 = command_encoder1100.finish();
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    
    query200.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    
    buffer201.destroy()
    device110.pushErrorScope("validation");
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder1001.pushDebugGroup("mygroupmarker")
    buffer104.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const bind_group_layout1002 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1002",
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
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    query102.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder10010 = command_encoder1001.beginComputePass({ label: "compute_pass_encoder10010" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder10000.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    
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
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    
    const command_buffer901 = command_encoder901.finish();
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device110.queue.submit([command_buffer1100, ]);
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
    const pipeline_layout1101 = device110.createPipelineLayout({ 
        label: "pipeline_layout1101",
        bindGroupLayouts: [bind_group_layout1100]
    });
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler1104 = device110.createSampler( { label: "sampler1104" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    query103.destroy()
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    command_encoder1101.pushDebugGroup("mygroupmarker")
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
    
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const render_pipeline1016 = device10.createRenderPipeline({
        label: "render_pipeline1016",
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
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
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
    const bind_group_layout1102 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1102",
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
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device70.queue.submit([command_buffer700, ]);
    render_bundle_encoder701.pushDebugGroup("group_marker");
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    query1001.destroy()
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
    
    compute_pass_encoder10000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer1002 = command_encoder1002.finish();
    compute_pass_encoder2000.popDebugGroup()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    device100.queue.submit([command_buffer1002, ]);
    device90.queue.submit([command_buffer901, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer106 = command_encoder106.finish();
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer106, ]);
    device10.queue.submit([command_buffer101, ]);
    command_encoder1101.popDebugGroup()
    const command_buffer702 = command_encoder702.finish();
    device70.queue.submit([command_buffer702, ]);
    const command_buffer1101 = command_encoder1101.finish();
}