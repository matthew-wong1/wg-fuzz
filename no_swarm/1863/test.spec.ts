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
    const array0 = new Float32Array([0.5, -0.5, -0.25, 0.75, -1.0, -0.75, 0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 1.0, -0.75, 0.25, 0.25, 1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -1.0, 0.25, 1.0, 0.0, 0.75, -0.75, 0.25, 0.75, -0.25, -0.25, -0.75, -0.75, 1.0, -1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -0.75, -1.0, -0.25, 1.0, 0.25, 0.5, -0.25, 0.0, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, -1.0, -0.75, -0.5, 0.75, 0.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.75, -1.0, -0.5, 0.25, 1.0, 1.0, -0.75, -0.5, 0.75, 1.0, 0.0, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.5, -0.5, -0.5, 0.25, -1.0, -0.25, 0.75, -0.5, -0.25, 0.0, 0.5, -1.0, 0.25, 1.0, 1.0, ]);
    
    
    const array1 = new Float32Array([0.25, 1.0, 0.75, 0.75, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -0.5, 0.0, 1.0, -0.25, -0.25, -1.0, -0.5, -0.25, -0.75, 0.5, 0.0, 0.5, -0.75, 0.5, -1.0, -0.5, -0.75, -1.0, -0.75, -0.5, -0.75, 0.5, -0.25, 1.0, -0.25, -0.5, -0.5, -1.0, 0.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.5, 0.25, -0.25, 0.25, 0.0, -1.0, -0.25, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, 0.5, -0.5, -0.75, 0.75, -0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, 0.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.25, 0.5, 0.5, 0.25, -0.5, 0.5, 0.5, -0.25, ]);
    const array2 = new Float32Array([0.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -1.0, 0.0, 0.75, 1.0, -0.25, -0.25, 0.5, 0.25, -0.5, -0.25, -0.25, 1.0, 0.5, 0.75, 0.25, 1.0, -0.25, 1.0, -0.75, -0.75, 0.25, -0.75, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, -0.25, -0.5, -1.0, 1.0, 1.0, 0.0, 0.25, 0.5, 0.75, 0.5, -0.5, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, 0.75, 1.0, -1.0, -0.25, 0.75, 0.5, -0.75, 1.0, 0.25, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 0.25, -1.0, -1.0, -0.75, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, -0.75, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, 0.25, ]);
    
    
    
    const array3 = new Float32Array([0.0, 0.5, 0.5, -0.5, -0.25, 1.0, -0.5, -0.25, 0.25, 0.0, -0.5, 0.75, -0.5, 0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 0.0, -0.75, -0.75, -0.75, 0.5, -1.0, -0.75, 1.0, 0.75, -0.75, -0.25, 0.5, -0.5, 0.0, -0.5, -0.25, 1.0, -1.0, -0.75, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, -0.5, 0.0, 0.5, -0.25, -0.5, -0.25, -0.5, -0.75, -0.5, 0.5, 0.0, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.5, 0.0, 0.0, -0.5, -0.25, 0.25, 0.25, -0.25, 0.75, -0.5, 0.5, 0.0, 0.5, -0.25, 0.5, 1.0, 1.0, -0.75, -0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, -0.25, 0.5, 1.0, -0.5, 0.25, -0.25, -0.75, 0.75, -0.5, -0.5, 1.0, 0.0, -0.5, -1.0, ]);
    const array4 = new Float32Array([0.5, -1.0, 0.75, 1.0, 0.75, 0.0, -0.5, 0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -0.5, -0.75, -0.25, -0.5, -0.5, -1.0, 0.0, 0.75, 0.25, 1.0, 0.0, -0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 0.25, 1.0, 1.0, -0.25, 0.0, 0.5, -0.75, 1.0, 0.75, -0.5, 0.0, -0.5, -0.5, 0.75, 0.25, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.75, -0.5, 0.5, 0.75, 0.5, -0.5, -0.5, -0.5, -0.5, 1.0, 0.25, -0.75, 1.0, 0.25, -0.5, -0.25, 0.0, -0.75, -0.5, -1.0, -0.5, -0.75, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, 0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.0, 0.5, -1.0, ]);
    
    const array5 = new Float32Array([0.75, -1.0, 0.25, -1.0, 0.25, -1.0, 0.25, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -0.5, 0.25, 1.0, -0.5, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -1.0, -0.25, -1.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.75, 0.25, 0.25, 0.5, 0.5, 1.0, -0.75, 1.0, 1.0, 0.5, 0.5, 0.25, -0.25, -0.75, 0.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.0, 0.75, 1.0, 0.5, 0.5, 0.25, 0.0, -0.5, 0.25, 0.75, 0.5, -0.75, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, -0.25, 0.0, 0.25, -0.5, -1.0, 1.0, 0.25, -0.75, 0.75, 1.0, -1.0, -1.0, 1.0, -0.25, -0.75, -0.5, -0.25, 0.5, 0.75, 0.25, 0.25, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 1.0, 0.0, ]);
    
    const array6 = new Float32Array([-0.25, -0.5, -1.0, 0.25, 0.5, 0.25, -1.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.25, 1.0, 0.0, 0.0, -0.75, 0.5, 1.0, -0.25, -1.0, -0.25, 0.5, -1.0, 1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 1.0, -1.0, -0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 0.25, 0.25, 0.5, 0.25, -1.0, 0.75, -1.0, -0.75, 0.5, 0.75, 0.75, 0.75, 0.75, -1.0, -0.75, 0.0, 0.25, 0.75, -0.25, -0.75, -0.75, 0.25, 0.0, 0.25, 0.75, 0.0, -0.5, -1.0, -0.75, -1.0, -0.25, 0.75, 0.5, -0.5, 0.5, -0.75, -0.5, -0.5, 0.75, -0.75, 0.0, -0.5, -0.5, 0.25, -0.75, -0.25, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.25, -0.75, 0.25, -1.0, -0.75, 0.25, 1.0, -0.25, 0.75, 0.25, ]);
    const array7 = new Float32Array([-0.75, 0.5, 0.25, -0.25, 0.5, 0.0, 0.25, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 0.25, 1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, -1.0, 1.0, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 0.0, 1.0, 0.0, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, -0.25, 0.75, -0.5, 0.0, -1.0, 1.0, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, -0.75, 0.5, 0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 0.0, -1.0, 0.5, 1.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 0.25, -0.25, -0.75, -0.25, 0.25, 0.0, -0.5, 0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -1.0, -0.5, -0.75, ]);
    const array8 = new Float32Array([-1.0, 1.0, 0.0, 0.5, 0.0, -1.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.5, -1.0, 0.25, -1.0, -1.0, -1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 0.5, 0.25, -1.0, 0.0, -1.0, 1.0, -0.5, -0.5, -0.25, -0.25, -0.5, -0.5, 0.75, 0.75, 0.25, -0.5, 1.0, 0.25, 0.0, 0.75, -1.0, 0.75, -0.5, 1.0, 1.0, 0.75, 0.75, -0.25, 0.0, 1.0, 1.0, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, 0.25, -0.75, 0.25, -1.0, 0.0, 0.0, 0.25, -0.5, -0.25, -1.0, -0.25, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, 0.0, -1.0, 0.25, 0.0, 0.0, -0.75, -0.75, -1.0, 0.5, 0.75, -0.25, 0.0, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, ]);
    const array9 = new Float32Array([1.0, -0.5, 0.5, -0.5, -0.5, 1.0, -0.75, -0.5, 0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, 0.25, 0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, -1.0, 0.75, 1.0, 0.0, 0.5, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, 0.25, 0.75, 1.0, 0.25, -0.25, -0.75, -0.5, -0.5, 0.0, 0.5, -0.5, 0.0, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, 0.0, 0.25, -1.0, -0.75, -0.75, 0.5, 1.0, 0.75, -0.25, -0.25, 0.0, -0.5, -0.25, -1.0, -0.75, 0.0, 0.5, -0.5, -0.25, 0.5, 0.0, 0.25, -0.75, -1.0, 0.75, -1.0, 1.0, 0.5, -0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, -0.25, 0.5, 0.75, 0.0, -0.5, 0.75, 0.75, -0.25, 0.5, ]);
    const array10 = new Float32Array([0.5, -0.25, 0.25, 0.5, 0.0, 0.0, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, 0.25, -0.5, -0.25, -0.75, -0.25, 0.25, 1.0, 0.0, 0.25, 0.75, 0.75, -1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.75, 1.0, 1.0, -0.75, -0.75, 0.75, 1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.5, -0.5, -0.75, -1.0, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, -0.75, -0.25, -0.5, -0.75, -0.75, 0.0, -1.0, -1.0, 0.5, 1.0, -1.0, 0.0, 1.0, -0.75, 0.5, 0.25, 0.5, 0.5, -0.75, 1.0, -0.5, -0.5, 0.5, 0.25, -0.5, -0.25, 0.5, 0.0, -1.0, -1.0, 1.0, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder100.popDebugGroup();
    device00.pushErrorScope("internal");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
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
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
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
    device00.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder101.popDebugGroup()
    
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    query101.destroy()
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
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
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const array11 = new Float32Array([0.75, -0.5, -0.5, -0.75, 0.25, 0.0, 1.0, 1.0, 1.0, 0.25, 1.0, 0.75, -0.25, -0.5, 0.25, -1.0, 0.25, -0.5, 0.25, 0.0, -0.5, 0.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.0, -0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.75, 0.5, -0.25, -1.0, 0.25, -1.0, 0.5, -0.75, 0.75, -0.25, 0.75, 0.25, 0.5, 0.75, -0.75, -0.75, 0.75, -0.75, 0.25, 0.25, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, 0.75, -0.5, 0.5, -0.75, -0.5, 0.25, 0.5, 0.0, 0.5, -0.5, 0.75, -0.5, 0.5, 0.75, 0.0, -0.75, 0.0, 0.5, 0.0, 0.0, -0.75, 0.0, 1.0, -1.0, -0.75, 0.25, 0.0, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 1.0, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer100, 0, array11, 0, array11.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array9, 0, array9.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
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
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    buffer101.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    buffer100.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1001.setPipeline(compute_pipeline101);
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
    
    
    
    device10.queue.submit([]);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline105);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1001.insertDebugMarker("marker")
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_bundle_encoder102.insertDebugMarker("marker");
    
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
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group101);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.destroy();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group103);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device10.queue.writeBuffer(buffer1010, 0, array10, 0, array10.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1010, 0, array6, 0, array6.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.setVertexBuffer(0, buffer103);
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const array12 = new Float32Array([0.5, -0.5, -0.25, 0.25, -1.0, -0.75, 0.75, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, -1.0, 0.25, 0.25, -0.25, 0.25, 0.5, -0.25, 0.0, -0.25, 0.5, -0.25, 0.5, -0.75, -0.25, 0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 0.25, -0.75, -0.5, 0.25, -0.25, -0.25, 0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.0, -0.25, -0.25, -0.75, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, -0.75, 0.0, -0.25, -0.5, -0.75, 0.75, -1.0, 0.25, 0.0, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, -0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 0.75, -0.25, 0.0, 0.0, 0.25, 1.0, 0.5, 1.0, -0.75, -0.25, 1.0, 0.0, 0.25, ]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
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
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    
    device30.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array13 = new Float32Array([0.5, 0.0, 0.25, -0.5, 1.0, -0.25, 1.0, 0.5, -0.75, 0.0, 0.0, 0.25, -0.5, 0.25, -0.75, -1.0, 0.75, -0.25, 0.5, 1.0, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, 0.75, 0.25, -1.0, 0.75, -0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -0.25, -0.75, 1.0, 0.25, -0.75, 0.5, 0.0, 0.75, -0.75, 0.0, 1.0, -1.0, 0.0, 0.0, 1.0, 0.5, 1.0, 1.0, -0.5, 1.0, 0.75, -1.0, 0.5, -0.75, 0.0, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.75, 1.0, 0.0, 0.5, -1.0, -0.75, 0.5, 0.5, 0.5, -0.5, -0.75, -1.0, -1.0, 1.0, 0.0, 0.25, 1.0, 0.5, 0.0, -0.5, 0.75, 0.75, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, ]);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    device50.destroy();
    
    
    
    buffer000.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const array14 = new Float32Array([0.0, 0.0, -1.0, -0.5, -0.5, -1.0, 0.5, 0.25, 0.5, 0.5, 0.0, 1.0, -0.5, -0.5, 0.75, 1.0, -0.75, 0.75, 0.0, 0.0, 0.75, 0.75, -0.25, 0.5, 0.25, -0.25, 0.5, -0.5, 0.25, 0.25, 0.75, 0.0, 0.0, -0.75, 0.0, 0.5, -0.5, 0.0, 1.0, 0.0, -0.75, -1.0, 0.25, -0.5, 1.0, -0.75, 1.0, -1.0, -0.5, 0.5, -0.5, -0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, -0.75, 1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.25, 1.0, 0.5, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, 0.5, 0.5, 0.25, -0.25, -0.5, 0.75, 0.5, 0.75, -0.25, 0.5, 0.25, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, 1.0, -0.5, -1.0, 0.25, -0.5, ]);
    
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device40.destroy();
    
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array15 = new Float32Array([-1.0, 0.75, 0.5, 0.0, -0.5, -0.25, 1.0, 0.25, -0.5, 0.75, -0.5, -0.25, 0.75, 0.75, 0.25, -0.75, 0.5, 0.75, -0.25, -1.0, -1.0, -0.75, 0.25, -1.0, 0.0, -0.5, 0.75, 0.5, -0.5, 0.75, 0.25, 0.0, -1.0, -1.0, -1.0, -0.25, -1.0, 0.0, 0.0, 1.0, -0.25, 0.75, 0.0, 0.75, 0.25, -1.0, -1.0, 0.5, 0.25, 0.75, 0.25, 0.5, 1.0, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, 1.0, -0.25, -0.25, -0.75, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -0.25, -0.25, -0.5, -0.75, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, 0.5, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, -1.0, -1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 1.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.25, ]);
    
    
    
    query200.destroy()
    const array16 = new Float32Array([0.25, 0.5, -1.0, 0.5, -0.5, 0.0, 0.5, -1.0, 0.25, 0.75, -0.25, 0.5, 0.75, -1.0, 0.75, 0.0, 1.0, 0.0, 0.0, 0.25, -0.75, 0.5, -0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, -0.25, 1.0, 1.0, -0.25, -0.75, -0.25, -0.25, -1.0, -0.5, -0.25, -1.0, 0.0, -0.25, 0.25, -0.5, 0.5, 0.75, -0.5, -0.25, 0.75, -0.75, -0.75, 0.5, -0.25, 0.5, -0.75, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.75, -0.25, 0.0, 0.75, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, -1.0, -0.5, -0.5, -0.5, -0.5, 1.0, 0.5, 0.5, -0.75, 0.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.25, 0.5, -0.75, 1.0, 1.0, 0.5, -0.25, -0.25, 0.5, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device50.pushErrorScope("validation");
    
    
    device40.destroy();
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array11, 0, array11.length);
    
    
    
    
    
    const array17 = new Float32Array([1.0, -0.25, -0.75, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 0.25, -0.25, 0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 1.0, 1.0, -0.75, -1.0, 0.25, -1.0, -1.0, -0.75, -0.5, 0.0, -0.75, 0.0, 1.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.75, -0.5, 1.0, -1.0, 0.5, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.5, 1.0, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.25, -1.0, 0.25, 1.0, 0.5, 0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, -0.75, 1.0, -0.25, 0.0, -0.5, 0.0, 0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.75, 0.25, 0.0, 0.25, ]);
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const array18 = new Float32Array([0.0, 0.75, -0.5, 0.0, -1.0, -0.5, -1.0, 0.25, 0.5, 0.25, 0.0, -0.25, 0.0, 1.0, 1.0, 0.0, -1.0, -1.0, -1.0, -0.5, 0.0, -0.75, -1.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.25, -1.0, 0.5, -0.75, -1.0, 0.25, -0.75, -0.75, 0.75, 1.0, -0.25, -0.5, 0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.5, -1.0, -0.25, -0.5, 0.75, 0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, 0.5, -0.5, -1.0, -1.0, 0.5, -0.25, -0.75, 0.75, 0.25, 0.0, 0.75, 0.5, -0.75, 1.0, 0.0, 0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.0, 1.0, 0.5, 0.0, -0.5, -0.25, ]);
    
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array13, 0, array13.length);
    
    
    
    
    
    compute_pass_encoder1000.popDebugGroup()
    
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    buffer300.destroy()
    
    
    
    
    const array19 = new Float32Array([-0.5, -0.25, -0.5, 0.5, 0.0, -0.75, -0.25, 0.5, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, -1.0, 1.0, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, 0.5, 0.25, 0.5, -0.25, 0.5, 0.25, 0.0, 0.75, 0.5, -0.25, 0.75, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, -0.25, 0.0, 0.75, -0.25, 0.5, -0.25, 0.5, 0.75, 0.5, -1.0, 0.25, 0.5, 0.5, -0.75, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, 0.75, 1.0, 0.5, -0.25, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 1.0, 0.75, 0.75, -0.5, -1.0, -0.5, 0.0, -0.75, 1.0, 0.0, 0.5, 0.75, -0.5, -0.75, -0.25, -1.0, 0.5, 0.75, 0.25, 0.5, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, ]);
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device30.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    
    
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    const array20 = new Float32Array([0.5, 1.0, -1.0, 1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.5, -0.75, -0.75, -0.75, 0.5, 1.0, 0.25, 0.25, -0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, 0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -1.0, -0.75, -0.25, -0.5, 1.0, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, 0.75, 0.5, -0.5, -1.0, -1.0, 0.0, 0.75, -0.75, 0.75, 0.0, 0.5, 1.0, -0.5, 1.0, -0.25, -0.5, 0.75, -0.25, 0.5, -1.0, -0.75, 0.25, -0.5, 1.0, 1.0, 0.5, -1.0, 0.75, -0.25, -0.25, 0.75, -0.25, -1.0, -1.0, -0.75, -1.0, 0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 0.25, -0.25, ]);
    render_bundle_encoder100.popDebugGroup();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device30.queue.writeBuffer(buffer302, 0, array10, 0, array10.length);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    buffer109.destroy()
    
    device80.pushErrorScope("internal");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1011, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1011, 0);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device30.queue.writeBuffer(buffer302, 0, array18, 0, array18.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder100.setVertexBuffer(0, buffer103);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer108, 0, array16, 0, array16.length);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    render_bundle_encoder800.setPipeline(render_pipeline800);
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    
    query800.destroy()
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder801.setPipeline(render_pipeline800);
    const command_buffer800 = command_encoder800.finish();
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
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
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    device60.pushErrorScope("validation");
    
    
    
    device80.queue.writeBuffer(buffer800, 0, array18, 0, array18.length);
    buffer800.destroy()
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device90.destroy();
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    device80.queue.writeBuffer(buffer801, 0, array15, 0, array15.length);
    
    render_bundle_encoder801.insertDebugMarker("marker");
    device70.pushErrorScope("out-of-memory");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer1011, 0, array12, 0, array12.length);
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module806.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    device80.queue.writeTexture({ texture: texture800 }, array20, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.queue.submit([]);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    query802.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.pushErrorScope("internal");
    const command_buffer102 = command_encoder102.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}