struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> bool {
    var var_0 = abs(0u);
    var var_1 = abs(0u);
    var_0 = firstTrailingBit(u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1774f, -733f, -172f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1729f, 289f, -881f), vec3<f32>(837f, -709f, 616f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, -398f, 349f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-816f, 175f, -456f)))))));
    var_1 = ~u_input.a;
    return all(vec2<bool>(all(!vec3<bool>(false, false, arg_1)), -597f == _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(473f, var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x))))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = !func_3(vec4<bool>(true, true, true, true), false) | false;
    var var_1 = ~_wgslsmith_mult_i32(-_wgslsmith_add_i32(-25533i, 0i), -5522i);
    let var_2 = reverseBits(u_input.a);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1772f, -1051f) + _wgslsmith_f_op_f32(sign(481f))) - -289f)), vec4<i32>(firstLeadingBit(~countOneBits(2147483647i)), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), -1i, 1i), -vec3<i32>(-2147483647i, -17933i, 7669i)), ~(-2147483647i)), vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a), 4294967295u) >> (reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2), reverseBits(vec2<u32>(u_input.a, u_input.a)))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(1f)))));
    var_1 = var_3.b.x;
    return Struct_1(_wgslsmith_f_op_f32(342f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_3.a)), _wgslsmith_f_op_f32(abs(var_3.a))))), vec4<i32>(abs(~var_3.b.x) | max(var_3.b.x, _wgslsmith_dot_vec2_i32(var_3.b.xy, vec2<i32>(var_3.b.x, 32357i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x) ^ var_3.b.xwx, vec3<i32>(var_3.b.x, 50009i, var_3.b.x)), ~1i), min(var_3.b.x, -(~(-2147483647i))), _wgslsmith_mod_i32(var_3.b.x, var_3.b.x)), vec2<u32>(~var_3.c.x & ~11239u, ~(~arg_0)) | (var_3.c | _wgslsmith_clamp_vec2_u32(vec2<u32>(8011u, 45007u), vec2<u32>(var_2, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 18528u), var_3.c))), -828f);
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_sub_vec3_i32(~(~(vec3<i32>(45588i, -32073i, -10046i) >> (vec3<u32>(4861u, u_input.a, 1u) % vec3<u32>(32u))) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(-6396i, 0i, 1i), vec3<i32>(-1i, 0i, -66531i))), vec3<i32>(abs(188i), abs(1i), 38137i));
    let var_1 = vec4<u32>(max(u_input.a, abs(~u_input.a)), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(min(1u, u_input.a), ~u_input.a)), 49984u), 1u, ~(1u << (~u_input.a % 32u)));
    var var_2 = func_2(abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(var_1 >> (var_1 % vec4<u32>(32u)), firstTrailingBit(var_1)), select(~56858u, ~var_1.x, arg_0.x))));
    var var_3 = var_1.wxx;
    var_3 = var_1.wxz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(-vec2<i32>(_wgslsmith_clamp_i32(0i, 22055i, 1i), 0i));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(260f)) - _wgslsmith_f_op_f32(max(-331f, 524f))), _wgslsmith_f_op_f32(trunc(-754f)), _wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1033f - 443f) + _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1415f, -704f, -1878f, 1000f) * _wgslsmith_div_vec4_f32(vec4<f32>(389f, 839f, -371f, -1722f), vec4<f32>(-369f, 753f, 1538f, 841f))))));
    var var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-464f, _wgslsmith_f_op_f32(-var_3.x))))))), -vec4<i32>(_wgslsmith_clamp_i32(-1i, min(0i, -2147483647i), var_0.x), (var_0.x & 0i) & ~var_0.x, reverseBits(max(1i, var_0.x)), 2147483647i), vec2<u32>(0u, ~13647u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1427f + _wgslsmith_div_f32(var_2.x, -393f)))));
    var_3 = var_2;
    var_1 = false;
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1755f, 1242f, 1054f, var_4.d)), _wgslsmith_f_op_vec4_f32(round(var_2))));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(exp2(var_4.d))), _wgslsmith_f_op_f32(-1000f * 548f), 900f)));
    let x = u_input.a;
    s_output = StorageBuffer(-2210f, 1510f);
}

