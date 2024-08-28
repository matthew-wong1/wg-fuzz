struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = !vec4<bool>(true, any(vec2<bool>(arg_0, arg_0)) && true, true, arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(3169f + arg_2), arg_2));
    var var_2 = firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, u_input.b), -u_input.b), _wgslsmith_sub_i32(~u_input.b, _wgslsmith_add_i32(u_input.b, -30493i)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(9109i, u_input.b), vec2<i32>(u_input.b, 2147483647i)))), ~(-abs(vec3<i32>(12938i, 57386i, -2147483647i)))));
    let var_3 = u_input.a.zy;
    var var_4 = var_0.xyx;
    return _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1992f))));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(select(!vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true), true), u_input.a);
    let var_1 = Struct_1(var_0.a.wzw, u_input.b, 149f, vec3<i32>(28986i, 2147483647i, u_input.b));
    var var_2 = Struct_2(select(select(!vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.a, any(var_0.a.wwz)), vec4<bool>(true, true & var_0.a.x, var_0.a.x | !var_1.a.x, any(!vec2<bool>(var_0.a.x, true))), all(select(!var_0.a, !var_0.a, !vec4<bool>(var_0.a.x, var_1.a.x, true, var_1.a.x)))), u_input.a);
    let var_3 = _wgslsmith_f_op_f32(func_2(true && any(!var_0.a.ywx), ~select(~u_input.a.x << (1u % 32u), (1u << (var_0.b.x % 32u)) | ~52772u, all(vec4<bool>(false, var_1.a.x, var_0.a.x, false))), 1616f));
    var var_4 = Struct_1(select(vec3<bool>(!any(vec3<bool>(true, false, var_2.a.x)), all(var_0.a.wz), true), !select(vec3<bool>(var_2.a.x, true, var_2.a.x), vec3<bool>(true, true, var_0.a.x), var_0.a.x), true), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i)), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -2147483647i, u_input.b), vec4<i32>(var_1.d.x, var_1.d.x, u_input.b, u_input.b)), vec4<i32>(2147483647i, u_input.b, 2147483647i, var_1.b) & vec4<i32>(-53669i, 1i, 35424i, var_1.b), var_1.a.x), vec4<i32>(-var_1.b, firstTrailingBit(var_1.b), var_1.b, ~13537i), vec4<i32>(u_input.b, u_input.b, _wgslsmith_add_i32(u_input.b, 5886i), -53462i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + var_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1576f, 659f)))), 655f), var_2.a.x)), var_1.d);
    return u_input.a.x;
}

fn func_1() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1340f, -907f), vec2<f32>(-627f, -1350f), false)), vec2<f32>(1365f, -730f)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_0.x) * vec2<f32>(1000f, 398f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1709f - 587f), _wgslsmith_f_op_f32(-var_1))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1615f, var_0.x) + vec2<f32>(var_0.x, var_0.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, -844f), vec2<f32>(996f, var_0.x), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-228f, var_0.x) - vec2<f32>(-1539f, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1, -969f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1) + _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(440f - -367f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_2(!(!any(vec2<bool>(true, false))), 55887u, -1667f)), var_1, var_1);
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(func_3(), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, 31730u), vec4<u32>(u_input.a.x, 0u, 24381u, 4294967295u)), ~42615u, u_input.a.x), u_input.a.x), select(~u_input.a.x, 24833u, all(vec3<bool>(true, true, true))), ~u_input.a.x), u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(~32220u, reverseBits(1u), ~u_input.a.x), ~vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 86727u), ~u_input.a.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = ~(~u_input.a.x & max(_wgslsmith_mult_u32(23010u, ~u_input.a.x), u_input.a.x));
    var_0 = _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(~u_input.a.x, min(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), func_1());
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1316f) * -294f);
    let var_2 = Struct_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, select(true, true, true), true), vec4<bool>(any(vec2<bool>(false, true)), true, select(false, true, false), true), any(vec3<bool>(true, true, true))), select(vec4<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false)), true, select(false, true, true)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)))), _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.yx), u_input.a.x, u_input.a.x), select(u_input.a, ~vec3<u32>(0u, 0u, u_input.a.x), vec3<bool>(false, false, true)) >> (_wgslsmith_sub_vec3_u32(u_input.a, max(vec3<u32>(u_input.a.x, 31699u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~countOneBits(vec2<i32>(u_input.b, 49802i))));
}

