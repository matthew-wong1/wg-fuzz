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
    const array0 = new Float32Array([-1.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.75, 0.25, -1.0, -0.5, -0.75, 1.0, 0.5, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, 0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -0.5, 0.25, 1.0, 0.0, 0.25, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, 0.5, -0.5, 0.0, 0.75, 1.0, 1.0, 0.0, 0.0, -0.5, 0.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 0.75, 0.0, 0.25, 0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -0.25, 1.0, -0.5, -0.5, -0.25, -1.0, -0.75, -1.0, -0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.0, 0.0, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.25, 0.5, 0.0, -0.25, 0.75, 0.75, ]);
    const array1 = new Float32Array([-1.0, -0.5, 0.5, -0.75, 0.0, 1.0, 0.75, 0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, -1.0, -1.0, 0.75, 0.75, 1.0, 1.0, -1.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.75, -0.5, 0.5, -0.75, 0.25, -0.25, 0.0, 0.5, 0.25, -0.75, -1.0, -0.25, 0.75, 0.5, 0.0, -0.25, -0.75, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, 0.75, -0.25, 0.0, -1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 0.75, -0.75, 0.25, -0.75, 0.0, 0.5, 0.25, 0.0, -0.25, -0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.25, -0.5, 0.25, 0.0, 0.5, -1.0, -0.75, -0.25, -1.0, -0.5, -0.75, 0.75, 0.75, -0.25, 0.5, 0.0, 0.25, 0.0, 1.0, -1.0, ]);
    const array2 = new Float32Array([0.75, 0.25, -0.25, 0.75, 0.75, -0.5, -0.75, 0.0, -0.25, 0.0, -0.25, 0.5, 1.0, -0.25, -0.25, -0.25, 1.0, 0.25, 0.25, -1.0, -0.5, -0.75, 0.25, 0.0, 0.25, 0.0, -0.25, 1.0, -0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -1.0, -1.0, 0.75, 0.5, -0.75, 1.0, -0.25, 1.0, 0.5, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, 0.25, -1.0, 0.25, -1.0, 0.5, -0.5, -0.25, 0.25, 1.0, 0.25, -1.0, 0.0, 0.25, -0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, 1.0, 1.0, 0.75, -0.25, 0.5, 0.5, -0.75, 1.0, 0.0, 0.5, -0.5, -0.25, 0.25, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, 0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([1.0, 0.75, 1.0, -0.5, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, 0.75, 1.0, -0.25, -0.75, 0.5, 0.5, -1.0, -1.0, 0.0, -0.25, -0.25, 1.0, 0.5, -0.75, -0.5, 0.25, 0.25, 0.25, 1.0, -0.5, 0.25, 0.25, -1.0, 1.0, 0.25, -0.75, 0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.75, 0.5, -0.25, 0.25, -0.5, 0.75, -0.75, -0.5, -1.0, 1.0, 0.25, 0.75, -1.0, -1.0, 0.0, 1.0, 0.0, -1.0, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, -0.25, -0.75, -0.75, 1.0, 0.25, 0.5, -1.0, 0.25, 0.0, 0.0, -0.5, -1.0, -1.0, 0.25, 0.75, 0.75, -0.75, 0.5, 1.0, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 1.0, 0.5, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("validation");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array4 = new Float32Array([0.75, 0.0, 0.5, 1.0, -1.0, 1.0, -0.75, -0.25, -0.25, 0.75, 0.5, 0.0, -0.5, 0.25, 0.5, -1.0, -0.25, 0.5, 1.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.25, 0.25, 0.25, 0.0, 0.25, -1.0, 0.25, -1.0, 0.25, 0.5, -0.5, -0.75, -0.5, 0.0, -0.75, 0.75, -0.5, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.5, -0.5, -1.0, 0.25, 0.5, -0.25, -0.75, 0.25, 0.75, 0.0, -0.75, 0.25, -0.5, -0.75, 0.25, 0.75, -0.75, -0.25, 0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.0, -0.25, -0.75, -0.5, -0.5, 0.75, -0.5, 0.75, -0.75, 1.0, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, -0.25, 0.25, 1.0, 0.75, -1.0, ]);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    query000.destroy()
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const array5 = new Float32Array([-0.5, 0.5, 1.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, -0.25, 0.75, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, -0.5, 0.0, -0.75, 0.75, 1.0, -0.75, 0.5, -1.0, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, -0.25, -0.5, 0.25, 0.75, 1.0, 0.0, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.5, -0.5, 0.25, 0.5, -0.25, -1.0, -1.0, -1.0, 0.5, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, 0.0, 1.0, 0.0, 1.0, -1.0, 1.0, -0.75, 1.0, 1.0, -0.25, -0.25, 0.5, -0.75, 1.0, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 0.0, -0.5, 1.0, 0.5, 0.25, 0.25, -0.25, 0.0, -0.25, ]);
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("out-of-memory");
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query100.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture100.destroy();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    query101.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
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
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8snorm",
        dimension: "2d"
    });
    texture301.destroy();
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    texture201.destroy();
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    query300.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
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
    device20.destroy();
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    query304.destroy()
    query301.destroy()
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 0.75, -0.5, -0.75, 0.5, 0.25, 1.0, -1.0, 0.0, 1.0, -0.5, -1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -0.5, 0.25, 0.0, 0.5, -1.0, -0.75, 1.0, 0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -0.25, -1.0, -0.75, -0.75, -1.0, 1.0, -1.0, 0.5, -0.75, -1.0, -1.0, 0.25, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.75, -0.5, 0.75, 0.5, 1.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.25, -1.0, -0.5, 0.0, 0.0, -0.75, -0.75, -0.25, -0.5, 0.75, 1.0, 0.0, 1.0, -0.75, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, -0.25, 0.5, 0.5, 0.25, 1.0, 1.0, 0.5, 0.0, 0.75, -0.25, 0.25, -0.5, -1.0, -0.75, -0.5, ]);
    query301.destroy()
    
    const array7 = new Float32Array([0.0, 0.5, -1.0, 0.25, 0.5, 0.25, 0.5, -0.25, 0.75, -0.75, 0.25, -0.25, 1.0, 0.5, 0.5, -0.25, 1.0, -0.5, 0.75, 0.0, 0.5, -0.75, -0.5, 0.75, 1.0, 0.25, -0.75, -0.25, 0.0, -0.25, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.75, -0.25, 1.0, -0.5, -1.0, 1.0, -1.0, -0.5, -0.25, -0.25, 0.75, 0.75, 0.25, 0.5, 0.5, 0.5, -0.5, -1.0, 1.0, 1.0, -0.25, 0.75, 0.75, 0.75, -0.75, 0.0, 0.75, -0.5, -1.0, 1.0, 0.25, 0.75, 0.5, 0.25, -0.5, 0.0, 0.0, 0.0, 0.0, -1.0, -0.5, -1.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.75, 0.5, 0.5, -0.75, 1.0, 0.25, 0.5, -1.0, -1.0, -0.75, -0.25, 0.75, -0.25, -0.25, -1.0, -0.5, ]);
    
    query300.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    const array8 = new Float32Array([0.75, 0.5, 0.5, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, 1.0, -0.5, -0.5, 1.0, -0.25, -1.0, 0.25, 1.0, 0.25, 0.0, -1.0, -1.0, -1.0, 1.0, 0.5, 1.0, -1.0, -1.0, -0.75, 1.0, -0.25, 0.5, -0.5, -1.0, 0.5, 0.5, -0.5, -0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.5, 1.0, -0.25, 0.5, 0.75, -1.0, -0.75, -0.75, 1.0, -0.75, -0.25, 0.75, 0.5, 0.5, 1.0, 1.0, -0.75, 1.0, -0.75, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, -0.5, 0.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 1.0, 0.0, 0.5, 0.5, -1.0, -1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.5, 0.5, 0.0, 0.75, -0.25, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.75, -0.5, -1.0, -0.5, 1.0, 0.25, 0.25, -1.0, 0.75, 0.0, 0.75, 0.5, -0.75, -0.25, 0.25, -0.25, 0.5, 0.25, -0.25, 0.0, 0.25, -1.0, 0.0, -0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, 0.75, 0.0, -0.75, -0.5, -0.75, 0.25, 0.0, 1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.25, -0.5, -0.5, -0.75, -1.0, -0.25, -1.0, 0.25, 0.0, 1.0, 1.0, -0.75, -1.0, 0.25, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.25, 1.0, -0.5, 1.0, 0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, 0.75, -0.5, 0.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.0, ]);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.destroy();
    
    
    device30.pushErrorScope("validation");
    query302.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    texture300.destroy();
    
    
    query303.destroy()
    query302.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    query304.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    texture303.destroy();
    buffer300.destroy()
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const command_buffer302 = command_encoder302.finish();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array10 = new Float32Array([-0.5, -0.75, -0.25, -0.75, -1.0, -0.25, 0.75, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, -1.0, -0.5, -0.75, -0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.0, -0.5, 0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -1.0, 0.75, -0.5, 0.0, -0.75, -1.0, -0.5, 0.5, -0.5, -0.5, 0.25, 0.5, -0.5, 0.5, -0.75, -0.5, 1.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, 0.25, -0.75, -0.25, 0.25, -0.5, -1.0, 0.5, -1.0, -0.25, -1.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 0.75, -0.5, -1.0, 0.75, ]);
    query306.destroy()
    render_pass_encoder3010.executeBundles([])
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3024,
            },
        ],
        occlusionQuerySet: query305
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    const texture_view3025 = texture302.createView({ label: "texture_view3025" });
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    query304.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3030.beginOcclusionQuery(0)
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.executeBundles([])
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query302
    });
    
    render_pass_encoder3040.insertDebugMarker("marker");
    
    buffer302.destroy()
    render_bundle_encoder301.popDebugGroup();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setPipeline(render_pipeline301);
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const texture_view3026 = texture302.createView({ label: "texture_view3026" });
    query306.destroy()
    query307.destroy()
    render_pass_encoder3010.insertDebugMarker("marker");
    query300.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device50.pushErrorScope("out-of-memory");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder3040.setStencilReference(1);
    query304.destroy()
    query302.destroy()
    render_pass_encoder3040.pushDebugGroup("group_marker");
    query306.destroy()
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
    query303.destroy()
    render_pass_encoder3040.popDebugGroup();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3030.setPipeline(render_pipeline300);
    
    
    query301.destroy()
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture302.destroy();
    
    query301.destroy()
    
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.destroy();
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
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    query301.destroy()
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
    render_pass_encoder3040.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query307.destroy()
    
    compute_pass_encoder3000.popDebugGroup()
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3040.setPipeline(render_pipeline300);
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    query301.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder301.setPipeline(render_pipeline303);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3040.pushDebugGroup("group_marker");
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query301
    });
    query303.destroy()
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3050.setPipeline(render_pipeline305);
    
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3050.setStencilReference(1);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.popDebugGroup();
    buffer301.destroy()
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    
    query301.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    render_pass_encoder3050.insertDebugMarker("marker");
    const query309 = device30.createQuerySet({
        label: "query309",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3050.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3010.setStencilReference(1);
    render_pass_encoder3030.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_pass_encoder3030.popDebugGroup();
    query301.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder302.setPipeline(render_pipeline303);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query3010 = device30.createQuerySet({
        label: "query3010",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3050.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    
    compute_pass_encoder3000.popDebugGroup()
    
    
    render_pass_encoder3050.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3040.insertDebugMarker("marker");
    
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer303.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    query306.destroy()
    
    
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    query306.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout302,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout307,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout307,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
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
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    query304.destroy()
    
    query308.destroy()
    render_pass_encoder3030.beginOcclusionQuery(0)
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout305,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout306,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3050.setStencilReference(1);
    render_pass_encoder3050.pushDebugGroup("group_marker");
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
    const query3011 = device30.createQuerySet({
        label: "query3011",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout308,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    buffer308.destroy()
    
    query304.destroy()
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const array11 = new Float32Array([-0.75, 0.5, 0.75, 0.0, 0.25, 0.75, -0.75, -0.75, 1.0, 0.75, -1.0, 0.5, -0.25, 0.5, 1.0, 0.25, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.75, -0.25, 0.25, 0.0, -0.25, 0.0, -1.0, 0.5, -0.5, -0.5, 0.5, 0.25, 0.5, 1.0, 0.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.75, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, -0.75, 0.25, 0.5, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.0, 1.0, -0.5, 1.0, 0.0, -1.0, -0.25, -1.0, 0.5, 0.75, -0.5, 1.0, -0.25, 0.75, -0.75, 1.0, -0.25, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, -0.25, 0.25, -0.5, 0.75, 0.75, 0.0, 0.25, -0.5, 0.75, 0.0, 1.0, 0.5, 0.75, 1.0, 1.0, ]);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout309,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    command_encoder600.pushDebugGroup("mygroupmarker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout306,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_pass_encoder3050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout306,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    query309.destroy()
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout308,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query309
    });
    buffer309.destroy()
    
    command_encoder600.popDebugGroup()
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    query308.destroy()
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    query3010.destroy()
    render_pass_encoder3060.setStencilReference(1);
    const command_buffer600 = command_encoder600.finish();
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3030.popDebugGroup();
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout301,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder3060.executeBundles([])
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile(__dirname + '/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout302,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3024,
            },
        ],
        occlusionQuerySet: query3010
    });
    render_pass_encoder3060.setPipeline(render_pipeline305);
    
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    query3010.destroy()
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout302,
        compute: {
            module: shader_module309,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    render_pass_encoder3070.setPipeline(render_pipeline308);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout305,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout301]
    });
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group303);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group304);
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3040.popDebugGroup();
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group306);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group307);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3070.setBindGroup(0, bind_group308);
    compute_pass_encoder3000.end();
    const command_buffer300 = command_encoder300.finish();
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer602, ]);
    device30.queue.submit([command_buffer300, ]);
}