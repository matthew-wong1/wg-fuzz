struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = ~(~_wgslsmith_div_u32(1u << (_wgslsmith_mod_u32(102477u, arg_0.x) % 32u), _wgslsmith_dot_vec3_u32(arg_0, ~vec3<u32>(arg_0.x, arg_0.x, 4294967295u))));
    var_0 = ~11491u;
    var var_1 = Struct_1(countOneBits(~(~1u)), -vec4<i32>(1i, 1i, 1i, 1i), arg_0.xy);
    var_0 = ~0u;
    let var_2 = ~(~firstTrailingBit(u_input.d)) ^ ~u_input.d;
    return var_1.b.zx;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1488f), 1140f));
    let var_1 = Struct_5(max(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_3.b.d.c.x), vec2<u32>(arg_2.c.c.x, arg_2.c.a))), abs(arg_1.b), arg_3.b.d.c.x, all(select(!select(vec2<bool>(true, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), arg_2.a), vec2<bool>(!arg_2.a, all(vec3<bool>(true, false, true))), _wgslsmith_sub_u32(28981u, 23409u) == ~arg_2.c.c.x)), arg_3.b);
    var var_2 = Struct_5(~arg_0, ~arg_3.b.d.b, _wgslsmith_dot_vec2_u32(~arg_2.c.c ^ ~vec2<u32>(arg_0, 1u), vec2<u32>(0u, select(~49218u, 1u, true))), -365f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f + _wgslsmith_f_op_f32(min(var_1.e.c, arg_3.b.c))) * var_1.e.c), Struct_2(_wgslsmith_add_vec2_i32(var_1.e.a, abs(_wgslsmith_add_vec2_i32(arg_2.b, arg_3.b.d.b.zy))), arg_1.c.x, -1571f, arg_2.c));
    let var_3 = ~(~(0u | (101010u | (arg_2.c.c.x & 19263u))));
    var var_4 = select(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2.a, true), vec3<bool>(var_2.d, arg_2.a, var_1.d)), select(vec3<bool>(false, arg_3.a, arg_3.a), vec3<bool>(arg_3.a, true, false), var_1.d), all(vec2<bool>(true, var_2.d))), vec3<bool>(arg_2.a, var_2.d, _wgslsmith_f_op_f32(abs(var_1.e.c)) < 1341f), true), select(select(select(!vec3<bool>(true, false, arg_3.a), select(vec3<bool>(false, false, var_2.d), vec3<bool>(arg_2.a, var_2.d, arg_2.a), false), select(vec3<bool>(false, var_2.d, arg_3.a), vec3<bool>(true, true, arg_3.a), vec3<bool>(false, false, var_1.d))), !(!vec3<bool>(arg_2.a, var_2.d, true)), select(vec3<bool>(arg_3.a, true, arg_3.a), select(vec3<bool>(var_2.d, true, arg_3.a), vec3<bool>(arg_2.a, true, true), vec3<bool>(true, arg_2.a, arg_3.a)), var_1.d)), vec3<bool>(true, all(vec4<bool>(false, true, var_1.d, true)), arg_2.a), vec3<bool>(any(vec2<bool>(var_2.d, arg_2.a)), false, var_2.d)), vec3<bool>(all(vec2<bool>(true, !var_1.d)), false, all(!select(vec3<bool>(var_1.d, var_1.d, true), vec3<bool>(arg_2.a, var_2.d, true), vec3<bool>(true, arg_3.a, var_1.d)))));
    return all(vec4<bool>(true, true, true, true));
}

