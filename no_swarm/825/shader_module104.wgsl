struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, 1i, -31824i, 13259i);

var<private> global1: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1219f, _wgslsmith_f_op_f32(f32(-1f) * -1359f)));
}

fn func_2() -> i32 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(425f, 2151f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f + -1255f) * _wgslsmith_f_op_f32(func_3(vec4<i32>(-1i, -2147483647i, 17827i, global0[_wgslsmith_index_u32(0u, 4u)]), vec3<bool>(true, false, true), u_input.b))))));
    global1 = ~(~75256u ^ u_input.a);
    let var_1 = true;
    return 53908i;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2700f)) - _wgslsmith_f_op_f32(round(-486f)))), u_input.b, _wgslsmith_div_i32(max(global0[_wgslsmith_index_u32(~abs(7385u), 4u)], abs(u_input.b)), ~func_2()));
    let var_1 = abs(min(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 29283u, 0u, u_input.d), ~vec4<u32>(u_input.c, u_input.c, u_input.d, 26944u)), u_input.a, u_input.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 82222u, 0u), reverseBits(vec3<u32>(1u, 36552u, 1u)))));
    let var_2 = -840f;
    let var_3 = vec3<u32>(_wgslsmith_add_u32(select(u_input.d, 1u, false), max(u_input.c, var_1.x)), ~var_1.x, abs(4294967295u));
    global0 = array<i32, 4>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -261f, _wgslsmith_f_op_f32(select(-955f, 928f, arg_0)), _wgslsmith_f_op_f32(floor(var_2))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1268f, 493f, -764f, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, var_0.a, 518f, var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!(min(~94497u, 4294967295u) <= _wgslsmith_div_u32(1u, _wgslsmith_div_u32(91965u, u_input.a))), -vec2<i32>(_wgslsmith_mod_i32(-16010i >> (u_input.c % 32u), _wgslsmith_add_i32(0i, 14853i)), ~u_input.b));
}

