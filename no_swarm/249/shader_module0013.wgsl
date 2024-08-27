struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_sub_u32(3136u, 1u));
    var_0 = Struct_1(962f, _wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 31248u), firstTrailingBit(vec2<u32>(4294967295u, var_0.b))), vec2<u32>(select(var_0.b, 1u, false), var_0.b)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(38625u, var_0.b, var_0.b, 1u), vec4<u32>(var_0.b, 1u, 98956u, var_0.b)), _wgslsmith_mod_u32(22868u, _wgslsmith_mod_u32(var_0.b, var_0.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-343f, 408f, var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(var_0.a + 1861f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) * var_0.a))), select(!vec3<bool>(all(vec2<bool>(false, true)), true, true), vec3<bool>(191f != _wgslsmith_div_f32(-644f, var_0.a), true, true), vec3<bool>(min(u_input.a.x, 0i) >= u_input.a.x, true, false))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, 590f), -186f), _wgslsmith_f_op_f32(round(666f)), all(vec3<bool>(true, true, true))))), _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(var_0.b, var_0.b, 102054u))), vec3<u32>(var_0.b, reverseBits(firstLeadingBit(var_0.b)), firstLeadingBit(0u) >> (var_0.b % 32u))));
    let var_3 = firstTrailingBit(vec2<i32>(u_input.a.x, -_wgslsmith_mod_i32(-1i, u_input.a.x)) >> ((select(vec2<u32>(29554u, 0u) ^ vec2<u32>(var_2.b, 1873u), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.b, 0u), vec2<u32>(var_0.b, var_2.b)), false) ^ max(~vec2<u32>(var_2.b, var_0.b), ~vec2<u32>(var_2.b, var_2.b))) % vec2<u32>(32u)));
    return var_0.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    let var_0 = false;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(arg_1.b) & abs(~41174u), ~_wgslsmith_mult_u32(arg_1.b, _wgslsmith_div_u32(arg_1.b, arg_1.b)), ~36973u), ~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, var_1.b, 70710u), vec3<u32>(4294967295u, arg_1.b, 0u)), firstTrailingBit(vec3<u32>(30786u, 24670u, arg_1.b))), ~(vec3<u32>(arg_1.b, arg_1.b, 1u) & vec3<u32>(var_1.b, 0u, var_1.b))));
    let var_3 = -29042i;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), ~(~51659u));
    return (-_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, arg_0.x), reverseBits(u_input.a.x)) >> (~(~func_3()) % 32u)) | (u_input.a.x >> (_wgslsmith_add_u32(arg_1.b, ~1u) % 32u));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = 1i;
    var_0 = countOneBits(-11952i);
    var_0 = firstLeadingBit(arg_0 ^ ~_wgslsmith_mod_i32(func_2(vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_0), arg_1, vec2<i32>(u_input.a.x, -19266i)), i32(-1i) * -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(round(-892f)));
    var var_2 = 81751u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(-countOneBits(_wgslsmith_clamp_i32(-54482i, -9773i, 1i)) <= ~(~firstLeadingBit(u_input.a.x)), true);
    var var_1 = abs(36787i);
    var var_2 = vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(7869i, _wgslsmith_add_i32(0i & func_1(u_input.a.x, Struct_1(-469f, 0u)), -_wgslsmith_sub_i32(u_input.a.x, 11096i))), max(-2147483647i, _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.a.x, -3410i, u_input.a.x, -727i) ^ vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~vec4<u32>(22195u, 87991u, 45483u, 1u) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(-1i, 1i, u_input.a.x, -2147483647i)))));
    let var_3 = any(!select(!var_0, select(var_0, vec2<bool>(false, true), var_0.x), var_0)) || !select(true, true, !var_0.x);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1121f)) * _wgslsmith_f_op_f32(ceil(-1257f))), abs(_wgslsmith_div_u32(1u, 1808u)));
    let var_5 = Struct_1(_wgslsmith_div_f32(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-145f)))), ~1u);
    var var_6 = var_0.x;
    let var_7 = vec4<i32>(-1i) * -(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(6376i, u_input.a.x, var_2.x, var_2.x), vec4<i32>(-60408i, 2147483647i, var_2.x, -2147483647i)));
    var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xy);
}

