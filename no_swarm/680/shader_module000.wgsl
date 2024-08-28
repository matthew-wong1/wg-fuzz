struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.xwz), (vec3<u32>(u_input.a.x, u_input.a.x, 14120u) << (select(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.wxz, true) % vec3<u32>(32u))) << (u_input.a.zwy % vec3<u32>(32u))) == u_input.a.x;
    var var_1 = select(var_0, var_0, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.a.x, 44056u)))), -201f, 4294967295u);
}

