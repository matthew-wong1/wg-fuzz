struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_3.b, min(vec3<u32>(min(u_input.a, abs(u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.b.x, 4294967295u, arg_3.b.x), vec3<u32>(arg_3.b.x, 0u, 0u) << (vec3<u32>(arg_3.b.x, 40986u, arg_3.b.x) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_div_u32(22272u, 132005u))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(arg_3.b, arg_3.b, vec3<bool>(arg_2, true, false)), vec3<u32>(u_input.a, u_input.a, arg_3.b.x)), _wgslsmith_sub_vec3_u32(abs(arg_3.b), vec3<u32>(arg_3.b.x, u_input.a, u_input.a)))));
    var var_1 = Struct_1(arg_0);
    let var_2 = 51599u;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_0, 1575f, 680f) * vec4<f32>(1336f, arg_0, var_1.a, var_1.a)), vec4<f32>(-314f, -193f, -397f, 1045f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a, arg_0, -401f, arg_0), vec4<f32>(-220f, -1862f, -962f, var_1.a))), vec4<f32>(var_1.a, -564f, 673f, -1632f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1710f, arg_0, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(min(-364f, arg_0)), _wgslsmith_f_op_f32(-var_1.a), arg_0, _wgslsmith_f_op_f32(-var_1.a)))), all(vec4<bool>(true, true, arg_2 == arg_2, arg_2))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(792f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, 345f))), _wgslsmith_f_op_f32(round(var_1.a)))));
    return arg_2;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(411f);
    let var_1 = select(countOneBits(abs(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.c.x)))), select(u_input.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.b.x, u_input.c.x, 6193i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, -29162i, u_input.b.x), vec4<i32>(u_input.b.x, 6937i, u_input.b.x, u_input.c.x))) ^ vec4<i32>(abs(u_input.b.x), ~u_input.b.x, 8813i, ~u_input.b.x), !vec4<bool>(true, func_3(var_0.a, Struct_5(Struct_3(u_input.b.x)), true, Struct_2(u_input.c, vec3<u32>(1u, 0u, 1u))), any(vec2<bool>(true, true)), false)), u_input.a > 0u);
    var var_2 = vec4<bool>(any(select(vec4<bool>(true, true, all(vec3<bool>(false, false, true)), false), vec4<bool>(true, true, true, true), true)), (countOneBits(~19517i) | _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zzy, vec3<i32>(u_input.c.x, var_1.x, u_input.c.x)), _wgslsmith_div_vec3_i32(var_1.zxw, var_1.www))) < _wgslsmith_dot_vec3_i32(vec3<i32>(~var_1.x, i32(-1i) * -35642i, 2147483647i), firstLeadingBit(abs(var_1.xxx))), false, true);
    var_2 = vec4<bool>(all(!var_2.yy), false, !(u_input.a >= _wgslsmith_div_u32(1u, u_input.a)), all(!(!(!vec2<bool>(var_2.x, false)))));
    var var_3 = ~(countOneBits(vec2<u32>(1u, 93755u) | vec2<u32>(u_input.a, u_input.a)) & vec2<u32>(4294967295u, ~u_input.a)) ^ abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 2539u) ^ ~vec2<u32>(0u, 1u), vec2<u32>(u_input.a, u_input.a)));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a, _wgslsmith_div_f32(750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-635f)))), _wgslsmith_f_op_f32(-var_0.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(788f + _wgslsmith_f_op_f32(step(var_0.x, arg_0.x))), 464f))), _wgslsmith_f_op_f32(f32(-1f) * -285f), -143f);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1267f, _wgslsmith_f_op_f32(-var_0.x), arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-477f, 1000f, -179f, arg_3.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 686f, 875f, 1896f) - vec4<f32>(536f, arg_0.x, arg_3.a, arg_0.x))))), arg_0);
    var var_1 = arg_1;
    var_1 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(arg_3.a - -1000f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_4) -> f32 {
    let var_0 = true;
    var var_1 = ~(vec3<u32>(_wgslsmith_mod_u32(~32585u, arg_0.x), 1u, arg_0.x) & vec3<u32>(1u, _wgslsmith_mult_u32(u_input.a & 4294967295u, ~1u), min(u_input.a, abs(u_input.a))));
    let var_2 = true;
    let var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a << (_wgslsmith_add_u32(arg_0.x, 1u) % 32u), arg_0.x, abs(_wgslsmith_div_u32(var_1.x, arg_0.x))), vec3<u32>(42613u, select(4294967295u, var_1.x, any(vec4<bool>(var_2, var_2, true, var_2))), var_1.x));
    let var_4 = vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.yy ^ firstTrailingBit(u_input.b.xy), _wgslsmith_add_vec2_i32(select(u_input.c.zx, u_input.c.xx, vec2<bool>(false, var_0)), ~vec2<i32>(0i, u_input.c.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -820f;
    var var_1 = vec3<f32>(-621f, 1031f, _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), func_1(vec4<f32>(1126f, -1367f, 327f, 926f), Struct_5(Struct_3(1i)), vec3<bool>(true, true, false), Struct_1(1127f)), _wgslsmith_f_op_f32(sign(2297f)), Struct_4(u_input.b.x))))));
    var var_2 = _wgslsmith_div_vec3_u32(~vec3<u32>(abs(u_input.a), 4294967295u | u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(102076u, 52242u, 3191u) & vec3<u32>(0u, u_input.a, 21682u), vec3<u32>(u_input.a, u_input.a, 1u), abs(vec3<u32>(7880u, 114355u, 13752u))) ^ vec3<u32>(max(u_input.a, u_input.a), u_input.a, u_input.a)) >> ((select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 33676u, 86503u), vec3<u32>(u_input.a, u_input.a, u_input.a)), u_input.a, firstLeadingBit(45943u)), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true)) << (vec3<u32>(_wgslsmith_sub_u32(~0u, u_input.a), u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-328f, 1007f, false))))));
    let var_3 = Struct_2(u_input.b.zzz, _wgslsmith_mult_vec3_u32(select(vec3<u32>(var_2.x, 0u, 4294967295u), vec3<u32>(0u, u_input.a, var_2.x), false) ^ vec3<u32>(var_2.x, 61720u, 4294967295u), min(~vec3<u32>(u_input.a, var_2.x, u_input.a), min(vec3<u32>(0u, var_2.x, u_input.a), vec3<u32>(4294967295u, u_input.a, var_2.x)))) << (min(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 10861u, var_2.x), vec3<u32>(var_2.x, 13876u, u_input.a)), ~abs(vec3<u32>(u_input.a, 22924u, var_2.x))) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -738f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(-50399i, var_3.a.x, var_3.a.x, u_input.b.x)), -_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, u_input.c.x, var_3.a.x, -30402i) << (vec4<u32>(var_2.x, 4294967295u, var_2.x, u_input.a) % vec4<u32>(32u)))));
}

