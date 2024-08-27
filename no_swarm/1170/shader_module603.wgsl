struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = select(28180u, 22935u, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0.a)), 1f, -517f));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~abs(4294967295u)), select(40210u, _wgslsmith_mod_u32(reverseBits(108889u), 1u), true), ~max(~47177u, var_0), ~firstLeadingBit(0u)), ~(~abs(vec4<u32>(32056u, var_0, var_0, 16956u))));
    let var_3 = var_2.yx;
    let var_4 = _wgslsmith_div_u32(~var_2.x, 10698u);
    return arg_0.a;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-612f)), _wgslsmith_f_op_f32(582f - 1364f))))))));
    var var_1 = !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(arg_0.x <= arg_0.x, false, any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), true));
    var_1 = !select(vec3<bool>(true, all(!vec4<bool>(var_1.x, var_1.x, true, false)), true), !vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), true, all(vec4<bool>(var_1.x, true, true, true))), !select(any(vec3<bool>(false, var_1.x, var_1.x)), true, true));
    var_1 = select(select(!(!select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, true, false), vec3<bool>(false, false, var_1.x))), select(vec3<bool>(true, false, var_1.x), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, false, true), vec3<bool>(false, var_1.x, false)), !vec3<bool>(true, false, var_1.x), !vec3<bool>(true, var_1.x, var_1.x)), var_1.x), u_input.a.x <= -2147483647i), vec3<bool>(false, false, var_1.x), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, true), true)), select(vec3<bool>(true, var_1.x, all(vec4<bool>(var_1.x, true, true, true))), vec3<bool>(false, var_1.x && var_1.x, true), true), vec3<bool>(var_1.x && var_1.x, _wgslsmith_add_i32(u_input.a.x, 2147483647i) > reverseBits(u_input.a.x), _wgslsmith_f_op_f32(-var_0) == _wgslsmith_f_op_f32(1455f - var_0))));
    let var_2 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 69133u, _wgslsmith_dot_vec3_u32(arg_0.xzy, arg_0.wzw), arg_0.x), vec4<u32>(~arg_0.x, ~arg_0.x, select(12045u, arg_0.x, true), reverseBits(arg_0.x))), _wgslsmith_div_u32(0u, arg_0.x), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.xzz, ~arg_0.yxy), arg_0.zwx)), select(min(~(i32(-1i) * -21961i), min(countOneBits(-2147483647i), -6246i)), ~(-u_input.b), false));
    return Struct_3(_wgslsmith_f_op_f32(exp2(var_0)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec4<u32>(1u, 1u, 1u, 1u));
    var var_1 = Struct_1(4294967295u);
    let var_2 = (~50978u << ((_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, 19568u), vec2<u32>(var_1.a, 4294967295u) & vec2<u32>(57296u, 1u)) ^ var_1.a) % 32u)) ^ _wgslsmith_clamp_u32(~select(~0u, 30712u, true), ~4294967295u, 43520u);
    let var_3 = -947f;
    let var_4 = u_input.a.wy;
    return Struct_1(1835u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, 1303f, -1088f, 292f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-139f, -500f, -1000f, -456f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-540f, 2487f, 886f, 1051f), vec4<f32>(618f, -466f, 139f, -545f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -982f, -1064f, 170f), vec4<f32>(280f, -1529f, 1951f, 1286f))))))));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(521f, -374f)), var_0.x)), -197f), var_0.x));
    let var_2 = func_1();
    var_1 = func_2(countOneBits(~(~(~vec4<u32>(18136u, 1u, 4294967295u, var_2.a)))));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-461f))));
    var_1 = Struct_3(-1000f);
    var var_3 = min((select(u_input.b, select(u_input.b, 2147483647i, true), true) ^ 36655i) | 0i, -u_input.b);
    var var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(var_2.a, 17185u, var_2.a, var_2.a)), ~reverseBits(vec4<u32>(15213u, 2791u, var_2.a, 0u))), ~min(vec4<u32>(4294967295u, var_2.a, var_2.a, 4294967295u), reverseBits(vec4<u32>(var_2.a, 9435u, var_2.a, var_2.a)))), 18871u, abs(var_2.a));
    let var_5 = vec3<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), max(firstLeadingBit(-32673i), ~u_input.b)), u_input.b), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a);
}

