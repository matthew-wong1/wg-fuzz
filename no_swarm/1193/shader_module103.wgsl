struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(vec2<u32>(~(~(~arg_3.a.x)), 0u));
    let var_1 = 29493i;
    let var_2 = !vec3<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), true, !select(all(vec3<bool>(false, true, false)), false, true));
    let var_3 = Struct_3(~select(select(vec3<i32>(-5014i, -1i, 1i), vec3<i32>(var_1, var_1, -2147483647i) >> (vec3<u32>(1u, 40478u, 0u) % vec3<u32>(32u)), var_2.x || true), abs(vec3<i32>(1i, 2147483647i, u_input.a)), var_2));
    var_0 = Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(abs(88122u), 0u), reverseBits(4294967295u)), vec2<u32>(~min(5248u, u_input.b), u_input.b)));
    return select(vec3<u32>(~4294967295u, u_input.b & (u_input.b ^ 88069u), 1u) << (arg_3.a % vec3<u32>(32u)), vec3<u32>(min(arg_3.a.x, var_0.a.x), arg_3.a.x, ~20331u), select(vec3<bool>(true, !select(true, true, var_2.x), !var_2.x), select(var_2, !select(vec3<bool>(false, false, var_2.x), var_2, true), var_2.x), vec3<bool>(var_2.x, _wgslsmith_f_op_f32(round(arg_0)) == arg_1.x, all(var_2.yx))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, u_input.a, -13946i) << (func_3(218f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), -880f, Struct_1(~vec3<u32>(32438u, 4294967295u, 45960u))) % vec3<u32>(32u)), -countOneBits(vec3<i32>(-1i) * -vec3<i32>(1i, 19132i, u_input.a)));
    var_0 = -vec3<i32>(-1i, var_0.x, -(i32(-1i) * -48909i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-206f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -486f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f + 1241f) + -962f)) + 688f);
    var var_3 = 0u;
    return var_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> bool {
    var var_0 = Struct_2(min(u_input.a, ~(-76511i)), abs(arg_0.zy));
    var_0 = Struct_2(1i, select(vec2<u32>(arg_3.x, reverseBits(~arg_3.x)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.x, 80307u), vec2<u32>(u_input.b, var_0.b.x))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), false))));
    let var_1 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -2147483647i), vec3<i32>(arg_2.x, 1i, u_input.a)), -vec3<i32>(arg_2.x, arg_2.x, 2147483647i), vec3<i32>(arg_2.x, arg_2.x, arg_2.x)), countOneBits(countOneBits(vec3<i32>(u_input.a, -1i, -2147483647i)))), vec3<i32>(u_input.a & u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, -1i));
    let var_2 = var_1.x;
    var var_3 = arg_2;
    return true;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(vec4<u32>(~(~_wgslsmith_mod_u32(19943u, u_input.b)), _wgslsmith_mod_u32(~(~u_input.b), u_input.b), ~1u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)) & 1u), vec3<f32>(-586f, _wgslsmith_div_f32(-1436f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(vec2<u32>(6235u, 59894u), vec4<bool>(false, true, true, true), vec2<u32>(u_input.b, 0u)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -271f))), 1f))), abs(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-34045i, -42164i), -vec2<i32>(-6887i, u_input.a)), abs(vec2<i32>(-50626i, -5904i)))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(~u_input.b, firstLeadingBit(4294967295u), ~22320u, 1u)), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) | vec4<u32>(reverseBits(4294967295u), u_input.b << (19962u % 32u), 31146u & u_input.b, 1u)));
    let var_1 = _wgslsmith_mod_vec2_i32(~min(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, -52406i)) ^ countOneBits(vec2<i32>(0i, -47395i)), abs(max(vec2<i32>(-1i, 2147483647i), vec2<i32>(-30207i, u_input.a)))), max(_wgslsmith_mult_vec2_i32(vec2<i32>(-51106i, u_input.a), -vec2<i32>(u_input.a, 0i)), min(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.a) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)))) ^ ~countOneBits(firstLeadingBit(vec2<i32>(u_input.a, 1i))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 40978u), vec3<u32>(27705u, u_input.b, 57317u)), 29980u >> (u_input.b % 32u), 1u, u_input.b), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4395u, u_input.b, 83404u), vec4<u32>(u_input.b, 63204u, 30102u, u_input.b)))), ~abs(reverseBits(vec4<u32>(u_input.b, 1u, u_input.b, 42952u)))), 4294967295u, _wgslsmith_dot_vec3_u32(select(~(vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(u_input.b, 8526u, u_input.b)), reverseBits(vec3<u32>(u_input.b, u_input.b, 4294967295u)), vec3<bool>(u_input.a != 1i, !var_0, !var_0)), abs(vec3<u32>(abs(u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, 0u)), u_input.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b, 1u) & 0u, u_input.b), ~(~vec2<u32>(1u, 1u))));
    let var_3 = Struct_4(~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.x, 8423u, 4294967295u), 1u), select(56263u, func_3(2310f, vec3<f32>(934f, 204f, -842f), 1203f, Struct_1(var_2.wyy)).x, !var_0)));
    let var_4 = Struct_2(~(~_wgslsmith_div_i32(_wgslsmith_mod_i32(-30993i, u_input.a), u_input.a)), firstTrailingBit(var_3.a));
    return StorageBuffer(var_2.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_4.a, -_wgslsmith_sub_i32(15982i, var_4.a), -var_1.x), min(-(~var_4.a), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

