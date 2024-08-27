struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(801f, 753f), _wgslsmith_f_op_f32(min(-211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(ceil(495f)), all(vec2<bool>(true, true))))))), arg_0.a.x));
    let var_1 = Struct_3(Struct_1(-4300i), 0i, arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0, -145f)))), _wgslsmith_f_op_f32(var_0 * arg_3.x))), _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = Struct_5(arg_2.a, ~vec3<u32>(4294967295u, countOneBits(~arg_2.b.x), 1u), 1u, true, _wgslsmith_mod_vec2_i32(max(-arg_2.e, vec2<i32>(countOneBits(var_1.b), arg_1.x)), vec2<i32>(39507i, -28352i)));
    let var_3 = select(!vec3<bool>(true, true, var_2.a.a.x), select(vec3<bool>(true, false, false), vec3<bool>(!(var_1.d >= -641f), any(vec3<bool>(false, true, true)) & true, !var_2.a.a.x), select(vec3<bool>(arg_2.a.a.x | arg_2.d, true, all(vec2<bool>(var_1.c, var_2.a.a.x))), vec3<bool>(true, any(vec3<bool>(arg_2.d, false, var_1.c)), 46396i >= arg_0.d.a), false)), true);
    let var_4 = arg_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.d)) - arg_3.x), var_0)) * var_0));
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(max(-1549f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1488f, 137f) + -2090f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-268f, 1202f, var_0, var_0) - vec4<f32>(var_0, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1116f, var_0, -628f, 1419f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 283f, var_0, var_0)), vec4<f32>(2762f, var_0, -1771f, var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0, var_0, true)), -248f, _wgslsmith_f_op_f32(floor(1067f)), var_0))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, false), Struct_1(-17645i), 5835i, Struct_1(u_input.a), ~1u), ~firstLeadingBit(vec4<i32>(-1i, u_input.a, u_input.a, -15978i)), Struct_5(Struct_2(vec2<bool>(true, false), Struct_1(1i), 15558i, Struct_1(45762i), 1u), vec3<u32>(3484u, 4294967295u, 0u), ~17981u, true, vec2<i32>(u_input.a, -43565i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1184f, 782f, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(942f, -1001f, 669f) * vec3<f32>(var_0, var_0, var_0))))), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-782f, var_0))), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, -743f, _wgslsmith_f_op_f32(ceil(-647f)), 1116f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, -591f, var_0, -1540f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(729f, var_1.x, var_1.x, var_0), vec4<f32>(-118f, -526f, 1000f, var_1.x)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(791f, -921f, -1000f, -628f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1337f)), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, true), Struct_1(u_input.a), -2147483647i, Struct_1(u_input.a), 0u), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), Struct_5(Struct_2(vec2<bool>(true, true), Struct_1(u_input.a), -2147483647i, Struct_1(u_input.a), 1u), vec3<u32>(37866u, 0u, 4294967295u), 10171u, true, vec2<i32>(u_input.a, -2147483647i)), var_1.zxw)), -154f, _wgslsmith_f_op_f32(min(var_1.x, -273f))))));
    var var_3 = -(~vec4<i32>(~u_input.a, _wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a), u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a))) << ((reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) << (reverseBits(max(select(vec4<u32>(4294967295u, 1u, 16618u, 17718u), vec4<u32>(48732u, 75505u, 1u, 0u), true), vec4<u32>(0u, 1u, 12778u, 0u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_4 = any(select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true)));
    return Struct_5(Struct_2(vec2<bool>(true, false), Struct_1(_wgslsmith_add_i32(~var_3.x, ~var_3.x)), _wgslsmith_mod_i32(min(reverseBits(-28851i), reverseBits(16632i)), ~u_input.a), Struct_1(var_3.x), 1u), select(vec3<u32>(9768u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(65955u, 64447u, 0u, 1u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), 11808u), vec3<u32>(_wgslsmith_mod_u32(~51926u, _wgslsmith_sub_u32(4294967295u, 0u)), 1u | firstTrailingBit(14437u), reverseBits(~21394u)), true), ~abs(~(~73533u)), true & (select(true, true, true) & !select(false, true, true)), var_3.yw);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~(~(-72709i))), 1i, ~0i, var_1.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 20870i, select(var_0.e.x, 27058i, false), u_input.a) >> (vec4<u32>(reverseBits(var_0.c), 2714u, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(var_1.a.b.a | max(14169i, 0i), var_1.e.x | _wgslsmith_clamp_i32(-360i, -47096i, 0i), i32(-1i) * -var_1.e.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, var_1.a.d.a, -8442i, u_input.a), vec4<i32>(var_0.a.c, u_input.a, 50803i, var_1.e.x))))));
    var_1 = func_2();
    var var_3 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(select(~4385i, u_input.a, var_0.a.a.x != var_0.d), u_input.a >> ((var_1.c | var_1.c) % 32u), -17805i), firstTrailingBit((vec3<i32>(-35209i, var_0.e.x, var_1.e.x) >> (var_1.b % vec3<u32>(32u))) << (var_0.b % vec3<u32>(32u))), countOneBits(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_0.a.c, var_0.a.c, -7569i)), vec3<i32>(u_input.a, 2147483647i, -2147483647i))));
    return var_0.a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.e;
    let var_1 = _wgslsmith_sub_vec3_i32(select(_wgslsmith_add_vec3_i32(firstLeadingBit(min(vec3<i32>(arg_2.c, arg_2.c, u_input.a), vec3<i32>(arg_1.c, arg_3.a, -12838i))), ~(~vec3<i32>(-349i, 0i, arg_3.a))), vec3<i32>(~(1i << (arg_1.e % 32u)), u_input.a, arg_0.a.c | ~32156i), select(select(select(vec3<bool>(arg_1.a.x, arg_0.d, true), vec3<bool>(arg_1.a.x, arg_0.a.a.x, true), vec3<bool>(true, false, false)), !vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), -18934i < arg_2.c), !(!vec3<bool>(arg_2.a.x, arg_1.a.x, arg_2.a.x)), vec3<bool>(true, !arg_2.a.x, true))), vec3<i32>(-1i) * -max(vec3<i32>(2346i, arg_0.a.c, arg_1.c) >> (arg_0.b % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.a, 13920i, -1i), vec3<i32>(2147483647i, arg_1.d.a, -1i), vec3<i32>(arg_0.e.x, arg_0.e.x, arg_0.e.x))));
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(11840u, ~(abs(abs(4294967295u)) >> (countOneBits(1u) % 32u)));
    var_0 = vec2<u32>(4294967295u, var_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f), 1109f))));
    var var_2 = func_4(Struct_5(func_1(), countOneBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 19695u, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(var_0.x, 0u, 52835u), select(false, true, false))), 59875u, ~(u_input.a << (4294967295u % 32u)) >= -_wgslsmith_dot_vec2_i32(vec2<i32>(3327i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(~(-u_input.a), -u_input.a >> (1u % 32u))), Struct_2(vec2<bool>(true || (u_input.a >= -2147483647i), (1u == var_0.x) | true), Struct_1(~(~5143i)), ~select(-1i, -5528i, true) ^ u_input.a, func_2().a.d, 7349u), func_2().a, Struct_1(u_input.a));
    let var_3 = ~72645u;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, true), func_2().a.d, func_4(func_2(), func_1(), Struct_2(vec2<bool>(false, false), Struct_1(-1i), u_input.a, Struct_1(var_2.a), 3174u), func_2().a.d).a, func_1().d, 2845u), vec4<i32>(1i, u_input.a, var_2.a, _wgslsmith_div_i32(~var_2.a, ~0i)), func_2(), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1907f, -366f, -2337f) + vec3<f32>(275f, 537f, 194f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(731f, -1000f, -315f), vec3<f32>(-1117f, -925f, -981f))), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-202f, -1397f, -404f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-219f, 536f, 378f), vec3<f32>(923f, 527f, -2258f))), 1u == var_3)))), 1078f));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(912f + 1278f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(497f, -656f, true)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(-717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, true), Struct_1(34552i), u_input.a, Struct_1(53184i), 4294967295u), vec4<i32>(-79010i, u_input.a, u_input.a, var_2.a), Struct_5(Struct_2(vec2<bool>(false, false), Struct_1(var_2.a), 17712i, Struct_1(u_input.a), var_0.x), vec3<u32>(var_3, 2514u, 1u), 25207u, true, vec2<i32>(-1i, 2147483647i)), vec3<f32>(-781f, 717f, -600f)))))), _wgslsmith_f_op_f32(round(-1507f)), 1254f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(782f + 1206f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(362f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-912f - -1055f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1585f, 846f, true)))) * _wgslsmith_f_op_f32(ceil(-771f))));
}

