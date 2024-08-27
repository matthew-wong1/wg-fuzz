struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -470f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -610f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f + 1383f)), true)) * 1f);
    let var_1 = ~(abs(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_clamp_vec2_i32(vec2<i32>(8170i, u_input.e.x), vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(u_input.b.x, u_input.e.x)))) << (~(~vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    var var_2 = -(~(-select(vec4<i32>(var_1.x, 0i, var_1.x, -43008i), vec4<i32>(var_1.x, 2147483647i, 0i, u_input.e.x), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, true, false, var_0), var_0))));
    var var_3 = true;
    var_2 = select(countOneBits(vec4<i32>(var_2.x, u_input.e.x, -min(24729i, var_1.x), var_1.x)), _wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -45127i, -13159i, var_2.x)), min(vec4<i32>(507i, var_2.x, u_input.b.x, var_2.x), vec4<i32>(u_input.b.x, var_1.x, 36050i, 8489i))), vec4<i32>(~var_2.x << (~u_input.d.x % 32u), (i32(-1i) * -2147483647i) & _wgslsmith_div_i32(1i, var_1.x), -45955i, i32(-1i) * -var_2.x), reverseBits(abs(-vec4<i32>(39371i, var_1.x, var_2.x, 47463i)))), select(!select(vec4<bool>(var_0, true, false, true), !vec4<bool>(false, true, var_0, var_0), all(vec4<bool>(var_0, var_0, var_0, false))), vec4<bool>(true, true, !var_0, false), vec4<bool>(var_0, true, var_0, !var_0)));
    return ~countOneBits(1u);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mult_u32(67768u, 22346u), abs(u_input.c), 0u) & abs(countOneBits(vec4<u32>(u_input.d.x, 1u, u_input.d.x, 67312u))), vec4<u32>(func_3() | 4294967295u, 66954u, u_input.d.x, u_input.d.x)), vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), u_input.d) ^ 1u, 82807u, 0u));
    var_0 = 0u;
    var_0 = u_input.d.x ^ ~u_input.d.x;
    let var_1 = Struct_3(arg_2.a, arg_2.b);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(542f, -690f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), -1002f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-807f, 1455f), vec2<f32>(-2035f, 1810f), arg_2.a))))))));
    return true;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = !select(select(vec3<bool>(true, true, select(false, false, true)), vec3<bool>(true, false, false), !func_2(u_input.b, arg_0, Struct_3(vec2<bool>(true, true), vec4<i32>(25820i, 0i, arg_0, u_input.a)))), vec3<bool>(true, true, true), true);
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(285f * 150f), _wgslsmith_f_op_f32(step(-784f, -1539f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-509f, 465f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 610f) - -326f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2304f - -320f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-(i32(-1i) * -(~1i)));
    var var_1 = _wgslsmith_mod_u32(~func_3(), u_input.d.x) & u_input.d.x;
    var_0 = Struct_2(vec2<f32>(-740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.a.x) * _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_2 = vec4<f32>(var_0.a.x, -274f, 1f, _wgslsmith_f_op_f32(trunc(var_0.a.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1656f - -839f))), var_2.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1422f)), _wgslsmith_f_op_f32(floor(-201f)), _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(var_0.a.x, -1015f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1355f, var_2.x), var_0.a.x))), vec4<f32>(447f, 726f, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(-982f, var_0.a.x)), 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(floor(var_0.a.x)))))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(116544u, firstLeadingBit(u_input.c) ^ abs(u_input.d.x)), 4294967295u), u_input.b.x, abs(vec3<i32>(u_input.a, -32338i, i32(-1i) * -u_input.b.x)));
}

