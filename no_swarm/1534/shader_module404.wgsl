struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-545f, -336f, -524f, -1256f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1335f, -1388f, -1606f, 187f) + vec4<f32>(199f, 1066f, 1588f, -1146f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-938f - 140f)))), 2699f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-967f * _wgslsmith_f_op_f32(-1377f - 437f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-314f))), select(all(vec4<bool>(false, true, true, true)), true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-342f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(147f - 847f), _wgslsmith_f_op_f32(-1935f * 809f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(var_0.wz));
    var var_2 = vec2<i32>(max(4918i, 1i), abs(-7728i));
    let var_3 = true;
    let var_4 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(abs(1i), 0i, -var_2.x) | ((vec3<i32>(1i, -70138i, -2147483647i) << (vec3<u32>(0u, 0u, u_input.c) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(u_input.b.wyy, vec3<i32>(var_2.x, 37485i, -23942i), u_input.b.xzz)), max(firstTrailingBit(vec3<i32>(65579i, 1i, 0i)), u_input.b.zwx)), -u_input.b.yyy);
    return 34368i;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = all(vec4<bool>(select(true, !any(vec2<bool>(false, arg_0)), any(vec3<bool>(true, true, true))), ((i32(-1i) * -14084i) << (u_input.c % 32u)) <= (1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b.xz)), false, any(select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_0, true)), vec3<bool>(true, arg_0, arg_0)))));
    var var_2 = vec3<i32>(-1i, min(~(~u_input.a >> (~u_input.c % 32u)), 1i), func_3());
    let var_3 = Struct_2(Struct_1(select(vec3<bool>(true, var_2.x < var_2.x, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), any(vec3<bool>(arg_0, arg_0, false)))), ~u_input.c);
    var_2 = u_input.b.wxw;
    return ~(~_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.c, 27114u), min(~1u, 0u)));
}

fn func_1() -> Struct_1 {
    let var_0 = -1022f;
    var var_1 = any(select(select(vec3<bool>(true, all(vec2<bool>(true, true)), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), true), !vec3<bool>(false, false, all(vec4<bool>(false, false, false, true))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_mult_u32(u_input.c, func_2(true) & ~u_input.c);
    var_1 = 0u < ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(57535u, 1u, u_input.c, u_input.c)), abs(vec4<u32>(1u, u_input.c, u_input.c, 4294967295u) >> (vec4<u32>(u_input.c, u_input.c, 27945u, u_input.c) % vec4<u32>(32u))));
    var_2 = u_input.c;
    return Struct_1(vec3<bool>(true, all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), false));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(636f, -856f, 239f)), vec3<f32>(1767f, 779f, -1330f), arg_0.a))))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = Struct_4(Struct_3(u_input.a, Struct_2(func_1(), u_input.c), arg_0));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-524f, var_0.x)), _wgslsmith_f_op_f32(272f * var_1))), 2179f))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i, u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.xxz, ~vec3<i32>(u_input.a, u_input.a, -43304i)), u_input.b.x)) >> (vec3<u32>(func_4(func_1()), ~_wgslsmith_sub_u32(u_input.c >> (u_input.c % 32u), 66109u << (u_input.c % 32u)), u_input.c) % vec3<u32>(32u));
    let var_1 = Struct_3(min(reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(2175i, var_0.x, u_input.a), ~var_0, vec3<bool>(true, true, true)), vec3<i32>(firstTrailingBit(var_0.x), 15699i, u_input.b.x))), Struct_2(func_1(), 4294967295u), func_1());
    var var_2 = Struct_4(Struct_3(firstLeadingBit(~4772i) | (61124i | (var_1.a & 26719i)), var_1.b, Struct_1(select(var_1.c.a, var_1.c.a, var_1.b.a.a))));
    var_2 = Struct_4(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(19552u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(311f)), -604f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f - 1931f) - 894f)))));
}

