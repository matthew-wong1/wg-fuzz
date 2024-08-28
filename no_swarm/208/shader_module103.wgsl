struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(false, false, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, false)));

var<private> global2: array<i32, 4>;

var<private> global3: vec3<u32> = vec3<u32>(30528u, 7816u, 4294967295u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = arg_0;
    let var_1 = Struct_5(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), true)))));
    global1 = array<Struct_4, 17>();
    global3 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, 62055u, u_input.e) & vec3<u32>(0u, global3.x, 4294967295u), vec3<u32>(5435u, 0u, arg_0) << (vec3<u32>(8076u, var_0, 4294967295u) % vec3<u32>(32u))), ~(vec3<u32>(0u, var_0, 40569u) >> (vec3<u32>(13402u, arg_0, 1u) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_mod_u32(var_0, var_0), firstTrailingBit(global3.x), min(var_0, u_input.c)) % vec3<u32>(32u)), ~(~(~vec3<u32>(964u, 48583u, 13294u)))));
    let var_2 = vec3<i32>(0i, 36065i, _wgslsmith_dot_vec3_i32(u_input.d | u_input.d, abs(~vec3<i32>(-1i, 2052i, global2[_wgslsmith_index_u32(6079u, 4u)]))));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(153f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) + -1000f)))), -239f, _wgslsmith_f_op_f32(sign(1194f)));
}

fn func_2() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_u32(abs(select(_wgslsmith_div_u32(0u, global3.x), firstLeadingBit(u_input.e), true)), max(_wgslsmith_div_u32(~97130u, u_input.a.x), ~(~global3.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = Struct_5(vec4<bool>(true, (-2147483647i != _wgslsmith_div_i32(arg_0.x, arg_0.x)) && (arg_2 > ~global3.x), true, !(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 34611u, 0u, 9258u), vec4<u32>(u_input.e, arg_2, 116776u, 70889u)) != ~global3.x)));
    var var_1 = all(vec3<bool>(false, all(var_0.a), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, 268f, 442f), vec3<f32>(-227f, -936f, -1571f))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 1920f, -742f), vec3<f32>(arg_3, -152f, arg_3))) * _wgslsmith_f_op_vec3_f32(func_2())), vec3<f32>(897f, arg_3, _wgslsmith_f_op_f32(round(arg_1)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 1169f) - -434f)), 1128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(338f + 658f) + _wgslsmith_div_f32(573f, _wgslsmith_f_op_f32(arg_1 - arg_1)))));
    let var_3 = u_input.d.x;
    global3 = reverseBits(~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(31683u, arg_2, 58749u) & vec3<u32>(22284u, u_input.e, 41984u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, u_input.a.x), vec3<u32>(arg_2, arg_2, 4977u), vec3<u32>(arg_2, global3.x, u_input.e)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))) - arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 4>();
    global1 = array<Struct_4, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.d.x, u_input.d.x), -680f, global3.x, -866f))), _wgslsmith_f_op_f32(abs(-2209f)), true)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -899f) * -1298f), _wgslsmith_f_op_f32(1507f * _wgslsmith_f_op_f32(sign(669f))), false))) * 2024f);
    var var_1 = Struct_1(vec4<bool>(var_0 <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(round(var_0))), all(vec2<bool>(true, true)), false, false));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(abs(var_0))))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(364f, -1858f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.yz, vec2<f32>(var_2.x, var_0))) * _wgslsmith_f_op_vec2_f32(-var_2.yy)) - _wgslsmith_f_op_vec2_f32(exp2(var_2.yx))), vec2<f32>(var_2.x, _wgslsmith_f_op_vec3_f32(func_3(u_input.e)).x)), var_2.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(ceil(-333f)))) * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(131f - -387f)))));
    var var_4 = ~vec3<i32>(-select(2147483647i, 32559i, var_1.a.x), -global2[_wgslsmith_index_u32(u_input.a.x, 4u)] ^ -u_input.d.x, (224i << (u_input.c % 32u)) >> ((21204u >> (global3.x % 32u)) % 32u)) & vec3<i32>(global2[_wgslsmith_index_u32(u_input.c, 4u)], max(max(-1235i, _wgslsmith_dot_vec2_i32(u_input.d.zz, u_input.d.zz)), u_input.b), global2[_wgslsmith_index_u32(abs(abs(global3.x)), 4u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.x), var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.c.x)) + _wgslsmith_f_op_f32(select(var_2.x, 703f, var_1.a.x))), -131f, var_0) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -1000f))))));
}

