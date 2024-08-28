struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<f32>) -> bool {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, ~u_input.b < _wgslsmith_add_u32(u_input.d, 13120u))), true, true);
    var_0 = select(!vec3<bool>(false, any(vec2<bool>(arg_0, false)), !(u_input.b >= 1u)), !(!(!vec3<bool>(var_0.x, arg_0, false))), select(!(!(!vec3<bool>(arg_0, arg_0, false))), vec3<bool>(~1u > u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(1u, 109044u)) <= 0u, any(select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(var_0.x, false, true), arg_0))), select(select(select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, arg_0, true), vec3<bool>(var_0.x, true, true)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), true), select(vec3<bool>(false, true, var_0.x), vec3<bool>(arg_0, var_0.x, arg_0), true)), !vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(true, true, arg_0), !vec3<bool>(false, true, var_0.x), !vec3<bool>(var_0.x, arg_0, false)))));
    var_0 = select(select(select(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, var_0.x), false), select(!vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, arg_0, true), vec3<bool>(false, true, arg_0)), !arg_0), vec3<bool>(arg_0, var_0.x, select(false, var_0.x, u_input.b == 4294967295u)), !select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(arg_0, arg_0, var_0.x), vec3<bool>(var_0.x, true, arg_0))), !select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(var_0.x, arg_0, false), vec3<bool>(true, true, true), vec3<bool>(true, true, arg_0)), 29395i != u_input.c.x), select(vec3<bool>(all(var_0.zz), false, true), !vec3<bool>(!var_0.x, !arg_0, true), true));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_1.x), vec2<i32>(~((41535i >> (u_input.b % 32u)) & abs(arg_1.x)), -(~countOneBits(arg_1.x))));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec2<u32>(u_input.d, ~u_input.d);
    let var_1 = !arg_1.yz;
    var var_2 = select(!(!select(vec4<bool>(arg_0, arg_2.a.x, true, true), arg_2.a, arg_2.b.x)), select(vec4<bool>(~u_input.c.x >= 1i, !arg_1.x, var_1.x, all(vec4<bool>(true, true, true, true))), vec4<bool>(any(select(arg_2.a.zzx, vec3<bool>(arg_1.x, arg_0, arg_1.x), arg_1)), var_1.x, false, var_1.x), arg_1.x & all(arg_2.a.zwx)), select(!(!arg_2.a), !select(select(vec4<bool>(var_1.x, arg_2.a.x, false, arg_0), vec4<bool>(arg_2.a.x, arg_1.x, false, true), arg_2.a), !arg_2.a, true), !any(!arg_2.a)));
    let var_3 = select(!arg_1.xz, !(!arg_1.xx), var_2.x);
    let var_4 = ~(abs(select(~vec3<i32>(-75364i, 46535i, 8287i), ~u_input.c.zxw, arg_1.x)) | vec3<i32>(-u_input.c.x, ~(~1i), -(~u_input.a.x)));
    return all(arg_1);
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>, arg_3: f32) -> bool {
    return !func_4(any(vec3<bool>(func_3(arg_1, vec4<i32>(u_input.c.x, arg_0.a.x, -81587i, -1i), vec2<f32>(arg_0.b, 106f)), true, false)), arg_0.e.a.a.ywx, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) - _wgslsmith_f_op_f32(floor(arg_3)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.d, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(1000f - -316f), 281f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, 640f, 1808f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(358f, -1016f, -1274f), vec3<f32>(1657f, 1000f, -406f)))))));
    let var_2 = _wgslsmith_mod_u32(firstLeadingBit(18437u), firstLeadingBit(~(1u & _wgslsmith_clamp_u32(var_0, u_input.b, u_input.b))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1396f, 112f, var_1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-274f)), var_1.x, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 700f, -1000f)))), any(vec4<bool>(false, func_2(Struct_4(u_input.a.xw, -931f, Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false)), Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(false, false)), Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(true, false)), vec2<bool>(false, true))), false, vec2<u32>(var_2, 0u), var_1.x), true, var_0 < var_2)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -465f), vec3<f32>(992f, var_1.x, 2477f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1740f, 1000f, -705f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 568f, var_1.x), vec3<f32>(var_1.x, 1000f, -427f)))), true))));
    let var_3 = Struct_3(Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true)), u_input.a.x > 19142i), vec2<bool>(true, true)), vec2<bool>(!any(vec3<bool>(false, true, true)), any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), true))));
    return Struct_1(select(select(var_3.a.a, !(!vec4<bool>(true, var_3.b.x, var_3.b.x, var_3.a.b.x)), any(select(vec4<bool>(true, false, var_3.a.b.x, var_3.b.x), vec4<bool>(var_3.a.b.x, true, var_3.a.a.x, var_3.b.x), var_3.a.a))), var_3.a.a, var_3.b.x), select(vec2<bool>(~9583u > _wgslsmith_sub_u32(4845u, u_input.d), var_3.b.x), var_3.b, true));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(412f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_3)))), 452f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(787f, -1925f))))))));
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~(~firstLeadingBit(u_input.c.x)), ~(~u_input.c.x)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 22497i), u_input.a.yy) | u_input.c.zw, ~(~u_input.a.yw)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x * -1000f))));
    var var_3 = var_0;
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(1f, _wgslsmith_f_op_f32(select(var_3.x, arg_3, true)), _wgslsmith_div_f32(var_3.x, -1000f), _wgslsmith_f_op_f32(trunc(var_3.x))))), func_1().a)), var_0);
    return func_1();
}

