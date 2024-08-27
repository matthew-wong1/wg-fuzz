struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = u_input.a.x;
    var var_1 = abs(u_input.b.x);
    var_1 = _wgslsmith_mult_u32(var_0, ~var_0);
    let var_2 = ~(i32(-1i) * -(~firstLeadingBit(1i)));
    var_1 = _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_0, _wgslsmith_mod_u32(u_input.b.x, 0u), ~var_0, _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.yy)), ~countOneBits(vec4<u32>(u_input.a.x, var_0, var_0, var_0)))) >> (1u % 32u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1.a)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-853f, -676f, -139f), vec3<f32>(537f, 1030f, -364f)))), _wgslsmith_f_op_vec3_f32(func_3(true, Struct_1(vec3<f32>(1000f, -305f, 2245f)))), !select(true, true, true))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-898f)) + _wgslsmith_f_op_f32(f32(-1f) * -1899f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-101f * -1852f), _wgslsmith_f_op_f32(f32(-1f) * -288f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2092f, -1000f))))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f - -1458f))), var_0.a.x));
    var_0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1024f, var_1.a.x)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, var_1.a.x, var_1.a.x))), var_1.a, true))));
    return var_1;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_2(firstTrailingBit((select(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 18791i), true) ^ vec2<i32>(-2147483647i, 1i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(57937i, 1i))));
    var_0 = func_2(-_wgslsmith_add_vec2_i32(~(~vec2<i32>(4844i, 0i)), firstTrailingBit(vec2<i32>(1i, 1i))));
    var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = func_2(vec2<i32>(-31395i, 2147483647i) >> (~u_input.a.zw % vec2<u32>(32u)));
    return _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 85235i, 0i, -1i), max(vec4<i32>(13699i, -1i, -20909i, -12250i), vec4<i32>(87413i, -1i, -1i, -37035i))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(vec4<i32>(29338i, 2147483647i, -1i, 30491i)))) >> (76891u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(~select(40844i, ~2147483647i, true), 1i), _wgslsmith_add_vec2_i32(vec2<i32>(abs(-2147483647i), countOneBits(func_1(Struct_1(vec3<f32>(574f, -888f, 753f))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i >> (u_input.b.x % 32u), -17290i), -vec2<i32>(2147483647i, 1i), vec2<i32>(1i, _wgslsmith_mod_i32(6856i, 14128i)))));
    var_0 = ~vec2<i32>(var_0.x, ~(-15269i)) << (u_input.a.zz % vec2<u32>(32u));
    var_0 = vec2<i32>(-var_0.x, _wgslsmith_add_i32(var_0.x >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 48467u, 1u, u_input.b.x), u_input.b) >> (u_input.b.x % 32u)) % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-32727i, -21591i), vec2<i32>(0i, var_0.x) << (u_input.a.zx % vec2<u32>(32u))), abs(var_0.x) ^ firstTrailingBit(-1i), _wgslsmith_add_i32(1i, countOneBits(1i)))));
    let var_1 = !select(vec2<bool>(true, true | (0u < u_input.a.x)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true), select(false, true, true)), false);
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(23937i, -46627i)), vec2<i32>(2147483647i, 2147483647i)) & vec2<i32>(-1i, max(~var_0.x, _wgslsmith_add_i32(var_0.x, -24347i))));
    var var_2 = func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(abs(~var_0.x), i32(-1i) * -22277i), select(vec2<i32>(-1i, var_0.x << (10394u % 32u)), max(vec2<i32>(26777i, 1i), ~vec2<i32>(var_0.x, 0i)), u_input.a.x != 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(11071u, u_input.b.x, u_input.a.x, 0u)), u_input.b), _wgslsmith_add_vec3_i32(firstLeadingBit(abs(min(vec3<i32>(var_0.x, var_0.x, 0i), vec3<i32>(1i, var_0.x, var_0.x)))), vec3<i32>(var_0.x, reverseBits(countOneBits(-1i)), -1i)), _wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, -354f, 823f), var_2.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, var_2.a.x, 1861f))))), vec2<i32>(9549i, max(-1i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-12225i, 2147483647i), vec2<i32>(var_0.x, var_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1000f)) + _wgslsmith_f_op_f32(-var_2.a.x)))), var_2.a.x));
}

