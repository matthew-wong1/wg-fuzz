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
    
    
    const array0 = new Float32Array([1.0, -1.0, 0.0, 0.25, -0.25, 1.0, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, -0.25, -0.75, -0.25, 0.75, 0.5, -0.75, 1.0, 1.0, -0.5, -0.5, -1.0, 0.0, 1.0, 0.25, -0.5, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.25, -1.0, 0.75, 0.75, -0.75, 0.75, 0.75, 0.0, 0.25, -0.25, -1.0, -0.75, 0.5, 0.25, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -0.5, 0.5, -1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.0, -0.5, -0.75, -1.0, 0.75, 0.5, -0.25, -0.75, 0.5, -0.25, -0.25, -0.75, -0.25, 0.0, 1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array1 = new Float32Array([0.0, 0.5, -0.5, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, 0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 1.0, -0.75, 0.0, 1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 0.25, 1.0, 0.0, -0.25, -0.25, -1.0, 0.25, 0.75, 0.25, -1.0, 1.0, 0.25, -0.25, 0.0, 0.25, -0.25, 0.25, 0.5, -0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.0, 0.25, -0.75, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -0.25, -0.5, -0.75, -0.5, -0.5, 0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.75, 0.5, -0.5, 0.0, 0.5, -0.25, -0.5, 1.0, 0.75, -0.5, -0.5, -1.0, 0.0, -0.75, 0.75, -0.5, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -1.0, -0.75, 0.25, 0.0, -0.25, 0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture000.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.destroy();
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.destroy();
    
    device20.pushErrorScope("validation");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture200.destroy();
    
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array2 = new Float32Array([0.5, 0.0, -0.75, 0.0, 0.75, -0.75, -0.5, 1.0, 0.0, 0.75, 1.0, 0.25, 0.5, 1.0, 0.0, 1.0, 1.0, 0.0, 1.0, -0.75, -0.5, 0.0, 0.25, 0.0, 0.75, -0.5, 0.0, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 0.0, 0.25, -0.5, -0.5, -0.75, 1.0, -1.0, 1.0, 0.25, 0.75, 1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.0, -1.0, -1.0, 0.75, 0.25, 0.25, -0.5, -0.25, -0.25, 0.25, 1.0, 0.25, -0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 0.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.75, 0.75, -0.25, -0.25, -0.25, 0.25, 0.25, -0.5, 0.0, 0.75, -0.25, 0.75, -0.5, 0.75, -0.25, 0.25, 0.5, 1.0, -0.5, -1.0, -0.75, 0.25, 0.5, 0.75, 0.5, 0.25, 0.0, ]);
    texture201.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
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
    
    const array3 = new Float32Array([-1.0, 1.0, -0.5, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, -0.5, -0.25, 1.0, 0.75, 0.25, -1.0, 1.0, -0.5, -1.0, -0.75, 0.0, -0.75, 0.75, 0.25, 0.5, -0.25, -0.5, 1.0, 0.75, 0.75, -0.25, 0.75, 1.0, -0.5, 0.75, -1.0, -0.5, 0.0, 0.0, 1.0, -0.5, 1.0, 0.25, 1.0, 0.25, -0.5, -0.5, -1.0, -0.5, -0.5, 0.0, -0.5, 1.0, 0.0, 1.0, 0.5, -1.0, -0.5, 0.25, -1.0, -0.5, -0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 0.5, -0.25, 0.25, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -1.0, -1.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -0.25, 0.0, -1.0, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device20.pushErrorScope("internal");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device30.pushErrorScope("internal");
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    const array4 = new Float32Array([-0.75, -1.0, -1.0, -1.0, 0.25, -0.25, 0.25, -1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 0.5, 1.0, 1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.5, 0.0, -0.5, 0.0, -0.75, 0.5, -0.5, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 1.0, -0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 1.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, -0.5, 1.0, -0.5, 0.5, 0.0, -0.25, 0.0, 1.0, 0.25, -1.0, -0.25, 0.75, -1.0, -0.5, -0.75, 1.0, -0.5, 1.0, 1.0, 0.5, -0.75, 1.0, -0.25, -0.5, -0.25, 0.0, -0.5, -0.75, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, ]);
    
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    texture300.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array5 = new Float32Array([0.5, -0.5, 0.75, 0.25, -0.5, -1.0, 0.0, 0.25, 0.5, -0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 0.5, 1.0, -0.75, 0.25, -0.5, 0.5, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, -0.5, -0.25, 0.5, -0.25, 0.5, 0.75, 0.0, 1.0, -1.0, -1.0, 0.0, -0.75, 0.5, -0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, 1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, 1.0, 0.0, 1.0, 1.0, -0.75, -0.75, 1.0, 0.5, -0.75, 0.0, 0.0, 0.0, 0.5, 1.0, 1.0, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.25, 0.75, -1.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -1.0, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.pushErrorScope("validation");
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    render_pass_encoder2010.setStencilReference(1);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array6 = new Float32Array([0.5, 1.0, 0.75, 0.0, 0.75, -0.5, 0.5, 0.75, -1.0, -0.75, 0.25, 0.25, 1.0, -0.5, 0.5, 0.75, 0.75, -0.25, 0.75, 0.75, 0.25, 0.0, -0.5, -1.0, 1.0, 1.0, -0.75, 0.25, -0.25, -0.75, 0.5, 0.5, 0.5, -0.75, 0.5, -1.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.0, -0.5, -0.5, -0.25, 0.0, 0.25, -0.25, 1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.5, 1.0, -1.0, 0.25, 0.5, 0.0, -1.0, 0.5, 1.0, 0.0, 0.5, -0.5, -0.75, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, 0.5, 0.25, 0.5, -0.25, 1.0, 1.0, -0.75, -0.5, -0.5, -0.5, 0.75, 1.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.0, 0.25, 0.5, 0.5, -0.75, 0.5, ]);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    
    texture203.destroy();
    
    render_pass_encoder2010.setStencilReference(1);
    const array7 = new Float32Array([0.75, 0.25, 1.0, 1.0, 0.0, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, 0.5, 0.5, -0.75, -0.5, -0.25, -0.5, -0.75, -0.75, 0.0, -1.0, -0.5, 0.25, 0.5, -1.0, 1.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.5, 1.0, -0.75, 0.75, 0.0, 1.0, 0.0, 1.0, 0.0, 0.25, 0.75, 0.25, -0.75, 0.25, -0.5, 0.5, 0.0, -0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 0.5, 0.5, -0.25, 0.75, 0.25, 0.5, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 0.0, -0.25, 0.75, 0.0, 0.5, 1.0, -0.25, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, -0.25, -1.0, -0.75, -1.0, 0.0, -0.5, -0.25, -1.0, 1.0, -1.0, 1.0, 1.0, 0.5, -1.0, 0.25, 0.0, -0.25, ]);
    
    render_pass_encoder2010.setStencilReference(1);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder2010.setStencilReference(1);
    
    
    const array8 = new Float32Array([0.75, 0.5, -0.25, 0.75, -1.0, -1.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.25, -0.5, -1.0, 0.0, 0.0, 0.75, -0.5, 0.25, -0.5, 0.75, 0.5, 1.0, 0.25, 0.5, 1.0, -0.5, 1.0, -0.5, -0.5, 0.25, 0.25, -0.25, 0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, -1.0, 0.0, 0.75, 0.0, -1.0, 0.25, 0.5, -0.5, 0.25, -0.75, -0.25, -0.75, -0.5, 0.5, 0.25, 0.75, -0.5, 0.0, 1.0, 0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 0.75, 0.0, -0.25, -0.25, 0.25, -0.5, 0.25, 0.75, 1.0, 0.0, 0.25, -1.0, -0.75, -1.0, -1.0, -0.25, 0.5, 1.0, -0.25, 0.75, 1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 0.25, 0.75, -0.25, -0.75, ]);
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    texture204.destroy();
    
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2010.popDebugGroup();
    const command_buffer600 = command_encoder600.finish();
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.destroy();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.pushErrorScope("out-of-memory");
    
    
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    
    
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
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture600.destroy();
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2030.executeBundles([])
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder2010.insertDebugMarker("marker");
    const array9 = new Float32Array([0.0, -1.0, -1.0, 0.25, 0.75, 0.5, -0.75, -0.25, 1.0, 0.5, 1.0, -0.5, -1.0, -0.5, 0.5, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 0.75, 0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 0.75, 0.25, 0.25, -1.0, 0.0, -0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.5, -1.0, -1.0, -0.75, 0.25, 0.5, 0.75, 0.25, 0.5, -1.0, 0.75, 0.5, -0.5, 0.75, 0.75, -0.75, -0.5, 1.0, -0.5, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, 1.0, 0.0, 1.0, -1.0, 0.0, -0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 0.0, 0.25, 0.0, -1.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, -0.75, -0.5, -1.0, -0.25, 0.5, -1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.75, 0.5, 0.0, 0.25, ]);
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    texture205.destroy();
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    command_encoder700.insertDebugMarker("mymarker");
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
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    render_pass_encoder2010.executeBundles([])
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array10 = new Float32Array([-0.75, 0.25, -0.5, 1.0, 0.25, -1.0, 0.5, -0.25, -1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 0.75, 0.75, -0.5, 0.0, 0.25, 0.25, -0.25, 0.5, 1.0, -0.5, 0.0, 0.75, -0.5, -0.75, -1.0, 0.0, -0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, 0.75, -0.25, -1.0, 0.5, 0.0, -0.75, -0.25, 1.0, 0.25, 0.5, 0.0, 0.25, 1.0, 0.75, 0.5, 0.75, -0.25, -0.75, 0.25, 0.5, 1.0, -1.0, -0.5, -0.5, -0.75, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, -0.75, 0.25, 0.25, -1.0, 1.0, -1.0, -0.5, 0.25, -0.25, 0.75, -0.5, 1.0, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, -0.75, -0.5, 1.0, -1.0, -1.0, -0.75, 0.75, -0.25, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, ]);
    const array11 = new Float32Array([0.75, 0.75, -1.0, -1.0, 0.25, 1.0, -0.25, 0.75, 0.25, 0.5, -1.0, -0.5, -0.5, -0.5, -0.5, 0.0, 0.5, -0.25, -0.5, -0.5, 0.5, -0.25, 0.75, 0.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.75, -1.0, 1.0, 0.0, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, 0.5, -0.5, -0.25, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, -0.25, -0.75, 0.5, -0.5, -0.5, -0.5, -0.75, 0.0, 0.0, -0.75, -0.25, -0.75, 0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.75, -1.0, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, -0.75, 1.0, -0.25, -1.0, 1.0, 0.5, 0.5, -0.75, 0.75, -0.75, 1.0, -0.25, -1.0, 1.0, 0.0, 0.75, 0.0, -0.25, -0.75, 0.5, 0.25, -0.75, 1.0, 0.25, ]);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder2040.setStencilReference(1);
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    
    texture601.destroy();
    render_pass_encoder2030.executeBundles([])
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    render_pass_encoder2030.executeBundles([])
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2040.setStencilReference(1);
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    render_pass_encoder2010.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder2040.setStencilReference(1);
    
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder2040.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder2050.executeBundles([])
    
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    render_pass_encoder2060.executeBundles([])
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder2050.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    render_pass_encoder2050.insertDebugMarker("marker");
    
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture206.destroy();
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2060,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2050.setStencilReference(1);
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2040.insertDebugMarker("marker");
    
    render_pass_encoder2070.setScissorRect(0, 0, texture206.width / 2, texture206.height / 2);
    const command_encoder209 = device20.createCommandEncoder({ label: "command_encoder209" });
    render_pass_encoder2050.insertDebugMarker("marker");
    const render_pass_encoder2080 = command_encoder208.beginRenderPass({
        label: "render_pass_encoder2080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2070.executeBundles([])
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const compute_pass_encoder2090 = command_encoder209.beginComputePass({ label: "compute_pass_encoder2090" });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder2070.insertDebugMarker("marker");
    texture602.destroy();
    
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2040.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
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
    render_pass_encoder2050.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    render_pass_encoder2080.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2070.executeBundles([])
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    render_pass_encoder2080.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2080.setStencilReference(1);
    render_pass_encoder2070.setStencilReference(1);
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
    
    render_pass_encoder2080.setStencilReference(1);
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    render_pass_encoder2080.insertDebugMarker("marker");
    render_pass_encoder2030.executeBundles([])
    
    render_pass_encoder2030.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    render_pass_encoder2070.setScissorRect(0, 0, texture206.width / 2, texture206.height / 2);
    
    render_pass_encoder2070.setStencilReference(1);
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_pass_encoder2060.setStencilReference(1);
    
    
    render_pass_encoder2060.executeBundles([])
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture203.width / 2, texture203.height / 2);
    
    
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2070.setStencilReference(1);
    render_pass_encoder2050.executeBundles([])
    
    render_pass_encoder2040.setStencilReference(1);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device20.pushErrorScope("out-of-memory");
    
    
    
    
    command_encoder400.popDebugGroup()
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2070.pushDebugGroup("group_marker");
    
    const command_encoder2010 = device20.createCommandEncoder({ label: "command_encoder2010" });
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
    render_pass_encoder2030.setStencilReference(1);
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2070.executeBundles([])
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device60.pushErrorScope("internal");
    render_pass_encoder2070.setViewport(0, 0, texture206.width / 2, texture206.height / 2, 0, 1);
    const command_buffer400 = command_encoder400.finish();
    const texture208 = device20.createTexture({
        label: "texture208",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    render_pass_encoder2070.executeBundles([])
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder2060.insertDebugMarker("marker");
    const compute_pass_encoder20100 = command_encoder2010.beginComputePass({ label: "compute_pass_encoder20100" });
    render_pass_encoder2070.setStencilReference(1);
    render_pass_encoder2030.popDebugGroup();
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    render_pass_encoder2050.setStencilReference(1);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder2080.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    render_pass_encoder2010.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
}