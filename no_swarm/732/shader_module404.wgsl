struct Struct_1 {
    a: vec4<u32>,
    b: i32,
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

var<private> global0: array<i32, 16> = array<i32, 16>(46626i, 2147483647i, -7497i, 2147483647i, 0i, -41815i, 1i, 1i, 14480i, 12348i, i32(-2147483648), 9587i, 0i, 916i, 2147483647i, -678i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = -u_input.a;
    global0 = array<i32, 16>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) + -959f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(f32(-1f) * -680f), arg_0.x)))) - 1456f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-450f - _wgslsmith_f_op_f32(abs(484f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -1102f)))));
    global0 = array<i32, 16>();
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 65371u)), reverseBits(_wgslsmith_clamp_u32(1u, ~4294967295u, 46510u)), abs(firstLeadingBit(~4443u)), 30809u), 1i);
    return max(_wgslsmith_mult_u32(42968u, reverseBits(var_2.a.x)), 0u);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(min(abs(select(vec4<u32>(0u, 4294967295u, 4294967295u, 9355u), vec4<u32>(0u, 0u, 46137u, 0u), vec4<bool>(true, true, true, true)) ^ vec4<u32>(24822u, 1u, 47580u, 9226u)), vec4<u32>(func_3(vec4<bool>(false, false, false, false)), ~85776u, 1u, ~4294967295u) ^ ~(~vec4<u32>(1u, 0u, 4294967295u, 0u))), select(~max(-global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_mod_i32(0i, 2147483647i)), 21453i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2006f))) < -1844f));
    let var_1 = arg_0;
    var var_2 = func_3(!vec4<bool>(true, true, false || (var_0.a.x <= 0u), true));
    global0 = array<i32, 16>();
    var_0 = Struct_1(var_0.a, _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.a, -29714i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_add_vec2_i32(vec2<i32>(-12789i, -57222i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 16u)], u_input.a)))));
    return -270f;
}

fn func_4(arg_0: i32, arg_1: f32) -> vec3<u32> {
    let var_0 = vec2<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), !(select(false, false, true) || false) & !(!any(vec3<bool>(false, false, true))));
    let var_1 = Struct_1(abs(~vec4<u32>(1u, 1u, 1u, 1u) << (min(select(vec4<u32>(95512u, 4294967295u, 1u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 81241u), vec4<bool>(var_0.x, var_0.x, false, false)), _wgslsmith_sub_vec4_u32(vec4<u32>(28315u, 30197u, 42056u, 95830u), vec4<u32>(9613u, 15876u, 0u, 0u))) % vec4<u32>(32u))), firstTrailingBit(min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(34433i, u_input.a), ~vec2<i32>(u_input.a, 40866i)))));
    global0 = array<i32, 16>();
    var var_2 = vec4<bool>(true, var_0.x, var_0.x, any(!vec3<bool>(true, false & var_0.x, true)));
    var_2 = !select(vec4<bool>(!(!var_2.x), any(select(var_2.xxx, vec3<bool>(false, var_0.x, false), false)), true, !var_2.x), vec4<bool>(select(true, false, !var_0.x), var_2.x, true, true & (true | var_2.x)), all(vec2<bool>(var_0.x && var_0.x, false)));
    return select(var_1.a.zzz, var_1.a.wzx, true);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = ~(~vec3<u32>(1u, 1u, 1u) | func_4(-(global0[_wgslsmith_index_u32(61955u, 16u)] >> (8322u % 32u)), _wgslsmith_f_op_f32(func_2(1117f))));
    let var_1 = false;
    var var_2 = Struct_1(~min(firstTrailingBit(~vec4<u32>(96269u, 70641u, var_0.x, 37133u)), firstTrailingBit(select(vec4<u32>(var_0.x, var_0.x, 0u, 34320u), vec4<u32>(40639u, 24182u, var_0.x, var_0.x), var_1))), global0[_wgslsmith_index_u32(var_0.x, 16u)] << (50210u % 32u));
    var var_3 = Struct_1(vec4<u32>(~firstLeadingBit(20898u), _wgslsmith_add_u32(var_0.x, var_2.a.x) & 26060u, _wgslsmith_clamp_u32(1u, ~var_2.a.x, ~var_0.x), var_0.x) | var_2.a, var_2.b);
    var var_4 = arg_0;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(-2147483647i, min(func_1(vec2<bool>(true, true)), u_input.a)), _wgslsmith_sub_i32(-u_input.a, u_input.a), min(-13084i, _wgslsmith_div_i32(func_1(vec2<bool>(true, true)), -_wgslsmith_dot_vec2_i32(vec2<i32>(-33597i, 9665i), vec2<i32>(global0[_wgslsmith_index_u32(11210u, 16u)], -30936i)))), select(u_input.a, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(21979i, global0[_wgslsmith_index_u32(4294967295u, 16u)], -1i, u_input.a), vec4<i32>(1i, 2147483647i, u_input.a, u_input.a)), ((-58362i > u_input.a) && true) & false));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = vec3<f32>(3194f, -593f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f), 1f));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(37989u, ~1u), ~(~_wgslsmith_mod_u32(1u, 2606u)), 0u, 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 65605u, 4294967295u, 0u)) & min(1u, max(43500u, 1u)), abs(~(~27471u)), abs(_wgslsmith_mod_u32(~42045u, max(4294967295u, 0u))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(57779u, 4294967295u)), _wgslsmith_add_u32(46339u, _wgslsmith_sub_u32(4294967295u, 62837u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

