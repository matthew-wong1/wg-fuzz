struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_u32(~66434u, 0u);
    let var_1 = any(vec4<bool>(true, true, _wgslsmith_div_i32(57592i, min(arg_0.d.x, 4168i)) == -1i, all(arg_0.a)));
    var_0 = 0u;
    var_0 = u_input.e.x;
    var var_2 = Struct_2(vec2<bool>(all(select(arg_0.c.wwz, select(vec3<bool>(arg_0.c.x, arg_0.a.x, var_1), vec3<bool>(false, true, arg_0.a.x), arg_0.c.yyw), select(arg_0.c.zww, vec3<bool>(false, var_1, arg_0.a.x), var_1))), true));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, _wgslsmith_f_op_f32(f32(-1f) * -292f), arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x))))));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = countOneBits(u_input.e.x);
    var var_1 = any(vec3<bool>(false && (firstTrailingBit(u_input.b.x) != u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-611f)), _wgslsmith_f_op_f32(ceil(247f))) >= _wgslsmith_f_op_f32(select(224f, 627f, u_input.e.x <= u_input.e.x)), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, 3187f, 2069f, -1803f) - vec4<f32>(-325f, 420f, 1131f, 520f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec2<bool>(false, false), vec4<f32>(-249f, -727f, 163f, -1489f), vec4<bool>(true, false, false, true), arg_0, true)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(530f + -456f), _wgslsmith_f_op_f32(f32(-1f) * -1675f), 1f, _wgslsmith_f_op_f32(floor(-987f))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-342f)), _wgslsmith_f_op_f32(-274f - 1486f), -1764f, _wgslsmith_f_op_f32(trunc(-578f))))));
    let var_3 = Struct_5(Struct_4(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, 882f, -712f, var_2.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(1342f, var_2.x, -1753f, 545f), vec4<f32>(-1000f, -499f, var_2.x, -520f)))), vec4<bool>(true, _wgslsmith_f_op_f32(var_2.x + -1093f) == _wgslsmith_f_op_f32(-var_2.x), true, true), firstLeadingBit(arg_0), true), Struct_3(Struct_2(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), Struct_2(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -327f), var_2.x))), 27368i, Struct_1(~(u_input.e.yy | vec2<u32>(51266u, 1252u)), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec2<bool>(true, false), vec4<f32>(-172f, var_2.x, var_2.x, -127f), vec4<bool>(false, false, false, true), vec3<i32>(arg_0.x, u_input.a, arg_0.x), true))).zz, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(4294967295u, 50135u, var_0)), u_input.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, 439f, 307f, var_2.x)))));
    return !any(vec2<bool>(_wgslsmith_mod_i32(u_input.b.x, arg_0.x) >= _wgslsmith_sub_i32(-30791i, u_input.b.x), !any(vec4<bool>(true, var_3.b.a.a.x, true, var_3.b.a.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = -(-(~countOneBits(u_input.b)) << (~select(arg_2 >> (arg_2 % vec4<u32>(32u)), arg_2, func_2(arg_3)) % vec4<u32>(32u)));
    return ~abs(abs(0u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_4(select(arg_3.a, select(vec2<bool>(true, true), vec2<bool>(true, u_input.a == 0i), any(select(vec4<bool>(arg_3.a.x, arg_2, false, arg_3.a.x), vec4<bool>(false, true, true, arg_2), vec4<bool>(true, arg_3.a.x, arg_2, arg_3.a.x)))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1260f, -567f, 1678f, -1024f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1580f, 377f, 898f, 1000f))))))), !(!select(select(vec4<bool>(arg_3.a.x, arg_2, arg_3.a.x, arg_2), vec4<bool>(true, arg_3.a.x, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(arg_2, true, arg_3.a.x, true), true)), vec3<i32>(~countOneBits(i32(-1i) * -15090i), _wgslsmith_mult_i32(u_input.a, ~(~u_input.d)), -1i), true);
    var var_1 = true;
    let var_2 = Struct_2(select(!(!(!arg_3.a)), !vec2<bool>(arg_3.a.x, arg_3.a.x), !(any(var_0.c.zz) == var_0.c.x)));
    let var_3 = -_wgslsmith_mult_vec2_i32(min(var_0.d.zx, firstTrailingBit(vec2<i32>(u_input.b.x, u_input.b.x))) | abs(vec2<i32>(var_0.d.x, u_input.a) & vec2<i32>(var_0.d.x, -15595i)), -var_0.d.xy | -reverseBits(var_0.d.xz));
    var var_4 = any(var_2.a);
    return var_0.c.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(firstLeadingBit(_wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.e.x, 44277u, 30605u), select(u_input.e, vec3<u32>(u_input.c.x, u_input.e.x, u_input.e.x), true)), u_input.e)), vec4<u32>(u_input.e.x, firstLeadingBit(_wgslsmith_div_u32(func_1(Struct_1(vec2<u32>(1u, 0u), vec2<f32>(718f, 1360f), vec2<u32>(4294967295u, u_input.c.x), vec4<f32>(1073f, 1110f, -1089f, 882f)), 4294967295u, vec4<u32>(27685u, u_input.e.x, u_input.e.x, u_input.c.x), vec3<i32>(u_input.d, u_input.b.x, -2147483647i)), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x))), u_input.e.x, _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_mod_u32(u_input.e.x | 13931u, reverseBits(85074u)))), false, Struct_2(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(-u_input.a, _wgslsmith_sub_i32(firstTrailingBit(u_input.a), 1i)), u_input.b.x & min(_wgslsmith_dot_vec2_i32(u_input.b.xw, u_input.b.ww), ~(-1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(313f * _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec2<bool>(true, var_0.x), vec4<f32>(306f, -1000f, 737f, 1633f), vec4<bool>(false, false, false, false), vec3<i32>(u_input.a, u_input.b.x, 50397i), false))).x)))), ~(~_wgslsmith_mod_u32(76687u, ~0u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1086f, -1682f, 277f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-901f, 1806f, -555f))), var_0.x)), vec3<f32>(1f, 1f, 1f))), -u_input.b.xw);
}

