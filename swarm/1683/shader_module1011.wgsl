struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = !arg_2.b.d.wzz;
    var var_1 = Struct_1(false, vec3<f32>(1699f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0))))), -626f), vec2<i32>(2147483647i, _wgslsmith_mult_i32(1i, -(27795i << (1u % 32u)))), select(arg_2.b.d, !arg_2.b.d, arg_2.b.d));
    var_1 = Struct_1(var_1.d.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_2.b.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(331f, arg_0, arg_0), _wgslsmith_f_op_vec3_f32(abs(var_1.b))))))), ~vec2<i32>(_wgslsmith_add_i32(-4059i, min(33978i, -32589i)), arg_2.b.c.x), vec4<bool>(false, !arg_1, var_0.x, var_1.a));
    var_1 = arg_2.b;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1046f)))), arg_2.b.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f), _wgslsmith_f_op_f32(-arg_0)))));
    return select(var_1.d, !vec4<bool>(_wgslsmith_f_op_f32(ceil(-1661f)) >= _wgslsmith_f_op_f32(307f * var_1.b.x), any(select(arg_2.b.d.zy, vec2<bool>(var_0.x, arg_1), vec2<bool>(false, arg_2.b.a))), !(arg_1 || arg_1), true), arg_1);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(35264u, Struct_1(-464f <= _wgslsmith_f_op_f32(sign(-896f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2, 1000f))), countOneBits(firstTrailingBit(vec2<i32>(u_input.e.x, u_input.d.x))), !vec4<bool>(true, false, true, arg_2 >= 210f)), vec3<i32>(countOneBits(~u_input.d.x), u_input.d.x, -2147483647i << (select(min(1u, 5840u), _wgslsmith_dot_vec4_u32(vec4<u32>(56240u, 1u, u_input.a.x, 1u), vec4<u32>(66380u, 45900u, arg_3, 1u)), true) % 32u)));
    var var_1 = Struct_1(var_0.b.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, arg_1))), arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1019f, 649f, 437f), var_0.b.b))), u_input.e.xx, select(var_0.b.d, !func_3(_wgslsmith_f_op_f32(-arg_0.x), all(vec3<bool>(true, false, var_0.b.d.x)), Struct_2(u_input.a.x, var_0.b, vec3<i32>(-1i, var_0.b.c.x, 6929i))), var_0.b.a));
    var_0 = Struct_2(1u, Struct_1((-51746i | ~var_0.b.c.x) >= _wgslsmith_clamp_i32(~(-42035i), _wgslsmith_add_i32(var_0.b.c.x, u_input.e.x), reverseBits(-38209i)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.b.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-268f * arg_2))), 1f), -firstLeadingBit(vec2<i32>(2147483647i, 1i)), !select(!vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), var_0.b.d, false)), ~abs(u_input.d));
    var var_2 = var_0.b.d;
    var var_3 = Struct_2(4294967295u, Struct_1(false, var_1.b, var_0.c.xx, !(!vec4<bool>(true, false, var_0.b.d.x, true))), vec3<i32>(-1i) * -vec3<i32>(abs(var_0.b.c.x), _wgslsmith_add_i32(-1i, 32180i), u_input.d.x));
    return Struct_1(var_3.b.a, vec3<f32>(_wgslsmith_f_op_f32(-1f), -372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1086f)))), _wgslsmith_mult_vec2_i32(var_3.c.zx, ~vec2<i32>(-u_input.e.x, 11118i)), select(vec4<bool>(!var_2.x, false, var_2.x, !any(vec2<bool>(var_2.x, var_2.x))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_0.b.d.x, true, false), true), !all(!var_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_2(countOneBits(~(~7986u)), func_2(vec2<f32>(_wgslsmith_f_op_f32(-389f - _wgslsmith_f_op_f32(arg_2.b.b.x + arg_2.b.b.x)), arg_0.b.x), _wgslsmith_f_op_f32(sign(-301f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.x)))), 4294967295u), select(u_input.e, ~vec3<i32>(_wgslsmith_clamp_i32(-9133i, arg_0.c.x, -27476i), -1i, arg_2.c.x & u_input.e.x), select(arg_2.b.d.yxw, select(select(vec3<bool>(arg_2.b.d.x, true, arg_1), vec3<bool>(false, false, arg_2.b.d.x), vec3<bool>(arg_1, false, arg_1)), arg_2.b.d.wyw, arg_2.b.d.zwz), true)));
    return !(arg_0.d.x | false);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_mult_u32(u_input.a.x, abs(47903u));
    var var_3 = 3996u;
    let var_4 = -710f;
    return Struct_2(~_wgslsmith_sub_u32(~25487u, (50126u | var_2) | (21192u & var_2)), func_2(arg_0.b.yx, func_2(arg_0.b.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - var_0.b.x) + -1448f), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1056f)), _wgslsmith_f_op_f32(max(var_4, 162f)), _wgslsmith_f_op_f32(-arg_0.b.x), firstTrailingBit(var_2)).b.x, _wgslsmith_div_u32(var_2, var_2)).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.x))), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(~var_2, max(u_input.a.x, 4294967295u)))), vec3<i32>(-1i, 1i, 18464i));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = func_5(Struct_1(~4294967295u < (0u ^ u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -447f))), ~arg_2.c, vec4<bool>(func_4(func_2(vec2<f32>(arg_0.x, -409f), arg_2.b.x, -664f, 0u), arg_2.a, Struct_2(19541u, Struct_1(arg_2.a, vec3<f32>(arg_3, 165f, arg_0.x), vec2<i32>(1i, u_input.d.x), arg_2.d), vec3<i32>(29950i, u_input.b, u_input.e.x)), _wgslsmith_div_vec2_i32(vec2<i32>(24420i, arg_2.c.x), vec2<i32>(37890i, u_input.e.x))), _wgslsmith_add_u32(u_input.a.x, u_input.a.x) != u_input.c, any(func_3(-1505f, arg_2.a, Struct_2(u_input.c, Struct_1(false, vec3<f32>(arg_3, -348f, arg_1.x), arg_2.c, arg_2.d), vec3<i32>(u_input.b, 38645i, u_input.b))).zyx), true)));
    var_0 = func_5(arg_2);
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, 29654i, _wgslsmith_div_i32(~abs(25522i), 2147483647i), _wgslsmith_add_i32(-u_input.b, var_0.b.c.x)), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 58620i, arg_2.c.x, var_0.c.x) >> (vec4<u32>(u_input.a.x, u_input.c, u_input.c, var_0.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, u_input.b, 17620i), vec4<i32>(-32377i, -25964i, 2147483647i, var_0.c.x)))));
    var var_2 = func_5(arg_2).b.d.x;
    var var_3 = func_5(var_0.b).b;
    return Struct_1(all(!var_0.b.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-var_3.b.x)), arg_3, arg_0.x)), -arg_2.c, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(1u, func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2436f, -1051f), vec2<f32>(1000f, -1466f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-688f, 933f), vec2<f32>(-559f, -1150f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1586f, 626f, -175f, -1479f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(502f, 1389f, -542f, -1000f)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(320f, 455f, -272f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2128f, 448f, -483f) * vec3<f32>(-1324f, 1053f, 355f)), true)), ~(vec2<i32>(-2147483647i, u_input.e.x) & vec2<i32>(-14912i, u_input.e.x)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(237f)) - _wgslsmith_div_f32(336f, 1405f)), -1000f)), u_input.e);
    var var_1 = func_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.b.yx) - vec2<f32>(_wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x), _wgslsmith_div_f32(236f, var_0.b.b.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b.x))) - var_0.b.b.x)));
    var_1 = func_5(var_1.b);
    var_1 = Struct_2(u_input.a.x, func_1(_wgslsmith_div_vec2_f32(var_1.b.b.zz, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1009f, var_0.b.b.x) - var_1.b.b.xx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b.b.x, -1125f))), select(vec2<bool>(false, var_0.b.a), vec2<bool>(false, var_0.b.d.x), var_1.b.d.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), func_2(vec2<f32>(1000f, var_1.b.b.x), 682f, 194f, var_0.a).b.x, -219f, -427f)), var_1.b, -420f), vec3<i32>(_wgslsmith_mult_i32(-12453i, -_wgslsmith_mult_i32(1i, var_1.b.c.x)), var_1.b.c.x, -2147483647i));
    var_0 = Struct_2(min(u_input.c, 4306u), Struct_1(abs(abs(var_0.b.c.x)) != abs(_wgslsmith_div_i32(-14323i, u_input.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, 422f, var_1.b.b.x) + vec3<f32>(var_0.b.b.x, 128f, 407f)), _wgslsmith_f_op_vec3_f32(-var_0.b.b)))), u_input.d.zx, select(vec4<bool>(!var_1.b.d.x, true, true, false), func_5(var_0.b).b.d, false)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-9823i, var_1.c.x, _wgslsmith_mult_i32(2147483647i, 1i)), vec3<i32>(54473i, var_0.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(41621i, -929i, 1i, 24466i), abs(vec4<i32>(var_1.c.x, var_1.c.x, -15623i, 32073i)))), vec3<i32>(-70415i, max(var_1.b.c.x, ~u_input.d.x), -1i)));
    var var_2 = Struct_2(_wgslsmith_add_u32(select(min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(43076u, u_input.a.x, var_0.a))), ~(~17288u), !var_0.b.a), 10980u), var_1.b, firstLeadingBit(vec3<i32>(abs(-2147483647i), -11442i ^ select(-18507i, 0i, true), _wgslsmith_add_i32(var_1.c.x >> (4294967295u % 32u), 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.x, var_2.b.c, countOneBits(reverseBits(_wgslsmith_div_u32(4294967295u, var_0.a)) ^ 4294967295u));
}

