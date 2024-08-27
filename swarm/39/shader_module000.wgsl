struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    return 234f;
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f * 378f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f))) + _wgslsmith_f_op_f32(-1108f - _wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(1101f + -197f)))));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = Struct_5(arg_0.c.d, -u_input.a, max(arg_0.c.c.d.xww, ~(arg_0.b.d ^ vec3<u32>(40740u, arg_0.b.b.x, 54987u))) >> ((~arg_0.b.b >> (~(vec3<u32>(1u, arg_0.b.d.x, 1u) & arg_0.b.d) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = var_0.a.c;
    return ~u_input.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> f32 {
    let var_0 = select(u_input.b, abs(firstLeadingBit(~(~arg_0.d.x))), true);
    let var_1 = abs(~reverseBits(vec3<u32>(54206u, _wgslsmith_mult_u32(var_0, 1u), 87375u)));
    let var_2 = arg_0.a;
    let var_3 = select(vec4<u32>(~(~var_0), min(u_input.b, ~var_1.x | ~arg_0.d.x), arg_0.b.x, _wgslsmith_mod_u32(1u, 4294967295u) ^ (u_input.b ^ _wgslsmith_clamp_u32(0u, u_input.b, 1u))), vec4<u32>(var_1.x, 4294967295u, _wgslsmith_dot_vec2_u32(arg_0.d.zy | ~var_1.yx, firstLeadingBit(firstTrailingBit(vec2<u32>(32344u, 4294967295u)))), max(4294967295u, _wgslsmith_mod_u32(4294967295u, 8286u)) >> (~_wgslsmith_add_u32(var_1.x, 1u) % 32u)), any(!vec4<bool>(true, true && arg_2, true, false)));
    var var_4 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.b, 19392u), max(12682u, arg_0.b.x)), vec2<u32>(~firstLeadingBit(37785u), 1u)) & _wgslsmith_dot_vec3_u32(abs(~var_3.wyw), var_1);
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i))), -497f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(791f - -1445f) - 207f), -434f) + -894f));
    var_0 = -396f;
    var_0 = 418f;
    var_0 = _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-832f)), 1009f))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 4294967295u, u_input.b)) ^ vec3<u32>(65485u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(61685u, u_input.b)), func_3(Struct_4(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), Struct_3(1000f, vec3<u32>(1u, u_input.b, u_input.b), vec3<i32>(u_input.a, -2147483647i, 0i), vec3<u32>(25282u, u_input.b, u_input.b)), Struct_2(vec2<f32>(270f, 2106f), -194f, Struct_1(vec4<u32>(u_input.b, u_input.b, 15223u, u_input.b), 1358u, 1033f, vec4<u32>(1u, 7759u, u_input.b, 1u)), Struct_1(vec4<u32>(u_input.b, u_input.b, 13223u, 4294967295u), 1u, 284f, vec4<u32>(u_input.b, 56517u, u_input.b, u_input.b))), 975f), -2439f)), max(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(u_input.a, -2147483647i, 41470i)) >> (~vec3<u32>(u_input.b, 0u, u_input.b) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4542u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 25331u, u_input.b), max(vec3<u32>(1u, u_input.b, 5327u), vec3<u32>(4294967295u, 28187u, u_input.b))) | (~vec3<u32>(u_input.b, u_input.b, u_input.b) | (vec3<u32>(4294967295u, 0u, u_input.b) >> (vec3<u32>(20383u, u_input.b, 4294967295u) % vec3<u32>(32u))))), ~max(_wgslsmith_div_i32(~0i, u_input.a), u_input.a), true));
    let var_1 = vec2<i32>(-1i, u_input.a);
    let var_2 = Struct_3(-912f, ~(~(~vec3<u32>(u_input.b, 17377u, u_input.b)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 53674u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 73528u)) % vec3<u32>(32u))), ~(-vec3<i32>(var_1.x, ~var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 14152i), var_1))), firstTrailingBit(_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(4294967295u, u_input.b, 98738u)), vec3<u32>(u_input.b, ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 12492u), vec2<u32>(u_input.b, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 1174f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1498f, 542f) - vec2<f32>(-515f, var_2.a)))))))), countOneBits(countOneBits(var_2.b.x | 1u) & ~(~u_input.b)), _wgslsmith_add_u32(22048u, 1u));
}

