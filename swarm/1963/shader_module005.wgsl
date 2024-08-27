struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(1u, 0u, 1u, 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = Struct_1(vec4<bool>(any(arg_2), true, global0.a.x, false), vec4<u32>(20876u, 0u, 76440u, 0u));
    global0 = Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) <= -1145f, true, any(vec3<bool>(false, true, true)), arg_2.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, global1.b.x, global1.b.x), var_0.b) ^ _wgslsmith_mult_vec4_u32(global0.b, global1.b), ~global1.b >> (global0.b % vec4<u32>(32u)), (vec4<u32>(global0.b.x, 38368u, global0.b.x, u_input.c) >> (vec4<u32>(u_input.b, 1u, var_0.b.x, global1.b.x) % vec4<u32>(32u))) >> (~var_0.b % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(0u, ~54660u, 1u, reverseBits(u_input.b))) % vec4<u32>(32u)));
    var var_1 = Struct_1(select(!(!(!global0.a)), global1.a, select(select(global0.a, global0.a, true | arg_2.x), select(vec4<bool>(true, global0.a.x, arg_2.x, true), select(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, false, arg_2.x, true), arg_2.x), !global1.a.x), all(select(global1.a.yxw, global1.a.zzy, var_0.a.yzy)))), ~vec4<u32>(~var_0.b.x, firstTrailingBit(~u_input.c), 0u, ~6564u));
    global0 = Struct_1(!select(var_1.a, select(!vec4<bool>(false, true, false, global0.a.x), vec4<bool>(false, arg_1, global0.a.x, true), var_0.a), var_1.b.x != ~global1.b.x), global0.b);
    let var_2 = Struct_1(vec4<bool>(true, 660i >= -u_input.a.x, var_0.a.x, true & any(global0.a.xx)), vec4<u32>(1u, ~_wgslsmith_mod_u32(reverseBits(u_input.b), u_input.b), ~(_wgslsmith_clamp_u32(4294967295u, 1u, 0u) >> (abs(1u) % 32u)), 23712u));
    return arg_0.ww;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -493f, 540f, 1314f)), all(vec4<bool>(false, true, false, global0.a.x)), vec2<bool>(false, global0.a.x))) * _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(-1088f, -1000f, -627f, 346f), true | global1.a.x, vec2<bool>(global0.a.x, global1.a.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2147f, 280f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-312f, 1367f) - vec2<f32>(-866f, 1212f)), select(global1.a.xz, global1.a.wx, vec2<bool>(global1.a.x, false)))))));
    var var_1 = Struct_1(!select(select(global1.a, select(global0.a, global1.a, global1.a.x), false & global1.a.x), global1.a, !vec4<bool>(false, global1.a.x, false, global0.a.x)), vec4<u32>(global1.b.x, firstLeadingBit(_wgslsmith_mult_u32(global1.b.x, 1u) ^ global1.b.x), _wgslsmith_dot_vec3_u32(~firstTrailingBit(global0.b.zyw), ~_wgslsmith_mult_vec3_u32(vec3<u32>(95034u, global1.b.x, 5952u), vec3<u32>(u_input.c, global1.b.x, u_input.b))), _wgslsmith_clamp_u32(~94042u, u_input.b, 5113u)));
    var var_2 = ~select(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, global1.b.x), global0.b.x), ~(~4294967295u)), var_1.b.wz >> (_wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.b), abs(global1.b.xw)) % vec2<u32>(32u)), select(select(global1.a.yx, vec2<bool>(true, global0.a.x), true), vec2<bool>(global1.a.x, global0.a.x), all(global1.a.wyx)));
    let var_3 = Struct_1(global1.a, var_1.b);
    var var_4 = Struct_1(vec4<bool>(!(_wgslsmith_mod_u32(22237u, 4294967295u) < global1.b.x), true, true, !all(select(vec3<bool>(true, false, global1.a.x), var_1.a.www, true))), vec4<u32>(0u, ~100931u, global1.b.x, var_1.b.x) | (~(~global0.b) << (countOneBits(_wgslsmith_div_vec4_u32(var_3.b, vec4<u32>(16891u, global0.b.x, 4294967295u, var_1.b.x))) % vec4<u32>(32u))));
    return Struct_1(select(select(var_4.a, global0.a, all(!vec4<bool>(var_4.a.x, true, var_3.a.x, var_1.a.x))), select(var_1.a, select(!vec4<bool>(global1.a.x, var_1.a.x, var_3.a.x, var_1.a.x), vec4<bool>(true, true, var_3.a.x, false), select(global0.a, var_4.a, var_1.a)), false), vec4<bool>(false && (var_4.a.x || global0.a.x), all(var_4.a.xwz), true, var_1.a.x)), global0.b);
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    global1 = Struct_1(vec4<bool>(global1.a.x, true, global1.a.x && global1.a.x, all(vec4<bool>(all(global1.a.xxy), any(global0.a.yyx), all(global1.a.wy), true))), ~_wgslsmith_div_vec4_u32(global1.b, global1.b));
    var var_0 = u_input.a;
    let var_1 = arg_0.x;
    var var_2 = func_2();
    var_2 = func_2();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)) * _wgslsmith_f_op_f32(-2000f - _wgslsmith_div_f32(1379f, 1000f))), 1199f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, -208f)), _wgslsmith_f_op_f32(f32(-1f) * -807f))), -819f) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(539f - 599f), _wgslsmith_f_op_f32(-1221f * 346f), -569f, _wgslsmith_f_op_f32(floor(-219f)))))));
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global0 = func_2();
    let var_0 = -vec2<i32>(-4880i, ~firstTrailingBit(1i) | abs(_wgslsmith_div_i32(10453i, -2147483647i)));
    global1 = Struct_1(select(!vec4<bool>(all(global1.a), global1.a.x, 4195i < u_input.a.x, true), vec4<bool>(!global0.a.x, global0.a.x, func_2().a.x, _wgslsmith_f_op_f32(-859f - 507f) > _wgslsmith_div_f32(-401f, arg_0.x)), !(!vec4<bool>(true, global0.a.x, true, true))), vec4<u32>(u_input.c, max(7616u, u_input.b ^ 2755u) << (min(~3854u, ~0u) % 32u), min(u_input.c, ~u_input.c), abs(46839u)));
    var var_1 = _wgslsmith_mod_vec2_i32(~(var_0 | vec2<i32>(_wgslsmith_clamp_i32(-10793i, -2147483647i, var_0.x), -u_input.a.x)), -select(vec2<i32>(u_input.a.x, var_0.x), u_input.a, true | all(vec4<bool>(true, true, global1.a.x, global1.a.x))));
    var var_2 = Struct_1(select(global1.a, !select(vec4<bool>(global1.a.x, true, global1.a.x, false), func_2().a, true && global1.a.x), false), abs(~global1.b | vec4<u32>(u_input.b, ~global1.b.x, global0.b.x, 33502u)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> bool {
    let var_0 = -353f;
    let var_1 = func_2().a.yw;
    let var_2 = arg_0;
    global0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(394f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0))))), _wgslsmith_f_op_f32(-1527f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1463f + var_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1316f)));
    let var_3 = vec4<f32>(-346f, _wgslsmith_f_op_f32(trunc(148f)), -486f, -294f);
    return all(func_4(_wgslsmith_f_op_vec4_f32(-var_3)).a.wwz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_5(func_4(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(u_input.a.x, 0i, u_input.a.x)))), 16738i, func_4(vec4<f32>(100f, 472f, -2422f, -1000f)).a.yyw));
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_div_vec3_u32(abs(global1.b.zwy), vec3<u32>(43246u, global1.b.x | _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.x, 0u, global1.b.x), firstTrailingBit(global1.b.xzz)), _wgslsmith_sub_u32(u_input.b, 115568u)));
    let var_3 = Struct_1(select(global0.a, vec4<bool>(all(!vec3<bool>(var_0, var_0, true)), 1i <= -u_input.a.x, !func_5(Struct_1(vec4<bool>(global0.a.x, true, true, true), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 4294967295u)), 1i, global0.a.yzw), func_5(Struct_1(vec4<bool>(global0.a.x, true, global1.a.x, global1.a.x), vec4<u32>(u_input.b, 31549u, 190u, var_2.x)), 0i, func_2().a.yyw)), select(select(vec4<bool>(false, var_0, global0.a.x, false), vec4<bool>(var_0, true, global0.a.x, false), true), !vec4<bool>(false, global1.a.x, false, global0.a.x), func_2().a)), func_2().b);
    let var_4 = -vec4<i32>(firstLeadingBit(-u_input.a.x | abs(-2147483647i)), reverseBits(1i | (-39554i | u_input.a.x)), ~27709i, u_input.a.x >> (~35533u % 32u));
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_i32(var_4.wxz, reverseBits(var_4.xyw)), _wgslsmith_f_op_f32(ceil(1027f)), global0.b.wz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(1612f - 419f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-343f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1637f))));
}

