struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(0i, -1i, 1i), vec3<i32>(40444i, 29146i, -1i), vec3<i32>(i32(-2147483648), 1i, -15655i), vec3<i32>(0i, 5020i, -37906i), vec3<i32>(-39418i, 22229i, 30527i), vec3<i32>(0i, 2147483647i, -45802i), vec3<i32>(2147483647i, 22116i, -46319i), vec3<i32>(-60609i, 1i, 28704i), vec3<i32>(-8305i, i32(-2147483648), 21254i), vec3<i32>(22318i, -42762i, 25083i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> bool {
    global0 = array<vec3<i32>, 13>();
    let var_0 = _wgslsmith_add_u32(237u, u_input.c);
    global0 = array<vec3<i32>, 13>();
    let var_1 = Struct_2(i32(-1i) * -2147483647i, Struct_1(!(!(20250u != var_0))), ~var_0, u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_0)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 1u), vec2<u32>(0u, 0u), vec2<u32>(25586u, u_input.c)) ^ vec2<u32>(u_input.c, 0u)), var_0));
    let var_2 = firstLeadingBit(max(~1u, countOneBits(1396u)));
    return !var_1.b.a || var_1.b.a;
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = !func_3(max(_wgslsmith_div_vec2_i32(u_input.b.yz, vec2<i32>(-2147483647i, u_input.b.x)) & countOneBits(u_input.b.zw), vec2<i32>(~25255i, u_input.a & -21947i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-234f, -221f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, arg_0.x, arg_0.x & any(arg_0.zwz)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1562f))))), vec3<f32>(-1174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1278f), -292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-983f * _wgslsmith_f_op_f32(-470f + 576f))))));
    let var_2 = Struct_4(vec3<bool>(true, !all(!vec3<bool>(arg_0.x, false, true)), all(vec2<bool>(false, true))));
    var_1 = vec3<f32>(544f, _wgslsmith_f_op_f32(trunc(-372f)), 1000f);
    global0 = array<vec3<i32>, 13>();
    return Struct_4(select(arg_0.zyx, arg_0.xww, arg_0.zzy));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 13>();
    global0 = array<vec3<i32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f) * _wgslsmith_f_op_f32(-arg_0)));
    var var_1 = Struct_2(min(2147483647i, ~u_input.b.x >> (arg_3.x % 32u)) | arg_2, Struct_1(arg_1.a.x), _wgslsmith_sub_u32(1u >> (select(arg_3.x, _wgslsmith_dot_vec2_u32(arg_3.xw, vec2<u32>(arg_3.x, u_input.c)), false) % 32u), 0u), arg_2, _wgslsmith_dot_vec2_u32(arg_3.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c | arg_3.x, arg_3.x), vec2<u32>(_wgslsmith_mult_u32(1u, arg_3.x), arg_3.x), ~vec2<u32>(4294967295u, 0u) | (arg_3.zy >> (arg_3.zz % vec2<u32>(32u))))));
    global0 = array<vec3<i32>, 13>();
    return Struct_1(arg_1.a.x);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 13>();
    let var_0 = vec2<u32>(15087u, 23147u);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-272f))), -1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1258f + 1000f) + 706f)), 226f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-421f, _wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(367f, 2163f)))))));
    let var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(21356u >> (arg_0.a.c % 32u), arg_0.a.c), reverseBits(min(firstLeadingBit(~vec2<u32>(6178u, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(18675u, var_0.x), vec2<u32>(49301u, 10068u)) | ~var_0)));
    var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1000f, -335f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, var_1.x, var_1.x)))))));
    return Struct_2(~(-1i), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-779f, 1000f, all(vec4<bool>(true, arg_0.d.x, true, arg_1.a.x)))))), Struct_4(arg_1.a), abs(_wgslsmith_mult_i32(arg_0.a.a | u_input.a, select(53901i, -35688i, false))), vec4<u32>(~var_2.x, var_0.x, ~0u, 67157u << (_wgslsmith_add_u32(u_input.c, 91962u) % 32u))), arg_0.a.c, firstLeadingBit(1i), 0u);
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<vec3<i32>, 13>();
    var var_0 = all(select(!vec3<bool>(arg_0 == u_input.a, true, all(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), select(true, true, true)));
    var var_1 = Struct_4(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true));
    var var_2 = func_5(Struct_3(Struct_2(~(-2147483647i), func_4(_wgslsmith_f_op_f32(f32(-1f) * -270f), func_2(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), -2147483647i, vec4<u32>(23773u, 0u, 1u, 4967u)), _wgslsmith_sub_u32(16721u ^ u_input.c, 0u), 1i, 1u), Struct_1(var_1.a.x), func_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1640f * -1743f)), func_2(!vec4<bool>(var_1.a.x, false, true, var_1.a.x)), u_input.b.x, firstLeadingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), var_1.a), Struct_4(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)), reverseBits(abs(vec2<i32>(_wgslsmith_mod_i32(arg_0, arg_0), ~arg_0))));
    var_2 = Struct_2(-_wgslsmith_mod_i32(var_2.a, ~_wgslsmith_mod_i32(-40479i, 30070i)), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1f)))), Struct_4(vec3<bool>(select(false, false, var_1.a.x), var_1.a.x, all(vec3<bool>(var_1.a.x, var_2.b.a, var_2.b.a)))), _wgslsmith_dot_vec2_i32(abs(u_input.b.ww), u_input.b.xx) >> (countOneBits(0u) % 32u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 9821u, 22110u) ^ abs(vec4<u32>(u_input.c, var_2.e, 0u, u_input.c)), ~vec4<u32>(u_input.c, var_2.c, var_2.c, 0u) | (vec4<u32>(u_input.c, u_input.c, var_2.e, 1765u) >> (vec4<u32>(1u, 8035u, var_2.e, u_input.c) % vec4<u32>(32u))))), 13507u, -36560i, _wgslsmith_mod_u32(129u, var_2.e) | ~(u_input.c & var_2.c));
    return _wgslsmith_f_op_f32(120f * _wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -229f) * _wgslsmith_f_op_f32(-215f + 450f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 13>();
    let var_0 = vec2<bool>(true, (all(vec4<bool>(true, true, true, true)) | (all(vec2<bool>(true, true)) | any(vec3<bool>(false, false, true)))) || !(true | any(vec2<bool>(false, false))));
    var var_1 = -1i;
    let var_2 = Struct_4(!vec3<bool>(var_0.x, !any(vec3<bool>(var_0.x, true, var_0.x)), true & var_0.x));
    let var_3 = _wgslsmith_f_op_f32(func_1(-17541i));
    var var_4 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, _wgslsmith_f_op_f32(var_3 * var_3)), vec2<f32>(_wgslsmith_f_op_f32(floor(-933f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_3 * -1203f))))));
    let var_5 = Struct_2(u_input.a, Struct_1(var_0.x), firstLeadingBit(0u), _wgslsmith_clamp_i32(abs(abs(u_input.a)), abs(42978i), _wgslsmith_mult_i32(~u_input.b.x, 18976i)) & 1i, ~4294967295u);
    var_1 = var_5.a << ((~_wgslsmith_dot_vec2_u32(~vec2<u32>(33265u, u_input.c), vec2<u32>(u_input.c, 70840u)) | u_input.c) % 32u);
    var_1 = -(~max(~67328i, ~(~u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_4.x))))), 50933u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f - -225f) * -1000f))));
}

