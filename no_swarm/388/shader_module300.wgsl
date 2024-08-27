struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(315f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(step(-320f, arg_0.a))))) - -1347f));
    var var_0 = Struct_2(339f, !select(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.b.x, false), !vec4<bool>(true, arg_0.b.x, true, true)), !vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), arg_0.a > arg_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-323f, arg_0.a, 507f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) + vec3<f32>(arg_0.a, arg_0.a, arg_0.a))))) * vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.a, 688f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(213f)) * _wgslsmith_f_op_f32(trunc(arg_0.a))))), select(-vec2<i32>(1i, 1i), -vec2<i32>(_wgslsmith_clamp_i32(11930i, 917i, 1i), _wgslsmith_mult_i32(-14413i, 33145i)), arg_0.b.x & false));
    let var_1 = !(!select(vec2<bool>(var_0.b.x, true), arg_0.b, true));
    let var_2 = var_1;
    return vec4<bool>(any(select(vec3<bool>(var_0.b.x, var_1.x, true), vec3<bool>(true, false, var_2.x), var_0.b.yzy)), select(var_1.x, !(!arg_0.b.x || true), true), !any(!(!var_0.b.wxz)), false);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(-1080f - _wgslsmith_f_op_f32(f32(-1f) * -1698f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)))) + 987f);
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -852f))), _wgslsmith_f_op_f32(1f + -1598f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1938f))))), -129f, -574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, -745f)))));
    let var_1 = Struct_2(238f, !func_3(Struct_1(-1027f, select(vec2<bool>(false, false), vec2<bool>(true, false), false))), var_0.zwx, -_wgslsmith_sub_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-4215i, -18715i), vec2<i32>(17886i, 0i)), ~vec2<i32>(-15977i, 1i)), firstLeadingBit(vec2<i32>(1i, 1i))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(ceil(var_0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, -636f), _wgslsmith_f_op_f32(ceil(var_1.a)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.c.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))) - 521f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), 1120f));
    return Struct_2(var_1.c.x, vec4<bool>(true, _wgslsmith_f_op_f32(-1958f * _wgslsmith_f_op_f32(round(var_1.c.x))) > _wgslsmith_f_op_f32(1f - -849f), all(!vec2<bool>(true, var_1.b.x)), _wgslsmith_f_op_f32(1101f * _wgslsmith_f_op_f32(floor(1796f))) < _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1040f, var_2.x, var_1.c.x)))), abs(vec2<i32>(~1i, ~var_1.d.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~(~u_input.a) & 4294967295u, abs(max(0u, ~u_input.a))), 58051u);
    var var_1 = 1i;
    var var_2 = vec3<u32>(~u_input.a, u_input.a, ~u_input.a);
    let var_3 = func_2(_wgslsmith_mult_u32(var_2.x, 2857u), ~var_2.xx);
    var_1 = countOneBits(0i);
    return vec4<i32>(arg_1.d.x, -17815i, arg_1.d.x, 1i);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1317f));
    var_0 = -1417f;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(174f - arg_1), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)))), _wgslsmith_f_op_f32(-arg_1), true));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1076f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f + _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(min(686f, 152f)))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    var var_2 = u_input.a;
    return Struct_1(-647f, func_3(Struct_1(_wgslsmith_div_f32(298f, _wgslsmith_div_f32(var_1.x, var_1.x)), vec2<bool>(any(vec4<bool>(true, false, true, true)), var_1.x < arg_1))).yy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 240f;
    let var_0 = func_4(~max(min(_wgslsmith_sub_vec4_i32(vec4<i32>(56422i, -2147483647i, -869i, 0i), vec4<i32>(2147483647i, 1i, 49205i, 26359i)), vec4<i32>(-2147483647i, -1i, 2147483647i, 11916i)), func_1(any(vec4<bool>(true, false, false, true)), Struct_2(1690f, vec4<bool>(false, false, true, true), vec3<f32>(-1583f, 1312f, 510f), vec2<i32>(-2147483647i, 36889i)), 1998f)), -645f);
    var var_1 = var_0.b.x;
    let var_2 = func_4(firstTrailingBit(min(vec4<i32>(reverseBits(1i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-60181i, -1i), vec2<i32>(-2147483647i, 71195i)), 1i), reverseBits(~vec4<i32>(15139i, 1i, -10593i, 2147483647i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a), var_0.a)));
    global0 = 1858f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, 19043u), vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(4294967295u, 35840u, 1u))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(u_input.a, 24685u, u_input.a))), select(abs(vec3<u32>(1u, u_input.a, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, u_input.a), func_4(vec4<i32>(32096i, 53305i, -5483i, -2147483647i), var_0.a).b.x), select(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.b.x) >> (~vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)), -1610f));
}

