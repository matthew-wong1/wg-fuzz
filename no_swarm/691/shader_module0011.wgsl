struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec2<f32>(1808f, 1311f)), Struct_4(vec2<f32>(-211f, 1876f)), Struct_4(vec2<f32>(783f, 1000f)), Struct_4(vec2<f32>(273f, -1035f)), Struct_4(vec2<f32>(-456f, -540f)), Struct_4(vec2<f32>(1728f, -707f)), Struct_4(vec2<f32>(538f, -570f)), Struct_4(vec2<f32>(-960f, 625f)), Struct_4(vec2<f32>(-1000f, -1627f)), Struct_4(vec2<f32>(-1466f, 373f)), Struct_4(vec2<f32>(1833f, -920f)), Struct_4(vec2<f32>(670f, -325f)), Struct_4(vec2<f32>(1281f, 110f)), Struct_4(vec2<f32>(602f, -1759f)), Struct_4(vec2<f32>(1628f, 1185f)), Struct_4(vec2<f32>(-864f, -1002f)), Struct_4(vec2<f32>(168f, -305f)), Struct_4(vec2<f32>(-1627f, -1441f)), Struct_4(vec2<f32>(-1177f, 1074f)), Struct_4(vec2<f32>(-1929f, 1480f)), Struct_4(vec2<f32>(-1657f, 506f)), Struct_4(vec2<f32>(-1140f, 687f)), Struct_4(vec2<f32>(214f, 461f)), Struct_4(vec2<f32>(1496f, 732f)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_4 {
    global0 = array<Struct_4, 24>();
    var var_0 = _wgslsmith_clamp_i32(i32(-1i) * -28415i, u_input.b.x, u_input.b.x);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(551f + 374f), -1620f), -327f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-829f, arg_1.a.x, -1148f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 208f, 846f), vec3<f32>(-951f, arg_1.a.x, -1667f), vec3<bool>(true, arg_2.x, arg_2.x))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x))))))));
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 24u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1187f, 901f, 1196f) - vec3<f32>(arg_1.a.x, -105f, var_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(step(1000f, arg_1.a.x)), -751f, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_1.a.x), _wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(select(var_1.a.x, arg_1.a.x, arg_0.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0)))))));
    return Struct_2(select(arg_0.a, all(!vec2<bool>(arg_2.x, false)), true));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    var var_0 = u_input.b;
    global0 = array<Struct_4, 24>();
    let var_1 = vec3<u32>(u_input.d.x, u_input.a, 27408u);
    var_0 = u_input.b;
    let var_2 = Struct_2(arg_0.a);
    return _wgslsmith_f_op_f32(ceil(961f));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(!(!arg_0.x & any(vec4<bool>(false, false, arg_0.x, arg_0.x))) && !(true & !arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -574f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-459f))) * 363f)), vec2<u32>(select(u_input.a, _wgslsmith_sub_u32(4294967295u >> (u_input.c.x % 32u), ~0u), arg_0.x), firstTrailingBit(~_wgslsmith_mult_u32(0u, 12596u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(708f * 1410f) + _wgslsmith_f_op_f32(-431f * 1157f))), _wgslsmith_f_op_f32(func_4(func_3(Struct_2(arg_0.x), func_2(), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x), true)), ~(0i >> (u_input.d.x % 32u)), !arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f * -520f) - -972f) + _wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(-997f - -1859f))), _wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(-1f))), u_input.d.zx);
    global0 = array<Struct_4, 24>();
    var var_1 = Struct_2(arg_0.x);
    var var_2 = false;
    global0 = array<Struct_4, 24>();
    return func_3(func_3(func_3(Struct_2(!arg_0.x), Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, 1574f)))), !(!vec3<bool>(var_1.a, false, arg_0.x))), global0[_wgslsmith_index_u32(abs(~(73651u & u_input.a)), 24u)], vec3<bool>(var_0.a || !arg_0.x, !(!arg_0.x), true)), func_2(), !(!vec3<bool>(arg_0.x, var_1.a, false & var_1.a)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<u32> {
    global0 = array<Struct_4, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.d.xyx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.d.yyz))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-922f, arg_0.a)));
    global0 = array<Struct_4, 24>();
    global0 = array<Struct_4, 24>();
    return select(vec4<u32>(~_wgslsmith_add_u32(firstLeadingBit(arg_1.e.x), _wgslsmith_mult_u32(12257u, arg_1.e.x)), 1u, u_input.d.x, arg_1.c.x), vec4<u32>((reverseBits(arg_1.e.x) >> (_wgslsmith_sub_u32(0u, u_input.a) % 32u)) >> (u_input.c.x % 32u), max(min(1u, arg_1.e.x) & arg_1.c.x, ~u_input.d.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(~arg_1.c), max(vec2<u32>(arg_1.c.x, arg_1.e.x) >> (vec2<u32>(1636u, u_input.a) % vec2<u32>(32u)), abs(u_input.d.zx))), 6045u), vec4<bool>(true, any(!select(vec4<bool>(false, true, true, arg_1.a), vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(arg_0.b.a, false, arg_0.d, true))), arg_1.a, _wgslsmith_f_op_f32(-722f - -119f) > arg_1.b));
}

