struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    let var_0 = i32(-1i) * -(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), arg_3.a) << (_wgslsmith_add_u32(u_input.a, abs(35517u)) % 32u));
    var var_1 = ~51597u;
    var var_2 = !(true != all(!select(vec2<bool>(true, arg_3.c.x), vec2<bool>(arg_3.c.x, false), true)));
    var var_3 = arg_0;
    let var_4 = arg_3.a;
    return !(!(!(!var_3.a)) && (arg_1.c.b >= var_4.x));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a <= ~4294967295u;
    var var_1 = !(!all(vec4<bool>(true, true, false, false))) & (-1162f >= _wgslsmith_f_op_f32(-934f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1251f), _wgslsmith_f_op_f32(-2226f - -178f), true))));
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(70051u, 72688u, ~25733u), select(vec3<u32>(u_input.a, u_input.a, 18553u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(u_input.a, 61621u, u_input.a)), true)));
    return Struct_1(vec2<i32>(1i, 1i), _wgslsmith_div_i32(-1i, -21765i), select(select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), true), vec2<bool>(false, false), func_3(Struct_3(true), Struct_2(u_input.a, Struct_1(vec2<i32>(1i, 36894i), 8024i, vec2<bool>(true, true), 394f, vec4<u32>(u_input.a, u_input.a, u_input.a, 24725u)), Struct_1(vec2<i32>(-49i, -18395i), 61609i, vec2<bool>(false, false), -742f, vec4<u32>(72003u, 1u, 1u, 8314u)), vec2<bool>(false, false), -689f), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(vec2<i32>(-1i, 1i), -19082i, vec2<bool>(false, false), 574f, vec4<u32>(u_input.a, u_input.a, 112410u, u_input.a)))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), !vec2<bool>(true, func_3(Struct_3(true), Struct_2(u_input.a, Struct_1(vec2<i32>(-1i, 28979i), 9372i, vec2<bool>(true, false), -103f, vec4<u32>(u_input.a, 11981u, u_input.a, 23476u)), Struct_1(vec2<i32>(10001i, -39593i), 14579i, vec2<bool>(true, true), 416f, vec4<u32>(117783u, u_input.a, 93681u, 0u)), vec2<bool>(false, true), -1067f), vec2<bool>(false, true), Struct_1(vec2<i32>(42734i, 39747i), 1834i, vec2<bool>(false, false), -1175f, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~_wgslsmith_add_vec4_u32((vec4<u32>(0u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 39038u, u_input.a, u_input.a)) << (vec4<u32>(1u, u_input.a, 14975u, u_input.a) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(17416u, 1u, 0u, 1u), vec4<u32>(u_input.a, 51409u, u_input.a, 132213u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 4564u), vec4<bool>(true, true, false, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(u_input.a << (u_input.a % 32u))), 4294967295u), func_2(), func_2(), vec2<bool>(any(!(!vec4<bool>(true, arg_1.a, arg_0.c.x, arg_0.c.x))), func_2().c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1170f, arg_0.d, true)) * _wgslsmith_f_op_f32(-arg_0.d))))));
    var var_1 = var_0.b.b;
    var_0 = Struct_2(5019u, var_0.b, func_2(), var_0.c.c, 1310f);
    var_0 = Struct_2(24285u, Struct_1(vec2<i32>(var_0.b.b, max(countOneBits(var_0.c.b), -1i)), min(_wgslsmith_add_i32(var_0.c.a.x, -9557i), -13824i), func_2().c, -558f, var_0.b.e), Struct_1(vec2<i32>(arg_0.a.x, -24443i), 51519i, arg_0.c, _wgslsmith_f_op_f32(floor(arg_0.d)), abs(~(~vec4<u32>(6407u, 19082u, 4294967295u, 13337u)))), func_2().c, 187f);
    let var_2 = Struct_1(arg_0.a, arg_0.a.x, var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -1771f), ~var_0.c.e);
    return var_2.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -1603f;
    let var_1 = Struct_5(reverseBits(_wgslsmith_dot_vec2_u32(arg_0.wx | arg_1.e.zz, _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 0u), ~arg_0.yw))), select(select(func_4(func_2(), Struct_3(arg_1.c.x)), arg_1.c, !func_2().c.x), select(!func_4(Struct_1(arg_1.a, 0i, vec2<bool>(arg_1.c.x, true), var_0, vec4<u32>(arg_0.x, 0u, 0u, 4653u)), Struct_3(arg_1.c.x)), !arg_1.c, arg_1.c), arg_1.c.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.d)))) - var_0) * arg_1.d);
    var_2 = -1201f;
    let var_3 = func_2();
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = !vec4<bool>(true, all(!vec3<bool>(arg_0.c.x, true, arg_1.a)), any(!select(vec4<bool>(arg_1.a, true, false, true), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, arg_0.c.x, arg_0.c.x, false))), false);
    var var_1 = vec3<bool>(2056f > arg_0.d, arg_0.d <= -661f, false);
    let var_2 = ~(~(~u_input.a));
    let var_3 = Struct_4(func_1(~(~(arg_0.e << (vec4<u32>(1u, u_input.a, arg_0.e.x, arg_0.e.x) % vec4<u32>(32u)))), arg_0));
    var var_4 = true;
    return Struct_1(arg_0.a, _wgslsmith_div_i32(~70482i, 5588i) << (firstTrailingBit(~var_2) % 32u), !var_3.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f)))))), ~vec4<u32>(17371u, reverseBits(min(33982u, var_2)), 1u, var_3.a.e.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1.c.x | true;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, -1514f, 688f, arg_1.d)) - _wgslsmith_div_vec4_f32(vec4<f32>(404f, -609f, 408f, 1000f), vec4<f32>(-398f, 1743f, -985f, arg_0.d))))))));
    let var_2 = Struct_2(6533u, Struct_1(vec2<i32>(-1i) * -arg_0.a, max(_wgslsmith_sub_i32(~arg_0.b, arg_0.b | -2376i), -firstLeadingBit(-1i)), select(arg_0.c, vec2<bool>(!arg_1.c.x, !arg_0.c.x), true), arg_0.d, ~(~(arg_0.e & vec4<u32>(arg_0.e.x, 1u, arg_1.e.x, 18062u)))), Struct_1(-arg_0.a, arg_1.b, arg_0.c, _wgslsmith_f_op_f32(-arg_1.d), arg_1.e), func_2().c, arg_0.d);
    var var_3 = ~4294967295u;
    let var_4 = arg_0;
    return !(!(!select(var_2.d, func_5(var_4, Struct_3(arg_0.c.x)).c, arg_1.e.x == arg_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(-_wgslsmith_clamp_vec2_i32(-vec2<i32>(-41714i, -1i), ~vec2<i32>(1i, 32107i), vec2<i32>(3607i, 20686i)), -16905i, func_6(Struct_1(vec2<i32>(-1i, 20179i), i32(-1i) * -2147483647i, vec2<bool>(true, true), -1220f, select(vec4<u32>(0u, u_input.a, 46968u, u_input.a), vec4<u32>(56597u, 45271u, u_input.a, 4294967295u), vec4<bool>(true, false, false, false))), func_5(func_1(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), Struct_1(vec2<i32>(1i, 1i), -2147483647i, vec2<bool>(false, false), -1006f, vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u))), Struct_3(true))), -239f, ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 10937u))));
    var_0 = Struct_4(func_5(var_0.a, Struct_3(var_0.a.c.x)));
    var var_1 = Struct_1((func_1(var_0.a.e << (vec4<u32>(u_input.a, var_0.a.e.x, 48504u, var_0.a.e.x) % vec4<u32>(32u)), func_5(Struct_1(var_0.a.a, var_0.a.a.x, var_0.a.c, 850f, var_0.a.e), Struct_3(true))).a >> (var_0.a.e.zx % vec2<u32>(32u))) >> (var_0.a.e.zw % vec2<u32>(32u)), var_0.a.a.x, var_0.a.c, var_0.a.d, abs(min(func_1(~var_0.a.e, Struct_1(vec2<i32>(var_0.a.a.x, var_0.a.b), var_0.a.b, vec2<bool>(var_0.a.c.x, var_0.a.c.x), var_0.a.d, var_0.a.e)).e, vec4<u32>(u_input.a, 0u, var_0.a.e.x, abs(var_0.a.e.x)))));
    var var_2 = !(!var_0.a.c.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -706f));
    var var_4 = Struct_3(false);
    var var_5 = var_0.a.d;
    var_1 = Struct_1(func_2().a | var_1.a, 2147483647i, !var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1675f)) + -562f) + func_2().d)), ~vec4<u32>(~0u, (u_input.a ^ var_0.a.e.x) >> (select(1u, var_1.e.x, true) % 32u), ~_wgslsmith_div_u32(var_0.a.e.x, var_0.a.e.x), u_input.a & ~u_input.a));
    var var_6 = var_0.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.d, 771f, var_0.a.d, -658f))))))), vec2<i32>(_wgslsmith_add_i32(-1i >> (u_input.a % 32u), 2147483647i), ~(-12879i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1455f, -820f, var_1.d))))));
}