fn func_6(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = ~min(u_input.c.x, u_input.a.x >> (~(~137228u) % 32u));
    var var_1 = ~(~abs(select(vec2<u32>(arg_0.x, 0u), arg_0.wx, false) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(49651u, arg_0.x)) % vec2<u32>(32u))));
    var_1 = vec2<u32>(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~arg_0.xz, _wgslsmith_add_vec2_u32(arg_0.yx, arg_0.zx)), _wgslsmith_mult_u32(1u, var_1.x)));
    var var_2 = 635f;
    return Struct_3(func_1(), arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, vec3<bool>(true, true, true));
    var_0 = Struct_2(!(!var_0.a), select(!(!var_0.b), var_0.b, all(select(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.b.x), vec4<bool>(var_0.a, var_0.b.x, var_0.b.x, false), false), select(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x), vec4<bool>(false, true, var_0.b.x, var_0.b.x), vec4<bool>(true, true, true, var_0.a)), !var_0.b.x))));
    var var_1 = !any(!(!vec4<bool>(var_0.a, true, false, var_0.b.x)));
    var var_2 = _wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_f_op_f32(max(-439f, -791f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1059f - 1000f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1426f * -526f))) * _wgslsmith_div_f32(-1351f, _wgslsmith_div_f32(-2875f, _wgslsmith_f_op_f32(select(500f, -249f, false)))));
    var_2 = false;
    let var_3 = abs(_wgslsmith_mult_u32(u_input.b, 16114u));
    var var_4 = func_6(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(10116u, var_3, var_3, 23143u), vec4<u32>(var_3, u_input.b, u_input.d, 46870u)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, var_3), vec4<u32>(51186u, var_3, u_input.d, 2303u), vec4<u32>(u_input.b, 9772u, 26478u, 21281u)), ~vec4<u32>(0u, 53113u, u_input.d, 32957u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(51198u, 4294967295u, u_input.d, 7172u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.d), vec4<u32>(50064u, var_3, 19540u, 1u), vec4<u32>(4676u, u_input.d, var_3, 397u)))), reverseBits(vec4<u32>(4294967295u, 1u, 1u, 9362u)) << (~(vec4<u32>(var_3, var_3, var_3, var_3) & vec4<u32>(30093u, 4294967295u, var_3, 4294967295u)) % vec4<u32>(32u)), any(!vec4<bool>(var_0.a, true, false, false))), 472f, func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, -2391f) - vec2<f32>(-1402f, -104f))))), func_1(), Struct_2(all(select(var_0.b, var_0.b, var_0.a)), var_0.b), 171f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-760f)), _wgslsmith_f_op_f32(-1125f * 1146f), true)), -216f))));
}

