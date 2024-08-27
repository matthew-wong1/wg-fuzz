struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), (countOneBits(vec2<i32>(1i, 18486i)) >> (~u_input.a.yy % vec2<u32>(32u))) & (max(arg_1.a, arg_1.a) ^ firstTrailingBit(vec2<i32>(arg_1.a.x, arg_1.b)))), -2957i, abs(max(0i, ~(-71297i))));
    var var_1 = arg_1;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(36544u, abs(u_input.a.x), 0u, ~4294967295u), vec4<u32>(4294967295u, ~49706u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(4062u, u_input.b.x), 26695u), _wgslsmith_sub_u32(1u, u_input.a.x | (18904u >> (0u % 32u)))));
    var var_3 = arg_1;
    var var_4 = arg_1;
    return -1338f;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(271f, -617f)), arg_0), 711f)));
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(floor(-347f)) != -677f;
    let var_3 = vec4<f32>(var_0, -873f, arg_0, -2087f);
    let var_4 = -2771f;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, var_0) * var_0);
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(-min(vec2<i32>(u_input.c, 0i), vec2<i32>(26357i, 9348i)) >> (vec2<u32>(0u, select(max(0u, u_input.b.x), ~u_input.b.x, false)) % vec2<u32>(32u)), u_input.c, max(2147483647i, u_input.c));
    var var_1 = 12456u;
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(abs(var_0.a), var_0.a), -(~u_input.c | (i32(-1i) * -31696i)), u_input.c);
    var var_3 = max(-max(vec3<i32>(~u_input.c, _wgslsmith_add_i32(var_2.b, 1885i), reverseBits(var_0.c)), vec3<i32>(reverseBits(-3070i), -var_0.a.x, ~2147483647i)), max(vec3<i32>(_wgslsmith_sub_i32(u_input.c, 1i & var_0.c), 7554i, reverseBits(firstLeadingBit(33254i))), ~vec3<i32>(-6107i, _wgslsmith_mult_i32(-21456i, var_0.c), _wgslsmith_mod_i32(u_input.c, 0i))));
    var_0 = Struct_1(var_2.a, max(-2147483647i, 1i), abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, var_0.c)) << (~u_input.b.zy % vec2<u32>(32u)), vec2<i32>(-1i) * -var_3.yy)));
    return Struct_1(_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_0.a.x, -2147483647i), vec2<i32>(0i, _wgslsmith_div_i32(u_input.c, 45613i))), abs(var_2.a)), ~(~(~var_2.c)), 2147483647i);
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1188f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), Struct_1(vec2<i32>(u_input.c, -2147483647i), 42410i, u_input.c), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(859f, -794f, -990f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1f, Struct_1(vec2<i32>(u_input.c, u_input.c), ~u_input.c, u_input.c), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true))))));
    var var_1 = select(vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), (all(vec3<bool>(false, true, true)) & select(true, true, true)) && !any(vec2<bool>(false, true)), true), !(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), all(vec4<bool>(false, false, false, false)))), false);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) << (u_input.a % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(23557u, u_input.b.x, u_input.a.x, 56420u)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.b.x, u_input.a.x, 22478u, u_input.b.x))), ~(~max(u_input.a.x, u_input.b.x)), ~_wgslsmith_add_u32(u_input.a.x, countOneBits(u_input.a.x))) >> (firstTrailingBit(u_input.b) % vec3<u32>(32u));
    let var_3 = 1035f;
    var_0 = func_4(select(var_1.x, true, true), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(min(498f, -1661f)), var_1.x && false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f * var_3))), _wgslsmith_f_op_f32(var_3 * 1f)));
    return -732f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)) + _wgslsmith_f_op_f32(289f + _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -511f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(209f, -724f)))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1513f), 1065f)))));
    var var_1 = _wgslsmith_add_i32(u_input.c, _wgslsmith_clamp_i32(u_input.c, -53511i, 5172i >> (~_wgslsmith_div_u32(u_input.a.x, 0u) % 32u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, 228f)), var_0.x, -1492f));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(func_3(var_0.x, func_4(u_input.c <= (i32(-1i) * -48343i), _wgslsmith_f_op_f32(-var_0.x)), vec2<bool>(false, all(vec4<bool>(true, true, true, true))))));
    let var_3 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~u_input.a.ywy);
}

