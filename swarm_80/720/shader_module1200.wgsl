struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1654f - 1130f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(163f)))), 680f, _wgslsmith_f_op_f32(-1f)));
    var var_1 = u_input.d;
    let var_2 = Struct_1(1i, vec3<u32>(select(_wgslsmith_dot_vec2_u32(select(u_input.c.wx, u_input.c.wx, arg_0.x), u_input.c.wy), abs(~1u), arg_0.x), 73261u ^ u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(8617u, u_input.c.x, u_input.c.x), u_input.c.xwy)), u_input.c.zw)), _wgslsmith_div_u32(u_input.c.x, reverseBits(62644u)) & ((min(0u, u_input.c.x) | ~13733u) << (49848u % 32u)), true, var_0.x);
    let var_3 = Struct_2(var_2, Struct_1(select(-(u_input.d >> (0u % 32u)), -1i, true), _wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(u_input.c.x, 41615u, 1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, var_2.b.x, u_input.c.x), var_2.b)), ~u_input.c.x, ~(var_2.c ^ var_2.b.x) <= _wgslsmith_div_u32(21826u, ~34192u), _wgslsmith_f_op_f32(sign(var_0.x))), Struct_1((var_2.a & 66605i) ^ -1397i, var_2.b, var_2.c, any(vec2<bool>(false, false)) != true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(740f)))), var_2, var_2);
    let var_4 = 1799u;
    return 816f;
}

fn func_2(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = vec3<f32>(-576f, -2222f, _wgslsmith_f_op_f32(f32(-1f) * -1393f));
    var_0 = vec3<f32>(1246f, 512f, var_0.x);
    let var_1 = _wgslsmith_div_vec2_u32(arg_0.b.b.xy, _wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(arg_0.b.c, 4294967295u) ^ u_input.c.zy) << (arg_0.b.b.yx % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_0.b.e * var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.e)))), _wgslsmith_f_op_f32(func_3(vec3<bool>(any(vec2<bool>(true, arg_0.c.a.d)), true, arg_0.b.e < arg_0.c.b.e))), arg_0.b.e));
    let var_2 = var_0.zx;
    return _wgslsmith_clamp_vec3_u32(~vec3<u32>(16478u | _wgslsmith_mod_u32(arg_0.c.e.b.x, 0u), 5458u, arg_0.b.b.x), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(4294967295u, 1u, u_input.c.x) << (~arg_0.c.b.b % vec3<u32>(32u)), abs(arg_0.a.b.b | arg_0.b.b), vec3<bool>(arg_0.a.a.d & arg_0.a.d.d, true, !arg_0.a.e.d)), abs(~arg_0.a.e.b)), vec3<u32>(~(~u_input.c.x), ~(~var_1.x), 0u) & arg_0.b.b);
}

