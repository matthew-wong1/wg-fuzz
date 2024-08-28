struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32>;

var<private> global2: f32 = 181f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> bool {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1090f, -645f))) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(713f * _wgslsmith_f_op_f32(-1409f * global1.x)) - -1312f))));
    let var_0 = 1335f;
    let var_1 = ~arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1.d, global0.x)), var_0)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) * -346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 115f) - _wgslsmith_f_op_f32(arg_1.b + -282f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -317f, 637f, global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d, 300f, global1.x, -581f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global0.x, global0.x, arg_1.c.c)))))));
    global1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1193f * 468f))))));
    return !all(!(!vec2<bool>(arg_1.a.a, arg_1.a.a))) || all(!select(select(vec4<bool>(arg_1.c.a, arg_1.a.a, arg_1.a.b.x, arg_1.a.b.x), vec4<bool>(arg_1.a.a, arg_1.a.a, false, arg_1.c.b.x), vec4<bool>(false, arg_1.a.a, false, true)), select(vec4<bool>(true, arg_1.a.a, false, true), vec4<bool>(true, arg_1.c.b.x, false, arg_1.a.a), vec4<bool>(arg_1.c.b.x, true, arg_1.a.a, arg_1.a.a)), arg_1.c.b.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    return Struct_2(Struct_1(func_3(~u_input.a.x, Struct_3(arg_3, -1644f, Struct_1(arg_1.b.x, vec2<bool>(false, arg_1.b.x), 1258f, arg_1.e, 44537u), arg_0.x)), !select(select(arg_3.b, vec2<bool>(true, true), vec2<bool>(arg_3.b.x, arg_3.b.x)), arg_1.b, arg_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1000f, -558f, arg_1.a)), global1.x, u_input.e != -5182i)))), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(55432u, 4294967295u, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(arg_1.e, 1u, 0u, 2824u)))), true, u_input.d.x, Struct_1(!arg_3.a, select(arg_1.b, arg_1.b, true), 965f, ~(arg_3.e | _wgslsmith_add_u32(82085u, arg_3.d)), ~(~(~0u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(327f, global1.x, global0.x)), arg_0.a, _wgslsmith_div_f32(global0.x, arg_0.d.c), arg_0.a).d.a && (arg_0.d.b.x & true), func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c, -1184f, 448f) - vec3<f32>(global1.x, 266f, 1006f))))), Struct_1(false, !arg_0.a.b, global1.x, _wgslsmith_clamp_u32(~4294967295u, ~arg_0.d.d, ~u_input.a.x), min(4294967295u, ~74727u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) - -332f), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, global1.x, global1.x)), func_2(vec3<f32>(arg_0.a.c, -1245f, global1.x), Struct_1(arg_0.b, vec2<bool>(arg_0.d.a, arg_0.a.b.x), -1063f, u_input.c, arg_0.a.e), _wgslsmith_f_op_f32(exp2(arg_0.a.c)), arg_0.d).d, -1136f, func_2(_wgslsmith_div_vec3_f32(global0.zxx, global0.xxy), func_2(vec3<f32>(-331f, -1000f, arg_0.d.c), arg_0.a, global1.x, arg_0.a).d, -367f, arg_0.a).a).a).d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f * global0.x)) + 1000f) * global1.x), arg_0.d.e, ~arg_0.a.e);
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f - global0.x) * global1.x))));
    global2 = global0.x;
    var var_1 = !var_0.a;
    global1 = global0.wz;
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(sign(global0.yxy)), arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-686f + var_0.c) * global1.x)), var_0).d, false, arg_1.x, func_2(_wgslsmith_f_op_vec3_f32(select(global0.yxw, global0.wwy, vec3<bool>(true, true, func_2(vec3<f32>(-1000f, 132f, 746f), arg_0.d, global0.x, Struct_1(true, arg_0.a.b, global1.x, 50979u, 20300u)).b))), Struct_1(true, var_0.b, -470f, 22207u, abs(~1u)), _wgslsmith_div_f32(var_0.c, global1.x), Struct_1(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2109f, -2145f, arg_0.d.c) * global0.yyy), Struct_1(true, arg_0.d.b, 321f, arg_0.d.e, var_0.d), _wgslsmith_f_op_f32(1000f - global0.x), func_2(global0.wxy, Struct_1(arg_0.d.b.x, arg_0.d.b, global0.x, arg_0.a.e, 24944u), global0.x, Struct_1(true, arg_0.d.b, arg_0.d.c, 22088u, 48946u)).a).b, var_0.b, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_mult_u32(62631u, firstTrailingBit(0u)), 4294967295u)).d);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = true;
    let var_1 = !(!select(!(!vec4<bool>(arg_1.a.b.x, arg_1.a.b.x, false, true)), !select(vec4<bool>(arg_1.b, arg_1.b, arg_1.a.b.x, arg_0.d.b.x), vec4<bool>(arg_0.b, true, arg_0.d.b.x, true), false), vec4<bool>(true, func_2(global0.wxz, arg_1.d, -1046f, arg_1.a).a.b.x, !arg_1.d.a, arg_0.c < 1i)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, -2030f, global1.x, -2159f)), vec4<f32>(-2434f, -1923f, -1262f, 669f)))), vec4<f32>(-419f, -630f, _wgslsmith_f_op_f32(-arg_0.a.c), -552f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, 180f, arg_0.d.c, global0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1.d.c, arg_0.d.c, global0.x)))))));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)))), 1093f);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-707f, -185f, var_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x + 567f)))))));
    return !(!vec2<bool>(var_1.x, any(!var_1.zw)));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1((0u == _wgslsmith_mult_u32(u_input.c, u_input.c)) || arg_1, func_5(func_4(func_2(vec3<f32>(arg_0, -451f, 1829f), Struct_1(arg_1, vec2<bool>(arg_1, true), arg_0, u_input.c, u_input.c), -1270f, Struct_1(arg_1, vec2<bool>(arg_1, arg_1), arg_0, 38479u, u_input.a.x)), max(vec4<i32>(-34062i, u_input.e, u_input.b, -3058i), vec4<i32>(0i, u_input.d.x, 22176i, -12635i)), vec3<i32>(1i, u_input.b, -24900i)), Struct_2(func_2(global0.zxz, Struct_1(arg_1, vec2<bool>(false, false), -302f, u_input.c, 24255u), arg_0, Struct_1(arg_1, vec2<bool>(arg_1, false), 527f, u_input.a.x, 0u)).a, all(vec2<bool>(arg_1, arg_1)), _wgslsmith_clamp_i32(u_input.e, u_input.d.x, u_input.e), Struct_1(arg_1, vec2<bool>(true, arg_1), global0.x, 31786u, 4294967295u))), arg_0, _wgslsmith_mod_u32(18130u, _wgslsmith_mult_u32(u_input.c, ~1u)), u_input.a.x | ~(~u_input.a.x)), false, u_input.b, Struct_1(arg_1, !vec2<bool>(!arg_1, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1136f - _wgslsmith_div_f32(global0.x, arg_0))), 251u, 28033u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, -252f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -577f))));
    let var_1 = true;
    global1 = global0.yz;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-110f, -715f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-411f, global1.x))), -460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.c * 1298f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, global0.x, -284f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, var_0.d.c, global0.x, var_0.a.c), vec4<f32>(377f, arg_0, 930f, global0.x), vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, true)))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(global1.x)), -549f, _wgslsmith_f_op_f32(var_0.a.c + global0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 1000f, 405f, 1000f))))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1219f + global1.x)), _wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(sign(var_0.d.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(486f)) - _wgslsmith_f_op_f32(-global1.x)), var_0.a.c, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(global1.x, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global0.x, 1067f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1691f, global1.x, 686f) * vec4<f32>(-684f, -1007f, global0.x, 213f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(1000f, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1216f, 1000f, global1.x, global1.x) * vec4<f32>(-673f, global1.x, global0.x, global1.x)))))));
    let var_0 = -select(-11852i << (u_input.c % 32u), -_wgslsmith_div_i32(countOneBits(u_input.d.x), _wgslsmith_mult_i32(u_input.d.x, -2147483647i)), true & all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))));
    var var_1 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(func_4(Struct_2(Struct_1(true, vec2<bool>(false, false), 518f, 0u, 1u), true, -14645i, Struct_1(false, vec2<bool>(true, true), -418f, u_input.a.x, 16957u)), vec4<i32>(u_input.e, -2147483647i, u_input.b, var_0), vec3<i32>(-1i, -38385i, var_0)).c, u_input.d.x, var_0, reverseBits(-1i)) ^ -firstTrailingBit(vec4<i32>(-43289i, u_input.e, 2147483647i, 40380i)), -firstLeadingBit(reverseBits(vec4<i32>(0i, u_input.d.x, 59925i, 0i)))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x) - 1185f))), global0.x));
    let var_2 = vec3<f32>(global0.x, _wgslsmith_f_op_vec4_f32(func_1(global0.x, !select(global1.x >= 596f, true, -142f == global0.x))).x, 689f);
    let var_3 = Struct_3(Struct_1(true, select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-235f - -389f), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(u_input.c, 1u)), vec2<u32>(u_input.c ^ u_input.c, ~4294967295u)), ~firstLeadingBit(u_input.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1695f * 1209f)))))), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1217f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global0.x - global0.x))), func_4(func_2(var_2, Struct_1(false, vec2<bool>(true, false), 188f, u_input.a.x, 0u), _wgslsmith_f_op_f32(-global1.x), func_4(Struct_2(Struct_1(false, vec2<bool>(true, false), -730f, u_input.c, 1u), true, var_1.x, Struct_1(false, vec2<bool>(false, true), global1.x, u_input.c, u_input.a.x)), vec4<i32>(var_1.x, 1i, u_input.d.x, -1i), vec3<i32>(var_1.x, 2147483647i, var_1.x)).d), ~vec4<i32>(0i, var_1.x, -8149i, var_1.x), u_input.d).a, -777f, func_2(vec3<f32>(_wgslsmith_f_op_f32(-442f - var_2.x), _wgslsmith_f_op_f32(global1.x - 1515f), _wgslsmith_f_op_f32(sign(-1136f))), Struct_1(true, func_5(Struct_2(Struct_1(true, vec2<bool>(true, true), -579f, 0u, u_input.a.x), false, var_0, Struct_1(false, vec2<bool>(true, true), -769f, 44007u, 4294967295u)), Struct_2(Struct_1(false, vec2<bool>(true, true), var_2.x, u_input.c, u_input.c), false, var_0, Struct_1(true, vec2<bool>(false, false), global0.x, u_input.a.x, 104680u))), _wgslsmith_f_op_f32(max(global0.x, global1.x)), ~53928u, countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1819f) - _wgslsmith_f_op_f32(sign(-677f))), func_4(Struct_2(Struct_1(false, vec2<bool>(true, true), 1571f, 1u, u_input.a.x), false, 63843i, Struct_1(true, vec2<bool>(true, false), global0.x, 47346u, 4294967295u)), ~vec4<i32>(48096i, -8351i, -1i, u_input.d.x), _wgslsmith_mult_vec3_i32(var_1.zwx, u_input.d)).d).d).d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(1821f))))));
    let var_4 = func_4(func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d)), global0.x), var_3.a, _wgslsmith_f_op_f32(max(-1402f, 265f)), func_4(func_2(global0.yyx, var_3.c, 585f, func_2(global0.xxw, var_3.c, 531f, var_3.c).d), vec4<i32>(-29144i, _wgslsmith_sub_i32(u_input.d.x, var_1.x), _wgslsmith_mod_i32(u_input.e, -4625i), -u_input.d.x), vec3<i32>(func_4(Struct_2(var_3.c, var_3.a.b.x, 2147483647i, Struct_1(false, var_3.a.b, var_2.x, var_3.a.e, 98237u)), vec4<i32>(var_0, 14122i, -36491i, var_1.x), u_input.d).c, firstTrailingBit(-1i), -u_input.e)).a), ~select(select(~vec4<i32>(var_1.x, 8778i, u_input.e, u_input.b), firstTrailingBit(vec4<i32>(var_0, 0i, var_1.x, u_input.d.x)), all(vec4<bool>(var_3.a.a, var_3.a.b.x, var_3.a.a, true))), -vec4<i32>(var_1.x, -9035i, var_1.x, var_1.x), !(!vec4<bool>(var_3.c.b.x, true, true, false))), vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(0i, -1i), countOneBits(u_input.d.x), 23708i)).a;
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.c)))), _wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), 1843f, var_4.b.x))))));
    var_1 = max(vec4<i32>(~(-firstLeadingBit(1i)), countOneBits(~(-2147483647i)), -1i, -1i), reverseBits(min(-vec4<i32>(1i, var_1.x, 50253i, 0i) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, var_1.x, 40573i), vec4<i32>(var_0, -19815i, -19227i, var_1.x)), vec4<i32>(var_0, countOneBits(20851i), func_4(Struct_2(Struct_1(var_4.a, var_4.b, global0.x, var_4.d, var_3.a.e), var_3.c.a, 66980i, Struct_1(false, vec2<bool>(false, true), -598f, 72268u, var_3.a.d)), vec4<i32>(var_0, 6986i, u_input.b, var_1.x), vec3<i32>(var_0, var_0, var_0)).c, 0i))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

