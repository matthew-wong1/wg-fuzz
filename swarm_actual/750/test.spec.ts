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
    
    
    const array0 = new Float32Array([1.0, 0.25, 0.5, -0.75, 0.5, -1.0, -0.75, -0.25, -0.25, -0.5, 0.0, -0.75, 0.5, 1.0, -0.5, 0.25, 1.0, -0.75, 1.0, 0.0, 0.75, -1.0, 0.0, -0.75, 0.5, -0.75, 1.0, 0.25, 0.25, 0.0, 0.25, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, -1.0, -0.5, 1.0, -0.75, 0.25, -0.25, 0.25, 0.75, -0.75, -0.75, -0.25, 0.25, -0.25, -0.75, -0.5, 1.0, -1.0, 0.5, 0.25, 0.75, 0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 0.5, 0.0, 0.0, 1.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -0.75, -0.5, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 0.5, -0.75, 0.75, 0.25, -1.0, 0.0, 0.0, -0.5, -0.5, 0.0, -0.75, 1.0, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([1.0, 1.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.25, -1.0, 1.0, -0.5, 0.0, -0.75, 0.25, -0.25, 1.0, -0.25, -1.0, 0.25, 0.25, 0.5, -0.5, 0.0, 1.0, -1.0, 0.75, -0.75, 1.0, -1.0, 0.75, -0.25, -0.75, 0.5, -1.0, 1.0, 0.25, 0.5, -0.75, -0.75, -0.25, 1.0, 0.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.75, 0.75, 0.5, 0.25, -1.0, 0.0, 0.5, 0.25, -0.5, -0.5, 0.0, 0.25, 1.0, 0.75, -0.25, -0.75, 1.0, -0.5, 0.5, 0.5, -0.75, -1.0, -0.25, 0.5, 0.75, 1.0, -0.5, -0.75, 0.0, 1.0, -0.5, 0.0, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, -0.75, -0.75, 0.0, -1.0, 0.25, 0.5, -1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.75, 0.75, -0.75, -0.25, -0.5, 1.0, 0.0, 0.75, -0.75, -0.5, 0.0, -0.5, 1.0, -0.5, 0.0, -0.75, 0.5, 0.0, -0.75, 0.0, 0.25, -0.5, -0.5, 0.5, 0.75, -0.75, -0.25, 0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 0.5, -0.5, 0.0, 0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -1.0, -0.5, 0.75, -0.75, 0.75, 0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 0.0, -0.5, 0.75, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, -0.75, 0.25, 0.5, -1.0, 0.0, -0.75, 0.25, 0.5, 0.0, 1.0, -1.0, 1.0, 0.5, -0.5, -0.25, 0.0, -1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.25, -0.25, -1.0, 0.0, 1.0, 0.25, 0.25, 0.5, -0.25, 0.0, 1.0, -0.75, 0.25, -0.75, -0.75, ]);
    
    const array3 = new Float32Array([-0.5, 1.0, 0.25, -0.25, 1.0, -0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -1.0, 1.0, -0.75, 0.75, 0.75, 0.25, -0.5, -1.0, -0.5, 0.0, 0.0, -0.25, -0.25, 0.0, -0.75, -0.25, 1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -1.0, 0.0, -0.25, 0.25, 1.0, -0.75, 0.75, -0.5, 1.0, 0.0, 0.0, 1.0, -1.0, 0.0, -1.0, 0.25, -0.75, 1.0, 0.25, 1.0, 0.0, -1.0, 0.75, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, 0.25, 1.0, -0.25, 1.0, 0.75, 0.0, -0.75, 0.0, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, -0.25, -0.5, 0.0, -0.25, 0.5, -0.75, 1.0, -1.0, -1.0, 0.75, -0.5, 0.5, 1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
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
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    texture000.destroy();
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array4 = new Float32Array([0.5, 0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 0.75, -0.5, 0.25, -0.25, 0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -0.25, -0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 0.5, -0.75, 0.75, -0.75, 0.0, 1.0, -0.5, -0.75, 0.0, -0.75, 0.25, -0.25, 0.5, -1.0, -0.5, -0.5, 0.5, 0.5, -1.0, -0.5, 1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 0.5, -0.75, -0.25, -1.0, 0.0, -0.75, 0.5, 0.75, 0.0, 0.0, -0.25, -0.75, 0.75, 1.0, -0.5, -1.0, 0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.75, 0.75, -0.25, -0.5, -0.5, -0.25, 0.5, 0.0, 0.0, 0.75, 0.5, 0.75, -0.5, 1.0, 0.0, ]);
    
    
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
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
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
    
    device10.destroy();
    
    device40.destroy();
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder300.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    
    
    
    
    texture200.destroy();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder200.popDebugGroup()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    command_encoder300.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
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
    command_encoder200.popDebugGroup()
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    command_encoder200.pushDebugGroup("mygroupmarker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const array5 = new Float32Array([0.0, -0.75, -1.0, 0.5, 0.5, 0.0, 1.0, 1.0, -1.0, -0.75, -0.5, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, 0.5, -1.0, 0.75, -0.75, -0.5, 1.0, -1.0, -0.5, -0.5, -1.0, 0.0, -0.75, -1.0, -0.5, 1.0, 0.0, 1.0, 0.75, 0.75, -1.0, 1.0, 0.0, 0.5, 1.0, -0.75, -0.5, -0.25, -0.75, -0.25, 0.5, -0.75, -0.5, 0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -0.5, 0.25, -1.0, 0.75, -0.75, 0.5, 1.0, 1.0, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -0.5, -1.0, 0.75, -0.25, 0.5, 0.75, -0.25, -1.0, -0.75, 0.5, 1.0, 1.0, -1.0, -0.5, -0.25, -0.25, 0.25, 0.5, -1.0, -1.0, -1.0, -0.5, 0.75, ]);
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture301.destroy();
    
    const array6 = new Float32Array([-1.0, -0.5, 0.25, 0.75, 1.0, 0.25, 0.75, 0.0, 0.75, 0.5, -1.0, -0.5, -1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 0.0, 1.0, 1.0, 1.0, -1.0, -0.25, -0.25, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 0.25, 0.5, 0.5, 1.0, -0.25, -0.5, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, 0.75, -0.5, 0.75, -1.0, -0.5, 0.5, 0.75, 0.5, -1.0, -1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, -1.0, -0.25, 0.25, -0.5, 0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 1.0, 0.25, 1.0, -0.75, -0.25, ]);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
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
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array7 = new Float32Array([0.5, 0.75, 0.0, -0.25, -0.75, -0.5, 0.0, -0.5, 0.5, -0.5, 0.5, 0.5, -1.0, 1.0, -0.5, -0.75, -0.75, 0.75, -1.0, -0.5, 0.5, 0.0, -0.25, 0.25, 0.0, -0.75, -1.0, -1.0, 1.0, 0.5, 0.5, -1.0, -0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.5, 0.75, 1.0, 0.0, 0.25, -1.0, 1.0, 1.0, -0.5, -1.0, 0.75, -0.25, 0.5, -1.0, 0.5, -0.75, 0.5, 0.75, -0.25, 0.5, -0.75, 0.0, 0.25, -0.75, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, 0.75, -0.25, 0.75, 0.75, 0.5, 0.0, 0.5, -0.5, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, -0.5, 0.5, -0.5, 0.25, 0.25, 0.75, ]);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture300.destroy();
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture001.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
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
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    const array8 = new Float32Array([1.0, -1.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.0, 1.0, -0.75, 0.25, 1.0, 1.0, -0.5, 0.0, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, -0.5, 0.0, -0.5, -1.0, 1.0, 0.25, 0.75, 0.25, 0.75, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, 0.25, 1.0, -0.75, 0.5, 0.25, 0.25, 0.75, 0.75, 0.75, -0.75, -0.75, -1.0, 0.5, 0.5, -0.5, 0.25, -1.0, 0.0, 0.75, -1.0, 0.75, 0.75, 1.0, 0.75, -0.5, 0.25, -0.25, 1.0, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.5, 0.0, 0.25, 0.0, 0.0, -0.5, -0.25, -0.5, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.25, 0.75, 1.0, 1.0, -0.5, 0.0, -0.25, 1.0, 0.75, -0.25, ]);
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer203,
        0,
        400
    );
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    texture202.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
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
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
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
    
    render_pass_encoder0030.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.insertDebugMarker("marker");
    
    
    
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout003]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    texture201.destroy();
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8snorm",
        dimension: "2d"
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture002.destroy();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    
    
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
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
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    command_encoder206.copyBufferToBuffer(
        buffer200,
        0,
        buffer203,
        0,
        400
    );
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2040.insertDebugMarker("marker");
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    render_pass_encoder0050.insertDebugMarker("marker");
    
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
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout300]
    });
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    
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
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    
    
    device00.queue.writeBuffer(buffer000, 0, array8, 0, array8.length);
    
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    render_pass_encoder2040.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
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
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    
    
    
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout202]
    });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    texture600.destroy();
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
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
    
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
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
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2040.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout303]
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    
    render_pass_encoder2000.insertDebugMarker("marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout305]
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    texture303.destroy();
    texture500.destroy();
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout005]
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
    render_pass_encoder0040.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    render_pass_encoder6000.insertDebugMarker("marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "stencil8",
        dimension: "2d"
    });
    texture204.destroy();
    
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
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
    
    texture302.destroy();
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout302]
    });
}