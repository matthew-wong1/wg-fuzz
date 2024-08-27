struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    let var_0 = Struct_3(arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(456f * -186f)))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -812f);
    var_1 = 2190f;
    let var_2 = _wgslsmith_div_vec2_i32(vec2<i32>(~(~u_input.b), select(2147483647i, u_input.b, false)), abs(~(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -12149i), vec2<i32>(u_input.b, u_input.b)))));
    return -2147483647i ^ (u_input.b | var_2.x);
}

fn func_3() -> u32 {
    let var_0 = true | !select(all(vec4<bool>(true, true, true, true)), !(4294967295u >= u_input.c.x), true);
    let var_1 = any(vec2<bool>(!(!any(vec3<bool>(var_0, true, var_0))), any(!select(vec2<bool>(var_0, false), vec2<bool>(false, true), var_0))));
    let var_2 = Struct_3(10737u ^ min(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, 1u), vec3<u32>(u_input.a, u_input.c.x, u_input.c.x))), _wgslsmith_add_u32(u_input.a, 10988u)));
    var var_3 = Struct_4(abs(-min(i32(-1i) * -39094i, _wgslsmith_sub_i32(u_input.b, -38702i))), Struct_2(Struct_1(var_1), true, select(!vec4<bool>(var_1, var_0, var_0, false), select(select(vec4<bool>(var_1, var_0, false, false), vec4<bool>(var_0, var_1, var_0, var_0), vec4<bool>(var_1, var_0, var_0, true)), !vec4<bool>(var_0, true, var_1, var_0), !vec4<bool>(var_0, true, var_1, true)), select(vec4<bool>(var_1, var_0, var_1, true), vec4<bool>(true, var_1, false, true), !vec4<bool>(var_0, var_0, true, false))), ~vec2<i32>(-2147483647i, ~u_input.b), Struct_1(any(vec2<bool>(var_0, false)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1302f, 644f, -272f, -1096f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, -677f, 1417f, -411f)))))), vec4<f32>(_wgslsmith_f_op_f32(-1496f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1896f, -175f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(f32(-1f) * -715f)) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(641f, 655f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(688f))), 320f), Struct_1(var_1));
    let var_4 = Struct_4(~(-12426i), var_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_3.c), _wgslsmith_f_op_vec4_f32(-var_3.d)))))), vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.d.x))) * var_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.d.x)))), var_3.c.x), var_3.e);
    return ~_wgslsmith_div_u32(~(~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63355u, 8051u, var_2.a, 18931u), vec4<u32>(44296u, 4294967295u, var_2.a, var_2.a)), ~100775u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = Struct_4(u_input.b, arg_2, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2271f, -1940f, 1729f, -244f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1133f, _wgslsmith_f_op_f32(626f * -688f), -1237f, _wgslsmith_f_op_f32(f32(-1f) * -336f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1156f, -117f, -1184f, -1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-738f, -422f, -476f, -1583f), vec4<f32>(135f, -1085f, 1801f, -916f), arg_2.c))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 441f), _wgslsmith_f_op_f32(max(2357f, -611f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1104f))))), Struct_1(all(vec2<bool>(arg_2.c.x, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.xx * var_0.d.xz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.xy) - _wgslsmith_f_op_vec2_f32(exp2(var_0.c.xx)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 2650f)), vec2<f32>(var_0.d.x, -154f), var_0.b.c.yy)) * _wgslsmith_f_op_vec2_f32(-var_0.c.yx)))));
    var var_2 = vec2<bool>(var_0.e.a, !any(var_0.b.c.yyz));
    let var_3 = var_0.b;
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_div_f32(1129f, 1513f))), var_0.c.x));
    return all(!arg_2.c.zww);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = ~(-func_2(Struct_3(firstTrailingBit(u_input.a)), ~(~u_input.c), any(!arg_0.c.xwy)));
    var var_1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(countOneBits(u_input.b) | _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), abs(u_input.b), _wgslsmith_add_i32(28151i, -33123i), -(1i & arg_0.d.x))), select(vec4<i32>(-6844i, 2147483647i, _wgslsmith_sub_i32(u_input.b, -225i), arg_0.d.x), abs(~vec4<i32>(u_input.b, arg_0.d.x, 46827i, arg_0.d.x)), arg_0.c));
    var_1 = select(-firstLeadingBit(~vec4<i32>(u_input.b, 36024i, u_input.b, -58576i)), vec4<i32>(-2147483647i, min(var_1.x, arg_0.d.x), arg_0.d.x, -arg_0.d.x) << (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.c.x, u_input.a, 0u, u_input.c.x)), vec4<u32>(15463u, u_input.a, u_input.a, 0u)) % vec4<u32>(32u)), select(true, any(!arg_0.c.zy), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x) == 1u)) >> (_wgslsmith_add_vec4_u32(max(vec4<u32>(28465u, u_input.c.x, ~4294967295u, ~u_input.a), ~(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 40215u))), _wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 4294967295u), vec4<u32>(5954u, 0u, u_input.a, u_input.c.x), arg_0.c), reverseBits(abs(vec4<u32>(16646u, 40705u, 0u, u_input.c.x))))) % vec4<u32>(32u));
    let var_2 = Struct_4(arg_0.d.x >> (~4294967295u % 32u), Struct_2(arg_0.a, true, vec4<bool>(false, !(!arg_0.a.a), func_4(func_3(), -u_input.b, Struct_2(arg_0.a, arg_0.e.a, vec4<bool>(arg_0.a.a, arg_0.b, true, arg_0.a.a), arg_0.d, Struct_1(arg_0.e.a)), Struct_3(u_input.a)), true), countOneBits(arg_0.d), Struct_1(arg_0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0.b)), _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(arg_1 + 810f), _wgslsmith_f_op_f32(select(-567f, 2310f, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-740f, -1936f, 1f, _wgslsmith_f_op_f32(544f * arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, arg_1, _wgslsmith_f_op_f32(1533f + arg_1), 1f) - vec4<f32>(1125f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(-1470f, arg_2, false)), _wgslsmith_f_op_f32(sign(-159f)))) * vec4<f32>(1f, arg_1, 913f, arg_1)), arg_0.a);
    let var_3 = Struct_3(~u_input.c.x);
    return Struct_2(Struct_1(true), var_2.e.a, select(vec4<bool>(!(var_3.a < u_input.c.x), ~u_input.c.x != ~var_3.a, arg_0.c.x, !arg_0.c.x == (var_1.x <= u_input.b)), vec4<bool>(all(vec2<bool>(var_2.b.b, arg_0.b)), true, !arg_0.b, true), select(select(select(vec4<bool>(true, false, var_2.e.a, false), arg_0.c, true), select(arg_0.c, vec4<bool>(arg_0.b, arg_0.c.x, true, true), true), func_4(63965u, var_2.a, arg_0, var_3)), vec4<bool>(false, all(arg_0.c.yw), true, 0i > arg_0.d.x), arg_0.c)), vec2<i32>(-2147483647i, func_2(Struct_3(15410u), ~vec2<u32>(u_input.c.x, 1u) | ~vec2<u32>(23417u, var_3.a), var_2.e.a)), Struct_1(arg_0.a.a));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(207f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -466f))), !(!arg_0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(167f, _wgslsmith_f_op_f32(min(-1560f, -352f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1072f, -3059f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-526f, -865f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)))))));
    let var_1 = u_input.c.x;
    let var_2 = arg_0.a;
    var_0 = _wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(-2201f + _wgslsmith_f_op_f32(floor(1492f))));
    var_0 = -804f;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(_wgslsmith_f_op_f32(abs(-967f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-302f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -420f)) * 822f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)) * -936f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-952f)), 1f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(219f * 799f), _wgslsmith_div_f32(1028f, 701f))), true))));
    var_0 = ~u_input.c.x >= ~1u;
    let var_2 = ~countOneBits(abs(-2147483647i));
    let var_3 = Struct_4(_wgslsmith_div_i32(u_input.b, ~func_5(func_1(Struct_2(Struct_1(true), true, vec4<bool>(false, true, false, false), vec2<i32>(u_input.b, -2147483647i), Struct_1(false)), -1000f, var_1))), func_1(Struct_2(func_1(Struct_2(Struct_1(true), true, vec4<bool>(false, false, false, true), vec2<i32>(1i, var_2), Struct_1(true)), 2548f, var_1).a, select(true, true, true), vec4<bool>(true, true, true, false), max(vec2<i32>(-16282i, 4012i), vec2<i32>(-19327i, 1i)) << (vec2<u32>(34508u, u_input.c.x) % vec2<u32>(32u)), func_1(Struct_2(Struct_1(false), false, vec4<bool>(true, false, true, false), vec2<i32>(var_2, var_2), Struct_1(false)), -353f, -724f).a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(-734f - -1065f))), true)), _wgslsmith_f_op_f32(sign(-1687f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 206f)), vec4<f32>(-1315f, -1000f, var_1, var_1), any(vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, var_1, var_1, var_1)))), vec4<f32>(1565f, var_1, var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1397f)) + _wgslsmith_f_op_f32(var_1 + var_1))))), func_1(Struct_2(Struct_1(true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.c.x, 1190u, u_input.c.x)) == 4294967295u, !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), -firstTrailingBit(vec2<i32>(0i, var_2)), func_1(Struct_2(Struct_1(false), false, vec4<bool>(false, true, true, false), vec2<i32>(u_input.b, -35919i), Struct_1(false)), _wgslsmith_div_f32(506f, -447f), var_1).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-358f, 1694f))), -583f).a);
    var var_4 = vec3<u32>(func_3(), 25117u, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec2<u32>(u_input.a, 1u), _wgslsmith_div_u32(24550u, reverseBits(_wgslsmith_clamp_u32(1389u, var_4.x, 39659u))), _wgslsmith_mult_u32(firstTrailingBit(firstTrailingBit(11087u)), ~abs(70175u)) << (12602u % 32u));
}

