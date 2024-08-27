struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    return -607f;
}

fn func_2() -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(func_3()), vec4<f32>(_wgslsmith_f_op_f32(func_3()), 473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f * 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(763f * 366f)))), Struct_2(Struct_1(vec2<bool>(true, true)), vec4<u32>(~(u_input.b << (u_input.c.x % 32u)), ~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(12618u, u_input.c.x, 51509u, u_input.b), countOneBits(u_input.c)), u_input.c.x), Struct_1(vec2<bool>(all(vec4<bool>(true, true, false, false)), select(true, false, true))), ~0u), _wgslsmith_div_vec4_f32(vec4<f32>(964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1220f - 774f) - -1405f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1228f), -776f)), 519f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1019f, -2266f, -125f, -978f), vec4<f32>(-183f, -658f, -932f, 411f))))))));
    let var_1 = Struct_4(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(23690u, var_0.c.d) ^ u_input.b, _wgslsmith_add_u32(var_0.c.d, 0u), select(var_0.c.b.x, 0u, var_0.c.a.a.x), _wgslsmith_dot_vec3_u32(u_input.c.wwy, var_0.c.b.zzw))));
    var var_2 = vec3<u32>(0u, var_1.a.x, ~80749u);
    var var_3 = u_input.d;
    var_2 = (~var_0.c.b.xyx << (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 23697u, 4294967295u), var_1.a), 0u, _wgslsmith_div_u32(select(0u, var_0.c.d, true), u_input.b)) % vec3<u32>(32u))) | reverseBits(~vec3<u32>(var_1.a.x, 24925u, var_0.c.d) >> (abs(~vec3<u32>(71091u, u_input.b, var_1.a.x)) % vec3<u32>(32u)));
    return var_0.c.c.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(~firstLeadingBit(u_input.c));
    var_0 = Struct_4(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(34991u, var_0.a.x, var_0.a.x, var_0.a.x)), select(var_0.a, vec4<u32>(u_input.c.x, var_0.a.x, 4294967295u, var_0.a.x), vec4<bool>(arg_1.c.x, true, arg_1.c.x, false))), var_0.a, select(~var_0.a, u_input.c, any(vec3<bool>(arg_2.a.x, false, arg_2.a.x))))));
    var_0 = Struct_4(~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, arg_0.x, arg_0.x, var_0.a.x) | vec4<u32>(var_0.a.x, 42019u, var_0.a.x, arg_0.x), _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(arg_1.a, u_input.c.x, 19869u, arg_1.a)))));
    let var_1 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2481f + -1287f)), arg_1.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, arg_1.b.x, -1265f, arg_1.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2797f, 468f, -1347f, 974f), vec4<f32>(783f, arg_1.b.x, 297f, arg_1.b.x))))))), Struct_2(arg_2, ~countOneBits(u_input.c), Struct_1(arg_2.a), var_0.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1068f, arg_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-284f * arg_1.b.x))), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, 705f, -737f, -620f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1446f, 1759f, -105f, 187f), vec4<f32>(730f, -1081f, -1000f, -821f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -1633f, arg_1.b.x, arg_1.b.x) + vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)))))));
    let var_2 = arg_1;
    return Struct_2(arg_2, select(vec4<u32>(u_input.b, 4294967295u, 1u, _wgslsmith_sub_u32(~arg_1.a, var_1.c.d)), var_1.c.b, !(!arg_1.c.x)), Struct_1(arg_2.a), 4294967295u);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(u_input.b, vec3<f32>(-1231f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(551f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(301f - -564f))), select(vec2<bool>(!any(vec4<bool>(arg_2.a.a.x, arg_2.c.a.x, false, arg_1.c.a.x)), !any(vec3<bool>(arg_2.a.a.x, arg_1.a.a.x, true))), select(vec2<bool>(false, arg_1.c.a.x), !func_4(vec2<u32>(0u, 1u), Struct_3(arg_1.d, vec3<f32>(1064f, 1000f, -189f), vec2<bool>(true, arg_2.a.a.x)), Struct_1(arg_2.c.a)).c.a, false), select(vec2<bool>(func_2(), false), vec2<bool>(true, any(vec2<bool>(false, arg_1.a.a.x))), false)));
    let var_1 = true & arg_1.a.a.x;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 1471f, var_0.b.x))))), vec4<f32>(394f, _wgslsmith_f_op_f32(f32(-1f) * -1242f), -539f, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x))), true)), Struct_2(Struct_1(arg_2.c.a), vec4<u32>(arg_2.d, var_0.a, u_input.c.x, 0u), Struct_1(arg_1.c.a), countOneBits((var_0.a << (30430u % 32u)) | 15804u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -795f, -2003f, -122f) + vec4<f32>(-1017f, var_0.b.x, -735f, var_0.b.x)))))));
    let var_3 = func_4(arg_1.b.yy, Struct_3(var_2.c.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))), func_4(firstLeadingBit(~vec2<u32>(44798u, 81091u)), Struct_3(~1u, var_0.b, vec2<bool>(var_2.c.c.a.x, true)), Struct_1(arg_1.a.a)).a.a), Struct_1(func_4(select(vec2<u32>(var_2.c.d, 7017u), ~vec2<u32>(var_0.a, 58233u), select(var_2.c.a.a, vec2<bool>(arg_1.c.a.x, var_0.c.x), false)), Struct_3(65929u, vec3<f32>(var_2.d.x, 783f, var_0.b.x), var_0.c), Struct_1(func_4(vec2<u32>(1u, u_input.b), Struct_3(4294967295u, var_0.b, vec2<bool>(var_0.c.x, var_2.c.a.a.x)), Struct_1(vec2<bool>(false, var_1))).a.a)).a.a));
    var_0 = Struct_3(~u_input.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.b.xzy + var_0.b))), vec2<bool>(var_0.c.x, ~(~1u) > arg_1.d));
    return func_4(vec2<u32>(_wgslsmith_add_u32(u_input.c.x, arg_2.b.x) ^ _wgslsmith_mult_u32(arg_1.d, var_3.d), var_2.c.d) | (((var_3.b.yy << (arg_1.b.wx % vec2<u32>(32u))) >> (~u_input.c.ww % vec2<u32>(32u))) & u_input.c.wz), Struct_3(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, -247f, var_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 969f, -1287f))))), vec2<bool>(!var_2.c.a.a.x, var_2.c.c.a.x)), var_2.c.a).a;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: u32) -> Struct_2 {
    var var_0 = u_input.c.zzz << (u_input.c.yyz % vec3<u32>(32u));
    var_0 = vec3<u32>(~1u, var_0.x, select(abs(7403u), 43277u, false));
    let var_1 = arg_2;
    let var_2 = func_5(_wgslsmith_mult_i32(-(~(-58656i)) ^ (arg_1 & u_input.a), u_input.a), func_4(~select(var_0.xx, ~vec2<u32>(33513u, 16943u), func_2()), Struct_3(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-892f + -1000f)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), Struct_1(vec2<bool>(true, true))), func_4(_wgslsmith_add_vec2_u32(~var_0.xy << (abs(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(~1u, var_0.x << (u_input.c.x % 32u))), Struct_3(countOneBits(firstLeadingBit(u_input.c.x)), arg_0.zyw, select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), any(vec2<bool>(true, true)))), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_3 = Struct_3(_wgslsmith_clamp_u32(var_0.x, firstLeadingBit(~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(40594u, 86820u, u_input.b, u_input.c.x))), _wgslsmith_mult_u32(1u, 1u) ^ select(~arg_3, 4294967295u, arg_0.x < arg_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_0.ywz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, arg_0.x, -1000f), arg_0.xzw)), vec3<f32>(-1079f, -337f, arg_0.x))) + arg_0.xxz))), var_2.a);
    return func_4(~vec2<u32>(27351u, _wgslsmith_sub_u32(var_3.a, arg_3)), Struct_3(var_0.x | arg_3, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), var_3.b.x, _wgslsmith_f_op_f32(step(arg_0.x, var_3.b.x))))), func_5(1i, func_4(u_input.c.wy, var_3, var_2), Struct_2(func_5(u_input.a, Struct_2(var_2, vec4<u32>(arg_3, 0u, arg_3, 0u), Struct_1(var_2.a), arg_3), Struct_2(Struct_1(var_2.a), u_input.c, var_2, var_1)), vec4<u32>(arg_3, arg_2, var_3.a, 48987u) << (u_input.c % vec4<u32>(32u)), func_4(vec2<u32>(var_0.x, 29682u), var_3, Struct_1(var_2.a)).c, 1u)).a), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2169f, 753f, 1355f, -838f), vec4<f32>(-1391f, 1000f, 435f, -1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1051f, 246f, -981f, -368f) - vec4<f32>(325f, -158f, 856f, 157f)))))), u_input.d, u_input.b, ~40511u);
    var_0 = Struct_2(Struct_1(func_4(~_wgslsmith_div_vec2_u32(vec2<u32>(26215u, 15587u), u_input.c.xx), Struct_3(~23030u, vec3<f32>(1f, 1f, 1f), var_0.c.a), var_0.c).a.a), vec4<u32>(max(~var_0.d, u_input.c.x) ^ ~u_input.c.x, ~4294967295u, 22034u, (max(0u, var_0.b.x) & _wgslsmith_add_u32(5743u, 5447u)) | _wgslsmith_clamp_u32(abs(1u), var_0.b.x, 20723u)), Struct_1(var_0.c.a), 41520u);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(44091u, u_input.c.x), 1130u, 26189u, 4294967295u), vec4<u32>(~(_wgslsmith_add_u32(u_input.b, 75910u) << (4294967295u % 32u)), u_input.c.x, _wgslsmith_dot_vec4_u32(~abs(var_0.b), ~(~u_input.c)), var_0.d));
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(-303f)), _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(1191f + -297f), 722f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 113f, -1513f, -744f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-345f, 1215f, -548f, -307f) - vec4<f32>(534f, 1102f, -530f, -840f))))))), u_input.a, var_1.x, abs(_wgslsmith_dot_vec3_u32(min(abs(u_input.c.www), ~var_1.xyw), var_0.b.xzz ^ var_0.b.zyy)));
    let var_2 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.b.x, var_0.b.x), var_0.d), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(346f, -353f, _wgslsmith_f_op_f32(1104f - 1580f)) + vec3<f32>(-1647f, _wgslsmith_f_op_f32(step(-699f, 1000f)), -278f)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, 548f, -1783f, -1036f)) * vec4<f32>(-2439f, 896f, -135f, -743f))), -1i, 54330u, ~(~1u)).a.a);
    var var_3 = countOneBits(~vec4<i32>(select(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, u_input.d), vec3<i32>(2147483647i, 15281i, 36528i)), any(vec3<bool>(var_0.a.a.x, true, var_2.c.x))), (-18330i & u_input.a) ^ firstLeadingBit(u_input.a), u_input.d, (u_input.d << (u_input.c.x % 32u)) & _wgslsmith_clamp_i32(u_input.a, u_input.d, 11094i)));
    let var_4 = ~_wgslsmith_div_vec4_u32(var_0.b, var_0.b);
    var_3 = firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 0i, 41473i, u_input.d), vec4<i32>(-56455i, u_input.d, var_3.x, -16156i)), select(vec4<i32>(var_3.x, 6931i, u_input.d, -209i), vec4<i32>(u_input.d, 1i, u_input.a, u_input.d), true)) >> (vec4<u32>(var_1.x, _wgslsmith_div_u32(var_1.x, 30952u), countOneBits(var_2.a), var_0.d) % vec4<u32>(32u))) & ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, ~var_3.x, ~0i, _wgslsmith_mod_i32(u_input.d, 12445i)), firstLeadingBit(vec4<i32>(-4149i, -26568i, u_input.d, 37516i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x);
}

