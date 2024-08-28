struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(0u, 0u, 0u), vec3<i32>(3326i, 2147483647i, 19967i)), Struct_1(vec3<u32>(0u, 16112u, 4294967295u), vec3<i32>(2147483647i, 2147483647i, -15589i)), Struct_1(vec3<u32>(47581u, 1u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 1i)), Struct_1(vec3<u32>(33783u, 1u, 0u), vec3<i32>(14405i, i32(-2147483648), -7122i)), Struct_1(vec3<u32>(4294967295u, 31134u, 45994u), vec3<i32>(-1i, 7416i, 18911i)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec3<i32>(-597i, 0i, 1i)), Struct_1(vec3<u32>(20482u, 1u, 4294967295u), vec3<i32>(44674i, 1i, -1i)), Struct_1(vec3<u32>(0u, 4294967295u, 6825u), vec3<i32>(-7151i, 0i, 2147483647i)), Struct_1(vec3<u32>(2172u, 0u, 1u), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<u32>(4294967295u, 38693u, 8059u), vec3<i32>(0i, 32524i, i32(-2147483648))), Struct_1(vec3<u32>(40991u, 1u, 1u), vec3<i32>(-1i, -23263i, 1i)), Struct_1(vec3<u32>(8675u, 5584u, 114442u), vec3<i32>(-15421i, 0i, 0i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    return select(any(vec2<bool>(true, !(arg_1.a.x != arg_1.a.x))), true, all(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = array<Struct_1, 12>();
    let var_0 = global0[_wgslsmith_index_u32(~(~4294967295u), 12u)];
    var var_1 = _wgslsmith_div_u32(~(~(~48953u) | var_0.a.x), var_0.a.x);
    let var_2 = !vec4<bool>(true, !((var_0.a.x >= 0u) | func_3(874f, Struct_1(var_0.a, vec3<i32>(-52175i, 54882i, var_0.b.x)))), !(!(u_input.e.x >= var_0.a.x)), true & !any(vec4<bool>(true, false, true, false)));
    let var_3 = Struct_1(~vec3<u32>(_wgslsmith_mod_u32(1u, 1u), ~var_0.a.x, _wgslsmith_div_u32(abs(31944u), u_input.d)), var_0.b);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1180f)), _wgslsmith_f_op_f32(-1000f - 1097f), true))), _wgslsmith_f_op_f32(abs(1200f)), _wgslsmith_f_op_f32(341f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(735f * -339f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(210f, 654f, -295f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(891f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -328f)), vec3<f32>(_wgslsmith_f_op_f32(1327f - -108f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(727f))))));
    let var_1 = min(arg_0.b.x, -(~(firstLeadingBit(u_input.a) << (36959u % 32u))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, var_0.x, 248f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -724f, -2117f))))))));
    let var_2 = arg_1.b.x;
    let var_3 = _wgslsmith_clamp_i32(2147483647i, 614i, -(1i | ~var_2));
    return var_0.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.e.x;
    global0 = array<Struct_1, 12>();
    var var_1 = Struct_1(arg_1.a, u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(429f, arg_0.x))));
    let var_3 = vec4<u32>(abs(var_0), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~var_0 & select(arg_1.a.x, 20745u, true), arg_1.a.x), _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 73818u, 0u), u_input.e.yzy), arg_1.a.x)), abs(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(33762u, max(1u, 0u)))), ~4294967295u);
    return global0[_wgslsmith_index_u32(~(~arg_1.a.x), 12u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> f32 {
    global0 = array<Struct_1, 12>();
    var var_0 = ~countOneBits(~arg_0.a);
    var var_1 = func_5(vec3<f32>(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~(~1u), 12u)], func_2(_wgslsmith_f_op_f32(-249f + -569f)), Struct_1(u_input.e.wxx, u_input.c & vec3<i32>(arg_0.b.x, u_input.c.x, 0i)), ~arg_0.b.xy)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1015f, 791f)), _wgslsmith_f_op_f32(ceil(-982f))), _wgslsmith_f_op_f32(-621f * -1458f))), -1748f), Struct_1(min(_wgslsmith_div_vec3_u32(vec3<u32>(42737u, arg_0.a.x, 0u), vec3<u32>(39246u, 27507u, arg_0.a.x)), ~vec3<u32>(arg_0.a.x, u_input.d, var_0.x)) ^ vec3<u32>(~16008u, min(1u, var_0.x), var_0.x), vec3<i32>(~_wgslsmith_add_i32(-53556i, -6441i), 1i, arg_0.b.x)));
    var var_2 = global0[_wgslsmith_index_u32(16831u, 12u)];
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(984f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-222f)))))), _wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -881f), 224f))))));
    return 172f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1832f) + _wgslsmith_f_op_f32(f32(-1f) * -1124f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(79440u, 12u)], select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -858f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1206f))) - _wgslsmith_f_op_f32(-775f * _wgslsmith_f_op_f32(floor(307f)))), -1813f, -1000f));
    global0 = array<Struct_1, 12>();
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -545f), vec3<f32>(var_0.x, 493f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1539f, var_0.x, 1848f) - vec3<f32>(-554f, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-557f, 1305f, -793f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, -713f, -173f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1456f, var_0.x, var_0.x))))));
    let var_1 = 1i;
    var var_2 = -abs(vec4<i32>(abs(var_1), u_input.a, u_input.c.x, var_1));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~_wgslsmith_dot_vec2_u32(u_input.e.xy, u_input.e.yz))), u_input.b), 12u)];
    var var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-var_0.x), true)) - 1841f));
    global0 = array<Struct_1, 12>();
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(605f, _wgslsmith_f_op_f32(-1000f - -1338f), var_0.x))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(func_5(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-197f, 783f, 422f))), func_5(vec3<f32>(var_0.x, -1028f, -1006f), Struct_1(vec3<u32>(var_3.a.x, var_4.a.x, u_input.d), var_3.b))), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_f32(trunc(var_0.x))), Struct_1(select(var_4.a, var_4.a, false), -var_4.b), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1534f, 530f)), func_2(var_0.x)), min(~var_3.b.zz, vec2<i32>(-29495i, 15531i))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(i32(-1i) * -var_1), var_3.b.zx, ~(-vec3<i32>(-11466i, 573i, var_4.b.x)) << (~(~(vec3<u32>(40625u, 11332u, 109352u) | u_input.e.xxy)) % vec3<u32>(32u)), var_3.a, ~(-74452i));
}

