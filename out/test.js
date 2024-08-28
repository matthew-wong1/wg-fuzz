const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    
    const array0 = new Float32Array([-0.5, 0.75, 1.0, 0.5, -1.0, 0.75, 0.25, 0.0, 0.75, -0.75, -0.25, -0.25, -0.75, 1.0, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, 0.75, -1.0, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, 0.25, 0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.75, 0.0, 1.0, -1.0, -0.5, 1.0, 0.0, 1.0, 0.0, -0.75, 0.0, 0.75, 0.25, -0.25, 0.75, 0.25, -0.25, -1.0, 0.75, 0.75, 0.25, -0.25, 0.75, 1.0, -0.75, 0.75, -0.75, -0.5, -0.75, 0.75, 0.75, -0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, 1.0, 0.5, 0.25, 0.25, -0.25, 0.0, 0.25, -0.75, 0.5, -0.25, 0.25, -0.5, 0.0, -1.0, -0.5, -0.75, 0.75, 0.75, ]);
    const array1 = new Float32Array([0.75, 1.0, -1.0, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, 0.5, 0.0, 0.25, 0.5, 0.5, -0.25, 0.75, -0.25, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, -0.25, -0.75, 0.0, 0.0, 0.5, -1.0, 0.0, 0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -0.25, -0.5, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, -0.75, 0.25, 0.25, 0.25, -0.5, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, -0.25, -0.75, -0.5, 0.0, 0.0, -0.5, -0.25, 0.25, 1.0, 0.5, 0.75, 0.0, -1.0, -0.5, 0.25, -0.5, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 0.75, -0.5, -0.5, 0.5, 0.75, 1.0, 0.75, -0.5, 0.0, -0.5, 0.75, 0.75, ]);
    
    const array2 = new Float32Array([0.5, -0.75, 0.75, 0.5, 0.0, 0.25, -0.75, 0.0, 0.0, -0.75, -0.5, 0.0, 1.0, -1.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.0, -0.25, -0.75, -1.0, -1.0, 0.0, -0.5, 0.5, -0.25, 0.0, 0.5, 0.0, 1.0, 0.0, -1.0, -0.5, 0.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.0, -0.75, 0.75, 0.5, 0.25, 0.75, -1.0, -0.75, -0.75, -0.5, -0.25, 0.0, 0.0, 1.0, -1.0, 0.75, -0.5, 1.0, 1.0, -0.25, -0.75, -1.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.0, 0.5, 0.75, 0.75, 1.0, 0.75, 0.25, -1.0, 0.75, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -0.75, 0.25, 0.25, 1.0, ]);
    const array3 = new Float32Array([-0.25, -0.25, -0.5, -0.75, 1.0, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, 0.0, -1.0, -1.0, 0.5, -0.5, -1.0, 1.0, 0.75, 0.0, 0.0, -0.25, 0.25, 1.0, 0.25, -0.75, 0.75, -0.5, -0.5, 0.75, 0.75, 0.0, 0.5, 0.25, -0.75, 0.25, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -1.0, -0.5, 0.25, 1.0, -0.25, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, -0.5, -0.75, -0.5, -0.25, 0.25, 0.75, 0.5, 0.75, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, -0.75, 0.25, -0.25, 0.25, 0.25, -0.5, 0.25, 0.5, 0.0, -1.0, -0.5, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 1.0, 0.5, 1.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.25, 0.5, 0.0, 0.5, 0.25, -0.5, 0.5, 0.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([1.0, 0.0, 0.75, 0.75, -1.0, -0.5, 0.0, -1.0, 1.0, -0.25, 1.0, 0.75, 0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.75, -0.5, -0.75, 1.0, 0.25, -0.5, 0.75, 0.5, 0.0, -0.75, -1.0, -0.5, -0.75, -1.0, -0.75, -0.75, -0.25, -0.5, -1.0, 1.0, 0.25, -0.5, 1.0, -0.5, -0.5, -0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -0.25, 0.75, -0.75, -0.75, 0.0, 0.0, -0.75, 0.75, -0.25, 0.5, 1.0, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, -0.25, -0.25, -0.75, -0.5, 0.75, 0.0, 0.5, 0.0, 0.75, 0.0, 0.0, -0.75, -0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, 1.0, -0.5, 1.0, 0.5, -0.75, 0.25, 0.5, 0.25, -0.5, -0.25, 0.0, -0.75, -0.5, -1.0, ]);
    const array5 = new Float32Array([0.25, -0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 1.0, -0.5, -0.25, -0.75, 0.75, -0.75, -0.25, -0.5, 1.0, 1.0, 0.5, 0.0, 1.0, -0.5, 0.75, 0.25, 1.0, 0.25, -0.5, 0.75, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, 0.0, -1.0, -0.5, 0.0, 0.75, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.5, -1.0, -0.25, 0.25, -1.0, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 0.0, 0.0, 0.0, -0.5, 0.0, 1.0, -1.0, 0.0, -0.25, 0.75, 0.5, -0.5, -0.5, 0.5, -1.0, 1.0, 1.0, 0.5, 0.75, 0.0, -1.0, -0.25, -0.25, 0.25, -0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -0.25, -0.5, 0.0, -0.75, 1.0, ]);
    const array6 = new Float32Array([1.0, 0.25, 0.0, -0.5, 0.25, 0.0, 0.25, -0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 0.5, 0.5, 0.5, 0.0, 0.0, -0.75, 0.5, -0.5, 0.5, -0.5, 0.25, -0.25, 1.0, 1.0, 0.0, -0.25, 0.5, -0.25, -0.25, -1.0, 0.5, 1.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.0, 0.75, 0.0, -0.25, -0.5, -0.5, -0.75, -1.0, -0.75, 0.75, 0.75, 0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 1.0, 0.75, 0.75, 0.25, 0.5, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, 0.25, 0.25, 0.75, 0.0, -1.0, -0.75, -0.25, -0.25, -0.25, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, 0.0, -0.5, -0.75, 0.25, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_buffer000 = command_encoder000.finish();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer100 = command_encoder100.finish();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array7 = new Float32Array([1.0, -0.5, 1.0, 0.0, 0.0, -0.25, -0.75, -0.25, -1.0, -0.75, 0.75, -0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.75, -0.25, 0.5, 0.0, -0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -0.25, -1.0, -0.75, -1.0, -1.0, -0.25, 0.25, -0.75, -0.75, 0.5, -0.25, -0.5, -0.25, 0.0, 0.75, -0.25, 0.75, -0.5, 0.25, -0.25, -1.0, -0.25, 0.25, 0.25, 0.25, 0.0, -0.75, -0.75, 0.5, 0.5, 0.75, -0.75, -0.75, 0.25, 1.0, -0.25, 0.5, 0.5, 1.0, 0.5, -0.75, -0.25, -0.75, 1.0, 0.5, -0.5, 0.0, 1.0, 0.75, -1.0, 0.75, -0.25, -1.0, -1.0, 0.25, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, -0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 0.75, 1.0, -0.5, -1.0, -0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.pushErrorScope("validation");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer000.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    buffer101.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder001.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("out-of-memory");
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
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
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
    
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer002 = command_encoder002.finish();
    device00.pushErrorScope("out-of-memory");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.pushErrorScope("validation");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    
    
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder101.insertDebugMarker("mymarker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    buffer103.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    const array8 = new Float32Array([1.0, 0.25, -0.75, 0.25, -1.0, 0.25, 0.0, -1.0, 0.5, 0.75, -0.25, -1.0, -1.0, -0.75, -1.0, 0.25, -1.0, 0.25, 0.0, 0.75, 0.75, 0.75, -0.5, 0.25, -0.25, -0.75, -1.0, 0.0, 0.25, -0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, -0.5, -0.75, 0.0, 0.75, 0.75, 0.5, -0.5, 0.75, 0.5, 0.5, 0.0, 1.0, -1.0, 0.0, 1.0, -0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, -0.5, 1.0, -0.25, -0.25, 0.0, 0.5, 0.75, -1.0, 0.25, -0.25, -1.0, -1.0, 1.0, 1.0, 0.5, -0.5, 0.0, 0.5, 0.25, 0.25, -1.0, -0.75, -1.0, -1.0, -1.0, -1.0, -0.75, -0.25, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, -1.0, -0.5, -1.0, 0.25, -0.75, ]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
    device30.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
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
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer001.destroy()
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
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
    const sampler104 = device10.createSampler( { label: "sampler104" } );
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer102.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    buffer105.destroy()
    
    buffer300.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const array9 = new Float32Array([-0.25, -0.25, 1.0, 0.75, 0.75, 0.5, 0.0, 0.0, 0.0, 0.0, -0.25, -1.0, 0.75, 0.25, 1.0, -0.5, 0.75, -1.0, 0.25, -0.75, 0.0, 1.0, 0.75, 0.0, 0.5, 0.25, 0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 0.5, 0.75, 0.75, -0.5, -0.75, -1.0, -1.0, 0.0, 0.25, 0.0, 0.0, 1.0, -0.25, 0.25, -1.0, -0.25, 0.5, -0.75, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.25, -0.25, 0.75, -0.5, -0.5, -1.0, 0.0, 0.5, -1.0, -1.0, 0.0, -0.75, 0.25, -0.75, 0.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.75, -0.75, 0.25, 0.25, -0.5, -0.75, 0.25, 0.75, -1.0, 1.0, -0.25, -1.0, 0.25, -0.75, -0.5, 0.75, 1.0, 0.75, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, ]);
    
    buffer104.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const array10 = new Float32Array([0.75, -0.75, 0.25, 0.5, -0.25, 0.5, 0.5, 0.5, -0.5, -0.5, -1.0, -0.5, 0.25, -0.25, -0.5, -0.5, -0.75, 1.0, 0.5, -0.25, 0.25, 0.5, 0.75, 0.5, 0.5, 0.5, -1.0, 0.0, 0.5, -0.5, -0.5, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, -0.25, -1.0, 0.25, 1.0, -0.25, -0.5, 0.5, 0.5, 0.0, 0.25, -1.0, -0.25, 0.5, 0.75, -0.5, -1.0, 0.25, 1.0, -0.25, -0.5, -0.5, -0.75, 0.5, 0.0, 0.75, -0.5, 0.5, -0.5, 1.0, -0.75, -1.0, -0.75, 0.0, 0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 0.25, -0.5, 0.0, 0.75, 0.25, -0.5, 0.25, 0.5, 0.0, 0.5, 0.75, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.75, 1.0, -0.75, 1.0, ]);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device00.queue.submit([command_buffer002, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile(__dirname + '/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const array11 = new Float32Array([-0.75, 0.75, 1.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.0, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, 0.25, -0.75, 0.0, 1.0, -0.5, -0.25, -0.75, -0.5, 0.75, 0.25, 0.5, 0.5, 0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 0.0, -0.5, 0.5, -0.25, -0.75, -0.5, -0.5, -1.0, 0.0, 0.5, -0.5, 0.25, -0.75, -0.75, 0.0, -0.5, -0.75, 0.25, 1.0, 0.0, -1.0, 0.25, 1.0, 0.25, 1.0, 0.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, -0.5, 0.25, 0.5, -0.25, -0.25, 0.25, -0.25, -1.0, 0.75, -0.75, 0.25, 0.25, 0.0, -0.5, -0.75, 1.0, -1.0, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, 0.25, 0.5, -0.25, -0.5, ]);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    
    
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder000.setPipeline(render_pipeline002);
    render_bundle_encoder102.setPipeline(render_pipeline102);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const array12 = new Float32Array([0.25, -0.75, -0.5, 1.0, 1.0, 0.25, 0.75, -1.0, 0.25, 0.75, 0.25, 0.25, 0.0, -0.25, 0.0, -0.75, -0.25, 0.5, 0.5, 0.75, 0.25, 0.25, -0.5, 0.0, -1.0, 1.0, 0.0, 0.5, -0.5, -0.25, -0.5, 0.5, 0.0, 0.5, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -0.5, -0.5, 0.25, -0.25, 0.5, 0.25, 0.5, -0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.0, -1.0, 0.75, -1.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.75, -0.5, -0.5, 0.5, -0.5, -0.5, -0.5, -1.0, 0.25, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, -0.25, 1.0, 1.0, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, ]);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder202.setPipeline(render_pipeline201);
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile(__dirname + '/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile(__dirname + '/shader_module1015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const array13 = new Float32Array([0.0, -0.75, 0.75, 0.0, -1.0, 0.5, 1.0, -0.75, 0.5, 1.0, -0.5, -0.25, 0.5, 1.0, 0.0, -0.25, -0.25, -0.5, 0.5, -0.5, -0.25, 0.75, -1.0, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, 0.75, 0.5, 1.0, 0.0, 0.0, 0.0, 0.25, 0.25, 0.0, -0.25, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.0, 0.25, -0.75, 1.0, -0.25, -0.5, -1.0, 0.75, -0.25, 1.0, -0.75, -0.75, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, 0.0, -0.25, -0.25, 0.25, 0.25, 0.0, -1.0, -0.25, -0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 0.0, 0.5, 0.0, 0.0, 0.25, 1.0, -0.75, -0.75, 0.0, -1.0, -0.5, 0.25, 0.25, -1.0, -0.75, 0.75, 0.0, 1.0, ]);
    
    device10.queue.submit([command_buffer100, ]);
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
    buffer107.destroy()
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer301.destroy()
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    
    
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder001.setVertexBuffer(0, buffer001);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer200.destroy()
    
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    
    buffer002.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
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
    buffer201.destroy()
    buffer202.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder002.setPipeline(render_pipeline004);
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group001);
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device50.pushErrorScope("validation");
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array14 = new Float32Array([0.75, 0.25, -0.75, 0.25, -0.75, 0.75, 0.25, -0.25, -0.5, 0.25, 0.0, 1.0, 0.75, 0.5, -0.75, -1.0, 1.0, -0.75, 1.0, 0.0, -0.25, 1.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.25, 0.0, 0.25, 1.0, -0.5, -0.5, 0.75, -0.75, 0.25, -0.25, 0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 0.25, -1.0, 0.0, 0.0, -1.0, -0.5, 0.75, -0.75, -0.5, 0.0, 0.75, 0.0, 1.0, 1.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.75, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 0.5, -0.75, -0.25, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, -0.75, -1.0, 0.5, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    buffer004.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const array15 = new Float32Array([-0.5, -1.0, 0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.75, -1.0, -1.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 0.75, 1.0, -0.5, -0.5, 0.75, 0.75, 0.75, 0.75, 0.75, 0.5, 0.0, -0.25, 0.75, 0.25, 0.25, -0.25, -0.25, 0.5, 0.0, 0.25, 0.5, 0.25, -0.5, 0.0, -1.0, -1.0, -0.5, 0.25, 0.75, 0.0, 0.0, 0.5, -0.5, -0.75, -0.75, -0.75, 0.25, -1.0, 0.25, 0.25, 1.0, 1.0, -1.0, 1.0, 0.75, 0.5, -1.0, -0.5, -0.75, 0.25, -0.75, 0.75, 0.25, -0.5, 1.0, 0.75, -0.5, 0.25, -0.75, 1.0, 0.0, 0.75, -0.5, 0.0, 0.75, 1.0, -0.75, 0.0, -0.5, 1.0, 1.0, ]);
    
    
    buffer203.destroy()
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
        vertex: {
            module: shader_module1016,
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
            module: shader_module1016,
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
    render_bundle_encoder201.insertDebugMarker("marker");
    buffer106.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
        layout: render_pipeline004.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    command_encoder501.pushDebugGroup("mygroupmarker")
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    buffer006.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    buffer205.destroy()
    buffer007.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_bundle_encoder002.setVertexBuffer(0, buffer001);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    buffer500.destroy()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder500.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder0010.popDebugGroup()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer000, ]);
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const command_buffer402 = command_encoder402.finish();
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    device10.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    render_bundle_encoder402.setPipeline(render_pipeline401);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    buffer108.destroy()
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    buffer109.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    buffer401.destroy()
    command_encoder403.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    buffer003.destroy()
    
    
    render_bundle_encoder000.setVertexBuffer(0, buffer001);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer207.destroy()
    
    
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder302.setPipeline(render_pipeline300);
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device00.queue.submit([command_buffer004, ]);
    
    
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    const command_buffer300 = command_encoder300.finish();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    compute_pass_encoder1010.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.popDebugGroup()
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
}