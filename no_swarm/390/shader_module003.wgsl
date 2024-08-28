struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), false, true, false));
    let var_1 = _wgslsmith_mult_i32(-1i, ~_wgslsmith_mult_i32(~u_input.a, 2147483647i));
    global1 = array<Struct_2, 5>();
    global0 = all(select(vec2<bool>(true, true), vec2<bool>(false, firstLeadingBit(1762u) <= ~u_input.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(185f)), -333f, !var_0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2493f, -1255f)) - _wgslsmith_f_op_f32(round(-241f)))));
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))), ~(~(~vec3<u32>(7652u, 0u, u_input.b)))), u_input.c, (47852u >> (~_wgslsmith_sub_u32(0u, u_input.b) % 32u)) | _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 37705u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 85164u, 2886u), vec3<u32>(u_input.b, u_input.b, 37266u)))), ~38131u);
}

