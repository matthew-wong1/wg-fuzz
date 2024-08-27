struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_sub_u32(u_input.d.x, u_input.a), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), ~_wgslsmith_sub_vec2_i32(u_input.e.xy, u_input.c.yy)), _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.d.x, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(19572u, u_input.a, u_input.a, 1u), reverseBits(vec4<u32>(u_input.d.x, 42348u, u_input.d.x, 18317u))))), -_wgslsmith_sub_i32(2406i, 20870i), Struct_3(min(~0u, 0u) ^ u_input.d.x, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec2<i32>(3891i, u_input.e.x), vec2<i32>(u_input.b, -14625i), true)), 1u));
    let var_1 = reverseBits(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, var_0.c.c), vec3<u32>(31470u, u_input.d.x, 0u)))) <= 4294967295u;
    var var_2 = var_0.b;
    var_2 = -14733i;
    var var_3 = Struct_4(var_0.a, 26601i, var_0.a);
    return ~var_0.c.a;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3) -> Struct_3 {
    let var_0 = abs(vec3<u32>(42010u, _wgslsmith_div_u32(min(~0u, abs(arg_2.c)), _wgslsmith_div_u32(abs(0u), ~19797u)), arg_2.c));
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), arg_1.a.b.a, all(vec4<bool>(false, arg_0, false, false))), vec2<i32>(arg_2.b.b.x, abs(_wgslsmith_mod_i32(-2147483647i, -2147483647i)))), func_3());
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(213f, 1615f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, -205f) + vec2<f32>(363f, 844f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-533f, -528f)))))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_mult_u32(firstLeadingBit(var_0.x | arg_1.a.c), arg_1.c.c), Struct_1(vec3<bool>(!arg_1.a.b.a.x, select(false, arg_2.b.a.x, false), var_2.x < var_2.x), vec2<i32>(arg_2.b.b.x, -1i)), max(1u, 0u)), var_1.a.b.x, Struct_3(0u, Struct_1(vec3<bool>(false, arg_0, var_1.a.b.x != var_1.a.b.x), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b.b.x, 12168i), vec2<i32>(u_input.c.x, -8246i)))), 57733u));
    var_3 = Struct_4(Struct_3(countOneBits(4294967295u ^ var_3.a.c) | 13933u, var_1.a, 0u | var_1.b), abs(reverseBits(var_3.b)), Struct_3(~var_0.x | _wgslsmith_clamp_u32(1u, var_0.x, 44578u), var_3.c.b, _wgslsmith_div_u32(u_input.d.x, 0u)));
    return arg_1.a;
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_4(func_2(false, Struct_4(func_2(true, Struct_4(Struct_3(39140u, Struct_1(arg_0.b.a, vec2<i32>(arg_0.b.b.x, arg_0.b.b.x)), 21057u), -401i, arg_0), func_2(false, Struct_4(arg_0, 2147483647i, arg_0), arg_0)), ~_wgslsmith_mod_i32(59980i, u_input.b), func_2(any(vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, true, arg_0.b.a.x)), Struct_4(Struct_3(arg_0.a, Struct_1(arg_0.b.a, arg_0.b.b), 0u), 2147483647i, arg_0), arg_0)), Struct_3(arg_0.c, arg_0.b, ~9869u)), -1i, arg_0);
    var var_1 = func_2(var_0.a.b.a.x, var_0, var_0.a).b.a.x || true;
    let var_2 = Struct_2(var_0.a.b, arg_0.a);
    var_1 = any(!var_0.c.b.a);
    var var_3 = -firstTrailingBit(arg_0.b.b.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1762f + -922f) * _wgslsmith_f_op_f32(sign(-833f))) - _wgslsmith_f_op_f32(416f - -108f))), _wgslsmith_f_op_f32(-1324f * 264f));
}

