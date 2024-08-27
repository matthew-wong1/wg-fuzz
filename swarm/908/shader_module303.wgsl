struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = ~(~(vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_add_u32(var_0.x, ~abs(1u));
    var var_2 = _wgslsmith_f_op_f32(step(-167f, _wgslsmith_f_op_f32(trunc(1429f)))) == 441f;
    var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(var_1), 1803u), ~(~vec2<u32>(var_0.x, var_0.x)));
    let var_3 = arg_1.x;
    return reverseBits(~var_1) << (abs(var_0.x) % 32u);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_1(vec2<bool>(false, all(vec3<bool>(true, true, arg_2.a.x)) & !arg_2.a.x));
    var_0 = Struct_1(vec2<bool>(432f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-202f)), _wgslsmith_f_op_f32(step(1460f, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) + _wgslsmith_f_op_f32(sign(-891f))) <= -1557f));
    var_0 = Struct_1(vec2<bool>(~(arg_1 >> (0u % 32u)) >= (arg_1 & arg_1), false | any(var_0.a)));
    var_0 = Struct_1(var_0.a);
    let var_1 = arg_3.x;
    return any(!select(select(!vec4<bool>(var_0.a.x, false, var_0.a.x, arg_2.a.x), vec4<bool>(var_0.a.x, arg_2.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), select(vec4<bool>(arg_2.a.x, false, false, true), vec4<bool>(arg_2.a.x, arg_2.a.x, var_0.a.x, true), arg_2.a.x), !select(vec4<bool>(false, arg_2.a.x, true, true), vec4<bool>(true, false, var_0.a.x, var_0.a.x), arg_2.a.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(408f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1808f * 1341f)))))), min(func_3(Struct_1(vec2<bool>(true, true)), ~u_input.a << (vec2<u32>(1u, 133435u) % vec2<u32>(32u)), Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(-832f, -576f)) > _wgslsmith_f_op_f32(floor(-1398f))), _wgslsmith_mult_u32(1u, 1u)), Struct_1(!vec2<bool>(any(vec4<bool>(false, true, true, true)), select(true, false, false))), vec2<i32>(u_input.b, 14591i));
    var var_1 = Struct_1(vec2<bool>(true, !(!any(vec2<bool>(true, true)))));
    var_0 = !(!(true == (max(u_input.c, -2147483647i) <= u_input.c)));
    var var_2 = Struct_1(vec2<bool>(false, true));
    var_2 = Struct_1(select(!(!(!var_2.a)), vec2<bool>(false, (var_1.a.x == var_1.a.x) || var_1.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(trunc(573f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1310f, 149f)) * _wgslsmith_div_f32(-778f, 297f))));
    return Struct_1(vec2<bool>(true, var_1.a.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    return func_2();
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_u32(4294967295u, ~(~countOneBits(59246u)));
    let var_1 = _wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f) - _wgslsmith_f_op_f32(abs(485f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(floor(772f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(-1686f, var_1)) + vec2<f32>(var_1, var_1))) + vec2<f32>(-197f, var_1))));
    var var_3 = any(vec2<bool>(arg_1.a.x, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 7347u, Struct_1(arg_2.a), vec2<i32>(2147483647i << (var_0 % 32u), u_input.c))));
    var_3 = any(!select(select(!vec3<bool>(arg_2.a.x, arg_1.a.x, arg_0), vec3<bool>(true, false, true), select(vec3<bool>(true, arg_1.a.x, true), vec3<bool>(true, arg_0, arg_2.a.x), vec3<bool>(true, true, false))), vec3<bool>(arg_0 & arg_0, arg_0, !arg_2.a.x), arg_2.a.x));
    return countOneBits(vec3<i32>(u_input.c, -1i, 44424i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.b, u_input.a.x), vec3<i32>(-2147483647i, u_input.e, 23206i))) | ~vec3<i32>(-2147483647i, -43544i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -4939i, u_input.b, u_input.e), abs(vec4<i32>(u_input.d, 1i, u_input.c, -26224i))));
    var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(54411i, u_input.c, -1i), func_5(reverseBits(var_0.x) != 2147483647i, Struct_1(vec2<bool>(false, true)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1805f, -738f, -1000f) * vec3<f32>(-1527f, -180f, 2443f)), any(vec3<bool>(false, true, false)), true))) << (~(~abs(~vec3<u32>(23709u, 4294967295u, 59058u))) % vec3<u32>(32u));
    var_0 = select(max(select(vec3<i32>(-2147483647i, -2147483647i, -1i), vec3<i32>(u_input.e, u_input.b, -2147483647i) | vec3<i32>(u_input.d, u_input.d, u_input.e), true), firstLeadingBit(~vec3<i32>(u_input.b, 5442i, 0i))), vec3<i32>(-1i, u_input.d ^ min(-2147483647i, u_input.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.c, var_0.x), vec3<i32>(-20455i, -42390i, 2147483647i)), 2147483647i)), vec3<bool>(true, true, func_4(1f, ~0u, func_2(), var_0.xx))) << (select(select(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 1u, 54174u), vec3<u32>(27778u, 1u, 0u))), firstTrailingBit(min(vec3<u32>(1u, 20841u, 4294967295u), vec3<u32>(41624u, 45256u, 11615u))), vec3<bool>(true, true, true)), ~vec3<u32>(12794u, _wgslsmith_div_u32(0u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(2906u, 9122u, 4294967295u))), vec3<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), func_2().a.x)) % vec3<u32>(32u));
    var var_1 = Struct_1(vec2<bool>(true, true));
    var_0 = vec3<i32>(-(~_wgslsmith_div_i32(-1i, -1i) << (countOneBits(54325u) % 32u)), 2147483647i, -max(3999i, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -2147483647i, u_input.e), vec3<i32>(u_input.a.x, 1i, u_input.c)))));
    var_0 = vec3<i32>(firstTrailingBit(~u_input.c), 2483i, func_5(true || var_1.a.x, func_2(), func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2003f, 705f, 924f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2019f, -369f, 795f))))), var_1.a.x, var_1.a.x)).x);
    var var_2 = !vec2<bool>(false || var_1.a.x, all(!var_1.a) & true);
    let var_3 = Struct_1(func_1(vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1000f, 676f)), 1290f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -296f)))), var_2.x, false).a);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, u_input.c), vec3<i32>(-45234i, -1i, 12553i)), -vec3<i32>(444i, 0i, 0i))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(14272u, 1u, 37749u), abs(vec3<u32>(0u, 4333u, 22608u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
}

