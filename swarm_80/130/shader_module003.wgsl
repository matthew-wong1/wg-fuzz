struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1589f, _wgslsmith_f_op_f32(-1495f + 1f))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_5, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(-496f)))));
    var var_1 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(743u, u_input.c.x));
    let var_2 = 917f;
    let var_3 = arg_2.b;
    let var_4 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(max(arg_1, ~reverseBits(15270u)), max(arg_1, ~_wgslsmith_add_u32(0u, u_input.b.x))), 1u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), -1071f)), _wgslsmith_f_op_f32(-var_2), var_2) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 742f, var_3))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1230f)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(var_3 - arg_2.b))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = Struct_1(-max(~(~vec3<i32>(-45523i, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, -49958i), vec3<i32>(-29775i, u_input.a, 1i)) >> (~u_input.c % vec3<u32>(32u))));
    var var_1 = Struct_2(vec4<bool>(var_0.a.x >= -var_0.a.x, !all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), false | select(all(vec2<bool>(false, true)), select(false, false, false), true), all(vec4<bool>(true, true, true, true))), 0u, arg_0.xy);
    var_1 = Struct_2(var_1.a, min(_wgslsmith_mod_u32(u_input.c.x, 0u), ~(~var_1.b)), _wgslsmith_f_op_vec2_f32(-arg_1.b.xz));
    let var_2 = Struct_3(Struct_1(vec3<i32>(firstTrailingBit(1i), ~u_input.a | (-1i ^ u_input.a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-32962i, 53813i, u_input.a), var_0.a.x))), Struct_2(!(!vec4<bool>(true, var_1.a.x, var_1.a.x, true)), var_1.b, vec2<f32>(arg_0.x, 1000f)));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(max(~40346u, var_1.b), 9005u, 4294967295u, 1u), vec4<u32>(~var_1.b, 0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.wx, ~vec2<u32>(78163u, u_input.c.x))), _wgslsmith_add_u32(1u, ~30587u)), u_input.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(countOneBits(countOneBits(arg_2.zwx) ^ arg_2.yyz)), Struct_2(arg_1.a, 4294967295u, arg_1.c));
    var var_1 = var_0.a;
    var var_2 = -216f;
    var_0 = Struct_3(Struct_1(max(-vec3<i32>(28289i, 17592i, arg_2.x), var_1.a)), var_0.b);
    let var_3 = Struct_3(Struct_1(-var_1.a), Struct_2(select(vec4<bool>(!var_0.b.a.x, any(arg_1.a), true, true), var_0.b.a, arg_1.a), u_input.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.b.yy)))));
    return Struct_3(var_0.a, Struct_2(!select(select(var_3.b.a, var_0.b.a, var_0.b.a), vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), var_0.b.a), arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(948f, -1141f) + var_0.b.c), _wgslsmith_f_op_vec2_f32(round(arg_0.b.yy)), 1554f > arg_0.b.x)))));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = func_5(Struct_4(0u, vec3<f32>(-981f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -593f)), _wgslsmith_f_op_f32(f32(-1f) * -901f))), Struct_2(vec4<bool>(true, true, true, true), 67718u, vec2<f32>(_wgslsmith_f_op_f32(floor(189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2423f - -496f)))), -(vec4<i32>(arg_0, abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1230i, 1i, 21539i, -2147483647i), vec4<i32>(0i, u_input.a, 11707i, 1i)), _wgslsmith_clamp_i32(arg_0, 27373i, 29682i)) << (func_4(_wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(false, false, true), u_input.b.x, Struct_5(Struct_1(vec3<i32>(u_input.a, -1i, 0i)), 1018f, vec4<i32>(4178i, -29946i, -2147483647i, arg_0), false, vec3<i32>(-2295i, arg_0, 0i)), vec3<bool>(true, false, false))), Struct_4(u_input.d, vec3<f32>(188f, 1089f, 574f))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_mult_i32(~u_input.a, ~(-firstLeadingBit(-arg_0)));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.b.a, u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1302f, var_0.b.c.x) * vec2<f32>(var_0.b.c.x, var_0.b.c.x)))) + vec2<f32>(1219f, _wgslsmith_f_op_f32(-var_0.b.c.x)))));
    let var_2 = func_5(Struct_4(countOneBits(_wgslsmith_sub_u32(select(29775u, arg_1.x, var_0.b.a.x), firstLeadingBit(0u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.c.x), -801f, _wgslsmith_f_op_f32(floor(var_0.b.c.x))))), Struct_2(func_5(Struct_4(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-194f, -1348f, 263f))), var_0.b, vec4<i32>(var_0.a.a.x, 1i, var_1, 15876i) | vec4<i32>(u_input.a, u_input.a, 59382i, -19516i)).b.a, func_5(Struct_4(abs(15826u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, var_0.b.c.x, -1334f))), var_0.b, vec4<i32>(0i, 25919i, _wgslsmith_dot_vec4_i32(vec4<i32>(-54481i, -47376i, arg_0, -9736i), vec4<i32>(1i, 21261i, -2147483647i, 1i)), u_input.a | u_input.a)).b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b.c, vec2<f32>(var_0.b.c.x, 836f)))))), ~_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-2147483647i, var_1, var_1, arg_0)), abs(vec4<i32>(0i, 2147483647i, u_input.a, arg_0))) & select(~vec4<i32>(28948i, -1i, arg_0, var_1) ^ (vec4<i32>(-30743i, var_0.a.a.x, -23609i, arg_0) & vec4<i32>(arg_0, -2147483647i, -2057i, 26293i)), max(~vec4<i32>(-33533i, u_input.a, var_1, 26263i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, var_0.a.a.x, 0i, 16296i), vec4<i32>(arg_0, var_1, -42623i, u_input.a))), !(!vec4<bool>(true, var_0.b.a.x, false, var_0.b.a.x)))).a.a.yz;
    var var_3 = false;
    return Struct_1(vec3<i32>(_wgslsmith_div_i32(countOneBits(var_2.x), var_2.x), -(var_0.a.a.x << (_wgslsmith_mult_u32(u_input.b.x, u_input.d) % 32u)), 1i));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_3;
    let var_1 = Struct_3(func_1(-47650i, ~min(vec2<u32>(arg_3.b, 86224u), vec2<u32>(1u, arg_3.b)), vec4<u32>(abs(31728u), ~abs(arg_3.b), arg_3.b, ~(~arg_3.b))), func_5(Struct_4(44709u, vec3<f32>(_wgslsmith_f_op_f32(-2776f + -1000f), arg_0.x, _wgslsmith_f_op_f32(-714f + arg_1.b))), Struct_2(vec4<bool>(false, true, true, true), min(select(arg_3.b, u_input.c.x, true), u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -1377f))), ~(~arg_1.c) ^ -arg_1.c).b);
    let var_2 = vec4<bool>(var_1.b.a.x, true, !all(!select(var_1.b.a.ww, var_1.b.a.wz, vec2<bool>(true, arg_1.d))), all(vec2<bool>(var_1.b.a.x, select(89401u, 0u, arg_3.a.x) > ~var_1.b.b)));
    let var_3 = arg_3.a.x;
    var_0 = Struct_2(!(!(!arg_3.a)), var_0.b, arg_0.yz);
    return Struct_3(func_1(1i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 45737u), u_input.c.yx), ~(~(~u_input.b))), func_5(Struct_4(_wgslsmith_add_u32(func_5(Struct_4(u_input.c.x, arg_0.xzy), Struct_2(arg_3.a, 1u, vec2<f32>(-800f, -543f)), vec4<i32>(2147483647i, var_1.a.a.x, 1i, 1i)).b.b, _wgslsmith_sub_u32(u_input.d, var_1.b.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, -296f, 744f) + arg_0.wwy), arg_0.wwx))), Struct_2(!arg_3.a, 1u, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1052f)), -871f)), -vec4<i32>(_wgslsmith_clamp_i32(31337i, 2227i, -11141i), -u_input.a, 0i >> (var_0.b % 32u), arg_2.x)).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -860f)));
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-368f + 1002f), -1000f, _wgslsmith_f_op_f32(floor(704f)), 626f))), Struct_5(func_1(countOneBits(-1i), ~vec2<u32>(u_input.b.x, u_input.c.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.d, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - -1000f)), ~vec4<i32>(11696i, firstLeadingBit(u_input.a), _wgslsmith_add_i32(u_input.a, u_input.a), -34869i & u_input.a), true, -vec3<i32>(abs(2147483647i), _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)))), firstTrailingBit(vec3<i32>(func_1(-2147483647i | u_input.a, vec2<u32>(1933u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, u_input.c.x, 1u)).a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 2147483647i), vec3<i32>(1i, u_input.a, u_input.a)) << (16815u % 32u), -15735i)), func_5(Struct_4(6858u, vec3<f32>(-292f, _wgslsmith_f_op_f32(f32(-1f) * -160f), -883f)), Struct_2(vec4<bool>(true, true, true, true), ~28245u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(887f, -714f)), _wgslsmith_div_vec2_f32(vec2<f32>(-640f, -155f), vec2<f32>(-870f, -200f)))), vec4<i32>(-1i) * -(vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a) ^ vec4<i32>(0i, -9979i, -2147483647i, 25370i))).b);
    var_1 = func_5(Struct_4(_wgslsmith_dot_vec2_u32(u_input.c.yx, ~(~u_input.c.zx)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(355f, 1430f, -1451f) - vec3<f32>(-857f, var_1.b.c.x, var_1.b.c.x)))))), func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1059f, var_1.b.c.x, -347f, var_1.b.c.x)), Struct_5(Struct_1(-var_1.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.c.x, 859f), _wgslsmith_div_f32(var_1.b.c.x, var_1.b.c.x))), vec4<i32>(_wgslsmith_add_i32(2147483647i, var_1.a.a.x), u_input.a, -8065i, ~(-1i)), !(!var_1.b.a.x), vec3<i32>(_wgslsmith_mod_i32(u_input.a, 0i), 2147483647i, u_input.a)), ~vec3<i32>(-23037i, u_input.a, -21506i) >> (reverseBits(vec3<u32>(37189u, 4698u, u_input.d)) % vec3<u32>(32u)), Struct_2(!(!var_1.b.a), (2048u | u_input.c.x) >> (~var_1.b.b % 32u), _wgslsmith_f_op_vec2_f32(-var_1.b.c))).b, -vec4<i32>(var_1.a.a.x << (5108u % 32u), func_1(var_1.a.a.x, u_input.c.xy, ~u_input.b).a.x, countOneBits(-27214i), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(42394i, 7303i), vec2<i32>(var_1.a.a.x, var_1.a.a.x)))));
    var var_2 = Struct_2(!vec4<bool>(!(!var_1.b.a.x), !var_1.b.a.x, false, any(vec2<bool>(true, true))), ~u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.b.c))), var_1.b.c) + _wgslsmith_f_op_vec2_f32(abs(var_1.b.c))));
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(max(-45048i & var_1.a.a.x, var_1.a.a.x), u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_1.a.a.yx, var_1.a.a.xz), _wgslsmith_sub_i32(u_input.a, u_input.a), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-27722i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-24377i, var_1.a.a.x, var_1.a.a.x, 30588i), vec4<i32>(u_input.a, -1659i, var_1.a.a.x, -2147483647i) ^ vec4<i32>(u_input.a, -2355i, 0i, u_input.a))) >> (u_input.b % vec4<u32>(32u)), firstLeadingBit(-(~vec4<i32>(-1i, u_input.a, var_1.a.a.x, u_input.a)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_1.a.a.x, u_input.a, 56280i), vec4<i32>(7146i, u_input.a, u_input.a, -1555i)) << (countOneBits(u_input.b) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_f_op_f32(1743f * var_1.b.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1583f, _wgslsmith_f_op_f32(f32(-1f) * -905f)), var_2.c.x), -201f), -vec2<i32>(reverseBits(var_1.a.a.x << (4294967295u % 32u)), _wgslsmith_add_i32(abs(var_1.a.a.x), var_1.a.a.x)));
}

