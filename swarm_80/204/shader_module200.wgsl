struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>) -> f32 {
    let var_0 = Struct_3(select(reverseBits(firstLeadingBit(max(arg_0.a, arg_0.a))), arg_0.a, u_input.b.x > ~u_input.c), vec2<bool>(arg_1.x, arg_0.b.x));
    let var_1 = arg_0;
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_2 = arg_2.yyx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(423f + _wgslsmith_f_op_f32(f32(-1f) * -352f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-188f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2() -> i32 {
    var var_0 = vec3<f32>(357f, _wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(785f)), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], vec3<bool>(true, true, false), vec4<bool>(true, false, true, false))))) + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) * _wgslsmith_f_op_f32(f32(-1f) * -1488f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f)))) + -596f)));
    global0 = array<Struct_3, 7>();
    var var_1 = 1315f;
    var var_2 = Struct_2(true, select(u_input.a.zx, ~vec2<u32>(0u, u_input.c), true) << (select(min(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(33953u, u_input.b.x)), u_input.b), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.c), !any(vec3<bool>(false, false, true))) % vec2<u32>(32u)), Struct_1(~u_input.b.x), select(u_input.a.yxx, ~(~u_input.a.yyy), vec3<bool>(true, true, true)) << (vec3<u32>(38865u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), reverseBits(u_input.b))) % vec3<u32>(32u)), Struct_1(13821u));
    global0 = array<Struct_3, 7>();
    return -39143i;
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_1(~0u);
    var var_1 = Struct_2(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), u_input.b ^ vec2<u32>(4294967295u, ~select(86499u, var_0.a, true)), Struct_1(var_0.a), ~(~_wgslsmith_mod_vec3_u32(u_input.a.wzw << (u_input.a.wyy % vec3<u32>(32u)), ~vec3<u32>(var_0.a, u_input.c, u_input.c))), Struct_1(select(~var_0.a, _wgslsmith_clamp_u32(reverseBits(u_input.a.x), 31224u, firstTrailingBit(u_input.a.x)), false)));
    let var_2 = true;
    var_1 = Struct_2(_wgslsmith_div_u32(~u_input.b.x, ~(~u_input.b.x)) < firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.a, var_0.a, 4294967295u, 8627u)), vec4<u32>(0u, 0u, 4294967295u, u_input.a.x) ^ vec4<u32>(var_0.a, u_input.b.x, 4294967295u, var_0.a))), u_input.b, Struct_1(~min(abs(1u), 1u)), ~var_1.d, var_1.c);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2109f, 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f - -551f) - _wgslsmith_f_op_f32(min(951f, 424f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1595f, _wgslsmith_f_op_f32(min(1429f, 763f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 329f)))), -1010f);
    return Struct_2(true, ~(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_1.b.x, var_0.a)), var_1.b << (u_input.b % vec2<u32>(32u)))), Struct_1(1u), abs(abs(var_1.d)), var_1.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = vec2<bool>(arg_1.x, arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(trunc(2291f));
    global0 = array<Struct_3, 7>();
    return Struct_4(Struct_3(vec3<i32>(_wgslsmith_add_i32(u_input.d, 2147483647i), abs(~(-1i)), (u_input.d & 20301i) >> (min(39878u, u_input.c) % 32u)), vec2<bool>(any(vec4<bool>(false, true, var_0.x, false)), !arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2314f), abs(func_4(~(-vec4<i32>(0i, -2147483647i, u_input.d, 2147483647i))).d.zz), _wgslsmith_mult_u32(~4294967295u, ~(~28215u)), arg_3);
}

fn func_1() -> vec2<bool> {
    let var_0 = func_5(func_4(select(vec4<i32>(-918i, u_input.d >> (u_input.c % 32u), ~10943i, -1i), vec4<i32>(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 23058i, u_input.d, -43982i), vec4<i32>(-1i, u_input.d, u_input.d, -1i)), 9608i, -37695i), select(u_input.a.x == 4294967295u, true, true))), vec2<bool>(true, true), Struct_2(true, vec2<u32>(~(u_input.a.x ^ 4294967295u), _wgslsmith_clamp_u32(45411u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.a.x, u_input.c), vec4<u32>(u_input.c, 4294967295u, 0u, 0u)), abs(u_input.c))), Struct_1(u_input.c), func_4(vec4<i32>(abs(-15706i), u_input.d, -1i, ~u_input.d)).d, Struct_1(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x >> (0u % 32u)))), -1685f);
    let var_1 = _wgslsmith_f_op_f32(var_0.e * var_0.e);
    let var_2 = 291f;
    let var_3 = u_input.b.x;
    var var_4 = Struct_1(~(~var_0.c.x));
    return vec2<bool>(any(vec4<bool>(false, true, any(vec4<bool>(false, true, false, false)) & true, select(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(285f + 1144f), _wgslsmith_f_op_f32(trunc(-2640f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(808f, -582f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1602f, -827f) - _wgslsmith_f_op_f32(max(455f, -385f))), _wgslsmith_div_f32(-340f, _wgslsmith_f_op_f32(-421f - -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-605f, -489f), _wgslsmith_f_op_f32(-1236f - -807f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1624f) + vec2<f32>(-918f, -881f)))));
    let var_1 = any(select(select(vec2<bool>(all(vec3<bool>(true, false, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), !func_1(), vec2<bool>(true, true)));
    let var_2 = select(vec4<bool>(any(func_5(func_4(vec4<i32>(u_input.d, u_input.d, -30823i, -11228i)), vec2<bool>(var_1, false), func_4(vec4<i32>(57878i, 13644i, -14394i, u_input.d)), _wgslsmith_f_op_f32(-var_0.x)).a.b), !(!var_1), false, true), select(vec4<bool>(!var_1, false, func_1().x, var_1), vec4<bool>(_wgslsmith_f_op_f32(abs(var_0.x)) >= 299f, !func_1().x, _wgslsmith_f_op_f32(-var_0.x) <= var_0.x, var_1), !(!(!vec4<bool>(var_1, var_1, true, true)))), true);
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -406f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, 399f)), 428f))));
    var var_3 = !any(select(func_5(func_4(vec4<i32>(u_input.d, u_input.d, -55674i, u_input.d)), func_1(), Struct_2(var_2.x, u_input.a.wz, Struct_1(4294967295u), u_input.a.xyx, Struct_1(u_input.b.x)), -1237f).a.b, vec2<bool>(false, var_1), !func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(-70513i, ~vec4<i32>(1i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, -1i))), -firstLeadingBit(u_input.d), -17665i), ~u_input.a.x);
}

