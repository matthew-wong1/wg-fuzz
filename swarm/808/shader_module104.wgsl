struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(1u, 10370u, 52702u, 4294967295u), vec4<u32>(1u, 0u, 0u, 106891u), vec4<u32>(29813u, 11230u, 0u, 0u), vec4<u32>(0u, 50774u, 1u, 0u), vec4<u32>(4294967295u, 51852u, 36602u, 1u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 12678u, 37630u, 1u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(35274u, 3891u, 75658u, 4294967295u), vec4<u32>(1u, 1u, 19044u, 0u), vec4<u32>(4294967295u, 7836u, 27641u, 1u), vec4<u32>(22848u, 4294967295u, 4294967295u, 6071u), vec4<u32>(4294967295u, 0u, 4294967295u, 18919u), vec4<u32>(48389u, 4294967295u, 1u, 1u), vec4<u32>(6054u, 4294967295u, 38715u, 72919u), vec4<u32>(0u, 46761u, 0u, 1u), vec4<u32>(320u, 16541u, 0u, 4294967295u));

var<private> global3: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(43448u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 73881u), vec2<u32>(1u, 0u), vec2<u32>(20751u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(14649u, 41626u), vec2<u32>(1u, 12411u), vec2<u32>(1u, 13663u), vec2<u32>(36116u, 1u), vec2<u32>(40536u, 47699u), vec2<u32>(1u, 51948u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))), _wgslsmith_f_op_f32(min(arg_2, arg_2)))), _wgslsmith_f_op_f32(exp2(arg_2)));
    let var_1 = arg_1.a.zzw;
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 9u)];
    return _wgslsmith_f_op_f32(-arg_1.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1273f * -674f)), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), Struct_1(vec4<f32>(1481f, 298f, -382f, 1423f), -213f, u_input.a.x), 863f, vec4<bool>(true, false, false, true))) < _wgslsmith_f_op_f32(sign(1239f)))))));
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 9u)];
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 9u)];
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(50520u ^ _wgslsmith_div_u32(var_1.c, ~countOneBits(var_1.c)), abs(_wgslsmith_mult_u32(u_input.a.x, var_2.c))), 29u)];
    let var_4 = !(!all(vec2<bool>(true, u_input.d.x >= 1i)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), u_input.a.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = ~abs(vec3<u32>(101895u, u_input.a.x, u_input.a.x) | ~(u_input.a.xyx | u_input.a.yzz));
    let var_1 = _wgslsmith_f_op_f32(select(arg_0.x, 888f, true));
    let var_2 = func_2();
    global2 = array<vec4<u32>, 17>();
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(var_1 * arg_0.x);
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1121f * -884f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), -1756f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))))), arg_0.x, _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x));
    let var_1 = false;
    global2 = array<vec4<u32>, 17>();
    var var_2 = vec3<u32>(~(~_wgslsmith_clamp_u32(73694u, _wgslsmith_sub_u32(21108u, 0u), countOneBits(33261u))), ~func_2().c, var_0.c);
    let var_3 = u_input.a.x;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.a.xx, var_1, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - arg_0.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-478f, 640f)), _wgslsmith_f_op_f32(arg_0.x + -418f)))), var_0.b, -1004f), _wgslsmith_f_op_f32(func_3(vec2<bool>(any(select(vec4<bool>(var_1, var_1, true, false), vec4<bool>(true, var_1, var_1, true), var_1)), false), global0[_wgslsmith_index_u32(~u_input.a.x, 9u)], 687f, vec4<bool>(false, !(!var_1), var_1, any(!vec2<bool>(var_1, var_1))))), 30210u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f - 137f)), _wgslsmith_f_op_f32(floor(-1092f)), _wgslsmith_f_op_f32(func_1(vec2<f32>(-228f, 877f), any(vec3<bool>(false, false, true)), _wgslsmith_sub_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1179f, 223f) + -1560f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1778f, -1216f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(839f, -940f, -183f, 780f)))), all(vec2<bool>(false, true)))), false)));
    global1 = array<Struct_1, 29>();
    var var_1 = var_0.c;
    global1 = array<Struct_1, 29>();
    let var_2 = ~_wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(35173i >> ((u_input.a.x ^ var_0.c) % 32u), 32941i), ~7108i);
    global3 = array<vec2<u32>, 21>();
    let var_3 = _wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d.x, var_2, 13927i), u_input.c.wxw), vec3<i32>(abs(u_input.b), var_2, var_2));
    let var_4 = var_0;
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, firstLeadingBit(57351u), 14783u), 0u, vec2<i32>(2147483647i, var_3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1222f - -1423f) - var_4.a.x), var_4.b, _wgslsmith_f_op_f32(var_5.b + _wgslsmith_f_op_f32(var_4.b - var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1853f, var_5.a.x, false))))));
}

