struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    return -1483f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec3<bool>(((i32(-1i) * -35274i) | u_input.a.x) < firstTrailingBit(_wgslsmith_add_i32(1i, u_input.a.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -285f))) == _wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(select(-530f, -758f, true))), false && (any(vec4<bool>(true, true, false, true)) || true)), -574f, ~vec2<i32>(u_input.a.x, -u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-511f, _wgslsmith_f_op_f32(211f + 469f), any(vec2<bool>(true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, 209f))) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-245f * -422f), 656f) * _wgslsmith_f_op_f32(f32(-1f) * -1248f)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1423f, var_0.b, !(!var_0.d) || var_0.a.x)), -279f));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(var_0.d, true, var_0.d), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(min(var_0.b, -299f))), abs(vec2<i32>(u_input.a.x, u_input.a.x)), !all(var_0.a)), var_0.c.x, 55569u)), u_input.a.xy, all(select(select(vec4<bool>(false, false, var_0.d, var_0.a.x), vec4<bool>(var_0.a.x, var_0.d, var_0.a.x, var_0.d), true), !vec4<bool>(var_0.a.x, var_0.d, true, true), vec4<bool>(var_0.a.x, true, var_0.d, var_0.d))) == (_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -799f)) != var_1));
    var_0 = Struct_1(select(vec3<bool>(true && any(vec4<bool>(true, var_0.d, var_0.a.x, var_0.d)), any(vec3<bool>(true, true, true)), false), vec3<bool>(false, _wgslsmith_clamp_i32(-1i, 46801i, u_input.a.x) < var_0.c.x, (var_0.b > var_0.b) || (var_1 < 1521f)), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -815f)), var_0.c, !(_wgslsmith_f_op_f32(-var_1) >= var_1));
    var var_2 = Struct_1(vec3<bool>(!(!any(vec3<bool>(false, false, false))), !var_0.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_1, var_0.c, var_0.a.x), abs(583i), 52216u)), !var_0.d || (-2147483647i >= u_input.a.x))) * var_1), var_0.c << (vec2<u32>(~(~1u), 37466u) % vec2<u32>(32u)), var_0.d);
    return true;
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec4<i32>(u_input.a.x, -50500i, _wgslsmith_clamp_i32(u_input.a.x, -_wgslsmith_sub_i32(abs(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, -6950i, u_input.a.x), u_input.a)), _wgslsmith_add_i32(2147483647i, -u_input.a.x << (1u % 32u))), ~(~1i));
    var_0 = u_input.a;
    let var_1 = true;
    var_0 = vec4<i32>(var_0.x, _wgslsmith_sub_i32(-24905i, min(-37997i, _wgslsmith_dot_vec3_i32(u_input.a.zxy, vec3<i32>(var_0.x, 2147483647i, u_input.a.x))) >> (firstTrailingBit(4294967295u) % 32u)), var_0.x, var_0.x);
    var var_2 = !(!select(arg_0, arg_0, !(!arg_0)));
    return reverseBits(~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 18355u), vec3<u32>(1u, 19677u, 4294967295u))) ^ 22985u);
}

fn func_1() -> i32 {
    let var_0 = 0u | ~func_4(vec3<bool>(true, func_2(), true));
    let var_1 = vec4<bool>(true, (any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) && true) & true, (1i >> (~var_0 % 32u)) <= u_input.a.x, true);
    return ~(_wgslsmith_mod_i32(-min(u_input.a.x, u_input.a.x), u_input.a.x) | select(~u_input.a.x, -2147483647i, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(_wgslsmith_f_op_f32(round(-429f)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -982f), -218f))));
    let var_1 = min(vec2<i32>(-u_input.a.x, u_input.a.x), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), -func_1()), firstTrailingBit(u_input.a.x)));
    let var_2 = false;
    var var_3 = Struct_1(vec3<bool>(all(vec3<bool>(true, true, true)), u_input.a.x == ~(-2147483647i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(var_2, true, var_2), 548f, vec2<i32>(u_input.a.x, -1i), var_2), u_input.a.x, 39098u)))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-483f))))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-985f, 689f)))) * 1335f)), u_input.a.yw, true);
    var_3 = Struct_1(vec3<bool>(true == !(var_3.b <= 359f), !var_3.d, var_2), -411f, vec2<i32>(_wgslsmith_add_i32(~var_1.x, _wgslsmith_add_i32(~var_3.c.x, firstTrailingBit(var_3.c.x))), -18614i), firstTrailingBit(7394u) >= _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 11523u), 1u));
    let var_4 = _wgslsmith_sub_i32(func_1(), -2147483647i);
    let var_5 = var_3.c;
    var var_6 = Struct_1(var_3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1678f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b, -227f)))), -1256f), firstLeadingBit(_wgslsmith_mult_vec2_i32(var_1, countOneBits(~vec2<i32>(18119i, var_1.x)))), false);
    var var_7 = ~select(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(41352u, 0u), vec2<u32>(62942u, 57016u))), firstTrailingBit(reverseBits(min(vec2<u32>(56180u, 4294967295u), vec2<u32>(126527u, 13598u)))), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(89729u, var_7.x), vec2<u32>(19961u, var_7.x)), ~vec2<u32>(1u, var_7.x), min(vec2<u32>(7647u, var_7.x), vec2<u32>(1u, var_7.x))), vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_7.x), _wgslsmith_clamp_u32(0u, var_7.x, var_7.x))) >> (~(~vec2<u32>(1u, 1u)) % vec2<u32>(32u)), _wgslsmith_div_f32(var_6.b, _wgslsmith_f_op_f32(-var_3.b)), var_7.x);
}

