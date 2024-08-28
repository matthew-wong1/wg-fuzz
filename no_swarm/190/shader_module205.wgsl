struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(arg_2), (0u & arg_2) << (46590u % 32u), ~abs(0u), countOneBits(1u)), vec4<u32>(1u, arg_2, ~102436u, 51518u));
    let var_1 = true;
    var var_2 = 1u;
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(select(arg_1.b.d, vec4<bool>(true, arg_1.b.a | any(vec2<bool>(false, arg_1.a.x)), all(select(arg_1.a, vec4<bool>(true, false, arg_1.c.a, arg_1.a.x), false)), any(select(arg_1.b.d.zz, vec2<bool>(arg_1.a.x, true), false))), true), arg_1.c, arg_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, _wgslsmith_f_op_f32(func_1(844f, _wgslsmith_f_op_f32(select(arg_1.d.x, 133f, false)), _wgslsmith_mod_u32(13624u, arg_1.b.b.x))), _wgslsmith_f_op_f32(-arg_1.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(min(arg_1.d.x, -1062f)), arg_1.d.x) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_div_f32(268f, -606f), -749f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))) + -1100f);
    var_0 = Struct_2(select(arg_1.c.d, select(vec4<bool>(var_0.b.a, true, !arg_1.b.d.x, -395f <= var_0.d.x), arg_1.b.d, !arg_1.b.a & all(vec3<bool>(true, var_0.a.x, var_0.a.x))), var_0.a), var_0.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -594f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.d.x - 178f))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.b.x, arg_1.c.b.x, 19959u), var_0.b.b), u_input.a.x, vec4<bool>(all(select(vec4<bool>(false, var_0.a.x, true, var_0.b.d.x), arg_1.b.d, arg_1.c.d)), ~arg_1.b.b.x < 1u, var_0.a.x, all(vec3<bool>(false, arg_1.c.d.x, true)))), vec3<f32>(938f, _wgslsmith_div_f32(var_0.d.x, var_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_0.d.x * 217f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-arg_1.d.x))))));
    var_0 = arg_1;
    let var_2 = arg_1.b;
    return !var_0.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(709u, 0u)), abs(arg_0.c.b.zz)) | min(1u, arg_0.a.b.x);
    let var_1 = ~(~abs(vec4<u32>(1u, arg_0.c.b.x, arg_0.c.b.x, arg_0.b.b.x)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.a.b.x, 26221u, 1u, 4294967295u)), ~vec4<u32>(arg_0.a.b.x, 1u, arg_0.c.b.x, arg_0.c.b.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, arg_0.b.b.x), vec4<u32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, 95410u))));
    var_0 = _wgslsmith_add_u32(abs(~min(var_1.x, arg_0.b.b.x)), arg_0.b.b.x);
    var_0 = 42102u;
    let var_2 = Struct_2(vec4<bool>(any(select(vec2<bool>(arg_1, true), arg_0.a.d.zz, vec2<bool>(arg_1, arg_0.b.a))), !(!func_3(arg_0.c.c, Struct_2(vec4<bool>(arg_0.c.d.x, false, true, arg_1), Struct_1(arg_1, var_1.zxz, 19859i, arg_0.b.d), Struct_1(true, arg_0.c.b, u_input.a.x, vec4<bool>(arg_0.a.a, arg_1, arg_1, true)), arg_0.d.zxx))), func_3(_wgslsmith_dot_vec3_i32(-u_input.a.xyy, select(vec3<i32>(arg_0.c.c, arg_0.a.c, u_input.b.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.b.x), vec3<bool>(arg_1, arg_1, false))), Struct_2(!arg_0.b.d, Struct_1(arg_0.a.d.x, vec3<u32>(4294967295u, var_1.x, 0u), -10648i, arg_0.c.d), Struct_1(false, vec3<u32>(1u, arg_0.c.b.x, var_1.x), u_input.a.x, vec4<bool>(arg_1, arg_1, false, arg_1)), arg_0.d.yxx)), false), Struct_1(arg_0.a.a, var_1.xxw, ~arg_0.b.c << (1u % 32u), select(arg_0.a.d, arg_0.c.d, vec4<bool>(true, arg_0.b.d.x, all(arg_0.b.d.yw), !arg_0.b.a))), arg_0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(arg_0.d.xyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1139f, arg_0.e, arg_0.d.x), arg_0.d.wxz)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) - 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.e, -1232f))) + -2131f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -184f;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 741f, var_0) - vec4<f32>(-414f, var_0, var_0, var_0)) * vec4<f32>(var_0, var_0, var_0, var_0)) * vec4<f32>(_wgslsmith_div_f32(var_0, -240f), _wgslsmith_f_op_f32(1414f + 917f), 847f, _wgslsmith_f_op_f32(trunc(1000f)))))), vec4<f32>(259f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-var_0), var_0, 16475u)), var_0, true)), _wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(true, vec3<u32>(47469u, 6253u, 34563u), u_input.b.x, vec4<bool>(false, true, true, false)), Struct_1(true, vec3<u32>(49125u, 0u, 4294967295u), u_input.b.x, vec4<bool>(true, false, false, false)), Struct_1(false, vec3<u32>(0u, 8980u, 2885u), -1i, vec4<bool>(false, false, false, true)), vec4<f32>(-364f, var_0, -832f, var_0), var_0), true))))));
    let var_2 = Struct_3(Struct_1(select(func_3(1i, Struct_2(vec4<bool>(false, false, true, true), Struct_1(false, vec3<u32>(4294967295u, 1u, 55142u), -33381i, vec4<bool>(true, true, true, false)), Struct_1(false, vec3<u32>(4294967295u, 12722u, 0u), u_input.a.x, vec4<bool>(false, false, true, true)), vec3<f32>(317f, var_0, var_1.x))), true, select(all(vec2<bool>(false, true)), false, true)), ~vec3<u32>(1u, 1u, 1u), u_input.b.x, vec4<bool>(true, any(vec2<bool>(true, true)), false, any(vec3<bool>(false, true, true)) && true)), Struct_1(true, ~(~(~vec3<u32>(4681u, 522u, 95658u))), ~u_input.b.x, vec4<bool>(!any(vec2<bool>(true, false)), all(vec2<bool>(false, true)), func_3(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), Struct_2(vec4<bool>(true, false, false, true), Struct_1(false, vec3<u32>(39480u, 4294967295u, 1u), u_input.a.x, vec4<bool>(true, false, false, true)), Struct_1(true, vec3<u32>(52203u, 4294967295u, 28654u), -1i, vec4<bool>(true, false, true, false)), var_1.xxx)), any(vec2<bool>(false, true)) & true)), Struct_1(all(vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, u_input.a.x <= u_input.a.x)), reverseBits(vec3<u32>(1u, 1u, 1u)), max((i32(-1i) * -13226i) | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 21643i), u_input.a.wxw), 1i), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, 484f, var_1.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(158f, var_0, var_0, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_1.x, var_1.x, -690f), vec4<f32>(var_1.x, -1000f, var_0, 2494f), true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_1.x)))), -218f));
    var var_3 = Struct_1(false, ~vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.b.b.x, 57264u), var_2.b.b), 4294967295u), 0u), 0i, vec4<bool>(var_2.c.a, var_2.c.d.x, !(!(var_2.d.x <= var_1.x)), _wgslsmith_mult_i32(var_2.b.c >> (var_2.a.b.x % 32u), min(57739i, -54447i)) > var_2.a.c));
    let var_4 = Struct_2(vec4<bool>(~(~(-19785i)) < u_input.a.x, true, var_3.d.x, !(!(!var_2.b.a))), var_2.a, Struct_1(true, vec3<u32>(4294967295u, 27928u, 4294967295u), 1i, vec4<bool>(any(!vec3<bool>(var_3.a, var_3.a, var_2.a.d.x)), var_2.a.d.x, select(true, 0u == var_2.a.b.x, var_2.b.a), all(vec3<bool>(false, var_2.a.a, true)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(var_2.d.x, -194f)), var_1.x)), var_0, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_add_u32(44550u, 0u), ~var_4.b.b.x) & (_wgslsmith_add_u32(var_2.c.b.x, var_3.b.x) & 2987u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-663f, -1011f)), _wgslsmith_f_op_vec2_f32(-var_1.xw))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1192f, var_1.x)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(195f + var_4.d.x)), var_2.d.zw)), ~var_2.a.b.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_4.d.x, var_2.e))), ~_wgslsmith_mult_u32(var_2.b.b.x, var_4.c.b.x))) + var_2.e));
}

