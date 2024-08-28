struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = 24961u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, arg_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1272f) * vec2<f32>(633f, 1749f)))))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -1871f) - arg_0.yz))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.yx)), _wgslsmith_f_op_vec2_f32(arg_0.yx - arg_0.xz)))), Struct_1(vec2<bool>(arg_1.x && any(arg_1.zx), arg_1.x), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.xx))) - arg_0.yy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0)))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x))), var_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-480f, -296f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, 594f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + var_1.e.x), _wgslsmith_f_op_f32(floor(var_1.d.c.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.xx, var_1.e.xy)))), Struct_1(select(vec2<bool>(arg_1.x, any(arg_1.zx)), select(select(vec2<bool>(false, false), vec2<bool>(var_1.d.a.x, true), arg_1.yz), vec2<bool>(false, true), true), all(select(vec4<bool>(var_1.b, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(var_1.d.a.x, true, arg_1.x, var_1.d.a.x)))), arg_0, vec2<f32>(-593f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.a.x, -1706f)))))), var_1.e);
    var_0 = ~max(16595u, min(~_wgslsmith_sub_u32(4294967295u, 3353u), min(~22042u, 28624u)));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0.zy, arg_0.xx)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -1969f), arg_0.xx))))), !var_1.b, vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-arg_0.x)), Struct_1(var_1.d.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, var_1.e.x, 595f))))), arg_0.yz), var_1.d.b);
    return ~(~4294967295u);
}

