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
    
    
    
    
    const array0 = new Float32Array([0.25, -1.0, 0.5, -1.0, 0.5, 1.0, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.75, -0.25, -1.0, -0.75, 0.25, -0.25, 0.25, 1.0, 0.0, -1.0, 0.0, -0.75, -0.75, 0.5, -1.0, 1.0, -0.25, 0.0, 0.25, -0.5, 0.25, -0.75, 0.0, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -0.75, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.5, -0.25, 0.5, -0.75, -0.5, -1.0, 0.25, 0.25, -0.25, -0.75, 0.75, 0.5, 1.0, 0.5, -0.75, -0.25, -1.0, -0.5, 0.5, -1.0, -0.5, -0.5, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.25, 0.75, 0.25, -0.75, 0.25, 0.25, -0.5, -0.5, -0.5, -1.0, 1.0, -1.0, -0.25, 0.5, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([-1.0, -0.5, 0.25, 1.0, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, 0.0, -0.5, -0.25, 0.25, 0.25, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, 0.75, 0.75, 0.75, 0.5, 0.0, -0.25, -0.75, 1.0, 0.25, 0.5, -1.0, 0.75, 0.0, -0.25, 0.5, 0.75, -0.5, -0.25, 0.75, -1.0, 0.75, -0.25, -1.0, -0.25, -0.5, 0.5, 0.5, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, -0.5, 0.25, 0.75, -0.25, 0.0, 1.0, 0.25, 1.0, -1.0, 1.0, 0.75, -1.0, -0.5, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, -0.75, 0.5, 0.75, -0.5, ]);
    const array2 = new Float32Array([0.0, 0.5, -0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -0.75, 0.75, -0.5, 0.5, -0.5, 0.25, 0.25, -0.5, 1.0, 0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.0, 0.0, -0.75, -0.25, -1.0, -0.5, -1.0, -0.5, 1.0, -0.25, 1.0, 0.0, 0.0, 0.25, 0.5, -0.75, 0.75, -0.25, -0.75, 0.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.25, 0.75, 0.75, 0.25, -0.75, 0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, -0.75, -0.25, 0.25, -0.75, 0.5, -0.25, -0.25, -0.75, 0.0, 0.25, -0.25, -1.0, -0.25, -0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, 0.0, -1.0, -0.5, -0.25, -1.0, -0.5, 0.5, 0.25, -0.5, 0.25, 0.75, 1.0, 0.5, 0.5, -1.0, -1.0, 0.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    device00.destroy();
    const array3 = new Float32Array([-0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.75, -0.5, -0.5, 0.5, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, 0.5, 0.25, -0.25, -0.5, -0.75, 0.75, -0.75, -0.75, -0.75, 0.5, 0.75, 0.0, 0.75, -0.5, 1.0, 0.25, 0.0, 1.0, 1.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.75, -1.0, 0.0, 0.25, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.75, 0.75, -1.0, 1.0, 0.5, 0.75, 0.25, -0.75, -0.75, -0.75, 0.75, 0.75, 0.75, -1.0, -0.25, 1.0, 0.75, 1.0, 0.75, 1.0, 1.0, 0.5, 0.25, 0.25, 0.0, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.25, -0.75, 0.25, 0.75, -0.25, 1.0, 0.5, 0.25, -1.0, -0.75, ]);
    const array4 = new Float32Array([-0.75, 0.75, -1.0, -1.0, -1.0, 0.25, 0.5, -1.0, 0.25, 0.75, -0.25, 0.75, 0.5, -0.25, -0.25, -0.5, 1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 0.0, 1.0, 1.0, 0.5, 1.0, -0.5, -0.5, -0.5, -0.25, 0.5, 0.0, -0.5, 0.25, 1.0, 1.0, -0.75, -0.25, -0.25, -0.5, -0.25, 0.5, -0.5, 1.0, 0.5, 0.5, -0.25, -0.75, -1.0, -1.0, -1.0, -1.0, 0.0, 0.25, 0.0, 1.0, 0.0, -0.75, 1.0, 0.25, 0.0, 0.5, 0.75, 0.25, -0.25, 0.25, -0.75, 1.0, 1.0, 0.5, 0.75, -0.5, 0.0, -0.25, 0.25, -0.25, 0.5, 0.25, -0.75, 0.5, -1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.5, 1.0, -0.5, 0.0, -1.0, -0.5, 0.75, 0.25, -0.25, 0.75, 0.75, 0.25, 0.25, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array5 = new Float32Array([0.5, 0.5, 0.25, -0.25, 1.0, 0.25, -0.5, 0.0, 1.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.75, -1.0, -0.5, -1.0, 0.0, 0.75, -1.0, -1.0, -0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.0, 1.0, -0.25, -0.25, -0.5, 0.25, 0.5, 0.5, -0.25, 0.75, -0.25, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, 0.75, -0.5, -0.75, 0.5, -1.0, -1.0, 0.0, -0.75, 0.25, 0.0, 0.0, -0.5, 0.0, 0.0, -0.5, -0.25, -0.5, 0.25, 0.75, 0.75, 0.75, 0.25, 0.5, 0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.75, 0.25, -0.25, -0.5, -0.75, 0.5, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, -0.25, 0.0, 0.75, ]);
    
    
    const array6 = new Float32Array([-1.0, 0.75, -0.5, -0.5, -0.25, 0.0, 0.0, 1.0, 1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 0.75, 0.25, 0.5, 0.75, 0.0, 0.75, -1.0, 0.5, -1.0, 0.25, 0.0, 1.0, -0.5, 0.0, 1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 0.5, 0.25, 0.5, 0.25, -0.75, 0.0, 0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.75, -1.0, 0.0, 0.75, -0.75, -0.75, 0.75, 1.0, 0.5, 0.25, 0.5, -0.25, 0.5, -1.0, -1.0, 1.0, -0.75, 0.75, -0.75, -1.0, -0.25, -0.25, -0.75, -0.25, 0.5, 0.25, -0.5, -0.25, 0.5, 0.75, 0.75, 0.5, -0.25, 0.25, -0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -1.0, -1.0, 0.75, ]);
    const array7 = new Float32Array([-1.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.75, 1.0, -0.25, -0.5, 0.5, -0.75, -1.0, -0.75, 0.0, 1.0, -0.25, -0.25, -0.25, 0.25, 0.75, -1.0, -0.75, 0.25, 0.75, -0.25, 0.0, 0.75, 0.0, 0.0, -1.0, -0.5, 1.0, 0.5, -1.0, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.0, -0.5, 0.0, 0.75, 0.0, 0.5, -0.25, 0.25, 1.0, 0.25, 1.0, 0.0, 0.5, 0.0, 0.25, 0.0, 0.5, 0.75, -0.75, 0.5, -0.5, -0.5, 0.75, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 1.0, -0.5, 0.5, 0.5, -0.25, -0.75, -0.5, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 0.25, -1.0, 0.75, 1.0, 0.25, -1.0, -0.5, -0.25, ]);
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device40.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    device40.destroy();
    texture300.destroy();
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    render_pass_encoder3000.executeBundles([])
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3000.beginOcclusionQuery(0)
    buffer300.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    render_pass_encoder3000.endOcclusionQuery()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    render_pass_encoder3000.insertDebugMarker("marker");
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    render_pass_encoder3000.setPipeline(render_pipeline303);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer300.destroy()
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_buffer302 = command_encoder302.finish();
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const array8 = new Float32Array([-0.5, 1.0, 0.25, 0.25, -0.25, 1.0, 0.5, 1.0, 0.5, 0.25, 1.0, -1.0, 0.75, -1.0, 0.5, 0.5, -0.25, 1.0, -0.75, 1.0, -0.5, -0.5, 0.75, 0.5, 0.75, 0.5, -0.75, -0.5, -0.75, -0.25, 0.5, 1.0, -1.0, 0.25, -1.0, 1.0, -0.75, -0.25, 0.25, 0.25, 0.0, -0.25, 0.5, 0.25, -0.5, -1.0, -0.75, 0.75, 0.0, -0.25, 0.25, 1.0, 0.5, 1.0, -0.25, -0.75, -0.25, 0.5, -1.0, -1.0, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, 0.25, 0.75, -0.5, 1.0, 1.0, 0.25, 1.0, -0.75, -0.5, 1.0, 0.25, 0.5, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.25, -0.25, -0.75, 0.75, -0.25, -0.25, 0.25, 0.0, 0.0, -0.25, 0.0, 1.0, -0.75, -1.0, -0.75, -0.25, ]);
    query300.destroy()
    
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    texture301.destroy();
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    buffer301.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    device50.destroy();
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
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    query302.destroy()
    query302.destroy()
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3010.setPipeline(compute_pipeline303);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device20.pushErrorScope("out-of-memory");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline303.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group300);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder3000.popDebugGroup();
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_bundle_encoder300.setPipeline(render_pipeline303);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
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
    
    buffer200.destroy()
    render_pass_encoder3001.setPipeline(render_pipeline302);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const uint32_3010 = new Uint32Array(3);

    uint32_3010[0] = 100;
    uint32_3010[1] = 1;
    uint32_3010[2] = 1;

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer304, 0, uint32_3010, 0, uint32_3010.length);

    compute_pass_encoder3010.dispatchWorkgroupsIndirect(buffer304, 0);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    render_pass_encoder3000.popDebugGroup();
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout303,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group301);
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3001.setBindGroup(0, bind_group302);
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer308.destroy()
    
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    
    render_pass_encoder3001.insertDebugMarker("marker");
    render_pass_encoder3001.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3001.insertDebugMarker("marker");
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    compute_pass_encoder3030.popDebugGroup()
    
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer305.destroy()
    command_encoder303.copyBufferToBuffer(
        buffer305,
        0,
        buffer304,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture304 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder3010.popDebugGroup()
    command_encoder200.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    texture200.destroy();
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    render_pass_encoder3001.pushDebugGroup("group_marker");
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    command_encoder300.resolveQuerySet(
        query303,
        0,
        32,
        buffer303,
        0
    )
    texture302.destroy();
    compute_pass_encoder3010.insertDebugMarker("marker")
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    render_pass_encoder3001.setStencilReference(1);
    texture302.destroy();
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline303);
    command_encoder303.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
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

    render_pass_encoder3000.setBindGroup(0, bind_group303);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device30.queue.writeBuffer(buffer306, 0, array8, 0, array8.length);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder3010.end();
    command_encoder304.copyBufferToBuffer(
        buffer304,
        0,
        buffer308,
        0,
        400
    );
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    buffer309.destroy()
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer3010,
        0
    )
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    buffer307.destroy()
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
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
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer3011,
        0
    )
    
    const array9 = new Float32Array([-0.75, 0.25, 1.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.75, 0.25, -0.5, -0.25, -0.75, 0.0, 0.0, 0.5, -1.0, -0.25, -1.0, 0.5, 0.5, -0.25, 0.75, 0.0, 0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 0.0, 0.25, 0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -0.75, 0.5, 0.0, 0.5, 0.5, -1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 0.0, -1.0, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 1.0, 0.75, 1.0, 0.5, 1.0, -0.5, 1.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.5, -0.25, -0.5, -0.5, 0.25, -0.5, 0.25, 0.5, -0.25, 0.25, 1.0, ]);
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    
    device30.queue.writeBuffer(buffer3011, 0, array4, 0, array4.length);
    render_pass_encoder3001.popDebugGroup();
    device30.queue.writeBuffer(buffer3011, 0, array0, 0, array0.length);
    
    query200.destroy()
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    texture303.destroy();
    query301.destroy()
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
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
    query303.destroy()
    const command_buffer304 = command_encoder304.finish();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    buffer3010.destroy()
    device30.queue.writeBuffer(buffer3011, 0, array5, 0, array5.length);
    command_encoder303.clearBuffer(buffer301);
    render_pass_encoder3001.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3011, 0, array2, 0, array2.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3031.setPipeline(render_pipeline305);
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    buffer302.destroy()
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder300.clearBuffer(buffer309);
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer302,
        0
    )
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setPipeline(render_pipeline301);
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder3001.setVertexBuffer(0, buffer3010);
    
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group304);
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder301.copyBufferToBuffer(
        buffer3011,
        0,
        buffer304,
        0,
        400
    );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    buffer303.destroy()
    buffer3013.destroy()
    render_pass_encoder3030.insertDebugMarker("marker");
    buffer3012.destroy()
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query301.destroy()
    buffer306.destroy()
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group305);
    device30.queue.writeBuffer(buffer304, 0, array7, 0, array7.length);
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3011, 0, array3, 0, array3.length);
    render_pass_encoder3000.setVertexBuffer(0, buffer309);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3015.destroy()
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer304, 0, array0, 0, array0.length);
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout303]
    });
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
    const compute_pipeline3030 = device30.createComputePipeline({
        label: "compute_pipeline3030",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device50.destroy();
    const compute_pipeline3031 = device30.createComputePipeline({
        label: "compute_pipeline3031",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setStencilReference(1);
    
    
    const compute_pipeline3032 = device30.createComputePipeline({
        label: "compute_pipeline3032",
        layout: pipeline_layout307,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.setStencilReference(1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_pass_encoder3040.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3010.setPipeline(render_pipeline303);
    
    
    const compute_pipeline3033 = device30.createComputePipeline({
        label: "compute_pipeline3033",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3031.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    const compute_pipeline3034 = device30.createComputePipeline({
        label: "compute_pipeline3034",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer304.destroy()
    command_encoder303.resolveQuerySet(
        query303,
        0,
        32,
        buffer307,
        0
    )
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline3035 = device30.createComputePipeline({
        label: "compute_pipeline3035",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline3036 = device30.createComputePipeline({
        label: "compute_pipeline3036",
        layout: pipeline_layout307,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3000.setIndexBuffer(buffer304, "uint16");
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.drawIndirect(buffer304, 0);
    const compute_pipeline3037 = device30.createComputePipeline({
        label: "compute_pipeline3037",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout301]
    });
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
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3016, 0);
    const compute_pipeline3038 = device30.createComputePipeline({
        label: "compute_pipeline3038",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3040.setBindGroup(0, bind_group306);
    
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3030.setStencilReference(1);
    compute_pass_encoder3030.popDebugGroup()
    
    device30.queue.writeBuffer(buffer3016, 0, array4, 0, array4.length);
    const compute_pipeline3039 = device30.createComputePipeline({
        label: "compute_pipeline3039",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3016, 0, array3, 0, array3.length);
    const compute_pipeline3040 = device30.createComputePipeline({
        label: "compute_pipeline3040",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3041 = device30.createComputePipeline({
        label: "compute_pipeline3041",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder303.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    const compute_pipeline3042 = device30.createComputePipeline({
        label: "compute_pipeline3042",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3043 = device30.createComputePipeline({
        label: "compute_pipeline3043",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query304.destroy()
    
    render_pass_encoder3040.setVertexBuffer(0, buffer300);
    device30.queue.writeBuffer(buffer3011, 0, array4, 0, array4.length);
    render_bundle_encoder300.setVertexBuffer(0, buffer3013);
    
    const compute_pipeline3044 = device30.createComputePipeline({
        label: "compute_pipeline3044",
        layout: pipeline_layout309,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.draw(3);
    render_pass_encoder3031.insertDebugMarker("marker");
    
    const compute_pipeline3045 = device30.createComputePipeline({
        label: "compute_pipeline3045",
        layout: pipeline_layout3011,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3046 = device30.createComputePipeline({
        label: "compute_pipeline3046",
        layout: pipeline_layout309,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    command_encoder301.clearBuffer(buffer306);
    
    
    command_encoder300.resolveQuerySet(
        query304,
        0,
        32,
        buffer3012,
        0
    )
    render_pass_encoder3040.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder3030.pushDebugGroup("group_marker");
    query303.destroy()
    
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query305
    });
    buffer3018.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3040.drawIndirect(buffer304, 0);
    const compute_pipeline3047 = device30.createComputePipeline({
        label: "compute_pipeline3047",
        layout: pipeline_layout309,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setStencilReference(1);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.popDebugGroup();
    const compute_pipeline3048 = device30.createComputePipeline({
        label: "compute_pipeline3048",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout303]
    });
    device30.queue.writeBuffer(buffer3016, 0, array3, 0, array3.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline3049 = device30.createComputePipeline({
        label: "compute_pipeline3049",
        layout: pipeline_layout308,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline3050 = device30.createComputePipeline({
        label: "compute_pipeline3050",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3011.setPipeline(render_pipeline303);
    render_pass_encoder3040.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.end();
    render_pass_encoder3031.endOcclusionQuery()
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
        layout: render_pipeline303.getBindGroupLayout(0),
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
        layout: render_pipeline303.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group308);
    render_pass_encoder3040.setIndexBuffer(buffer3015, "uint16");
    compute_pass_encoder3030.popDebugGroup()
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group309);
    render_pass_encoder3031.setVertexBuffer(0, buffer305);
    render_pass_encoder3040.end();
    render_pass_encoder3031.drawIndirect(buffer309, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group3010);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.setVertexBuffer(0, buffer300);
    render_pass_encoder3040.drawIndexedIndirect(buffer3024, 0);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer301, 0);
    render_pass_encoder3000.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3030.setVertexBuffer(0, buffer300);
    render_pass_encoder3011.setVertexBuffer(0, buffer3018);
    render_pass_encoder3010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3030.drawIndirect(buffer3011, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3011.drawIndirect(buffer304, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3026, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3001.end();
    render_pass_encoder3010.drawIndirect(buffer300, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3030.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3031.end();
    render_pass_encoder3040.drawIndirect(buffer3024, 0);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3040.drawIndirect(buffer3016, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder3031.draw(3);
    render_pass_encoder3001.setIndexBuffer(buffer3024, "uint16");
    const command_buffer303 = command_encoder303.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3011.end();
    render_pass_encoder3011.end();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer303, ]);
}