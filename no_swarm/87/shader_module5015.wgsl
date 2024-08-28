struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(1750f, _wgslsmith_f_op_f32(step(989f, -440f))), -2138f), _wgslsmith_f_op_f32(trunc(-130f)))), -1394f);
    let var_1 = Struct_2(max(firstTrailingBit(vec2<u32>(~0u, 0u)), vec2<u32>(abs(u_input.a << (u_input.a % 32u)), ~u_input.a | 19145u)), var_0, 90752i);
    let var_2 = Struct_4(var_1.b, Struct_1(select(vec4<bool>(false, true, true, all(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(var_0))), var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-920f * var_0))), 1237f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, var_0, -623f, var_0) * vec4<f32>(var_0, 155f, -100f, var_0)), vec4<f32>(var_0, var_1.b, var_1.b, var_0), any(vec4<bool>(false, true, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1094f, var_0, var_1.b, var_0) + vec4<f32>(-577f, 1151f, var_0, var_0))))), Struct_2(var_1.a, -1126f, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(-2849i), var_1.c, min(var_1.c, 1i), -7216i), select(abs(vec4<i32>(-20790i, var_1.c, -2147483647i, var_1.c)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 6805i, 0i, 1i), vec4<i32>(var_1.c, 0i, var_1.c, -1i)), vec4<bool>(true, true, true, true)))), vec3<bool>(any(vec3<bool>(true, any(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)))), true | all(vec3<bool>(true, true, true)), (i32(-1i) * -var_1.c) != -var_1.c));
    var var_3 = false;
    var_3 = var_2.b.a.x;
    return !(countOneBits(firstTrailingBit(~var_2.d.a.x)) <= 1u);
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = select(arg_0.d.wwy, min(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~arg_0.d.xxw, _wgslsmith_div_vec3_u32(arg_0.d.yxy, vec3<u32>(arg_0.e.a.x, 4294967295u, u_input.a))), arg_0.d.wzw >> (arg_0.d.xyy % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(arg_0.d.x), u_input.a, ~13758u), firstLeadingBit(vec3<u32>(0u, arg_0.d.x, 26159u)))), select(!vec3<bool>(arg_0.b.x, -1086f <= arg_0.a, select(arg_0.b.x, false, false)), vec3<bool>(all(vec2<bool>(arg_0.b.x, arg_0.b.x)), _wgslsmith_div_u32(91000u, 4294967295u) <= ~arg_0.e.a.x, func_3()), select(!(!vec3<bool>(true, true, arg_0.b.x)), vec3<bool>(all(vec4<bool>(arg_0.b.x, false, arg_0.b.x, arg_0.b.x)), arg_0.b.x, -1i != arg_0.e.c), !(!vec3<bool>(arg_0.b.x, false, false)))));
    let var_1 = arg_0.c;
    var var_2 = select(var_0.x, abs(min(~var_0.x, 1u)), false);
    var var_3 = arg_0.e;
    var_3 = arg_0.e;
    return arg_0.e.c << (~_wgslsmith_mod_u32(var_0.x, var_3.a.x) % 32u);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = ~vec3<i32>(-39449i, ~(-(~(-26617i))), ~(-71670i));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -155f), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), 1438f == arg_1.x), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), arg_0.x, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(21450u, 70135u), abs(_wgslsmith_sub_u32(1u, u_input.a)), _wgslsmith_sub_u32(u_input.a, abs(0u))), vec4<u32>(select(_wgslsmith_mult_u32(11727u, u_input.a), 27146u, all(vec3<bool>(true, false, false))), u_input.a | u_input.a, abs(~11274u), firstLeadingBit(~0u))), Struct_2(~abs(~vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1244f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.x)))))), arg_0.x));
    var var_2 = !vec3<bool>(var_1.b.x, true && all(!vec4<bool>(false, var_1.b.x, true, true)), all(select(select(vec4<bool>(false, false, var_1.b.x, true), vec4<bool>(false, false, false, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true)), select(vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), var_1.b.x), select(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, false, true, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x)))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 951f), var_1.a)) - arg_1.x), !(!select(select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), var_2.zz), select(var_1.b, vec2<bool>(var_2.x, var_2.x), var_2.yz), false)), ~(i32(-1i) * -400i), vec4<u32>(~_wgslsmith_dot_vec2_u32(~var_1.e.a, vec2<u32>(1u, u_input.a)), u_input.a & abs(14878u), _wgslsmith_add_u32(var_1.e.a.x, countOneBits(firstLeadingBit(21822u))), 77421u), Struct_2(countOneBits(max(var_1.d.wz, ~var_1.d.zw)), -830f, i32(-1i) * -2147483647i));
    let var_4 = u_input.a;
    return Struct_1(vec4<bool>(false, all(select(vec4<bool>(true, true, var_3.b.x, false), vec4<bool>(true, var_3.b.x, var_1.b.x, true), !var_3.b.x)), true, select(any(select(vec3<bool>(var_3.b.x, var_1.b.x, false), vec3<bool>(true, false, var_3.b.x), var_3.b.x)), (-502f <= var_1.e.b) | (2147483647i < var_3.e.c), true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = func_4(vec2<i32>(~(-2147483647i), ~(func_2(Struct_3(-367f, arg_1.b, -1i, arg_1.d, arg_1.e)) | 23552i)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1054f), -1575f, arg_1.a));
    var_0 = func_4(~vec2<i32>(0i, -arg_2.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e.b, 1226f) - arg_1.e.b) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.e.b, 1766f))), arg_1.a, -325f, 130f));
    var_0 = Struct_1(vec4<bool>(arg_2.b < -553f, arg_1.b.x, !all(var_0.a.ywx), -_wgslsmith_sub_i32(arg_1.e.c, -13842i) != (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e.c, -1i), vec2<i32>(arg_2.c, -13472i)) << (4294967295u % 32u))));
    var var_1 = Struct_4(arg_1.a, Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, arg_1.a, -866f, arg_2.b), vec4<f32>(arg_2.b, arg_1.a, arg_2.b, -898f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.b, 1468f, arg_1.e.b, -518f)))), vec4<f32>(arg_1.a, -908f, _wgslsmith_f_op_f32(3202f + arg_1.e.b), _wgslsmith_f_op_f32(-206f * arg_2.b)), !(var_0.a.x && var_0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.e.b, 995f, arg_1.e.b) + vec4<f32>(arg_1.e.b, arg_2.b, arg_1.a, -164f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.e.b, 2308f, arg_1.a, 893f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, arg_1.a, 572f, 292f))))), Struct_2(reverseBits(vec2<u32>(u_input.a, ~36432u)), arg_2.b, arg_2.c), var_0.a.zzy);
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_1.c.xwx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2504f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(-1471f, Struct_1(vec4<bool>(true, !all(vec3<bool>(true, true, false)), all(vec2<bool>(true, true)), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-956f, 239f)))), -286f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(753f + -442f), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f + _wgslsmith_f_op_f32(func_1(vec3<u32>(0u, 0u, 13594u), Struct_3(-1498f, vec2<bool>(false, true), 0i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_2(vec2<u32>(u_input.a, 4294967295u), -119f, 88312i)), Struct_2(vec2<u32>(0u, u_input.a), -441f, 1i)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f * 1351f) - _wgslsmith_f_op_f32(f32(-1f) * -669f)))), Struct_2(firstLeadingBit(vec2<u32>(countOneBits(u_input.a), 1u)), 756f, ~(-_wgslsmith_sub_i32(0i, -9472i))), !(!select(func_4(vec2<i32>(-1i, -37475i), vec4<f32>(-1483f, 1372f, -288f, 137f)).a.xzw, vec3<bool>(true, true, true), u_input.a < 0u)));
    let var_1 = firstLeadingBit(select(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 3130u), vec3<u32>(100095u, var_0.d.a.x, 45384u)), ~vec3<u32>(0u, 4294967295u, var_0.d.a.x)), vec3<u32>(~u_input.a, min(9902u, max(var_0.d.a.x, u_input.a)), reverseBits(firstLeadingBit(4294967295u))), var_0.b.a.yyw));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) + 806f), vec2<bool>(var_0.b.a.x, any(var_0.b.a)), _wgslsmith_mod_i32(0i >> (_wgslsmith_dot_vec3_u32(var_1 ^ var_1, var_1) % 32u), reverseBits(_wgslsmith_clamp_i32(var_0.d.c, var_0.d.c, var_0.d.c))), vec4<u32>(~4294967295u, ~(~111423u), _wgslsmith_mult_u32(8878u, ~var_1.x), u_input.a) << (vec4<u32>(0u, 4294967295u, u_input.a, ~u_input.a) % vec4<u32>(32u)), var_0.d);
    var_0 = Struct_4(-312f, Struct_1(vec4<bool>(all(!vec2<bool>(var_2.b.x, true)), !var_2.b.x & true, !var_0.b.a.x, true)), vec4<f32>(331f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(max(var_2.d.zwx, var_1), Struct_3(var_2.a, var_2.b, -14558i, var_2.d, var_2.e), var_2.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(621f, -835f, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.e.b, var_0.d.b, false)) * 274f))), Struct_2(~(~var_2.e.a), _wgslsmith_f_op_f32(2184f * -581f), func_2(Struct_3(_wgslsmith_f_op_f32(round(-864f)), select(var_2.b, vec2<bool>(var_0.b.a.x, var_0.b.a.x), var_2.b.x), min(var_2.c, var_2.c), ~var_2.d, var_0.d))), vec3<bool>(true, !(!var_0.e.x), var_0.d.c == var_2.e.c));
    let var_3 = true;
    var_0 = Struct_4(_wgslsmith_f_op_f32(-var_0.a), Struct_1(vec4<bool>(var_3, true, true, false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_2.e.b, var_0.c.x, -560f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, 984f, var_0.d.b, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + vec4<f32>(var_0.d.b, var_0.c.x, var_0.d.b, -1037f)) - _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(var_0.c - var_0.c))), !select(vec4<bool>(false, var_0.e.x, false, var_2.b.x), select(vec4<bool>(var_2.b.x, var_3, false, var_3), vec4<bool>(var_0.e.x, true, false, var_2.b.x), var_0.b.a), !var_3))), var_0.d, var_0.e);
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, var_2.e.b, var_0.d.b, var_2.a) * var_0.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * vec4<f32>(-965f, 671f, 1852f, -3704f))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(165f, 239f)), _wgslsmith_f_op_f32(var_2.a - var_2.e.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), var_0.c.x, -1087f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1715f, 375f, var_2.e.b, 1311f), vec4<f32>(-1082f, var_2.e.b, -1130f, 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(var_0.c)))))));
    var_0 = Struct_4(var_4.x, func_4(vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(-14412i), 16907i), ~max(-53637i, var_2.c)), _wgslsmith_f_op_vec4_f32(-var_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f + 1234f)), _wgslsmith_div_f32(-1167f, var_0.d.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.e.b, var_0.d.b, var_4.x, 346f), vec4<f32>(-122f, var_2.a, var_2.a, var_2.a))))), Struct_2(~(~(~vec2<u32>(u_input.a, var_0.d.a.x))), _wgslsmith_f_op_f32(907f - _wgslsmith_div_f32(-636f, -1282f)), ~var_2.e.c), !(!vec3<bool>(true, var_3 | var_2.b.x, true)));
    let var_5 = Struct_4(var_4.x, Struct_1(!(!func_4(vec2<i32>(var_2.e.c, var_0.d.c), vec4<f32>(-1316f, -550f, var_4.x, -927f)).a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - var_4) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_4))))), Struct_2(~countOneBits(var_2.d.yx), -2430f, -var_0.d.c), !(!select(vec3<bool>(false, var_0.e.x, var_2.b.x), vec3<bool>(var_3, false, true), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(93618i, -26791i), vec2<i32>(1i, 21606i)))));
}