fn func_1() -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_clamp_i32(abs(select(1i, 22987i, true)), (1i << (u_input.c.x % 32u)) << (~u_input.c.x % 32u), -29392i), u_input.c.xzz, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_add_u32(u_input.c.x, ~2064u)), all(vec4<bool>(true, true, true, true)), 630f), Struct_1(1i, vec3<u32>(u_input.c.x, ~_wgslsmith_div_u32(u_input.c.x, 14983u), 44079u), abs(u_input.c.x), !(u_input.c.x > _wgslsmith_sub_u32(0u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-648f, 303f) + _wgslsmith_f_op_f32(-1000f + 202f)))), Struct_1(-1i, firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.ww, vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(u_input.c.www, vec3<u32>(0u, 53881u, u_input.c.x)), u_input.c.x)), 1u, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-941f, 776f)), -893f, true)), 622f)), Struct_1(_wgslsmith_sub_i32(u_input.d, u_input.d), reverseBits(func_2(Struct_4(Struct_2(Struct_1(-59028i, vec3<u32>(91852u, 18174u, u_input.c.x), 4294967295u, false, 2490f), Struct_1(u_input.d, u_input.c.zyw, u_input.c.x, true, -636f), Struct_1(13033i, u_input.c.yyz, u_input.c.x, false, 497f), Struct_1(-1i, u_input.c.xzx, u_input.c.x, false, -652f), Struct_1(u_input.a.x, vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), u_input.c.x, true, 157f)), Struct_1(1i, u_input.c.xzy, u_input.c.x, false, -923f), Struct_2(Struct_1(u_input.b, u_input.c.yxz, 23087u, true, 633f), Struct_1(-1i, vec3<u32>(78007u, u_input.c.x, u_input.c.x), 37582u, false, -338f), Struct_1(u_input.d, vec3<u32>(1u, u_input.c.x, u_input.c.x), 4294967295u, false, 1570f), Struct_1(-2147483647i, u_input.c.xzx, 4294967295u, true, -268f), Struct_1(14065i, u_input.c.ywy, 17270u, false, 797f))))), u_input.c.x, !any(vec2<bool>(false, false)), 1242f), Struct_1(u_input.b, _wgslsmith_div_vec3_u32(u_input.c.xyw, vec3<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_add_u32(58232u, u_input.c.x))), 12557u, true, _wgslsmith_div_f32(-1181f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(324f, 1000f)), _wgslsmith_f_op_f32(max(781f, -1363f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!select(false, any(vec4<bool>(true, false, false, false)), true | (u_input.c.x > 1u)), false);
    let var_1 = Struct_4(func_1(), func_1().c, Struct_2(func_1().b, Struct_1(reverseBits(-u_input.b), func_2(Struct_4(Struct_2(Struct_1(u_input.b, u_input.c.wyz, 115990u, false, 1048f), Struct_1(u_input.d, u_input.c.ywz, 0u, true, -542f), Struct_1(u_input.b, vec3<u32>(0u, 53751u, 0u), u_input.c.x, var_0.x, -756f), Struct_1(u_input.d, vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), 1u, false, -2691f), Struct_1(u_input.b, u_input.c.zzz, u_input.c.x, var_0.x, -2527f)), Struct_1(21350i, vec3<u32>(49302u, 4294967295u, u_input.c.x), 4294967295u, true, -1669f), Struct_2(Struct_1(23594i, vec3<u32>(u_input.c.x, 8534u, u_input.c.x), 4546u, var_0.x, 1000f), Struct_1(u_input.d, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), 20131u, var_0.x, 293f), Struct_1(u_input.d, u_input.c.xzw, 68837u, var_0.x, 635f), Struct_1(1i, vec3<u32>(u_input.c.x, 4294967295u, 4294967295u), u_input.c.x, false, -731f), Struct_1(u_input.b, u_input.c.wxz, u_input.c.x, true, -312f)))), u_input.c.x, true, -959f), Struct_1(_wgslsmith_div_i32(reverseBits(u_input.a.x), u_input.a.x), vec3<u32>(0u, 87088u, 4294967295u), u_input.c.x, var_0.x, _wgslsmith_f_op_f32(func_3(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x))))), func_1().e, Struct_1(2147483647i, ~min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.zzx), _wgslsmith_mod_u32(abs(52719u), u_input.c.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1438f, 527f))))));
    let var_2 = var_1.a.d.b ^ _wgslsmith_mult_vec3_u32(~u_input.c.yzz, func_2(Struct_4(Struct_2(Struct_1(1i, u_input.c.wyx, var_1.b.c, true, var_1.a.a.e), Struct_1(var_1.c.d.a, vec3<u32>(23264u, var_1.b.b.x, 18775u), u_input.c.x, false, var_1.c.c.e), Struct_1(23908i, var_1.a.e.b, 57103u, false, var_1.c.b.e), Struct_1(1220i, vec3<u32>(1u, 44894u, 69443u), var_1.a.c.c, true, var_1.b.e), Struct_1(var_1.b.a, var_1.b.b, u_input.c.x, false, -506f)), func_1().e, Struct_2(Struct_1(-1i, vec3<u32>(1u, var_1.b.c, var_1.a.d.b.x), var_1.b.b.x, true, var_1.a.a.e), Struct_1(-1i, vec3<u32>(67038u, u_input.c.x, 0u), 39224u, var_0.x, 2322f), Struct_1(-1i, var_1.c.c.b, u_input.c.x, var_0.x, var_1.b.e), var_1.b, var_1.a.d))));
    let var_3 = ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(48141u, _wgslsmith_add_u32(1u, 44081u)), 1u));
    var var_4 = Struct_4(var_1.a, func_1().a, func_1());
    var_4 = Struct_4(Struct_2(var_4.c.b, Struct_1(select(var_1.a.e.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.c.d.a, var_4.c.c.a, 37221i, -1i), vec4<i32>(1i, var_4.b.a, 10122i, u_input.d)), all(vec3<bool>(var_1.c.d.d, var_0.x, var_0.x))), var_1.c.c.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.e.b.x, var_2.x, var_4.b.c, u_input.c.x), min(u_input.c, u_input.c)), !any(vec3<bool>(false, var_0.x, var_0.x)), var_4.a.b.e), func_1().e, func_1().b, var_4.c.d), func_1().e, var_4.c);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_div_u32(~var_3, 52968u) ^ 1u, ~_wgslsmith_dot_vec3_u32(~u_input.c.xww, var_5.a.e.b >> (var_1.b.b % vec3<u32>(32u)))), abs(vec2<i32>(var_5.a.b.a & -18692i, -_wgslsmith_mod_i32(-1i, var_1.c.d.a))), u_input.c, select(var_4.c.a.a, ~(-var_4.b.a), var_5.b.d) << ((17003u << (min(var_3, firstLeadingBit(18411u)) % 32u)) % 32u), 2147483647i);
}

