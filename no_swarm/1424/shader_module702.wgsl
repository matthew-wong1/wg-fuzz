struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    var var_0 = select(select(vec4<bool>(all(select(vec4<bool>(arg_2.b.x, true, arg_2.b.x, arg_3), vec4<bool>(arg_1.b.x, arg_1.b.x, true, true), false)), true & arg_1.b.x, arg_1.b.x, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 4294967295u) > abs(arg_0.x)), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_3, arg_2.b.x, arg_3, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(arg_3, false, arg_1.b.x, arg_2.b.x), vec4<bool>(arg_3, arg_1.b.x, false, true), vec4<bool>(arg_1.b.x, arg_3, arg_2.b.x, false)), vec4<bool>(arg_3, arg_2.b.x, arg_3, true)), vec4<bool>(!arg_2.b.x != (arg_2.b.x && false), any(vec3<bool>(true, false, false)), any(select(vec2<bool>(arg_3, false), vec2<bool>(arg_1.b.x, false), arg_2.b.yz)), all(select(vec4<bool>(arg_2.b.x, true, arg_3, arg_3), vec4<bool>(false, true, true, true), false)))), select(!vec4<bool>(true, select(arg_2.b.x, true, false), false, false), !select(!vec4<bool>(false, arg_3, true, false), !vec4<bool>(arg_3, arg_1.b.x, arg_1.b.x, false), arg_3 || arg_3), !(!(!vec4<bool>(false, true, arg_1.b.x, false)))), vec4<bool>(!(!(arg_2.b.x && false)), select(true, false, false), !(!arg_2.b.x), true));
    var_0 = select(!vec4<bool>(!any(vec4<bool>(arg_2.b.x, false, arg_1.b.x, arg_3)), arg_3, true, arg_1.b.x), vec4<bool>(false, arg_2.b.x, true, true), true);
    var_0 = vec4<bool>(all(!select(!vec2<bool>(false, var_0.x), arg_2.b.zx, arg_2.b.x)), true, arg_3, !(!(_wgslsmith_f_op_f32(ceil(arg_2.c)) > -1831f)));
    var var_1 = max(vec3<u32>(_wgslsmith_mult_u32(arg_0.x, arg_0.x), _wgslsmith_clamp_u32(~arg_0.x, ~arg_0.x, 1u) & ~arg_0.x, arg_0.x), ~vec3<u32>(arg_0.x, arg_0.x, 1u));
    return select(select(arg_1.b, !vec3<bool>(all(arg_2.b.yy), arg_2.c < -1942f, all(vec4<bool>(true, true, false, arg_2.b.x))), select(!vec3<bool>(true, arg_3, true), select(arg_2.b, vec3<bool>(arg_2.b.x, var_0.x, false), !arg_2.b.x), select(arg_2.b, !vec3<bool>(arg_2.b.x, false, false), vec3<bool>(true, true, true)))), select(select(select(var_0.wzw, !vec3<bool>(false, arg_2.b.x, var_0.x), true), select(select(var_0.zxy, vec3<bool>(arg_2.b.x, arg_2.b.x, var_0.x), arg_2.b.x), arg_1.b, var_0.xwx), arg_1.b.x), !(!select(var_0.zyy, arg_1.b, arg_3)), var_0.yzz), select(arg_1.b, vec3<bool>(false, true, true), vec3<bool>(arg_3, !(var_0.x & arg_3), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(vec4<bool>(arg_1.x, true, ((u_input.a >= arg_0.b.a) | false) & arg_2.b.x, !(!arg_2.b.x) | false), Struct_1(arg_2.a, !select(!vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, arg_2.b.x, true), arg_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-889f)))), any(!arg_0.a));
    var var_1 = !(!select(vec4<bool>(false | arg_1.x, func_3(vec2<u32>(4294967295u, 35928u), Struct_1(arg_0.b.a, vec3<bool>(false, true, true), 1098f), Struct_1(-37595i, arg_0.a.wwx, -214f), true).x, var_0.b.c == -364f, all(vec2<bool>(arg_1.x, arg_1.x))), vec4<bool>(true, false, any(arg_0.a.yy), any(var_0.a)), true && arg_0.c));
    var var_2 = vec2<i32>(-1i, ~(~(~28025i)));
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.b.c, -1274f), vec2<f32>(arg_2.c, -1000f), vec2<bool>(var_3.b.b.x, true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, -1419f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1238f, arg_2.c), vec2<f32>(562f, var_0.b.c))))), var_1.zz)))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec4<bool>(false, true, true, false), Struct_1(-2147483647i, vec3<bool>(true, false, true), -1249f), false), vec4<bool>(true, true, true, true), Struct_1(u_input.a, func_3(vec2<u32>(0u, 77762u), Struct_1(2147483647i, vec3<bool>(false, true, true), arg_1.x), Struct_1(4650i, vec3<bool>(false, true, true), -451f), false), arg_1.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -436f))))));
    let var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 53364i) ^ ~6822i, u_input.a | u_input.a, 2147483647i, u_input.a));
    var_0 = arg_2;
    var_0 = _wgslsmith_f_op_vec2_f32(arg_1.yy - arg_2);
    return vec4<bool>(true || any(vec3<bool>(any(vec3<bool>(false, true, true)), func_3(vec2<u32>(3612u, 8382u), Struct_1(0i, vec3<bool>(true, true, true), var_0.x), Struct_1(var_1.x, vec3<bool>(true, true, true), arg_2.x), true).x, -1i <= u_input.a)), any(func_3(~vec2<u32>(1u, 1u), Struct_1(_wgslsmith_sub_i32(var_1.x, -2147483647i), func_3(vec2<u32>(15206u, 0u), Struct_1(9287i, vec3<bool>(false, true, false), arg_2.x), Struct_1(var_1.x, vec3<bool>(false, true, true), -1604f), false), 286f), Struct_1(1i, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(arg_1.x - arg_1.x)), !all(vec3<bool>(false, true, true)))), all(vec4<bool>(true, true, !all(vec2<bool>(false, false)), true)), arg_2.x == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1315f, 1f))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec4<bool>(arg_2.a.x, arg_2.b.b.x, arg_2.b.b.x, true), Struct_1(-1i, arg_1.b.b, 323f), true), arg_1.a, arg_1.b))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.c), arg_2.b.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(arg_2.a, arg_2.b, false), vec4<bool>(false, true, arg_2.b.b.x, arg_1.a.x), arg_2.b)).x), arg_2.b.c))));
    var var_1 = Struct_2(!func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c) * _wgslsmith_f_op_f32(744f + var_0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.c, -1645f, 1643f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, arg_1.b.c)), var_0))), arg_2.b, true);
    let var_2 = arg_3.x;
    var_1 = arg_2;
    var_1 = arg_2;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~select(vec4<u32>(4294967295u, 5498u, 4294967295u, 3614u), vec4<u32>(4294967295u, 61275u, 59926u, 0u), vec4<bool>(false, false, false, true)), select(vec4<u32>(4294967295u, 0u, 1u, 248u), vec4<u32>(48315u, 4294967295u, 28951u, 0u), vec4<bool>(arg_0.b.x, true, false, arg_1.b.x)) >> (vec4<u32>(0u, 0u, 7170u, 4294967295u) % vec4<u32>(32u))), min(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), false)));
    var var_1 = vec3<f32>(1079f, arg_1.c, _wgslsmith_div_f32(693f, arg_1.c));
    let var_2 = func_5(min(vec3<u32>(_wgslsmith_add_u32(0u, 39036u), 15668u, var_0.x), var_0.zyw), Struct_2(func_2(_wgslsmith_f_op_f32(exp2(arg_1.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.c, var_1.x, 738f), vec3<f32>(arg_1.c, 1000f, -724f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, arg_0.c) - var_1.yz))), arg_0, arg_1.b.x), Struct_2(!(!func_2(1143f, vec3<f32>(357f, -1008f, arg_0.c), vec2<f32>(-1213f, arg_0.c))), arg_0, false), _wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, ~arg_0.a), select(_wgslsmith_mult_vec2_i32(vec2<i32>(21371i, u_input.a), -vec2<i32>(arg_1.a, 0i)), abs(~vec2<i32>(arg_0.a, u_input.a)), true)));
    let var_3 = firstLeadingBit(~abs(vec3<u32>(4294967295u, var_0.x, 1u) & var_0.wwz)) >> (reverseBits(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x | 69454u))) % vec3<u32>(32u));
    let var_4 = 0u;
    return func_5(var_3, Struct_2(vec4<bool>((var_2.a.x && true) & func_2(arg_0.c, vec3<f32>(arg_0.c, 1280f, -1675f), vec2<f32>(var_2.b.c, -775f)).x, ~1u < var_4, !arg_0.b.x, all(func_5(vec3<u32>(var_3.x, var_3.x, 5917u), var_2, var_2, vec2<i32>(arg_1.a, var_2.b.a)).b.b.yz)), Struct_1(u_input.a, !func_2(var_1.x, vec3<f32>(var_1.x, 719f, 817f), var_1.zx).zxy, -115f), any(!func_5(var_0.wxz, Struct_2(vec4<bool>(false, false, true, var_2.c), arg_1, var_2.c), var_2, vec2<i32>(u_input.a, u_input.a)).a)), Struct_2(vec4<bool>(_wgslsmith_add_u32(var_4, 1580u) >= 4294967295u, func_2(_wgslsmith_f_op_f32(1235f * arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_1.c, arg_1.c)), _wgslsmith_f_op_vec2_f32(step(var_1.zz, var_1.xz))).x, _wgslsmith_div_f32(var_1.x, -527f) <= -801f, true), func_5(_wgslsmith_add_vec3_u32(var_3, ~var_0.wzw), var_2, Struct_2(!vec4<bool>(false, true, false, arg_0.b.x), arg_0, true), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 7655i), vec2<i32>(-34424i, arg_1.a), vec2<i32>(u_input.a, 32323i)), vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(var_2.b.a, var_2.b.a)))).b, func_3(var_0.wx, Struct_1(0i, select(arg_1.b, var_2.a.zww, arg_0.b.x), arg_1.c), arg_1, !any(arg_1.b)).x), min(reverseBits(vec2<i32>(arg_0.a, arg_1.a) << (vec2<u32>(10115u, var_0.x) % vec2<u32>(32u))), vec2<i32>(-2147483647i, 1i)) ^ vec2<i32>(abs(-59096i), firstTrailingBit(_wgslsmith_mult_i32(1i, 32275i))));
}

