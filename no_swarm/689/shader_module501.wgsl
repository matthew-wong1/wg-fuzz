struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: bool = false;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> i32 {
    let var_0 = Struct_1(arg_0.d.x, 853f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-498f, -1778f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.d * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(691f, arg_0.c.x, arg_0.a, arg_0.d.x))))));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global1 = !(any(vec4<bool>(false, true, false, true)) != (select(true, true, true) & true)) | !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)));
    global0 = array<Struct_1, 27>();
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(min(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -28302i, arg_1, 14283i), vec4<i32>(arg_1, 0i, -21175i, 1i), vec4<i32>(3694i, arg_1, arg_1, arg_1)), vec4<i32>(1i, arg_2.x, 82759i, 1i)), ~(-vec4<i32>(-13792i, 1i, arg_1, -2147483647i))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-43661i, arg_1, arg_2.x, arg_1), vec4<i32>(45341i, -15603i, arg_2.x, arg_2.x)))), _wgslsmith_mod_i32(-firstTrailingBit(arg_1) | arg_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(11861i, arg_2.x, 2147483647i), firstTrailingBit(vec3<i32>(2147483647i, 2147483647i, arg_2.x))), _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 0i, arg_1), ~vec3<i32>(arg_2.x, arg_1, -1i)))));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_f_op_f32(floor(-628f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(-767f * -1784f))) * _wgslsmith_f_op_f32(f32(-1f) * -256f)));
    let var_0 = select(vec3<i32>(func_3(global0[_wgslsmith_index_u32(~(4294967295u >> (u_input.a % 32u)), 27u)], select(-6174i, -42645i, true) << (4294967295u % 32u), vec2<i32>(select(-1i, -1i, false), 59276i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(15510i, -29888i), vec2<i32>(1i, -2147483647i), true), _wgslsmith_add_vec2_i32(vec2<i32>(-3378i, -1i), vec2<i32>(1i, 19222i))), vec2<i32>(~(-2147483647i), max(0i, -1i))), _wgslsmith_div_i32(9818i, 2147483647i)), firstTrailingBit(max(vec3<i32>(1i, 1i, 1i), select(~vec3<i32>(-10165i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(-1i, 1i, 2147483647i)), any(vec4<bool>(false, false, true, false))))), false | any(vec4<bool>(true, true, true, true)));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(56141u), 27u)];
    global0 = array<Struct_1, 27>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(1850f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_1.d.x, -1510f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_f32(round(var_1.a))))), _wgslsmith_f_op_f32(abs(var_1.d.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)))), var_1.a), _wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(-529f, _wgslsmith_f_op_f32(step(var_1.b, -871f)), _wgslsmith_f_op_f32(select(var_1.b, var_1.b, true)), var_1.c.x))));
    return _wgslsmith_f_op_f32(var_1.d.x * 117f);
}

fn func_1() -> i32 {
    var var_0 = countOneBits(max(abs(vec2<u32>(u_input.a, 86415u)), vec2<u32>(u_input.a << (42736u % 32u), u_input.a >> (u_input.a % 32u)))) << ((min(_wgslsmith_mult_vec2_u32(vec2<u32>(51341u, 78003u), vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(u_input.a, 27836u)), vec2<u32>(_wgslsmith_add_u32(33263u, u_input.a), u_input.a | u_input.a)) >> ((firstLeadingBit(vec2<u32>(71095u, 0u) ^ vec2<u32>(u_input.a, 1u)) ^ ~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = !(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(round(-459f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1322f) + -348f))));
    var var_3 = ~(-_wgslsmith_mod_i32(~(-14905i >> (var_0.x % 32u)), _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(6260i, -72324i, 1i, 7208i), vec4<i32>(-5822i, 1i, -1i, 2147483647i)))));
    var var_4 = Struct_1(-605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -701f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(384f, 585f) - vec2<f32>(1271f, 622f)) + vec2<f32>(158f, -1291f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1047f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1105f, -327f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(191f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1055f + 211f), _wgslsmith_f_op_f32(f32(-1f) * -254f)), 246f, -1713f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(868f, 645f, -1554f, 2441f), vec4<f32>(416f, 357f, -314f, 1047f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1136f, 1045f, 961f, 372f), vec4<f32>(1209f, 448f, 781f, 324f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1927f, -2077f, 622f, -406f)))))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(483f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1406f)), _wgslsmith_f_op_f32(trunc(1364f)))), 398f))), -115f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, 1000f)) * vec2<f32>(1191f, 949f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, -1135f, -196f, -2486f))))));
    global1 = !(~(-32003i) <= _wgslsmith_div_i32(-(i32(-1i) * -42193i), _wgslsmith_sub_i32(-40022i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25322i, -30917i, 2147483647i, 23541i), vec4<i32>(-2147483647i, 1i, 1i, -1i)))));
    global0 = array<Struct_1, 27>();
    global1 = true;
    let var_1 = func_1();
    var var_2 = vec2<u32>(1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(0u, 508u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 0u) & ~vec3<u32>(1u, u_input.a, 27472u))) >> (vec2<u32>(abs(~(~27298u)), ~u_input.a) % vec2<u32>(32u));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(select(var_2.x, u_input.a, false)), ~42702u, _wgslsmith_div_u32(1u, firstTrailingBit(1u)), _wgslsmith_div_u32(59849u, u_input.a)), abs(min(vec4<u32>(70370u, var_2.x, var_2.x, var_2.x) & vec4<u32>(48429u, 1u, 4294967295u, 0u), ~vec4<u32>(u_input.a, 47399u, 52513u, var_2.x))), vec4<u32>(_wgslsmith_div_u32(countOneBits(var_2.x), _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)), var_2.x, _wgslsmith_mod_u32(~28220u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), vec2<u32>(13884u, var_2.x)))), _wgslsmith_add_i32(0i, 0i), 758f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.xyy)))), var_0.d.wyw, !any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
}

