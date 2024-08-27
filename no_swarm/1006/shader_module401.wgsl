struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.c.zxz;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-130f)));
    var var_2 = Struct_1(~(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, 2067i, 0i), vec4<i32>(-7242i, u_input.c.x, -23454i, u_input.c.x)) | vec4<i32>(-10598i, var_0.x, 2147483647i, 4000i)) | -u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 - var_1)), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(519f, var_1))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1817f, var_1)))))), ~vec2<u32>(max(firstLeadingBit(u_input.b), u_input.b), 1325u));
    let var_3 = _wgslsmith_dot_vec3_i32(u_input.c.zxz, vec3<i32>(u_input.c.x, -2147483647i, -u_input.c.x));
    var_0 = _wgslsmith_div_vec3_i32(u_input.c.xxw, vec3<i32>(0i, var_3, -1i) & ((vec3<i32>(1i, var_0.x, u_input.a) & u_input.c.wwy) << (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(44333u, 110776u, 51457u), vec3<u32>(0u, 1u, u_input.b), vec3<u32>(4294967295u, u_input.b, 28469u)), _wgslsmith_sub_vec3_u32(vec3<u32>(78494u, var_2.c.x, var_2.c.x), vec3<u32>(u_input.b, u_input.b, 82839u))) % vec3<u32>(32u))));
    return ~vec2<u32>(106235u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 11093u), _wgslsmith_mod_vec2_u32(var_2.c, vec2<u32>(u_input.b, 0u)))) >> (vec2<u32>(u_input.b, ~_wgslsmith_dot_vec2_u32(~var_2.c, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.c.x), var_2.c))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = ~(29248u ^ _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(0u, 27158u)), ~(~u_input.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 722f, -555f, -1507f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, arg_2, -2166f, 1182f) - vec4<f32>(-196f, -888f, arg_2, arg_2))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(820f)), 1000f, arg_2, 463f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_2, arg_2, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2502f, arg_2, arg_2, 1209f) - vec4<f32>(arg_2, -1262f, arg_2, 601f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1207f)), _wgslsmith_f_op_f32(-105f + arg_2), arg_2, _wgslsmith_f_op_f32(-239f - arg_2)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, arg_2, -313f, -930f) * vec4<f32>(arg_2, 436f, 719f, arg_2)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 291f, arg_2, -809f) + vec4<f32>(arg_2, arg_2, -2969f, -493f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2)))));
    let var_2 = func_3();
    let var_3 = ~u_input.b;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1756f * var_1.x), _wgslsmith_f_op_f32(ceil(554f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -874f)), arg_2))));
    return select(!(!select(!arg_0, arg_0, arg_0)), select(arg_1.wxz, vec3<bool>(arg_0.x, true, arg_0.x), true), arg_0);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = !(!any(func_2(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), -999f)));
    var_0 = 1i > _wgslsmith_dot_vec3_i32(u_input.c.wyz, u_input.c.yxy);
    var_0 = !(!all(vec4<bool>(false, true, false, true)) || true) != !all(func_2(vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), _wgslsmith_div_f32(1776f, 1285f)).xz);
    var var_1 = Struct_1(u_input.c >> (max(_wgslsmith_mod_vec4_u32(~vec4<u32>(133039u, 47454u, u_input.b, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(1149u, 0u, 69649u, u_input.b), vec4<u32>(0u, u_input.b, 41955u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(71932u, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(0u, 40707u, 60988u, u_input.b))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, 851f)), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.b, 1u))), ~abs(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)))));
    var_1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(-2924i | u_input.a, _wgslsmith_mod_i32(select(30370i, var_1.a.x, false), 1i)), -_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, u_input.a), vec2<i32>(1i, -14415i)), ~u_input.a, var_1.a.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), var_1.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f)), _wgslsmith_f_op_f32(round(var_1.b.x))))), countOneBits(~((var_1.c ^ vec2<u32>(1u, 79479u)) ^ vec2<u32>(var_1.c.x, u_input.b))));
    return _wgslsmith_f_op_f32(-var_1.b.x);
}

fn func_4(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(select(select(func_2(func_2(vec3<bool>(true, false, true), vec4<bool>(false, false, true, false), -632f), vec4<bool>(true, true, true, true), arg_0), vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, true)), u_input.b < u_input.b), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(any(vec3<bool>(false, true, false)), false, true)), true), Struct_1(min(select(u_input.c, u_input.c, vec4<bool>(true, false, false, false)), vec4<i32>(-1i) * -u_input.c), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(-255f, arg_0)), min(~_wgslsmith_add_vec2_u32(vec2<u32>(59242u, 58370u), vec2<u32>(0u, 1u)), ~(~vec2<u32>(1u, u_input.b)))), Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(8780i, -31183i, -10279i, u_input.a), u_input.c >> (vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-832f)))), ~max(vec2<u32>(10749u, u_input.b), vec2<u32>(2384u, 1u))));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(vec4<i32>(1i, min(1i << (u_input.b % 32u), var_0.b.a.x | -1i), -2147483647i, -(u_input.c.x ^ var_0.b.a.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.b.x, _wgslsmith_div_f32(900f, var_0.b.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.c.b, var_0.c.b))))), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 5823u), var_0.c.c) >> (firstLeadingBit(var_0.c.c) % vec2<u32>(32u)))));
    var_0 = Struct_2(var_0.a, var_0.c, var_0.c);
    var_0 = Struct_2(!vec3<bool>(true, func_2(!vec3<bool>(true, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-arg_0)).x, func_2(var_0.a, vec4<bool>(true, var_0.a.x, false, true), arg_0).x & true), Struct_1(var_0.b.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -353f))))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b.c, vec2<u32>(var_0.c.c.x, 20968u)), vec2<u32>(0u, var_0.b.c.x)), 1u)), Struct_1(~_wgslsmith_sub_vec4_i32(max(u_input.c, vec4<i32>(u_input.c.x, -1i, u_input.a, var_0.c.a.x)), ~vec4<i32>(var_0.c.a.x, var_0.c.a.x, 28176i, -34519i)), vec2<f32>(-1766f, _wgslsmith_f_op_f32(var_0.b.b.x + arg_0)), var_0.b.c));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_add_vec4_i32(var_0.c.a, u_input.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.c.b * vec2<f32>(-388f, var_0.c.b.x)))), var_0.c.b)), func_3()));
    return Struct_1(~(-(-var_0.c.a << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 64890u), vec4<u32>(1u, 60736u, 0u, 1u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(876f, -386f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1166f, arg_0), var_0.b.b, true)))))), var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstLeadingBit(2147483647i)))) * -652f));
    var var_1 = -255f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i))) - -1000f);
    let var_2 = func_4(var_0.b.x);
    var_1 = true;
    var_1 = any(vec4<bool>(false, false, false, 0u == u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c.x, ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 16146i, var_0.a.x), var_2.a.zzw), u_input.a)));
}

