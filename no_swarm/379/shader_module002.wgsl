struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec3<u32>(1425u, 0u, 44243u)), 2147483647i, true, Struct_2(vec3<u32>(0u, 1u, 1u)), 68486u);

var<private> global1: vec2<f32> = vec2<f32>(443f, 771f);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: Struct_3 = Struct_3(Struct_2(vec3<u32>(1u, 0u, 116283u)), Struct_2(vec3<u32>(4294967295u, 39706u, 4294967295u)), vec4<f32>(-1762f, -256f, 423f, -1093f), Struct_1(40721i, vec3<bool>(true, true, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = !(!(abs(firstLeadingBit(-26713i)) != (arg_3.x | ~(-29276i))));
    let var_1 = !global3.d.b.x;
    var_0 = global0.c;
    var var_2 = Struct_4(true, Struct_3(global3.b, Struct_2(vec3<u32>(abs(43116u), 47161u, u_input.b.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c)))), global3.d), vec3<u32>(global0.e, global0.a.a.x, ~_wgslsmith_add_u32(global0.e, ~global3.b.a.x)), Struct_2(abs(global0.a.a)), false);
    var var_3 = firstTrailingBit(2147483647i);
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> i32 {
    global2 = global3.d.b.xz;
    global3 = Struct_3(Struct_2(u_input.b.wxw), arg_0, vec4<f32>(_wgslsmith_f_op_f32(1f - arg_1), arg_1, global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1160f) + _wgslsmith_f_op_f32(arg_1 - -577f))), global3.d);
    global2 = !global3.d.b.xx;
    let var_0 = true;
    let var_1 = global2.x;
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(-6757i, -2147483647i), ~(~(~(-2147483647i >> (0u % 32u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_5) -> Struct_4 {
    global0 = Struct_5(arg_2.d, func_4(Struct_2(firstTrailingBit(vec3<u32>(96189u, arg_1, arg_0.x))), _wgslsmith_f_op_f32(func_3(abs(u_input.a.x ^ arg_2.b), _wgslsmith_sub_vec3_i32(max(u_input.a, vec3<i32>(global3.d.a, -1i, -6476i)), vec3<i32>(arg_2.b, -38369i, arg_2.b)), Struct_1(1i, vec3<bool>(false, arg_2.c, false)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -1i, -50088i), vec3<i32>(global0.b, arg_2.b, -1i), vec3<i32>(u_input.a.x, arg_2.b, global3.d.a))))), true, Struct_2(min(max(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.a.a.x, arg_2.d.a.x, u_input.b.x), arg_0.yzy), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 0u, 1u), vec3<u32>(25619u, global3.b.a.x, 108602u), global3.a.a)), ~global0.a.a >> (firstTrailingBit(vec3<u32>(arg_2.d.a.x, arg_0.x, 2564u)) % vec3<u32>(32u)))), ~(~min(global3.a.a.x, 1u)));
    global1 = vec2<f32>(-578f, -1000f);
    let var_0 = arg_2.c;
    global3 = Struct_3(global3.b, global0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1592f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1598f, 213f) - global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.b, vec3<i32>(2147483647i, 0i, -10168i), Struct_1(-1i, global3.d.b), u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) - -597f)) * global3.c), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, global0.b), 25337i), global3.d.b));
    var var_1 = ~_wgslsmith_sub_u32(arg_1, arg_2.e);
    return Struct_4(true, Struct_3(Struct_2(vec3<u32>(select(15447u, 0u, true), ~4294967295u, 12050u)), Struct_2(~vec3<u32>(u_input.b.x, u_input.b.x, arg_1) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 1u, arg_1), vec3<u32>(u_input.b.x, 1u, arg_1), u_input.b.wyy) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global3.c.x, global3.c.x, -1000f), _wgslsmith_f_op_vec4_f32(-global3.c))))), global3.d), arg_2.a.a, Struct_2(abs(vec3<u32>(global0.d.a.x, ~arg_2.d.a.x, 1u))), global2.x);
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(9706u, _wgslsmith_mod_u32(~(global0.d.a.x ^ global0.d.a.x), _wgslsmith_mod_u32(arg_0.d.a.x ^ u_input.b.x, select(28170u, u_input.b.x, arg_0.a))), select(1u, u_input.b.x, global2.x)));
    let var_1 = arg_0;
    var var_2 = arg_0.b.d;
    var_2 = func_2(u_input.b, arg_0.d.a.x, Struct_5(arg_0.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(-13443i, var_2.a), 39071i), 0i, 30993i), var_2.b.x, var_1.d, firstTrailingBit(~(~1u)))).b.d;
    global0 = Struct_5(var_1.d, ~(-2147483647i), true, var_0, ~0u);
    return Struct_3(func_2(~firstTrailingBit(reverseBits(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 0u))), ~global3.a.a.x, Struct_5(func_2(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), abs(1u), Struct_5(var_1.b.b, global3.d.a, global3.d.b.x, Struct_2(global3.b.a), 1u)).d, 1i, arg_1, Struct_2(vec3<u32>(4294967295u, 24707u, 9099u)), global3.a.a.x)).d, Struct_2(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~global3.b.a, select(vec3<u32>(66019u, u_input.b.x, 4294967295u), vec3<u32>(global0.a.a.x, 0u, 104314u), false)), ~(~vec3<u32>(58746u, 0u, 4294967295u)))), vec4<f32>(-1819f, -648f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.x, global3.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1142f, global1.x)))), global3.d);
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = func_5(func_2(u_input.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, global0.d.a.x), u_input.b.zxx), Struct_5(Struct_2(_wgslsmith_clamp_vec3_u32(global0.d.a, global3.b.a, u_input.b.wxx)), global3.d.a, any(select(global3.d.b.yz, vec2<bool>(false, true), global0.c)), Struct_2(~vec3<u32>(0u, 1u, 36454u)), ~(~1u))), !global3.d.b.x);
    var var_1 = select(vec2<bool>(global0.c, var_0.d.b.x | all(vec4<bool>(true, true, true, true))), !global3.d.b.yx, !(!var_0.d.b.zy));
    let var_2 = select(global3.b.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.b), u_input.b), reverseBits(u_input.b)), false);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)), func_2(vec4<u32>(~(~global3.b.a.x), 13844u, var_2 >> (var_0.a.a.x % 32u), _wgslsmith_div_u32(global0.a.a.x, var_0.b.a.x)), 63398u, Struct_5(func_5(Struct_4(false, var_0, vec3<u32>(var_0.b.a.x, 4294967295u, u_input.b.x), global0.a, global3.d.b.x), global0.b > global3.d.a).b, _wgslsmith_sub_i32(-global3.d.a, ~var_0.d.a), !global2.x, Struct_2(global3.a.a), ~_wgslsmith_div_u32(var_2, var_2))).b.c.x);
    var var_4 = global0.d.a;
    return global3.a;
}

