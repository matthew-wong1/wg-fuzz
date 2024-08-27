struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = Struct_1(countOneBits(1i & abs(_wgslsmith_clamp_i32(12933i, 60405i, 51372i))), any(vec4<bool>(true, true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)), true)), select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, any(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false))), vec4<bool>(true, true, true, true)), arg_0.x);
    var var_1 = Struct_1(_wgslsmith_sub_i32(reverseBits(-34897i), -3903i), var_0.c.x, var_0.c, ~(abs(0u) | (0u >> (_wgslsmith_mult_u32(arg_0.x, 21421u) % 32u))));
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-var_1.a >> (101387u % 32u), var_0.a, -((var_0.a & var_0.a) | min(33944i, 3329i)), -26609i), vec4<i32>(_wgslsmith_clamp_i32(var_1.a, _wgslsmith_mod_i32(-3163i, -1i), 0i), -30024i, -35104i, 0i));
    var var_3 = Struct_1(countOneBits(37447i), var_0.b, var_0.c, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(121417u, 1u, var_1.d, var_0.d), min(vec4<u32>(arg_0.x, var_1.d, u_input.a.x, 1u), vec4<u32>(21734u, var_1.d, arg_0.x, 66186u))), var_0.d));
    var var_4 = Struct_1(~(var_1.a & ~(~var_3.a)), false, !(!(!var_0.c)), 0u);
    return ~reverseBits(_wgslsmith_clamp_vec3_i32(-(~var_2.wwx), ~(~var_2.xxx), vec3<i32>(26358i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, var_1.a), vec3<i32>(2147483647i, -1i, var_1.a)), ~2147483647i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~(-reverseBits(vec2<i32>(-52195i, 22941i)) | (vec2<i32>(-46950i, -9392i) << (u_input.a % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_dot_vec3_i32(-func_3(vec3<u32>(1u, 1u, u_input.a.x)), func_3(vec3<u32>(arg_2.x, 1u, 59294u)) & vec3<i32>(-var_0.x, var_0.x, -1i)) >> (u_input.a.x % 32u);
    var var_2 = 4294967295u;
    let var_3 = Struct_1(~var_1, arg_0.x, !select(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, true, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), all(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(true, false, arg_0.x), arg_0.x))), ~4294967295u);
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1152f + -350f) - arg_1), arg_3.x, _wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -358f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1406f + arg_3.x)))));
    return Struct_1(i32(-1i) * -14816i, !var_3.b, var_3.c, max(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(0u, 25558u, u_input.a.x, var_3.d))) << (~u_input.a.x % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = !var_0.c.yyz;
    var var_2 = var_0;
    var_2 = func_2(arg_1.c.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), ~(~(~vec4<u32>(var_0.d, u_input.a.x, arg_0.d, arg_1.d) & ~vec4<u32>(var_2.d, 56500u, var_0.d, var_0.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2358f)), _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1899f + _wgslsmith_f_op_f32(1896f + arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -744f, arg_2, -1000f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, arg_2, -799f, arg_2)))))));
    var var_3 = Struct_1(abs(1i), !func_2(select(!arg_1.c.xz, var_2.c.xx, !arg_0.c.x), _wgslsmith_f_op_f32(trunc(-503f)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, 30262u, arg_1.d, u_input.a.x)), ~vec4<u32>(var_0.d, var_2.d, var_2.d, arg_1.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -195f, 203f, arg_2) - vec4<f32>(arg_2, -1791f, arg_2, 1270f))))).b, var_2.c, ~(~(var_0.d ^ abs(6200u))));
    return func_2(vec2<bool>(!var_2.c.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + -542f)), ~(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, arg_0.d, arg_0.d, arg_1.d)), vec4<u32>(62061u, 4294967295u, var_2.d, var_2.d), ~vec4<u32>(22844u, var_2.d, arg_1.d, 0u)) | ~(vec4<u32>(1u, 42022u, arg_0.d, arg_0.d) ^ vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, var_3.d))), vec4<f32>(_wgslsmith_div_f32(-1000f, arg_2), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))), arg_2, arg_0.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)))), 397f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = firstLeadingBit(vec3<u32>(abs(13301u << (~arg_0.d % 32u)), abs(arg_1.d), _wgslsmith_sub_u32(var_0.d, ~1u)));
    var var_2 = var_0.c;
    var_2 = !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1086f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -761f))), func_1(var_0, func_1(Struct_1(arg_1.a, var_2.x, var_0.c, 4294967295u), func_1(arg_1, Struct_1(var_0.a, true, var_0.c, 73749u), -1504f), _wgslsmith_f_op_f32(step(209f, 570f))), 1996f).b, !select(any(var_0.c), !arg_0.b, true), true);
    var_1 = ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(~vec3<u32>(34357u, 1u, arg_1.d)), vec3<u32>(_wgslsmith_mult_u32(24392u, arg_0.d), arg_1.d, 3343u)), vec3<u32>(~(arg_1.d & u_input.a.x), 1u ^ reverseBits(arg_0.d), arg_0.d));
    return (-_wgslsmith_div_i32(-27805i, 30376i) == _wgslsmith_clamp_i32(-38919i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-25299i, arg_1.a, arg_0.a), vec3<i32>(-1i, arg_0.a, arg_1.a)), _wgslsmith_mod_i32(var_0.a, countOneBits(0i)))) && false;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = vec2<i32>(max(_wgslsmith_mult_i32(arg_1, arg_0.a), arg_0.a), abs(arg_1 | -(arg_0.a ^ arg_1)));
    var_0 = ~vec2<i32>(func_1(arg_0, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f))))).a, -1i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-259f, -303f))))), -288f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f + -934f))), _wgslsmith_f_op_f32(1888f * _wgslsmith_f_op_f32(abs(-1007f))))), -876f);
    var var_2 = vec4<bool>(arg_2.x != !all(vec3<bool>(true, arg_2.x, false)), arg_0.b || false, arg_2.x, true);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), -498f), var_1.x, any(vec2<bool>(false, true)))))));
    return func_2(vec2<bool>(true, _wgslsmith_f_op_f32(-var_1.x) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x))), -1094f, ~countOneBits(vec4<u32>(1u, u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.d, 36215u)), 69009u)), _wgslsmith_f_op_vec4_f32(-var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(1i, true, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), any(vec3<bool>(false, false, true))), vec4<bool>(true, true, true, true), true & all(vec4<bool>(true, true, true, false))), 38642u), 1i, !vec2<bool>(false, func_4(func_1(Struct_1(-14577i, false, vec4<bool>(false, true, false, false), 70735u), Struct_1(1i, true, vec4<bool>(true, true, false, false), 18414u), -781f), func_2(vec2<bool>(false, false), -355f, vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<f32>(-1599f, -410f, 523f, -400f)))), 62138u >> (~u_input.a.x % 32u));
    var_0 = Struct_1(var_0.a, 1125f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(415f)) * _wgslsmith_f_op_f32(floor(221f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(870f, 282f) - _wgslsmith_div_f32(1062f, 2340f))), var_0.c, ~(~_wgslsmith_dot_vec2_u32(u_input.a ^ u_input.a, vec2<u32>(u_input.a.x, 32010u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, -657f))), vec2<f32>(-486f, _wgslsmith_f_op_f32(1243f * 1814f))))))));
    var_0 = func_1(func_1(Struct_1(var_0.a, false, !vec4<bool>(var_0.b, var_0.c.x, true, false), ~(var_0.d >> (40507u % 32u))), Struct_1(i32(-1i) * -2147483647i, var_0.b, !select(vec4<bool>(var_0.c.x, true, true, false), var_0.c, var_0.c), u_input.a.x), _wgslsmith_f_op_f32(1065f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) + 960f))), func_5(func_2(func_1(Struct_1(2147483647i, var_0.c.x, vec4<bool>(false, var_0.c.x, var_0.b, false), var_0.d), Struct_1(var_0.a, false, vec4<bool>(var_0.c.x, var_0.c.x, true, false), u_input.a.x), 698f).c.wy, var_1.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, var_0.d, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(var_0.d, var_0.d, u_input.a.x, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 924f, var_1.x, var_1.x))))), _wgslsmith_mod_i32(max(var_0.a, -16382i << (var_0.d % 32u)), -(i32(-1i) * -2147483647i)), var_0.c.xw, 23295u), _wgslsmith_f_op_f32(-var_1.x));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -220f)) - var_1.x) == _wgslsmith_f_op_f32(max(-1380f, 1310f)), func_2(vec2<bool>(!(!var_0.b), true), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_0.d, 51964u, var_0.d, var_0.d)), select(vec4<u32>(u_input.a.x, 6233u, 1u, var_0.d), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.d, u_input.a.x, 0u, 4294967295u), vec4<u32>(1u, u_input.a.x, 64537u, var_0.d)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1011f, 192f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))).c, var_0.d);
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_1.x, var_1.x, -1781f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 720f, var_1.x, -713f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 404f, var_1.x, 171f))))))));
}

