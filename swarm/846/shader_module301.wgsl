struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = !vec4<bool>(false, true, false, all(vec4<bool>(true, true, true, true)));
    var var_1 = vec3<f32>(arg_0.x, -1106f, arg_0.x);
    var var_2 = Struct_1(max(~firstTrailingBit(u_input.a.x), -_wgslsmith_sub_i32(28587i, 0i)) != u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -257f), max(26656u, 1u));
    let var_3 = Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(abs(1u) ^ _wgslsmith_add_u32(var_2.c, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(17667u, 41524u), ~vec2<u32>(var_2.c, var_2.c)), var_2.c >> (var_2.c % 32u)), ~(~(~vec3<u32>(var_2.c, 27354u, var_2.c)))));
    let var_4 = Struct_2(vec3<u32>(var_2.c, 4294967295u, ~(var_3.a.x >> (var_3.a.x % 32u)) | ~(~var_2.c)));
    return countOneBits(vec3<u32>(var_4.a.x, select(~var_3.a.x, var_4.a.x, !all(vec2<bool>(var_2.a, var_0.x))), var_2.c));
}

fn func_2() -> f32 {
    var var_0 = -(~vec3<i32>(2147483647i, u_input.a.x, u_input.b));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 4294967295u);
    var_1 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(ceil(1568f))))), 14981u);
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(~(abs(vec3<u32>(var_1.c, var_1.c, 41219u)) | ~vec3<u32>(var_1.c, 1u, var_1.c)), _wgslsmith_mod_vec3_u32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, var_1.b))), min(vec3<u32>(var_1.c, 1u, 0u), vec3<u32>(var_1.c, var_1.c, 35952u)))));
    var_0 = _wgslsmith_sub_vec3_i32(-u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.b)), -439f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(-626f + 1814f))))), 672f));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f - _wgslsmith_f_op_f32(1000f + -839f))), _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(980f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(647f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f))), _wgslsmith_dot_vec3_u32(arg_0.a ^ vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), abs(arg_0.a)) < min(~arg_0.a.x, arg_0.a.x << (793u % 32u)))));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~58153u, arg_0.a.x), arg_0.a.x, arg_0.a.x, select(~_wgslsmith_sub_u32(arg_0.a.x, _wgslsmith_div_u32(arg_0.a.x, arg_0.a.x)), 76751u, _wgslsmith_add_u32(arg_0.a.x, 10709u) < max(_wgslsmith_mult_u32(1u, arg_0.a.x), _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, 34769u, arg_0.a.x)))));
    var var_2 = !(!arg_2.x);
    let var_3 = vec4<bool>(var_1.x == 1448u, all(!arg_2), true, !arg_2.x);
    let var_4 = u_input.b;
    return ~var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1962f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1135f - 636f), _wgslsmith_f_op_f32(-340f * -1592f), false)), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2319f, 158f)))))));
    var var_1 = Struct_1(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-462f, _wgslsmith_f_op_f32(1024f - 455f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), func_1(Struct_2(vec3<u32>(12306u, _wgslsmith_clamp_u32(1u, 4766u, 102347u), _wgslsmith_mult_u32(51652u, 10707u))), _wgslsmith_clamp_i32(2147483647i, u_input.b, 2147483647i), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-u_input.a.x, -1i >> (var_1.c % 32u), 2147483647i) >> (1u % 32u), u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-18796i, -87707i, 36871i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, 53687i, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -12455i), vec4<i32>(u_input.a.x, -1i, -1i, 1i))), firstTrailingBit(-u_input.b)), max(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -58881i, u_input.a.x), vec4<i32>(-10851i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(17863i, 20494i, u_input.a.x, u_input.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a.x, 2147483647i), vec4<i32>(u_input.b, 25407i, u_input.a.x, u_input.a.x)), -20024i, -5451i, 2147483647i)), abs(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(0i, 1i, -1i, u_input.a.x)), ~vec4<i32>(-3035i, 1i, 0i, u_input.b)))));
    var_0 = vec2<f32>(-1206f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(960f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-122f + 172f)))))));
    var var_3 = Struct_2(vec3<u32>(33300u, ~var_1.c, var_1.c));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b, var_0.x, -920f, var_0.x))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1137f, var_1.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 274f, 430f), vec4<f32>(-1000f, var_1.b, var_1.b, 2196f))))), vec4<f32>(var_0.x, -220f, var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))))));
    let var_5 = Struct_2(_wgslsmith_sub_vec3_u32(var_3.a, _wgslsmith_clamp_vec3_u32(select(var_3.a, vec3<u32>(var_1.c, var_3.a.x, 25247u), false), ~reverseBits(var_3.a), var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