fn func_2() -> vec2<bool> {
    let var_0 = any(vec3<bool>(true, true, true));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(117136u, 4294967295u)), ~vec2<u32>(0u, 1u)), abs(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(482f, 636f, 618f) * vec3<f32>(1000f, -1250f, -1039f)), select(vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, var_0), var_0)))), 1u, 1u);
    let var_2 = Struct_3(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-380f, 804f)), -970f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f * -616f)), -1063f)), _wgslsmith_clamp_i32(u_input.a.x, ((4098i | u_input.b.x) | 1i) >> (~(~var_1.x) % 32u), countOneBits(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.b))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1766f, -846f, 861f, -1198f) * vec4<f32>(-184f, -760f, -312f, -462f)) + vec4<f32>(1f, 1f, 1f, 1f)))));
    var_1 = select(~select(vec3<u32>(4294967295u, var_1.x, 1u), vec3<u32>(var_1.x, 0u, var_1.x) << (vec3<u32>(var_1.x, var_1.x, 1u) % vec3<u32>(32u)), select(var_0, false, var_0)) >> (~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 4294967295u, 61816u), vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, var_1.x))) % vec3<u32>(32u)), ~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x) >> (vec3<u32>(var_1.x, 1u, var_1.x) % vec3<u32>(32u)), vec3<u32>(var_1.x, var_1.x, 0u))), var_0);
    var var_3 = 1i;
    return !select(select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), !(var_0 & true)), vec2<bool>(true || !var_0, var_0), !(!vec2<bool>(true, var_0)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = arg_3.a.x;
    let var_2 = Struct_1(!arg_2, _wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.b.yz)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.yx), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, 449f) + _wgslsmith_f_op_vec2_f32(round(var_0.b.zz))))));
    let var_3 = arg_1;
    var var_4 = Struct_3(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), var_2.b, 0i, vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), 401f, var_2.b.x, arg_3.b.x));
    return arg_1.d;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(0u, 4294967295u) ^ _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(92978u, 0u, 0u, 4294967295u), ~vec4<u32>(47541u, 1u, 1u, 22357u)), vec4<u32>(0u, _wgslsmith_div_u32(8827u, 49429u), 0u, _wgslsmith_div_u32(0u, 24015u))), ~1454u);
    let var_1 = func_4(Struct_1(func_2(), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(851f, 459f, -1000f), vec3<f32>(1245f, -293f, -358f), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(318f, -141f), vec2<f32>(127f, 810f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-305f, -345f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(min(1187f, 275f))))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1878f, _wgslsmith_f_op_f32(-767f * 1052f))), func_2().x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-2106f)), _wgslsmith_f_op_f32(f32(-1f) * -1650f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1216f, 835f) * vec2<f32>(-1416f, -972f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2961f, 494f), vec2<f32>(523f, 1000f), vec2<bool>(true, true))))), Struct_1(vec2<bool>(func_2().x, select(false, true, true)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, -1372f, -1389f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(393f, -1000f))))), vec3<f32>(-1208f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-135f * -614f), 1123f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(143f * -910f)))), vec2<bool>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(64576u, var_0), var_0, 20617u) < var_0, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), all(vec4<bool>(false, true, false, true))))), Struct_1(select(func_2(), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(294f, 298f, -928f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(973f, -746f, 440f), vec3<f32>(-595f, 259f, -176f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, -1512f, 359f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, 487f, 1000f))))), vec2<f32>(_wgslsmith_f_op_f32(min(799f, _wgslsmith_f_op_f32(349f - -620f))), 1071f)));
    let var_2 = !(!(!(!select(vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(false, false, var_1.a.x, false), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)))));
    return Struct_1(func_4(var_1, Struct_2(var_1.b.zy, all(!var_1.a), _wgslsmith_f_op_vec2_f32(round(func_4(var_1, Struct_2(vec2<f32>(var_1.b.x, var_1.c.x), false, vec2<f32>(-833f, 349f), var_1, var_1.b), var_2.yx, var_1).b.xx)), Struct_1(func_4(Struct_1(var_2.zz, vec3<f32>(-449f, var_1.b.x, var_1.c.x), vec2<f32>(var_1.c.x, var_1.b.x)), Struct_2(var_1.b.zy, true, var_1.b.yx, var_1, var_1.b), vec2<bool>(false, false), Struct_1(vec2<bool>(var_1.a.x, false), var_1.b, vec2<f32>(var_1.b.x, -422f))).a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c.x, 861f, -568f))), var_1.c), vec3<f32>(-887f, var_1.c.x, _wgslsmith_f_op_f32(min(var_1.c.x, var_1.b.x)))), !(!vec2<bool>(var_2.x, false)), Struct_1(!var_1.a, vec3<f32>(_wgslsmith_f_op_f32(111f * -1000f), var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1142f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, var_1.b.x), vec2<f32>(-536f, -1768f))))).a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.b))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.b))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(678f, -174f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f + _wgslsmith_div_f32(1000f, var_1.b.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = all(select(select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(true, func_2().x, var_0.a.x), vec3<bool>(var_0.a.x, any(vec3<bool>(var_0.a.x, true, var_0.a.x)), any(vec3<bool>(var_0.a.x, var_0.a.x, true)))), !(!(!vec3<bool>(var_0.a.x, var_0.a.x, true))), select(vec3<bool>(all(vec2<bool>(true, var_0.a.x)), -27235i != u_input.b.x, all(var_0.a)), vec3<bool>(var_0.a.x && var_0.a.x, var_0.a.x, true), !select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(true, true, var_0.a.x)))));
    var var_2 = !select(var_0.a, !vec2<bool>(false, !var_0.a.x), var_0.a.x);
    var var_3 = ~_wgslsmith_add_u32(~1528u, _wgslsmith_div_u32(4294967295u, select(163344u, 46409u, var_0.a.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(48122u, 0u, 6544u), vec3<u32>(12177u, 0u, 61282u), false)));
    let var_4 = Struct_2(var_0.b.zz, any(select(!vec4<bool>(var_2.x, var_0.a.x, false, var_2.x), !(!vec4<bool>(var_0.a.x, var_2.x, true, var_0.a.x)), true)), _wgslsmith_f_op_vec2_f32(trunc(var_0.b.yy)), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.b, func_4(var_0, Struct_2(vec2<f32>(var_0.c.x, 184f), var_0.a.x, vec2<f32>(1000f, var_0.c.x), Struct_1(var_0.a, var_0.b, vec2<f32>(3107f, -1549f)), var_0.b), func_4(var_0, Struct_2(vec2<f32>(var_0.b.x, var_0.b.x), false, vec2<f32>(var_0.c.x, 1206f), var_0, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)), vec2<bool>(var_0.a.x, var_0.a.x), var_0).a, func_1()).b))));
    let var_5 = -107f;
    let var_6 = _wgslsmith_div_u32(81593u, _wgslsmith_mult_u32(1u, max(~0u, 4294967295u))) | (~_wgslsmith_dot_vec4_u32(vec4<u32>(804u, 1u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u)) ^ 1u);
    var var_7 = Struct_3(~u_input.b.x, var_4.d.b, i32(-1i) * -9116i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, var_5, 319f, 219f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), var_0.c.x, 1000f, _wgslsmith_f_op_f32(-var_5))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(u_input.a.x, min(_wgslsmith_mod_i32(var_7.a, 1i), countOneBits(-2147483647i)), max(~0i, u_input.a.x & var_7.a))));
}