fn func_1() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2(true, Struct_4(Struct_3(11406u, Struct_1(vec3<bool>(false, false, false), vec2<i32>(u_input.b, u_input.b)), u_input.a), u_input.e.x, Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, true, true), vec2<i32>(-1i, 2147483647i)), u_input.a)), Struct_3(u_input.a, Struct_1(vec3<bool>(true, false, true), u_input.e.xw), 45244u)))), _wgslsmith_f_op_f32(1f * 2077f), _wgslsmith_f_op_f32(-589f * _wgslsmith_div_f32(779f, -282f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(412f + 614f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(-1712f)), _wgslsmith_f_op_f32(-1000f * 1234f), 1f)))))));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(func_4(Struct_3(1u, Struct_1(vec3<bool>(true, false, false), u_input.c.yy), 55926u))), true)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-181f, var_0.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(737f, -954f)))), true, all(vec3<bool>(_wgslsmith_add_u32(u_input.a, u_input.a) < _wgslsmith_mult_u32(u_input.d.x, 4294967295u), true, false)));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(306f, _wgslsmith_div_f32(162f, var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 293f, -1763f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1159f, var_0.x, 962f, -1265f), vec4<f32>(var_0.x, var_0.x, 101f, var_0.x))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -341f, -277f)) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1745f * var_0.x), _wgslsmith_f_op_f32(300f - _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(select(1f, var_0.x, func_2(var_1.x, Struct_4(Struct_3(4294967295u, Struct_1(var_1, vec2<i32>(-1i, u_input.e.x)), u_input.a), u_input.e.x, Struct_3(1u, Struct_1(vec3<bool>(var_1.x, true, false), vec2<i32>(29216i, 0i)), u_input.a)), Struct_3(u_input.a, Struct_1(var_1, vec2<i32>(1i, u_input.b)), u_input.d.x)).b.a.x))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1074f, _wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), var_0.x, -1627f, 278f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -531f, var_0.x, -2397f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-2165f - var_0.x), 817f, _wgslsmith_f_op_f32(-var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, -647f, -800f, _wgslsmith_f_op_f32(f32(-1f) * -1470f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 119f, 1915f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -172f), vec4<bool>(true, var_1.x, var_1.x, true)))))));
    return select(select(var_1, vec3<bool>(any(!var_1.zz), !var_1.x, true), vec3<bool>(var_1.x, true, _wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(-440f * 1053f))), select(!vec3<bool>(true, all(var_1), any(var_1)), !vec3<bool>(!var_1.x, u_input.b == -15666i, true), var_1.x), func_2(select((u_input.b == u_input.c.x) && true, any(vec2<bool>(var_1.x, var_1.x)), !select(true, var_1.x, var_1.x)), Struct_4(func_2(any(var_1), Struct_4(Struct_3(u_input.a, Struct_1(var_1, u_input.c.zz), u_input.d.x), -2147483647i, Struct_3(4294967295u, Struct_1(vec3<bool>(true, false, var_1.x), vec2<i32>(u_input.e.x, u_input.c.x)), u_input.a)), Struct_3(u_input.d.x, Struct_1(var_1, vec2<i32>(u_input.e.x, 16459i)), 0u)), _wgslsmith_sub_i32(countOneBits(-11631i), i32(-1i) * -1i), func_2(true, Struct_4(Struct_3(8463u, Struct_1(vec3<bool>(true, var_1.x, var_1.x), u_input.e.yy), u_input.a), -38380i, Struct_3(u_input.a, Struct_1(var_1, vec2<i32>(u_input.e.x, 44982i)), 1u)), func_2(false, Struct_4(Struct_3(u_input.d.x, Struct_1(vec3<bool>(false, true, false), u_input.e.zx), 27918u), u_input.b, Struct_3(u_input.a, Struct_1(var_1, vec2<i32>(u_input.c.x, u_input.e.x)), u_input.d.x)), Struct_3(42789u, Struct_1(var_1, vec2<i32>(u_input.b, u_input.b)), u_input.d.x)))), Struct_3(~firstTrailingBit(43893u), Struct_1(func_2(var_1.x, Struct_4(Struct_3(4294967295u, Struct_1(vec3<bool>(false, var_1.x, var_1.x), vec2<i32>(-6810i, -1i)), 1u), 0i, Struct_3(u_input.a, Struct_1(var_1, u_input.c.xx), 4294967295u)), Struct_3(0u, Struct_1(vec3<bool>(true, var_1.x, var_1.x), u_input.e.wz), u_input.d.x)).b.a, u_input.e.wx), ~abs(15110u))).b.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = reverseBits(~1u & arg_0.x);
    let var_1 = u_input.e ^ _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, 2147483647i, 3831i), vec3<i32>(0i, -24968i, 0i), arg_3.a), vec3<i32>(arg_3.b.x, 0i, arg_3.b.x)), ~0i >> (arg_0.x % 32u), arg_3.b.x, ~firstTrailingBit(u_input.b)), u_input.c ^ -min(vec4<i32>(0i, u_input.b, arg_1.b.b.x, -1i), u_input.e));
    let var_2 = arg_1.b.a.x;
    var var_3 = arg_3.a.yz;
    var_0 = ~_wgslsmith_add_u32(arg_0.x, firstLeadingBit(4294967295u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = func_5(u_input.d, Struct_3(~(~u_input.d.x), Struct_1(select(vec3<bool>(false, false, false), func_1(), false), vec2<i32>(14381i, -u_input.e.x)), _wgslsmith_clamp_u32(u_input.d.x, func_3(), _wgslsmith_sub_u32(u_input.d.x, ~u_input.d.x))), _wgslsmith_div_f32(-1116f, -232f), func_2(all(vec4<bool>(any(vec2<bool>(false, false)), func_2(false, Struct_4(Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, false, false), u_input.e.zy), u_input.a), -23308i, Struct_3(1u, Struct_1(vec3<bool>(false, false, false), vec2<i32>(-2147483647i, -5020i)), u_input.a)), Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, false, true), vec2<i32>(-2147483647i, 2147483647i)), 4294967295u)).b.a.x, any(vec3<bool>(true, true, false)), false)), Struct_4(func_2(select(false, false, true), Struct_4(Struct_3(u_input.a, Struct_1(vec3<bool>(false, false, false), vec2<i32>(u_input.e.x, 3648i)), 1u), -2147483647i, Struct_3(0u, Struct_1(vec3<bool>(false, false, false), vec2<i32>(0i, 2147483647i)), u_input.d.x)), Struct_3(u_input.d.x, Struct_1(vec3<bool>(false, false, false), vec2<i32>(51676i, 7373i)), 0u)), 1i, Struct_3(u_input.a, func_2(true, Struct_4(Struct_3(u_input.d.x, Struct_1(vec3<bool>(false, true, false), vec2<i32>(1i, -57081i)), u_input.a), -2147483647i, Struct_3(u_input.a, Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.c.x, -2147483647i)), u_input.d.x)), Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, false, true), u_input.e.ww), 1u)).b, reverseBits(67455u))), Struct_3(_wgslsmith_mod_u32(1u, 20006u), Struct_1(vec3<bool>(false, false, true), ~u_input.e.xx), (u_input.d.x >> (u_input.d.x % 32u)) | u_input.d.x)).b);
    var_0 = !(true || !select(false, true, true));
    var_0 = true;
    let var_1 = func_2(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-2147483647i, 1i, u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e.xyw, u_input.c.yyx))) > 2147483647i, Struct_4(func_2(true, Struct_4(func_2(false, Struct_4(Struct_3(u_input.a, Struct_1(vec3<bool>(true, false, false), u_input.e.xw), 0u), -1i, Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, true, true), u_input.e.xz), 35984u)), Struct_3(0u, Struct_1(vec3<bool>(true, false, false), u_input.e.zz), 45257u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.b), vec2<i32>(u_input.c.x, u_input.e.x)), func_2(false, Struct_4(Struct_3(1u, Struct_1(vec3<bool>(true, true, true), vec2<i32>(-1i, -35654i)), 0u), u_input.c.x, Struct_3(u_input.d.x, Struct_1(vec3<bool>(false, true, true), u_input.e.wz), 142057u)), Struct_3(u_input.d.x, Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.c.x, u_input.e.x)), u_input.d.x))), func_2(any(vec3<bool>(false, false, false)), Struct_4(Struct_3(u_input.a, Struct_1(vec3<bool>(false, true, false), vec2<i32>(u_input.c.x, u_input.e.x)), u_input.a), 0i, Struct_3(0u, Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.b, u_input.e.x)), u_input.a)), Struct_3(17047u, Struct_1(vec3<bool>(true, true, false), vec2<i32>(u_input.b, u_input.b)), 4294967295u))), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 50925i, u_input.e.x, u_input.e.x), u_input.c)), Struct_3(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, 1u), vec3<u32>(u_input.d.x, 4294967295u, 0u)), Struct_1(vec3<bool>(true, true, false), -u_input.c.wx), u_input.d.x)), Struct_3(14704u, Struct_1(vec3<bool>(true, true, true), firstLeadingBit(select(vec2<i32>(-7062i, u_input.e.x), vec2<i32>(u_input.e.x, u_input.b), vec2<bool>(false, false)))), _wgslsmith_clamp_u32(0u, ~69832u, ~64827u) | ~u_input.d.x));
    var_0 = false;
    var_0 = var_1.b.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-7317i, u_input.c.x), ~_wgslsmith_mult_vec2_i32(reverseBits(u_input.e.xx << (vec2<u32>(u_input.a, var_1.c) % vec2<u32>(32u))), ~(~u_input.e.yy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(693f)), _wgslsmith_f_op_f32(abs(238f)), _wgslsmith_f_op_f32(-570f - -357f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(611f, 1166f, 668f), vec3<f32>(1000f, 1037f, 622f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1413f, -2239f, 381f) - vec3<f32>(263f, -849f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1460f, -536f, 1483f))))))), -var_1.b.b);
}

