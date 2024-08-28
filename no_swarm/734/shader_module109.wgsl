struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> f32 {
    let var_0 = all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))) || any(vec4<bool>(true, true, true, true));
    let var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(var_0, false), vec2<bool>(false, true), var_0), true));
    var var_2 = u_input.a;
    let var_3 = Struct_4(u_input.a);
    var var_4 = select(all(select(!var_1, vec2<bool>(var_0, false), !vec2<bool>(var_0, true))), arg_0.x >= reverseBits(u_input.a), var_0) && all(vec4<bool>(all(vec3<bool>(false, var_0, var_1.x)), true, var_1.x, var_1.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-250f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-387f * 517f))))), _wgslsmith_f_op_f32(499f * _wgslsmith_f_op_f32(ceil(1f))));
}

fn func_2() -> vec4<f32> {
    let var_0 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(574f, 1619f))) == _wgslsmith_f_op_f32(func_3(~vec4<i32>(-18176i, 1i, 8600i, -44966i), ~2147483647i)));
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(-45457i, _wgslsmith_add_i32(u_input.a, u_input.a), -u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 5538i)) >> (vec4<u32>(~1u, 0u, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x))) % vec4<u32>(32u)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -26341i, u_input.a), vec4<i32>(3965i, u_input.a, 0i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) >> (~(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), !any(vec2<bool>(true, true)));
    var_1 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(select(vec4<i32>(-1i, 2147483647i, var_1.a.x, u_input.a), vec4<i32>(-2147483647i, 47115i, var_1.a.x, var_1.a.x), var_1.b), var_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1146f))))) <= 1497f);
    let var_2 = vec4<u32>(10360u, ~(~(~(~u_input.b.x))), u_input.b.x, ~(~(u_input.b.x & 0u)) << (u_input.b.x % 32u));
    let var_3 = Struct_2(~(-(~vec4<i32>(41771i, -20830i, u_input.a, var_1.a.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1573f, -885f, 1416f, -716f) * vec4<f32>(-892f, 829f, 216f, -1345f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2356f, 794f, 920f)) * vec4<f32>(-734f, -755f, 235f, -232f)), select(!vec4<bool>(true, var_1.b, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, true, true), false), vec4<bool>(false, var_1.b, var_0.x, false)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, 1000f, -1185f, 434f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1080f, 610f, -698f, -341f)))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-115f + 1180f), _wgslsmith_f_op_f32(ceil(587f)))))), -785f, -1250f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(593f, 635f)) * _wgslsmith_f_op_f32(f32(-1f) * -412f))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -286f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-127f)) - _wgslsmith_f_op_f32(round(-1000f)))), -1498f, -339f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-326f, _wgslsmith_f_op_f32(-942f + _wgslsmith_f_op_f32(-596f + -723f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -241f)), 913f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1462f, -179f, -1015f))), _wgslsmith_f_op_vec4_f32(func_2()), arg_0.b)))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-647i, -1i), _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-22904i, ~(u_input.a & arg_0.a.x))), _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), firstTrailingBit(-reverseBits(46483i))));
    let var_2 = Struct_2(~vec4<i32>(1i, -u_input.a, ~u_input.a, max(~32253i, _wgslsmith_dot_vec2_i32(arg_0.a.ww, vec2<i32>(u_input.a, u_input.a)))));
    var var_3 = Struct_3(u_input.a);
    var var_4 = false;
    return all(vec4<bool>(true, true, arg_0.b, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = ~firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec2_u32(countOneBits(u_input.b), vec2<u32>(9326u, u_input.b.x))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -614f)), _wgslsmith_f_op_f32(-arg_3))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-arg_3)))));
    let var_4 = !(!(!select(vec4<bool>(var_0.b, arg_0.b, false, true), !vec4<bool>(true, arg_2.x, arg_2.x, arg_0.b), arg_2.x)));
    return Struct_2(-var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(3988i, -13389i, -43007i, u_input.a)), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, 9176i))) << (u_input.b.x % 32u));
    var_0 = Struct_3(1i);
    let var_1 = func_4(Struct_1(~firstTrailingBit(vec4<i32>(var_0.a, u_input.a, 4i, 1i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))), func_1(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(41601i, u_input.a, 2147483647i, 16642i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), true))), Struct_3(1i), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1119f))), 2408f, (u_input.b.x | u_input.b.x) >= 1u))));
    var_0 = Struct_3(-23432i);
    var_0 = Struct_3(2147483647i);
    var_0 = Struct_3(firstTrailingBit(_wgslsmith_div_i32(1i, 11091i)));
    var var_2 = Struct_4(-abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~min(u_input.b.x, u_input.b.x), 1u >> (~(~u_input.b.x) % 32u)));
}

