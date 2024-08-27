struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = ~_wgslsmith_div_vec2_i32(u_input.a.xx, -u_input.a.zx);
    let var_1 = vec3<bool>(arg_0.d.x, arg_0.c.a.x == _wgslsmith_f_op_f32(min(-1149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.a.a.x)))), (firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, -20473i)) | _wgslsmith_clamp_i32(u_input.a.x, arg_0.b, 30088i)) > u_input.a.x);
    let var_2 = select(!(!select(!var_1.zx, select(arg_0.c.c.zx, var_1.zy, arg_0.a.c.xx), var_1.x)), select(vec2<bool>(select(arg_0.c.c.x | var_1.x, arg_0.d.x, any(var_1)), select(arg_0.c.c.x || arg_0.a.c.x, any(arg_0.c.c), arg_0.a.c.x)), select(!vec2<bool>(false, var_1.x), !vec2<bool>(arg_0.c.c.x, var_1.x), vec2<bool>(var_1.x, !var_1.x)), !arg_0.c.c.x), select(false, var_1.x, true));
    var var_3 = arg_0;
    var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(var_3.c.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(-531f)), var_3.c.a.x, _wgslsmith_f_op_f32(682f + arg_0.c.a.x), _wgslsmith_f_op_f32(arg_0.c.a.x * var_3.c.a.x))))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<f32>(886f, -1411f, -999f, 404f), vec2<i32>(-1i, -30042i), vec3<bool>(true, false, true)), u_input.a.x, Struct_1(vec4<f32>(-1552f, 774f, 1290f, 1495f), u_input.a.zz, vec3<bool>(false, false, true)), vec3<bool>(true, true, false)))))), u_input.a.xy, !vec3<bool>(false, true, select(false, true, true))), u_input.a.x & (_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) ^ u_input.a) ^ u_input.a.x), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-968f, 501f)), _wgslsmith_f_op_f32(-792f - -218f), _wgslsmith_f_op_f32(max(-423f, _wgslsmith_f_op_f32(f32(-1f) * -606f))), 277f), u_input.a.xz, vec3<bool>(!all(vec2<bool>(true, true)), true, true)), vec3<bool>(!(u_input.b >= firstLeadingBit(u_input.b)), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(false, false, true))), true));
    let var_1 = var_0.d.x & any(vec4<bool>(!var_0.c.c.x, var_0.c.c.x, true, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x))), 1561f));
    var var_3 = vec4<bool>(any(var_0.c.c.zx), !all(!select(vec4<bool>(true, false, var_0.a.c.x, false), vec4<bool>(false, var_0.a.c.x, var_1, true), vec4<bool>(var_1, true, false, true))), var_0.c.c.x, var_1);
    let var_4 = Struct_2(var_0.a, -22731i ^ (-(var_0.a.b.x ^ -14630i) & u_input.a.x), var_0.a, var_0.c.c);
    return Struct_2(var_4.c, 0i, var_4.a, vec3<bool>(any(var_0.d.yz), true, any(!(!vec4<bool>(false, var_3.x, var_3.x, false)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = arg_2;
    var var_1 = reverseBits(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(abs(u_input.b), 4294967295u), _wgslsmith_mult_u32(select(max(68025u, 4294967295u), 42511u, true), reverseBits(u_input.b))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.a.x, 1046f))), var_0.a.c.x)) - -1205f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a.x))));
    let var_3 = 17264i;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.c.a.x), -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x - arg_1.c.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.a.a.x, _wgslsmith_f_op_f32(arg_1.a.a.x + -1192f))) + 274f))));
    return _wgslsmith_sub_i32(arg_2.c.b.x, 1i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(min(vec4<i32>(arg_0, var_3, 0i, arg_1.c.b.x), vec4<i32>(0i, arg_0, arg_0, -1i))), vec4<i32>(4877i, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-1i, var_0.c.b.x)), _wgslsmith_mult_i32(var_0.a.b.x, arg_0), -2147483647i)), abs(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_1.c.b.x, arg_1.c.b.x, var_3, var_3)), vec4<i32>(var_3, arg_0, arg_2.c.b.x, -26925i), vec4<i32>(var_0.a.b.x, u_input.a.x, arg_0, 37963i) | vec4<i32>(-30378i, var_3, var_3, arg_0))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0;
    let var_1 = abs(-firstTrailingBit(i32(-1i) * -46262i));
    var var_2 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(34901u, min(4294967295u, u_input.b)), vec2<u32>(u_input.b, 0u)), ~(~(vec2<u32>(u_input.b, 1u) ^ vec2<u32>(u_input.b, u_input.b))));
    var_2 = ~((~vec2<u32>(4294967295u, var_2.x) | firstLeadingBit(firstLeadingBit(vec2<u32>(1u, u_input.b)))) | _wgslsmith_add_vec2_u32(vec2<u32>(52487u, firstLeadingBit(28273u)), vec2<u32>(97284u, u_input.b) << (vec2<u32>(var_2.x, u_input.b) % vec2<u32>(32u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a.a))), _wgslsmith_f_op_vec4_f32(-arg_0.c.a), select(!vec4<bool>(arg_1.c.x, true, arg_1.c.x, false), !(!vec4<bool>(arg_0.a.c.x, arg_1.c.x, true, true)), any(vec3<bool>(true, false, false))))), vec2<i32>(var_0.a.b.x, ~func_4(-arg_1.b.x, func_2(), func_2())), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, arg_1.c.x, true)), true, any(!var_0.d.zy)), !select(!vec3<bool>(arg_0.a.c.x, false, arg_0.d.x), vec3<bool>(false, arg_1.c.x, arg_1.c.x), !var_0.a.c.x)));
    return ~max(_wgslsmith_add_i32(u_input.a.x, countOneBits(1i)), i32(-1i) * -_wgslsmith_mod_i32(var_1, 25048i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.a.zx);
    var var_2 = !(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, -7189i), -(~vec4<i32>(1i, -2660i, 1917i, 1i))) == (u_input.a.x & _wgslsmith_sub_i32(func_1(Struct_2(Struct_1(vec4<f32>(-100f, 286f, -828f, 668f), vec2<i32>(-1i, var_1.x), vec3<bool>(true, true, true)), u_input.a.x, Struct_1(vec4<f32>(-149f, -1098f, -140f, -820f), vec2<i32>(-18910i, var_1.x), vec3<bool>(true, true, true)), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(717f, -703f, 727f, 1020f), u_input.a.zz, vec3<bool>(true, true, false))), 1i)));
    let var_3 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b, 33265u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 19785u, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, u_input.b)) | ~vec4<u32>(13256u, 0u, 1u, u_input.b))), (vec4<u32>(~u_input.b, u_input.b, reverseBits(u_input.b), u_input.b | u_input.b) & _wgslsmith_mult_vec4_u32(~vec4<u32>(32393u, 27404u, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, 0u), vec4<u32>(u_input.b, u_input.b, 19179u, 4294967295u)))) ^ vec4<u32>(~firstLeadingBit(3380u), u_input.b, u_input.b << (u_input.b % 32u), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(35901u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2152f, 729f)) * 477f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1014f + -150f)), 1000f, -1472f)), ~min(_wgslsmith_sub_u32(11661u ^ var_3, ~47969u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-366f))), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(21955u, 0u)) & firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(36930u, var_3))), vec2<u32>(~firstLeadingBit(u_input.b), _wgslsmith_add_u32(14785u, ~var_3))));
}

