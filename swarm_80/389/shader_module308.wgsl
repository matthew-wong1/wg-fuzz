struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> vec4<bool> {
    global0 = 1i << (u_input.a.x % 32u);
    let var_0 = vec4<u32>(43066u, arg_2, arg_2 ^ ~0u, ~27288u);
    var var_1 = Struct_2(0i);
    global0 = -_wgslsmith_dot_vec2_i32(min(abs(arg_1.xy) | vec2<i32>(-2147483647i, arg_0), vec2<i32>(firstLeadingBit(1i), -1i)), arg_1.zz);
    var var_2 = Struct_3(Struct_2(~_wgslsmith_clamp_i32(i32(-1i) * -11070i, -17843i, 1i ^ arg_1.x)));
    return !vec4<bool>(true || any(vec2<bool>(true, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), true, ~firstTrailingBit(-34325i) < -28946i);
}

fn func_2() -> Struct_2 {
    global0 = min(-1i, 1i);
    var var_0 = Struct_1(vec2<u32>(0u, 34924u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1027f, 2022f, true))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), func_3(-17139i, reverseBits(vec3<i32>(-20444i, 2147483647i, -12533i)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.a.x)))), select(func_3(abs(-2147483647i), ~vec3<i32>(-1543i, -23167i, -18164i), _wgslsmith_sub_u32(2847u, 1u)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)))), select(_wgslsmith_div_vec4_i32(vec4<i32>(reverseBits(-35961i), ~(-1i), ~(-11940i), 1i), vec4<i32>(_wgslsmith_sub_i32(29065i, 2147483647i), 1i, -86084i, firstLeadingBit(2147483647i))), abs(vec4<i32>(0i, -40496i, -2147483647i, 0i)) | firstTrailingBit(vec4<i32>(-2147483647i, -1i, 16042i, -1i)), true), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 15190u, u_input.a.x, u_input.a.x), u_input.a), vec4<u32>(2671u, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 17390u)), u_input.a.x, u_input.a.x, ~35131u | _wgslsmith_clamp_u32(u_input.a.x, 1u, 8780u))));
    var var_1 = -818f;
    var var_2 = Struct_3(Struct_2(-(~var_0.d.x)));
    var var_3 = Struct_3(Struct_2(~_wgslsmith_sub_i32(var_2.a.a, var_0.d.x) | countOneBits(var_2.a.a)));
    return var_3.a;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = !(!vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(true, arg_0, arg_0))), _wgslsmith_mod_u32(1u, 1u) != u_input.a.x, true));
    let var_1 = arg_1;
    var var_2 = Struct_3(func_2());
    return Struct_1((vec2<u32>(~u_input.a.x, u_input.a.x) | ~(~u_input.a.xx)) & ~reverseBits(~vec2<u32>(4294967295u, 21050u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-351f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-828f, -1992f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 909f)) + -913f)))), !(!vec4<bool>(!var_0.x, arg_0, true, arg_0)), -vec4<i32>(_wgslsmith_div_i32(2147483647i, countOneBits(arg_1)), i32(-1i) * -var_1, reverseBits(var_1) >> (u_input.a.x % 32u), _wgslsmith_div_i32(var_1, arg_1) ^ -var_1), reverseBits(49670u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(false, -1i);
    global0 = func_1(true, _wgslsmith_mod_i32(var_0.d.x, func_2().a)).d.x;
    var var_1 = Struct_3(func_2());
    global0 = -2147483647i;
    var var_2 = Struct_3(var_1.a);
    let var_3 = -11799i;
    let x = u_input.a;
    s_output = StorageBuffer(55400u);
}

