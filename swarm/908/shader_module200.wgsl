struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0;
    let var_1 = var_0.e.x;
    var_0 = Struct_1(-28980i, vec2<f32>(-867f, _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), any(vec4<bool>(true, true, true, true)), vec3<bool>(true, !var_0.e.x, false));
    let var_2 = reverseBits(arg_2);
    let var_3 = var_2.x;
    return arg_0.c;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(946f, -825f)), -125f, all(vec2<bool>(true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), arg_0, vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(694f, -1000f), vec2<f32>(-1010f, 1851f))), -1120f, 0u < arg_0.x, vec3<bool>(true, true, true)))), 1045f)));
    var_0 = _wgslsmith_f_op_f32(round(-1309f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + -2204f))) + 1f);
    let var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-439f, 838f))), _wgslsmith_div_vec2_f32(vec2<f32>(317f, -308f), vec2<f32>(-439f, -745f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), 210f))), 279f, true, select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), vec3<bool>(any(vec3<bool>(true, false, false)), !(arg_0.x != arg_0.x), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))))));
    let var_2 = 4294967295u;
    return Struct_1(abs(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(var_1.a, reverseBits(-18353i)))), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), var_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), var_1.b.x, any(vec4<bool>(2147483647i >= _wgslsmith_mod_i32(var_1.a, var_1.a), true, !(arg_0.x < arg_0.x), !var_1.e.x == true)), var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = func_2(~(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(69982u, 21453u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u))));
    var var_1 = 1u;
    var var_2 = arg_3;
    let var_3 = func_2(vec2<u32>(~_wgslsmith_add_u32(countOneBits(1u), 56524u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(8268u, 30592u, 1u), vec3<u32>(9230u, 41593u, 4294967295u)) & 1u));
    var_2 = arg_3;
    return arg_0.d;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = ~(1u << ((arg_0.x & _wgslsmith_add_u32(3191u, arg_3.x)) % 32u)) & ~arg_3.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), -1000f), _wgslsmith_f_op_f32(arg_2.c + _wgslsmith_f_op_f32(arg_2.b.x * arg_2.c))), arg_1.b, !arg_1.e.yy));
    let var_2 = 4294967295u;
    let var_3 = Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b)))), _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(max(1238f, 462f))), arg_1.d, vec3<bool>(arg_1.e.x, func_4(Struct_1(6581i, _wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(var_1.x, -433f)), _wgslsmith_f_op_f32(step(757f, 355f)), arg_1.e.x, !vec3<bool>(true, arg_2.d, true)), func_2(arg_3), func_2(~arg_3), arg_1), any(vec3<bool>(false, any(vec4<bool>(false, arg_1.e.x, false, arg_2.e.x)), arg_1.d))));
    var var_4 = vec4<bool>(!select(!(arg_3.x < arg_3.x), func_2(arg_3).d || true, true), false, arg_1.e.x, arg_2.e.x);
    return ~33996u;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(~select(40563u, arg_1.x, false), arg_0.x), _wgslsmith_clamp_u32(max(~arg_1.x, _wgslsmith_mod_u32(14110u, arg_0.x)), arg_0.x, 1u)) <= _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(firstLeadingBit(arg_0.xx), vec2<u32>(11777u, 4294967295u) ^ arg_0.yy)), select(vec2<u32>(min(arg_1.x, arg_0.x), countOneBits(arg_0.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 7309u), vec2<u32>(4294967295u, 1u)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-775f))))) - func_2(~(vec2<u32>(1u, 0u) | arg_1)).b.x);
    var var_2 = func_2(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(arg_0.x, arg_1.x), false) >> (_wgslsmith_add_vec2_u32(arg_1, vec2<u32>(arg_1.x, 4294967295u) >> (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~vec2<u32>(arg_1.x, arg_0.x))));
    var var_3 = _wgslsmith_f_op_f32(898f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-395f)) + -1302f))) + var_2.b.x));
    var var_4 = any(vec4<bool>(all(vec4<bool>(any(vec4<bool>(var_0, var_0, var_0, var_0)), var_2.e.x, true, !var_2.d)), true, !var_0, var_2.e.x));
    return Struct_1(_wgslsmith_mod_i32(-1i, arg_2.x) | abs(u_input.a.x), vec2<f32>(var_1, var_2.c), 873f, true, vec3<bool>(select(func_4(func_2(arg_1), Struct_1(u_input.b, vec2<f32>(-1086f, var_2.b.x), var_2.b.x, true, vec3<bool>(true, true, false)), func_2(vec2<u32>(arg_0.x, 1u)), Struct_1(0i, vec2<f32>(541f, 743f), var_1, var_0, vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(-var_2.c) != _wgslsmith_div_f32(var_1, 261f), func_4(Struct_1(u_input.b, var_2.b, var_2.c, true, var_2.e), Struct_1(-15379i, vec2<f32>(var_1, 1000f), var_1, var_2.d, var_2.e), func_2(vec2<u32>(arg_1.x, 1u)), Struct_1(28488i, vec2<f32>(-1000f, -630f), var_2.b.x, false, var_2.e))), var_0, func_4(func_2(arg_0.xy), func_2(~arg_0.yx), Struct_1(var_2.a, var_2.b, var_2.c, true, func_2(vec2<u32>(6818u, arg_0.x)).e), func_2(abs(vec2<u32>(4294967295u, 23579u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~vec3<u32>(_wgslsmith_clamp_u32(37973u, 4294967295u, 12319u), 73466u, 26920u)), ~vec2<u32>(1u, 1u), u_input.a.yyw >> (vec3<u32>(firstLeadingBit(61352u), 1u, func_1(vec2<u32>(50191u, 4294967295u), Struct_1(u_input.a.x, vec2<f32>(2342f, -596f), -1883f, true, vec3<bool>(true, false, true)), Struct_1(-1i, vec2<f32>(311f, -327f), 587f, true, vec3<bool>(false, false, true)), vec2<u32>(4294967295u, 1u)) ^ ~4294967295u) % vec3<u32>(32u)));
    var var_1 = vec3<i32>(max(-18772i, 1i), ~u_input.b, ~_wgslsmith_sub_i32(var_0.a ^ var_0.a, firstTrailingBit(-827i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-564f)))), var_0.b.x, -382f));
    var var_3 = Struct_1(-45882i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(385f, 1459f, false))))), var_0.c, var_0.d, vec3<bool>(var_0.e.x, var_0.d, true));
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(~vec2<u32>(1u, 0u)).b), _wgslsmith_f_op_vec2_f32(func_5(~abs(vec3<u32>(4294967295u, 1u, 34794u)), vec2<u32>(~11099u, _wgslsmith_sub_u32(4294967295u, 40542u)), countOneBits(u_input.a.xxx)).b - vec2<f32>(392f, _wgslsmith_f_op_f32(-var_0.c))));
    var var_5 = -(~_wgslsmith_mod_i32(29540i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-17578i, var_0.a, 2147483647i, var_0.a), u_input.a)));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(-636f)), func_2(vec2<u32>(29932u, 59741u)).b.x, _wgslsmith_f_op_f32(var_0.c * -799f), var_4.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, var_2.x, -391f, var_2.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, var_0.c, var_3.b.x, var_4.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_f32(-func_2(vec2<u32>(1u, 60876u)).b.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, -1061f, -212f, var_0.c), vec4<f32>(1401f, var_2.x, 1097f, var_2.x), vec4<bool>(var_0.e.x, true, var_3.d, var_3.e.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.b.x, -738f, var_4.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, -133f, var_3.c, 545f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, var_0.b.x, 1624f, 2800f))), select(select(vec4<bool>(var_3.d, var_0.d, false, true), vec4<bool>(false, var_3.e.x, var_0.e.x, true), vec4<bool>(false, true, true, var_0.d)), !vec4<bool>(var_3.e.x, var_0.e.x, true, var_0.d), true)))));
    let var_6 = all(vec3<bool>(!(var_0.e.x || false) & false, var_3.e.x, func_2(vec2<u32>(1u, 1u)).e.x));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2216f, _wgslsmith_f_op_f32(var_2.x * -2720f), -738f, _wgslsmith_f_op_f32(floor(1029f))))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.c, -1509f, -1449f, var_4.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1405f, var_2.x, var_2.x, var_4.x) + vec4<f32>(var_2.x, var_3.b.x, 1001f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2216f, var_4.x, -1000f, -1414f), vec4<f32>(1413f, -243f, 296f, -965f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_2.x, var_4.x, -409f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, var_2.x, var_2.x, -502f) - vec4<f32>(var_2.x, var_4.x, -1389f, var_0.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

