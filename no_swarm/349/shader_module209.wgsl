struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = firstLeadingBit(u_input.e) <= _wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(55804u, u_input.a, u_input.a, 62018u), vec4<u32>(38795u, 0u, 9951u, u_input.b))), ~select(~vec4<u32>(4294967295u, u_input.e, 57673u, 25161u), vec4<u32>(u_input.e, 77235u, u_input.a, u_input.a), any(vec3<bool>(false, false, arg_0))));
    var var_1 = Struct_1(select(vec4<bool>(any(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, var_0, arg_0, false))), false, true, all(!vec3<bool>(var_0, false, arg_0))), vec4<bool>(_wgslsmith_sub_u32(u_input.b, u_input.a) < _wgslsmith_mod_u32(u_input.b, u_input.b), all(select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, var_0, false, false), var_0)), var_0, true), var_0 | var_0), select(countOneBits(max(abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 57325u)), vec4<u32>(4294967295u, 0u, 0u, 4294967295u))), ~(~vec4<u32>(46982u, 1u, u_input.b, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(47022u, u_input.b, 4294967295u, 30971u), ~vec4<u32>(42528u, 5159u, 17595u, 0u)) % vec4<u32>(32u)), select(!(!vec4<bool>(true, arg_0, false, var_0)), select(select(vec4<bool>(true, arg_0, arg_0, var_0), vec4<bool>(var_0, true, var_0, arg_0), var_0), !vec4<bool>(arg_0, arg_0, true, false), true), var_0)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -734f)))));
    let var_3 = Struct_1(var_1.a, _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.e, u_input.a, 4294967295u, var_1.b.x))), ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(var_1.b.x, 4294967295u, var_1.b.x, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 44790u), var_1.b))));
    var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1f))));
    return vec4<bool>(var_1.a.x, true, !(!(u_input.c > 0i)), var_1.a.x);
}

fn func_2() -> Struct_1 {
    return Struct_1(select(func_3(true), !vec4<bool>(-2147483647i != u_input.d, true, any(vec4<bool>(false, true, false, false)), true), !(_wgslsmith_sub_i32(-4848i, u_input.d) <= min(u_input.c, u_input.c))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(3467u, 1u, u_input.b, u_input.b), vec4<u32>(u_input.b, 85386u, 3693u, 1u), vec4<bool>(false, false, false, true)), ~vec4<u32>(u_input.a, 1u, 5484u, 26310u)), ~reverseBits(vec4<u32>(30518u, 4294967295u, 0u, 1u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = max(vec4<i32>(arg_1.x, 2147483647i >> ((1u ^ u_input.b) % 32u), ~u_input.c, -2147483647i), ~(-vec4<i32>(u_input.d, u_input.d, u_input.c, 0i) | reverseBits(countOneBits(vec4<i32>(u_input.d, -38754i, 17219i, u_input.d)))));
    let var_1 = _wgslsmith_mod_vec3_u32(~arg_0.b.wxx ^ vec3<u32>(firstTrailingBit(1u) | (arg_3.b.x ^ u_input.a), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 35005u), arg_3.b.x << (arg_0.b.x % 32u)), _wgslsmith_sub_u32(firstLeadingBit(29963u), ~arg_3.b.x)), firstTrailingBit(vec3<u32>(17435u, ~arg_3.b.x, arg_0.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, arg_2, 1946f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-247f, arg_2, arg_2) * vec3<f32>(-1538f, 1071f, arg_2)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1347f, arg_2, arg_2)))))));
    var var_3 = vec2<bool>(false, any(arg_0.a.wyx));
    let var_4 = arg_3;
    return -123f;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -1170f) - arg_1))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -649f)))));
    let var_1 = false;
    var var_2 = ~0i;
    return func_2();
}

