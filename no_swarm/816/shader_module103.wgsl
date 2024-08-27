struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: bool) -> vec3<u32> {
    var var_0 = _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(arg_2.a, u_input.b.x, 1u)) ^ vec3<u32>(126706u, ~arg_2.a, _wgslsmith_add_u32(1u, 0u)), ~vec3<u32>(4294967295u, min(4294967295u, arg_2.a), 16201u)));
    let var_1 = 1u;
    var_0 = var_1;
    var var_2 = Struct_3(arg_2.b.b.d.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-918f)))) * _wgslsmith_f_op_f32(sign(-285f)))), 389f);
    return u_input.b.ywx;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = !select(arg_0.b.c.zzw, vec3<bool>(select(arg_3 & arg_0.d.c.x, arg_3 != true, true), !(!arg_3), all(vec3<bool>(arg_2.e.c.x, false, arg_3))), vec3<bool>(false, false, arg_0.b.c.x));
    let var_1 = firstTrailingBit(arg_2.d.e.x);
    var var_2 = Struct_1(abs(vec2<i32>(~5035i, arg_2.e.a.x)), var_0.x, arg_0.d.c, ~arg_0.d.d, _wgslsmith_sub_vec2_u32(arg_0.d.e, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_2.d.d.x, 18562u), vec3<u32>(arg_0.b.e.x, u_input.b.x, 0u)), reverseBits(arg_2.d.e.x))));
    var_2 = arg_0.e;
    var var_3 = Struct_5(!var_0.yz, Struct_1(arg_2.d.a, true, vec4<bool>(!arg_3, _wgslsmith_f_op_f32(arg_1 - arg_1) > _wgslsmith_f_op_f32(-arg_0.a), !(arg_2.d.c.x & false), var_0.x), var_2.d, vec2<u32>(1u, _wgslsmith_mult_u32(reverseBits(var_2.e.x), 74067u))));
    return _wgslsmith_div_i32(u_input.d, arg_0.b.a.x) << (54671u % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-2147483647i, u_input.e.x, -1i)), vec3<i32>(-1i >> (u_input.c % 32u), _wgslsmith_clamp_i32(36718i, u_input.e.x, u_input.d), -2147483647i)) << (_wgslsmith_add_vec3_u32(~(~u_input.b.xzz), func_2(select(u_input.d, u_input.d, arg_1.x), -vec4<i32>(30505i, -47499i, u_input.d, u_input.d), Struct_4(0u, Struct_2(-846f, Struct_1(u_input.e, arg_0.x, arg_0, vec4<u32>(u_input.b.x, 0u, u_input.c, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.e.x, Struct_1(u_input.e, arg_1.x, vec4<bool>(arg_1.x, true, arg_1.x, arg_0.x), u_input.b, u_input.b.wx), Struct_1(u_input.e, arg_1.x, vec4<bool>(arg_0.x, arg_1.x, true, true), u_input.b, u_input.b.xy)), 2045f), true)) % vec3<u32>(32u)), select(vec3<i32>(~(-52790i) >> (u_input.c % 32u), -_wgslsmith_mult_i32(u_input.d, u_input.e.x), func_3(Struct_2(-698f, Struct_1(vec2<i32>(2147483647i, u_input.e.x), false, arg_0, u_input.b, vec2<u32>(12446u, u_input.b.x)), u_input.d, Struct_1(vec2<i32>(0i, -22318i), false, arg_0, vec4<u32>(0u, u_input.a, u_input.a, 56745u), vec2<u32>(u_input.a, 1u)), Struct_1(u_input.e, arg_1.x, arg_0, vec4<u32>(95524u, u_input.b.x, 4294967295u, u_input.b.x), u_input.b.ww)), _wgslsmith_f_op_f32(958f * -1000f), Struct_2(-1612f, Struct_1(vec2<i32>(u_input.d, u_input.e.x), arg_1.x, vec4<bool>(arg_1.x, true, true, arg_0.x), vec4<u32>(1u, u_input.c, 4294967295u, u_input.a), u_input.b.yx), u_input.d, Struct_1(vec2<i32>(u_input.d, -12180i), arg_1.x, arg_0, u_input.b, u_input.b.wz), Struct_1(u_input.e, true, vec4<bool>(arg_1.x, arg_1.x, arg_0.x, false), vec4<u32>(u_input.b.x, 0u, 8742u, u_input.a), u_input.b.wz)), !arg_1.x)), ~vec3<i32>(_wgslsmith_sub_i32(1i, -35235i), ~(-10349i), u_input.e.x), vec3<bool>(!arg_0.x, false, 4294967295u <= ~u_input.b.x)), arg_1.x);
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, -2147483647i), var_0.xx), ~var_0.x);
    var var_2 = Struct_1(-vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(var_0.yz), _wgslsmith_add_vec2_i32(var_0.xy, vec2<i32>(-35416i, var_0.x))), ~(36554i << (u_input.a % 32u))), arg_0.x || arg_1.x, arg_0, vec4<u32>(_wgslsmith_clamp_u32(u_input.c & 31573u, u_input.a, u_input.b.x), u_input.c, ~4294967295u, 4294967295u), select(select(u_input.b.zx, ~select(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(0u, u_input.b.x), arg_0.x), !vec2<bool>(arg_0.x, true)), u_input.b.wy, select(!(!vec2<bool>(true, arg_0.x)), vec2<bool>(false, arg_0.x), true)));
    let var_3 = !(!var_2.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f), -351f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1797f)))));
    return Struct_1(vec2<i32>(abs(var_0.x), -_wgslsmith_mult_i32(var_1 ^ 28559i, 42474i)), true, vec4<bool>(4294967295u >= ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, 28775u, 15820u), vec3<u32>(23186u, 1u, 61162u)), any(!var_3), false, true), abs(abs(u_input.b | u_input.b)), ~func_2(var_1, -reverseBits(vec4<i32>(u_input.e.x, var_2.a.x, 1i, 54275i)), Struct_4(var_2.d.x, Struct_2(168f, Struct_1(var_0.zz, true, vec4<bool>(var_2.b, false, true, true), vec4<u32>(var_2.e.x, 9093u, 27183u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), 1i, Struct_1(var_0.zz, var_3.x, vec4<bool>(arg_1.x, false, false, false), var_2.d, u_input.b.wx), Struct_1(vec2<i32>(1i, var_2.a.x), var_2.c.x, vec4<bool>(var_3.x, arg_0.x, var_2.c.x, var_2.c.x), var_2.d, vec2<u32>(u_input.a, 14014u))), _wgslsmith_f_op_f32(min(-456f, var_4.x))), !(1u == var_2.d.x)).yy);
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: f32) -> vec4<u32> {
    let var_0 = false;
    var var_1 = Struct_5(arg_0.b.c.zy, arg_0.b);
    let var_2 = var_1.b;
    var var_3 = ~(~(~(~vec2<u32>(4294967295u, 31826u) | abs(var_1.b.d.yy))));
    var var_4 = _wgslsmith_f_op_f32(970f - -1556f);
    return ~(~func_1(var_2.c, select(vec3<bool>(true, true, true), arg_0.b.c.xyx, vec3<bool>(true, false, false))).d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 43871u), vec2<u32>(u_input.c, u_input.c)), ~u_input.b.yx), u_input.b.x), countOneBits(abs(4294967295u)));
    var_0 = ~vec2<u32>(var_0.x, ~4294967295u);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f + _wgslsmith_f_op_f32(sign(-1328f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-401f)), 2665f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1799f, 352f)) * 239f)))), Struct_1(vec2<i32>(reverseBits(_wgslsmith_mod_i32(-52557i, -1i)), _wgslsmith_dot_vec2_i32(u_input.e << (vec2<u32>(u_input.b.x, var_0.x) % vec2<u32>(32u)), abs(vec2<i32>(10925i, u_input.e.x)))), all(vec4<bool>(true, any(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, true, false, false)), true)), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), func_4(Struct_5(vec2<bool>(true, true), func_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, true))), !any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-575f + 1000f), _wgslsmith_f_op_f32(abs(-882f))))), vec2<u32>(u_input.b.x, max(27350u, 54858u))), u_input.d, func_1(vec4<bool>(true, true, true, true), vec3<bool>(!(var_0.x <= 4294967295u), true && any(vec2<bool>(true, false)), 31121i <= u_input.e.x)), func_1(func_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), !func_1(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true)).c.xyx).c, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_2 = var_1.b.c;
    let var_3 = Struct_5(!func_1(vec4<bool>(!var_1.d.b, !var_1.b.c.x, var_1.b.c.x, true), var_1.d.c.zzy).c.yz, var_1.b);
    var_1 = Struct_2(493f, var_1.d, u_input.d, func_1(!var_1.d.c, vec3<bool>(true, any(!vec2<bool>(var_2.x, false)), true)), func_1(select(var_1.e.c, vec4<bool>(var_3.b.a.x > 26651i, !var_3.a.x, var_2.x, var_3.a.x), var_1.b.c), vec3<bool>(!var_1.b.c.x, false, true)));
    let var_4 = false;
    let var_5 = Struct_2(1614f, Struct_1(_wgslsmith_div_vec2_i32(var_3.b.a & u_input.e, func_1(vec4<bool>(true, var_1.b.b, var_2.x, true), var_3.b.c.zzx).a), all(var_3.b.c), !(!var_1.e.c), var_3.b.d, u_input.b.wx), u_input.d, Struct_1(~var_1.e.a, true, !var_3.b.c, ~vec4<u32>(_wgslsmith_sub_u32(1u, 0u), var_3.b.e.x, 100826u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.e.e.x, 4294967295u), vec3<u32>(u_input.b.x, 8980u, var_1.b.e.x))), reverseBits(vec2<u32>(var_3.b.d.x, var_3.b.d.x))), func_1(select(var_3.b.c, vec4<bool>(var_2.x & var_2.x, true, false, var_3.a.x), func_1(select(vec4<bool>(var_4, true, false, var_1.e.c.x), vec4<bool>(true, false, false, false), var_1.e.c), !vec3<bool>(true, true, var_3.a.x)).c), var_3.b.c.zww));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(var_3.b.e.x) ^ ~var_5.d.d.x)), _wgslsmith_dot_vec2_u32(var_3.b.e >> (select(~var_5.e.d.ww, _wgslsmith_div_vec2_u32(var_5.d.e, vec2<u32>(var_5.e.e.x, 1u)), vec2<bool>(false, var_3.a.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(46226u, 47997u), 0u)));
}

