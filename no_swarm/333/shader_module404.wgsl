struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = any(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), false, any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), arg_0.a.a <= _wgslsmith_div_f32(133f, arg_0.a.c))));
    var var_1 = arg_0.b;
    var var_2 = arg_0.a;
    var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(34379i, arg_0.b)), select(~arg_0.b, select(arg_0.b, arg_0.b, false), var_2.b.x < 4294967295u), 1i, 46739i), vec4<i32>(~(arg_0.b >> (arg_0.c.x % 32u)), abs(1i), ~(~(-2147483647i)), reverseBits(-1i)));
    var var_3 = vec4<f32>(-2389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -455f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(118f)) * arg_0.a.a), -678f);
    return true;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(884f)), _wgslsmith_div_f32(638f, 909f)))), _wgslsmith_f_op_f32(ceil(267f))), abs(~(~vec2<u32>(4294967295u, 27769u))), 1f);
    let var_1 = ~var_0.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a), -1071f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1892f))))), select(firstLeadingBit(vec2<u32>(var_1, ~var_1)), select(vec2<u32>(0u, 1u), var_0.b, vec2<bool>(any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)))), func_3(Struct_2(Struct_1(var_0.c, var_0.b, -1289f), ~25683i, vec3<u32>(16864u, 4294967295u, u_input.a) >> (vec3<u32>(22484u, 1u, var_0.b.x) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-1f));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.a, 362f)))))), firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, var_1), firstLeadingBit(vec2<u32>(1u, u_input.a)))), 1197f), ~_wgslsmith_mod_i32(-1i, i32(-1i) * -51884i), ~(vec3<u32>(var_1, var_0.b.x | 4992u, ~u_input.a) << (((vec3<u32>(54467u, var_0.b.x, var_1) << (vec3<u32>(u_input.a, var_2.b.x, 4294967295u) % vec3<u32>(32u))) | ~vec3<u32>(var_0.b.x, var_0.b.x, 44967u)) % vec3<u32>(32u))));
    let var_4 = var_3.c;
    return ~min(~var_3.c, var_3.c);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = ~7979u;
    var_0 = u_input.a;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(170f, -747f))))))), _wgslsmith_f_op_vec2_f32(arg_0 + arg_0));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1018f + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - var_1.x)), _wgslsmith_f_op_f32(min(-1496f, -184f))))));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -610f));
    return Struct_1(arg_0.x, vec2<u32>(~0u, ~(~(4294967295u & u_input.a))), var_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.a)), vec2<f32>(-1404f, arg_0.a), arg_1.yz))), ~vec3<u32>(arg_0.b.x, _wgslsmith_mult_u32(29275u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 16696u), vec4<u32>(4294967295u, u_input.a, u_input.a, 31530u))), i32(-1i) * -26231i), 2147483647i, ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 13276u, u_input.a), vec3<u32>(4294967295u, 0u, 75155u) >> (vec3<u32>(0u, u_input.a, 52820u) % vec3<u32>(32u)))));
    let var_1 = var_0.c;
    let var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-362f, var_0.a.c))), _wgslsmith_f_op_f32(-var_0.a.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.a, -126f, func_4(vec2<f32>(1000f, 1464f), var_0.c, var_0.b).c), vec3<f32>(_wgslsmith_f_op_f32(591f * -1488f), _wgslsmith_f_op_f32(533f * -1391f), var_0.a.a), select(arg_1, select(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1.x, arg_1.x, var_2), arg_1, arg_1.x))))));
    var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1134f, -955f)), ~(~var_0.c >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 3537u, arg_0.b.x), vec3<u32>(4294967295u, 109109u, u_input.a), var_0.c) % vec3<u32>(32u))), 1i), 1i, select(_wgslsmith_clamp_vec3_u32(func_2(), _wgslsmith_mult_vec3_u32(var_0.c, var_0.c), ~var_0.c) | ~vec3<u32>(14158u, var_1.x, u_input.a), ~(~vec3<u32>(var_0.c.x, 59099u, var_0.c.x)), arg_1));
    return Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.yy + var_3.zx)), vec3<u32>(~var_0.a.b.x, var_1.x, u_input.a), var_0.b), i32(-1i) * -(~firstTrailingBit(var_0.b)), var_0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1622f)))) - -608f))));
    var var_1 = ~(-2147483647i);
    let var_2 = func_5(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-731f, _wgslsmith_f_op_f32(trunc(-125f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 134f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(440f, 1000f) - vec2<f32>(-354f, -1000f)))), func_2(), -(~(-30389i))), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), !(0u < u_input.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-779f, -1000f)))) != -209f));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(-var_2.a.c)), var_2.a.c))));
    let var_4 = 110206u;
    return Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a, -807f))), var_2.c, 2147483647i), -1i, countOneBits(var_2.c));
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = ~arg_0.c.b;
    let var_1 = ~0u & func_2().x;
    var var_2 = arg_2.x;
    var_2 = arg_2.x;
    var_2 = -1976f;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) + _wgslsmith_f_op_f32(548f + 422f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-543f + 240f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(216f, -762f)), vec2<f32>(-990f, -1068f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1430f, 274f), vec2<f32>(282f, -143f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -311f)))))));
    var var_1 = var_0.x;
    var_1 = 2092f;
    let var_2 = vec3<u32>(~(~_wgslsmith_sub_u32(u_input.a, u_input.a | 58371u)), 1u, _wgslsmith_mod_u32(u_input.a, func_6(Struct_4(func_1(), ~4294967295u, func_1().a, vec3<i32>(1i, 1i, 1i)), ~_wgslsmith_add_u32(33504u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, var_0.x, var_0.x))), vec3<bool>(true, true, true))));
    var var_3 = countOneBits(vec4<i32>(1i, 1i, 1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.x, -1000f, var_0.x), vec4<f32>(341f, var_0.x, 111f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, -141f)))))), _wgslsmith_mult_vec2_u32(var_2.yz, countOneBits(func_1().c.yz)));
}

