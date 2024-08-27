struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    var var_0 = arg_0.b;
    let var_1 = ~_wgslsmith_mod_u32(1u, ~0u);
    let var_2 = 0u;
    var_0 = 104840u;
    var var_3 = 1i >> ((39547u & ~var_1) % 32u);
    return arg_0.c;
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, u_input.c) & select(vec2<u32>(4294967295u, 17850u), vec2<u32>(0u, 3424u), true)), ~vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 11719u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.c)))), min(u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(90603u, 2325u, u_input.a) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(40319u), ~4294967295u, 41058u))), u_input.a);
    var_0 = u_input.c;
    var_0 = u_input.a;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + -1783f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) * _wgslsmith_f_op_f32(-2001f + _wgslsmith_div_f32(208f, 339f))));
    var var_2 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(Struct_1(false, 0u, vec4<bool>(true, false, true, false), 1i), false).x), vec3<bool>(false, func_2(Struct_1(true, 140829u, vec4<bool>(true, true, true, false), u_input.b.x), any(vec3<bool>(true, true, false))).x, false && (u_input.b.x < -30868i)), vec3<bool>(true, all(vec2<bool>(true, true)), true)), vec3<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, false, false), true)), var_1.x <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(399f, var_1.x)), _wgslsmith_add_u32(u_input.a, u_input.a ^ u_input.a) != (_wgslsmith_sub_u32(1u, 0u) << (~u_input.c % 32u))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return !(!vec4<bool>(false, any(vec4<bool>(true, true, false, true)), var_2.x, !var_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(any(!vec3<bool>(select(false, true, false), false, false)), any(select(select(vec4<bool>(true, true, true, true), func_2(Struct_1(false, u_input.c, vec4<bool>(true, true, false, true), -1i), true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, true), func_3(vec4<f32>(-1595f, 551f, -266f, 619f)), true), true)), func_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-603f + 1000f))), _wgslsmith_f_op_f32(trunc(-268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1948f)), _wgslsmith_div_f32(1907f, _wgslsmith_f_op_f32(-521f - 792f)))).x);
    var var_1 = Struct_1(!var_0.x | any(vec3<bool>(!var_0.x, var_0.x, false)), ~(~(~u_input.a)) | 79462u, func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, 534f, 398f, -752f)), vec4<f32>(331f, 218f, -1000f, -478f))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(-616f)), _wgslsmith_f_op_f32(-1563f + -1102f), _wgslsmith_f_op_f32(f32(-1f) * -1550f)))), -(~(-2147483647i)));
    let var_2 = Struct_1(true, var_1.b, select(!select(!vec4<bool>(false, var_0.x, var_1.a, var_1.c.x), var_1.c, !var_1.c), !vec4<bool>(true, var_0.x || var_0.x, true, var_1.c.x != var_1.a), var_1.a), 8423i);
    let var_3 = -select(max(-vec4<i32>(-23511i, 29930i, u_input.b.x, var_1.d), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.d, 2147483647i, var_1.d, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))) << (vec4<u32>(var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27045u, 16069u, var_1.b), vec4<u32>(1u, u_input.a, 123481u, u_input.c)), u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), max(var_1.d, -18227i), i32(-1i) * -1i, u_input.b.x) >> (((vec4<u32>(var_2.b, 28377u, var_1.b, u_input.a) << (vec4<u32>(105934u, u_input.a, 1u, 0u) % vec4<u32>(32u))) & abs(vec4<u32>(0u, 38517u, 0u, 14022u))) % vec4<u32>(32u)), any(!var_2.c.yw));
    var_1 = var_2;
    return Struct_1(var_0.x, 4294967295u & min(~_wgslsmith_mult_u32(u_input.c, 26724u), _wgslsmith_mod_u32(7347u, 19999u)), var_2.c, var_1.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, arg_2.yx), select(u_input.b, vec2<i32>(arg_2.x, arg_0.d), vec2<bool>(false, true)))), _wgslsmith_mod_i32(-4950i, 48731i), u_input.b.x), ~(-vec3<i32>(_wgslsmith_dot_vec3_i32(arg_2, arg_2), 0i, 57555i << (arg_1.x % 32u))));
    var var_1 = max(~abs(vec3<u32>(arg_1.x, 4294967295u, arg_0.b)), vec3<u32>(0u, arg_0.b | abs(43418u), 7187u));
    var_1 = vec3<u32>(firstLeadingBit(38095u), ~(~(~arg_1.x ^ u_input.c)), u_input.a);
    var_0 = ~(-reverseBits(abs(~arg_2)));
    let var_2 = ~(~_wgslsmith_clamp_vec2_i32(max(~vec2<i32>(arg_2.x, arg_0.d), arg_2.zx), -(~var_0.zy), u_input.b));
    return 1u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -287f))), -1575f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(1943f))));
    var var_1 = vec4<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), true && (arg_0.c.x | true))) * -141f), var_0.x);
    var var_2 = arg_0;
    let var_3 = arg_2.c;
    var var_4 = Struct_1(arg_0.b <= u_input.c, max(arg_0.b, arg_2.b), var_2.c, ~(i32(-1i) * -select(arg_2.d, arg_0.d, false)));
    return Struct_1(true, _wgslsmith_mult_u32(min(_wgslsmith_mod_u32(~100542u, arg_2.b), _wgslsmith_sub_u32(~arg_0.b, 38014u)), _wgslsmith_clamp_u32(arg_2.b, arg_1.b, max(arg_1.b ^ u_input.c, 1u))), vec4<bool>(true, true, var_4.d <= ~firstLeadingBit(var_2.d), func_1().c.x), _wgslsmith_mod_i32(arg_2.d, -(~arg_1.d ^ reverseBits(16086i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec2<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))));
    var var_1 = func_5(Struct_1(max(29395u, ~u_input.a) > u_input.a, func_4(func_1(), ~vec2<u32>(101284u, 4294967295u), (vec3<i32>(7318i, -9808i, -1i) >> (vec3<u32>(u_input.c, u_input.a, u_input.c) % vec3<u32>(32u))) ^ -vec3<i32>(20669i, u_input.b.x, -2515i)), !vec4<bool>(true, true, false, any(vec3<bool>(true, false, false))), _wgslsmith_sub_i32(5552i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x)) & ~u_input.b.x)), func_1(), Struct_1(false, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.c), vec4<u32>(58052u, u_input.a, u_input.c, 17192u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(false, true, true)), vec4<bool>(true, true, true, true)), _wgslsmith_mult_i32(u_input.b.x, -17483i)));
    let var_2 = Struct_1(false, 4294967295u, var_1.c, var_1.d);
    var_0 = false;
    let var_3 = _wgslsmith_mult_i32(-15671i, _wgslsmith_mod_i32(0i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(-168f);
}

