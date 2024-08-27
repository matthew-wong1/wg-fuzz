struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(746f * 479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(-496f)), _wgslsmith_f_op_f32(round(-1279f)))))), -3015i, Struct_2(_wgslsmith_clamp_vec2_u32(~arg_1, arg_1, vec2<u32>(~10962u, firstLeadingBit(arg_1.x))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(step(arg_2, -248f)))), arg_3.x));
    let var_1 = var_0.c;
    let var_2 = false;
    let var_3 = firstLeadingBit(var_1.a.x);
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(968f, 1000f), _wgslsmith_f_op_f32(trunc(var_1.b))))) + var_0.a), 3818i, Struct_2(vec2<u32>(~1u, 19358u), _wgslsmith_f_op_f32(select(var_1.b, -1406f, any(vec4<bool>(true, var_0.c.c, var_1.c, true)))), all(select(select(vec4<bool>(true, false, true, var_2), vec4<bool>(false, false, true, arg_0.a.x), vec4<bool>(arg_0.a.x, var_2, true, arg_3.x)), select(vec4<bool>(true, true, var_0.c.c, arg_0.a.x), vec4<bool>(false, arg_3.x, true, true), vec4<bool>(true, var_2, var_1.c, true)), select(vec4<bool>(true, true, true, var_1.c), vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(var_0.c.c, var_0.c.c, false, arg_3.x))))));
    return var_0.c.b;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = arg_2;
    var var_1 = 37723i;
    var_1 = u_input.b.x;
    let var_2 = Struct_4(Struct_2(arg_1.a, arg_0, false), true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -250f)), _wgslsmith_f_op_f32(ceil(arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(arg_2.a.x, arg_3, false)), vec2<u32>(arg_1.a.x, u_input.a.x), arg_1.b, !vec2<bool>(arg_3, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, -265f, arg_0, 225f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 644f, arg_0, -2087f) * vec4<f32>(-563f, 978f, -1136f, 1000f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_1.b, -1000f, 304f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1372f), arg_1.b, 1000f, -1520f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -203f, 299f, -208f)))))), var_0);
    var var_3 = Struct_4(Struct_2(vec2<u32>(~_wgslsmith_add_u32(arg_1.a.x, 137646u), ~u_input.a.x), -1039f, all(vec4<bool>(all(var_2.e.a.yx), false, true, true))), arg_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(219f, -1031f, _wgslsmith_f_op_f32(-arg_0)), vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(max(-638f, -796f)), _wgslsmith_f_op_f32(-var_2.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(var_2.a.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d.x), -293f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), -2373f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(-var_2.c.x)))), Struct_1(!select(!vec3<bool>(true, false, var_0.a.x), select(var_0.a, vec3<bool>(false, false, arg_2.a.x), vec3<bool>(false, false, arg_1.c)), select(vec3<bool>(arg_1.c, false, arg_1.c), arg_2.a, arg_3))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(844f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_2.yz, arg_0.zx, arg_1)), arg_0.ww)))), _wgslsmith_f_op_vec2_f32(-arg_2.wz))), u_input.c.x, Struct_2(select(reverseBits(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(7448u, u_input.a.x), vec2<bool>(arg_1.x, arg_1.x))), u_input.a.zw << (u_input.a.ww % vec2<u32>(32u)), select(4294967295u, u_input.a.x, true) < ~1u), _wgslsmith_f_op_f32(-arg_0.x), all(select(select(arg_1, vec2<bool>(arg_1.x, false), arg_1), arg_1, all(vec3<bool>(true, arg_1.x, arg_1.x))))));
    let var_1 = abs(vec3<i32>(var_0.b | u_input.c.x, _wgslsmith_mod_i32(reverseBits(-77429i), -3680i) | _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, -2147483647i, var_0.b, var_0.b)), ~u_input.b), var_0.b));
    let var_2 = Struct_4(Struct_2(_wgslsmith_sub_vec2_u32(max(~u_input.a.zw, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.a.x, var_0.c.a.x), u_input.a.zx)), vec2<u32>(~var_0.c.a.x, 2506u)), arg_2.x, !arg_1.x), arg_1.x, arg_2.yzy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-arg_2.x), 353f), arg_0)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(var_0.a.x, 692f, 330f, 176f))))))), Struct_1(vec3<bool>(!(!var_0.c.c), any(select(vec4<bool>(true, true, arg_1.x, false), vec4<bool>(false, true, false, var_0.c.c), vec4<bool>(true, arg_1.x, arg_1.x, false))), (u_input.c.x ^ -72109i) == ~var_1.x)));
    var var_3 = ~_wgslsmith_dot_vec2_i32(abs(-select(vec2<i32>(14411i, var_0.b), vec2<i32>(-65368i, 3117i), var_2.e.a.yy)), max(var_1.yx, vec2<i32>(u_input.d.x, -1i)) << (var_2.a.a % vec2<u32>(32u)));
    var_3 = i32(-1i) * -5096i;
    return 7738u;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.x & ~(~(~firstLeadingBit(u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(519f, -1591f, 2152f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(508f, -507f, -815f), vec3<f32>(-749f, -325f, 152f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-605f, 411f, -130f)))));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_2(-1206f, Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), -651f, true), Struct_1(vec3<bool>(true, false, true)), true)), -1617f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)), vec2<bool>(false, select(true, false, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 860f, 1000f, -1113f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 554f, 983f, var_1.x)))), 2470u), _wgslsmith_mult_u32(u_input.a.x, ~0u), ~1u, 1u);
    var_0 = 983u >> (~var_2.x % 32u);
    var var_3 = 51035u >> (max(select(~9949u, 25725u, true), ~u_input.a.x) % 32u);
    return Struct_2(~(~vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1648f)))), !(!(!any(vec4<bool>(false, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_mod_i32(17913i, _wgslsmith_sub_i32(-firstLeadingBit(u_input.c.x), -7761i));
    let var_2 = 4294967295u & select(max(firstTrailingBit(0u) ^ 4294967295u, var_0.a.x), ~(~u_input.a.x), any(!vec3<bool>(true, true, var_0.c)));
    let var_3 = Struct_1(vec3<bool>(all(!select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(true, true, false), vec3<bool>(true, var_0.c, true))), var_0.c, var_0.c));
    var_1 = u_input.c.x | -u_input.b.x;
    var_0 = func_1();
    let var_4 = Struct_4(Struct_2(vec2<u32>(select(64109u, var_2, false), _wgslsmith_sub_u32(90593u, var_2)) << (var_0.a % vec2<u32>(32u)), -1097f, true), var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b, -458f, var_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-137f, var_0.b, var_0.b), vec3<f32>(-328f, -1013f, var_0.b), var_0.c)), func_1().c)), vec3<f32>(_wgslsmith_f_op_f32(978f + var_0.b), 1679f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(var_3.a.x, var_0.c, false)), ~u_input.a.xz, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(var_0.c, var_0.c, var_0.c)), vec2<u32>(46844u, 4294967295u), -1794f, var_3.a.zx)), var_3.a.xx)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -932f)), 807f)), Struct_1(!vec3<bool>(var_0.a.x < u_input.a.x, true, !var_3.a.x)));
    var var_5 = _wgslsmith_mod_u32(func_1().a.x ^ var_4.a.a.x, var_0.a.x);
    var var_6 = var_4.e;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.b, -272f)), -1876f)))), 6630i, u_input.b);
}

