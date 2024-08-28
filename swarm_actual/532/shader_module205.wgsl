struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(367f * -328f), -307f));
    var var_1 = Struct_2(1u, Struct_1(751f, ~(-2147483647i), min(~vec3<i32>(-1i, u_input.d, -1i), _wgslsmith_sub_vec3_i32(u_input.c.yxw, -u_input.c.xyw))), u_input.a.x, u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, _wgslsmith_f_op_f32(901f + -1093f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2239f), _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2248f)) + _wgslsmith_f_op_f32(-1338f - 796f)))));
    let var_2 = firstTrailingBit(var_1.a);
    var_1 = Struct_2(var_1.a, var_1.b, -var_1.c, ~(~_wgslsmith_div_i32(~var_1.c, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(508f * 652f), _wgslsmith_f_op_f32(var_1.e.x + var_1.b.a), _wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(1082f - var_1.e.x)) + vec4<f32>(_wgslsmith_f_op_f32(303f + -268f), 1000f, var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1835f)))));
    var var_3 = any(!vec2<bool>(any(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, true, true, false)))) || any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), var_1.e.x <= -497f));
    return 726f;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = max(1u, ~(~(~0u)));
    var var_1 = 459f;
    let var_2 = Struct_4(arg_1.a, ~0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.a, arg_1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 664f, arg_1.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, 489f, arg_1.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a, arg_1.a, -213f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, arg_1.a, 580f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(318f, arg_1.a, -1500f))))));
    var_1 = _wgslsmith_f_op_f32(func_3());
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2118f - arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))))));
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0, 0u, var_2.b) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0, var_0, 4294967295u), vec3<u32>(var_2.b, var_2.b, var_0), vec3<u32>(var_2.b, 77959u, 109743u)) % vec3<u32>(32u)), vec3<u32>(var_0, var_2.b, var_0) << (abs(vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))), vec3<u32>(select(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(10454u, 40375u, var_0, var_2.b), vec4<u32>(46585u, var_2.b, 1u, var_0))), _wgslsmith_mult_u32(~var_0, var_2.b), true), 0u, 1u));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(func_2(false, Struct_1(1934f, -countOneBits(arg_3.c.x), vec3<i32>(u_input.d, arg_3.b, -arg_3.b))), Struct_1(644f, -(~1i), arg_3.c), arg_0.x, ~arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(arg_3.a * -159f), _wgslsmith_f_op_f32(arg_3.a + arg_3.a), _wgslsmith_f_op_f32(f32(-1f) * -255f)))));
    var var_1 = u_input.a.x;
    let var_2 = var_0.b;
    var_0 = Struct_2(var_0.a << (1u % 32u), Struct_1(_wgslsmith_f_op_f32(sign(-258f)), 1i, var_2.c), i32(-1i) * -arg_3.c.x, arg_0.x, var_0.e);
    var var_3 = reverseBits(select(vec4<u32>(var_0.a, ~13102u, var_0.a, ~4294967295u), ~max(~vec4<u32>(2474u, var_0.a, 4294967295u, 107480u), min(vec4<u32>(4294967295u, 4294967295u, var_0.a, 27861u), vec4<u32>(1u, 1u, var_0.a, var_0.a))), all(select(select(vec4<bool>(true, false, true, arg_2), vec4<bool>(true, false, arg_2, false), false), select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, arg_2)), vec4<bool>(arg_2, arg_2, true, false)))));
    return Struct_4(173f, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 31948u), var_3.xy >> (var_3.yy % vec2<u32>(32u))) & vec2<u32>(~0u, _wgslsmith_mod_u32(var_0.a, 36283u)), ~max(vec2<u32>(29688u, 43586u), vec2<u32>(var_0.a, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1937f, 919f, _wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.e.wzy))), select(vec3<bool>(arg_2, arg_2, true), !vec3<bool>(arg_2, arg_2, arg_2), arg_2)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = arg_0.b;
    let var_2 = Struct_1(arg_2.c.x, ~var_1.b >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_1.x, ~43501u), ~21513u) % 32u), -vec3<i32>(_wgslsmith_sub_i32(select(u_input.a.x, u_input.d, false), 1i), firstLeadingBit(select(1i, 23750i, true)), -arg_0.c | 0i));
    var var_3 = arg_2;
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_3.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -633f))), -877f, _wgslsmith_f_op_f32(sign(177f)))), _wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(arg_0.b.a, func_1(vec3<i32>(-2147483647i, u_input.b, var_0.d), _wgslsmith_f_op_f32(step(arg_0.e.x, var_3.c.x)), all(vec2<bool>(false, false)), Struct_1(864f, 43194i, var_0.b.c)).c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.a + arg_0.b.a), 1558f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c.x, 808f, false)))))));
    return select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, (var_0.b.b & var_0.b.b) >= 19523i), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec3<bool>(true, false, true)))), vec3<bool>(true, all(vec2<bool>(true, true)), !(!any(vec3<bool>(false, true, true)))), false & (all(vec4<bool>(false, false, true, true)) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.c.x, u_input.c.x);
    var_0 = u_input.c.yy;
    let var_1 = !select(func_4(Struct_2(~0u, Struct_1(109f, -2147483647i, u_input.c.zww), u_input.c.x, ~2147483647i, vec4<f32>(1f, 1f, 1f, 1f)), vec3<u32>(1u, abs(1u), ~1u), func_1(u_input.a, -349f, any(vec3<bool>(true, false, false)), Struct_1(1000f, 0i, vec3<i32>(46394i, var_0.x, 36141i)))), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), !vec3<bool>(true, var_0.x != -16285i, func_4(Struct_2(4294967295u, Struct_1(1088f, -2147483647i, u_input.c.zyx), var_0.x, -1i, vec4<f32>(-1264f, 1266f, -1000f, -368f)), vec3<u32>(0u, 5388u, 0u), Struct_4(487f, 16483u, vec3<f32>(-159f, 1217f, -2055f))).x));
    var var_2 = func_1(u_input.a, -1905f, true, Struct_1(-1053f, 35003i | ~var_0.x, vec3<i32>(1i, var_0.x & _wgslsmith_div_i32(var_0.x, 56850i), var_0.x)));
    var var_3 = vec2<u32>(func_1(abs(_wgslsmith_div_vec3_i32(u_input.c.zxw, vec3<i32>(u_input.d, u_input.c.x, u_input.d))), var_2.a, ((false & var_1.x) || !var_1.x) & any(vec2<bool>(var_1.x, false)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), ~_wgslsmith_mod_i32(var_0.x, var_0.x), ~vec3<i32>(u_input.c.x, u_input.b, -2147483647i) ^ -u_input.c.zzy)).b, max(~var_2.b, func_1(abs(u_input.c.yyy << (vec3<u32>(var_2.b, var_2.b, var_2.b) % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_3()), var_1.x, Struct_1(1000f, 13518i, _wgslsmith_mod_vec3_i32(u_input.c.yxz, vec3<i32>(2147483647i, 0i, var_0.x)))).b));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.c.x, var_2.a))), _wgslsmith_sub_u32(~(~var_3.x), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, _wgslsmith_f_op_f32(select(1131f, -739f, var_1.x)), _wgslsmith_f_op_f32(-var_2.a)))));
    let var_5 = abs(vec4<u32>(_wgslsmith_div_u32(~var_4.b, _wgslsmith_clamp_u32(61414u, var_4.b, var_4.b) << (var_2.b % 32u)), 1u, ~1u, 1u));
    var var_6 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_3.x, abs(~var_3.x)), ~func_2(true, Struct_1(730f, var_0.x, u_input.c.zzy))), _wgslsmith_div_u32(~36855u, firstTrailingBit(891u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, 1023f, var_2.c.x, -467f))))))), _wgslsmith_f_op_f32(-var_4.c.x), -1i);
}

