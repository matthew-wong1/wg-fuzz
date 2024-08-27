struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = ~0i;
    let var_1 = !(!vec4<bool>(true, true & any(vec4<bool>(true, false, true, false)), select(true, any(vec4<bool>(false, false, false, false)), true), true));
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1252f) * _wgslsmith_f_op_f32(sign(-403f))), 26267u, vec4<u32>(~47862u, 1u, 0u, 1u)), true, Struct_1(1602f, 74202u, vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(45549u, 1u)), min(1u, 1u), 1u))));
    var var_3 = u_input.a;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-282f, -881f)))))), (0u << (~(~var_2.a.c.b) % 32u)) << (firstTrailingBit(~1u) % 32u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_div_u32(var_2.a.c.b, var_2.a.c.c.x)), min(1u, 1u), var_2.a.a.c.x ^ max(0u, 4294967295u), select(countOneBits(15454u), 1u, all(vec3<bool>(false, var_2.a.b, var_1.x)))), select(vec4<u32>(48762u, ~5145u, firstLeadingBit(var_2.a.c.b), ~var_2.a.a.b), select(var_2.a.a.c, var_2.a.c.c, var_2.a.b) | vec4<u32>(var_2.a.a.c.x, 4049u, var_2.a.c.c.x, var_2.a.c.c.x), vec4<bool>(true, false, true, all(vec4<bool>(false, var_2.a.b, false, false))))));
    return _wgslsmith_mod_u32(4294967295u, 20622u);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> bool {
    let var_0 = Struct_2(Struct_1(-802f, _wgslsmith_sub_u32(func_3(), arg_1.a.c.c.x), ~firstTrailingBit(abs(vec4<u32>(119229u, arg_1.a.c.b, arg_1.a.a.b, 4294967295u)))), !(!arg_2.a.b), arg_2.a.a);
    var var_1 = true;
    var var_2 = Struct_1(1000f, 26746u, arg_1.a.a.c);
    let var_3 = Struct_3(Struct_2(arg_2.a.a, !(1i < (u_input.a | u_input.a)), Struct_1(1f, _wgslsmith_dot_vec2_u32(select(var_0.a.c.zy, var_0.a.c.yw, true), var_2.c.xw), ~(~vec4<u32>(4294967295u, arg_1.a.c.b, 10893u, var_0.a.b)))));
    let var_4 = vec4<bool>(true, true, arg_1.a.b, arg_2.a.b);
    return select(false, !(!(!var_0.b)), true) || (true & (-10951i < ((-2147483647i & arg_0) & (-2147483647i & u_input.a))));
}

fn func_1() -> vec2<u32> {
    let var_0 = !(!select(true, false, any(vec3<bool>(true, true, true))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) - -452f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(1496f, -206f))) + _wgslsmith_f_op_f32(f32(-1f) * -424f)), all(vec2<bool>(any(vec2<bool>(true, var_0)), var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-792f, 1074f, func_2(u_input.a, Struct_3(Struct_2(Struct_1(585f, 65443u, vec4<u32>(69214u, 29915u, 68407u, 4294967295u)), var_0, Struct_1(-626f, 4690u, vec4<u32>(4294967295u, 4294967295u, 13288u, 0u)))), Struct_3(Struct_2(Struct_1(-1761f, 1u, vec4<u32>(4294967295u, 59181u, 1u, 15401u)), false, Struct_1(597f, 4294967295u, vec4<u32>(4294967295u, 33150u, 13369u, 0u))))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(738f, -1552f) * 1001f)) * -125f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1859f)), -811f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))))), 349f);
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -1000f)), _wgslsmith_f_op_f32(min(979f, _wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1257f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(815f, var_1.x, 1000f, 1000f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), any(vec3<bool>(false, var_0, false)))))), vec4<f32>(_wgslsmith_f_op_f32(max(-696f, _wgslsmith_f_op_f32(-626f + var_1.x))), 1701f, _wgslsmith_f_op_f32(step(-1465f, -1505f)), var_1.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - 583f))), 2904u, vec4<u32>(~_wgslsmith_mod_u32(1u, ~55025u), 1u, countOneBits(~4294967295u), countOneBits(~(~0u))));
    return vec2<u32>(~(var_2.c.x ^ select(func_3(), countOneBits(var_2.c.x), true)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), firstLeadingBit(vec2<u32>(13376u, 1u)))), 1u);
    let var_1 = ~(vec2<u32>(~_wgslsmith_add_u32(0u, 4294967295u), 1u) ^ func_1());
    var var_2 = ~vec2<i32>(-1431i, 43252i);
    var var_3 = _wgslsmith_dot_vec2_u32(var_1, abs(~_wgslsmith_div_vec2_u32(var_1, vec2<u32>(var_1.x, var_1.x)))) | select(0u, 0u, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)));
    let var_4 = _wgslsmith_sub_vec3_u32(~vec3<u32>(firstTrailingBit(~4294967295u), reverseBits(~1u), 4294967295u), vec3<u32>(~(~_wgslsmith_mod_u32(17297u, 83564u)), ~var_1.x, reverseBits(1u)));
    var_3 = _wgslsmith_mult_u32(~14748u, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(1u, ~firstTrailingBit(var_1.x))), _wgslsmith_div_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(var_2.x, -7345i), vec2<i32>(-32825i, var_2.x)), vec2<i32>(-1i, u_input.a), firstLeadingBit(vec2<i32>(-1i, -30518i)))), firstLeadingBit(vec2<i32>(var_2.x, var_2.x))));
}