fn func_6(arg_0: Struct_2) -> i32 {
    return _wgslsmith_mod_i32(firstLeadingBit(-firstTrailingBit(u_input.a)) >> (~39807u % 32u), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_6(func_1(Struct_1(u_input.a | u_input.a, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), _wgslsmith_f_op_f32(333f * -1210f)), Struct_1(u_input.a, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(ceil(-977f))))), select(!func_5(~vec3<u32>(4294967295u, 0u, 27271u), Struct_2(vec4<bool>(true, false, false, false), Struct_1(u_input.a, vec3<bool>(false, false, false), 284f), true), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-1862i, vec3<bool>(true, true, false), -1000f), false), vec2<i32>(20065i, -2147483647i)).a.xxz, !func_5(~vec3<u32>(27856u, 17566u, 9623u), Struct_2(vec4<bool>(true, true, false, true), Struct_1(15923i, vec3<bool>(false, false, true), 181f), true), Struct_2(vec4<bool>(true, true, true, false), Struct_1(u_input.a, vec3<bool>(true, true, false), -791f), true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a))).b.b, all(vec2<bool>(true, u_input.a < -1i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-577f * 694f), _wgslsmith_f_op_f32(step(336f, _wgslsmith_f_op_f32(step(-996f, 143f)))))));
    var var_1 = !select(!vec2<bool>(var_0.b.x, var_0.b.x), func_1(var_0, func_1(var_0, var_0).b).b.b.xy, var_0.b.x);
    var_1 = vec2<bool>(!(!var_0.b.x), !(!select(var_0.a <= 3461i, !var_0.b.x, any(vec4<bool>(true, false, false, var_0.b.x)))));
    var_1 = func_1(func_5(~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(19196u, 4294967295u, 4294967295u), vec3<u32>(1u, 30875u, 37102u)), ~vec3<u32>(13159u, 4294967295u, 4294967295u), ~vec3<u32>(1u, 58639u, 47016u)), func_1(var_0, var_0), Struct_2(vec4<bool>(var_1.x | var_0.b.x, false, true, false), Struct_1(1i, vec3<bool>(false, true, true), var_0.c), func_5(vec3<u32>(1u, 1u, 1u), func_5(vec3<u32>(31900u, 4294967295u, 10377u), Struct_2(vec4<bool>(var_1.x, false, var_0.b.x, var_0.b.x), Struct_1(2147483647i, vec3<bool>(var_1.x, var_0.b.x, false), var_0.c), false), Struct_2(vec4<bool>(false, var_1.x, var_0.b.x, true), Struct_1(2147483647i, vec3<bool>(false, var_0.b.x, false), -948f), true), vec2<i32>(u_input.a, -16290i)), func_5(vec3<u32>(0u, 4294967295u, 5891u), Struct_2(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), Struct_1(-14552i, vec3<bool>(false, var_1.x, true), var_0.c), var_1.x), Struct_2(vec4<bool>(false, true, true, var_0.b.x), Struct_1(2147483647i, vec3<bool>(var_1.x, var_1.x, false), 1139f), true), vec2<i32>(43303i, u_input.a)), vec2<i32>(u_input.a, var_0.a)).a.x), ~firstTrailingBit(abs(vec2<i32>(-52825i, var_0.a)))).b, Struct_1(_wgslsmith_sub_i32(firstTrailingBit(9866i), i32(-1i) * -2147483647i), var_0.b, 1f)).a.xz;
    var var_2 = _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_clamp_u32(94212u, 1u, 2947u), max(4294967295u, 0u), _wgslsmith_sub_u32(4294967295u, 1u))) >> ((vec3<u32>(select(95538u, 33503u, true), countOneBits(1u), firstTrailingBit(4294967295u)) | _wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 1u, 0u)), ~vec3<u32>(0u, 4294967295u, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(36500u, 0u, 75744u), vec3<u32>(1u, 16541u, 29053u)))) % vec3<u32>(32u)), ~(~(~(~vec3<u32>(1u, 4294967295u, 1u)))));
    let var_3 = func_6(func_1(var_0, func_5(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_2.x, var_2.x, var_2.x)), ~vec3<u32>(var_2.x, 5291u, 1u)), Struct_2(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), Struct_1(u_input.a, vec3<bool>(var_0.b.x, true, var_1.x), 285f), var_0.b.x), func_1(func_5(vec3<u32>(var_2.x, var_2.x, var_2.x), Struct_2(vec4<bool>(false, var_1.x, var_0.b.x, false), Struct_1(2147483647i, vec3<bool>(var_1.x, true, true), var_0.c), var_1.x), Struct_2(vec4<bool>(true, var_1.x, var_0.b.x, true), Struct_1(-8614i, vec3<bool>(var_0.b.x, var_1.x, true), 173f), false), vec2<i32>(21186i, u_input.a)).b, func_5(vec3<u32>(0u, var_2.x, var_2.x), Struct_2(vec4<bool>(false, false, true, var_1.x), Struct_1(0i, var_0.b, var_0.c), var_1.x), Struct_2(vec4<bool>(var_0.b.x, false, var_0.b.x, true), Struct_1(u_input.a, vec3<bool>(true, false, true), var_0.c), false), vec2<i32>(74549i, u_input.a)).b), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(u_input.a, u_input.a))).b));
    let var_4 = ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, var_3), -vec2<i32>(1i, -var_0.a), firstTrailingBit(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(var_3, var_0.a)), vec2<i32>(-5073i, u_input.a) << (vec2<u32>(var_2.x, var_2.x) % vec2<u32>(32u)))));
    var_1 = !(!var_0.b.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(select(var_4, var_4, !vec2<bool>(var_0.b.x, var_0.b.x)), select(vec2<i32>(-1i, var_0.a), var_4 >> (vec2<u32>(var_2.x, 0u) % vec2<u32>(32u)), false)), _wgslsmith_sub_i32(var_4.x, var_3), var_3), vec3<u32>(abs(abs(0u)), firstTrailingBit(var_2.x), _wgslsmith_dot_vec3_u32(select(abs(vec3<u32>(var_2.x, 16047u, var_2.x)), abs(vec3<u32>(var_2.x, 1u, var_2.x)), vec3<bool>(var_0.b.x, var_0.b.x, true)), reverseBits(vec3<u32>(var_2.x, var_2.x, var_2.x)))));
}

