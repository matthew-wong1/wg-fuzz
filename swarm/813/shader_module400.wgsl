struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(select(vec2<bool>(false, false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), true), vec2<bool>(u_input.a.x <= abs(u_input.a.x), true), select(vec2<bool>(true, all(vec3<bool>(true, false, false))), vec2<bool>(true, true), ~4294967295u >= ~u_input.a.x)), -(~_wgslsmith_sub_i32(1i, ~31186i)), 39186u);
    var var_1 = Struct_1(var_0.a, _wgslsmith_div_i32(var_0.b, -27638i), 0u);
    var var_2 = select(!select(!(!vec4<bool>(false, false, var_1.a.x, var_0.a.x)), !select(vec4<bool>(false, true, var_1.a.x, var_0.a.x), vec4<bool>(true, false, true, var_0.a.x), true), vec4<bool>(false, select(true, var_1.a.x, true), any(vec3<bool>(true, true, false)), var_1.b >= var_1.b)), select(select(!(!vec4<bool>(var_1.a.x, var_0.a.x, true, true)), select(vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(false, var_1.a.x, var_0.a.x, var_0.a.x), !var_1.a.x), true), !(!vec4<bool>(true, var_1.a.x, var_1.a.x, true)), vec4<bool>(_wgslsmith_f_op_f32(trunc(1400f)) < 1037f, true & any(vec4<bool>(false, var_1.a.x, false, var_0.a.x)), true, true)), select(!select(!vec4<bool>(var_1.a.x, var_1.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_1.a.x, var_0.a.x, var_0.a.x, true), !vec4<bool>(var_1.a.x, false, false, false)), !(!(!vec4<bool>(var_1.a.x, var_1.a.x, false, false))), select(vec4<bool>(true, var_1.a.x, var_0.c < u_input.a.x, all(vec3<bool>(var_1.a.x, var_0.a.x, true))), select(select(vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(false, false, var_1.a.x, var_1.a.x), false), !vec4<bool>(true, var_0.a.x, true, false), true), !select(vec4<bool>(var_1.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(false, var_0.a.x, true, true)))));
    var_2 = select(vec4<bool>(true, false, var_1.a.x, false), vec4<bool>(false, false, true, true), true);
    let var_3 = !(!(!vec4<bool>(var_0.b < var_0.b, var_0.a.x, var_0.a.x, false)));
    return var_0.b;
}

fn func_2() -> vec2<f32> {
    var var_0 = ~func_3();
    var var_1 = Struct_1(vec2<bool>(-(1i << (u_input.a.x % 32u)) <= -30494i, true != any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), _wgslsmith_div_i32(27649i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, i32(-1i) * -47841i, i32(-1i) * -1507i), select(vec3<i32>(0i, 0i, -2881i) >> (vec3<u32>(49823u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(1i, -2147483647i, 531i), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), 1u);
    var var_2 = !select(vec3<bool>(var_1.a.x, true, var_1.a.x), !vec3<bool>(true, all(vec4<bool>(false, true, var_1.a.x, false)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2352f)) - -2019f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f)));
    var var_3 = !vec4<bool>(!all(select(vec3<bool>(false, false, var_1.a.x), vec3<bool>(var_1.a.x, var_2.x, var_1.a.x), false)), all(!select(vec4<bool>(false, var_1.a.x, var_2.x, false), vec4<bool>(var_2.x, true, false, var_2.x), var_2.x)), var_1.a.x || select(var_2.x, var_2.x, false), false);
    var_0 = 0i;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1275f, 197f), _wgslsmith_f_op_f32(trunc(-208f)))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(752f, -759f))))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(vec2<bool>(all(vec4<bool>(all(vec3<bool>(false, false, true)), false, true, true)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), false))), -11652i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~4294967295u), u_input.a.x), ~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u) << (vec4<u32>(u_input.a.x, u_input.a.x, 8381u, 31617u) % vec4<u32>(32u)))));
    var var_1 = Struct_2(true, _wgslsmith_div_i32(-21508i, _wgslsmith_sub_i32(21390i, ~(-var_0.b))), _wgslsmith_f_op_vec2_f32(func_2()), Struct_1(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, var_0.a.x, true), vec3<bool>(var_0.a.x, true, true))), true), _wgslsmith_sub_i32(min(func_3(), 1i), var_0.b), ~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), var_0.b);
    var var_2 = ~(~1i);
    let var_3 = false;
    let var_4 = Struct_2(var_1.d.a.x, ~(i32(-1i) * -var_1.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c, vec2<f32>(var_1.c.x, var_1.c.x), true)), _wgslsmith_f_op_vec2_f32(sign(var_1.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) - var_1.c))), vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f))), var_0.a.x)), Struct_1(select(var_1.d.a, var_0.a, all(vec4<bool>(var_3, false, var_3, true))), ~(-1i), max(_wgslsmith_add_u32(select(u_input.a.x, u_input.a.x, true), _wgslsmith_add_u32(18905u, var_1.d.c)), ~(~67709u))), -var_1.d.b | _wgslsmith_mod_i32(-36015i, var_1.b));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c.x, var_1.c.x, -1682f)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.c.x, var_4.c.x, -828f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(567f, 1132f, -1068f) * vec3<f32>(-225f, 1172f, -666f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(641f, 114f, 863f) * vec3<f32>(376f, 2174f, -847f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * vec3<f32>(1073f, 177f, 132f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f), -426f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(991f * 1287f), _wgslsmith_div_f32(768f, 1149f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(934f, -1194f) - _wgslsmith_div_f32(-2445f, 289f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-822f, 355f, -879f)) + _wgslsmith_div_vec3_f32(vec3<f32>(371f, -640f, 1000f), vec3<f32>(-255f, 341f, -540f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(122f, -189f, 179f), vec3<f32>(-1179f, -286f, -756f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1632f, -243f, 650f), vec3<f32>(243f, -1303f, -603f), true)))))));
    var var_1 = true;
    var_1 = false;
    var_1 = true | (true || !(any(vec2<bool>(false, false)) & (u_input.a.x > 1753u)));
    var_1 = all(!vec3<bool>(true, any(vec4<bool>(true, true, false, false)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a & ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)), abs(9787u), ~vec3<u32>(_wgslsmith_div_u32(1u, 37150u), ~(3081u & u_input.a.x), u_input.a.x), vec4<u32>(u_input.a.x, min(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), u_input.a.x), ~_wgslsmith_sub_u32(abs(29902u), u_input.a.x), ~u_input.a.x));
}

