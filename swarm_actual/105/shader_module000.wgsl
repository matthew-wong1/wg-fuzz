struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> vec2<u32> {
    let var_0 = arg_2.c.b.x;
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(max(16075i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, _wgslsmith_div_i32(u_input.b, u_input.b), 47175i & arg_2.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -47910i, 2147483647i, 0i), reverseBits(vec4<i32>(u_input.b, -5784i, 2147483647i, 0i)))), -arg_2.d.x), vec3<i32>(arg_2.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_2.d.x), select(0i, arg_2.d.x, arg_2.c.d), arg_2.d.x | arg_2.d.x), vec3<i32>(arg_2.d.x, firstLeadingBit(arg_2.d.x), -43649i)), ~arg_2.d.x));
    var var_2 = u_input.a;
    var var_3 = ~128970u;
    return _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.c.c, u_input.a), arg_2.c.e), _wgslsmith_div_u32(~36236u, ~113516u)) << (arg_2.c.e.zx % vec2<u32>(32u)), abs(_wgslsmith_add_vec2_u32(~arg_2.c.e.yx, max(vec2<u32>(u_input.a, 67988u), vec2<u32>(6873u, arg_2.c.c))) | vec2<u32>(arg_2.c.c, 0u << (arg_2.c.c % 32u))));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(208f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) * _wgslsmith_f_op_f32(floor(-587f))))))));
    let var_2 = -158f;
    let var_3 = Struct_3(vec2<u32>(u_input.a, 0u), Struct_1(-494f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2334f, var_2, -2350f, 1374f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-815f, 764f, -908f, -738f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(461f, -1511f, var_2, var_2), vec4<f32>(235f, var_2, 354f, 1583f), vec4<bool>(var_0.e.x, arg_1.e.x, var_0.e.x, false))))), ~(~u_input.a), (!var_0.e.x & true) & var_0.e.x, ~abs(~vec3<u32>(arg_1.a, 98406u, 9253u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, -160f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, 782f) - vec2<f32>(var_2, var_2))))))), vec3<bool>(true || (var_2 < _wgslsmith_f_op_f32(min(1221f, 885f))), true, false), Struct_1(-283f, vec4<f32>(var_2, 550f, _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(floor(-311f)))), _wgslsmith_f_op_f32(round(var_2))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) != var_2, abs(select(vec3<u32>(39683u, 68561u, 4294967295u), vec3<u32>(4294967295u, 0u, arg_1.c.x), arg_1.e.x) & (vec3<u32>(1u, 0u, 4500u) | vec3<u32>(0u, var_0.a, 4294967295u)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_3.e.b.x, var_3.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_3.b.b.wwx, var_3.b.b.wyy, vec3<bool>(var_0.e.x, false, arg_1.e.x))) * var_3.b.b.xzz)));
    return select(select(!vec4<bool>(var_0.e.x, arg_1.e.x, true, !var_3.e.d), !(!(!vec4<bool>(var_0.e.x, true, false, var_0.e.x))), !var_3.d.x), !select(!(!vec4<bool>(true, var_3.e.d, false, true)), select(!vec4<bool>(var_0.e.x, arg_1.e.x, var_0.e.x, arg_1.e.x), !vec4<bool>(true, true, arg_1.e.x, true), 0u < var_3.e.c), !(!vec4<bool>(false, arg_1.e.x, arg_1.e.x, var_3.b.d))), !vec4<bool>(true, var_3.b.d, any(!var_3.d.yz), var_3.d.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_4 {
    var var_0 = vec4<bool>(arg_0.x && select(all(arg_0.yxx) || true, ~29827u > _wgslsmith_add_u32(4294967295u, arg_1), false), true, !(!arg_0.x), false);
    var var_1 = Struct_5(select(arg_0.zxz, vec3<bool>(!arg_3.d, false != select(true, arg_0.x, true), !(!arg_0.x)), var_0.x), func_4(-(~(~2147483647i)), Struct_4(~4294967295u, Struct_2(vec3<i32>(33500i, 2147483647i, 36462i) & vec3<i32>(58609i, arg_2, u_input.b)), abs(func_3(1239f, -2227f, Struct_5(vec3<bool>(false, arg_3.d, false), arg_0, Struct_1(172f, arg_3.b, arg_1, arg_0.x, vec3<u32>(14849u, u_input.a, arg_3.c)), vec2<i32>(18736i, u_input.b)))), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-16432i, 2147483647i, -21940i))), select(var_0.zx, vec2<bool>(true, true), !arg_0.x))), Struct_1(_wgslsmith_f_op_f32(min(arg_3.a, 1774f)), arg_3.b, 0u, var_0.x, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.e.x, 1u, arg_3.e.x), vec3<u32>(0u, 4294967295u, 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4293u, arg_1), vec3<u32>(4294967295u, arg_3.c, arg_3.e.x))), arg_1, firstLeadingBit(~1u))), select(vec2<i32>(reverseBits(-8128i), ~(-40875i)) << (abs(_wgslsmith_clamp_vec2_u32(arg_3.e.xy, arg_3.e.zy, vec2<u32>(11017u, 4896u))) % vec2<u32>(32u)), -(vec2<i32>(-49025i, u_input.b) >> (_wgslsmith_mult_vec2_u32(arg_3.e.xz, arg_3.e.xz) % vec2<u32>(32u))), vec2<bool>(!arg_3.d, true)));
    var var_2 = Struct_5(var_0.wzy, var_1.b, var_1.c, -(~var_1.d));
    let var_3 = vec3<u32>(var_2.c.e.x, ~u_input.a, ~0u);
    let var_4 = countOneBits(0u);
    return Struct_4(14466u, Struct_2(-vec3<i32>(~var_1.d.x, -2147483647i, var_2.d.x)), select(vec2<u32>(~_wgslsmith_mod_u32(1u, var_2.c.c), 1u), vec2<u32>(~(~u_input.a), ~var_2.c.e.x), all(func_4(-46833i, Struct_4(6229u, Struct_2(vec3<i32>(40526i, var_1.d.x, 1i)), var_1.c.e.xz, Struct_2(vec3<i32>(var_2.d.x, var_1.d.x, var_1.d.x)), vec2<bool>(true, false))).ww)), Struct_2(vec3<i32>(~1i ^ (var_2.d.x | -19627i), _wgslsmith_div_i32(var_1.d.x, -var_1.d.x), firstLeadingBit(-var_1.d.x))), var_2.a.yz);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_4 {
    var var_0 = u_input.a ^ (max(arg_2.x, ~(40365u ^ arg_2.x)) ^ u_input.a);
    let var_1 = vec2<u32>(countOneBits(~(~(~arg_2.x))), ~(~u_input.a));
    var_0 = _wgslsmith_dot_vec3_u32(arg_2.zzw, ~(_wgslsmith_div_vec3_u32(vec3<u32>(12593u, arg_2.x, var_1.x), vec3<u32>(4294967295u, 10541u, arg_2.x)) | _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 27190u, u_input.a), select(arg_2.wxx, vec3<u32>(u_input.a, u_input.a, 4294967295u), false))));
    var var_2 = func_2(!(!(!(!vec4<bool>(false, true, false, arg_0)))), 19173u, 2147483647i & ~u_input.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1778f) * 1907f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2065f), _wgslsmith_f_op_f32(abs(322f))), _wgslsmith_f_op_f32(ceil(445f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-944f, 897f)), 1f), 4294967295u, true, ~arg_2.wwx));
    let var_3 = vec2<i32>(~select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.a.x, -2147483647i, -9951i, 0i) ^ vec4<i32>(8167i, -1i, u_input.b, -1i), vec4<i32>(var_2.b.a.x, -1i, u_input.b, var_2.b.a.x) << (vec4<u32>(68448u, 59720u, u_input.a, u_input.a) % vec4<u32>(32u))), arg_1.x & 1i, -17942i != select(u_input.b, 0i, true)), _wgslsmith_dot_vec2_i32(-var_2.d.a.yz, countOneBits(vec2<i32>(arg_1.x, -6496i) & (vec2<i32>(arg_1.x, 13610i) | vec2<i32>(34799i, var_2.b.a.x)))));
    return func_2(func_4(-2147483647i, func_2(select(!vec4<bool>(arg_0, false, false, var_2.e.x), vec4<bool>(var_2.e.x, false, false, false), true), var_1.x, -2147483647i, Struct_1(_wgslsmith_div_f32(290f, 787f), vec4<f32>(321f, -1718f, -263f, 404f), 1u, !arg_0, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 69338u), vec3<u32>(var_1.x, 5622u, u_input.a), arg_2.xxz)))), 0u, ~func_2(!(!vec4<bool>(arg_0, var_2.e.x, true, true)), ~(~u_input.a), -25403i, Struct_1(_wgslsmith_f_op_f32(round(564f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-494f, -1026f, 973f, 183f) - vec4<f32>(-1340f, 453f, -582f, 120f)), 4294967295u, all(var_2.e), _wgslsmith_div_vec3_u32(arg_2.yzx, vec3<u32>(18463u, 23417u, arg_2.x)))).d.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1378f, 621f)) - _wgslsmith_f_op_f32(min(-1000f, -121f))) * _wgslsmith_div_f32(-1890f, _wgslsmith_f_op_f32(max(-146f, -154f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1155f, -499f, -548f, 1836f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(777f, -788f, -447f, -2292f) - vec4<f32>(365f, -583f, 860f, -882f))))), ~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(21043u, 12788u)), all(func_4(10291i << (0u % 32u), Struct_4(61566u, var_2.b, vec2<u32>(var_2.c.x, u_input.a), Struct_2(vec3<i32>(2147483647i, 0i, var_2.b.a.x)), vec2<bool>(false, arg_0)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~40859u, ~81857u, firstLeadingBit(4294967295u)), (vec3<u32>(arg_2.x, var_2.a, var_1.x) | vec3<u32>(1u, 5994u, 50049u)) >> (arg_2.xzy % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(350f - _wgslsmith_f_op_f32(1358f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1084f * -768f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-592f)))))));
    let var_1 = func_1(true, max(-vec3<i32>(-1i, u_input.b, u_input.b), -vec3<i32>(u_input.b, 0i, 1i)) | (vec3<i32>(u_input.b, _wgslsmith_mod_i32(20374i, u_input.b), u_input.b) >> ((~vec3<u32>(28951u, 25297u, u_input.a) << (~vec3<u32>(23979u, u_input.a, 1360u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<u32>(~u_input.a, u_input.a, 0u, max(u_input.a, _wgslsmith_sub_u32(~u_input.a, ~8708u))));
    var var_2 = Struct_3(vec2<u32>(~var_1.a, 37363u), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) - _wgslsmith_div_f32(365f, var_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 2160f, -715f, -1000f) - vec4<f32>(var_0, 792f, var_0, 137f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-469f, var_0, var_0, var_0))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1061f, 1012f, var_0)))), u_input.a, !func_2(!vec4<bool>(false, false, var_1.e.x, var_1.e.x), u_input.a, var_1.b.a.x >> (var_1.a % 32u), Struct_1(658f, vec4<f32>(var_0, var_0, var_0, -1000f), 24912u, var_1.e.x, vec3<u32>(4294967295u, 75635u, 0u))).e.x, ~abs(~vec3<u32>(var_1.c.x, 0u, 4294967295u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f))), vec2<f32>(_wgslsmith_div_f32(var_0, -417f), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 531f))))), vec3<bool>(var_1.e.x, var_1.e.x, any(func_1(all(vec3<bool>(var_1.e.x, true, true)), var_1.d.a, _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c.x, var_1.a, 1u, var_1.c.x), vec4<u32>(3941u, u_input.a, u_input.a, u_input.a))).e)), Struct_1(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(step(742f, -520f)), var_0, _wgslsmith_f_op_f32(f32(-1f) * -834f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 1345f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, -432f)))), var_1.a, !(!(true || var_1.e.x)), ~vec3<u32>(~44605u, u_input.a, 0u)));
    var var_3 = Struct_3(max(~(~vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.a, select(_wgslsmith_mod_u32(var_1.a, 90140u), ~38588u, select(var_1.e.x, var_1.e.x, true)))), Struct_1(-311f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, var_0, -108f, var_2.e.b.x) + var_2.e.b))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 420f, var_0, -377f) - vec4<f32>(var_0, 1578f, var_2.c.x, 200f))))), 0u, true, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, 4294967295u, u_input.a), vec3<u32>(27047u, 53914u, var_2.e.e.x)), vec3<u32>(u_input.a, 1u, abs(var_1.a)))), vec2<f32>(1811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f - var_0) * _wgslsmith_f_op_f32(round(var_2.e.b.x))))), var_2.d, Struct_1(var_0, _wgslsmith_f_op_vec4_f32(-var_2.e.b), select(52157u, var_2.b.e.x, var_1.e.x & !var_1.e.x), var_1.e.x, vec3<u32>(1u, ~var_1.a, func_2(select(vec4<bool>(false, false, var_2.b.d, var_1.e.x), vec4<bool>(false, true, true, true), vec4<bool>(var_2.d.x, var_1.e.x, true, false)), 1u, ~0i, var_2.e).c.x)));
    let var_4 = var_2.b;
    var_3 = Struct_3(vec2<u32>(~1u, _wgslsmith_mod_u32(u_input.a, max(0u, func_1(var_3.d.x, vec3<i32>(-2147483647i, u_input.b, -12352i), vec4<u32>(var_2.a.x, var_4.e.x, 126147u, var_3.a.x)).c.x))), var_3.b, _wgslsmith_f_op_vec2_f32(-var_2.b.b.zw), vec3<bool>(true, !func_1(!var_2.b.d, vec3<i32>(1i, var_1.d.a.x, var_1.d.a.x), ~vec4<u32>(55720u, 22492u, var_2.b.e.x, var_3.b.c)).e.x, select(!all(vec2<bool>(var_4.d, true)), true, any(!vec2<bool>(false, var_3.e.d)))), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2119f, -934f));
}

