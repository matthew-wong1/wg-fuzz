struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> vec3<u32> {
    let var_0 = true;
    let var_1 = var_0;
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_sub_u32(52558u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d & 4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, 50397u), 21559u), 1u), ~vec3<u32>(25258u | u_input.a, ~8930u, u_input.a)));
    var_3 = u_input.a << ((29075u << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(51072u, u_input.d, u_input.d, u_input.a), abs(vec4<u32>(4294967295u, 4294967295u, 20011u, 0u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a, 1u, 7885u), vec4<u32>(4294967295u, u_input.a, u_input.a, 37249u))) % 32u)) % 32u);
    return min(vec3<u32>(_wgslsmith_div_u32(countOneBits(~0u), u_input.d), firstLeadingBit(~u_input.d), 6231u), ~(~vec3<u32>(33961u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.d))));
}

fn func_1(arg_0: Struct_2) -> vec3<i32> {
    return (-vec3<i32>(1i, u_input.b ^ arg_0.e.a, -2147483647i) << (~(~func_2(vec3<bool>(true, false, true), -628f)) % vec3<u32>(32u))) << (~(vec3<u32>(_wgslsmith_add_u32(arg_0.a.x, u_input.a), 29068u, ~u_input.d) ^ vec3<u32>(_wgslsmith_mod_u32(19925u, 4294967295u), arg_0.a.x, min(arg_0.b, arg_0.b))) % vec3<u32>(32u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = ~select(_wgslsmith_add_vec4_i32(vec4<i32>(-40104i, 1i, 17695i, arg_0.x ^ 1i), vec4<i32>(-u_input.b, 2147483647i, arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_0.x), arg_0.zz))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.b, u_input.b, 12800i), vec4<i32>(arg_0.x, u_input.b, -1i, -52591i)), abs(-1i)), select(countOneBits(arg_0.x), u_input.b, true), u_input.b, 1i), all(vec3<bool>(any(vec4<bool>(false, false, arg_1, true)), true, select(true, true, false))));
    var var_1 = Struct_2(max(vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2, u_input.d, 43951u), vec3<u32>(u_input.a, arg_2, 60103u), false), firstTrailingBit(vec3<u32>(0u, 54667u, arg_2))), ~1u), select(countOneBits(vec2<u32>(arg_2, arg_2) ^ vec2<u32>(arg_2, arg_2)), _wgslsmith_div_vec2_u32(vec2<u32>(15810u, u_input.a), ~vec2<u32>(72464u, arg_2)), true)), 32853u, 27619u, Struct_1(arg_0.x), Struct_1(_wgslsmith_div_i32(firstTrailingBit(var_0.x), arg_0.x)));
    var_1 = Struct_2(var_1.a, ~(~(~(~var_1.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(39372u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.a.x, 91693u, u_input.a), ~u_input.a), 41409u), ~(~vec3<u32>(21284u, var_1.a.x, u_input.d)) | ~(vec3<u32>(4294967295u, u_input.a, arg_2) & vec3<u32>(u_input.d, 10354u, var_1.c))), Struct_1(var_1.e.a), var_1.d);
    var_1 = Struct_2(firstTrailingBit(var_1.a >> (var_1.a % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(0u, u_input.d, 4294967295u, 4294967295u))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10516u, var_1.a.x, 4275u, 42371u), vec4<u32>(1u, 4294967295u, 4294967295u, arg_2)), ~vec4<u32>(arg_2, 1u, 61605u, 38653u)), ~(~vec4<u32>(arg_2, 32760u, arg_2, arg_2)))), 1u, var_1.d, Struct_1(-1i));
    var_1 = Struct_2(vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 4294967295u), var_1.a), u_input.d), u_input.d), 0u, u_input.a, Struct_1(27491i), var_1.d);
    return u_input.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = !(!select(vec3<bool>(true, true, select(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(894f)) - 617f))), -542f), 517f, 1f);
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-522f - _wgslsmith_div_f32(var_1.x, var_1.x)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-171f + 426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f - 306f)), var_1.x)), true));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(-592f)), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-314f, var_1.x))));
    let var_2 = Struct_1(_wgslsmith_mult_i32(~abs(min(arg_2, 1i)), _wgslsmith_add_i32(-arg_3, 12202i)));
    return Struct_2(min(select(arg_0.a, vec2<u32>(~arg_0.a.x, arg_0.a.x), var_0.yx), countOneBits(vec2<u32>(firstTrailingBit(1u), arg_0.c))), ~38279u, u_input.d, arg_1, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !(1u > u_input.d), true);
    var var_1 = func_4(Struct_2(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(34822u, 0u), vec2<u32>(u_input.a, u_input.d)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(43064u, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 32247u), vec2<u32>(u_input.a, 570u)))), firstLeadingBit(~u_input.a | 4294967295u), ~u_input.d, Struct_1(u_input.c), Struct_1(11273i)), Struct_1(1i), u_input.c, func_3(_wgslsmith_div_vec3_i32(func_1(Struct_2(vec2<u32>(0u, u_input.d), u_input.a, u_input.a, Struct_1(-26318i), Struct_1(-1i))), func_1(Struct_2(vec2<u32>(u_input.d, u_input.d), 1122u, u_input.a, Struct_1(1i), Struct_1(u_input.c)))), u_input.c <= -1i, u_input.d));
    let var_2 = ~vec3<u32>(~(0u << (_wgslsmith_div_u32(65246u, u_input.d) % 32u)), _wgslsmith_mod_u32(reverseBits(_wgslsmith_sub_u32(u_input.a, 0u)), u_input.d), ~4294967295u);
    let var_3 = 554f;
    var var_4 = var_1.d;
    var_4 = Struct_1(var_4.a);
    var var_5 = reverseBits(vec4<u32>(min(abs(~1u), ~(~u_input.d)), ~u_input.d, ((u_input.d << (var_1.a.x % 32u)) ^ reverseBits(var_1.c)) & 4294967295u, ~_wgslsmith_div_u32(1u, _wgslsmith_div_u32(4294967295u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(17593u, 1u), var_5.zx), _wgslsmith_mult_i32(var_4.a, -1i), ~reverseBits((vec3<u32>(var_5.x, var_2.x, 0u) << (vec3<u32>(4294967295u, var_5.x, 15418u) % vec3<u32>(32u))) | var_5.zxz), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-10269i | var_4.a, u_input.c | -10836i, reverseBits(var_1.e.a), 1i)), min(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -1i, var_4.a, -9881i), vec4<i32>(20010i, var_4.a, var_4.a, u_input.c), vec4<i32>(2147483647i, var_1.e.a, -21885i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 27313i, 0i, var_4.a), vec4<i32>(u_input.c, var_1.e.a, 7519i, 2147483647i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_4.a, var_1.d.a, 36331i, var_1.e.a), vec4<i32>(var_1.d.a, var_4.a, var_1.d.a, u_input.c)))), vec3<u32>(var_2.x, var_5.x, var_1.b));
}

