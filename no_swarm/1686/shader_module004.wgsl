struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = ~_wgslsmith_mod_vec4_u32(u_input.c, ((vec4<u32>(u_input.b.x, 38726u, 1u, u_input.b.x) ^ vec4<u32>(arg_1, 29342u, 1u, 1u)) << (~u_input.c % vec4<u32>(32u))) ^ u_input.c);
    let var_1 = arg_0;
    var_0 = reverseBits(vec4<u32>(~var_0.x, abs(arg_1), var_0.x, 4294967295u));
    let var_2 = true;
    var var_3 = firstTrailingBit(arg_0.d);
    return arg_0.b.x;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(-1000f, -1000f), vec4<f32>(243f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1205f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0))), true, min(-abs(vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, -u_input.d)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 842f)), _wgslsmith_div_f32(arg_0, -1609f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-257f)) - _wgslsmith_f_op_f32(-arg_0)))), Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, arg_0, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(380f, arg_0, arg_0, arg_0) + vec4<f32>(1162f, arg_0, arg_0, arg_0)))))), !(!(arg_1.x >= u_input.c.x)), -_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d, u_input.d)), select(vec2<i32>(u_input.d, -1i), vec2<i32>(1i, u_input.d), vec2<bool>(true, false)), ~vec2<i32>(78232i, u_input.d)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-341f, -476f, arg_0))))))), vec3<u32>(0u, ~_wgslsmith_dot_vec3_u32(~u_input.b.yxw, ~u_input.c.zzw), _wgslsmith_sub_u32(arg_1.x, ~max(26159u, 4294967295u))));
    var var_1 = !(!(true | var_0.b.c));
    let var_2 = -1015f;
    var_1 = !(!(!var_0.a.c));
    var_0 = Struct_2(Struct_1(358f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.b.x)), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(max(1295f, var_0.a.a))) * var_0.a.b), var_0.a.c, _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-23686i), min(-7649i, 1i)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, -1i), var_0.b.d, vec2<bool>(var_0.a.c, false)), var_0.a.d)), vec3<f32>(511f, -1000f, var_0.b.b.x)), Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.b.x, var_0.a.e.x, var_0.a.e.x, 339f), vec4<f32>(1000f, var_0.b.e.x, -1263f, -1452f))))), !any(!vec2<bool>(var_0.b.c, var_0.a.c)), -_wgslsmith_div_vec2_i32(firstTrailingBit(var_0.b.d), var_0.a.d >> (arg_1 % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b.e)))), ~vec3<u32>(arg_1.x, countOneBits(abs(var_0.c.x)), max(~u_input.c.x, _wgslsmith_mod_u32(15804u, arg_1.x))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.e.x)));
}

fn func_2(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(Struct_1(-400f, vec4<f32>(-1000f, 1000f, -135f, -1101f), false, arg_0.wy, vec3<f32>(-308f, -1795f, 1000f)), select(u_input.a.x, 94680u, true))), select(max(u_input.a.zz, u_input.b.yy), ~u_input.c.xw, select(vec2<bool>(false, true), vec2<bool>(false, true), true)))))), vec4<f32>(_wgslsmith_f_op_f32(select(-597f, -304f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1677f)))), _wgslsmith_f_op_f32(-1000f - -452f), _wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(276f)))))), true, reverseBits(min(arg_0.ww >> (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u)), arg_0.zy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1656f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -314f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1333f, 811f, 2159f))));
    var var_1 = any(select(!(!vec3<bool>(var_0.c, var_0.c, var_0.c)), !(!vec3<bool>(var_0.c, true, var_0.c)), any(!vec3<bool>(var_0.c, var_0.c, var_0.c))));
    var var_2 = abs(u_input.d) ^ u_input.d;
    var var_3 = _wgslsmith_sub_vec2_i32(select(max(var_0.d, _wgslsmith_sub_vec2_i32(~vec2<i32>(31995i, u_input.d), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d), arg_0.xz))), ~(~var_0.d ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, 6972i), arg_0.wx)), all(vec3<bool>(true, any(vec2<bool>(var_0.c, var_0.c)), false))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 73259i), arg_0.wz));
    var var_4 = !select(!select(vec3<bool>(var_0.c, var_0.c, var_0.c), select(vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.c, true, true), vec3<bool>(var_0.c, true, true)), var_0.c), vec3<bool>(true, true, true), select(vec3<bool>(true, !var_0.c, all(vec3<bool>(false, var_0.c, true))), select(select(vec3<bool>(false, true, var_0.c), vec3<bool>(false, var_0.c, var_0.c), false), vec3<bool>(var_0.c, true, false), false), false));
    return ~_wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(abs(arg_0.xyz), arg_0.wwx), ~(~(vec3<i32>(arg_0.x, 1i, 12843i) | arg_0.xxw)), -vec3<i32>(-46512i, _wgslsmith_mult_i32(1i, 1i), firstTrailingBit(2147483647i)));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), !any(vec3<bool>(true, true, false))));
    var var_1 = max(u_input.d, ~u_input.d);
    let var_2 = func_2(max(vec4<i32>(-1i) * -reverseBits(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d, -20790i, u_input.d, u_input.d), vec4<i32>(~2147483647i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d), u_input.d ^ u_input.d, -u_input.d))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -547f))) + 1652f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, -240f, 755f, 1195f) + vec4<f32>(373f, 1855f, 1000f, -649f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 246f, -2414f, -1000f)))), var_0.x, -_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, -19492i) & vec2<i32>(1i, 15054i), ~vec2<i32>(u_input.d, 2147483647i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f), _wgslsmith_f_op_f32(612f + -436f)), -1173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1265f - 243f)))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + _wgslsmith_f_op_f32(min(-547f, 448f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, -790f, -624f, -446f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, 1075f, 742f, -1029f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, 2282f, -347f, 2042f) * vec4<f32>(-1032f, 795f, -225f, -579f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(-135f, vec2<u32>(arg_0, u_input.c.x))) - _wgslsmith_f_op_f32(770f - -1178f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), var_2.xz) & vec2<i32>(u_input.d, -43752i ^ var_2.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(157f, _wgslsmith_f_op_f32(-728f + -985f), _wgslsmith_f_op_f32(min(1000f, -1642f)))))), u_input.c.wxy);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.b.x, -1545f, var_3.a.e.x))))), var_3.a.e, var_0.xyy));
    return func_2(vec4<i32>(-2147483647i, var_3.a.d.x, countOneBits(-66572i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_add_u32(~(_wgslsmith_add_u32(u_input.c.x, u_input.c.x) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.c.x), 4294967295u) % 32u)), u_input.c.x);
    let var_2 = ~u_input.c.x;
    var_0 = u_input.d <= -8886i;
    var var_3 = countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.d, 0i), vec3<i32>(-1i, u_input.d, -25974i)), func_1(_wgslsmith_sub_u32(~61185u, u_input.a.x))));
    var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d), u_input.d), -vec2<i32>(1i, 1i)), -countOneBits(vec2<i32>(u_input.d, 2147483647i) << (vec2<u32>(4294967295u, var_2) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.c.xxw), firstLeadingBit(vec3<u32>(63555u, var_1, 30374u))), u_input.d, countOneBits(~u_input.a), -(~abs(func_2(vec4<i32>(u_input.d, u_input.d, -1i, u_input.d)).x)));
}