fn func_6(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1707f)), 181f), arg_3);
    global0 = array<Struct_4, 24>();
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f * _wgslsmith_f_op_f32(-var_0.x)) - func_2().a.x)));
    let var_3 = Struct_3(516f, Struct_2(true), Struct_2(!any(vec2<bool>(false, true)) | true), (~(~u_input.a) ^ arg_0.x) < firstLeadingBit(~(~arg_2)));
    return Struct_1(var_3.b.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1069f)))), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(75787u, var_1.x) & vec2<u32>(95246u, 0u), func_5(var_3, Struct_1(true, -561f, vec2<u32>(var_1.x, 35155u), vec4<f32>(var_0.x, -175f, var_2, var_3.a), var_1.zx), vec3<i32>(-1i, u_input.b.x, arg_1)).zx, !var_3.b.a), func_5(var_3, Struct_1(var_3.d, var_0.x, arg_0.yy, vec4<f32>(var_0.x, var_3.a, 590f, 1000f), arg_0.zz), vec3<i32>(u_input.b.x, -32452i, -5832i)).yy), ~(~(~vec2<u32>(var_1.x, 4294967295u)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -995f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(149f - var_0.x), 1f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(928f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3, -1344f) + var_3.a)))), select(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(57638u, u_input.c.x), var_1.xy), ~vec2<u32>(arg_0.x, 1u) | vec2<u32>(0u, arg_0.x)), ~(~vec2<u32>(0u, 1u) ^ _wgslsmith_mod_vec2_u32(var_1.zx, var_1.xz)), vec2<bool>((192f < var_2) || false, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(all(vec4<bool>(true, true, false, false)), false, true));
    let var_1 = func_6(vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, u_input.a << (37308u % 32u)), ~(~1u), ~(~1u)) & func_5(Struct_3(_wgslsmith_f_op_f32(step(-564f, -317f)), func_1(vec2<bool>(true, true)), Struct_2(var_0.x), true), Struct_1(19759i != u_input.b.x, _wgslsmith_f_op_f32(step(-143f, 347f)), vec2<u32>(55884u, u_input.a) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-448f, 2678f, 484f, 1299f))), vec2<u32>(u_input.d.x, u_input.a)), abs(vec3<i32>(u_input.b.x, -4135i, u_input.b.x)) << ((vec3<u32>(u_input.d.x, u_input.a, 1u) >> (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u))), ~u_input.b.x, 4294967295u, _wgslsmith_f_op_f32(ceil(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_1.c, countOneBits((vec3<u32>(u_input.c.x, 36234u, u_input.d.x) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 7176u, 23703u), u_input.d)) >> (countOneBits(u_input.c) % vec3<u32>(32u))), abs(vec3<u32>(var_1.c.x, 1u, 4294967295u)));
}

