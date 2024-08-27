struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1005f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1126f, 312f)), _wgslsmith_f_op_f32(sign(-1466f)))) + 684f);
    let var_1 = ~max((min(vec3<i32>(2147483647i, 1i, 38358i), vec3<i32>(104083i, 24508i, -2147483647i)) >> (firstTrailingBit(vec3<u32>(u_input.b.x, 1u, u_input.a.x)) % vec3<u32>(32u))) & (-vec3<i32>(-12015i, 2147483647i, 2147483647i) >> (vec3<u32>(u_input.c, 4294967295u, 151771u) % vec3<u32>(32u))), ~(vec3<i32>(1i, 1i, 1i) >> (u_input.b % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-558f, -1000f, 2436f), vec3<f32>(var_0, 1284f, var_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_0)))))));
    var var_3 = var_0;
    var_3 = -1718f;
    return Struct_3(Struct_2(arg_1.x, false), 43093u, Struct_1(true), u_input.b.yy, Struct_2(true, true));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = 2315f;
    return select(vec4<bool>(all(select(select(vec4<bool>(arg_2.e.a, false, true, false), vec4<bool>(arg_2.a.b, false, true, arg_2.e.a), arg_2.e.a), !vec4<bool>(arg_2.a.a, arg_2.a.a, true, false), vec4<bool>(true, true, arg_2.c.a, arg_2.e.b))), ~_wgslsmith_add_u32(94420u, 0u) > ~_wgslsmith_sub_u32(u_input.a.x, 1u), !arg_2.c.a, !any(vec3<bool>(false, false, arg_2.c.a))), vec4<bool>(any(!select(vec2<bool>(arg_2.c.a, true), vec2<bool>(arg_2.e.b, true), vec2<bool>(arg_2.a.a, arg_2.c.a))), arg_2.e.a, false, arg_2.c.a && select(arg_2.a.b, true, func_2(vec3<bool>(arg_2.a.b, false, arg_2.e.a), vec4<bool>(true, false, arg_2.a.a, arg_2.e.b)).e.b)), !vec4<bool>(true, arg_2.c.a, _wgslsmith_f_op_f32(288f - 709f) <= _wgslsmith_f_op_f32(select(arg_0, -1280f, arg_2.e.a)), true));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    var var_0 = Struct_5(!select(select(arg_1, !vec4<bool>(false, false, arg_2.x, arg_3), true), select(!arg_2, select(arg_2, vec4<bool>(arg_2.x, arg_1.x, arg_2.x, arg_3), true), true), any(vec3<bool>(arg_2.x, true, true))), Struct_3(Struct_2(!any(vec3<bool>(false, arg_3, arg_2.x)), false), 1u, Struct_1(func_2(vec3<bool>(true, arg_1.x, arg_1.x), select(vec4<bool>(false, arg_2.x, arg_1.x, true), arg_2, vec4<bool>(arg_3, arg_1.x, arg_1.x, arg_2.x))).e.b), vec2<u32>(0u, ~_wgslsmith_add_u32(24439u, u_input.a.x)), Struct_2(arg_0.x < -1368f, !arg_3)), Struct_4(-202f, 426f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * 196f))), Struct_2(all(!arg_2.xwz), false)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.a))))), _wgslsmith_f_op_f32(sign(var_0.c.a))));
    let var_2 = func_3(-1000f, i32(-1i) * -select(1i, ~(-1i), var_0.b.b < u_input.d), var_0.b);
    var_0 = Struct_5(vec4<bool>(_wgslsmith_f_op_f32(max(-1193f, _wgslsmith_f_op_f32(max(-1000f, var_1)))) <= var_1, true, !any(!arg_2.yy), arg_2.x), Struct_3(Struct_2(true, all(func_3(-497f, -2147483647i, var_0.b).xxw)), 1u, Struct_1(13576u < select(var_0.b.b, 4294967295u, false)), firstLeadingBit(vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 68119u, var_0.b.d.x, var_0.b.b), vec4<u32>(1u, 40597u, 27435u, var_0.b.d.x)))), func_2(var_2.yyw, func_3(_wgslsmith_f_op_f32(-var_1), abs(32329i), func_2(vec3<bool>(arg_3, false, false), arg_2))).e), var_0.c);
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(25421u, u_input.c)), vec2<u32>(109157u, 16272u)), var_0.b.b, ~(4294967295u << (u_input.a.x % 32u))), vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_div_u32(57044u, 42985u), 14329u), var_0.b.b, ~var_0.b.b, var_0.b.b));
    return -1000f;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = -1378f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_div_f32(-761f, var_0), -1041f), func_3(-530f, -1i ^ arg_0, func_2(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true))), !func_3(var_0, arg_0, Struct_3(Struct_2(true, false), u_input.d, Struct_1(false), u_input.b.xx, Struct_2(false, true))), true || any(vec2<bool>(true, true)))))) * var_0);
    let var_2 = vec2<bool>(false, false);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1300f))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(448f)) + _wgslsmith_f_op_f32(trunc(var_0))), 2147483647i, func_2(!vec3<bool>(var_2.x, true, var_2.x), !(!vec4<bool>(true, var_2.x, true, false)))).x, func_2(vec3<bool>(all(func_3(var_0, arg_0, Struct_3(Struct_2(var_2.x, var_2.x), u_input.c, Struct_1(var_2.x), u_input.a, Struct_2(false, false))).xzy), true, func_2(!vec3<bool>(false, var_2.x, false), select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(true, false, false, true), vec4<bool>(true, var_2.x, false, var_2.x))).c.a), !(!(!vec4<bool>(true, var_2.x, false, false)))).e);
    return 81425u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1781f) * _wgslsmith_f_op_f32(-164f - -692f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-533f)))), 1179f) * vec2<f32>(-1817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1608f, 1070f))))));
    var var_1 = reverseBits(vec4<u32>(func_1(1i >> (u_input.b.x % 32u)), ~1u, func_2(vec3<bool>(true, true, true), func_3(_wgslsmith_f_op_f32(-var_0.x), 0i, func_2(vec3<bool>(false, true, true), vec4<bool>(false, true, false, true)))).b, u_input.a.x & _wgslsmith_div_u32(~27554u, abs(u_input.c))));
    var var_2 = 1u <= u_input.a.x;
    var var_3 = func_2(select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), false), vec3<bool>(true, all(vec4<bool>(true, true, true, false)) != true, false), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, true)))), vec4<bool>(true, true, true, true)).e;
    var var_4 = func_2(select(select(!(!vec3<bool>(var_3.a, false, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, var_3.a), vec3<bool>(true, false, true)), true || all(vec2<bool>(var_3.a, false))), !vec3<bool>(var_3.b, true, true), true), !vec4<bool>(var_3.b, false, any(select(vec2<bool>(var_3.a, false), vec2<bool>(var_3.a, var_3.a), vec2<bool>(true, false))), var_3.a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -655f, 679f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(288f, 896f, -1148f)))))), 0i, ~abs(var_1.x) >> (func_1(1i) % 32u), firstLeadingBit(_wgslsmith_mod_i32(-575i, 1i)));
}

