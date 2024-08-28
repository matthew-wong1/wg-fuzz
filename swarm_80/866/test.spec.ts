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
    
    const array0 = new Float32Array([0.25, -0.75, 0.5, -1.0, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, 0.75, -1.0, -0.75, 0.75, -0.75, 1.0, 1.0, 0.25, 0.0, 0.5, -0.25, 1.0, 0.0, -0.5, 0.5, 0.5, -0.5, 0.5, -0.25, -0.25, -0.5, 0.25, -0.5, 0.5, -0.25, -0.75, -1.0, -0.25, -0.25, 0.0, 0.5, -0.75, -0.5, 0.25, -0.25, 1.0, -0.75, -1.0, 0.0, -0.75, 0.5, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, 1.0, -0.75, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, -1.0, -1.0, 1.0, 0.0, -0.25, -1.0, 0.5, 0.75, -0.25, -0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 1.0, -0.5, -1.0, ]);
    
    const array1 = new Float32Array([0.25, 0.5, -1.0, 0.75, -0.25, -0.75, 0.25, -0.5, 0.25, 0.0, 0.25, -0.75, -1.0, -0.25, 0.5, 1.0, 0.25, -0.25, 0.25, 1.0, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 0.75, -1.0, 0.5, -1.0, 0.5, -0.5, -0.25, 0.5, 0.5, -0.75, 1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, -0.75, -0.75, 0.75, -1.0, -0.25, -0.5, 0.5, -0.75, -0.75, 0.25, 0.0, 1.0, -0.5, -1.0, -0.75, -0.25, 0.75, -1.0, -1.0, -1.0, 0.25, -1.0, -1.0, 0.75, -0.5, -0.5, 0.0, -0.5, -1.0, -0.5, -0.25, -1.0, 0.0, -1.0, -0.75, 0.0, 0.0, 0.75, 0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.5, 0.0, 0.0, -0.25, -0.5, -1.0, 0.25, 0.0, -1.0, 0.75, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-1.0, 0.75, -0.25, 0.75, 1.0, 0.0, -0.5, 0.75, 0.75, 1.0, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, -0.75, -1.0, -0.5, -1.0, 0.0, -0.5, -0.5, 0.25, -0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 0.0, -0.5, -0.25, -0.75, 0.0, 0.0, 0.0, 0.5, 1.0, 1.0, -0.75, -0.75, 0.0, 0.75, -0.75, 0.25, 0.0, 1.0, -0.25, 0.75, -0.25, -0.5, 0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -0.75, 0.0, -1.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -0.5, -0.5, -0.25, -0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, -0.5, -1.0, 0.25, 0.5, 0.5, 1.0, 0.25, 0.5, -1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array3 = new Float32Array([-1.0, -0.5, -1.0, -0.5, 0.5, 1.0, 0.0, -0.75, -1.0, 0.75, -0.25, -0.25, -0.75, 0.5, 0.5, -0.25, -1.0, -0.75, -1.0, -0.75, 0.75, 0.25, 0.0, -0.75, 1.0, -0.75, 0.25, -0.75, -0.75, -0.25, 0.5, 0.75, -0.25, 0.0, -0.75, -0.25, 0.0, 0.25, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, 1.0, -0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, -0.75, 1.0, -0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -0.5, -0.25, 0.25, 0.5, -0.75, 0.5, 0.25, -0.25, -0.5, -1.0, -0.5, -0.25, -0.75, 1.0, 0.5, -0.5, 1.0, -0.5, -0.5, -0.75, 0.25, -0.25, -1.0, -1.0, -0.5, 0.25, 0.5, 0.0, -0.75, 0.0, 0.5, 0.25, 0.75, 0.5, 0.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.75, 0.25, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, 0.25, 1.0, 0.0, -0.75, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, 0.0, 1.0, 0.5, 0.25, -0.75, 0.75, -0.5, -1.0, -0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -0.75, -0.25, 0.0, 0.75, -1.0, -0.5, 0.5, -0.25, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, -1.0, -0.5, 0.75, 1.0, 0.5, -0.25, 0.25, 0.5, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 0.5, -0.25, -1.0, -0.75, 1.0, -0.5, 0.75, -0.75, 0.5, -1.0, -1.0, -0.75, 0.25, -0.5, 0.5, -1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, 0.0, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    
    
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
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
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
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device20.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.destroy();
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array5 = new Float32Array([0.5, 0.0, -0.25, 0.75, -0.75, -0.25, 1.0, 0.5, 0.0, 0.0, -0.5, 0.0, -0.5, -0.25, -1.0, 0.5, -0.5, 1.0, 0.25, -0.5, -0.75, -0.25, -0.5, -0.5, 1.0, -0.75, 0.0, 0.0, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, -0.75, 1.0, 0.25, -0.25, -0.25, 1.0, 0.5, -1.0, -1.0, -0.25, 1.0, 0.25, 0.75, -0.5, 0.5, -0.75, -1.0, 1.0, -0.75, 0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 0.75, 0.5, 1.0, -0.25, 0.75, 0.0, 0.75, 0.5, -0.25, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -0.5, 0.75, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.0, 0.5, 0.25, -1.0, -0.5, 0.75, ]);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device10.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([-1.0, 0.5, -1.0, 0.25, -0.5, -0.75, -1.0, -0.75, 0.5, 0.75, 1.0, 0.75, -1.0, -1.0, 0.5, -0.75, -1.0, -0.5, 0.5, -0.25, -0.75, 0.75, -0.75, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.0, -1.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, -0.5, -0.25, -1.0, -1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, -0.5, 1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, -0.75, -0.25, 0.75, -0.5, 0.25, 1.0, -0.25, 1.0, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, 1.0, -0.5, -1.0, 0.0, -0.25, -0.5, 0.5, 0.5, 0.0, 0.75, 1.0, 0.25, 1.0, 0.0, 0.75, -1.0, -0.75, 0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 1.0, ]);
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
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device30.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const array7 = new Float32Array([-0.5, 0.25, 1.0, 0.5, -1.0, 0.75, -0.25, 0.75, -0.25, 1.0, -0.75, 0.75, -1.0, -0.25, 0.0, -0.5, 0.5, -0.25, 1.0, -0.75, 0.75, 0.75, -1.0, 0.5, -0.5, -1.0, -0.25, -0.25, 0.75, -0.5, 0.75, 1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -1.0, -1.0, -0.75, -1.0, -0.75, 0.75, 1.0, 0.25, -1.0, -1.0, -1.0, 0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 0.0, -0.5, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 0.25, 0.0, 0.75, -0.25, 0.5, -0.5, -0.25, -0.75, 1.0, 0.75, 0.0, 0.5, -0.25, 0.25, 1.0, -0.5, -0.5, 1.0, 0.5, -0.5, 0.75, -0.25, 1.0, -0.5, 0.75, 0.0, 1.0, 1.0, -0.25, ]);
    
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    query400.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([0.75, -0.75, -1.0, -1.0, 0.0, -0.75, 0.5, -0.25, -0.25, -0.75, -0.75, -1.0, 0.5, 0.25, 1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -0.75, -1.0, 0.5, 0.75, -0.75, -0.5, 0.5, 1.0, 0.75, 0.25, -0.25, 0.25, -0.25, 0.25, -0.5, 0.25, 0.5, -0.75, 0.75, 0.5, 0.0, -0.75, -0.5, -0.5, 1.0, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, 0.25, -0.25, 0.0, 0.75, -0.25, -1.0, -0.5, -0.5, -0.25, 0.25, -1.0, 0.5, -0.5, 0.75, -0.75, 0.0, -1.0, -0.75, -0.75, 1.0, 0.0, 0.5, 1.0, 1.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.5, 0.0, 0.5, 1.0, -0.25, -0.25, 0.0, 0.5, -0.25, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, -0.25, 0.0, -0.25, 0.0, -1.0, ]);
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    device40.destroy();
    
    const array9 = new Float32Array([0.5, -0.75, -0.5, 0.75, 0.0, -0.5, -0.25, -0.25, 0.75, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 0.75, -1.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.0, 0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.5, -0.5, 0.5, 0.75, -1.0, 0.0, 0.5, 0.0, 0.5, -1.0, 1.0, -0.25, 0.5, -0.5, -1.0, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, 0.0, -0.25, -1.0, -0.75, 1.0, -0.75, -0.75, 0.25, -0.25, 0.5, 0.25, -0.75, -0.5, -0.5, 0.0, 0.25, -0.5, 0.0, 0.25, 0.25, -0.75, 1.0, 0.25, -0.25, 0.75, -0.25, -0.25, -1.0, 0.75, 0.5, 0.25, 1.0, ]);
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device50.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    query601.destroy()
    
    
    
    
    
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    query600.destroy()
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    
    
    query600.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    query601.destroy()
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device60.destroy();
    
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
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
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    
    
    
    query700.destroy()
    
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const array10 = new Float32Array([0.5, 0.5, 0.5, -0.25, -1.0, 1.0, -0.75, 0.75, -0.5, -0.25, -1.0, 0.5, -0.5, 0.25, 0.25, 0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 0.25, 0.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.75, 0.25, -0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.25, -1.0, 0.0, 0.25, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 1.0, 0.25, -0.5, -1.0, 0.25, -0.5, 0.5, 0.75, 0.0, 0.5, -0.75, 0.5, 0.75, 0.5, 1.0, 1.0, -0.5, 0.0, 0.75, 1.0, 0.0, -0.25, 0.0, 0.5, -1.0, -1.0, 0.5, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -0.5, 0.0, 0.0, -1.0, -0.75, 0.0, -0.25, 0.5, ]);
    
    query700.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
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
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    
    texture700.destroy();
    
    const array11 = new Float32Array([0.5, -0.75, 0.5, -1.0, -0.75, 0.0, -0.5, 0.5, -0.75, -0.5, 0.0, 0.5, -1.0, -0.25, 0.75, 0.5, -1.0, -0.25, 0.75, -0.25, -1.0, 0.0, -0.25, -0.25, -0.75, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 1.0, 0.75, -0.75, -1.0, 0.75, 0.5, 0.0, 0.75, -0.5, 0.75, -0.5, -0.5, -0.5, 0.25, 0.75, 0.75, -0.5, 0.5, 0.25, 0.0, 0.75, 0.5, -1.0, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, 0.5, -0.5, 1.0, -1.0, -0.5, 0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 0.25, -1.0, 1.0, 0.5, -0.5, -0.5, 0.25, ]);
    render_bundle_encoder800.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query700.destroy()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    
    
    
    
    texture800.destroy();
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    render_bundle_encoder702.insertDebugMarker("marker");
    query701.destroy()
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    
    
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    
    
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
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout704]
    });
    
    device70.destroy();
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    
    
    
    
    
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.destroy();
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    
    
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array12 = new Float32Array([0.5, 0.5, -0.75, 1.0, 0.75, -1.0, 0.0, 0.75, 0.5, -0.5, 0.0, -1.0, 0.0, 0.0, -1.0, 0.25, -1.0, 0.5, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -1.0, -1.0, -1.0, 0.75, -0.25, -0.25, 0.0, -0.75, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 0.5, 0.25, -1.0, -1.0, -0.5, -0.75, -0.5, 0.0, 1.0, -0.5, 0.25, 0.5, 0.75, 0.5, 0.25, -0.5, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, 0.25, 0.25, -0.5, -0.5, -0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -0.5, -1.0, 0.0, -1.0, -0.5, 0.5, -0.5, -0.75, -0.75, 1.0, 0.25, 0.5, 1.0, 0.0, -0.25, -0.75, 0.75, 1.0, -0.5, 0.75, ]);
    
    
    texture1100.destroy();
    device100.destroy();
    
    
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    
    
    
    
    
    
    
    
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const texture_view11011 = texture1101.createView({ label: "texture_view11011" });
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    
    
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const array13 = new Float32Array([1.0, -1.0, 0.0, 0.5, 0.0, -0.75, -0.5, 0.0, 0.25, 1.0, 0.5, -0.5, 0.25, 1.0, 0.25, 0.5, 0.5, -0.25, 0.0, 0.5, -1.0, -0.25, -0.5, 1.0, -0.75, 0.25, -1.0, -0.5, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, -1.0, 0.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.25, -0.5, -0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, -1.0, -0.25, -0.75, 0.5, -0.75, 0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.75, 0.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.0, -0.75, 0.0, -0.5, 1.0, -1.0, 0.5, 0.25, -0.75, -0.75, -1.0, 0.0, -0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, -0.75, 0.5, 1.0, -0.5, 0.5, -0.25, ]);
    render_bundle_encoder1100.insertDebugMarker("marker");
    
    
    
    const texture_view11012 = texture1101.createView({ label: "texture_view11012" });
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
    const render_bundle_encoder1101 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1101",
        colorFormats: ["bgra8unorm"]
    });
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/shader_module1102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    query1101.destroy()
    texture1101.destroy();
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/shader_module1103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    const sampler900 = device90.createSampler( { label: "sampler900" } );
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
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    query1100.destroy()
    const query1104 = device110.createQuerySet({
        label: "query1104",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    query1101.destroy()
    const texture1103 = device110.createTexture({
        label: "texture1103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query1103.destroy()
    const render_bundle_encoder1102 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query1102.destroy()
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture1103.destroy();
    query900.destroy()
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1104 = device110.createTexture({
        label: "texture1104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/shader_module1200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    
    
    query1102.destroy()
}