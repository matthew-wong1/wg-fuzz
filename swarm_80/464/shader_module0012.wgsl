struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<bool>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, _wgslsmith_f_op_f32(-arg_0.a.x))), firstLeadingBit(-3079i), min(~reverseBits(~var_0.c), u_input.c), arg_0.d);
    var_0 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - arg_0.a.x), var_1.a.x))), 1i, countOneBits(~_wgslsmith_mod_u32(var_1.c, 48152u)) ^ var_1.c, vec4<bool>(true, var_1.d.x, !select(true, any(var_0.d.yzw), false | var_1.d.x), var_0.d.x));
    var var_3 = firstTrailingBit(min(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(20473u, 0u, arg_0.c, arg_0.c)), vec4<u32>(var_0.c, 1u, var_1.c, u_input.c)), ~min(vec4<u32>(4294967295u, var_0.c, var_1.c, 66605u), vec4<u32>(1u, 51919u, 0u, var_1.c)))) ^ vec4<u32>(~(~var_0.c), countOneBits(~(~70206u)), 14333u, ~min(1u, ~var_0.c));
    return var_1.d;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<f32>(-608f, -1084f), arg_0.b, (u_input.c ^ u_input.c) ^ (u_input.c & 1u), select(select(vec4<bool>(!arg_0.d.x, arg_0.d.x, any(vec4<bool>(arg_0.d.x, arg_0.d.x, false, true)), any(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))), vec4<bool>(arg_0.d.x, all(vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x)), !arg_0.d.x, all(vec4<bool>(arg_0.d.x, false, true, arg_0.d.x))), arg_0.d), arg_0.d, select(select(select(arg_0.d, vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x), arg_0.d.x), vec4<bool>(arg_0.d.x, true, true, arg_0.d.x), arg_0.d), func_3(Struct_1(vec2<f32>(-163f, arg_0.a.x), 2147483647i, 4294967295u, arg_0.d)), vec4<bool>(true, all(arg_0.d.zx), false, true))));
    var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1226f, var_0.a.x)))), var_0.a)), var_0.b, u_input.c, select(func_3(arg_0), vec4<bool>(any(arg_0.d.zyw), true, true || (var_0.d.x | var_0.d.x), select(false, var_0.d.x, true)), select(select(arg_0.d, vec4<bool>(false, arg_0.d.x, true, arg_0.d.x), true), !vec4<bool>(true, false, false, var_0.d.x), !select(vec4<bool>(var_0.d.x, var_0.d.x, arg_0.d.x, var_0.d.x), vec4<bool>(arg_0.d.x, true, true, var_0.d.x), arg_0.d.x))));
    var var_2 = _wgslsmith_add_u32(arg_0.c, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.c, 7631u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, var_0.c, u_input.c) >> (vec3<u32>(arg_0.c, 54229u, var_1.c) % vec3<u32>(32u)), vec3<u32>(var_1.c, var_1.c, u_input.c) << (vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u)))));
    let var_3 = arg_0;
    return select(~(-(i32(-1i) * -var_0.b)), var_1.b & min(~(-2147483647i), -1i), !(!any(vec2<bool>(var_1.d.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), func_1(vec4<bool>(false, true, false, true), -213f, vec3<bool>(true, false, false)))));
    var var_1 = u_input.c;
    var_1 = 3993u;
    var var_2 = -vec4<i32>(~(-func_2(Struct_1(vec2<f32>(-1394f, 1142f), u_input.b.x, u_input.c, vec4<bool>(true, var_0.x, false, var_0.x)))), u_input.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), countOneBits(vec2<i32>(u_input.a.x, 2147483647i))), 0i, u_input.a.x);
    var var_3 = select(vec3<bool>(var_0.x, var_0.x, var_0.x), !(!select(vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), false || var_0.x)), u_input.c < 51036u);
    let var_4 = -1157f;
    let var_5 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1610f)), _wgslsmith_f_op_f32(-var_4))), 1086i, reverseBits(1u) | u_input.c, vec4<bool>(true, var_3.x, true, any(select(vec3<bool>(false, var_3.x, false), vec3<bool>(var_3.x, false, var_3.x), var_0.x))))).xz;
    var var_6 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_4) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, 436f)))))), -(-firstTrailingBit(u_input.b.x) ^ -2147483647i), 0u, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(497f, var_4))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(125f, -1163f)))), 0i, u_input.c, vec4<bool>(any(vec4<bool>(true, var_0.x, var_3.x, var_3.x)), var_0.x, all(vec3<bool>(true, true, var_3.x)), var_5.x))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(4294967295u, ~61787u, 16137u, var_6.c) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, 4294967295u), abs(vec4<u32>(u_input.c, var_6.c, 66995u, 0u)))) << (_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 1u, var_6.c), vec4<u32>(u_input.c, var_6.c, 6362u, var_6.c) & vec4<u32>(94427u, 16354u, 1u, var_6.c), reverseBits(vec4<u32>(var_6.c, u_input.c, 43748u, var_6.c))), vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c), 1u, 0u, countOneBits(33140u))) % vec4<u32>(32u)), ~vec3<i32>(~2147483647i, 2147483647i, var_2.x), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_6.c, u_input.c, u_input.c) | ~vec3<u32>(u_input.c, var_6.c, 0u), vec3<u32>(var_6.c, abs(24915u), 39417u)), _wgslsmith_clamp_u32(~1u, max(4294967295u, var_6.c) & 4294967295u, var_6.c | 1u)), _wgslsmith_add_vec2_u32(select(~_wgslsmith_add_vec2_u32(vec2<u32>(7132u, var_6.c), vec2<u32>(0u, 1u)), ~min(vec2<u32>(u_input.c, u_input.c), vec2<u32>(27287u, 41408u)), var_3.x), (~vec2<u32>(1u, 4294967295u) & vec2<u32>(41170u, u_input.c)) & ~(~vec2<u32>(73936u, var_6.c))), _wgslsmith_f_op_f32(max(var_6.a.x, _wgslsmith_f_op_f32(-var_4))));
}

