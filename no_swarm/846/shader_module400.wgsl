struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(708f, 1928f, 114f, -378f);

var<private> global1: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    let var_0 = ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(1i, 1i, 1i)), 44750i);
    let var_1 = ~(~vec2<u32>(1u, 1u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x);
    global1 = _wgslsmith_f_op_f32(-global0.x);
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 886f))), 1476f), 1631f, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -1869f, -2038f, 1370f), vec4<f32>(_wgslsmith_f_op_f32(481f * 543f), 891f, _wgslsmith_f_op_f32(floor(var_2.x)), 1866f), vec4<bool>(select(true, arg_0.b.a.x, arg_0.a.a.x), false, any(vec3<bool>(arg_0.c.x, true, arg_0.b.a.x)), !arg_0.c.x))))));
    return select(!vec2<bool>(arg_0.a.a.x, all(select(vec3<bool>(false, arg_0.a.a.x, true), arg_0.c.xzz, true))), vec2<bool>(!all(arg_0.c.zz), !(238f <= var_2.x)), vec2<bool>(any(vec2<bool>(-10710i == u_input.a.x, arg_0.c.x)), all(arg_0.c)));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = ~0u;
    global1 = global0.x;
    var var_1 = arg_3.a;
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(759f + _wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) - vec4<f32>(_wgslsmith_div_f32(-2043f, _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) - global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_f_op_f32(1000f * -1341f), -879f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), -1353f, _wgslsmith_div_f32(-2158f, global0.x), 684f))));
    var var_2 = abs(arg_1.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -21855i, arg_1.x), vec4<i32>(u_input.a.x, arg_1.x, u_input.b, u_input.a.x))), firstTrailingBit(arg_1 << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))));
    return vec4<u32>(_wgslsmith_sub_u32(arg_0, ~_wgslsmith_clamp_u32(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 66880u)), arg_0 ^ arg_0)), arg_0, min(arg_0, ~arg_0), 32269u);
}

