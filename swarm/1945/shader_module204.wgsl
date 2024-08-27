struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = 716f;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f - 514f)))), _wgslsmith_add_u32(1871u, abs(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x))) | 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 1000f), vec2<f32>(var_0, -412f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))), var_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, -259f, var_1.c.x, 1000f))))), vec4<f32>(_wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(trunc(1122f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.d)))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.x, 1443f)) + var_0)))));
    var var_3 = Struct_2(Struct_1(vec2<f32>(-505f, 574f), countOneBits(var_1.b), var_2.wz, _wgslsmith_f_op_f32(-1030f + _wgslsmith_div_f32(var_0, -1020f))));
    var_3 = Struct_2(Struct_1(var_2.xw, 4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1851f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, var_2.x), var_2.wy)))), _wgslsmith_f_op_f32(-var_0)));
    return !(!any(select(select(arg_0.zz, arg_0.xx, arg_0.yz), arg_0.zy, false)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = select(vec3<bool>(arg_0.x, !func_3(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), arg_0.x), select(select(!vec3<bool>(false, false, arg_0.x), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, true, true), vec3<bool>(arg_0.x, true, arg_0.x)), arg_0.x), vec3<bool>(func_3(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), !arg_0.x, all(vec4<bool>(false, arg_0.x, arg_0.x, true))), select(vec3<bool>(!arg_0.x, select(false, arg_0.x, false), false || arg_0.x), select(select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(false, arg_0.x, arg_0.x), 1u > u_input.c.x))), all(select(vec4<bool>(arg_0.x, any(vec3<bool>(true, false, true)), false, all(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec4<bool>(false, true, arg_0.x, arg_0.x), true)));
    let var_1 = vec4<u32>(1u | ~(~arg_1), firstLeadingBit(arg_1), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, ~69340u, ~u_input.c.x) >> (67978u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, arg_1, arg_1) << (u_input.b % vec3<u32>(32u)), u_input.b), u_input.b)));
    let var_2 = 336f >= _wgslsmith_f_op_f32(floor(arg_2));
    var_0 = vec3<bool>(all(vec4<bool>(var_0.x && (-589f != arg_2), !all(vec3<bool>(true, arg_0.x, true)), true, var_0.x)), arg_0.x, true & !(!(!var_0.x)));
    var var_3 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), arg_2), max(abs(countOneBits(u_input.b.x)), ~(~40734u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-552f, 228f) - vec2<f32>(arg_2, arg_2)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1231f, arg_2) + vec2<f32>(arg_2, arg_2)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(1316f + arg_2)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(650f, arg_2)) * _wgslsmith_div_f32(473f, arg_2))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.d, -885f)), arg_1.a.a.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(423f, arg_0.c.x, -940f), vec3<f32>(-679f, -323f, -317f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1760f, arg_1.a.c.x, -397f) + vec3<f32>(1000f, arg_0.a.x, var_0.d)))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.d)), arg_0.d, var_0.d)))));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) * _wgslsmith_f_op_f32(min(-294f, var_1.x))))), -335f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(-arg_0.a.x))))), var_1);
    var_2 = vec3<f32>(-1205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.d)) * _wgslsmith_f_op_f32(-959f * _wgslsmith_div_f32(var_2.x, -1440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!select(vec2<bool>(arg_3, false), vec2<bool>(true, arg_3), arg_3), firstLeadingBit(u_input.b.x), -743f))));
    let var_3 = 1i | -u_input.a;
    return reverseBits(~(~countOneBits(var_0.b))) ^ (arg_1.a.b << (arg_0.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(39789i << ((~func_1(Struct_1(vec2<f32>(-404f, 650f), 62061u, vec2<f32>(372f, -927f), 690f), Struct_2(Struct_1(vec2<f32>(-1272f, 2183f), u_input.b.x, vec2<f32>(779f, -1000f), 989f)), vec3<u32>(27006u, 1u, 0u), false) ^ (~1u ^ _wgslsmith_clamp_u32(42532u, 1u, 38913u))) % 32u), u_input.a ^ 2147483647i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -567f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 1024f))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, ~u_input.b.x, 0u), vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(50299u, 1u, 52469u, u_input.e), vec4<u32>(11274u, u_input.c.x, 58474u, u_input.c.x)), func_1(Struct_1(vec2<f32>(-377f, 900f), 4294967295u, vec2<f32>(-409f, 359f), 1000f), Struct_2(Struct_1(vec2<f32>(196f, 748f), u_input.b.x, vec2<f32>(1678f, -253f), 478f)), vec3<u32>(u_input.b.x, u_input.e, 8598u), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1404f, -813f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1721f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-461f, -1983f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-501f, 1041f))))));
    var_0 = vec2<i32>((_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-65359i, u_input.a, var_0.x, 7570i), vec4<i32>(11969i, 7672i, 4558i, var_0.x), vec4<i32>(u_input.a, -25367i, -2147483647i, 0i)), ~vec4<i32>(-2147483647i, -2147483647i, u_input.a, 8336i)) ^ abs(_wgslsmith_clamp_i32(u_input.a, u_input.a, 1838i))) & var_0.x, abs(var_0.x));
    let var_2 = select(vec4<bool>(true, true, !all(vec3<bool>(true, false, false)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x, -18720i), 32082i) <= -32815i), vec4<bool>(true, false, true, false), true);
    var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(min(-min(vec2<i32>(var_0.x, -1i), vec2<i32>(u_input.a, var_0.x)), ~vec2<i32>(0i, var_0.x)), vec2<i32>(u_input.a, firstLeadingBit(~var_0.x))), 38906i);
    let var_3 = _wgslsmith_f_op_f32(step(var_1.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.d, var_1.a.c.x)), select(select(true, var_2.x, var_2.x), false != var_2.x, all(var_2)))), _wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(round(var_1.a.c.x))), !var_2.x && var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

