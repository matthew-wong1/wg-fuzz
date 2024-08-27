struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = Struct_3(arg_0, Struct_2(~(~(~vec3<u32>(13519u, 1u, 0u))), all(select(vec4<bool>(false, arg_3, true, arg_0.b.x), !vec4<bool>(arg_1.x, false, arg_1.x, arg_0.b.x), select(vec4<bool>(arg_1.x, false, arg_3, true), vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(false, true, false, arg_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - 2205f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-476f))), arg_0.a.x, arg_2), ~abs(min(vec4<u32>(4294967295u, 50683u, 4294967295u, 1u), vec4<u32>(9748u, 23428u, 1u, 1u)))));
    var_0 = Struct_3(Struct_1(vec3<f32>(var_0.b.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-409f + -573f), 411f), 1f), vec3<bool>(false, true, true)), Struct_2(select(reverseBits(vec3<u32>(var_0.b.d.x, var_0.b.d.x, 15849u) | var_0.b.d.xzy), reverseBits(~vec3<u32>(var_0.b.a.x, 31014u, 1u)), !(!vec3<bool>(arg_1.x, true, arg_0.b.x))), any(var_0.a.b.yx), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(1539f)), arg_0.a.x, -1477f, -411f))), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(32165u, 2942u, var_0.b.a.x, var_0.b.a.x)), vec4<u32>(~4294967295u, abs(30132u), firstLeadingBit(1u), abs(var_0.b.a.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2412f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-181f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -389f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1750f))), arg_0.a.x));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1215f)), _wgslsmith_f_op_f32(-arg_0.a.x), 1714f);
    let var_2 = firstLeadingBit(u_input.a);
    return firstTrailingBit(var_0.b.a.x);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = ~vec4<i32>(_wgslsmith_sub_i32(-firstTrailingBit(u_input.a), -u_input.a), -u_input.a, -2147483647i, i32(-1i) * -1i);
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-435f, 341f, 1125f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, -632f, 628f)))), select(select(!vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, false)), any(vec3<bool>(false, arg_0, true))), !(!vec3<bool>(false, true, arg_0)), vec3<bool>(any(vec4<bool>(arg_0, arg_0, false, true)), 1u == var_0, !arg_0))), Struct_2(min(vec3<u32>(var_0, 1u, 55178u), arg_1.xwx) & max(_wgslsmith_sub_vec3_u32(arg_1.yxy, arg_1.wyw), ~vec3<u32>(4294967295u, var_0, var_0)), any(!vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1115f, -540f, -544f, -926f), vec4<f32>(-996f, -1272f, 103f, -287f))), vec4<f32>(_wgslsmith_f_op_f32(min(-508f, -1000f)), _wgslsmith_f_op_f32(-576f + -120f), -442f, _wgslsmith_f_op_f32(step(1371f, 175f))), vec4<bool>(all(vec2<bool>(arg_0, arg_0)), !arg_0, true, true))), ~vec4<u32>(36302u, 0u, 1u, arg_1.x)));
    var_1 = vec4<i32>(_wgslsmith_sub_i32(var_1.x, abs(-1i)), reverseBits(_wgslsmith_div_i32(min(u_input.a, countOneBits(u_input.a)), -_wgslsmith_add_i32(-4281i, var_1.x))), reverseBits(-2147483647i), var_1.x);
    var_1 = -(abs(vec4<i32>(_wgslsmith_sub_i32(var_1.x, 1i), var_1.x, _wgslsmith_clamp_i32(17236i, -1i, var_1.x), u_input.a)) >> (~vec4<u32>(3947u, 34864u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.a.x, 4294967295u, var_0), var_2.b.d.wyz), firstTrailingBit(3039u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_2.a.a.x, 823f)))))))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_4(all(vec3<bool>(true, true, false)) | true, vec4<u32>(1u, _wgslsmith_sub_u32(abs(12467u), 0u), ~_wgslsmith_div_u32(1u, 1u), func_3(Struct_1(vec3<f32>(-1345f, -1498f, -2079f), vec3<bool>(false, true, false)), vec2<bool>(true, true), -676f, false)) ^ vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, _wgslsmith_f_op_f32(ceil(-494f)), var_0)), vec3<bool>(false, true, true)), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(26049u, 100210u, 0u)) ^ ~select(vec3<u32>(32083u, 1u, 25283u), vec3<u32>(1494u, 39650u, 0u), true), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -170f, 314f, var_0) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-128f, -1199f, var_0, 311f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1071f, var_0, 773f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2115f, var_0, var_0, -964f) - vec4<f32>(1000f, -396f, var_0, var_0)))), vec4<u32>(~_wgslsmith_add_u32(46902u, 72705u), abs(func_3(Struct_1(vec3<f32>(1000f, var_0, var_0), vec3<bool>(true, true, false)), vec2<bool>(true, false), -798f, false)), ~73u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(15851u, 0u, 50795u, 4294967295u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.b.c.wz), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-946f * 1130f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1630f, var_0))), vec2<f32>(-1344f, 701f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-944f, var_1.a.a.x), vec2<f32>(-1033f, var_1.a.a.x))) - var_1.a.a.yz)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_0, 769f)))))), !select(var_1.a.b, var_1.a.b, (421f >= var_2.x) & var_1.a.b.x));
    let var_4 = vec3<bool>(false, var_3.b.x, any(var_1.a.b.xx));
    return ~67816u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> bool {
    var var_0 = ~vec3<u32>(arg_1.x, 0u, 9071u);
    var_0 = ~(countOneBits(vec3<u32>(40003u, arg_1.x, var_0.x) ^ ~vec3<u32>(20580u, 0u, var_0.x)) | _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_1.x, arg_1.x, 6881u)), vec3<u32>(1u, 66601u, ~11424u)));
    var_0 = vec3<u32>(_wgslsmith_add_u32(var_0.x, _wgslsmith_mod_u32(~(~17705u), var_0.x)), _wgslsmith_sub_u32(0u, arg_1.x), func_2());
    return false || all(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(func_1(vec2<i32>(u_input.a, u_input.a), vec2<u32>(1230u, 39219u)), true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec3<bool>(true, true, true)))));
    let var_1 = ~min(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(13827u, 4294967295u), vec2<u32>(36977u, 34964u)), ~0u, func_3(Struct_1(vec3<f32>(1000f, 222f, 392f), vec3<bool>(false, true, var_0.x)), var_0.zz, -379f, true)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)));
    var var_2 = firstLeadingBit(vec2<u32>(var_1.x, 0u >> (_wgslsmith_mult_u32(var_1.x, 81797u) % 32u)));
    var_0 = select(!select(!select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.x, true, var_0.x), false), !vec4<bool>(false, var_0.x, false, true)), vec4<bool>(var_0.x, func_1(vec2<i32>(-2147483647i, -2147483647i), var_1.yx), var_0.x, u_input.a == -70629i), true), select(vec4<bool>(!var_0.x, true != var_0.x, true, true), vec4<bool>(all(vec4<bool>(true, var_0.x, var_0.x, false)), any(vec4<bool>(true, true, var_0.x, var_0.x)), true && var_0.x, true), true), select(select(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, var_0.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, var_0.x, var_0.x), false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, false, var_0.x, true), !vec4<bool>(false, var_0.x, true, false))), !(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, true, true)))));
    var_0 = !(!vec4<bool>(u_input.a != _wgslsmith_mult_i32(-2147483647i, u_input.a), func_1(~vec2<i32>(48404i, 52458i), ~var_1.zz), !(var_0.x | false), select(true, var_0.x, var_0.x)));
    var_2 = var_1.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_mult_u32(func_2(), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2652f + _wgslsmith_f_op_f32(696f * _wgslsmith_f_op_f32(-1000f - 354f)))), -(~(-max(vec4<i32>(0i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, 1i, 6085i, u_input.a)))), 1f);
}

