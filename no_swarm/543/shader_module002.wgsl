struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<bool>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-856f)))))), _wgslsmith_f_op_f32(step(1278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-446f))))));
    var var_1 = !(!arg_2.zy);
    var_1 = !arg_2.xy;
    let var_2 = arg_0;
    let var_3 = Struct_1(arg_2.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -890f, 390f, 566f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 778f, var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 123f, var_0.x) - vec3<f32>(887f, var_0.x, var_0.x))), 2147483647i <= u_input.e.x))), vec3<f32>(1000f, var_0.x, _wgslsmith_f_op_f32(select(-742f, _wgslsmith_f_op_f32(ceil(var_0.x)), var_1.x))), vec4<bool>(any(select(arg_2.wzx, arg_2.wwx, select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(true, true, false), arg_2.xzx))), true, select(!(var_0.x != var_0.x), ~arg_1.x != 8316u, any(vec2<bool>(var_1.x, var_1.x))), false));
    return true;
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_3(func_3(_wgslsmith_add_u32(u_input.a.x << (1u % 32u), 39315u), ~(~u_input.c), vec4<bool>(true, true, true, false)) & all(vec4<bool>(true, -6221i >= u_input.d.x, any(vec3<bool>(true, false, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(select(arg_0 > arg_0, true, select(false, false, true)), true, all(vec4<bool>(false, true, false, true))), true), -1180f);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(884f, _wgslsmith_f_op_f32(-var_0.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -1585f), vec2<f32>(var_0.c, var_0.c))), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(trunc(-229f)))), select(var_0.b.xz, select(select(var_0.b.yz, vec2<bool>(var_0.b.x, true), var_0.b.yz), var_0.b.zy, true), (var_0.b.x & var_0.a) | var_0.b.x))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(ceil(-2060f))), 664f))), var_0.b.x));
    var var_2 = var_1;
    var var_3 = ~2147483647i >= -(~u_input.d.x);
    var_3 = var_0.a;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-1517f, -1037f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1218f, var_2.x)))), Struct_1(var_0.b.xx, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_0, var_2.x, -1906f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 214f, arg_0)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(351f, 617f, -169f) - vec3<f32>(arg_0, 1000f, arg_0))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(790f, var_0.c, var_0.c)))), vec4<bool>(var_0.b.x, !(1241f > arg_0), (var_0.a && var_0.b.x) | all(vec3<bool>(var_0.a, var_0.b.x, var_0.a)), countOneBits(u_input.d.x) < 0i)), select(!(!select(vec4<bool>(var_0.a, false, var_0.b.x, var_0.a), vec4<bool>(var_0.a, false, var_0.b.x, var_0.a), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.a))), !(!(!vec4<bool>(var_0.a, true, var_0.b.x, var_0.b.x))), !(!vec4<bool>(var_0.a, var_0.b.x, false, false))), var_0.a);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-467f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-454f, 362f) * 880f)));
    var_0 = Struct_2(var_0.b.d.x, func_2(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(floor(-1954f))).b.d.x)).b, vec4<bool>(true, true, true, false), true);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.b.x * var_0.a)))), func_2(_wgslsmith_div_f32(var_0.b.b.x, 337f)).b, func_2(2111f).b.e, true);
    var var_1 = ~vec3<u32>(0u, ~(~u_input.a.x >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(37619u, u_input.c.x, u_input.a.x)) % 32u)), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(20958u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.b.b), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), 345f, 485f, _wgslsmith_f_op_f32(-1201f * var_0.b.b.x)), var_0.d));
    return Struct_3(var_0.d, select(!vec3<bool>(var_0.a > 825f, true, !var_0.c.x), vec3<bool>(var_0.b.e.x, !(var_0.b.d.x > var_2.x), var_0.c.x), var_0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = -_wgslsmith_div_vec2_i32(abs(u_input.d), -u_input.d);
    let var_1 = ~0u;
    let var_2 = vec3<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(-65016i, var_0.x), ~u_input.e.yz) >> ((var_1 >> (min(u_input.c.x, 0u) % 32u)) % 32u)) & 4992i, var_0.x, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, var_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, u_input.d.x), u_input.e.www)), -1i));
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_1, 121914u, var_1)), vec4<u32>(u_input.b, u_input.a.x, 88222u, var_1)) >> (24231u % 32u), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.c.x, u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.yy, u_input.c.yx))), 1u, u_input.a.x, var_1);
    var var_4 = arg_1.a;
    return func_2(1000f).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-891f, -1128f)), _wgslsmith_f_op_f32(step(211f, -334f)))), func_4(!all(vec2<bool>(true, false)), func_1()), !vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, func_1().b.x), !func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(u_input.a.x, 32749u, u_input.b, 15093u)), ~u_input.c, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false))), ~(~(~(~11606u))), true, Struct_1(!func_4(true, func_1()).e.yw, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-521f, -1319f, 313f, -656f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1184f, -2170f, 368f, 2013f), vec4<f32>(392f, 326f, -1461f, 227f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1936f, 1000f, -1229f, -163f) * vec4<f32>(1185f, 1000f, 183f, -672f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1442f, -1362f, -1144f, 379f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-589f, -237f, -590f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(708f, 593f, 570f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1827f, -1337f) + vec3<f32>(1161f, 202f, -1725f))), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1051f, -1100f, -1651f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(996f, -992f, -1631f), vec3<f32>(832f, -1125f, 1162f)))), vec3<f32>(func_1().c, -1095f, -283f)), func_2(func_2(func_1().c).b.b.x).b.e));
    let var_1 = vec3<i32>(-2147483647i, _wgslsmith_div_i32(0i, -1i), ~(i32(-1i) * -2147483647i));
    var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-454f - 1000f), Struct_1(func_2(-1704f).b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.d.b, vec4<f32>(var_0.a.a, var_0.d.c.x, var_0.d.d.x, var_0.d.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(585f, -1467f, 2035f, 950f))), _wgslsmith_f_op_vec3_f32(-var_0.d.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1289f, var_0.d.d.x, var_0.a.a) * _wgslsmith_f_op_vec3_f32(select(var_0.d.b.wwy, vec3<f32>(var_0.a.b.b.x, -493f, -2013f), var_0.d.a.x))), vec4<bool>(true, var_0.d.a.x, var_0.c | false, true)), vec4<bool>(var_0.a.b.e.x, select(var_0.c, var_0.c, true), !func_1().a, (var_0.d.e.x & var_0.d.a.x) & true), !var_0.d.e.x || !func_2(2091f).c.x), u_input.a.x, !all(vec2<bool>(var_0.a.a != -445f, false)), func_4(false, func_1()));
    var var_2 = _wgslsmith_f_op_f32(-var_0.d.c.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.a.b.b.x)), _wgslsmith_f_op_f32(-var_0.d.b.x)) + _wgslsmith_f_op_vec2_f32(var_0.d.d.xz - _wgslsmith_f_op_vec2_f32(var_0.a.b.b.yx + var_0.a.b.d.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, var_0.d.b.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, var_0.d.b.x) * var_0.a.b.c.zx)))), _wgslsmith_f_op_vec2_f32(-var_0.a.b.b.wx), false));
    var_3 = _wgslsmith_f_op_vec2_f32(var_0.a.b.d.zz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_0.d.b.x)), var_0.a.b.c.xx)) + var_0.a.b.b.yz));
    var var_4 = func_2(-2374f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u >> (~4294967295u % 32u), var_0.b);
}

