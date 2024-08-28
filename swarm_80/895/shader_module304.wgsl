struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, true));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -418f))));
    var var_1 = Struct_1(!global0.a);
    var var_2 = Struct_2(var_0.a);
    global0 = Struct_1(global0.a);
    var var_3 = Struct_1(vec4<bool>(true | any(!vec2<bool>(arg_2.x, true)), any(!vec3<bool>(true, true, global0.a.x)), (4294967295u >= u_input.b.x) || !all(vec2<bool>(global1.a.x, global1.a.x)), any(select(vec2<bool>(true, global1.a.x), select(global1.a.yx, vec2<bool>(var_1.a.x, false), false), false))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, arg_0.x, -1071f, 1121f), vec4<f32>(1224f, 302f, var_0.a, 766f)))) * vec4<f32>(arg_0.x, var_0.a, 579f, _wgslsmith_f_op_f32(arg_0.x * var_2.a))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_2.a, 188f, var_2.a) * vec4<f32>(-1267f, -522f, _wgslsmith_div_f32(2070f, 175f), _wgslsmith_f_op_f32(floor(arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.a, var_0.a, var_0.a) * vec4<f32>(934f, -804f, -860f, 1792f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -2473f, var_2.a, arg_0.x) * vec4<f32>(1093f, 646f, -1769f, 2274f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -278f, 1531f, var_2.a))), var_1.a)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = Struct_1(global1.a);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, -888f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 2115f, var_0.a, var_0.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-576f, 1000f, -633f, 407f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(498f, var_0.a, var_0.a), vec3<f32>(var_0.a, -1802f, var_0.a))), !global0.a.x, vec4<bool>(false, global0.a.x, !global1.a.x, global1.a.x & global1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -648f), var_0.a))));
    var var_2 = ~u_input.b;
    let var_3 = 1u;
    return Struct_2(var_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, 57033u, 4294967295u), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(~u_input.b.x, 62561u, u_input.b.x, ~(~4294967295u)), select(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x) & select(vec4<u32>(55463u, 15790u, 10331u, 17549u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<bool>(true, true, arg_3, global1.a.x)), vec4<u32>(select(1u, 15399u, arg_3), u_input.b.x, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 13371u)), !all(vec2<bool>(arg_1.a.x, false)))), ~(~countOneBits(vec4<u32>(u_input.b.x, 2063u, 39898u, 1u))) | ~(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) << (vec4<u32>(u_input.b.x, 70075u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
    var_0 = countOneBits(u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2010f, 1378f, arg_2.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), -1257f, arg_2.a) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2.a, -1000f, 337f), vec3<f32>(arg_2.a, -1144f, -338f))))), _wgslsmith_f_op_f32(f32(-1f) * -902f) <= _wgslsmith_f_op_f32(exp2(arg_2.a)), vec4<bool>(arg_1.a.x, all(!global1.a.xyw), arg_3, true))).zzz;
    var_0 = reverseBits(u_input.b.x);
    global1 = Struct_1(!select(global1.a, select(vec4<bool>(true, arg_1.a.x, false, arg_3), global0.a, select(arg_1.a, vec4<bool>(global0.a.x, false, true, false), global1.a)), !select(vec4<bool>(arg_3, global1.a.x, false, false), vec4<bool>(true, false, true, arg_1.a.x), true)));
    return Struct_1(arg_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_4(vec4<i32>(countOneBits(0i), max(_wgslsmith_sub_i32(_wgslsmith_div_i32(14460i, -29968i), u_input.a.x), i32(-1i) * -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2317i & u_input.a.x, abs(30219i)), -(~u_input.a)), firstLeadingBit(27002i)), arg_0, arg_3, func_4(~vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 2147483647i), -u_input.a.x, 0i), arg_2, arg_3, true).a.x);
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(-func_2(-43388i).a) < arg_1.x;
    global0 = arg_0;
    var var_2 = select(vec3<bool>(false, true, u_input.a.x <= (select(u_input.a.x, -1i, arg_2.a.x) ^ 44689i)), arg_0.a.yxw, global1.a.x);
    return var_0;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> vec3<bool> {
    let var_0 = func_5(func_4(reverseBits(vec4<i32>(1i, 1i, min(-2538i, 1i), 1i)), Struct_1(global0.a), func_2(-_wgslsmith_add_i32(arg_2, u_input.a.x)), !((-360f > arg_0) || global1.a.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(474f)) - _wgslsmith_f_op_f32(arg_0 - arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-792f, 479f) - vec2<f32>(1000f, arg_3))))))), Struct_1(global1.a), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1330f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1240f)) + _wgslsmith_f_op_f32(-324f * arg_3))));
    return select(func_4(vec4<i32>(_wgslsmith_div_i32(max(u_input.a.x, u_input.a.x), arg_2), 1i, u_input.a.x, (u_input.a.x ^ 761i) & 1i), Struct_1(vec4<bool>(u_input.a.x <= 0i, false, global0.a.x, select(global1.a.x, global0.a.x, false))), Struct_2(905f), true).a.wxx, vec3<bool>(true, true, true | any(global1.a.xw)), func_4(vec4<i32>(1i, arg_2, arg_2, 1i), func_4(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, u_input.a.x, arg_2, arg_2)), vec4<i32>(0i, u_input.a.x, 64370i, u_input.a.x)), Struct_1(vec4<bool>(false, true, global0.a.x, true)), Struct_2(1000f), global0.a.x), Struct_2(-120f), all(!global0.a)).a.wzw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!global1.a.wyx, vec3<bool>((1i << (u_input.b.x % 32u)) != _wgslsmith_div_i32(abs(u_input.a.x), u_input.a.x), _wgslsmith_mult_u32(max(1u, 15699u), ~4294967295u) >= reverseBits(_wgslsmith_mod_u32(u_input.b.x, 1u)), global0.a.x), select(select(func_1(-462f, global0.a, ~u_input.a.x, -1435f), global1.a.yxw, !global0.a.x), !global0.a.yzw, func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-591f + -1920f))), vec4<bool>(true, true & global1.a.x, true, false), 1i, _wgslsmith_f_op_f32(max(-258f, _wgslsmith_f_op_f32(step(545f, 1471f)))))));
    let var_1 = Struct_1(!vec4<bool>(false, (u_input.b.x | 4294967295u) == ~0u, true, !global0.a.x | (u_input.b.x > u_input.b.x)));
    global1 = var_1;
    var var_2 = !(!all(var_1.a.wyy));
    var var_3 = select(8812u, ~(~4294967295u), all(global1.a.wy) && !var_1.a.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -732f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a.x, 1i, u_input.a.x));
}

