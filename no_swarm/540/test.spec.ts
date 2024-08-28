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
    const array0 = new Float32Array([-1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, 0.75, -0.75, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -0.5, -1.0, 0.5, -0.5, 0.25, 1.0, 0.5, 1.0, -1.0, 0.75, 0.25, 1.0, -0.25, 0.75, 0.25, -0.5, 0.75, -0.5, -0.5, -0.25, 1.0, -0.75, 0.75, -0.75, 1.0, -0.5, 1.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, 0.0, -0.75, 1.0, 0.5, -0.25, -0.5, 1.0, 0.0, 0.75, 0.75, 0.5, -0.5, -1.0, -0.75, 0.25, 0.0, 0.0, -0.75, -0.75, 0.25, -1.0, 0.25, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 1.0, -1.0, 0.25, 0.25, 1.0, 1.0, 0.5, 1.0, -1.0, -0.5, 0.5, -0.75, 0.0, -0.75, 0.75, -0.25, -0.25, -0.5, -1.0, -0.75, -0.75, 1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.25, -0.75, -0.75, -1.0, 1.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.75, 1.0, 0.25, 1.0, 1.0, -0.5, -0.5, 1.0, 0.25, -0.75, 1.0, -0.75, -1.0, -0.25, -1.0, 0.5, -0.5, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, 0.75, 1.0, 0.75, 0.75, 0.75, 0.25, 0.75, -1.0, -1.0, 0.25, 0.75, 0.25, 0.75, -0.25, -0.25, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, 1.0, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, 0.0, -0.25, -0.25, 0.25, -0.5, -0.25, 0.0, 1.0, 0.0, 1.0, 1.0, 1.0, -0.75, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, -0.5, -0.25, 0.25, -0.5, 0.0, 0.5, -1.0, 0.75, -0.5, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 0.25, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([0.75, 0.25, -0.75, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, 1.0, 0.5, 0.5, -0.75, -0.25, -0.75, -0.25, 1.0, -0.75, -0.5, 0.0, 1.0, -0.5, 0.0, -0.75, 0.5, 0.0, -0.25, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, 0.5, -0.75, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, 1.0, 0.75, -0.25, -0.5, 1.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.75, 0.5, 1.0, 0.25, -0.75, 0.0, -0.5, -1.0, -0.75, 0.25, -1.0, 0.0, -0.5, 1.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -0.75, 0.25, 0.0, -0.75, 0.0, -0.25, -0.25, -0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.25, 0.0, 1.0, -0.25, -0.25, 0.25, ]);
    const array3 = new Float32Array([-0.5, -0.5, 1.0, 0.0, -0.5, -0.5, 0.5, 0.25, 1.0, 0.0, 0.75, 0.75, -1.0, 1.0, -0.25, -0.5, -0.5, 0.25, 0.5, 0.75, 1.0, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, 1.0, -0.25, 1.0, 0.75, 0.0, 0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -0.5, -0.25, 1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 0.75, 0.25, 0.5, 1.0, -0.75, 0.25, 0.0, -0.5, 1.0, -0.25, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 0.75, 1.0, 0.75, -0.5, 0.75, 0.75, -1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.5, -0.75, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.25, 0.5, 1.0, 0.75, -0.25, -0.25, -0.5, 0.25, 1.0, 1.0, -0.25, 0.25, -0.25, 0.25, 0.25, ]);
    
    
    
    const array4 = new Float32Array([-0.25, 0.25, 1.0, 0.5, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, 0.5, 0.25, 0.5, -0.5, -0.75, -0.5, -0.25, 0.5, 0.75, 1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.25, -1.0, 0.25, -0.75, -0.5, 0.5, 1.0, 1.0, -0.25, -0.25, 1.0, 1.0, 0.5, 0.25, -0.25, -0.25, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, 0.0, 0.25, 1.0, -1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 0.5, 1.0, -0.5, 1.0, 0.0, 0.25, 1.0, -0.75, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, -0.75, 0.75, 0.0, -0.75, -1.0, 0.0, -0.25, -0.5, -0.25, -0.5, 0.75, -0.5, ]);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([1.0, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -0.25, 0.5, 0.75, 0.75, -1.0, -0.75, -0.75, -0.75, -0.25, 0.0, -0.75, -0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.75, 0.0, -0.75, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, -1.0, 0.5, -0.75, 0.75, 0.5, 0.5, -0.75, -0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 0.25, 0.75, -1.0, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, -0.75, 0.75, 0.5, -1.0, 0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.5, -0.25, -0.75, 0.75, -1.0, -0.5, 0.25, -0.75, -0.75, -1.0, -1.0, -1.0, 1.0, 0.5, -0.25, -0.75, -0.75, -1.0, -0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.5, 1.0, 1.0, -1.0, 0.25, ]);
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    texture000.destroy();
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
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
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array6 = new Float32Array([0.0, -0.75, 0.5, -1.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.5, -0.25, -0.75, -0.25, -1.0, 0.5, 0.0, 1.0, 0.0, 0.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, -0.5, -0.25, -0.75, 1.0, 0.5, 0.75, 0.0, -1.0, -0.25, 1.0, -0.25, 0.0, 0.0, -0.5, -0.25, -1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -1.0, -0.25, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, 0.5, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -0.75, 1.0, 0.25, 1.0, -0.25, 0.5, 0.75, 0.75, -0.75, 0.25, 0.25, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array7 = new Float32Array([-0.5, 0.25, 0.5, 0.75, -0.5, -0.25, -0.5, 0.25, -1.0, 0.0, 0.25, 1.0, -0.5, -0.5, -1.0, 0.75, -0.75, -0.5, 1.0, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 0.5, 1.0, -0.75, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -0.5, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, -1.0, 0.5, -0.25, 0.25, 0.0, -0.25, -0.75, 0.25, -0.25, -0.25, -0.75, -0.75, -0.25, 0.0, 0.5, 0.0, 1.0, 0.25, 0.75, 0.75, 1.0, 0.25, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -0.75, 0.5, 0.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.5, -0.5, 0.5, -0.5, -0.75, 0.75, 0.25, -1.0, -0.75, 0.25, 1.0, -0.75, -1.0, 0.25, 0.0, -1.0, ]);
    
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer200.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    device30.destroy();
    texture200.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder200.popDebugGroup();
    query001.destroy()
    command_encoder201.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    command_encoder000.clearBuffer(buffer000);
    query000.destroy()
    buffer002.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setPipeline(render_pipeline200);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device20.pushErrorScope("internal");
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder202.setPipeline(render_pipeline201);
    render_bundle_encoder201.popDebugGroup();
    command_encoder001.insertDebugMarker("mymarker");
    
    texture001.destroy();
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer201.destroy()
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
    texture202.destroy();
    
    buffer001.destroy()
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const array8 = new Float32Array([0.25, 0.75, -1.0, 0.75, 0.5, -0.25, -0.75, 0.75, 0.25, -1.0, 0.5, 0.0, 0.0, 0.25, 0.0, 0.5, 0.75, 0.75, 0.25, -0.25, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, -0.25, 1.0, 0.5, -0.75, -0.25, 0.75, 0.5, -0.75, -1.0, 1.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.75, 0.75, 1.0, 0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 0.0, -0.5, 0.5, 0.5, 0.0, 1.0, 0.0, 1.0, 0.75, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, -1.0, 0.25, 0.0, 0.5, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, 0.0, 0.0, 0.0, 0.75, 0.25, 0.5, 1.0, -0.25, 0.25, 0.25, 0.0, -0.5, -1.0, -1.0, -1.0, 0.75, 0.75, -0.25, 1.0, -0.75, -0.25, -0.75, -0.75, -0.25, ]);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
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
    command_encoder000.clearBuffer(buffer000);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
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
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
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

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    texture201.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer005.destroy()
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder000.clearBuffer(buffer004);
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    query201.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device00.queue.writeBuffer(buffer003, 0, array7, 0, array7.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    buffer205.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer204.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_pass_encoder2020.setPipeline(render_pipeline202);
    query201.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer006.destroy()
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query000.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.pushDebugGroup("group_marker");
    buffer202.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query202.destroy()
    device20.pushErrorScope("validation");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    buffer008.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder2020.popDebugGroup();
    const buffer207 = device20.createBuffer({
        label: "buffer207",
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    buffer007.destroy()
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    query000.destroy()
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("internal");
    buffer000.destroy()
    
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder100.popDebugGroup()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
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
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    query200.destroy()
    
    render_bundle_encoder201.setVertexBuffer(0, buffer203);
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder002.clearBuffer(buffer004);
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query202.destroy()
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder2010.setStencilReference(1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.insertDebugMarker("marker");
    const command_buffer100 = command_encoder100.finish();
    
    render_pass_encoder2020.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array6, 0, array6.length);
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group202);
    
    command_encoder500.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array8, 0, array8.length);
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    
    render_bundle_encoder200.setVertexBuffer(0, buffer203);
    
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setStencilReference(1);
    const array9 = new Float32Array([0.5, -0.75, -0.25, 0.5, 0.0, 0.25, 0.25, -1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -0.75, -1.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, -0.5, -1.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.5, -0.25, -1.0, -0.75, -0.75, 0.0, 0.25, 0.75, 0.5, 0.25, 0.0, 0.0, -0.75, -0.75, 0.75, 1.0, 0.25, 0.5, -1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, -0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 0.5, -0.25, -0.75, 0.0, 0.0, 1.0, -0.75, 0.25, 0.75, 0.25, 0.0, -0.5, 1.0, -0.25, 1.0, 0.0, 0.75, 0.0, -0.75, 1.0, 0.25, -0.75, -1.0, -1.0, 1.0, -0.75, -0.25, 0.0, -0.5, 0.5, -1.0, -0.75, 1.0, -1.0, -1.0, -0.75, ]);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    texture100.destroy();
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group203);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query501.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2020.popDebugGroup();
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query500.destroy()
    
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout009,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    buffer100.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout003]
    });
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_pass_encoder2050.setPipeline(render_pipeline203);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group204);
    
    
    query500.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    buffer2011.destroy()
    
    
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("internal");
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2050.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2020.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2050.setVertexBuffer(0, buffer203);
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    buffer2013.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder2050.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2030.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group205);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2018, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2018, 0);
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0011, 0);
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder0000.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    render_pass_encoder2050.end();
    device00.queue.submit([command_buffer002, ]);
    const command_buffer205 = command_encoder205.finish();
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group206);
    render_pass_encoder2030.setVertexBuffer(0, buffer207);
    const command_buffer200 = command_encoder200.finish();
    const command_buffer501 = command_encoder501.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group004);
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    render_pass_encoder2030.draw(3);
    command_encoder000.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0014, 0);
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group207);
    render_pass_encoder2030.end();
    const command_buffer203 = command_encoder203.finish();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group208);
    render_pass_encoder2020.setVertexBuffer(0, buffer203);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2040.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2020.end();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0010.end();
    command_encoder001.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    const command_buffer001 = command_encoder001.finish();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, command_buffer204, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer501, ]);
    device00.queue.submit([command_buffer001, ]);
}