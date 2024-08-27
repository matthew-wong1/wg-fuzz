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
    
    
    
    
    const array0 = new Float32Array([0.5, 0.75, 0.75, -0.75, -0.75, -1.0, -0.5, 0.25, 1.0, 0.0, -0.5, 1.0, -0.5, -0.5, 0.0, 0.0, -1.0, 0.75, -0.25, -0.25, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, -0.25, -0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 0.0, 0.75, 1.0, 0.5, -0.5, 0.5, -0.25, -0.25, -0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, -0.5, -0.5, 1.0, -0.75, 0.0, -0.75, 0.5, -0.5, -0.25, -0.5, 1.0, 0.0, 0.0, 0.25, 0.75, 0.25, -0.25, -0.75, 0.25, -0.25, -0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -1.0, 0.5, 0.75, -1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const array1 = new Float32Array([-1.0, 0.25, -1.0, 1.0, 0.0, 1.0, 1.0, -0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -1.0, -0.5, 0.75, 0.25, 0.75, 0.25, 1.0, 0.5, -1.0, 0.25, -0.25, 0.5, 1.0, -0.75, 0.0, 0.0, 0.75, -0.75, 0.0, 0.0, 0.5, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -0.5, -0.75, 0.5, 0.75, -0.75, -0.5, 0.5, 1.0, 1.0, -0.5, -1.0, 0.0, -1.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.75, -0.25, -0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 0.5, 0.5, -0.25, -0.75, 0.75, -0.25, 1.0, -1.0, -1.0, 0.0, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, 1.0, 0.0, 0.5, 0.5, -0.5, 0.5, -1.0, -0.5, 0.0, 0.75, -0.5, ]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array2 = new Float32Array([0.25, -0.25, -0.75, 1.0, -0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.0, -0.5, 0.0, -0.5, 0.5, -0.75, -0.75, -0.5, 0.0, 0.75, -0.5, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, 0.5, 0.25, -0.5, 0.5, 0.75, 1.0, 1.0, -0.75, -0.75, -1.0, -0.25, -0.75, 1.0, 1.0, 0.75, -0.25, 1.0, 0.25, -1.0, -0.25, 0.0, -0.25, -0.75, -0.25, 0.25, -0.25, 0.5, 0.5, 0.25, -0.25, -1.0, -1.0, 0.0, 0.25, -1.0, 1.0, 0.75, 1.0, -0.75, -0.25, 0.0, 0.0, 0.75, -0.25, -0.5, -0.25, -0.75, -0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.5, -0.5, 0.0, 0.75, -1.0, 0.0, 0.0, 0.0, 0.5, -0.5, 0.25, 1.0, 0.0, -0.75, -1.0, 0.75, 0.5, -1.0, ]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
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
    render_bundle_encoder002.setPipeline(render_pipeline000);
    texture000.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    texture001.destroy();
    render_bundle_encoder002.insertDebugMarker("marker");
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder002.popDebugGroup();
    command_encoder001.clearBuffer(buffer000);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    command_encoder100.popDebugGroup()
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    command_encoder003.clearBuffer(buffer000);
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.queue.submit([]);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    
    const array3 = new Float32Array([-0.75, -1.0, -0.25, -0.25, 1.0, 0.0, 0.75, -0.75, -0.25, -1.0, -0.75, -0.5, -1.0, 0.5, 0.75, -0.25, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 0.0, -0.75, 0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 0.25, 0.75, 0.5, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -1.0, 0.5, -0.25, 0.75, 0.0, 0.0, 0.0, 1.0, 1.0, -1.0, 0.75, 1.0, -1.0, 0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 0.75, -0.25, 0.75, -0.25, -1.0, -0.25, -0.25, 1.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.5, -1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, 0.0, -0.25, -1.0, 0.5, -0.75, -0.5, -0.5, -0.75, 1.0, -1.0, ]);
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_pass_encoder0010.popDebugGroup();
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
    
    command_encoder100.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const array4 = new Float32Array([-0.25, -0.75, 1.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.0, -0.75, 0.0, 1.0, -0.25, -1.0, -0.5, 1.0, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 0.25, -0.25, 0.5, 0.25, 0.75, 0.5, 0.5, -0.5, 0.5, -0.25, 1.0, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, -0.5, -0.25, 0.0, 0.5, -0.5, 1.0, -0.5, 0.5, -0.75, -0.5, -0.25, 1.0, 0.75, 0.5, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, -0.5, 0.0, -0.5, 0.5, 0.25, 0.25, -0.75, 0.5, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, 0.5, -0.75, -1.0, -0.25, -0.75, 1.0, 0.25, -0.75, 0.75, 0.5, -0.5, 0.5, 0.25, -0.75, 0.75, -0.5, -1.0, -0.5, 0.25, -0.25, 1.0, 0.0, -0.5, -1.0, -0.75, ]);
    const array5 = new Float32Array([-0.25, 0.25, 0.0, -1.0, -0.25, 0.25, 0.0, 0.25, 1.0, -0.5, 0.25, 0.25, -1.0, 0.75, 0.25, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, 0.5, 0.0, -0.5, -1.0, -1.0, -1.0, -0.25, 0.0, -0.75, 0.5, 0.75, 0.75, -0.5, 0.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.0, -0.25, -0.25, 0.75, -0.5, 0.5, 0.5, -0.25, 1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, 0.75, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, 0.25, 0.5, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.0, -0.5, -0.5, -0.25, -0.75, -0.75, 1.0, 0.75, -1.0, 0.0, 0.0, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder100.popDebugGroup()
    
    render_pass_encoder0020.setPipeline(render_pipeline002);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const array6 = new Float32Array([-1.0, 0.75, 0.25, -0.25, -0.5, -0.25, 1.0, 1.0, -0.75, 0.75, -1.0, 1.0, 0.0, 0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, 0.75, 0.5, 0.75, 1.0, -0.25, 0.5, -1.0, 0.75, -0.25, -1.0, 0.25, -0.25, 1.0, -1.0, 0.0, 0.75, 0.25, 0.5, 0.5, -0.5, -0.75, 0.75, -1.0, 0.75, 0.0, 0.75, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.0, 0.25, 0.75, 0.5, 1.0, 0.5, 0.75, 0.75, 0.5, 0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 1.0, -0.25, -0.75, -1.0, 0.0, 0.0, -0.25, -0.5, 0.0, 0.75, 0.75, 0.5, 0.75, 0.5, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, ]);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    render_pass_encoder0010.setPipeline(render_pipeline003);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder000.popDebugGroup();
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.insertDebugMarker("mymarker");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.insertDebugMarker("marker");
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
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder004.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    command_encoder101.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    render_pass_encoder0010.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0040.setPipeline(render_pipeline005);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.clearBuffer(buffer102);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.popDebugGroup();
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0050.setPipeline(render_pipeline001);
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder102.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    render_pass_encoder0010.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder002.popDebugGroup()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.popDebugGroup();
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group000);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0030.setPipeline(render_pipeline003);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    render_pass_encoder0011.pushDebugGroup("group_marker");
    render_pass_encoder0011.setPipeline(render_pipeline007);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0011.insertDebugMarker("marker");
    
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder0011.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    compute_pass_encoder0030.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    command_encoder101.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline007.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_pass_encoder0011.setBindGroup(0, bind_group001);
    render_pass_encoder0011.insertDebugMarker("marker");
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
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
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture101.destroy();
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.setPipeline(render_pipeline105);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder103.setPipeline(render_pipeline102);
    query101.destroy()
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_pass_encoder0011.pushDebugGroup("group_marker");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    
    texture100.destroy();
    
    
    texture002.destroy();
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0011.setVertexBuffer(0, buffer001);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    compute_pass_encoder0030.popDebugGroup()
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder103.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.popDebugGroup();
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
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
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1011.setPipeline(render_pipeline103);
    render_pass_encoder0011.setIndexBuffer(buffer005, "uint16");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    render_pass_encoder0011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device30.pushErrorScope("validation");
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0011.setIndexBuffer(buffer003, "uint16");
    
    
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0050.popDebugGroup();
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder0051.setPipeline(render_pipeline000);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    
    
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    device10.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    const array7 = new Float32Array([0.25, 1.0, 1.0, -0.25, 0.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.5, -0.5, -0.75, 1.0, 0.5, 0.5, 1.0, -0.75, -0.75, -0.5, 0.5, 1.0, -0.75, -0.5, -0.5, 0.25, -0.5, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.75, 0.25, 0.0, 0.25, 0.25, 0.0, 1.0, 0.0, 0.25, 0.0, -0.5, 0.5, 0.5, -0.5, 1.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.75, 0.0, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, 0.75, 0.25, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, 0.25, 0.5, -0.75, -0.75, 1.0, 0.0, 0.25, -0.5, -0.75, -0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 0.5, 0.0, -0.25, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0011.popDebugGroup();
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group002);
    query000.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0051.setBindGroup(0, bind_group003);
    command_encoder004.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    device00.pushErrorScope("internal");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0011.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    render_pass_encoder0051.insertDebugMarker("marker");
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group004);
    render_pass_encoder0011.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0051.setVertexBuffer(0, buffer004);
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
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group005);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer0012, 0, array1, 0, array1.length);
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder005.clearBuffer(buffer005);
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0051.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    device00.queue.writeBuffer(buffer0011, 0, array5, 0, array5.length);
    render_pass_encoder0040.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0000.setPipeline(render_pipeline001);
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    command_encoder002.clearBuffer(buffer005);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    render_pass_encoder0011.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0051.drawIndirect(buffer000, 0);
    render_pass_encoder0000.popDebugGroup();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    render_pass_encoder0011.popDebugGroup();
    render_pass_encoder0040.setVertexBuffer(0, buffer009);
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    render_pass_encoder0020.popDebugGroup();
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group007);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0050.setVertexBuffer(0, buffer0012);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0051.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.setVertexBuffer(0, buffer0013);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0000.setVertexBuffer(0, buffer0015);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0020.setVertexBuffer(0, buffer0015);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder0050.drawIndirect(buffer009, 0);
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([]);
    render_pass_encoder0050.draw(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer008, 0);
    render_pass_encoder0051.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0011.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
}