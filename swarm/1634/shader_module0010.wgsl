struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ((u_input.a.x > u_input.a.x) & all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true)))) && false;
    let var_0 = !(false & ((abs(u_input.a.x) | _wgslsmith_mult_u32(1u, u_input.a.x)) == 4294967295u));
    global0 = true;
    global0 = !var_0;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(select(firstLeadingBit(u_input.a.x), ~0u, true)), ~(1u ^ u_input.a.x), _wgslsmith_div_u32(~1u << (~u_input.a.x % 32u), 60727u), abs(u_input.a.x)), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x | 1u), abs(4294967295u), u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(47928u, 29531u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 110120u)), abs(0u)) & min(~vec3<u32>(9825u, 47336u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -123f), u_input.a.x, abs(countOneBits(~vec4<i32>(0i, -11312i, -42469i, 1i))));
}

