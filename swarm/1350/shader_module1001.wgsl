struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-544f, _wgslsmith_f_op_f32(select(-840f, _wgslsmith_div_f32(564f, 516f), true)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) * -665f))));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = vec2<bool>(true, !(_wgslsmith_mod_i32(1i, -36054i) != firstLeadingBit(select(1510i, 23611i, true))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1223f + _wgslsmith_f_op_f32(var_0 + var_0)))) - _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), var_0)), var_2.x)));
    return false;
}

fn func_2() -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(-134f)), -1633f);
    let var_1 = _wgslsmith_mod_vec2_i32(-reverseBits(firstTrailingBit(vec2<i32>(1i, 1i))), -(vec2<i32>(firstLeadingBit(-1i), ~46062i) << (select(select(u_input.e.yz, u_input.e.yx, vec2<bool>(true, true)), vec2<u32>(u_input.d, u_input.e.x), vec2<bool>(true, true)) % vec2<u32>(32u))));
    var var_2 = Struct_1(abs(vec3<u32>(~4294967295u, 63313u, _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)) | ~u_input.e));
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(~var_2.a.x, ~(~1u)), select(4294967295u, 33046u, !func_3()));
    var_2 = Struct_1(~u_input.e);
    return vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-15797i, var_1.x, var_1.x)) & (firstLeadingBit(vec3<i32>(var_1.x, -61485i, -1382i)) << (~var_2.a % vec3<u32>(32u))), vec3<i32>(var_1.x, ~(-6907i), abs(~var_1.x))), 42743i);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> vec4<u32> {
    let var_0 = func_2();
    let var_1 = vec4<f32>(-296f, arg_1.x, _wgslsmith_div_f32(783f, arg_1.x), arg_1.x);
    let var_2 = ~44733u;
    let var_3 = Struct_1(vec3<u32>(abs(u_input.e.x), _wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_add_u32(var_2, var_2)), _wgslsmith_mult_u32(u_input.d, var_2) | (u_input.e.x ^ u_input.c), 1u), 1u));
    var var_4 = -16916i;
    return vec4<u32>(countOneBits(_wgslsmith_mod_u32(~firstTrailingBit(7804u), reverseBits(_wgslsmith_mult_u32(43859u, u_input.e.x)))), var_3.a.x, ~1u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_3.a.x, var_3.a.x, 74530u, 21813u) & vec4<u32>(var_3.a.x, 71020u, u_input.c, 13056u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(28175u, var_3.a.x, var_2, 8741u), vec4<u32>(4294967295u, var_3.a.x, 0u, var_3.a.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<u32>(u_input.c, var_3.a.x, var_2, var_3.a.x))) & 1474u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(14799u, u_input.c, 46505u, u_input.c), vec4<u32>(12048u, 46638u, 18901u, 38216u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.d)), ~vec4<u32>(u_input.e.x, 1u, 31538u, u_input.d) ^ ~vec4<u32>(21981u, 45787u, u_input.d, 4294967295u)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 66898u, 0u, u_input.a), func_1(vec3<bool>(true, false, false), vec2<f32>(-215f, 669f))), ~(~(~(~vec4<u32>(u_input.d, u_input.a, u_input.d, 4294967295u)))));
    let var_1 = all(select(vec2<bool>(true, any(vec4<bool>(false, true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true)) | any(vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)) | false, true));
    var_0 = max(0u, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(843f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1911f)), -1564f, -408f))));
}

