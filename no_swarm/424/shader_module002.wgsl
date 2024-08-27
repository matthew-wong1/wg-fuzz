struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec3<bool>(true, true, true));
    let var_1 = var_0;
    let var_2 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(4294967295u, 89294u >> (u_input.a.x % 32u))), u_input.a.x, ~(~_wgslsmith_sub_u32(u_input.a.x, 36053u))));
    var var_3 = u_input.d;
    let var_4 = -(~var_3.yw) << (var_2.zy % vec2<u32>(32u));
    return u_input.e.x;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_1.x;
    var var_2 = Struct_1(vec3<bool>(true, true, select(true, true, arg_1.x == func_3())));
    var var_3 = all(!vec4<bool>(any(!vec4<bool>(var_2.a.x, true, true, var_2.a.x)), true, false, var_2.a.x));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-496f * 964f) - -497f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1030f, 189f))))));
    return -20231i;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = min(min(_wgslsmith_add_vec4_i32(-max(u_input.c, vec4<i32>(u_input.e.x, u_input.e.x, 7373i, -25900i)), _wgslsmith_mult_vec4_i32(-u_input.d, u_input.c)), vec4<i32>(_wgslsmith_mult_i32(abs(u_input.c.x), -1i ^ u_input.b), 51377i, abs(-32242i << (u_input.a.x % 32u)), u_input.d.x)), vec4<i32>(-1i, -48273i, _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1566i, ~(-1i), -1i, -43972i), vec4<i32>(24465i, _wgslsmith_add_i32(u_input.b, 1i), i32(-1i) * -13529i, _wgslsmith_sub_i32(-13546i, u_input.e.x))), func_2(-9367i & _wgslsmith_mod_i32(2147483647i, u_input.d.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(-26299i, u_input.b, u_input.e.x, u_input.e.x), vec4<i32>(-47158i, u_input.b, u_input.e.x, u_input.e.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(60977u, 24476u, u_input.a.x, 63u), vec4<u32>(u_input.a.x, arg_0, arg_0, arg_0), vec4<u32>(1u, arg_0, 0u, 7178u)))));
    var var_1 = Struct_1(vec3<bool>(true, true, true));
    var_1 = Struct_1(!vec3<bool>(var_1.a.x, any(var_1.a), true));
    var var_2 = Struct_1(var_1.a);
    let var_3 = vec4<f32>(420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-431f + 808f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(vec2<bool>(var_1.a.x, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -790f), _wgslsmith_f_op_f32(abs(646f)))) - 917f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1682f))))));
    return Struct_1(vec3<bool>(var_1.a.x, var_1.a.x, !all(!var_1.a.zy)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(0u, 1u, u_input.a.x, max(arg_1.x, abs(countOneBits(arg_1.x << (u_input.a.x % 32u)))));
    var_0 = arg_1;
    var_0 = max(_wgslsmith_mod_vec4_u32(~abs(~arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(~4551u, _wgslsmith_add_u32(var_0.x, 18972u), var_0.x, ~4294967295u), ~_wgslsmith_div_vec4_u32(arg_1, arg_1))), abs(reverseBits(~(~arg_1))));
    var var_1 = arg_1.x;
    var_1 = ~(~0u);
    return func_1(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, _wgslsmith_mult_u32(0u, 0u), abs(u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(22991u, 0u, 28093u, 4294967295u)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 10411u, u_input.a.x, 87452u)), vec4<u32>(1u, u_input.a.x, 89229u, u_input.a.x) ^ vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 28839u, 45798u)) | (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a.x, 54414u, 1u), ~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(59041u, u_input.a.x, 1706u, 1344u))), vec4<bool>(true, any(vec3<bool>(u_input.a.x != 19829u, false, any(vec2<bool>(false, false)))), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)) == !(u_input.a.x < u_input.a.x), false));
    let var_1 = -vec4<i32>(_wgslsmith_mult_i32(9047i, 1i), 1i, -_wgslsmith_add_i32(u_input.d.x << (0u % 32u), ~40592i), _wgslsmith_mod_i32(10112i, -abs(u_input.e.x)));
    var var_2 = var_0;
    var_2 = var_0;
    var var_3 = var_0;
    var_3 = var_0;
    var var_4 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-512f, -877f, 1235f), vec3<f32>(1753f, 1172f, -1173f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1647f, -674f, 1000f))))), ~(_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, u_input.a.x, 1147u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 38178u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, 72857u, u_input.a.x, 12923u))) ^ firstTrailingBit(~vec4<u32>(1u, 44426u, u_input.a.x, u_input.a.x))), ~vec4<u32>(~41020u, ~u_input.a.x, 4294967295u, ~u_input.a.x), u_input.a);
}