fn func_2() -> vec4<bool> {
    let var_0 = ~func_4(1u, vec2<i32>(1i, u_input.a.x), vec3<bool>(true, true, true), Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(func_3(Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), vec4<bool>(true, true, true, true)), u_input.b)), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(true, false, false)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.x)), -680f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(floor(1f)));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-460f))))));
    global1 = global0.x;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))));
    return !(!select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), true));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2088f - _wgslsmith_f_op_f32(max(479f, _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(199f + -1175f)))));
    let var_0 = arg_1;
    let var_1 = vec4<f32>(-1763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-108f, _wgslsmith_f_op_f32(-559f * global0.x), all(vec3<bool>(var_0.a.a.x, true, arg_2.a.x))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-249f)), global0.x)) + _wgslsmith_div_f32(-980f, -705f)))), _wgslsmith_f_op_f32(-2157f * _wgslsmith_f_op_f32(ceil(global0.x))));
    global1 = 159f;
    global0 = _wgslsmith_f_op_vec4_f32(max(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1519f * 590f), 319f, u_input.a.x < u_input.a.x)), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(351f, 283f, -1377f, global0.x), vec4<f32>(var_1.x, global0.x, 1234f, 694f), true)))))));
    return Struct_1(!select(var_0.b.a, !select(vec2<bool>(false, var_0.b.a.x), vec2<bool>(var_0.b.a.x, arg_2.a.x), var_0.c.x), true || var_0.c.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(func_5(4294967295u, Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), func_2()), Struct_1(vec2<bool>(any(vec3<bool>(true, true, false)), any(vec2<bool>(true, true))))), func_5(~arg_0.x, Struct_2(func_5(abs(arg_0.x), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), vec4<bool>(false, false, false, true)), func_5(arg_0.x, Struct_2(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true)))), func_5(func_4(arg_0.x, vec2<i32>(u_input.b, u_input.a.x), vec3<bool>(false, true, true), Struct_2(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), vec4<bool>(false, false, true, true))).x, Struct_2(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, true))), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(true, global0.x > global0.x))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), func_2(), vec4<bool>(false, false, true, false)), func_2()));
    var_0 = Struct_2(func_5(firstTrailingBit(_wgslsmith_sub_u32(1u, 4294967295u | arg_0.x)), Struct_2(func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 42872u, 23791u, 329u), vec4<u32>(arg_0.x, arg_0.x, 69993u, 0u)), Struct_2(var_0.b, Struct_1(vec2<bool>(true, var_0.c.x)), var_0.c), var_0.b), func_5(0u, Struct_2(var_0.b, var_0.a, vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, true)), func_5(94156u, Struct_2(Struct_1(vec2<bool>(var_0.b.a.x, var_0.b.a.x)), var_0.b, var_0.c), Struct_1(var_0.b.a))), func_2()), func_5(arg_0.x, Struct_2(Struct_1(vec2<bool>(var_0.a.a.x, var_0.c.x)), func_5(arg_0.x, Struct_2(var_0.a, Struct_1(var_0.b.a), var_0.c), var_0.a), vec4<bool>(true, true, true, true)), var_0.b)), var_0.b, var_0.c);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) * global0.x), global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1840f) * global0.x), _wgslsmith_f_op_f32(select(453f, _wgslsmith_f_op_f32(global0.x * global0.x), var_0.a.a.x))), _wgslsmith_f_op_f32(select(589f, global0.x, var_0.c.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1691f, 751f, global0.x, global0.x) - vec4<f32>(-364f, 1000f, global0.x, 1690f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(566f, -1000f, 1000f, global0.x))))))));
    global1 = global0.x;
    return Struct_1(func_5(0u, Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), var_0.b.a.x)), Struct_1(!var_0.a.a), var_0.c), Struct_1(!var_0.b.a)).a);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = select(!(!func_2()), select(func_2(), vec4<bool>(arg_0.a.x, all(vec4<bool>(arg_1.a.x, true, true, arg_0.a.x)), arg_0.a.x, func_1(vec2<u32>(1u, 39174u)).a.x), !(!func_2())), arg_1.a.x);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1550f)) - -287f)));
    var var_2 = 41172u;
    let var_3 = vec3<i32>(i32(-1i) * -(~u_input.a.x), -13429i, -2147483647i);
    let var_4 = _wgslsmith_div_vec3_u32(max(~(~vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), abs(select(vec3<u32>(41577u, _wgslsmith_mult_u32(35849u, 77661u), 1u), ~vec3<u32>(1u, 1u, 1u), var_0.zzz)));
    return ~select(~vec4<u32>(~12597u, firstLeadingBit(var_4.x), 0u, 4294967295u), max(vec4<u32>(func_4(9846u, var_3.yx, vec3<bool>(arg_1.a.x, true, false), Struct_2(Struct_1(vec2<bool>(arg_1.a.x, arg_1.a.x)), arg_1, vec4<bool>(false, false, true, true))).x, var_4.x, 0u, 1u | var_4.x), ~select(vec4<u32>(var_4.x, var_4.x, 4294967295u, 40717u), vec4<u32>(1u, 1u, 70159u, var_4.x), vec4<bool>(false, false, arg_0.a.x, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(-911f - global0.x), _wgslsmith_f_op_f32(select(-1942f, global0.x, false)), _wgslsmith_f_op_f32(sign(global0.x))))))));
    let var_0 = ~(func_6(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), func_1(select(vec2<u32>(1u, 45926u), vec2<u32>(35147u, 1u), false)), u_input.a.xy) << (~vec4<u32>(1u, 0u, ~1u, 4294967295u) % vec4<u32>(32u)));
    let var_1 = 949f;
    var var_2 = !(!(!vec4<bool>(true, u_input.b >= -2250i, global0.x >= -1000f, true)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(881f, 607f, _wgslsmith_f_op_f32(max(1602f, var_1)), var_1) - vec4<f32>(_wgslsmith_f_op_f32(867f * 873f), -782f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1394f, global0.x, -506f, global0.x) + vec4<f32>(global0.x, -788f, -1829f, global0.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 652f, 441f, global0.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1319f, var_1, var_1, var_1) - vec4<f32>(1039f, 883f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global0.x, var_1, 2069f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 213f, -136f, global0.x) * vec4<f32>(1414f, -2205f, global0.x, -190f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1000f, global0.x, var_1) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -766f, -110f, var_1), vec4<f32>(global0.x, 462f, global0.x, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, 1186f, global0.x, var_1)))))));
    var_2 = vec4<bool>(true, true, true, !var_2.x);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-289f, -417f, _wgslsmith_f_op_f32(var_1 * -1933f), _wgslsmith_f_op_f32(global0.x * var_1)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, global0.x, -1813f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-global0.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-177f)), var_1, var_1, _wgslsmith_f_op_f32(-var_1)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(165f, global0.x)) * _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, -422f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1)))), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_0.x, var_0.x, var_0.x, min(0u, var_0.x)));
}

