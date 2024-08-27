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
    
    const array0 = new Float32Array([-1.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.75, 0.0, -0.5, 0.25, 0.5, 0.25, 0.0, 0.75, 1.0, -0.5, 0.0, 0.5, -0.75, 1.0, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 0.0, 0.75, 0.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.75, -0.75, -0.25, -0.5, 0.25, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -1.0, 0.75, 0.5, -0.5, 0.5, 0.5, 1.0, 0.0, -1.0, 0.5, 0.25, -0.75, 1.0, 0.25, 0.0, 1.0, 1.0, 1.0, -0.25, 0.75, -0.75, -0.75, -0.5, 1.0, 0.25, -0.5, -0.25, -0.5, 0.25, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.5, 1.0, ]);
    
    const array1 = new Float32Array([1.0, 1.0, 0.5, -1.0, -0.5, 1.0, -0.75, -0.5, 0.25, -1.0, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -0.5, -1.0, 0.5, 0.25, -0.5, -0.5, 1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.0, 1.0, 1.0, 0.75, 1.0, -0.25, -0.5, -1.0, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, -0.25, -1.0, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, 1.0, -0.5, -0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -0.25, -0.75, -0.5, -0.75, 1.0, 0.0, -0.75, -0.25, 0.0, -0.75, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -0.5, 1.0, -0.5, -0.75, 0.75, 0.0, 0.0, -0.75, -1.0, -0.5, -1.0, ]);
    
    const array2 = new Float32Array([1.0, 1.0, 0.25, 0.0, 0.25, 0.5, -0.5, 1.0, -1.0, 0.0, 0.0, 0.0, 0.25, 1.0, -0.25, 0.5, 0.25, -1.0, -0.25, 1.0, 0.75, -0.75, 0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, -1.0, -1.0, -0.75, -0.25, 0.0, 1.0, 0.25, -0.75, -1.0, -0.5, 0.5, -0.75, 1.0, 0.5, 0.0, -0.75, 0.5, 0.25, -0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 1.0, 1.0, -1.0, -0.25, 0.5, -0.5, 0.0, 0.75, -0.25, -0.75, -0.5, -0.5, 0.0, -0.75, -1.0, -0.75, -0.5, -1.0, 0.75, -0.25, -0.25, 1.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.75, 0.5, -0.25, 0.0, 0.25, -0.5, -0.5, 0.25, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 0.25, -0.75, -0.75, 0.75, ]);
    
    const array3 = new Float32Array([-0.25, 0.75, 1.0, 0.75, 0.0, 0.75, -0.25, -0.25, 1.0, -0.25, 0.25, -0.5, -1.0, -0.75, 0.75, 0.5, -0.25, -1.0, 0.0, 0.5, -0.5, -0.75, -0.5, 0.25, 0.75, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 0.5, 0.25, 1.0, -1.0, 0.25, 0.75, -0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 0.0, 0.0, -1.0, -1.0, -1.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.25, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, -0.75, -0.5, 1.0, -0.25, 0.0, 0.0, -0.5, 1.0, -0.75, 0.0, -0.25, 1.0, -0.75, 0.0, 0.0, -1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, 1.0, 0.5, -0.5, 0.5, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, -1.0, 0.75, ]);
    const array4 = new Float32Array([-1.0, 1.0, -1.0, 0.75, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, 0.5, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, -0.5, 0.0, -1.0, 0.5, 1.0, -0.25, 1.0, 0.25, 0.5, 1.0, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.75, -1.0, 0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.25, 0.75, -0.5, -0.5, 0.25, 1.0, -0.5, 0.0, -0.5, 0.5, 1.0, 0.75, 0.0, 0.0, 0.25, -0.25, -0.75, -1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, 0.5, -0.5, 0.25, -0.75, -1.0, 0.75, 0.75, 0.0, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, -1.0, -1.0, 1.0, 0.75, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([-0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 0.5, 0.5, -1.0, -1.0, -1.0, 0.75, 0.5, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, 1.0, -1.0, 0.75, 0.0, 0.75, 0.5, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.75, 0.0, 0.75, 0.0, -0.5, 0.25, -0.75, 0.5, 0.75, -0.75, 0.25, 1.0, 1.0, 0.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.5, -1.0, 0.25, 0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.25, -0.75, 0.5, -1.0, -1.0, 0.25, -0.75, -0.5, 0.25, 0.5, 0.25, 1.0, 0.0, 0.5, -0.25, -0.75, -0.5, 0.75, -0.25, 0.25, -0.25, -0.75, -0.75, 0.25, 0.75, -1.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, 0.5, -0.75, -0.25, -0.25, 0.5, -0.5, -0.75, -0.75, 0.5, ]);
    
    
    
    
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    device00.destroy();
    const array6 = new Float32Array([1.0, -0.5, 0.5, -0.75, 0.5, 0.75, 1.0, -0.5, 0.5, 0.0, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.25, 0.5, -1.0, -0.5, 0.0, 0.5, 1.0, 0.25, 1.0, 0.0, -0.5, -0.5, -0.25, -0.75, -0.25, -0.75, 0.75, 0.75, -1.0, 0.75, -0.25, -0.75, 0.75, 0.25, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.75, -1.0, 0.75, 1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.0, 0.25, -1.0, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.75, 0.0, -1.0, -0.5, -0.5, -0.5, 0.0, -1.0, -0.75, 0.25, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.0, 0.0, 0.0, 0.5, 0.0, -0.75, 0.25, -0.25, -0.25, 0.75, 0.75, -1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array7 = new Float32Array([-1.0, 0.0, 0.75, 0.75, -0.25, 0.25, -1.0, -0.5, 0.0, -0.5, 0.5, 0.0, 0.75, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, 0.0, -0.5, 0.25, 0.0, 0.75, 0.0, -0.25, 0.0, 0.0, 1.0, 0.75, -1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, -0.25, -0.75, -0.75, -0.75, -0.5, -0.75, 0.25, 0.75, 0.75, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.0, 0.0, 0.5, 1.0, 1.0, 1.0, 0.5, 0.75, -0.5, -0.75, 1.0, -0.75, -0.75, -0.5, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, 0.25, -0.75, -0.5, 0.25, 0.0, 0.0, -0.75, -0.75, -0.25, 0.0, -0.25, 0.75, 0.5, -0.75, -0.25, -1.0, 0.0, 0.5, -0.5, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    texture201.destroy();
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    buffer200.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    const array8 = new Float32Array([0.75, 0.75, 0.5, -0.5, -0.25, 0.25, 0.5, -0.75, 0.25, 0.5, -1.0, 0.25, 0.0, 0.25, 0.25, -0.25, 0.75, -0.75, 1.0, -1.0, -0.5, -1.0, 0.25, -0.25, -0.25, -0.5, 0.0, 1.0, -0.25, 0.75, -1.0, 0.0, 0.25, 0.75, -0.25, -0.75, -0.75, 0.0, 0.25, 0.25, -0.75, 0.75, 0.75, 0.0, -0.75, -1.0, -0.5, -1.0, -1.0, -1.0, 0.5, -0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 1.0, 0.75, -0.5, -0.75, 1.0, 0.25, 0.0, -0.25, -1.0, 0.5, -1.0, -0.5, 0.25, 0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -0.5, -0.25, 0.0, -0.75, ]);
    
    compute_pass_encoder2000.popDebugGroup()
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    query200.destroy()
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
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2010.executeBundles([])
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    
    
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const command_buffer000 = command_encoder000.finish();
    
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    const array9 = new Float32Array([0.25, 0.0, 0.25, 0.25, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.0, -0.25, 0.25, -0.75, 0.25, 0.25, 0.0, -1.0, -0.5, -1.0, 0.5, 0.5, -0.75, 0.0, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, 0.75, -0.5, -0.75, 0.25, 1.0, 1.0, 0.0, 0.0, 0.0, -0.25, -0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 0.5, -1.0, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, 0.0, -0.25, -0.75, 0.5, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 0.5, 0.0, 1.0, -0.75, -0.75, 0.25, 0.0, -0.5, -0.25, 0.5, 0.0, -1.0, -0.75, 0.75, -0.75, 0.0, 0.5, 0.25, 0.75, 0.5, -0.75, -0.5, 0.25, 1.0, -0.5, ]);
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2011.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
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
    
    
    render_pass_encoder2000.setPipeline(render_pipeline200);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query202
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2011.setStencilReference(1);
    render_pass_encoder2001.setPipeline(render_pipeline201);
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2001.beginOcclusionQuery(0)
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group200);
    query201.destroy()
    
    render_pass_encoder2010.setStencilReference(1);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder2011.insertDebugMarker("marker");
    render_pass_encoder2011.executeBundles([])
    render_pass_encoder2001.insertDebugMarker("marker");
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    query200.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder2011.setPipeline(render_pipeline201);
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2001.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    texture200.destroy();
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_bundle_encoder400.popDebugGroup();
    device20.destroy();
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder400.popDebugGroup();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const array10 = new Float32Array([1.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.0, 0.75, 1.0, 0.0, 0.5, -0.75, 0.5, -0.5, -0.75, 0.0, 0.0, 0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 1.0, 0.5, -0.75, 0.25, 0.5, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 0.0, -1.0, 0.75, 0.75, 0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -0.25, -0.25, 1.0, -1.0, -0.5, 0.0, 1.0, 0.5, 0.25, 1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.0, 0.0, 0.75, -0.5, -0.75, -0.25, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, 0.0, -0.25, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.5, -0.25, -0.5, -0.25, 1.0, -0.25, -0.75, 0.75, 0.5, 0.75, ]);
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
    command_encoder401.insertDebugMarker("mymarker");
    device40.destroy();
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array11 = new Float32Array([0.25, -1.0, 1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 1.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.75, -1.0, 0.5, -0.75, 0.25, -1.0, 0.0, -0.5, -0.5, 0.25, 0.25, -0.5, -0.75, 0.0, 0.75, -0.5, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, -0.25, 0.5, 0.75, 0.25, 0.25, 0.5, -0.5, 0.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 1.0, 0.25, 0.25, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.75, 1.0, 0.5, 0.5, -1.0, -1.0, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -1.0, 0.0, 0.75, 0.0, -0.75, 0.25, -1.0, 0.75, -0.5, 0.25, 0.75, -1.0, 0.0, 0.5, 0.0, 0.25, 0.0, ]);
    
    device10.pushErrorScope("validation");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array12 = new Float32Array([1.0, 0.25, 0.75, 0.75, 1.0, 0.25, 1.0, -0.5, -0.75, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 1.0, 0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.0, 0.0, 0.5, -0.5, 1.0, -0.75, 1.0, 0.5, 0.75, 1.0, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -0.5, 0.75, -1.0, -0.5, -0.75, -1.0, 0.0, -0.5, -1.0, -0.25, -0.25, -0.5, -0.25, 0.0, -0.75, 0.0, 1.0, 0.25, 0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 0.0, 0.0, -0.5, -0.75, -0.5, -0.25, 0.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.25, 0.5, 0.5, -0.5, -1.0, 0.0, 0.0, -0.5, 0.5, 0.0, -1.0, 1.0, -0.5, -1.0, -0.25, 0.25, -1.0, ]);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array9, 0, array9.length);
    
    
    texture101.destroy();
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
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
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.queue.submit([]);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.pushErrorScope("validation");
    const command_buffer300 = command_encoder300.finish();
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query400.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device50.pushErrorScope("validation");
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    device50.pushErrorScope("out-of-memory");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query500.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    query500.destroy()
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    query300.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device50.queue.submit([]);
    device00.queue.writeTexture({ texture: texture000 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder300.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const command_buffer701 = command_encoder701.finish();
    query500.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    compute_pass_encoder5000.setPipeline(compute_pipeline500);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query501.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
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
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device70.queue.submit([command_buffer701, ]);
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.pushErrorScope("validation");
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    device70.queue.submit([command_buffer701, ]);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const command_buffer501 = command_encoder501.finish();
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: query300
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_pass_encoder2011.insertDebugMarker("marker");
    
    render_pass_encoder3010.setStencilReference(1);
    
    query300.destroy()
    render_pass_encoder3010.executeBundles([])
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    texture500.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device70.pushErrorScope("internal");
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    compute_pass_encoder7000.popDebugGroup()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device90.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    render_pass_encoder3010.executeBundles([])
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query201.destroy()
    render_pass_encoder3020.popDebugGroup();
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3020.setStencilReference(1);
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device90.pushErrorScope("validation");
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder3010.executeBundles([])
    buffer100.destroy()
    query501.destroy()
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    render_pass_encoder3010.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
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
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    
    
    
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
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const array13 = new Float32Array([0.25, 0.25, -0.5, 0.0, 0.75, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 0.5, 0.5, -0.5, 0.0, -1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 0.25, -0.5, -0.5, 0.0, -0.5, -1.0, -0.75, 0.75, 0.5, -0.25, -0.75, 0.75, -1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.75, -0.5, 0.5, -1.0, 0.25, -1.0, -0.75, 0.0, 0.0, 1.0, -0.5, -0.75, 0.0, 0.25, -0.25, 0.5, 1.0, -1.0, -0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.25, 0.5, 1.0, 0.75, -0.25, 0.0, -0.75, -0.5, 0.0, -1.0, -1.0, 0.25, 0.5, -0.75, 0.0, -0.75, -0.5, 1.0, 0.75, 0.75, 0.0, 0.0, 0.75, 0.75, -0.25, -1.0, 0.5, -1.0, 0.25, 0.5, 0.25, -0.25, -0.25, -0.5, 0.5, 0.5, 0.25, ]);
    
    device50.queue.writeBuffer(buffer501, 0, array11, 0, array11.length);
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    render_pass_encoder4010.setStencilReference(1);
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
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
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder3020.executeBundles([])
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
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    render_pass_encoder3020.executeBundles([])
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.submit([command_buffer300, ]);
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("internal");
    query501.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer300.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3010.setStencilReference(1);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    device50.queue.submit([command_buffer501, ]);
    render_pass_encoder3010.endOcclusionQuery()
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder5000.dispatchWorkgroups(100);
    render_pass_encoder3010.endOcclusionQuery()
    device70.queue.submit([command_buffer700, ]);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder5000.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device70.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    const command_buffer301 = command_encoder301.finish();
    compute_pass_encoder7000.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device50.queue.submit([command_buffer501, ]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([]);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group202);
    compute_pass_encoder3020.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([]);
    render_pass_encoder2011.setVertexBuffer(0, buffer205);
    device30.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder7000.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}