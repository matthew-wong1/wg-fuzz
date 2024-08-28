struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 15367i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = arg_0.c.yx;
    var var_1 = ~_wgslsmith_add_u32(arg_1.x, arg_0.d);
    var var_2 = countOneBits(_wgslsmith_mod_u32(u_input.a.x, firstLeadingBit(firstTrailingBit(75162u))));
    let var_3 = Struct_4(select(var_0.x & true, true != !arg_0.c.x, false), Struct_2(arg_0, !vec4<bool>(arg_0.d < arg_0.d, arg_0.c.x, true, all(vec3<bool>(arg_0.c.x, arg_0.c.x, false))), all(!(!vec4<bool>(var_0.x, var_0.x, arg_0.c.x, arg_0.c.x))), (max(arg_1.x, arg_0.d) & 1u) != (arg_1.x ^ _wgslsmith_clamp_u32(17327u, 1u, 13112u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2183f)))))));
    var_2 = 1u;
    return reverseBits(vec2<i32>(29197i, -countOneBits(~arg_0.b)));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    let var_0 = -_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -8481i, _wgslsmith_add_i32(-1i, 1i)), func_3(Struct_1(-21529i, 22588i, vec3<bool>(arg_0.x, arg_0.x, false), 29944u), vec2<u32>(4294967295u, 59215u))) >> (~vec2<u32>(~_wgslsmith_mult_u32(58081u, 1u), ~_wgslsmith_div_u32(u_input.a.x, 8005u)) % vec2<u32>(32u));
    let var_1 = vec2<bool>(true, !any(select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec3<bool>(false, false, arg_0.x))) | (true | (_wgslsmith_f_op_f32(ceil(-292f)) != -1341f)));
    var var_2 = _wgslsmith_sub_i32(-9982i & reverseBits(var_0.x), 35407i);
    var_2 = 23688i;
    var_2 = -reverseBits(abs(53010i));
    return func_3(Struct_1(select(-_wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), var_0.x, !select(false, true, var_1.x)), countOneBits(-min(var_0.x, var_0.x)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), firstTrailingBit((0u ^ u_input.a.x) | 1u)), ~firstLeadingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x))))).x;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> u32 {
    global0 = firstTrailingBit(_wgslsmith_div_i32(arg_0.b.a.b, -_wgslsmith_div_i32(-1i, -54172i) & _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b.a.a, 0i, -24381i, arg_0.b.a.a), vec4<i32>(arg_0.b.a.a, 23059i, -11392i, 5173i) >> (vec4<u32>(arg_0.b.a.d, 8654u, 14056u, u_input.a.x) % vec4<u32>(32u)))));
    var var_0 = _wgslsmith_f_op_f32(abs(arg_0.c));
    var_0 = -1799f;
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_mult_i32(var_1.b.a.a, func_2(vec2<bool>(true, any(arg_0.b.b)))), min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.b.a.a, var_1.b.a.b, 37412i), vec3<i32>(arg_0.b.a.b, var_1.b.a.b, arg_0.b.a.b)), vec3<i32>(0i, max(23881i, var_1.b.a.b), arg_0.b.a.b)), _wgslsmith_sub_i32(firstLeadingBit(var_1.b.a.b ^ 0i), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -68153i), ~vec2<i32>(-1i, 25672i)))), vec3<bool>(false, false, select(arg_0.b.c, true, var_1.b.c)), u_input.a.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~((~vec4<u32>(u_input.a.x, 69961u, u_input.a.x, u_input.a.x) ^ ~vec4<u32>(4294967295u, u_input.a.x, 1u, 61523u)) | vec4<u32>(func_1(Struct_4(true, Struct_2(Struct_1(2097i, 5974i, vec3<bool>(true, true, false), u_input.a.x), vec4<bool>(true, false, false, true), false, false), -505f), vec4<bool>(true, false, false, true)), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 21169u, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, 0u))));
    let var_1 = Struct_4(true, Struct_2(Struct_1(-firstLeadingBit(-60468i), 0i, vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), var_0.x ^ ~u_input.a.x), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), true, select(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(true, true))), true), -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -27163i), vec2<i32>(-1i, 22345i)) > (min(32048i, 0i) >> ((91961u >> (u_input.a.x % 32u)) % 32u)), all(vec2<bool>(true, true))), -1000f);
    var var_2 = min(var_0.yyz, ~var_0.xzz);
    var_2 = _wgslsmith_mod_vec3_u32(select(~vec3<u32>(u_input.a.x, 3742u, var_0.x), vec3<u32>(1u, 0u, ~1u), var_1.b.a.c.x), var_0.yxx);
    global0 = _wgslsmith_clamp_i32(-select(~var_1.b.a.b | -1i, 2147483647i, false), var_1.b.a.a, i32(-1i) * -41263i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.b.a.a, var_1.b.a.a), vec2<i32>(var_1.b.a.a, 2147483647i) >> (vec2<u32>(3241u, 59478u) % vec2<u32>(32u))), 27255u);
}

