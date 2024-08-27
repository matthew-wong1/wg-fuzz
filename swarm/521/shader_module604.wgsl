struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    var var_0 = 0u;
    global0 = array<vec3<bool>, 3>();
    var var_1 = global1.x;
    var var_2 = Struct_1(vec3<u32>(~abs(1u), 1u, 55847u));
    return Struct_1(max(~abs(u_input.b) >> ((~var_2.a | var_2.a) % vec3<u32>(32u)), u_input.b));
}

fn func_3() -> vec3<u32> {
    global1 = vec2<bool>(true, true);
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1230f - _wgslsmith_f_op_f32(max(-200f, -658f))) - -476f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1003f * _wgslsmith_f_op_f32(-2086f + -340f))))));
    let var_1 = select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(!(!(!global1.x)), ~62534u != abs(4294967295u >> (u_input.d % 32u)), all(select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, global1.x), vec2<bool>(false, global1.x))))), global0[_wgslsmith_index_u32(~0u, 3u)]);
    return _wgslsmith_div_vec3_u32(u_input.b, u_input.b << (vec3<u32>(~1u, ~0u, u_input.c) % vec3<u32>(32u))) ^ u_input.b;
}

fn func_1() -> vec2<f32> {
    let var_0 = true;
    let var_1 = func_2();
    var var_2 = var_1;
    let var_3 = func_3();
    global1 = vec2<bool>(any(select(!vec2<bool>(var_0, var_0), !(!vec2<bool>(var_0, global1.x)), true || all(vec2<bool>(global1.x, false)))), global1.x);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - -721f))))), vec2<f32>(535f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-135f + 976f), _wgslsmith_f_op_f32(f32(-1f) * -219f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-648f))))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), !vec2<bool>(var_0, global1.x)), select(vec2<bool>(!global1.x, 0i >= u_input.a.x), vec2<bool>(any(vec4<bool>(false, global1.x, var_0, var_0)), var_0 & var_0), vec2<bool>(true, true)), !vec2<bool>(select(global1.x, var_0, var_0), all(vec2<bool>(global1.x, false))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(global1.x, select(!(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, 4294967295u), 3u)]), global0[_wgslsmith_index_u32(arg_0.x, 3u)], !global0[_wgslsmith_index_u32(abs(u_input.d | 4294967295u), 3u)]), all(!vec4<bool>(select(global1.x, true, true), true, true, global1.x || true)), global1.x, u_input.a.yyx);
    var var_1 = var_0;
    global1 = var_1.b.yy;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * arg_1)));
    global0 = array<vec3<bool>, 3>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, 46790u, 91681u, u_input.d) ^ vec4<u32>(0u, 82881u, 0u, u_input.d)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(u_input.c, u_input.b.x, 99127u, 18756u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(278f, -1675f) * vec2<f32>(541f, -155f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1019f, -1416f), vec2<f32>(-1654f, -1160f), false))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1360f, -402f))))), _wgslsmith_f_op_vec2_f32(func_1()))));
    let var_1 = Struct_1(~reverseBits(select(u_input.b, vec3<u32>(4294967295u, 1u, u_input.d), vec3<bool>(global1.x, false, false))));
    var var_2 = select(vec2<bool>(true, select(_wgslsmith_div_i32(-2147483647i, -5233i), ~(-18722i), var_0.a.x > var_0.a.x) == (min(u_input.e.x, 0i) << (~var_0.a.x % 32u))), vec2<bool>(true, select(!global1.x, false, true & global1.x) & true), true);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -1274f))))), _wgslsmith_f_op_f32(f32(-1f) * -1409f)))));
    var_0 = var_1;
    var_0 = var_1;
    let var_4 = u_input.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

