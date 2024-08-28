struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(1u, 1u, 4294967295u, 64936u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> Struct_3 {
    return Struct_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(2147483647i, 2147483647i)) < _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, max(21295i, 2147483647i)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(28642i, 2147483647i)), ~vec2<i32>(1i, 31559i)), -1i), global0[_wgslsmith_index_u32(u_input.a.x, 6u)] << (~50576u % 32u));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(step(1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1074f, _wgslsmith_f_op_f32(max(2278f, 1940f))))))));
    var var_1 = firstLeadingBit(-6735i >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 105400u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)]) ^ vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(78744u, 6u)], u_input.a.x)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f - var_0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_div_f32(-870f, -846f)) - _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a)))));
    let var_3 = !(!(!(!all(arg_0))));
    let var_4 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -1360f);
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    let var_1 = false;
    global0 = array<u32, 6>();
    var var_2 = firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i) << (((vec4<u32>(u_input.a.x, 4294967295u, 1u, 18563u) << (min(vec4<u32>(54869u, 11585u, u_input.a.x, 32390u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(63610u, 6u)], 4294967295u, 26585u)) % vec4<u32>(32u))) << (vec4<u32>(global0[_wgslsmith_index_u32(~var_0.b, 6u)], min(1u, u_input.a.x), 1u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1287f - -677f));
    return Struct_4(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(!var_0.a, !var_0.a), !(!vec2<bool>(true, var_1)), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1();
    var_1 = func_1();
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(232f, var_1.a, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(sign(var_1.a)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(var_1.a - var_1.a), var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, 185f, u_input.a.x == u_input.a.x))), _wgslsmith_f_op_f32(round(602f)), _wgslsmith_f_op_f32(sign(var_1.a))));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, reverseBits(~vec2<u32>(var_3.b, 4294967295u >> (var_3.b % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), -23686i);
}

