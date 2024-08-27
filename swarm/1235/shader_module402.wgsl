struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
    d: vec3<f32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 16118i;

var<private> global1: Struct_2 = Struct_2(true, vec4<i32>(-21616i, 1i, -4875i, -16840i), Struct_1(vec4<bool>(false, true, true, true), vec3<u32>(18642u, 4294967295u, 26012u), true, 10659u, -192f), vec2<bool>(true, false));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    global0 = -37050i;
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2381f, -613f, -106f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(365f, global1.c.e, arg_2.c.e), vec3<f32>(-1504f, arg_0, 2198f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c.e, arg_0, -161f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, global1.c.e, 220f), vec3<f32>(arg_2.c.e, arg_0, global1.c.e))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global1.c.e, arg_2.c.e) - vec3<f32>(1811f, -985f, 109f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1512f, 694f, arg_2.c.e)))))), true));
    var var_1 = ~reverseBits(~(~0i | ~arg_2.b.x));
    let var_2 = Struct_4(!(!select(select(arg_2.c.a.yzy, vec3<bool>(global1.d.x, arg_1.x, true), global1.c.a.xzy), arg_2.c.a.ywx, vec3<bool>(arg_1.x, global1.a, global1.c.a.x))), Struct_2((all(arg_1) & true) || all(vec3<bool>(arg_2.d.x, arg_2.c.a.x, true)), select(-vec4<i32>(u_input.e.x, arg_2.b.x, arg_2.b.x, 19744i), vec4<i32>(u_input.b, arg_2.b.x, arg_2.b.x, -75392i) ^ vec4<i32>(global1.b.x, -65526i, arg_2.b.x, global1.b.x), true), arg_2.c, vec2<bool>(true, global1.d.x | any(arg_2.c.a.zzy))), arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(341f)), -275f, _wgslsmith_f_op_f32(f32(-1f) * -845f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f - -1873f))))));
    let var_3 = arg_2.c.a;
    return _wgslsmith_sub_u32(var_2.b.c.d, ~1u);
}

fn func_2() -> vec2<bool> {
    var var_0 = global1.c;
    global1 = Struct_2(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(625f)) - _wgslsmith_f_op_f32(-var_0.e)), vec2<bool>(true, true), Struct_2(any(vec2<bool>(var_0.a.x, true)), vec4<i32>(u_input.b, u_input.b, -1i, -1i), Struct_1(vec4<bool>(false, global1.c.c, false, true), vec3<u32>(14110u, 4294967295u, u_input.c.x), var_0.a.x, var_0.b.x, var_0.e), select(vec2<bool>(false, global1.d.x), vec2<bool>(true, var_0.c), var_0.a.zx))) <= 1u, global1.b, global1.c, vec2<bool>(!global1.c.c, all(global1.d)));
    return !vec2<bool>(var_0.a.x, true);
}

fn func_1() -> vec2<f32> {
    let var_0 = !func_2();
    global1 = Struct_2(global1.c.a.x, ~_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(select(global1.b, vec4<i32>(global1.b.x, 33178i, -23925i, u_input.e.x), var_0.x), firstLeadingBit(global1.b)), _wgslsmith_clamp_vec4_i32(-u_input.a, vec4<i32>(-2147483647i, 811i, -1i, global1.b.x), firstTrailingBit(vec4<i32>(1900i, 2147483647i, 23948i, 40715i)))), Struct_1(global1.c.a, vec3<u32>(firstLeadingBit(u_input.d.x) ^ _wgslsmith_add_u32(global1.c.b.x, 1u), ~(~global1.c.b.x), _wgslsmith_dot_vec3_u32(global1.c.b, _wgslsmith_clamp_vec3_u32(u_input.c, u_input.d, vec3<u32>(u_input.c.x, global1.c.d, global1.c.d)))), var_0.x, _wgslsmith_add_u32(firstTrailingBit(~u_input.c.x), 1u), _wgslsmith_f_op_f32(-1f)), var_0);
    var var_1 = Struct_2(any(select(select(vec3<bool>(true, global1.c.a.x, false), global1.c.a.xzz, var_0.x), !vec3<bool>(false, var_0.x, false), global1.c.a.xwx)), u_input.a, global1.c, !(!var_0));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-596f - -1000f) * global1.c.e) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f)))));
    var_1 = Struct_2(!(!(!(!global1.c.a.x))), -u_input.a, Struct_1(vec4<bool>(1169i <= _wgslsmith_mult_i32(2147483647i, var_1.b.x), var_1.c.c, global1.d.x, all(global1.c.a.xzx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(max(u_input.c.x, var_1.c.d), global1.c.b.x, ~0u), ~vec3<u32>(u_input.c.x, global1.c.d, 96987u), ~(~var_1.c.b)), all(select(select(var_1.c.a, vec4<bool>(var_1.d.x, var_0.x, true, true), false), select(global1.c.a, vec4<bool>(global1.d.x, var_0.x, var_1.a, var_0.x), global1.c.a), true)), 11188u, -163f), select(vec2<bool>(var_1.a, var_1.d.x), func_2(), all(global1.d)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.c.e, var_1.c.e))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.e, global1.c.e)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-812f, 162f) + vec2<f32>(var_1.c.e, var_1.c.e)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(-(~1i), 8592i);
    var var_0 = _wgslsmith_f_op_f32(ceil(-592f));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global1.c.e, _wgslsmith_f_op_f32(1f - 904f)))))));
    var var_1 = Struct_5(2147483647i, true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(180f, global1.c.e))), vec2<bool>(global1.c.c, global1.d.x))) - _wgslsmith_f_op_vec2_f32(func_1())))), vec2<i32>(0i, 49456i));
    var var_2 = Struct_2(var_1.b, u_input.a, global1.c, select(!global1.d, vec2<bool>(!all(vec3<bool>(var_1.b, var_1.b, global1.a)), true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2()))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<i32>(global1.b.x, global1.b.x, var_1.a, var_1.d.x) & -vec4<i32>(-34304i, u_input.e.x, u_input.e.x, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-405f, -415f)) * var_2.c.e)), _wgslsmith_add_u32(~(~var_2.c.b.x), _wgslsmith_clamp_u32(var_2.c.b.x, 40685u, ~0u)) ^ (u_input.c.x & 1u));
}

