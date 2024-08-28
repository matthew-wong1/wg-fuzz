struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1381f, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(min(arg_2.x, -1688f))), _wgslsmith_f_op_vec4_f32(select(arg_2, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, 762f, 874f, arg_2.x), vec4<f32>(-674f, arg_2.x, arg_2.x, arg_2.x))), select(arg_1, vec4<bool>(arg_1.x, arg_0.x, false, true), vec4<bool>(arg_1.x, false, true, false)))), all(arg_0)))));
    let var_1 = Struct_1(arg_0.xx, reverseBits(countOneBits(-13554i)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_0.x, arg_2.x, 720f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-2800f, 350f, -1098f, -1713f), vec4<f32>(var_0.x, -227f, -2956f, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-arg_2);
    var var_2 = vec4<i32>(i32(-1i) * -39482i, -31570i, 2147483647i, -(i32(-1i) * -48413i) & _wgslsmith_sub_i32(~u_input.c.x, var_1.b & -1i)) ^ (vec4<i32>(-u_input.e >> (1u % 32u), _wgslsmith_div_i32(var_1.b, 11495i), _wgslsmith_mod_i32(~var_1.b, _wgslsmith_add_i32(u_input.e, u_input.c.x)), u_input.c.x) ^ u_input.c);
    return !(_wgslsmith_dot_vec2_u32(vec2<u32>(~6365u, select(42146u, 1u, true)), vec2<u32>(u_input.b, 39899u)) == _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 1u, 287u) & vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 40295u, 4294967295u), vec3<u32>(6916u, u_input.b, u_input.b))), ~_wgslsmith_add_vec3_u32(vec3<u32>(6198u, 1u, 0u), vec3<u32>(6448u, u_input.b, u_input.b))));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), (i32(-1i) * -1i) == max(-2147483647i, u_input.c.x)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, any(vec4<bool>(false, false, true, true)), false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true))), select(vec4<bool>(!select(false, false, false), true, select(true, true, true), true), vec4<bool>(func_3(vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), vec4<f32>(1000f, 806f, -1000f, -231f)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true, true | func_3(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), vec4<f32>(1000f, -623f, 687f, -1836f))), vec4<bool>(select(all(vec3<bool>(false, false, false)), true, true), func_3(vec3<bool>(true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<f32>(532f, -613f, 1103f, -848f)), false, ~u_input.b >= u_input.b)), vec4<bool>(!(func_3(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), vec4<f32>(-968f, -1787f, 247f, -1027f)) & true), true, select(select(true, any(vec3<bool>(true, false, false)), select(false, false, false)), true, !all(vec4<bool>(false, true, true, true))), any(vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(false, true)), true))));
    var_0 = select(!select(select(!vec4<bool>(false, var_0.x, false, true), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, false)), arg_0 <= 4294967295u), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), all(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(false, var_0.x, var_0.x, true), true))), select(select(vec4<bool>(!var_0.x, var_0.x | var_0.x, false, arg_0 > arg_0), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !var_0.x), vec4<bool>(!var_0.x, !var_0.x, u_input.c.x <= 10156i, select(true, false, var_0.x))), vec4<bool>(!var_0.x, !all(var_0.wyz), true, all(vec3<bool>(true, var_0.x, true))), _wgslsmith_clamp_i32(-1i, _wgslsmith_mod_i32(u_input.d, 15579i), countOneBits(0i)) != u_input.e), vec4<bool>(var_0.x, var_0.x, var_0.x, func_3(select(!vec3<bool>(var_0.x, var_0.x, true), !var_0.yyx, var_0.zwz), select(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, var_0.x, true, true), var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1474f, 1004f, -1487f, -619f) - vec4<f32>(-1000f, 1120f, 913f, -861f))))));
    var_0 = select(select(select(!(!vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, true, true)), true), vec4<bool>(select(true, true, func_3(vec3<bool>(false, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x), vec4<f32>(-119f, -707f, 699f, 1281f))), true, var_0.x, select(true, all(var_0.xw), var_0.x && var_0.x)), select(select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(false, var_0.x, false, var_0.x), true), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), false)), vec4<bool>(var_0.x, var_0.x, true, ~(0i & u_input.c.x) == -1i), var_0.x);
    let var_1 = Struct_2(firstLeadingBit(u_input.c), var_0.xwx, true, Struct_1(select(select(vec2<bool>(true, var_0.x), select(var_0.zy, vec2<bool>(true, true), true), true), !select(vec2<bool>(var_0.x, false), var_0.xy, var_0.zz), true || func_3(var_0.wzy, vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<f32>(-1000f, -1535f, -966f, 867f))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-31179i, u_input.e), u_input.c.xw) << (~23372u % 32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1353f, -1000f), vec2<f32>(-430f, -356f)))), vec2<f32>(_wgslsmith_f_op_f32(412f * 288f), -356f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, -367f))))), !select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, true), var_0.yz, var_0.wx), vec2<bool>(true, false)))));
    var var_2 = Struct_3(_wgslsmith_sub_u32(0u, u_input.b), -var_1.d.b, vec3<u32>(arg_0, arg_0, ~u_input.b), ~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(arg_0, 4294967295u)))));
    return u_input.c.zz;
}

fn func_1() -> bool {
    let var_0 = -(func_2(~(~26677u)) << (firstLeadingBit(select(reverseBits(vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 1u) ^ vec2<u32>(u_input.b, u_input.b), true)) % vec2<u32>(32u)));
    var var_1 = Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec3_i32(-vec3<i32>(~(-1i), 37571i ^ u_input.c.x, min(0i, -8625i)), vec3<i32>(-1i) * -select(u_input.c.xzx, vec3<i32>(8411i, var_0.x, u_input.c.x), false)));
    let var_2 = -2147483647i;
    let var_3 = Struct_3(0u, _wgslsmith_add_i32(func_2(0u).x, _wgslsmith_mod_i32(0i, var_1.b)), vec3<u32>(~u_input.b, 89428u | u_input.b, ~(~_wgslsmith_sub_u32(4294967295u, u_input.b))), ~(~(~vec2<u32>(1u, u_input.b))));
    var_1 = Struct_1(vec2<bool>(!any(select(var_1.a, var_1.a, false)), select(!var_1.a.x == var_1.a.x, false, !all(vec3<bool>(var_1.a.x, var_1.a.x, false)))), ~(-(1i & u_input.e)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(func_1(), false || !all(vec4<bool>(false, false, false, false))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-u_input.c.xyy, vec3<i32>(select(u_input.a, u_input.a, true), u_input.e, 20033i)), -2147483647i));
    var var_1 = var_0;
    var var_2 = false;
    let var_3 = !(!vec3<bool>(all(!vec4<bool>(false, true, var_0.a.x, var_0.a.x)), func_1(), var_1.a.x));
    var var_4 = u_input.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(reverseBits(6416u), abs(u_input.b | 128323u), abs(_wgslsmith_add_u32(1u, 30946u)), 45597u), -1i, vec3<i32>(var_1.b, abs(28046i), var_0.b) & firstLeadingBit(max(~vec3<i32>(-64815i, var_0.b, -30403i), _wgslsmith_sub_vec3_i32(u_input.c.wyw, u_input.c.zwx))), var_4.x, u_input.c);
}

