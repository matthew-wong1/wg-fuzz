struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let var_0 = u_input.d.xy;
    var var_1 = -658f;
    global0 = array<Struct_1, 14>();
    var var_2 = any(select(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true))), !vec3<bool>(true, false, u_input.c < 4294967295u), any(vec4<bool>(true, u_input.b < u_input.b, any(vec4<bool>(false, true, false, true)), true))));
    let var_3 = global0[_wgslsmith_index_u32(~max(var_0.x, 73587u), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(-min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b)), vec2<i32>(0i ^ u_input.b, -u_input.b)) >> (var_0 % vec2<u32>(32u)));
}

