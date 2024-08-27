struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(~_wgslsmith_mult_i32(1i, -1i));
    var_0 = ~15710u;
    let var_2 = 0i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.x);
    return Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(-arg_0.wzx, arg_0.xzy & vec3<i32>(var_0.a, -38918i, arg_0.x))), -select(vec3<i32>(var_0.a, 2147483647i, -5314i), arg_0.zxz, vec3<bool>(false, false, false)) ^ -vec3<i32>(1i, var_0.a, arg_0.x)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(max(-131f, -1436f)));
    var var_1 = ~(~(~(~vec4<u32>(arg_2, u_input.a.x, arg_0.x, arg_0.x))));
    var_1 = vec4<u32>(arg_2, max(4294967295u, 1u), u_input.a.x, ~_wgslsmith_div_u32(~33307u, ~countOneBits(u_input.a.x)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0)))) - var_0));
    var var_3 = any(!vec2<bool>(!any(vec4<bool>(false, true, false, true)), true));
    return func_2(_wgslsmith_div_vec4_i32(select(vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, arg_1.a), vec3<i32>(arg_1.a, -2147483647i, 25884i)), -arg_1.a, _wgslsmith_sub_i32(arg_1.a, arg_1.a)), vec4<i32>(arg_1.a, arg_1.a, 2147483647i, ~39763i), all(vec3<bool>(true, true, true))), min(vec4<i32>(-2147483647i, firstTrailingBit(arg_1.a), ~0i, -arg_1.a), ~(vec4<i32>(-1i, arg_1.a, arg_1.a, -17417i) >> (vec4<u32>(4294967295u, 36083u, 0u, u_input.a.x) % vec4<u32>(32u))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = ~arg_3;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -231f)))))));
    var var_2 = Struct_1(18954i);
    var_2 = Struct_1(_wgslsmith_sub_i32(arg_3, -80801i));
    var_1 = 1981f;
    return vec4<bool>(true, any(vec4<bool>(false, true, true, true)) & select(false, true, false), all(vec4<bool>(true, false, true, false)) != true, (4294967295u < (1u | ~u_input.a.x)) | true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 32697i, 0i), vec4<i32>(2147483647i, -2147483647i, 2147483647i, 1265i)), _wgslsmith_mult_i32(-10691i, 0i))), func_3(_wgslsmith_div_vec2_u32(func_1(~vec3<u32>(u_input.a.x, 16420u, 0u), vec3<bool>(true, true, true)), ~u_input.a), func_2(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-18072i, 36018i, -1i, -72953i))), u_input.a.x), func_3(abs(firstLeadingBit(vec2<u32>(34232u, u_input.a.x))), func_2(max(-vec4<i32>(9644i, -2147483647i, 2147483647i, 48928i), min(vec4<i32>(21352i, -112i, 0i, 8654i), vec4<i32>(52033i, 32891i, -1i, -32941i)))), ~1u), 12805i);
    let x = u_input.a;
    s_output = StorageBuffer(24710u, ~abs(~(-16575i >> (u_input.a.x % 32u))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -16974i, _wgslsmith_div_i32(42627i, 31835i)), firstLeadingBit(0i)), _wgslsmith_clamp_i32(~(i32(-1i) * -1i), 0i, ~(-40555i))), 24612u, _wgslsmith_clamp_i32(-select(func_2(vec4<i32>(-64392i, 2147483647i, 15709i, 42615i)).a, 1i << (0u % 32u), true), 1i, 1i));
}

