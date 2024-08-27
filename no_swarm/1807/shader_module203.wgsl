struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    var var_0 = !vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, false, all(vec3<bool>(true, false, true)))));
    var_0 = select(select(!(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(false, true))), vec2<bool>(true, 1085f > _wgslsmith_f_op_f32(floor(1148f))), vec2<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, true), true)), var_0.x)), !vec2<bool>(!(u_input.e.x >= u_input.d), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x))), true);
    var_0 = select(!select(!(!vec2<bool>(var_0.x, var_0.x)), vec2<bool>(var_0.x, var_0.x), var_0.x & all(vec2<bool>(var_0.x, var_0.x))), select(select(select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), false), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), true)), !vec2<bool>(var_0.x, true), select(true, true, true)), select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), vec2<bool>(true, true)), !vec2<bool>(var_0.x, true)), !var_0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1641f, 2475f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 205f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-762f, 719f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(336f, -906f) * vec2<f32>(1824f, -1104f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, -904f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1404f, -323f), vec2<f32>(-944f, -283f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, 1141f))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1171f * -821f), _wgslsmith_f_op_f32(ceil(497f)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(299f, 112f, var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -225f, 694f), vec3<f32>(-1320f, var_1.x, var_1.x)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, -1604f, var_1.x)))), true))), vec3<bool>(!all(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, true, true), var_0.x)), (1u != _wgslsmith_mult_u32(u_input.e.x, 9057u)) || !var_0.x, true));
    return var_2.b;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = -700f;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, var_0, -1061f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_0, var_0)), 211f, var_0) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(-479f * var_0), 1f))), select(select(select(func_3(), vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(false, true, arg_0), !(!arg_0)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !(!vec3<bool>(arg_0, arg_0, arg_0)))));
    var var_2 = select(!vec2<bool>(true, arg_0), !select(vec2<bool>(var_1.x <= -137f, false), vec2<bool>(true, true), !(var_0 != 723f)), vec2<bool>(true, true));
    var var_3 = 0i;
    let var_4 = var_1.x;
    return var_2.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(false);
    let var_1 = arg_1;
    let var_2 = !(!vec2<bool>(true, !var_0.a));
    let var_3 = var_1.a.x;
    let var_4 = vec2<u32>(~(~0u), _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(66972u, u_input.c.x), u_input.b.yz, arg_1.b.xz), countOneBits(vec2<u32>(u_input.b.x, 4294967295u))), u_input.d), ~(~(~u_input.d))));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_1.zyy)) - arg_1.wyx), select(!vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(false, false, func_2(true)), func_3())), Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_1.wzy, vec3<f32>(-1086f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))), func_3()), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(arg_1.x)), 1741f))), !vec3<bool>(true, true, arg_2.x)), true && any(vec2<bool>(arg_2.x, true)));
    let var_2 = firstTrailingBit(-2147483647i);
    var var_3 = func_4(Struct_1(_wgslsmith_div_vec3_f32(arg_1.zyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.yyx) * vec3<f32>(1762f, arg_1.x, arg_1.x))), vec3<bool>(var_1.a, arg_2.x, _wgslsmith_mod_i32(var_2, var_2) > _wgslsmith_mult_i32(-19238i, 0i))), Struct_1(arg_1.zxx, func_3()), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1542f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x))), select(arg_2, arg_2, true)), true);
    var var_4 = ~(arg_0 ^ min(1u, arg_0));
    return Struct_1(vec3<f32>(arg_1.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1644f))), select(vec3<bool>(true, true || (arg_1.x > arg_1.x), abs(u_input.a.x) > (i32(-1i) * -17967i)), arg_2, vec3<bool>(any(arg_2), arg_1.x == 1000f, any(select(vec4<bool>(false, false, false, arg_2.x), vec4<bool>(true, arg_2.x, false, false), var_1.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.zx);
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.a.yz);
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(1110f, -1473f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, arg_0.a.x)))));
    var_0 = arg_1.a.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, -685f), arg_1.a.xz, vec2<bool>(arg_1.b.x, arg_1.b.x)))))));
    return all(vec3<bool>(func_1(~min(0u, arg_2), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 1509f, 585f, -1299f) - vec4<f32>(var_0.x, 685f, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, 1000f, -1840f, arg_0.a.x), vec4<f32>(arg_1.a.x, 1225f, 329f, arg_0.a.x)))), func_3()).b.x, arg_1.b.x, arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(true, all(vec4<bool>(false, true, false, false))));
    var_0 = (false && (u_input.a.x < u_input.a.x)) || (func_5(func_1(abs(12010u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-922f, 432f, -699f, -975f)), vec3<bool>(false, true, true)), func_1(~6113u, _wgslsmith_div_vec4_f32(vec4<f32>(-1692f, -328f, 1645f, -1630f), vec4<f32>(1000f, -1000f, -218f, -898f)), vec3<bool>(false, false, true)), ~(~u_input.e.x)) || func_2(!any(vec2<bool>(true, true))));
    let var_1 = ~u_input.d | max(110718u, _wgslsmith_div_u32(u_input.e.x, abs(~u_input.c.x)));
    let var_2 = !func_1(50617u | abs(u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1602f, 104f, -1468f, 962f))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), func_3())).b;
    var var_3 = func_4(func_1(u_input.d, vec4<f32>(_wgslsmith_f_op_f32(-793f - _wgslsmith_f_op_f32(f32(-1f) * -465f)), _wgslsmith_f_op_f32(-587f - _wgslsmith_f_op_f32(sign(686f))), -487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-244f - 1738f))), func_3()), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, -386f, -845f))), !var_2), func_1(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2019f, -1551f, -211f, -1685f)), vec4<f32>(1000f, -247f, -1423f, -267f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1121f, 1573f, 545f, 552f), vec4<f32>(399f, 576f, -1507f, -1235f), vec4<bool>(var_2.x, var_2.x, var_2.x, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1691f, 660f, 110f, 1000f))))), var_2), !any(vec2<bool>(false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(34127u, ~min(var_1, u_input.e.x), ~var_1), u_input.b));
}

