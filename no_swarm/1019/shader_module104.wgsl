struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec4<u32> {
    global0 = -abs(countOneBits(1i));
    var var_0 = 397f;
    let var_1 = Struct_3(arg_1.c, vec4<i32>(u_input.d, _wgslsmith_add_i32(-u_input.b, ~21534i) ^ (i32(-1i) * -31291i), 1i, u_input.d), arg_1.d.xx);
    let var_2 = -var_1.b.x;
    let var_3 = _wgslsmith_sub_vec4_i32(reverseBits(abs(vec4<i32>(~(-3504i), -18456i, u_input.d >> (arg_1.e.x % 32u), 0i))), var_1.b);
    return select(var_1.a.a, vec4<u32>(var_1.a.a.x, ~var_1.a.a.x, u_input.a, u_input.c) ^ vec4<u32>(arg_1.a.a.x, var_1.a.a.x, 4294967295u >> (arg_1.c.a.x % 32u), arg_1.a.a.x), arg_1.c.b);
}

fn func_2() -> Struct_1 {
    global0 = 0i;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -943f), 1000f)) * 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -760f), 1157f))));
    let var_1 = -25959i;
    var var_2 = Struct_2(Struct_1(func_3(vec3<f32>(100f, 1174f, var_0), Struct_2(Struct_1(vec4<u32>(2118u, u_input.c, 26137u, u_input.e), true), 838f, Struct_1(vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c), false), vec4<bool>(true, true, true, true), ~vec3<u32>(4294967295u, u_input.a, 68364u))), !(u_input.c >= ~u_input.a)), 1000f, Struct_1(vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u | u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(u_input.c, u_input.a)), vec2<u32>(1u, u_input.a)), 9781u), select(true, any(vec3<bool>(false, false, false)), select(u_input.e > u_input.a, true, true))), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)) && true, false, true, true), reverseBits(vec3<u32>(firstLeadingBit(~1u), ~countOneBits(1u), abs(_wgslsmith_div_u32(u_input.c, 39089u)))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + 348f), -1241f)))), 509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, var_0))) - -668f)));
    return Struct_1(~(~countOneBits(vec4<u32>(0u, 4294967295u, var_2.a.a.x, var_2.a.a.x))), var_2.a.b);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~u_input.c;
    var var_1 = arg_3;
    var_1 = Struct_2(func_2(), 253f, func_2(), select(!select(select(vec4<bool>(false, var_1.c.b, true, true), vec4<bool>(arg_3.d.x, arg_3.c.b, false, false), false), vec4<bool>(arg_2.b, false, var_1.d.x, false), arg_2.b), !vec4<bool>(func_2().b, true, true, arg_0 & arg_0), !(!(!arg_3.d))), ~_wgslsmith_sub_vec3_u32(arg_3.a.a.xxz, ~var_1.c.a.xzx));
    var_0 = ~79u;
    var var_2 = vec4<u32>(firstTrailingBit(u_input.c), func_2().a.x, 64803u, ((_wgslsmith_div_u32(var_1.c.a.x, arg_2.a.x) & _wgslsmith_clamp_u32(59873u, var_1.c.a.x, 1u)) | 91673u) ^ ~(u_input.a << (func_3(vec3<f32>(-1240f, var_1.b, var_1.b), Struct_2(Struct_1(vec4<u32>(arg_2.a.x, u_input.c, arg_2.a.x, arg_3.a.a.x), arg_0), 1234f, arg_2, vec4<bool>(arg_2.b, arg_0, true, arg_3.c.b), vec3<u32>(4294967295u, var_1.e.x, 43428u))).x % 32u)));
    return arg_3;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(!all(vec2<bool>(true, true)), u_input.b, func_2(), Struct_2(arg_2, -221f, Struct_1(arg_1.a.a, arg_0.a.b), !select(select(vec4<bool>(arg_1.a.b, true, arg_0.c.x, arg_2.b), vec4<bool>(false, arg_1.c.x, arg_0.a.b, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(arg_2.b, arg_0.a.b, arg_2.b, true), vec4<bool>(false, arg_1.a.b, arg_1.a.b, arg_0.a.b), arg_2.b), select(vec4<bool>(true, arg_1.a.b, false, false), vec4<bool>(false, arg_0.c.x, false, true), false)), ~vec3<u32>(_wgslsmith_mult_u32(1u, arg_0.a.a.x), ~0u, 0u)));
    let var_1 = -(vec2<i32>(-40188i, -1i) | ~select(vec2<i32>(20854i, u_input.b), vec2<i32>(-30973i, 0i), vec2<bool>(arg_1.c.x, arg_0.a.b)));
    var var_2 = !(arg_1.c.x & all(!(!var_0.d)));
    var_2 = all(var_0.d.yzz);
    let var_3 = _wgslsmith_f_op_f32(trunc(var_0.b));
    return arg_2;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    var var_0 = 1u;
    var var_1 = vec3<i32>(firstTrailingBit(arg_0.b.x), ~reverseBits(1i), reverseBits(-56863i)) | -arg_1.b.wyz;
    var var_2 = ~arg_1.a.a.yy;
    var var_3 = abs(arg_0.b.x);
    var var_4 = arg_0;
    return vec2<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(min(2012f, -2500f))))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(586f)))), 318f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(select(vec2<bool>(u_input.d <= 2147483647i, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false), true), vec2<bool>(true, all(vec2<bool>(false, false)))), select(vec2<bool>(true, false), vec2<bool>(true, all(vec3<bool>(false, false, true))), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), func_5(Struct_3(func_1(Struct_3(Struct_1(vec4<u32>(u_input.e, 3477u, 1u, 4294967295u), true), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec2<bool>(false, true)), Struct_3(Struct_1(vec4<u32>(u_input.e, 36613u, 1u, 68080u), true), vec4<i32>(0i, 7274i, 1i, 1i), vec2<bool>(false, true)), Struct_1(vec4<u32>(u_input.e, 4294967295u, 30230u, u_input.a), true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.d, -7645i), vec4<i32>(u_input.d, u_input.d, -25118i, u_input.b), vec4<i32>(0i, u_input.d, u_input.b, u_input.d)), vec2<bool>(true, true)), Struct_3(Struct_1(vec4<u32>(u_input.e, 1357u, 4294967295u, 4294967295u), false), -vec4<i32>(-1i, u_input.b, u_input.b, -26298i), vec2<bool>(true, true)), true)));
    var var_1 = Struct_3(Struct_1(vec4<u32>(~4294967295u, u_input.c, ~u_input.a, 4294967295u), func_5(Struct_3(Struct_1(vec4<u32>(4294967295u, 4093u, 0u, u_input.a), true), max(vec4<i32>(-34726i, u_input.d, u_input.d, 1i), vec4<i32>(u_input.d, u_input.b, 2147483647i, u_input.d)), vec2<bool>(false, false)), Struct_3(func_4(false, 2147483647i, Struct_1(vec4<u32>(42770u, u_input.a, 4294967295u, 1495u), false), Struct_2(Struct_1(vec4<u32>(4294967295u, 30735u, u_input.a, u_input.c), true), 323f, Struct_1(vec4<u32>(12611u, u_input.c, u_input.c, u_input.a), true), vec4<bool>(false, false, true, true), vec3<u32>(4294967295u, u_input.a, u_input.e))).a, ~vec4<i32>(u_input.b, 1878i, u_input.d, u_input.d), vec2<bool>(true, true)), false).x), vec4<i32>(select(u_input.d, 33356i, (u_input.e >= u_input.a) | true), u_input.b, u_input.b, u_input.d), vec2<bool>(false, func_1(Struct_3(func_1(Struct_3(Struct_1(vec4<u32>(u_input.e, 33366u, u_input.c, u_input.e), true), vec4<i32>(u_input.b, 2147483647i, u_input.b, 0i), vec2<bool>(true, false)), Struct_3(Struct_1(vec4<u32>(u_input.c, 42764u, u_input.e, u_input.e), true), vec4<i32>(10178i, -1i, u_input.b, -206i), vec2<bool>(true, false)), Struct_1(vec4<u32>(34549u, u_input.e, 1u, u_input.a), true)), vec4<i32>(-62038i, u_input.d, u_input.d, 1i) << (vec4<u32>(u_input.a, 41860u, u_input.e, 0u) % vec4<u32>(32u)), vec2<bool>(true, true)), Struct_3(Struct_1(vec4<u32>(u_input.e, u_input.c, u_input.a, u_input.c), false), ~vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.d), vec2<bool>(true, true)), func_2()).b));
    var_1 = Struct_3(var_1.a, ~(-vec4<i32>(u_input.b, -u_input.d, _wgslsmith_dot_vec2_i32(var_1.b.zw, vec2<i32>(-12412i, -2147483647i)), -26594i)), vec2<bool>(func_2().a.x > ((u_input.c & u_input.a) << ((var_1.a.a.x ^ 0u) % 32u)), _wgslsmith_mult_u32(~var_1.a.a.x, max(1u, var_1.a.a.x)) == firstTrailingBit(var_1.a.a.x)));
    var_1 = Struct_3(func_2(), vec4<i32>(-1i) * -vec4<i32>(~u_input.d, var_1.b.x, u_input.d, reverseBits(u_input.d)), var_1.c);
    global0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-48701i, -14535i), ~((1i >> (u_input.e % 32u)) | -2147483647i)), firstLeadingBit(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(505f)))) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1438f)))))), var_1.a.a.x, -((var_1.b & var_1.b) >> (vec4<u32>(u_input.c | u_input.e, _wgslsmith_div_u32(0u, 12860u), firstLeadingBit(u_input.c), 47882u) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(0i, ~u_input.b), u_input.b, 2147483647i));
}

