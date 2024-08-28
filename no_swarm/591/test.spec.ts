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
    
    
    const array0 = new Float32Array([-0.75, 0.75, 0.75, 0.25, 0.5, -0.25, -0.25, 0.75, -0.25, 0.0, 0.5, -0.75, 0.25, 0.5, 0.0, 0.25, 0.5, 0.75, 0.5, -1.0, 0.25, 0.25, -1.0, 0.5, -0.5, 0.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, 0.0, -1.0, 1.0, -0.5, -1.0, 0.75, 0.75, -0.5, 0.75, 0.0, 1.0, 0.25, 0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.75, 0.0, 0.75, -0.75, -1.0, 0.75, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.5, -0.75, -0.5, -1.0, -0.75, -1.0, -1.0, -1.0, -0.5, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, 0.0, -1.0, -0.25, -0.5, -0.5, -1.0, 0.25, -0.25, -1.0, -0.25, -0.5, -0.25, ]);
    
    const array1 = new Float32Array([-0.75, -0.25, 1.0, -0.25, -0.25, 0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.25, -1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 1.0, -0.25, -0.25, -0.5, 0.5, -0.75, 0.25, -1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 0.75, -0.75, 0.25, -0.5, 1.0, 0.75, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, 1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 1.0, 0.75, -0.25, -1.0, -0.5, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.75, -0.5, 0.5, 0.25, 0.0, -0.5, -0.75, 0.25, 0.25, -1.0, 0.0, 0.0, -0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.25, 1.0, -1.0, 1.0, 0.75, 0.25, 0.25, -0.25, 0.0, -0.75, 0.0, 0.75, -0.5, -1.0, -0.25, -0.75, ]);
    const array2 = new Float32Array([0.5, 0.25, 0.75, -1.0, -0.75, -0.5, -1.0, 0.0, 0.25, 0.25, -0.75, -0.5, 0.5, 0.75, -0.25, 0.5, -0.25, 0.0, 0.0, 1.0, -0.75, -0.5, 0.75, -1.0, -0.5, 0.0, -0.25, -0.5, -0.75, 0.25, 0.5, -1.0, -0.5, 0.5, 1.0, -1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, 1.0, 0.75, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -0.5, 0.75, 0.75, -0.25, -1.0, 0.25, -0.5, 0.25, -0.5, -1.0, 0.75, 0.75, 0.0, 0.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.75, -0.5, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.5, -0.5, -0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -0.25, 0.25, 0.5, 0.75, -1.0, -0.25, 0.25, 0.25, 0.5, 0.75, 1.0, -0.25, 0.0, ]);
    const array3 = new Float32Array([0.25, -1.0, 0.25, 0.0, 0.25, 0.0, 0.5, -0.25, 0.5, 0.0, -0.5, -0.5, 0.0, 0.0, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.5, -0.5, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, 0.0, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 1.0, 1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.75, 0.5, -0.75, -0.25, 0.0, -1.0, -0.75, 0.25, 0.0, 0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.75, -0.75, -0.5, 0.0, 0.0, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, 0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, -1.0, -0.5, -0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 1.0, -1.0, -0.75, 0.0, -0.5, -0.75, 0.0, 1.0, ]);
    
    const array4 = new Float32Array([-1.0, -0.75, -0.25, 0.0, 0.0, 0.75, 1.0, 1.0, 0.0, 0.25, -0.75, 0.25, 0.25, -0.75, -0.25, 0.5, 0.5, -0.25, -0.75, 0.0, 0.75, -0.5, -0.75, -0.5, -0.25, -0.75, -1.0, 0.75, 1.0, -0.5, 1.0, 0.25, 1.0, -0.25, -0.75, 0.0, 1.0, 0.75, -0.25, -0.5, 0.25, -1.0, -0.25, -0.25, -0.5, 0.25, -0.75, 0.5, -1.0, -1.0, -1.0, 0.75, -0.5, 0.75, 1.0, -0.25, -0.75, -0.25, 0.0, -0.75, -0.5, -0.25, 0.0, -0.75, -1.0, 1.0, 0.0, -1.0, -0.75, -0.25, 0.0, 0.0, -0.75, -0.25, -0.25, 0.5, -1.0, 0.5, 0.0, -1.0, 1.0, 0.5, -1.0, 1.0, 0.0, -1.0, 0.0, 0.0, -1.0, 0.75, 0.75, -0.75, 0.5, -0.25, -1.0, 0.5, -0.25, -0.75, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.5, -0.75, 0.5, -1.0, -0.25, -1.0, 0.75, -1.0, -1.0, 0.5, 0.75, -0.75, -0.75, 0.25, 1.0, 0.5, -0.75, -1.0, 0.0, 0.5, 1.0, -0.25, -0.5, 0.25, 0.5, 0.25, 0.0, 0.25, 0.0, 1.0, 0.25, 0.5, 0.25, -0.5, -0.25, -0.25, 0.25, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.25, 1.0, 1.0, 0.25, -1.0, -0.5, -0.25, 0.5, 0.0, -0.25, 0.75, 0.0, -1.0, -0.25, 0.5, -1.0, 0.75, 0.0, -1.0, 1.0, 1.0, 0.75, 1.0, 0.25, -1.0, 0.75, 0.75, -1.0, 1.0, -1.0, 0.75, -0.75, -0.5, 0.75, 1.0, -0.5, 0.75, 0.5, 0.5, 1.0, -0.75, 0.75, 0.5, -0.75, 0.5, 0.5, -1.0, -0.75, 0.0, 0.5, 0.75, 0.0, -0.75, ]);
    
    
    
    
    
    
    const array6 = new Float32Array([-0.25, 0.25, 0.75, -0.25, -0.75, 1.0, -1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -0.5, 0.5, -1.0, 0.5, -0.5, -0.75, 1.0, -0.5, 0.75, 0.5, -0.25, -0.5, 0.25, 0.0, 0.5, -0.5, 0.5, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, 0.5, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, 1.0, -0.75, -0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.25, -0.25, -1.0, -0.75, -0.5, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, 0.0, -0.5, -0.25, -0.5, -1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, -0.75, 0.0, -0.75, 1.0, -1.0, -0.75, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, -0.75, 0.75, ]);
    const array7 = new Float32Array([-0.75, -1.0, -0.25, -0.75, 0.25, 0.25, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, 0.5, 1.0, 0.25, 0.0, 0.0, -0.75, 1.0, 0.0, 0.75, -0.75, 0.5, -0.5, 0.25, -0.25, 0.5, -1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 1.0, 0.25, 0.5, 0.5, -0.25, 0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.0, 0.5, 0.25, -0.75, 0.75, -0.75, 0.75, -1.0, -0.25, 0.5, 0.5, 1.0, -0.25, 0.75, 0.0, -0.25, 0.0, 0.0, -0.75, -0.5, -0.5, 1.0, -0.75, 0.75, 0.5, -0.5, 1.0, -0.25, 0.0, -0.5, -0.25, -1.0, 0.0, 1.0, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.25, -0.75, 1.0, -1.0, -0.5, -1.0, 0.25, 1.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.pushErrorScope("internal");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    texture200.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device20.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture100.destroy();
    render_bundle_encoder100.popDebugGroup();
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer101 = command_encoder101.finish();
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_buffer103 = command_encoder103.finish();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    command_encoder104.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device90.pushErrorScope("validation");
    device00.pushErrorScope("internal");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    render_bundle_encoder900.insertDebugMarker("marker");
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_bundle_encoder900.insertDebugMarker("marker");
    const array8 = new Float32Array([0.5, 0.75, -1.0, 0.75, 1.0, 0.0, -1.0, 0.75, 0.75, 0.25, -1.0, -0.5, 0.0, 0.5, 1.0, -0.5, -0.25, -0.75, -1.0, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, -0.25, -0.5, 0.25, 0.0, 0.0, -0.5, -0.5, -0.75, 0.5, -0.5, 0.25, -0.25, -0.5, 1.0, -0.25, 0.75, 0.5, 0.75, 1.0, 1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.5, 0.5, 1.0, -0.5, 0.75, 1.0, 0.0, 0.0, -1.0, 0.25, -0.5, -0.25, 0.0, -0.5, -1.0, 0.25, 0.25, -0.5, 0.5, -0.25, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, -1.0, 0.5, 1.0, 0.75, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 1.0, -0.75, ]);
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder902 = device90.createCommandEncoder({ label: "command_encoder902" });
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
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
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
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder901.pushDebugGroup("mygroupmarker")
    texture000.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    texture101.destroy();
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
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    compute_pass_encoder1040.setPipeline(compute_pipeline100);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1050.setPipeline(compute_pipeline100);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
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
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    buffer001.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_buffer900 = command_encoder900.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query800.destroy()
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    texture102.destroy();
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([-0.25, -0.25, 0.5, 0.25, 0.5, 1.0, -0.25, 0.0, -0.5, 1.0, -1.0, -0.25, 0.75, -0.75, -0.5, 1.0, 0.5, 0.75, 0.0, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -0.5, -0.5, 1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.0, 0.75, 0.5, -0.75, -1.0, -0.75, 0.5, -0.75, 1.0, 1.0, -1.0, -0.75, -0.75, 0.0, 0.0, 0.25, -1.0, -0.25, 0.25, 1.0, -0.75, -0.75, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, 0.0, -0.5, 0.75, -0.5, -0.75, -0.75, -1.0, -0.75, 0.0, -0.5, -1.0, 0.75, 1.0, 1.0, 0.25, -1.0, -1.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.25, 0.25, 0.75, 0.0, 0.75, 0.25, -0.75, 0.5, 0.0, 0.0, -0.5, ]);
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    device80.pushErrorScope("validation");
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    
    
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group100);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
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
    command_encoder800.insertDebugMarker("mymarker");
    const array10 = new Float32Array([-0.5, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, 0.75, 1.0, 0.0, 0.25, 0.5, -0.25, 0.5, 0.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.75, 0.0, -0.75, 0.75, 0.5, 0.5, 0.75, 1.0, 0.5, 1.0, -0.75, -1.0, 0.75, -0.25, -0.75, 0.75, 0.75, 0.0, 0.5, 0.5, -0.75, -0.5, -1.0, -0.5, -0.75, 0.0, 0.75, -1.0, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, -0.75, 0.25, 1.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.5, -0.75, -0.75, -0.25, 0.25, -0.75, 0.75, 0.0, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.25, -0.25, -0.5, -0.5, 1.0, 0.75, -0.25, -1.0, 0.0, -0.5, -1.0, 0.25, 1.0, 0.0, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, -1.0, 0.5, 0.75, ]);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    command_encoder700.pushDebugGroup("mygroupmarker")
    const sampler105 = device10.createSampler( { label: "sampler105" } );
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module905_code = "";
    try {
        shader_module905_code = await fs.readFile(__dirname + '/shader_module905.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module905 = await device90.createShaderModule({ label: "shader_module905", code: shader_module905_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.setPipeline(render_pipeline901);
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder800.insertDebugMarker("mymarker");
    texture001.destroy();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer107, 0);
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const command_buffer801 = command_encoder801.finish();
    
    buffer106.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    compute_pass_encoder1060.setPipeline(compute_pipeline100);
    
    
    render_bundle_encoder801.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    buffer100.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    query700.destroy()
    
    
    render_bundle_encoder900.pushDebugGroup("group_marker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    const render_pipeline902 = device90.createRenderPipeline({
        label: "render_pipeline902",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
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
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const render_pipeline903 = device90.createRenderPipeline({
        label: "render_pipeline903",
        vertex: {
            module: shader_module902,
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
            module: shader_module902,
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
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    command_encoder901.popDebugGroup()
    command_encoder700.insertDebugMarker("mymarker");
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1060.setBindGroup(0, bind_group103);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline904 = device90.createRenderPipeline({
        label: "render_pipeline904",
        vertex: {
            module: shader_module903,
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
            module: shader_module903,
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder107.pushDebugGroup("mygroupmarker")
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    compute_pass_encoder1020.setPipeline(compute_pipeline103);
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture800.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0000.executeBundles([])
    
    
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
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.beginOcclusionQuery(0)
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer108.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1050,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    buffer003.destroy()
    render_pass_encoder1070.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0000.insertDebugMarker("marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    query700.destroy()
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
    device00.queue.writeTexture({ texture: texture002 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1070.setPipeline(render_pipeline104);
    buffer700.destroy()
    
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1034 = texture103.createView({ label: "texture_view1034" });
    buffer101.destroy()
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("internal");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query901.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer901 = command_encoder901.finish();
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder1070.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query003.destroy()
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder700.popDebugGroup()
    render_pass_encoder1070.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    render_bundle_encoder102.setPipeline(render_pipeline105);
    render_bundle_encoder801.popDebugGroup();
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder002.setPipeline(render_pipeline000);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
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
    query003.destroy()
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    buffer104.destroy()
    const command_buffer401 = command_encoder401.finish();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1060.popDebugGroup()
    
    
    render_pass_encoder1070.setStencilReference(1);
    const command_buffer902 = command_encoder902.finish();
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline900 = device90.createComputePipeline({
        label: "compute_pipeline900",
        layout: pipeline_layout900,
        compute: {
            module: shader_module905,
            entryPoint: "main"
        }
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    command_encoder001.insertDebugMarker("mymarker");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0000.executeBundles([])
    const command_encoder903 = device90.createCommandEncoder({ label: "command_encoder903" });
    texture501.destroy();
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
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
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1012, 0);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1070.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    
    
    texture002.destroy();
    device10.queue.writeBuffer(buffer107, 0, array9, 0, array9.length);
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
    render_bundle_encoder401.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group104);
    command_encoder400.popDebugGroup()
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1015, 0);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer903 = command_encoder903.finish();
    render_pass_encoder0010.setPipeline(render_pipeline000);
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group105);
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder1060.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1018, 0);
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder1050.popDebugGroup()
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1070.setBindGroup(0, bind_group106);
    render_pass_encoder0000.setPipeline(render_pipeline000);
    compute_pass_encoder1020.end();
    compute_pass_encoder1040.end();
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group000);
    render_pass_encoder0000.endOcclusionQuery()
    device90.queue.submit([command_buffer900, command_buffer901, command_buffer902, ]);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    device40.queue.submit([command_buffer400, ]);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder1050.end();
    device80.queue.submit([command_buffer801, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    command_encoder102.popDebugGroup()
    compute_pass_encoder8000.setPipeline(compute_pipeline800);
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_pass_encoder0000.setBindGroup(0, bind_group002);
    command_encoder104.popDebugGroup()
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
        layout: compute_pipeline800.getBindGroupLayout(0),
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

    compute_pass_encoder8000.setBindGroup(0, bind_group800);
    device70.queue.submit([command_buffer700, ]);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder8000.end();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer800 = command_encoder800.finish();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer105, ]);
    const command_buffer100 = command_encoder100.finish();
    device90.queue.submit([command_buffer903, ]);
    const command_buffer104 = command_encoder104.finish();
    device10.queue.submit([command_buffer100, command_buffer104, command_buffer106, ]);
    device80.queue.submit([command_buffer800, ]);
}