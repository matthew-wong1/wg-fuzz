struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32 = 331f;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global1 = Struct_2(Struct_1(reverseBits(reverseBits(reverseBits(vec3<i32>(2147483647i, global1.a.a.x, -45834i))))));
    var var_0 = select(vec4<bool>(all(vec2<bool>(true, false)) & select(false, true, all(vec2<bool>(false, true))), all(vec3<bool>(true, true, true)), true, true), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, false))), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), !vec4<bool>(true, arg_0.a.a.x >= u_input.a, all(vec3<bool>(true, true, false)), true)), vec4<bool>(any(vec2<bool>(true, true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), reverseBits(global1.a.a.x) > u_input.a, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(381f, 472f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(888f)))) - -573f))));
    var var_1 = _wgslsmith_mult_u32(~min(1u, ~37612u), 1u);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-471f, 396f, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48547u, 1u, 14375u), vec4<u32>(48671u, 37093u, 1u, 4354u)) > 21984u)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(963f, 730f)), _wgslsmith_f_op_f32(f32(-1f) * -938f))))), -1935f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2736f, -2925f, _wgslsmith_f_op_f32(f32(-1f) * -1362f))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = select(!vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true), vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 124862u, 1u), vec3<u32>(52776u, 48095u, 0u)) != 1u, false), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), false, false), vec4<bool>(true, false, true, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(1174f, -924f)), -323f, -263f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-420f, -197f, 486f) - vec3<f32>(1000f, 993f, 1213f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(arg_1)), vec3<f32>(_wgslsmith_f_op_f32(894f * 143f), 516f, 1f))));
    global0 = 279f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = !vec3<bool>(all(vec3<bool>(false, true, true)) | var_0.x, !var_0.x, (_wgslsmith_add_u32(1u, 0u) << (firstTrailingBit(7088u) % 32u)) != _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 1u), 23216u));
    return select(true, any(vec4<bool>((arg_1.a.a.x != arg_0.a.x) && (var_1.x >= 689f), false, !select(var_3.x, var_0.x, false), var_0.x)), 107969u >= (~(~0u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(13995u, 4294967295u, 4294967295u), vec3<u32>(66648u, 40144u, 0u)) % 32u)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, all(vec3<bool>(true, true, true)), true)), true || (true && func_2(global1.a, Struct_2(Struct_1(global1.a.a))))), select(vec4<bool>(true, true, func_2(Struct_1(vec3<i32>(u_input.a, global1.a.a.x, global1.a.a.x)), Struct_2(Struct_1(global1.a.a))), true), !vec4<bool>(true, select(false, true, true), all(vec3<bool>(false, false, true)), true), true), func_2(Struct_1(global1.a.a), Struct_2(global1.a)));
    global0 = -1580f;
    global0 = _wgslsmith_f_op_f32(min(1000f, arg_0));
    var var_1 = vec2<bool>(all(vec2<bool>(!all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !var_0.x)), !var_0.x);
    var_1 = !(!var_0.zz);
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> i32 {
    global1 = Struct_2(arg_1);
    var var_0 = firstTrailingBit(1u);
    global1 = arg_3;
    let var_1 = _wgslsmith_dot_vec4_u32(abs(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(42765u, 35268u, 26610u), 4294967295u), ~abs(51720u), 1u, 4294967295u)), ~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(0u, 0u, 63672u, 10177u), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false)), ~firstLeadingBit(vec4<u32>(1u, 1u, 10779u, 0u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = _wgslsmith_div_vec3_u32(abs(~vec3<u32>(var_1 << (var_1 % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 0u, var_1), vec3<u32>(0u, 4294967295u, var_1)), ~1u)), vec3<u32>(1u, countOneBits(4294967295u), var_1));
    return firstTrailingBit(-42537i);
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_1(1881f);
    var var_1 = arg_0;
    var var_2 = select(min(~(~(-vec4<i32>(0i, u_input.a, -6693i, 5759i))), max(~reverseBits(vec4<i32>(-21206i, arg_0.a.a.x, 0i, -9493i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1.a.a.x, global1.a.a.x, -72760i), vec4<i32>(2147483647i, global1.a.a.x, -2147483647i, -2147483647i), vec4<i32>(var_0.a.x, var_0.a.x, arg_0.a.a.x, 13601i)) << (~vec4<u32>(34974u, 11644u, arg_2.x, 4294967295u) % vec4<u32>(32u)))), -max(vec4<i32>(var_0.a.x << (arg_2.x % 32u), 63186i, global1.a.a.x, 18821i), vec4<i32>(~var_0.a.x, 45775i, select(u_input.a, 2624i, false), -1i)), false);
    global0 = 1000f;
    global0 = _wgslsmith_f_op_f32(252f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1934f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) + _wgslsmith_f_op_f32(f32(-1f) * -655f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-296f, 945f))) - _wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(-952f * 530f)))))));
    return func_1(_wgslsmith_f_op_f32(762f + _wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec3<i32>(19480i, 1i, arg_0.a.a.x))))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(Struct_2(Struct_1(-global1.a.a)), func_4(Struct_2(func_1(661f)), global1.a, -104f, Struct_2(global1.a)), vec3<u32>(reverseBits(19938u), ~reverseBits(10609u), 1u)));
    global0 = _wgslsmith_f_op_f32(ceil(-945f));
    let var_1 = ~(i32(-1i) * -1i);
    let var_2 = -20987i;
    var var_3 = Struct_2(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(0u) << (~_wgslsmith_clamp_u32(11693u, 0u, 4294967295u) % 32u)));
}

