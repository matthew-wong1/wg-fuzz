struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_3(vec2<i32>(u_input.b, -_wgslsmith_add_i32(-10387i, -31624i) >> (~u_input.a % 32u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1423f)))), -1350f), select(18841u, ~(~arg_0), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))), select(vec2<u32>(select(0u, 45591u, true), ~4294967295u), abs(u_input.d), true)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1305f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), (4294967295u > arg_0) && false);
    let var_1 = -(~var_0.a.x) << (~1u % 32u);
    var var_2 = Struct_3(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a)))), any(!select(!vec4<bool>(true, var_0.d, var_0.d, true), select(vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(true, var_0.d, true, true), false), var_0.d)));
    let var_3 = Struct_5(Struct_3(var_2.a, Struct_2(_wgslsmith_f_op_f32(select(-1092f, _wgslsmith_f_op_f32(1326f + 274f), true)), var_0.b.b, _wgslsmith_sub_vec2_u32(min(vec2<u32>(var_0.b.c.x, var_2.b.c.x), vec2<u32>(arg_0, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(0u, var_0.b.c.x)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.c.a))))), select(false, all(!vec3<bool>(var_2.d, false, var_0.d)), var_2.d)), !vec4<bool>(any(vec2<bool>(var_0.d, true)), true, !(arg_0 != 56652u), !var_2.d), _wgslsmith_div_f32(-400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))));
    var var_4 = vec3<f32>(1389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) - _wgslsmith_f_op_f32(var_0.b.a - 1953f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) - _wgslsmith_f_op_f32(select(-426f, var_2.b.a, var_3.b.x))))), var_0.c.a);
    return !(!var_3.b.x);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(Struct_3(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-22143i, u_input.b) & vec2<i32>(2147483647i, 8317i)), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, u_input.b), reverseBits(vec2<i32>(69978i, u_input.b)))), Struct_2(-456f, _wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(25238u, 21719u)), _wgslsmith_mult_vec2_u32(max(u_input.d, vec2<u32>(27384u, u_input.c.x)), ~u_input.d)), Struct_1(218f), !func_3(u_input.d.x)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(select(false, false, true), true, true, true), vec4<bool>(any(vec3<bool>(false, true, false)), true, func_3(u_input.a), true)), vec4<bool>(func_3(u_input.a & u_input.a), true & (6275u <= u_input.c.x), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(123f * 529f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1292f * 1708f)))))));
    var var_1 = var_0.a;
    let var_2 = var_0.b;
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c, true);
    var_1 = Struct_3(vec2<i32>(var_1.a.x, select(u_input.b, min(1i, _wgslsmith_div_i32(var_1.a.x, 52574i)), var_0.a.d)), var_0.a.b, var_1.c, false);
    return Struct_3(~(_wgslsmith_add_vec2_i32(select(vec2<i32>(41531i, -25850i), vec2<i32>(var_0.a.a.x, var_1.a.x), true), var_1.a) ^ vec2<i32>(-u_input.b, 1i)), Struct_2(_wgslsmith_f_op_f32(var_1.c.a * _wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_sub_u32(1u, ~_wgslsmith_mult_u32(var_0.a.b.c.x, var_0.a.b.b)), vec2<u32>(u_input.d.x, 1u)), var_1.c, any(!vec4<bool>(var_2.x, true, var_0.b.x, false)) & false);
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = (-(~arg_0.a >> (~arg_0.b.c % vec2<u32>(32u))) & abs(-vec2<i32>(u_input.b, u_input.b))) & vec2<i32>(1i, arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1828f + -1098f)))) + -1136f);
    let var_2 = vec3<i32>(abs(var_0.x), ~(-2147483647i), u_input.b);
    var var_3 = arg_0.c;
    var_0 = -vec2<i32>(1i, ~(~var_2.x)) >> (~max(~(u_input.c.zy ^ vec2<u32>(u_input.c.x, arg_0.b.b)), _wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.a, 4261u), u_input.d), vec2<u32>(0u, 71784u))) % vec2<u32>(32u));
    return -select(var_2 ^ -vec3<i32>(var_2.x, -5783i, -18262i), var_2, !select(!vec3<bool>(arg_0.d, false, false), !vec3<bool>(arg_0.d, true, false), !vec3<bool>(arg_0.d, false, arg_0.d)));
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.d.x;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, 284f), _wgslsmith_f_op_f32(sign(-253f)), _wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1840f, 683f, 1777f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1854f, 248f, 1000f))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2456f, _wgslsmith_f_op_f32(abs(-237f)))), var_0, _wgslsmith_mult_vec2_u32(vec2<u32>(14792u, 0u), u_input.d | _wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(var_0, 5666u)))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -(~2147483647i)), _wgslsmith_add_vec3_i32(func_4(func_2()), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(1i, u_input.b, u_input.b)), vec3<i32>(-2147483647i, 0i, u_input.b)), vec3<i32>(~u_input.b, u_input.b, u_input.b ^ u_input.b))));
    let var_3 = Struct_5(Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(func_2().a, firstTrailingBit(vec2<i32>(-76597i, var_2))), vec2<i32>(8340i, -29928i)), Struct_2(var_1.b.a, ~firstLeadingBit(31077u), _wgslsmith_clamp_vec2_u32(var_1.b.c, vec2<u32>(u_input.d.x, var_0), vec2<u32>(4294967295u, var_1.b.b)) >> (min(var_1.b.c, vec2<u32>(var_0, 77687u)) % vec2<u32>(32u))), func_2().c, !(!all(vec2<bool>(true, true)))), vec4<bool>(!(false || (var_0 > var_0)), true, func_3(~(~var_0)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))) && true), _wgslsmith_f_op_f32(ceil(var_1.b.a)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(round(-349f)), countOneBits(max(u_input.c.x, _wgslsmith_div_u32(1u, var_0 & var_3.a.b.b))), reverseBits(min(_wgslsmith_mod_vec2_u32(var_3.a.b.c, var_1.b.c), countOneBits(u_input.c.zx)) & u_input.c.zx));
    return Struct_3(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2, -5754i), -var_2), var_3.a.a.x), var_3.a.a), func_2().b, var_3.a.c, var_3.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.c;
    var_1 = func_2().c;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(564f, var_1.a, -108f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.a, var_0.b.a, -667f))), vec3<bool>(var_0.d, var_0.d, var_0.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, -1503f, 199f))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a, -994f, 905f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -368f, 925f))))), Struct_2(_wgslsmith_div_f32(-311f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_add_u32(~(7035u >> (1u % 32u)), u_input.d.x), _wgslsmith_clamp_vec2_u32(~abs(var_0.b.c), var_0.b.c, abs(vec2<u32>(34484u, 40170u)))));
    var var_3 = Struct_3(max(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(-1i, 37874i, 2147483647i)), -2147483647i), vec2<i32>(abs(abs(28983i)), ~firstTrailingBit(-5191i))), var_0.b, func_2().c, var_0.d);
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

