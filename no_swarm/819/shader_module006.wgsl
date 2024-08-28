struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec3<bool>(false, true, false)), false, true, true), false), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, false)), vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, false));
    let var_1 = arg_2;
    let var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0 << (vec2<u32>(244u, 0u) % vec2<u32>(32u)), arg_0), vec2<u32>(_wgslsmith_mult_u32(arg_2.a, 34306u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 19829u, 29663u), vec3<u32>(0u, arg_1, 33816u)))), _wgslsmith_div_u32(~arg_2.a, 4294967295u)), _wgslsmith_f_op_f32(-var_1.b));
    var var_3 = Struct_1(min(abs(~_wgslsmith_add_u32(0u, var_2.a)), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-821f + 1205f))), -513f))));
    var_3 = var_2;
    return _wgslsmith_mod_vec2_u32(~arg_0, arg_0);
}

fn func_2() -> f32 {
    var var_0 = select(abs(~vec4<u32>(1u, firstLeadingBit(31505u), firstTrailingBit(0u), ~8661u)), vec4<u32>(~4294967295u, ~0u, _wgslsmith_dot_vec2_u32(func_3(~vec2<u32>(4294967295u, 57791u), min(63450u, 1u), Struct_1(86927u, -420f)), ~vec2<u32>(1u, 4294967295u)), ~1u), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), any(vec2<bool>(true, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, false, true), true), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false)), true)));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, ~abs(1u)), reverseBits(firstTrailingBit(abs(vec2<u32>(var_0.x, var_0.x))))), 399f);
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_clamp_u32(~(var_2.a ^ 1u) >> (var_1.a % 32u), ~(~1u) ^ ~var_2.a, ~firstTrailingBit(firstTrailingBit(var_1.a))), 1323f);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2170f, _wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + var_2.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1431f)) * _wgslsmith_div_f32(732f, -1471f))) + vec4<f32>(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -973f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(154f)), _wgslsmith_f_op_f32(exp2(var_3.b)), var_1.a > 66129u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -2039f) + _wgslsmith_div_f32(var_1.b, 1193f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(ceil(var_1.b))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(1000f, var_4.x, any(vec3<bool>(true, true, true))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_1(~arg_0.a, 546f);
    var var_1 = 0u;
    var_1 = max(_wgslsmith_clamp_u32(~(~var_0.a), var_0.a, 8907u << (max(var_0.a, arg_0.a) % 32u)) | ~(~var_0.a), ~var_0.a);
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - -1000f);
    return select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), true, ((arg_0.a ^ var_0.a) ^ var_2.a) >= 38556u), var_0.a != 4294967295u);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b)));
    var_0 = _wgslsmith_f_op_f32(min(-1507f, _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(225f + _wgslsmith_f_op_f32(arg_1.b + 1f)))));
    var_0 = _wgslsmith_f_op_f32(-2088f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * arg_1.b)));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    let var_0 = !arg_2.x;
    let var_1 = true;
    var var_2 = func_5(!func_4(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 28785u), vec4<u32>(97487u, 29823u, 26420u, 6612u)), _wgslsmith_f_op_f32(-1676f * 299f)), _wgslsmith_f_op_f32(func_2())), Struct_1(1u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), 4294967295u) % 32u), 121f));
    var_2 = func_5(vec3<bool>(any(vec4<bool>(true, select(var_0, true, var_0), true, all(vec4<bool>(arg_2.x, arg_2.x, true, true)))), arg_2.x, select(any(vec3<bool>(var_1, true, false)), true, false)), Struct_1(7874u, -128f));
    var_2 = func_5(vec3<bool>(var_1, !var_1, true), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, 0u), vec2<u32>(var_2.a, var_2.a)), _wgslsmith_div_u32(var_2.a, 33797u), 59208u), (vec4<u32>(4294967295u, 1u, 10769u, var_2.a) >> (vec4<u32>(var_2.a, 4294967295u, var_2.a, var_2.a) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_2.a, 0u, 24046u), vec4<u32>(var_2.a, var_2.a, 1u, var_2.a), vec4<u32>(var_2.a, 6408u, var_2.a, var_2.a))), 1000f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_1.x);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(1f, 1f, 1f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-627f, 547f), arg_0.b, arg_3.b, _wgslsmith_f_op_f32(f32(-1f) * -2181f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 1037f, -2017f, arg_2.b) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-452f, arg_3.b, 565f, 247f), vec4<f32>(-850f, 902f, 707f, 279f)))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1449f, 783f, -841f, 293f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -1000f, 1299f, arg_3.b), vec4<f32>(arg_1, -701f, arg_0.b, -755f), vec4<bool>(false, true, true, true))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-501f, 324f, arg_1, 752f))), vec4<f32>(arg_2.b, -190f, arg_3.b, _wgslsmith_f_op_f32(f32(-1f) * -756f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 1119f, 750f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, arg_0.b, -162f, -1684f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_0.x, arg_3.b, -121f)), any(vec2<bool>(false, false)))))));
    var var_2 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(1287f > var_1.x, any(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true))), arg_3.b >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(vec3<bool>(true, true, true), arg_0).b) - -890f));
    var_2 = func_4(func_5(!(!vec3<bool>(true, var_2.x, true)), arg_2), _wgslsmith_f_op_f32(-arg_2.b)).yz;
    var_2 = vec2<bool>(var_2.x, !(var_2.x && !any(vec3<bool>(var_2.x, var_2.x, var_2.x))));
    return Struct_1(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_2.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0.x, var_1.wyx, vec2<bool>(var_2.x, var_2.x), -64288i)) * arg_1))));
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(2147483647i, select(-22516i, 2147483647i, false && (arg_1.a != _wgslsmith_sub_u32(0u, arg_1.a))));
    var_0 = select(30787i, 3982i | firstLeadingBit(select(1i, -arg_0, true)), true != ((-26967i <= firstLeadingBit(arg_0)) & func_4(Struct_1(arg_1.a, arg_1.b), -858f).x));
    var var_1 = arg_1.b == -257f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-562f, -1921f), 1315f, _wgslsmith_f_op_f32(trunc(arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(678f, arg_1.b, -1983f, -1439f) + vec4<f32>(arg_1.b, arg_1.b, -2126f, 1396f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1664f, arg_1.b, arg_1.b, 333f)), vec4<f32>(arg_1.b, arg_1.b, arg_1.b, arg_1.b)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(103f, -901f, _wgslsmith_f_op_f32(-arg_1.b), arg_1.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.b, 199f, arg_1.b, 1472f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_1.b, -1371f, 1089f)), true))) - vec4<f32>(func_5(vec3<bool>(true, true, true), arg_1).b, _wgslsmith_f_op_f32(min(-1316f, arg_1.b)), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b))))));
    let var_3 = ~(_wgslsmith_div_vec2_u32(vec2<u32>(~arg_1.a, 1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a, 1u), vec2<u32>(arg_1.a, 22805u))) & vec2<u32>(0u, ~(~arg_1.a)));
    return Struct_1(arg_1.a, func_5(vec3<bool>(true, false, !all(vec3<bool>(false, true, false))), Struct_1(~0u, _wgslsmith_f_op_f32(-449f + _wgslsmith_f_op_f32(f32(-1f) * -2519f)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(u_input.a.x, func_6(Struct_1(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(1u, 60365u)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, -1448f, 193f)), vec2<bool>(false, true), u_input.a.x))), _wgslsmith_f_op_f32(abs(-237f)), func_5(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec3<bool>(false, true, false))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(6749u, 81469u), vec2<u32>(4294967295u, 1258u)), -294f)), func_5(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), func_5(vec3<bool>(true, false, false), func_5(vec3<bool>(true, true, true), Struct_1(25625u, -754f))))));
    var var_1 = func_7(u_input.a.x, func_7(_wgslsmith_dot_vec3_i32(u_input.a, select(u_input.a, vec3<i32>(u_input.a.x, -38777i, u_input.a.x), vec3<bool>(true, true, true))), func_7(u_input.a.x, Struct_1(~var_0.a, 776f))));
    var var_2 = func_6(Struct_1(countOneBits(100668u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), -1663f, Struct_1(var_0.a, -1986f), Struct_1(_wgslsmith_mod_u32(~var_0.a, _wgslsmith_div_u32(846u, 4294967295u)) << (1u % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1402f), -1000f)))));
    var_0 = Struct_1(firstLeadingBit(func_5(vec3<bool>(true, true, true), Struct_1(~var_1.a, var_0.b)).a), -341f);
    var_1 = Struct_1(func_6(Struct_1(var_1.a, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -474f), func_7(u_input.a.x, func_6(func_6(Struct_1(var_1.a, var_2.b), var_2.b, Struct_1(var_2.a, 420f), Struct_1(25854u, var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1299f), Struct_1(45016u, 667f), Struct_1(17093u, -122f))), Struct_1(var_1.a, var_2.b)).a, func_5(vec3<bool>(true, true, true), Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_0.b))).b);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~u_input.a, _wgslsmith_f_op_f32(func_2()), 0u, reverseBits(abs(~abs(vec4<u32>(4294967295u, var_2.a, 15544u, 23590u)))));
}

