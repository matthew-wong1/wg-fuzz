struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-280f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, var_0.a), 669f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-666f))), select(!select(false, false, true), !(u_input.a.x <= 49379u), all(vec4<bool>(false, false, true, false))))));
    var var_1 = u_input.a.x;
    var var_2 = abs(-(-select(vec2<i32>(-14005i, 2147483647i), vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(true, true)) << (u_input.a % vec2<u32>(32u))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -764f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)), 782f), all(vec4<bool>(true, true, true, true))))));
    return var_2.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_4) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_2.a.x, abs(~81143u)), 21649u), vec2<u32>(0u, u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(abs(-717f));
    return _wgslsmith_f_op_f32(step(arg_2.c.a.x, _wgslsmith_f_op_f32(-971f - _wgslsmith_f_op_f32(1000f * -905f))));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f) - _wgslsmith_f_op_f32(f32(-1f) * -1003f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec2<i32>(func_3(Struct_3(var_0)), ~(-1i)), vec4<i32>(u_input.b, ~0i, 0i, 1i), Struct_4(vec3<u32>(4294967295u, 41356u, u_input.a.x), -u_input.b, Struct_1(vec2<f32>(-734f, var_0), vec2<f32>(var_0, -149f), vec3<f32>(-693f, var_0, var_0), vec4<u32>(u_input.a.x, 46409u, 119770u, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - 994f) * var_0))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(283f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - var_0))), 1000f)));
    let var_2 = 22322i;
    var var_3 = Struct_5(~(~reverseBits(~vec3<u32>(13670u, 83625u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 112f, 245f, -976f) + vec4<f32>(1804f, var_1, var_1, 855f))) + vec4<f32>(var_0, -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-426f)), _wgslsmith_f_op_f32(trunc(var_0)))), var_0)));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-var_0));
    return select(vec4<bool>(true, true, true, !all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), select(vec4<bool>(!(u_input.b >= 2280i), false, any(vec2<bool>(false, true)), true), select(vec4<bool>(true, 16303u == u_input.a.x, true, true), vec4<bool>(true, true, true, true), true), false && all(vec2<bool>(true, true))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, true, false)), vec4<bool>(true, !(var_4.a >= var_1), false, !any(vec2<bool>(true, false))), vec4<bool>(true, true, false, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = !(!vec4<bool>(!(arg_2.a.a.x <= 792f), !(!arg_2.c), (false && arg_2.c) | (u_input.b <= -4563i), any(select(vec4<bool>(arg_2.c, true, false, true), vec4<bool>(true, false, false, arg_2.c), vec4<bool>(arg_2.c, true, true, true)))));
    var_0 = func_2();
    let var_1 = arg_2;
    var_0 = !select(vec4<bool>(!all(var_0.ywz), false, true, !var_0.x), !select(!vec4<bool>(var_1.c, var_1.c, var_0.x, true), !vec4<bool>(false, arg_2.c, false, true), var_0.x && arg_2.c), any(var_0.zz));
    var_0 = select(vec4<bool>(!(!(u_input.a.x > var_1.b.d.x)), !func_2().x, true, var_1.c), vec4<bool>(false, true, any(select(select(var_0.xyz, var_0.xwx, var_0.yyy), var_0.xxz, vec3<bool>(false, arg_2.c, var_0.x))), any(func_2())), func_2());
    return ~(~31606u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(reverseBits(firstLeadingBit(_wgslsmith_sub_u32(14751u, u_input.a.x))) < _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x | func_1(-1170f, Struct_4(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.b, Struct_1(vec2<f32>(1472f, 1000f), vec2<f32>(730f, 536f), vec3<f32>(1991f, -149f, -343f), vec4<u32>(1u, 4294967295u, 56420u, 0u))), Struct_2(Struct_1(vec2<f32>(-474f, -1019f), vec2<f32>(-171f, 2542f), vec3<f32>(1000f, -416f, -1264f), vec4<u32>(867u, 41660u, u_input.a.x, u_input.a.x)), Struct_1(vec2<f32>(-576f, 354f), vec2<f32>(-516f, 120f), vec3<f32>(-2483f, -917f, -1510f), vec4<u32>(276u, u_input.a.x, 1u, 0u)), true), -367f), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 77264u)))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2().yyw)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1062f), vec2<f32>(-793f, -758f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, 276f) - vec2<f32>(-118f, 381f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1656f, -1909f))))), vec2<f32>(_wgslsmith_f_op_f32(func_4(vec2<i32>(max(-2147483647i, u_input.b), 30650i), ~abs(vec4<i32>(1i, 1203i, u_input.b, 44645i)), Struct_4(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, 45522u, u_input.a.x)), _wgslsmith_mod_i32(u_input.b, u_input.b), Struct_1(vec2<f32>(799f, -564f), vec2<f32>(-1215f, -659f), vec3<f32>(383f, -1811f, 362f), vec4<u32>(u_input.a.x, u_input.a.x, 17297u, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1023f, -839f)) - 1584f)), vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-781f + 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1047f)) + _wgslsmith_f_op_f32(func_4(vec2<i32>(-2147483647i, -5523i), vec4<i32>(u_input.b, u_input.b, -1i, -1i), Struct_4(vec3<u32>(46157u, 4294967295u, u_input.a.x), u_input.b, Struct_1(vec2<f32>(-1063f, -145f), vec2<f32>(-885f, -750f), vec3<f32>(1963f, 967f, -132f), vec4<u32>(u_input.a.x, u_input.a.x, 126924u, 1u)))))) * -401f)), vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 95036u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 14493u, u_input.a.x)) | ~u_input.a.x), ~(~(~4294967295u)), _wgslsmith_div_u32(5859u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(27792u, u_input.a.x, 47782u), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), ~(~min(u_input.a.x, 58131u))));
    var_0 = vec2<bool>(true, var_0.x);
    var var_2 = var_0.x;
    var_0 = !func_2().wy;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.xyx);
}

