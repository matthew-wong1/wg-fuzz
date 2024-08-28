struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    var var_0 = -154f;
    let var_1 = Struct_1(~(max(0u, 4294967295u) | arg_1) >= 0u, u_input.b);
    var var_2 = var_1;
    let var_3 = ~(~min(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, u_input.b, 4294967295u, var_2.b), vec4<u32>(var_2.b, 1u, 37928u, var_1.b)), ~vec4<u32>(u_input.b, arg_1, 0u, 0u), vec4<u32>(arg_1, arg_1, var_2.b, 0u) | vec4<u32>(84461u, u_input.a, arg_1, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(28128u, u_input.a, 4294967295u, var_1.b) | vec4<u32>(var_2.b, var_2.b, 14349u, 4294967295u), vec4<u32>(var_2.b, 84146u, var_1.b, 36491u))));
    let var_4 = vec4<bool>(_wgslsmith_div_u32(_wgslsmith_div_u32(~arg_1, u_input.b), var_2.b) <= var_2.b, var_1.a, true, !(!(!(!var_2.a))));
    return -801f;
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_1, 13>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 13u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -752f);
    global0 = array<Struct_1, 13>();
    var var_2 = global0[_wgslsmith_index_u32(~var_0.b, 13u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

fn func_1(arg_0: vec4<bool>) -> vec4<f32> {
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1(!(arg_0.x || (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 20884i, u_input.c.x), vec3<i32>(-34066i, -2147483647i, 0i)) == _wgslsmith_dot_vec2_i32(vec2<i32>(29832i, 28162i), vec2<i32>(-15192i, u_input.c.x)))), ~(4294967295u | u_input.a));
    global0 = array<Struct_1, 13>();
    let var_1 = false;
    global0 = array<Struct_1, 13>();
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(865f + -557f), _wgslsmith_f_op_f32(2121f - 438f), _wgslsmith_f_op_f32(283f + 104f), _wgslsmith_div_f32(-536f, -298f)), _wgslsmith_mult_u32(34423u, 85623u) ^ ~u_input.a)) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, 621f, 904f, -653f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(556f, 2106f, -1161f, 1010f), vec4<f32>(678f, 765f, 1025f, 1061f)))), 46769u))), -662f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(800f, _wgslsmith_f_op_f32(func_3(32168u)), !var_0.a))) * -988f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -866f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(394f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f - 422f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_0 = global0[_wgslsmith_index_u32(89323u, 13u)];
    var var_1 = select(false, u_input.c.x > u_input.c.x, true) & any(select(select(vec4<bool>(false, var_0.a, var_0.a, true), !vec4<bool>(var_0.a, true, var_0.a, var_0.a), !var_0.a), !(!vec4<bool>(var_0.a, var_0.a, var_0.a, false)), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(!(!vec4<bool>(false, true, var_0.a, var_0.a)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(491f, 676f, -1000f, -1752f))), vec4<f32>(_wgslsmith_f_op_f32(2767f * -385f), -252f, -1000f, 631f), vec4<bool>(all(vec3<bool>(false, var_0.a, var_0.a)), var_0.a, 19496u >= var_0.b, any(vec4<bool>(var_0.a, var_0.a, true, true)))))));
    let var_3 = u_input.c.x;
    var_1 = var_0.a | !var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(max(~4294967295u, var_0.b))), _wgslsmith_div_vec3_i32(max(abs(vec3<i32>(var_3, u_input.c.x, var_3)), vec3<i32>(-1i, 10181i, 1i) & vec3<i32>(-29722i, 2147483647i, u_input.c.x)), ~(~vec3<i32>(2147483647i, var_3, 1i))) << (vec3<u32>(u_input.b << (~var_0.b % 32u), 2685u, max(~2738u, var_0.b)) % vec3<u32>(32u)));
}