fn func_6(arg_0: Struct_4, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_1(global3.d.a, vec3<bool>(any(func_5(Struct_4(global0.c, Struct_3(arg_0.b.b, global0.d, vec4<f32>(1754f, -1691f, 984f, 533f), Struct_1(global0.b, vec3<bool>(true, global3.d.b.x, global2.x))), vec3<u32>(818u, arg_0.c.x, 4294967295u), Struct_2(global3.b.a), true), true).d.b.yx), arg_0.e, true));
    var var_1 = arg_0.b;
    var var_2 = vec4<i32>(-19006i, ~global0.b, -global3.d.a, ~(-30062i) | var_1.d.a) & -(~reverseBits(select(vec4<i32>(63321i, 0i, u_input.a.x, 10468i), vec4<i32>(global0.b, var_1.d.a, 2147483647i, -70534i), true)));
    var var_3 = ~_wgslsmith_clamp_u32(func_5(func_2(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x, 1u), vec2<u32>(49627u, arg_0.d.a.x)), Struct_5(Struct_2(vec3<u32>(global3.b.a.x, u_input.b.x, 4859u)), global3.d.a, arg_1, global0.a, 0u)), true).a.a.x, ~5034u, ~(global0.a.a.x ^ var_1.a.a.x));
    var_1 = arg_0.b;
    return Struct_3(global3.a, global0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-220f, global1.x, -1158f, 881f) - vec4<f32>(var_1.c.x, 152f, global1.x, 651f)), global3.c, select(vec4<bool>(arg_0.e, global0.c, false, var_1.d.b.x), vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(true, false, var_0.b.x, true)))), arg_0.b.c) * _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(-arg_0.b.c))), func_2(~select(~vec4<u32>(arg_0.b.b.a.x, 1u, u_input.b.x, 1u), vec4<u32>(var_1.a.a.x, 1u, global3.a.a.x, u_input.b.x), func_2(u_input.b, arg_0.d.a.x, Struct_5(Struct_2(u_input.b.xyz), 22369i, true, global0.a, global3.b.a.x)).b.d.b.x), _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.a.a.x, global0.e) >> (func_1(vec4<f32>(342f, -1000f, arg_0.b.c.x, 179f)).a.x % 32u), ~(var_1.b.a.x & global0.a.a.x)), Struct_5(Struct_2(u_input.b.zwy), -(~global0.b), var_1.d.b.x, global0.d, ~(~var_1.a.a.x))).b.d);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(Struct_4(!global2.x, Struct_3(func_1(_wgslsmith_f_op_vec4_f32(select(global3.c, vec4<f32>(1019f, global1.x, -362f, -319f), true))), global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) + vec4<f32>(-1000f, -126f, -915f, global1.x)), Struct_1(max(global3.d.a, global0.b), !global3.d.b)), global3.b.a, Struct_2(func_1(global3.c).a), func_5(Struct_4(true, func_2(u_input.b, global3.b.a.x, Struct_5(global0.d, global3.d.a, global2.x, Struct_2(u_input.b.zww), 48340u)).b, _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.e, 4294967295u), global3.b.a), Struct_2(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), true), !(u_input.b.x <= global0.d.a.x)).d.b.x), func_2(_wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b, !global2.x), u_input.b | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global3.a.a.x, global0.d.a.x), vec4<u32>(24637u, 2807u, 4294967295u, 11263u))), select(4294967295u, _wgslsmith_sub_u32(global0.a.a.x, u_input.b.x) | global0.d.a.x, false & select(global3.d.b.x, global2.x, global2.x)), Struct_5(Struct_2(select(vec3<u32>(0u, global0.e, 0u), global0.a.a, vec3<bool>(false, true, global2.x))), 2147483647i, true, global3.b, max(0u << (global3.b.a.x % 32u), ~1u))).e, global1.x);
    var var_0 = global2.x;
    let var_1 = ~(vec4<i32>(1i, -1155i, global0.b, global3.d.a) >> (vec4<u32>(reverseBits(global3.b.a.x) | func_5(Struct_4(global2.x, Struct_3(global3.a, Struct_2(vec3<u32>(global0.a.a.x, u_input.b.x, u_input.b.x)), vec4<f32>(-468f, 2227f, global1.x, 572f), Struct_1(19305i, vec3<bool>(global2.x, true, false))), global3.a.a, global0.a, global0.c), true).b.a.x, ~42526u, _wgslsmith_dot_vec3_u32(~global3.a.a, abs(vec3<u32>(u_input.b.x, 60743u, u_input.b.x))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(33902u, 4662u), vec2<u32>(77579u, 15684u))) % vec4<u32>(32u)));
    var var_2 = global3.b.a.x;
    let var_3 = Struct_2(global0.d.a);
    let var_4 = ~13653u;
    var_2 = 0u | _wgslsmith_add_u32(abs(max(1u, ~0u)), min(_wgslsmith_mult_u32(~global0.a.a.x, global0.e), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 4294967295u, global3.b.a.x), global0.d.a.x)));
    let var_5 = _wgslsmith_f_op_vec2_f32(ceil(func_2(abs(u_input.b), _wgslsmith_div_u32(func_6(Struct_4(global0.c, Struct_3(global0.d, Struct_2(vec3<u32>(global0.d.a.x, 0u, var_4)), vec4<f32>(1752f, global3.c.x, 1951f, -3244f), global3.d), vec3<u32>(global3.b.a.x, u_input.b.x, 0u), global3.b, global0.c), global0.c, global3.c.x).b.a.x | ~global3.a.a.x, _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(35172u))), Struct_5(func_2(~vec4<u32>(0u, 5903u, 1u, global3.a.a.x), 4773u, Struct_5(global0.d, 1i, true, Struct_2(vec3<u32>(27028u, var_3.a.x, 65621u)), 1u)).d, 1i, global3.d.b.x, func_5(func_2(vec4<u32>(68435u, 0u, global3.a.a.x, 7005u), u_input.b.x, Struct_5(Struct_2(vec3<u32>(0u, global0.d.a.x, 34975u)), global3.d.a, true, Struct_2(global3.a.a), var_4)), true).a, abs(select(65547u, 32478u, global0.c)))).b.c.wz));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.a.x, (u_input.a.x << (0u % 32u)) >> (func_2(vec4<u32>(u_input.b.x, u_input.b.x, global3.a.a.x, 0u), 35019u, Struct_5(Struct_2(vec3<u32>(0u, 4294967295u, u_input.b.x)), u_input.a.x, false, Struct_2(vec3<u32>(global0.a.a.x, var_3.a.x, global3.b.a.x)), 16032u)).c.x % 32u), 2147483647i) << (vec3<u32>(global3.a.a.x, u_input.b.x, 1u) % vec3<u32>(32u)), global1.x);
}

