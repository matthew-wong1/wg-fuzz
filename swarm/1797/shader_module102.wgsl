struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = arg_2;
    let var_1 = vec2<i32>(arg_0.e, arg_0.e >> (~(11299u ^ ~arg_2.c.a) % 32u));
    let var_2 = vec2<bool>(var_0.c.b, select(all(vec3<bool>(!arg_2.b.x, !arg_0.c, select(false, arg_2.b.x, false))), arg_2.a.b, false));
    var var_3 = true;
    let var_4 = Struct_1(var_0.c.a, !(abs(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)) > 48685u));
    return arg_0.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    var var_0 = select(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(func_3(Struct_3(-683f, vec3<f32>(1000f, -1473f, -1257f), false, false, u_input.b.x), vec2<f32>(318f, 825f), Struct_4(Struct_1(0u, false), vec2<bool>(true, true), Struct_1(57561u, false))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, -2147483647i, u_input.c.x), vec4<i32>(-11193i, u_input.c.x, u_input.b.x, arg_0.x)), func_3(Struct_3(2059f, vec3<f32>(-528f, -528f, -1520f), true, false, arg_0.x), vec2<f32>(453f, 243f), Struct_4(Struct_1(4294967295u, true), vec2<bool>(true, false), Struct_1(u_input.a, false)))), ~_wgslsmith_mod_i32(arg_0.x, -14773i), -1i, arg_1), -(~select(vec4<i32>(u_input.b.x, u_input.b.x, arg_1, -6742i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, arg_0.x), vec4<bool>(false, true, true, true)))), ~(-(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, 34596i, arg_0.x))), !(!vec4<bool>(true, all(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, true, true, false)), true)));
    var var_1 = all(select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(!select(false, false, true), (var_0.x < var_0.x) && true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2027f * -930f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(sign(2102f)))))));
    let var_3 = select(select(select(vec4<bool>(true, any(vec3<bool>(true, true, false)), true, true), vec4<bool>(true, true, true, true), select(select(true, false, true), all(vec4<bool>(true, true, true, true)), true)), vec4<bool>(!any(vec3<bool>(true, true, false)), false, !all(vec2<bool>(true, false)), ~4294967295u <= (arg_2.x | 1u)), vec4<bool>(true, true, true, arg_1 >= arg_0.x)), vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))) & !all(vec2<bool>(true, false)), (~var_0.x & _wgslsmith_sub_i32(var_0.x, arg_1)) > 22109i, all(vec3<bool>(true, u_input.c.x <= -21529i, true)), any(vec3<bool>(true, true, true))), false);
    var_0 = select(_wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0.x, -1i, u_input.c.x, var_0.x)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1573i, 829i, u_input.b.x, -47510i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 4169i), vec4<i32>(26055i, -2147483647i, 2147483647i, 16743i)), reverseBits(vec4<i32>(1i, 0i, -11047i, -1i)))) << (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(0i >> ((u_input.a >> (arg_2.x % 32u)) % 32u), ~firstTrailingBit(arg_1), arg_0.x, var_0.x | ~arg_1), -vec4<i32>(~var_0.x, -2147483647i, var_0.x, func_3(Struct_3(-1354f, vec3<f32>(var_2, var_2, -257f), var_3.x, var_3.x, -40462i), vec2<f32>(1123f, var_2), Struct_4(Struct_1(arg_2.x, var_3.x), vec2<bool>(false, true), Struct_1(23937u, var_3.x))))), true);
    return ~(~135u);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> bool {
    var var_0 = (~(~(~u_input.a)) >= 9914u) != ((_wgslsmith_f_op_f32(f32(-1f) * -1376f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(576f)), _wgslsmith_f_op_f32(sign(-1240f)))) & true);
    var var_1 = Struct_2(reverseBits(select(u_input.d.yxy, u_input.d.zzy, vec3<bool>(true, true, false)) << (vec3<u32>(func_2(vec2<i32>(u_input.b.x, arg_1.x), u_input.c.x, vec2<u32>(u_input.d.x, 45552u)), 4294967295u, 14942u) % vec3<u32>(32u))), ~abs(~vec3<u32>(u_input.a, u_input.a, u_input.d.x)), firstTrailingBit(max(27665i, u_input.c.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0, arg_0, 801f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, 566f, arg_0, arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, 462f, 1101f)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(583f)) * _wgslsmith_f_op_f32(arg_0 * -605f)) - -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 104f, false))), _wgslsmith_f_op_f32(204f - -464f)), -731f, arg_0));
    var var_3 = 352f;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.xxy * var_2.wwz));
    return select(reverseBits(4294967295u), 4294967295u, any(vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true))) == (func_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.yz, u_input.c.zz), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(315i, 35767i)), arg_1.zx), u_input.b.x, ~u_input.d.xw >> (abs(vec2<u32>(u_input.a, 10763u)) % vec2<u32>(32u))) & u_input.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: i32) -> vec4<f32> {
    var var_0 = vec4<u32>(min(arg_0, arg_0), (arg_2.x << (62292u % 32u)) << (_wgslsmith_sub_u32(6011u, min(arg_2.x, 15173u)) % 32u), max(1u, 19620u), max(_wgslsmith_div_u32(~arg_0, countOneBits(abs(u_input.d.x))), ~(~1u)));
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_add_u32(~(1u & min(4294967295u, u_input.a)), ~_wgslsmith_sub_u32(18568u, ~4294967295u)), false);
    let var_3 = arg_1.a;
    var_1 = !var_2.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, var_3, arg_1.b.x, arg_1.b.x))) * vec4<f32>(-637f, _wgslsmith_f_op_f32(var_3 * var_3), var_3, _wgslsmith_f_op_f32(-var_3))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * 532f)), _wgslsmith_f_op_f32(max(-433f, var_3)), _wgslsmith_f_op_f32(sign(arg_1.b.x)), _wgslsmith_div_f32(-765f, 1453f)), (1u << (_wgslsmith_add_u32(0u, var_2.a) % 32u)) <= ~_wgslsmith_mult_u32(arg_2.x, 63475u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-247f, 684f, -1000f, -485f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1877f, 1231f, 635f, -347f)), vec4<bool>(true, true, true, false))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(min(u_input.d.x & 1u, select(u_input.d.x, 19889u, false)), Struct_3(_wgslsmith_f_op_f32(sign(-823f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-586f, 290f, 715f), vec3<f32>(-2014f, 1000f, 1723f), false)), func_1(440f, vec3<i32>(-15270i, -3676i, u_input.b.x)), true, _wgslsmith_clamp_i32(u_input.b.x, 28075i, u_input.c.x)), ~max(u_input.d.wz, u_input.d.zx), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, -33592i, -2147483647i)), vec4<i32>(u_input.b.x, 9378i, -353i, 2147483647i)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(u_input.d.x, Struct_3(342f, vec3<f32>(472f, 559f, -1000f), false, false, 304i), countOneBits(u_input.d.yy), func_3(Struct_3(-1000f, vec3<f32>(-533f, -742f, -1080f), true, false, u_input.b.x), vec2<f32>(388f, -528f), Struct_4(Struct_1(1u, true), vec2<bool>(false, false), Struct_1(0u, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 627f, 416f, 291f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, -1000f, 328f, -757f))))));
    let var_1 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(max(u_input.a, u_input.a), u_input.a) ^ u_input.d.xz), vec2<u32>(~func_2(-u_input.c.xy, abs(1i), u_input.d.yz), u_input.a));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x))))));
    var var_3 = vec3<u32>(1u, ~firstLeadingBit(19200u), countOneBits(~var_1.x));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_4 = 28763u;
    var_3 = vec3<u32>(~0u, var_1.x, firstLeadingBit(_wgslsmith_sub_u32(var_1.x, _wgslsmith_mult_u32(u_input.d.x, 51901u))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-21035i, 0i, ~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(23419i, 0i) << (vec2<u32>(var_4, var_4) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, 8312i)))), reverseBits(_wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_4), var_4, 4294967295u, u_input.a))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(round(var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1931f, 261f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.xyz, var_0.wxw))), true)));
}