fn func_2(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e.c, 112f), vec2<f32>(arg_0.e.c, arg_0.e.c), vec2<bool>(true, arg_0.d)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1726f, -664f), vec2<f32>(arg_0.e.c, arg_0.e.c)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1863f - 191f), _wgslsmith_f_op_f32(-888f * -2595f)), vec2<f32>(_wgslsmith_f_op_f32(-482f - -751f), _wgslsmith_f_op_f32(trunc(-1184f))))), arg_0.d))));
    var var_1 = arg_0.d;
    var_1 = func_4(0u, Struct_1(~_wgslsmith_add_u32(~u_input.b.x, 4294967295u), arg_0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, 32049u), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_0.c), abs(arg_0.a)))), Struct_3(false, func_3(u_input.d.yzy, true, _wgslsmith_f_op_f32(-var_0.x)), Struct_1(u_input.a.x, vec4<i32>(arg_0.e.a.x, 2147483647i, arg_0.b.x, arg_0.b.x) & arg_0.b, arg_0.e.d.c)), Struct_4(!(!arg_0.d), Struct_2(arg_0.b.ww, ~(~22074u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.e.c)), _wgslsmith_f_op_f32(min(arg_0.e.c, var_0.x))), Struct_1(_wgslsmith_mult_u32(65946u, 23345u), select(vec4<i32>(1i, arg_0.e.d.b.x, -1i, arg_0.b.x), vec4<i32>(-1i, arg_0.e.d.b.x, arg_0.e.d.b.x, -2147483647i), vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d)), vec2<u32>(4294967295u, 66570u))), arg_0.e.c));
    let var_2 = arg_0.e;
    let var_3 = arg_0.e.c;
    return !(!(!(!select(vec2<bool>(true, arg_0.d), vec2<bool>(true, true), false))));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = vec4<bool>(arg_0.a || false, arg_1, false, true & arg_1);
    let var_1 = vec3<i32>(arg_0.c.b.x, abs(_wgslsmith_add_i32(arg_0.c.b.x, 41983i)), arg_0.c.b.x) ^ (_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.c.b.zzw, arg_0.c.b.wxy) & vec3<i32>(arg_0.b.x, 0i, -43292i), countOneBits(-arg_0.c.b.wwx)) >> (vec3<u32>(_wgslsmith_add_u32(arg_0.c.c.x, ~u_input.b.x), 22587u, firstTrailingBit(4294967295u)) % vec3<u32>(32u)));
    var var_2 = !(!select(select(vec2<bool>(false, arg_1), func_2(Struct_5(33216u, arg_0.c.b, arg_0.c.c.x, var_0.x, Struct_2(vec2<i32>(var_1.x, arg_0.c.b.x), 1u, 604f, arg_0.c))), select(vec2<bool>(var_0.x, var_0.x), var_0.wx, vec2<bool>(arg_1, true))), var_0.xw, var_0.yw));
    var_2 = select(vec2<bool>(all(var_0.zz), true), !vec2<bool>(true, func_4(arg_0.c.c.x, Struct_1(0u, vec4<i32>(arg_0.b.x, 43250i, -2147483647i, var_1.x), vec2<u32>(u_input.b.x, u_input.b.x)), arg_0, Struct_4(arg_0.a, Struct_2(vec2<i32>(var_1.x, 2147483647i), 0u, -1000f, arg_0.c), 408f))), arg_0.a);
    let var_3 = arg_0.c.c;
    return 89855u;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_2.c < arg_2.c, ~arg_2.d.b.ww, arg_3.c);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1788f - arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-348f))))), arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) + _wgslsmith_f_op_f32(sign(1978f))) != arg_2.c)) - -621f);
    var var_2 = arg_0.c.c.x;
    var_2 = ~(~(~(~1u)));
    return arg_3;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3.c.x;
    var_0 = _wgslsmith_add_u32(11254u, _wgslsmith_add_u32(~select(arg_3.a, 13500u, arg_0.a) >> (u_input.b.x % 32u), ~1u));
    var var_1 = ~(~_wgslsmith_add_i32(-arg_0.c.b.x, 2147483647i));
    var_0 = ~arg_3.c.x & max(36582u, 5196u >> ((~4294967295u ^ func_1(arg_0, arg_0.a)) % 32u));
    var var_2 = -735f;
    return func_5(arg_0, vec3<u32>(~7755u, ~arg_0.c.a | 20773u, ~u_input.a.x), Struct_2(arg_0.b, _wgslsmith_add_u32(~u_input.b.x, 4294967295u), 596f, func_5(Struct_3(false, vec2<i32>(-1i, -24275i), Struct_1(u_input.b.x, arg_0.c.b, vec2<u32>(u_input.c, arg_3.c.x))), vec3<u32>(1u, 1u, arg_3.a), Struct_2(-arg_0.c.b.xy, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3), func_5(Struct_3(arg_0.a, vec2<i32>(arg_0.b.x, 24108i), Struct_1(4294967295u, arg_0.c.b, arg_3.c)), vec3<u32>(arg_3.c.x, 9243u, arg_0.c.c.x) ^ vec3<u32>(arg_3.c.x, u_input.c, 24671u), Struct_2(arg_3.b.xy, 0u, -422f, Struct_1(1u, vec4<i32>(0i, -15884i, arg_3.b.x, -51603i), vec2<u32>(arg_0.c.c.x, 35494u))), func_5(arg_0, u_input.d.wzz, Struct_2(vec2<i32>(41738i, arg_3.b.x), u_input.c, -2381f, arg_0.c), Struct_3(true, arg_3.b.ww, Struct_1(4294967295u, arg_3.b, vec2<u32>(arg_0.c.c.x, arg_3.a)))))).c), Struct_3(!(_wgslsmith_f_op_f32(-arg_2.x) == _wgslsmith_f_op_f32(f32(-1f) * -146f)), arg_0.c.b.xy, Struct_1(11807u, arg_0.c.b, vec2<u32>(~0u, arg_0.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(all(vec2<bool>(true, true)) | true)));
    let var_1 = func_6(func_5(Struct_3(all(vec3<bool>(var_0, true, true)), _wgslsmith_div_vec2_i32(-vec2<i32>(4854i, -1i), reverseBits(vec2<i32>(2147483647i, -47360i))), Struct_1(~62114u, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec2_u32(u_input.a.zy, u_input.d.yx, vec2<u32>(16494u, 1u)))), ~vec3<u32>(~27662u, u_input.a.x, func_1(Struct_3(true, vec2<i32>(-20816i, 2184i), Struct_1(u_input.d.x, vec4<i32>(21120i, 1i, -1i, 1392i), vec2<u32>(u_input.a.x, u_input.d.x))), true)), Struct_2(vec2<i32>(-1i) * -vec2<i32>(-32486i, 0i), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1913f), Struct_1(_wgslsmith_div_u32(u_input.a.x, 45918u), vec4<i32>(1i, -29251i, 0i, 11106i) >> (u_input.d % vec4<u32>(32u)), u_input.a.zy)), Struct_3(all(select(vec2<bool>(false, var_0), vec2<bool>(false, false), var_0)), func_3(u_input.d.zzy, true, -823f), Struct_1(~u_input.d.x, vec4<i32>(1i, 1i, 1i, 1i), ~u_input.d.zz))), select(!vec4<bool>(var_0, func_5(Struct_3(var_0, vec2<i32>(-24602i, -1i), Struct_1(4294967295u, vec4<i32>(-29519i, 5150i, 3773i, -46172i), vec2<u32>(u_input.d.x, u_input.a.x))), u_input.a, Struct_2(vec2<i32>(-36345i, -32886i), u_input.a.x, -455f, Struct_1(u_input.c, vec4<i32>(30443i, 26627i, -1i, -2147483647i), vec2<u32>(u_input.a.x, 33252u))), Struct_3(true, vec2<i32>(-1i, -15288i), Struct_1(1u, vec4<i32>(1i, -1i, -1134i, 2147483647i), u_input.b))).a, var_0 || false, all(vec4<bool>(var_0, false, true, var_0))), select(select(select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(true, false, var_0, var_0), true), vec4<bool>(true, true, true, true), vec4<bool>(true, var_0, var_0, false)), !vec4<bool>(false, var_0, var_0, true), select(select(vec4<bool>(false, false, true, var_0), vec4<bool>(var_0, var_0, var_0, true), var_0), vec4<bool>(var_0, var_0, var_0, false), var_0 & var_0)), !var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(922f, 658f, -684f, 1346f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, 714f, 226f, -127f))))), func_5(Struct_3(var_0, func_3(u_input.a & u_input.d.yzw, u_input.c != u_input.a.x, 506f), Struct_1(15056u, firstTrailingBit(vec4<i32>(82294i, 0i, -35749i, 36841i)), vec2<u32>(u_input.d.x, u_input.c))), vec3<u32>(u_input.a.x, 1u, ~u_input.b.x) << (u_input.a % vec3<u32>(32u)), Struct_2(max(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(2147483647i, -24175i)), vec2<i32>(-3397i, 17183i)), ~23106u, _wgslsmith_f_op_f32(abs(110f)), func_5(Struct_3(var_0, vec2<i32>(0i, -1i), Struct_1(u_input.d.x, vec4<i32>(6239i, -28885i, -37848i, 39727i), vec2<u32>(34520u, u_input.a.x))), ~u_input.a, Struct_2(vec2<i32>(-21180i, 1i), 13896u, 2739f, Struct_1(u_input.d.x, vec4<i32>(22910i, -2147483647i, -29338i, -26025i), vec2<u32>(30446u, u_input.c))), func_5(Struct_3(var_0, vec2<i32>(-24266i, 1i), Struct_1(1u, vec4<i32>(1i, 10200i, 5008i, 15805i), vec2<u32>(u_input.a.x, u_input.c))), vec3<u32>(u_input.b.x, 25152u, 7806u), Struct_2(vec2<i32>(-14308i, 50621i), u_input.c, 1458f, Struct_1(2192u, vec4<i32>(-1i, -35180i, 70734i, -1i), u_input.d.zw)), Struct_3(var_0, vec2<i32>(-5320i, -2147483647i), Struct_1(u_input.c, vec4<i32>(42777i, 26227i, 0i, -2147483647i), vec2<u32>(u_input.a.x, u_input.d.x))))).c), func_5(func_5(func_5(Struct_3(var_0, vec2<i32>(-41217i, 22843i), Struct_1(u_input.b.x, vec4<i32>(19842i, -21597i, -1i, 41893i), vec2<u32>(12639u, 520u))), u_input.d.yyy, Struct_2(vec2<i32>(15756i, 9623i), 4294967295u, -303f, Struct_1(u_input.d.x, vec4<i32>(-1i, 1i, 1i, 1i), vec2<u32>(4294967295u, 1u))), Struct_3(true, vec2<i32>(1i, -1i), Struct_1(4018u, vec4<i32>(0i, 1i, -2147483647i, 2147483647i), u_input.d.yz))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, u_input.a.x), u_input.a), Struct_2(vec2<i32>(-37848i, -2147483647i), 6021u, -1297f, Struct_1(u_input.a.x, vec4<i32>(16927i, -2194i, -1i, 2147483647i), vec2<u32>(4294967295u, u_input.d.x))), Struct_3(var_0, vec2<i32>(-1i, 0i), Struct_1(u_input.c, vec4<i32>(-5221i, -19177i, 20726i, -2147483647i), vec2<u32>(u_input.c, 4294967295u)))), ~u_input.d.wxz, Struct_2(~vec2<i32>(-393i, 1i), u_input.a.x, _wgslsmith_f_op_f32(round(1144f)), func_5(Struct_3(var_0, vec2<i32>(-2147483647i, 0i), Struct_1(40803u, vec4<i32>(-15782i, 0i, 28107i, -18084i), u_input.d.wz)), u_input.d.wxx, Struct_2(vec2<i32>(-64412i, -33855i), 13566u, -184f, Struct_1(1u, vec4<i32>(2147483647i, 3593i, 0i, 2147483647i), vec2<u32>(0u, u_input.c))), Struct_3(var_0, vec2<i32>(-1i, -6118i), Struct_1(u_input.c, vec4<i32>(2147483647i, -2147483647i, 10600i, -2147483647i), u_input.a.xx))).c), func_5(Struct_3(true, vec2<i32>(-17575i, -44585i), Struct_1(4294967295u, vec4<i32>(2147483647i, -1i, 2147483647i, 0i), u_input.a.yz)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.c), u_input.d.wyx), Struct_2(vec2<i32>(0i, 0i), 1u, 1218f, Struct_1(0u, vec4<i32>(-14034i, 14916i, -2147483647i, 0i), vec2<u32>(u_input.d.x, 4294967295u))), Struct_3(var_0, vec2<i32>(-2147483647i, 0i), Struct_1(5198u, vec4<i32>(1i, -2147483647i, 0i, 42187i), u_input.a.yz))))).c);
    let var_2 = Struct_4(var_1.a, Struct_2(var_1.b, 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-248f * -520f), _wgslsmith_f_op_f32(min(-1000f, -929f)))), func_6(var_1, select(select(vec4<bool>(false, var_1.a, var_0, var_0), vec4<bool>(true, false, var_1.a, var_0), false), vec4<bool>(true, var_0, true, var_1.a), !var_1.a), vec4<f32>(-1416f, _wgslsmith_f_op_f32(floor(399f)), _wgslsmith_f_op_f32(f32(-1f) * -1566f), _wgslsmith_f_op_f32(sign(105f))), func_6(Struct_3(var_0, var_1.c.b.yw, var_1.c), !vec4<bool>(true, var_1.a, var_0, var_1.a), vec4<f32>(625f, -785f, 3572f, -224f), var_1.c).c).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-637f, _wgslsmith_f_op_f32(step(655f, -1000f)), var_0)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-285f)) * _wgslsmith_div_f32(-1560f, -2065f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f))))));
    var var_3 = 32409i;
    let var_4 = 2031f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-751f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-569f)) * -1754f))), var_2.b.c), -(~_wgslsmith_mod_i32(select(1i, var_1.b.x, var_0), reverseBits(-1i))));
}

