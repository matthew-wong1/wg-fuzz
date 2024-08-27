struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_3(vec4<bool>(false, all(vec3<bool>(false, true, u_input.a < 1i)), any(vec2<bool>(false, true)), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2360f)), arg_0.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true))));
    var var_1 = Struct_2(~(~u_input.a & -26872i), Struct_1(vec4<bool>(true, (u_input.c >= u_input.d) || var_0.c.x, false, any(vec3<bool>(var_0.c.x, var_0.a.x, var_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yzy - arg_0.xwy) * arg_0.zzz))), Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b - arg_0.x), 1000f, -1013f))), Struct_1(select(vec4<bool>(true, true, false, true), var_0.a, any(!var_0.a.wwx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), var_0.b, _wgslsmith_f_op_f32(min(930f, -163f))))), Struct_1(vec4<bool>(false, any(select(var_0.c, vec2<bool>(var_0.a.x, true), var_0.a.x)), var_0.a.x, !(var_0.c.x & var_0.a.x)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.wzw))));
    let var_2 = vec4<i32>(-1i, max(abs(u_input.a), reverseBits(~_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-2147483647i, var_1.a)))), firstLeadingBit(countOneBits(u_input.b.x)), -52835i);
    var_1 = Struct_2(_wgslsmith_sub_i32(firstLeadingBit(-53338i), _wgslsmith_dot_vec2_i32(u_input.b.zz, var_2.zx & u_input.b.yw)) & firstLeadingBit(var_2.x), var_1.d, Struct_1(!vec4<bool>(all(var_0.a.zw), true, var_0.a.x != true, true), _wgslsmith_f_op_vec3_f32(arg_0.zwz + var_1.d.b)), Struct_1(!select(var_0.a, var_1.e.a, true), _wgslsmith_f_op_vec3_f32(ceil(arg_0.xzy))), Struct_1(vec4<bool>(var_0.c.x, all(select(var_1.c.a.yx, vec2<bool>(false, var_0.c.x), vec2<bool>(var_1.b.a.x, true))), true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, -735f, var_0.b) - var_1.e.b))));
    return vec3<bool>(true, var_0.a.x, !(!var_1.c.a.x));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = select(select(!vec3<bool>(arg_0 && false, true, arg_0), !(!func_3(vec4<f32>(232f, 972f, -2305f, 264f), 0u)), select(select(!vec3<bool>(false, true, arg_0), !vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), true)), vec3<bool>(true, true, u_input.a > u_input.b.x), func_3(vec4<f32>(-653f, -1556f, -259f, 1045f), u_input.c))), select(vec3<bool>(!arg_0, true, arg_0), select(select(vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), true), func_3(vec4<f32>(1f, 1f, 1f, 1f), firstTrailingBit(1u)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1336f, 485f, 945f), vec4<f32>(-100f, 927f, -434f, 2075f), vec4<bool>(arg_0, false, arg_0, false))), ~0u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-27603i, u_input.a, u_input.b.x, u_input.a), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -40189i) | u_input.b) >= _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a, u_input.b.x, u_input.a, u_input.b.x) ^ vec4<i32>(15802i, 13350i, u_input.b.x, u_input.b.x))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1894f)) - _wgslsmith_f_op_f32(560f + 800f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1544f)) * _wgslsmith_f_op_f32(step(-137f, -2767f))), arg_0, arg_0));
    var_0 = vec3<bool>(var_0.x, true, var_0.x);
    var var_1 = vec4<i32>(u_input.b.x, ~(~(0i)), -abs(u_input.b.x), min(1i, select(min(u_input.b.x, u_input.a) >> (4294967295u % 32u), u_input.b.x, arg_0)));
    var var_2 = Struct_2(~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, -1i, -14554i, var_1.x)), vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x)) & u_input.b.x, Struct_1(select(select(vec4<bool>(var_0.x, arg_0, true, false), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(false, false, false, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0)), !vec4<bool>(var_0.x, true, false, var_0.x), !select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, false, true), true)), vec3<f32>(1892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1480f)), _wgslsmith_f_op_f32(trunc(-868f)))), Struct_1(!select(!vec4<bool>(arg_0, var_0.x, false, false), vec4<bool>(var_0.x, true, arg_0, arg_0), !var_0.x), vec3<f32>(1356f, -1000f, _wgslsmith_f_op_f32(-1503f * -1233f))), Struct_1(vec4<bool>(!all(vec3<bool>(true, var_0.x, true)), all(vec4<bool>(var_0.x, true, false, arg_0)), arg_0, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, -370f, 1751f, 1400f)), u_input.d).x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, 280f, -497f))))), Struct_1(vec4<bool>(any(vec4<bool>(true, false, arg_0, arg_0)), _wgslsmith_sub_i32(u_input.b.x, -6684i) != _wgslsmith_dot_vec3_i32(u_input.b.wxz, var_1.wzz), arg_0, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(750f, 877f, 1401f))), vec3<f32>(1000f, -157f, 101f))), vec3<f32>(_wgslsmith_f_op_f32(-176f - -1000f), -859f, _wgslsmith_f_op_f32(round(-101f))), vec3<bool>(false, false, func_3(vec4<f32>(-174f, 758f, 211f, -576f), 4294967295u).x)))));
    var_1 = u_input.b;
    return 27090u;
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = Struct_3(vec4<bool>(false & (-u_input.a == 15516i), all(vec4<bool>(true, true, true, true)), u_input.c < func_2(u_input.a > 2147483647i), !any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0))), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1717f, 1000f, 1612f)), u_input.d).yz));
    var var_1 = var_0.c.x;
    let var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, 1664f, 2928f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(610f, -839f, -968f) + vec3<f32>(1030f, var_0.b, -163f)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(238f)), 658f, true)), arg_0, _wgslsmith_f_op_f32(-arg_0))));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~1u, u_input.c) ^ (abs(_wgslsmith_sub_u32(u_input.d, 26079u)) >> (_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.c, u_input.d), vec3<u32>(u_input.c, u_input.d, u_input.c)), ~vec3<u32>(u_input.d, 55807u, u_input.d)) % 32u)), 1u, _wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(u_input.c, u_input.c)), abs(vec2<u32>(u_input.d, u_input.d)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(u_input.d, u_input.c)))), u_input.d);
    var_3 = vec4<u32>(_wgslsmith_mult_u32(~var_3.x, ~_wgslsmith_clamp_u32(49640u >> (0u % 32u), ~var_3.x, ~u_input.d)), ~var_3.x, ~(17299u & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(46816u, 13274u, var_3.x, 24924u), vec4<u32>(4294967295u, var_3.x, 1u, u_input.c)), vec4<u32>(1u, var_3.x, var_3.x, 57643u))), _wgslsmith_dot_vec3_u32(~var_3.zwz, ~max(vec3<u32>(12434u, 7418u, 73148u) >> (vec3<u32>(0u, u_input.c, 1u) % vec3<u32>(32u)), vec3<u32>(var_3.x, u_input.d, 0u))));
    return Struct_4(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_2.b.x, -903f))) + vec3<f32>(arg_0, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1363f)))), var_2, 28676u, -9201i, ~vec3<u32>(~(~var_3.x), 55787u, _wgslsmith_add_u32(~u_input.c, ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.b.wwx);
    var var_1 = func_1(303f);
    var var_2 = 674f;
    let var_3 = Struct_3(vec4<bool>(false, var_1.b.a.x == var_1.a.a.x, true, all(vec2<bool>(false, all(vec2<bool>(true, var_1.a.a.x))))), 543f, !(!(!var_1.a.a.zx)));
    var var_4 = var_1.e;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(max(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1595f))).b.b.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, 1808f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(167f - -1064f)), var_1.b.b.x, func_1(var_3.b).b.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, -442f, var_1.a.b.x, -703f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.b))), 487f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.a.b.xx + vec2<f32>(2091f, var_1.a.b.x)), var_1.a.b.yz)))), u_input.a);
}

