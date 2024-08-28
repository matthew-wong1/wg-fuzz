struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<u32>) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f), -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, 353f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1863f, -151f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1457f * -2703f), _wgslsmith_f_op_f32(-308f + 1082f)) + vec2<f32>(_wgslsmith_f_op_f32(-462f + 1143f), _wgslsmith_f_op_f32(f32(-1f) * -410f)))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = ~abs(26704i << (arg_0.a.x % 32u));
    var var_1 = Struct_1(firstLeadingBit(~firstTrailingBit(arg_0.a << (arg_0.a % vec2<u32>(32u)))));
    var var_2 = ~arg_0.a.x;
    var_1 = arg_0;
    return var_1.a.x & _wgslsmith_mult_u32(1u, min(var_1.a.x, 114859u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = select(select(vec3<bool>(true, !all(vec3<bool>(false, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), !vec3<bool>(any(vec4<bool>(false, true, true, false)), true, all(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false)))), vec3<bool>(all(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true, !any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), true);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f + 1738f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(var_0.zy, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), -10035i, vec4<u32>(arg_2.x, 20243u, 4294967295u, arg_0.a.x))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-292f + -502f), _wgslsmith_f_op_vec2_f32(func_1(var_0.yx, -1i, arg_2)).x))))));
}

fn func_2() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)), _wgslsmith_f_op_f32(-457f * _wgslsmith_div_f32(723f, 400f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -1621f))) + -1632f)));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec2<u32>(4294967295u, abs(~16836u))), vec2<u32>(func_3(Struct_1(vec2<u32>(u_input.b, 0u) | vec2<u32>(1u, u_input.b))), ~u_input.a), ~(~vec4<u32>(16882u, 94163u, u_input.b, u_input.a) & firstTrailingBit(vec4<u32>(u_input.a, 62645u, 1u, u_input.b))) | vec4<u32>(u_input.a, countOneBits(reverseBits(1u)), ~26615u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(1551u, 27487u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.b, u_input.a))))));
    let var_1 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_clamp_u32(28917u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 78592u), abs(vec2<u32>(u_input.b, u_input.a))), ~select(vec2<u32>(15138u, u_input.a), vec2<u32>(3528u, u_input.b), false)), u_input.a >> (max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 6684u), vec3<u32>(0u, 1u, u_input.b)), 0u) % 32u)));
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, var_1), vec3<u32>(u_input.a, 4294967295u, 0u)), ~0u), abs(vec2<u32>(u_input.b, var_1) & ~vec2<u32>(u_input.b, var_1))));
    var_0 = vec2<f32>(1015f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))));
    return StorageBuffer(~(min(min(vec4<u32>(1u, 33829u, 1u, 28425u), vec4<u32>(var_1, 8575u, var_2.a.x, 23301u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(0u, u_input.a, 8498u, u_input.b), vec4<u32>(u_input.a, 0u, var_1, 0u))) >> (reverseBits(vec4<u32>(var_1, 1u, var_2.a.x, 47940u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(478f, -297f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(470f, 862f)), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, false), 67514i, vec4<u32>(0u, 57318u, 4990u, 4294967295u))), vec2<bool>(true, true))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1000f) - vec2<f32>(-320f, 1104f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-201f, -2377f)), !vec2<bool>(true || any(vec2<bool>(true, true)), !all(vec4<bool>(false, true, true, true)))));
    let x = u_input.a;
    s_output = func_2();
}