fn func_6(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -917f)));
    return vec3<u32>(firstTrailingBit(func_5(17748u, _wgslsmith_f_op_f32(trunc(var_0))).b.x), 4294967295u, ~(18018u << (arg_0.b.x % 32u))) << (_wgslsmith_sub_vec3_u32(arg_0.b.wzx, ~(~arg_0.b.xxz << (~arg_0.b.yzw % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> vec3<u32> {
    return func_6(func_5(min(~26027u, ~select(1u, u_input.a, arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_1(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<u32>(36701u, u_input.e, u_input.e, u_input.b)), vec2<i32>(u_input.d, 1i), _wgslsmith_f_op_f32(-872f * arg_0), func_2())), _wgslsmith_f_op_f32(arg_0 - arg_0)))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2.a.x;
    let var_1 = vec4<i32>(27375i, -u_input.d, _wgslsmith_mod_i32(0i, u_input.c), abs(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(5411i, u_input.d, u_input.c, u_input.c), ~vec4<i32>(-7039i, u_input.c, -1i, -28531i)))));
    let var_2 = abs(select(vec2<u32>(max(4294967295u, arg_2.b.x), 9130u), ~arg_1.zz, arg_3.a.x) & vec2<u32>(~min(64825u, 4294967295u), arg_1.x));
    let var_3 = all(arg_3.a);
    let var_4 = arg_2.a.ww;
    return Struct_1(!select(arg_3.a, arg_2.a, arg_3.a), firstLeadingBit(vec4<u32>(~arg_0.x, arg_1.x, arg_3.b.x, u_input.b)));
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, _wgslsmith_add_i32(~(0i | u_input.d), u_input.c)), vec2<i32>(2147483647i, u_input.d));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -387f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-863f, -747f, var_1.a.x))))) > _wgslsmith_f_op_f32(-639f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1986f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1193f - 550f), 2610f)));
    var var_3 = Struct_1(var_1.a, firstLeadingBit(~var_1.b));
    let var_4 = arg_3;
    return vec2<bool>(!select(_wgslsmith_f_op_f32(step(842f, 329f)) >= 107f, arg_2.a.x, !(!arg_1)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(func_8(func_7(vec2<u32>(u_input.b, 30324u), func_1(-708f, vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(14765u, u_input.b, 16422u, 1u)), func_2()), true, Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4870u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.a, 8805u, u_input.e))), Struct_1(func_5(15701u, -838f).a, vec4<u32>(u_input.e, u_input.e, 0u, 0u)))), all(vec3<bool>(func_8(func_7(vec2<u32>(u_input.b, u_input.e), vec3<u32>(1u, 0u, 14114u), Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(u_input.e, u_input.a, 42021u, u_input.b)), Struct_1(vec4<bool>(false, false, true, false), vec4<u32>(u_input.e, 62622u, u_input.e, 0u))), true, func_7(vec2<u32>(0u, u_input.b), vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(0u, u_input.e, 58453u, 0u)), Struct_1(vec4<bool>(true, false, true, true), vec4<u32>(7975u, u_input.a, u_input.b, 66102u))), func_7(vec2<u32>(u_input.a, 18896u), vec3<u32>(u_input.a, 96495u, u_input.b), Struct_1(vec4<bool>(true, false, false, true), vec4<u32>(u_input.b, u_input.e, 39318u, u_input.e)), Struct_1(vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, u_input.a, 8385u, u_input.e)))).x, true, any(vec3<bool>(false, true, false)))), all(vec4<bool>(true, true, true, true)), !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(6920u, u_input.b, 0u)) < 0u)));
    let var_1 = func_7(vec2<u32>(firstTrailingBit(u_input.a), 29333u), abs(~(~(~vec3<u32>(0u, 4294967295u, u_input.e)))), func_7(~vec2<u32>(~0u, 78747u), vec3<u32>(min(countOneBits(4294967295u), u_input.a), ~(~23732u), ~(~26807u)), Struct_1(select(!vec4<bool>(var_0.x, false, false, true), select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(false, true, var_0.x, true)), ~abs(vec4<u32>(28231u, u_input.a, u_input.b, 7468u))), Struct_1(vec4<bool>(false, var_0.x, true, func_3(false).x), vec4<u32>(83810u, ~u_input.e, 1u, u_input.e))), Struct_1(!(!func_5(u_input.e, 1000f).a), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, u_input.b, u_input.e) | abs(vec4<u32>(u_input.b, u_input.e, u_input.b, 27801u)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 72862u, 12978u, 1u), vec4<u32>(4294967295u, u_input.e, 24851u, 1u))))));
    var var_2 = var_1.a.x;
    var var_3 = func_7(_wgslsmith_mod_vec2_u32(vec2<u32>(43012u, ~(var_1.b.x << (u_input.b % 32u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.b.xz, vec2<u32>(4294967295u, var_1.b.x)) >> (~var_1.b.wz % vec2<u32>(32u)), var_1.b.zy)), var_1.b.xyz >> (~vec3<u32>(min(u_input.a, 79286u), ~1781u, 4294967295u | u_input.e) % vec3<u32>(32u)), func_2(), Struct_1(!var_1.a, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.b, func_2().b, min(vec4<u32>(17151u, var_1.b.x, u_input.b, var_1.b.x), var_1.b)), ~(~vec4<u32>(2733u, var_1.b.x, 51277u, var_1.b.x)), vec4<u32>(var_1.b.x, 4294967295u, ~u_input.b, var_1.b.x))));
    var_0 = !var_3.a;
    var_2 = func_8(Struct_1(select(vec4<bool>(true, var_0.x, !var_1.a.x, select(true, var_3.a.x, var_0.x)), !var_1.a, false), ~var_3.b), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1234f - 514f), 1037f)))) != _wgslsmith_f_op_f32(ceil(-402f)), Struct_1(func_2().a, var_3.b), func_2()).x;
    var_3 = func_7(~var_3.b.wx, func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1672f), 790f, !func_3(var_1.a.x).x)), vec3<bool>(func_2().a.x, var_1.a.x, true)), var_1, Struct_1(!var_1.a, ~vec4<u32>(u_input.e, u_input.a, _wgslsmith_mult_u32(var_3.b.x, u_input.a), var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, 306f, -1781f, 321f) * vec4<f32>(2051f, -2047f, 260f, -1240f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(168f, -1004f, 405f, -1036f), vec4<f32>(322f, 1021f, 780f, 1647f), false))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(951f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(floor(270f))))));
}

