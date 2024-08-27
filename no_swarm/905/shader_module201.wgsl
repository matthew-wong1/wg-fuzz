struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    return 30658i;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> vec2<u32> {
    var var_0 = max(reverseBits(~_wgslsmith_dot_vec2_i32(u_input.d.ww, firstLeadingBit(vec2<i32>(-1i, u_input.d.x)))), _wgslsmith_sub_i32(~select(_wgslsmith_div_i32(u_input.d.x, -1i), 2147483647i, !arg_2), func_3()));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 393f, 1831f, -1953f))))), _wgslsmith_f_op_f32(1066f * arg_1), Struct_1(u_input.d.wy, select(vec4<bool>(false, false, false, arg_2), vec4<bool>(false, arg_2, arg_2, true), false), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(exp2(arg_1))), ~vec3<u32>(4294967295u, 0u, 23083u), 1874i), Struct_1(countOneBits(u_input.d.xy) >> (firstLeadingBit(vec2<u32>(u_input.c, 1u)) % vec2<u32>(32u)), select(vec4<bool>(true, true, false, arg_2), vec4<bool>(true, true, true, true), u_input.b != 17748u), _wgslsmith_f_op_f32(floor(arg_1)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(81420u, u_input.a, u_input.c))), u_input.d.x)), -1i, !(2147483647i >= abs(max(u_input.d.x, u_input.d.x))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(20506u, u_input.a), ~vec2<u32>(74886u, u_input.c)), min(countOneBits(1u), _wgslsmith_clamp_u32(u_input.a, u_input.a, 17176u))), _wgslsmith_dot_vec2_u32(vec2<u32>(12125u, 4017u) ^ vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, u_input.b)) >> (~max(u_input.a, u_input.a) % 32u), reverseBits(_wgslsmith_mult_u32(~u_input.b, u_input.a & 0u))));
    var var_2 = true;
    let var_3 = var_1.a.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-829f * 306f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1944f), _wgslsmith_f_op_f32(-563f - -609f))), var_1.a.a.yww));
    return select(~vec2<u32>(_wgslsmith_mod_u32(var_1.d.x, var_1.a.c.d.x), var_1.a.d.d.x), ~vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 41970u, 23059u, 1u)), ~vec4<u32>(u_input.b, 94478u, u_input.a, var_1.a.c.d.x)), countOneBits(_wgslsmith_dot_vec2_u32(var_1.a.c.d.zx, vec2<u32>(var_1.a.d.d.x, 22174u)))), vec2<bool>(any(!vec2<bool>(arg_2, true)) || !arg_2, false));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(!select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, false)), true), select(all(vec4<bool>(true, true, false, false)), u_input.d.x != 0i, false)), func_2(27042i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f)))), true));
    var var_1 = any(select(vec4<bool>(!(!var_0.a.x), var_0.a.x, var_0.a.x, select(true, true, false)), select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(var_0.a.x, true, true, false)), !vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<bool>(true, false, all(vec4<bool>(var_0.a.x, var_0.a.x, true, false)), !var_0.a.x), 4294967295u < u_input.c), vec4<bool>(var_0.a.x, false, false, any(var_0.a) != true)));
    var_1 = any(select(select(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), select(select(vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, var_0.a.x, true, var_0.a.x)), vec4<bool>(true, var_0.a.x, true, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), !(!vec4<bool>(true, true, var_0.a.x, var_0.a.x))), select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), select(true, var_0.a.x, var_0.a.x)), select(vec4<bool>(var_0.a.x, false, true, true), !vec4<bool>(true, var_0.a.x, true, false), select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(false, false, false, true), vec4<bool>(var_0.a.x, var_0.a.x, true, true))), false), vec4<bool>(!var_0.a.x, _wgslsmith_f_op_f32(min(-1736f, -864f)) < _wgslsmith_f_op_f32(select(-233f, -849f, var_0.a.x)), false, all(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)))));
    var_1 = !any(select(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false)), !vec4<bool>(false, false, var_0.a.x, var_0.a.x), !(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1032f)), _wgslsmith_f_op_f32(trunc(-527f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1478f)), _wgslsmith_div_f32(243f, 1197f)), 862f, -783f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(-182f)), _wgslsmith_f_op_f32(max(215f, 930f)), -908f, _wgslsmith_f_op_f32(-753f + -1762f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(978f, 1475f, -738f, -753f))))));
    return Struct_1(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(1i, u_input.d.x)), -vec2<i32>(u_input.d.x, 1i), vec2<i32>(1i, u_input.d.x) << (~var_0.b % vec2<u32>(32u))), select(select(!vec4<bool>(true, var_0.a.x, var_0.a.x, true), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(var_0.a.x, var_0.a.x, true, false)), !vec4<bool>(true, true, var_0.a.x, var_0.a.x), !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)), vec4<bool>(reverseBits(2147483647i) >= -u_input.d.x, all(!var_0.a), ~16517i != u_input.d.x, all(!vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(-var_2.x), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 4526u, var_0.b.x), ~vec3<u32>(u_input.c, 65370u, 4294967295u)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.c, 0u, u_input.b), vec3<u32>(13u, u_input.a, u_input.b)), abs(vec3<u32>(4294967295u, 4294967295u, u_input.b)))), countOneBits(30294i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(false && (u_input.b != abs(u_input.a)), firstTrailingBit(max(_wgslsmith_mod_vec3_u32(~vec3<u32>(8924u, u_input.c, 65385u), vec3<u32>(u_input.a, u_input.a, 1u)), firstLeadingBit(vec3<u32>(0u, u_input.b, u_input.c) << (vec3<u32>(u_input.b, u_input.a, 56171u) % vec3<u32>(32u))))), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false))), 1u, _wgslsmith_mod_i32(-u_input.d.x, 0i));
    let var_1 = vec3<u32>(select(u_input.a, 1u, false), u_input.c, u_input.c);
    let var_2 = func_1();
    let var_3 = func_1().b.yzx;
    let var_4 = var_3.zz;
    var var_5 = Struct_5(vec2<bool>(var_3.x, var_3.x), _wgslsmith_add_vec2_u32(vec2<u32>(52064u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.x, var_2.d.x, var_0.b.x), vec4<u32>(var_2.d.x, var_1.x, var_2.d.x, 54360u))), var_2.d.zy));
    var_5 = Struct_5(var_2.b.wz, _wgslsmith_div_vec2_u32(abs(func_2(8379i, _wgslsmith_f_op_f32(-var_2.c), select(true, var_2.b.x, false))), var_2.d.yz));
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, 251f, var_2.c, var_2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1046f, var_2.c, -441f, -736f) * vec4<f32>(644f, var_2.c, 1000f, var_2.c)), true)))));
    var var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1058f - -1075f))) - _wgslsmith_f_op_f32(max(var_7.c, _wgslsmith_f_op_f32(select(-1627f, -928f, true)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

