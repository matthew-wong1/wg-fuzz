struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1.a.x;
    var var_1 = arg_1;
    var var_2 = Struct_1(reverseBits(max(vec4<i32>(arg_0.a.x, 1i, firstLeadingBit(arg_1.a.x), arg_0.a.x), arg_1.a)), var_1.b, var_1.b, !(!select(vec3<bool>(arg_0.d.x, true, false), vec3<bool>(true, var_1.d.x, arg_1.d.x), true)), select(!select(select(arg_1.d, vec3<bool>(false, false, true), arg_1.d.x), arg_1.d, true), !(!select(var_1.d, arg_0.e, var_1.e)), !select(vec3<bool>(true, arg_0.d.x, false), vec3<bool>(arg_0.e.x, false, false), !arg_1.e.x)));
    var var_3 = _wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)));
    var_3 = _wgslsmith_f_op_f32(sign(var_1.b));
    return vec3<bool>(true, var_2.e.x, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = ~u_input.d;
    let var_1 = u_input.c;
    var_0 = max(15155u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(19424u, firstLeadingBit(118387u), _wgslsmith_sub_u32(4670u, 2112u), 1u | u_input.d), vec4<u32>(1u, var_1.x, var_1.x, var_1.x) & u_input.b), var_1.x));
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, u_input.a.x), -(~arg_0.a.x));
    var_0 = 0u << (var_1.x % 32u);
    return reverseBits(-(~abs(-arg_0.a)));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = ~(-15836i);
    let var_1 = Struct_1(func_4(Struct_1(~vec4<i32>(17704i, u_input.a.x, 2147483647i, arg_0), _wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(-397f * -1646f)), -1000f, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !func_3(Struct_1(vec4<i32>(var_0, -20635i, u_input.a.x, arg_0), -941f, -519f, vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(var_0, var_0, -1i, 31149i), -1062f, 526f, vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))), _wgslsmith_f_op_f32(sign(-1782f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(231f * 533f), -1691f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(abs(265f)))))), func_3(Struct_1(~(~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(floor(-1199f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), Struct_1(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yx), _wgslsmith_add_i32(u_input.a.x, -20491i), 25015i), _wgslsmith_f_op_f32(f32(-1f) * -344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1240f)), vec3<bool>(true, true, true), func_3(Struct_1(vec4<i32>(arg_0, arg_0, -45812i, arg_0), 116f, -806f, vec3<bool>(false, false, true), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(1i, -1i, 24391i, var_0), 148f, 717f, vec3<bool>(false, true, true), vec3<bool>(false, true, false))))), vec3<bool>(false, true, true));
    let var_2 = !(!all(vec3<bool>(0i != var_0, true, !var_1.e.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b - 342f), _wgslsmith_f_op_f32(exp2(var_1.c)))) * _wgslsmith_f_op_f32(var_1.c * var_1.c));
    let var_4 = func_4(Struct_1(var_1.a, _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(round(-1000f))), 2017f, select(!var_1.e, select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, false, var_1.d.x), var_1.e), func_3(Struct_1(var_1.a, 957f, -722f, vec3<bool>(true, false, var_2), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-24099i, -31385i, 0i, 1i), -731f, var_1.c, var_1.e, var_1.e)).x), var_1.e), vec4<bool>(any(!vec4<bool>(false, var_1.d.x, var_2, var_1.d.x)), func_3(var_1, var_1).x, true, true)).x > var_0;
    return vec3<bool>(!var_4, false, true);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-818f, -354f)))))));
    var var_1 = ~(~(~u_input.b.ww));
    var var_2 = select(_wgslsmith_add_vec3_u32(u_input.b.wyw, u_input.b.wxz), vec3<u32>(37698u, u_input.c.x, _wgslsmith_div_u32(4294967295u, 86430u)), arg_0.e.x != (_wgslsmith_add_u32(var_1.x, min(var_1.x, 4294967295u)) == _wgslsmith_mod_u32(_wgslsmith_mod_u32(33065u, var_1.x), _wgslsmith_clamp_u32(150561u, var_1.x, 0u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) + _wgslsmith_f_op_f32(abs(arg_0.c))), arg_0.b, 806f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1446f, arg_0.b, arg_0.b, 500f) + vec4<f32>(arg_0.c, -1013f, 204f, arg_0.c)) * _wgslsmith_div_vec4_f32(vec4<f32>(1559f, 466f, -883f, -627f), vec4<f32>(arg_0.b, 786f, -325f, 412f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 668f, -2247f, -163f) - vec4<f32>(-1031f, arg_0.b, 695f, arg_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, -2132f, 586f, -1541f)))) - vec4<f32>(-244f, _wgslsmith_f_op_f32(trunc(arg_0.b)), 1636f, _wgslsmith_f_op_f32(trunc(-656f))))));
    let var_4 = vec3<bool>(!all(vec2<bool>(!arg_0.d.x, false)), all(arg_0.e.xy), !arg_0.e.x);
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    var var_0 = min(-(~select(-16970i, u_input.a.x, any(vec2<bool>(false, true)))), ~_wgslsmith_mult_i32(1i, firstTrailingBit(i32(-1i) * -69985i)));
    var_0 = _wgslsmith_sub_i32(arg_0, -(~(~(-66232i)) | _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a.x, 8594i, -25477i), vec4<i32>(u_input.a.x, 0i, 34709i, -44521i)), _wgslsmith_add_vec4_i32(vec4<i32>(-65910i, arg_0, -1i, -2147483647i), vec4<i32>(arg_0, -6831i, -1i, -25874i)))));
    var var_1 = func_5(Struct_1(vec4<i32>(arg_0, ~arg_0 ^ arg_0, -arg_0, abs(arg_0 >> (38611u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -127f)), -805f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1833f + -185f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1520f + -562f))), func_2(_wgslsmith_mod_i32(arg_0, -arg_0)), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))));
    var_0 = (_wgslsmith_mod_i32(arg_0, select(select(arg_0, 52016i, false), ~var_1.a.x, var_1.e.x)) << (arg_1 % 32u)) >> (33590u % 32u);
    let var_2 = u_input.a;
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_clamp_u32(min(4294967295u, abs(4294967295u)), _wgslsmith_mod_u32(0u, 73312u), 12639u);
    let var_2 = vec4<f32>(-324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1508f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1643f, -1530f)) - _wgslsmith_f_op_f32(f32(-1f) * -1033f))) * -562f), _wgslsmith_f_op_f32(floor(158f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(318f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1838f, -153f) - _wgslsmith_f_op_f32(trunc(869f)))) + _wgslsmith_f_op_f32(trunc(1286f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - var_2.x), -1799f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_div_f32(var_2.x, var_2.x))))));
    var var_4 = func_1(6431i, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-1335f, -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-769f + var_2.x))), _wgslsmith_f_op_f32(ceil(var_2.x))), u_input.a, vec4<u32>(~_wgslsmith_sub_u32(firstTrailingBit(u_input.c.x), var_0), ~(u_input.d ^ var_0), 37567u, ~abs(0u)));
}

