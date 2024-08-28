struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-2798i << (0u % 32u), ~(u_input.a.x << (0u % 32u)), i32(-1i) * -6252i), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(~(-28748i), 1i))) << (firstLeadingBit(vec3<u32>(max(_wgslsmith_mult_u32(26712u, 1u), _wgslsmith_mod_u32(1u, 59025u)), ~0u, abs(1u))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(594f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1208f * 613f), 324f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(174f * -1000f), -413f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(441f)) * _wgslsmith_div_f32(975f, -130f)))));
    let var_2 = Struct_1(~vec3<i32>(-min(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, 0i), var_0.yx), u_input.a.x), !(true || select(select(false, true, false), true, true)), _wgslsmith_f_op_vec3_f32(select(var_1.ywz, _wgslsmith_f_op_vec3_f32(ceil(var_1.zwy)), true)), var_0.x == ~(min(48063i, -2147483647i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 67229u, 4287u), vec3<u32>(14868u, 4294967295u, 0u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))) * 1257f));
    let var_3 = Struct_3(var_2.d, select(!(!(!vec3<bool>(var_2.d, var_2.d, false))), select(select(!vec3<bool>(var_2.d, var_2.b, false), vec3<bool>(var_2.b, var_2.b, var_2.d), !vec3<bool>(false, var_2.d, var_2.d)), vec3<bool>(any(vec2<bool>(var_2.d, var_2.b)), any(vec4<bool>(true, true, true, false)), var_2.d), !vec3<bool>(false, false, var_2.b)), select(true, !any(vec2<bool>(var_2.b, var_2.d)), all(select(vec3<bool>(var_2.d, var_2.b, var_2.b), vec3<bool>(false, true, true), vec3<bool>(false, true, var_2.d))))), Struct_2(~(-61145i), var_2, Struct_1(var_0, !(!var_2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, var_2.e, var_2.c.x)) - _wgslsmith_f_op_vec3_f32(-var_1.zzw)), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x)))), var_2, Struct_1(-select(vec3<i32>(-2147483647i, 1i, var_0.x), var_0, var_2.d), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.c))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)))), Struct_1(u_input.a, all(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_1.zwx, var_1.wzw)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.ywx + var_1.xzz))), all(select(vec2<bool>(true, var_2.b), !vec2<bool>(var_2.d, var_2.d), vec2<bool>(false, var_2.d))), -1414f));
    var var_4 = vec4<i32>(firstTrailingBit(21856i), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, var_3.c.e.a.x, var_0.x), firstLeadingBit(var_2.a)), var_2.a.x >> (1u % 32u)), u_input.a.x, var_2.a.x);
    return _wgslsmith_mult_vec3_i32(-vec3<i32>(-37330i, _wgslsmith_mult_i32(~var_4.x, _wgslsmith_add_i32(var_3.d.a.x, -2147483647i)), -38558i), vec3<i32>(_wgslsmith_div_i32(u_input.a.x, -_wgslsmith_add_i32(var_3.c.c.a.x, var_0.x)), _wgslsmith_dot_vec2_i32(var_0.zx, var_3.d.a.xz) ^ max(countOneBits(u_input.b.x), u_input.a.x), firstLeadingBit(~(-var_3.c.b.a.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = Struct_2(u_input.b.x, Struct_1(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 0i, -44524i) | vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), func_3()), (u_input.a.x << (4294967295u % 32u)) > u_input.b.x, arg_0, u_input.b.x < u_input.b.x, 558f), Struct_1(-vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.b.x), u_input.b.x ^ 5026i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, vec3<bool>(true, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-943f)), _wgslsmith_f_op_f32(-arg_0.x), -1000f))), !(5272u >= ~arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1615f)) + _wgslsmith_f_op_f32(-605f - 654f)))), Struct_1(max(max(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x)) >> (~arg_2 % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(u_input.b.zww, u_input.a)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1162f, 658f)), false, _wgslsmith_f_op_f32(-1f)), Struct_1(countOneBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.b.x), vec3<i32>(3363i, u_input.b.x, u_input.b.x)), -u_input.a, vec3<i32>(-2147483647i, u_input.a.x, -49631i))), !all(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(max(arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, -450f, 672f))))), _wgslsmith_f_op_f32(max(arg_0.x, -1282f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1556f - 795f)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 1171f) - arg_0.x))));
    var var_1 = _wgslsmith_div_vec2_i32(~u_input.a.zy, vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, var_0.d.a.x))) << (~vec2<u32>(_wgslsmith_div_u32(~13397u, 42773u), arg_2.x) % vec2<u32>(32u));
    var var_2 = Struct_2(abs(firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, var_0.a)), u_input.b.xw))), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.a.x, var_1.x, abs(var_0.d.a.x)), -vec3<i32>(var_1.x, -89125i, -38279i)), false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c.x, 626f, 2064f)), var_0.b.c, !(!vec3<bool>(var_0.b.d, false, false)))), any(vec4<bool>(true, select(var_0.d.b, var_0.d.b, false), any(vec3<bool>(var_0.c.b, var_0.b.b, false)), true)), arg_0.x), var_0.b, Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b.wyy, -abs(var_0.b.a), max(select(vec3<i32>(u_input.a.x, u_input.b.x, var_1.x), vec3<i32>(1i, -6357i, -11365i), vec3<bool>(true, true, var_0.e.b)), vec3<i32>(var_1.x, var_0.c.a.x, var_1.x))), any(!(!vec4<bool>(var_0.b.d, true, var_0.b.b, var_0.e.b))), _wgslsmith_f_op_vec3_f32(var_0.d.c + _wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(arg_0.x, var_0.c.c.x, var_0.b.c.x), !var_0.b.d))), any(select(vec3<bool>(var_0.d.d, false, var_0.b.b), select(vec3<bool>(var_0.c.d, var_0.c.d, true), vec3<bool>(var_0.c.b, var_0.b.d, var_0.c.b), true), true)), 1059f), var_0.b);
    var_2 = var_0;
    var var_3 = select(vec2<bool>(false, true), !select(select(vec2<bool>(var_2.c.b, var_0.b.d), !vec2<bool>(false, var_2.b.b), select(vec2<bool>(var_2.b.d, var_2.c.d), vec2<bool>(var_0.d.b, false), var_2.e.d)), vec2<bool>(true, var_2.e.d), false), select(true && (var_0.b.b == true), var_2.d.b, true));
    return _wgslsmith_f_op_f32(-var_2.e.e);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    let var_0 = -2147483647i;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-119f, -529f, -1637f))), 6020u, ~vec3<u32>(1u, 23598u, 1u)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f)), 371f) * _wgslsmith_f_op_f32(step(-510f, _wgslsmith_div_f32(-918f, _wgslsmith_f_op_f32(f32(-1f) * -986f))))) * _wgslsmith_f_op_f32(func_1(5861i, min(vec2<i32>(u_input.b.x, u_input.b.x), -vec2<i32>(u_input.b.x, -24151i)) >> (firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(20660u, 50855u), vec2<u32>(3051u, 1u))) % vec2<u32>(32u)))));
    var var_1 = all(select(vec3<bool>(true | all(vec2<bool>(true, true)), ~4294967295u > _wgslsmith_clamp_u32(4294967295u, 275u, 0u), true), !vec3<bool>(all(vec3<bool>(true, false, true)), true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true)));
    var var_2 = -1185f;
    var var_3 = Struct_1(-reverseBits(vec3<i32>(1i, min(u_input.a.x, 0i), _wgslsmith_mod_i32(-2147483647i, u_input.b.x))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(430f + -706f), _wgslsmith_f_op_f32(-2128f + 285f)), -631f, _wgslsmith_f_op_f32(floor(-2518f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 496f, -693f))), vec3<f32>(_wgslsmith_div_f32(-761f, 1000f), 367f, _wgslsmith_f_op_f32(f32(-1f) * -1012f)), vec3<bool>(true, true, true)))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(2627f, -1000f, -662f) + _wgslsmith_div_vec3_f32(vec3<f32>(-126f, -289f, 875f), vec3<f32>(269f, -400f, 1093f))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(22436u, 60428u), vec2<u32>(4294967295u, 4294967295u))), vec3<u32>(min(2126u, 1u), 1u, countOneBits(1u)))) - _wgslsmith_f_op_f32(-1625f + _wgslsmith_f_op_f32(-151f + _wgslsmith_div_f32(237f, -932f)))));
    let var_4 = select(select(!vec4<bool>(var_3.c.x < 814f, true, any(vec4<bool>(var_3.b, true, var_3.b, var_3.b)), var_3.b | true), !(!select(vec4<bool>(var_3.d, true, true, false), vec4<bool>(var_3.d, true, false, var_3.d), vec4<bool>(false, true, var_3.b, true))), false), vec4<bool>(any(vec4<bool>(false, any(vec2<bool>(true, true)), false, !var_3.d)), (_wgslsmith_div_i32(u_input.b.x, var_3.a.x) != ~18900i) || true, true, var_3.b), (-126f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1170f, -1867f)), _wgslsmith_f_op_f32(max(-377f, -1336f))))) && true);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_3.c.x, _wgslsmith_f_op_f32(func_2(vec3<f32>(1382f, 783f, var_3.e), 23309u, vec3<u32>(1u, 26085u, 4294967295u))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(func_1(-u_input.a.x, abs(u_input.b.xy))))));
    var_0 = -612f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, var_3.c.yx, countOneBits(1u ^ select(34424u, 1u, var_3.b)));
}

