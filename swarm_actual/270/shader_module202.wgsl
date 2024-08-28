struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_2(-(i32(-1i) * -1i), Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, firstLeadingBit(-45299i)), reverseBits(_wgslsmith_sub_i32(-30157i, 17575i)))));
    var var_1 = true;
    var var_2 = !vec4<bool>(any(vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), true, any(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_3 = 6663i;
    var_0 = Struct_2(-countOneBits(1i), Struct_1(_wgslsmith_dot_vec2_i32(-firstTrailingBit(vec2<i32>(0i, -7248i)), vec2<i32>(abs(0i), abs(var_3)))));
    return _wgslsmith_clamp_i32(-var_0.a, abs(-_wgslsmith_dot_vec4_i32(~vec4<i32>(4647i, -2147483647i, -61459i, 9487i), ~vec4<i32>(var_0.a, -3077i, var_3, var_0.a))), ~var_0.a);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = min(_wgslsmith_div_vec2_i32(vec2<i32>(func_3(vec2<f32>(-621f, arg_0)) & abs(1i), _wgslsmith_sub_i32(-19535i, _wgslsmith_sub_i32(-1i, -1i))), vec2<i32>(_wgslsmith_add_i32(-1485i, -14707i << (u_input.a.x % 32u)), -(~(-2147483647i)))), vec2<i32>(1i, 1i) >> (u_input.a.wy % vec2<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -38i, -10868i), ~vec4<i32>(34630i, var_0.x, var_0.x, 0i)), 0i), 54252i));
    let var_2 = any(vec4<bool>(all(vec2<bool>(any(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, false)))), select(false, true, select(true, false, true)) || true, !(u_input.a.x >= 0u) || false, true));
    var var_3 = _wgslsmith_clamp_vec3_u32(u_input.a.xwz, vec3<u32>(select(~u_input.a.x, 77484u << (u_input.a.x % 32u), all(vec4<bool>(var_2, true, true, var_2))), u_input.a.x, u_input.a.x), u_input.a.yxx) ^ u_input.a.xzx;
    let var_4 = Struct_2(-30675i, var_1);
    return true;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = vec3<bool>(arg_0, true, func_2(1511f));
    var var_1 = vec3<f32>(-730f, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-610f, -844f)) - _wgslsmith_f_op_f32(-2057f * _wgslsmith_f_op_f32(round(-572f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1147f, var_1.x, -287f), vec3<f32>(308f, var_1.x, 1000f), var_0.x)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1808f * -466f), _wgslsmith_div_f32(-914f, -1000f), var_1.x))));
    var var_2 = Struct_1(34123i);
    return Struct_2(~(-6731i), Struct_1(-_wgslsmith_clamp_i32(-var_2.a, 1i, -4085i)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    var var_0 = 1000f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -437f), 1f)), _wgslsmith_f_op_f32(sign(-911f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, 1463f))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(1242f)), _wgslsmith_f_op_f32(f32(-1f) * -785f), -334f), vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -231f)))) - vec3<f32>(_wgslsmith_f_op_f32(701f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1193f))))), -151f, _wgslsmith_f_op_f32(step(-2426f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-161f, -509f))))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1250f);
    var var_2 = var_1.x;
    var_0 = var_1.x;
    return select(41275i, arg_2.x, arg_1);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> bool {
    var var_0 = select(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), all(vec4<bool>(true, true, true, true)), false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), !(~arg_3 < ~1u));
    var var_1 = Struct_2(arg_1, func_1(!(false && var_0.x), max(u_input.a.yx, vec2<u32>(9388u ^ arg_0, ~35u))).b);
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f * _wgslsmith_f_op_f32(ceil(-982f))) + 1287f)));
    let var_4 = _wgslsmith_f_op_f32(sign(var_3));
    return _wgslsmith_dot_vec2_u32(~(u_input.a.yy ^ ~vec2<u32>(u_input.a.x, 36528u)), firstLeadingBit(u_input.a.xx)) < _wgslsmith_dot_vec2_u32(max(~vec2<u32>(u_input.a.x, 1u), u_input.a.yw) | (abs(u_input.a.ww) << (u_input.a.wy % vec2<u32>(32u))), (u_input.a.wx | vec2<u32>(arg_3, u_input.a.x)) & abs(~u_input.a.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1617f, _wgslsmith_f_op_f32(853f - -696f), all(vec3<bool>(true, true, true)))), 782f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(405f * 206f)), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-202f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1000f * -207f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f + 1000f)), 206f));
    var var_1 = select(vec4<bool>(true, true, !(!all(vec4<bool>(true, false, true, true))), !(select(false, false, false) & true)), select(!vec4<bool>(1u > u_input.a.x, all(vec3<bool>(true, false, true)), false, all(vec2<bool>(true, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), true), true || !any(vec4<bool>(false, true, true, false))), !func_5(u_input.a.x, func_4(u_input.a.x >= u_input.a.x, all(vec2<bool>(false, true)), vec3<i32>(-1i, 41521i, 0i), func_1(false, vec2<u32>(44608u, 1u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -448f))), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x) << (max(1u, 26918u) % 32u)));
    var_1 = select(!(!vec4<bool>(any(vec4<bool>(true, true, var_1.x, var_1.x)), select(var_1.x, false, true), var_1.x, true)), !(!(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)))), all(var_1.zyz));
    var var_2 = -_wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, -2147483647i), -39289i >> (u_input.a.x % 32u)), _wgslsmith_add_i32(39132i, select(-2147483647i, 0i, false) ^ (i32(-1i) * -385i)));
    var_2 = 22510i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-58982i, 3737i, -1i, 9147i), vec4<i32>(0i, 1824i, 28662i, -1i)) & select(-1i, 1i, false)) & func_1(var_1.x, select(select(vec2<u32>(81175u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), var_1.x), ~u_input.a.wy, select(var_1.zy, vec2<bool>(var_1.x, false), var_1.wy))).a, var_0.x, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i));
}

