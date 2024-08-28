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
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, -0.5, -1.0, 0.25, -0.25, 1.0, 0.0, -0.5, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, 0.75, -1.0, -0.75, 1.0, -0.5, -0.25, -0.5, -1.0, 0.0, -0.75, 0.5, -0.75, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, 0.75, 0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -0.75, 0.5, 0.5, 0.75, 0.5, 0.25, -0.75, 0.0, 0.5, -1.0, 0.0, 0.25, -0.25, -0.5, 0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.25, -0.75, 0.0, 0.0, 0.75, -0.75, 0.5, 1.0, 0.75, -0.25, -1.0, -0.5, -0.25, 0.25, 0.25, 0.75, 0.0, -1.0, -0.75, 1.0, 0.5, -1.0, 0.0, 0.5, -0.75, 1.0, -0.5, -0.75, -0.75, 0.75, 0.25, 0.25, 0.25, -1.0, ]);
    
    const array1 = new Float32Array([0.0, -1.0, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.0, -0.5, 0.25, -1.0, 1.0, -1.0, 0.75, -0.5, -0.25, 0.25, -0.5, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.75, -1.0, 0.5, 0.0, 0.75, -1.0, 0.75, 0.0, -0.75, -1.0, -0.75, 0.25, -0.25, -0.5, -0.75, 0.25, -0.25, -0.75, 0.5, 0.5, 0.0, 0.0, 0.5, 0.25, 1.0, -1.0, -0.75, -1.0, 1.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, -0.25, 0.25, -0.75, 0.25, 0.75, 0.75, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, 0.25, -0.25, 0.25, 1.0, -0.5, 1.0, 0.25, 0.25, 0.0, 0.75, 0.75, 0.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.5, -0.25, 1.0, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const array2 = new Float32Array([0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.25, 0.0, 1.0, 0.75, -0.75, -0.25, -0.75, 0.75, -1.0, -1.0, 0.75, 0.75, 0.5, -0.5, 0.0, 0.5, 1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.25, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, -0.25, 0.75, 0.75, 1.0, -0.25, -0.25, 0.25, -0.25, -0.25, 0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.25, 0.25, -0.75, -0.5, 0.75, -0.75, 0.0, 0.5, 1.0, -0.5, -1.0, 1.0, -0.5, -0.5, -0.5, 0.0, -1.0, 0.0, -0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 1.0, 0.25, 0.75, 0.0, 0.5, -1.0, 0.25, 0.75, -0.5, -0.75, 1.0, -0.5, -0.5, -1.0, -0.5, -1.0, 0.0, 0.0, -0.5, -0.25, -1.0, -0.75, -0.75, 0.5, 0.75, ]);
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    
    
    const array3 = new Float32Array([-0.5, -0.5, 0.75, -1.0, 0.0, 0.75, 0.5, 0.75, -0.25, -0.75, -0.25, -0.25, 0.75, 0.75, 0.75, -0.25, 0.0, -1.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.75, -0.25, -0.75, 0.75, -0.75, 0.5, -1.0, 0.75, 0.5, -0.75, -1.0, 0.0, -0.25, 1.0, 0.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.5, -0.25, 0.5, -0.75, -0.25, 0.25, -1.0, 0.75, -0.75, -1.0, 0.25, 0.0, 0.5, 1.0, -0.5, -0.75, 0.25, 0.75, -0.25, 1.0, 0.25, -0.75, -0.25, -0.5, -0.75, 1.0, 0.25, -0.25, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.75, -0.75, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 0.25, -1.0, 0.25, 1.0, -1.0, ]);
    const array4 = new Float32Array([-0.75, -0.5, 0.0, 0.75, -1.0, -0.25, -0.5, 0.5, -0.25, -0.25, -1.0, 0.0, -0.25, -0.5, 0.75, -1.0, -0.5, -0.75, -0.25, -1.0, 0.25, -0.75, 1.0, -1.0, -0.75, 0.25, -0.75, 1.0, 1.0, -0.25, -0.5, 0.25, -0.25, 1.0, 0.25, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, 1.0, 0.75, 0.25, -0.75, -0.25, 0.0, -1.0, 0.5, 0.5, 0.75, -0.5, -1.0, -1.0, 1.0, -0.25, -0.75, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, -0.75, -0.5, 0.5, 0.25, 0.0, 1.0, 1.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -1.0, 0.75, 1.0, 0.5, -0.5, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -0.5, -0.75, 0.0, -0.5, -0.5, -0.5, 0.5, -0.5, 0.0, ]);
    device00.pushErrorScope("internal");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    
    
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    
    
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const array5 = new Float32Array([-0.5, 0.75, 0.5, -0.25, -0.25, 0.75, -0.25, 0.5, 1.0, -0.75, 0.5, 1.0, -0.25, -0.75, -0.75, -1.0, 0.5, -0.25, 0.25, 0.0, -0.75, -0.25, -0.25, -0.75, 0.75, 0.5, -1.0, -1.0, 0.75, 0.25, -0.25, 0.75, -1.0, -0.5, -0.5, -0.75, -1.0, -1.0, 0.75, 0.25, -1.0, 0.0, 0.0, 0.5, 0.75, -0.5, 1.0, -1.0, 0.5, -0.75, -1.0, 0.25, -0.75, -0.5, 0.0, 0.75, 0.5, -0.75, 0.75, 0.5, 0.5, -0.75, -1.0, -0.75, 0.0, 0.0, 0.0, -0.75, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, 0.5, 0.25, -1.0, -0.75, 0.0, 0.0, -1.0, -0.25, -0.5, -0.5, 0.5, -0.25, 0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 1.0, -0.25, 1.0, 0.0, 0.25, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const array6 = new Float32Array([0.25, -0.75, -1.0, 0.25, -0.75, -0.5, 1.0, 0.75, -0.75, -1.0, -0.25, -1.0, 0.5, 0.5, 0.75, -0.5, 1.0, 0.0, 0.0, 0.5, -0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 0.5, -0.25, -0.25, 0.5, 0.25, 1.0, -0.5, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.75, 1.0, 0.5, -0.5, -0.5, 0.25, -0.75, 0.0, 0.75, -0.5, 0.25, -1.0, 0.5, -0.25, 0.0, 0.25, 0.0, 0.5, -0.5, 0.25, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, -1.0, 0.0, 0.75, -0.25, 1.0, 0.5, 0.5, -0.25, -0.5, 0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.25, 0.75, -0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 1.0, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    device10.pushErrorScope("out-of-memory");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    device00.pushErrorScope("validation");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
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
    
    
    const array7 = new Float32Array([1.0, 0.0, -1.0, -0.75, -0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 0.5, -1.0, -0.5, -0.75, -0.75, 0.25, 1.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.75, -0.5, 0.25, 0.25, -0.25, -0.5, 1.0, -0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 0.75, -0.25, -1.0, 0.0, 0.0, 0.75, 0.25, -1.0, -1.0, 0.75, -0.25, -1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -0.5, 1.0, -0.75, 0.5, 0.25, 0.5, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, -0.75, 0.25, 1.0, -0.25, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, 0.75, -0.5, -0.5, -0.75, 0.25, 0.25, 0.25, 0.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.75, 0.25, -0.75, -0.25, -0.25, 0.75, -1.0, -0.5, 0.5, -1.0, -1.0, -1.0, 0.25, ]);
    
    
    device10.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
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
    device00.pushErrorScope("out-of-memory");
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device00.pushErrorScope("out-of-memory");
    
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const array8 = new Float32Array([-0.5, -0.25, 0.0, 0.0, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -1.0, 1.0, 0.5, 0.75, 0.0, -0.5, 0.75, 0.75, 0.75, -0.25, -0.25, 0.25, 0.0, 1.0, 1.0, -0.5, 0.5, 0.5, 0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.25, 0.5, 0.75, 1.0, -0.75, -0.5, 1.0, -0.75, 0.0, -0.75, -0.75, -0.75, -1.0, -1.0, -0.25, 0.0, -1.0, -0.5, 0.25, -0.5, -0.75, 0.0, 0.25, 0.5, 1.0, 0.75, 0.5, -1.0, -0.75, 0.75, 0.0, 0.75, -0.5, -1.0, 0.75, -0.25, -0.75, 0.0, -1.0, 0.75, 0.75, 0.0, 0.5, 0.0, -0.5, 0.5, 0.0, 0.5, 0.25, -0.25, 0.0, -1.0, 1.0, 0.0, 0.25, 0.75, -0.25, 0.5, -0.75, 0.25, -0.5, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("internal");
    
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const array9 = new Float32Array([0.5, -0.25, -0.5, 0.25, -1.0, -1.0, 1.0, -0.75, -0.25, -0.75, 0.0, 0.25, -0.25, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, -0.75, -1.0, 0.0, -0.5, 1.0, 0.5, -1.0, -0.5, -1.0, 1.0, 0.75, 0.5, 0.25, 0.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.25, 0.75, -0.75, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, -1.0, -1.0, 0.75, 0.75, -0.5, 0.0, 1.0, 0.75, -1.0, 1.0, -0.5, -0.25, 0.75, 0.5, 0.0, 1.0, -1.0, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.0, 0.75, 0.5, -0.5, 0.0, -0.75, -1.0, -0.25, -0.5, -1.0, 0.5, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, 0.75, -0.25, 0.25, -0.5, 0.5, -0.25, 0.25, 0.75, -0.25, 0.75, ]);
    
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
    
    
    
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
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
    
    
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const array10 = new Float32Array([0.5, 0.5, 0.5, 1.0, 0.5, 0.75, 0.0, 1.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.25, -0.25, -0.25, -0.75, -0.5, -0.75, 0.5, 1.0, -0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, -0.5, 0.75, 1.0, 0.25, -0.5, -0.5, -0.25, -0.5, 0.5, 0.25, -0.5, -0.5, 0.0, 0.5, -1.0, -0.25, 0.5, -1.0, 0.75, -1.0, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, 1.0, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, -1.0, -0.25, 0.75, 0.25, -0.75, -0.75, -0.5, -0.25, -1.0, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, 1.0, 1.0, -1.0, 0.5, 0.75, 0.5, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, 0.75, 0.5, 0.5, 1.0, 0.75, 0.75, 0.25, -0.5, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    device00.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const bind_group_layout0012 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0012",
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
    
    const array11 = new Float32Array([-0.5, -0.25, -0.25, 0.5, -1.0, -0.5, 0.5, -0.75, 0.5, -0.25, 0.75, 1.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.75, 1.0, 0.75, -0.75, 0.75, 1.0, -0.5, -0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.0, 0.0, 0.5, -0.5, 1.0, -0.25, 0.5, 0.25, -1.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.25, -0.75, -1.0, 0.5, -1.0, 0.25, -1.0, 0.25, -0.75, -0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, 0.75, 1.0, 0.75, 0.25, -0.75, -1.0, -0.5, -0.75, 0.5, 1.0, 0.5, 0.5, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.25, -0.5, 1.0, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -0.75, 0.75, 0.75, -0.75, -0.5, ]);
    
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    
    
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
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const bind_group_layout0013 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0013",
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const array12 = new Float32Array([-1.0, -1.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.75, 1.0, -0.5, 0.75, 1.0, -0.25, -1.0, 0.5, 0.25, -0.75, 0.5, -0.25, 0.5, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, 0.75, 0.25, 0.75, -0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 1.0, -0.5, -0.5, -1.0, 0.0, -0.75, 1.0, -1.0, -0.75, 1.0, 1.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.75, 0.5, 0.0, -0.25, 1.0, 1.0, 1.0, -0.75, 0.0, -0.5, 1.0, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 0.25, 1.0, -0.25, 0.25, -0.25, 0.0, 1.0, 0.0, 0.75, 1.0, 0.0, 0.0, 0.0, 0.5, 0.0, 0.25, 0.0, 1.0, -0.25, 1.0, ]);
    
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout1010 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1010",
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.pushErrorScope("validation");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    
    
    
    
    device30.pushErrorScope("out-of-memory");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const array13 = new Float32Array([1.0, 0.25, -0.25, 0.0, -0.75, -0.25, -0.5, -0.75, 0.75, -1.0, 0.5, 0.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.75, 1.0, 0.75, -0.75, 0.0, 0.75, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 1.0, -0.5, -0.75, 0.75, -0.5, -0.5, -1.0, 0.75, 0.75, 1.0, 0.75, 0.5, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, -0.5, 0.75, -0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 0.25, -0.25, 0.75, 0.5, 0.5, 0.75, -0.25, 0.25, -0.75, 0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 1.0, 0.25, 0.0, -1.0, 0.5, 0.75, -0.5, 0.75, 0.25, 0.75, 0.75, 0.25, 0.5, -0.25, -0.25, 0.75, 0.25, -0.25, 0.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.75, 0.25, ]);
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    const array14 = new Float32Array([-0.75, 0.25, -0.25, -0.5, -1.0, 0.75, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, -0.5, -1.0, 1.0, 0.0, -0.75, 0.5, 0.5, -0.25, -0.25, -0.5, -0.5, 0.75, -0.75, 0.0, -1.0, 0.0, 0.0, -0.25, 0.5, -0.75, 0.5, -0.75, -0.5, 0.75, 0.75, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, -1.0, -0.25, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 1.0, 1.0, 0.75, 0.25, 0.5, 0.25, 0.5, 0.25, -0.75, 1.0, 0.25, 0.25, 0.0, 1.0, -0.75, 1.0, 0.0, -1.0, 0.5, -0.5, 0.5, 0.75, 0.25, -0.5, -0.25, 0.25, -0.5, -0.75, 0.0, 0.5, -0.25, 1.0, 0.75, 0.5, -1.0, -0.5, 0.5, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.75, -1.0, ]);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    const array15 = new Float32Array([-0.25, -1.0, 0.75, 0.75, 0.5, 1.0, -1.0, -1.0, 1.0, -0.25, -1.0, 0.25, 0.5, 0.5, 1.0, -0.5, -0.75, 0.75, 0.25, 0.0, -1.0, 0.25, -0.5, -0.25, 0.25, 0.25, -0.25, 0.0, 1.0, 1.0, 0.75, -0.75, 0.0, 0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 1.0, -0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, 0.5, 0.5, 1.0, 0.5, 0.5, 0.75, 1.0, 0.75, 0.5, 0.25, 0.25, -0.5, 0.75, 1.0, 1.0, 0.0, -0.25, 0.5, 0.5, 0.25, 1.0, -0.5, 0.0, 1.0, -0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -0.25, -0.75, -0.5, -0.75, -0.5, 0.0, -0.75, 0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 0.25, 0.75, ]);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const bind_group_layout1011 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1011",
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
    
    const query1010 = device10.createQuerySet({
        label: "query1010",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    
    
    
    
    const query1011 = device10.createQuerySet({
        label: "query1011",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const bind_group_layout0014 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0014",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const bind_group_layout1012 = device10.createBindGroupLayout({ 
        label: "bind_group_layout1012",
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const array16 = new Float32Array([-0.25, 0.75, 1.0, -0.25, -0.5, -1.0, -0.5, 0.0, 0.75, 0.5, -0.25, 1.0, 0.25, -0.25, -1.0, 0.25, 0.75, 0.75, -0.75, -1.0, -0.25, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 0.75, -0.75, 0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.0, -0.25, 0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.25, -1.0, 1.0, 0.75, -0.25, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, 0.0, -0.75, 1.0, -1.0, 0.5, 1.0, -0.5, 0.0, -0.25, -1.0, 0.75, -0.25, -0.5, -0.25, 1.0, 0.0, 0.25, -1.0, -0.75, -1.0, 0.0, ]);
    
    device00.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    
    
    
    
    
    
    
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    const query1012 = device10.createQuerySet({
        label: "query1012",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}