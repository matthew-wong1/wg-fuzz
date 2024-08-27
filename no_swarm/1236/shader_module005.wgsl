struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.a * -531f), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-224f, _wgslsmith_f_op_f32(abs(arg_0.a))))))), arg_1, _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x >> (u_input.b % 32u), ~45355u, 0u, u_input.a.x), vec4<u32>(~u_input.b << ((u_input.b & u_input.a.x) % 32u), u_input.b, arg_0.b, u_input.b)));
    let var_1 = ~17914u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * 611f) - _wgslsmith_f_op_f32(-1447f * var_0.b)), -332f)), _wgslsmith_f_op_f32(max(var_0.b, var_0.a)), var_0.a), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-151f, _wgslsmith_f_op_f32(sign(-1645f))), var_0.b, _wgslsmith_f_op_f32(step(-1096f, arg_0.a)), var_0.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-919f, arg_0.a, var_0.a, -121f)), vec4<f32>(_wgslsmith_f_op_f32(var_0.b + var_0.b), _wgslsmith_div_f32(-692f, var_0.a), _wgslsmith_f_op_f32(step(arg_0.a, -469f)), -617f)))), true));
    var var_3 = Struct_1(arg_1, ~1u);
    var_3 = Struct_1(_wgslsmith_clamp_u32(~var_1, ~_wgslsmith_dot_vec2_u32(u_input.a.zz, var_0.d.ww), var_1) >= ~u_input.b, _wgslsmith_mult_u32(var_1, 15716u));
    return _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.d.x, 15375u, 88242u), vec4<u32>(103715u, u_input.b, var_3.b, var_0.d.x)) << (0u % 32u), _wgslsmith_sub_u32(max(var_1 & _wgslsmith_mult_u32(6969u, 12260u), firstLeadingBit(var_0.d.x)), var_1 ^ ~1u));
}

fn func_2() -> Struct_4 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(1u ^ u_input.a.x, u_input.b), ~(~(~(~28005u))), reverseBits(u_input.b));
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(func_3(Struct_3(-665f, 21256u), true), 0u, u_input.b, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 26271u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, u_input.b, u_input.a.x)), u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.x, 73484u, u_input.a.x, var_0.x), vec4<u32>(u_input.b, 36647u, 4294967295u, 0u), true), firstTrailingBit(vec4<u32>(var_0.x, u_input.b, var_0.x, 1u))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1240f, 348f) * _wgslsmith_f_op_f32(-472f - -1000f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-530f + -1246f), -1460f)))));
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-276f - var_2.x))), var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-611f - var_2.x)))))), true, select(~abs(vec4<u32>(var_0.x, u_input.b, 1u, 27809u)), vec4<u32>(~(~0u), _wgslsmith_mult_u32(var_0.x, 1u), var_0.x, 1u), vec4<bool>(true, select(true, false, true) | true, true | all(vec4<bool>(false, true, false, true)), !any(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(1u), var_3.d.x, u_input.a.x), ~(~vec3<u32>(var_0.x, 1u, u_input.b)));
    return Struct_4(19555i & (1i ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(27037i, -6195i, -2147483647i)), -vec3<i32>(-1i, -2147483647i, -4035i))), var_0.x, _wgslsmith_sub_i32(-2147483647i, ~0i));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(4294967295u);
    var var_1 = func_2();
    var var_2 = true;
    var_1 = Struct_4(reverseBits(min(_wgslsmith_add_i32(var_1.c, var_1.a) | 20811i, var_1.a)), 32162u, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.a), firstTrailingBit(~vec2<i32>(var_1.a, 28817i))));
    var_1 = Struct_4(~_wgslsmith_clamp_i32(~var_1.c, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.c, var_1.a), var_1.a, _wgslsmith_add_i32(var_1.c, var_1.a)), -80167i ^ _wgslsmith_sub_i32(16192i, var_1.a)), 52381u, ~_wgslsmith_sub_i32(-1i, -1i));
    return Struct_1(false, abs(~u_input.b));
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_u32(27540u | func_3(Struct_3(-1000f, _wgslsmith_mod_u32(35888u, 3261u)), !(!arg_0.a)), 4294967295u & arg_0.b);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(325f, _wgslsmith_f_op_f32(523f - 157f))) - -997f))), _wgslsmith_f_op_f32(-1047f - 1f), false, (vec4<u32>(u_input.b, 56722u, ~arg_0.b, ~1u) | vec4<u32>(arg_0.b, func_3(Struct_3(2263f, arg_0.b), true), ~u_input.b, ~u_input.b)) << (vec4<u32>(min(~1u, min(1u, u_input.a.x)), _wgslsmith_clamp_u32(abs(arg_0.b), firstTrailingBit(4294967295u), ~u_input.b), 0u, ~(~1525u)) % vec4<u32>(32u)));
    var_0 = firstTrailingBit(max(arg_0.b, 4294967295u));
    var var_2 = true;
    var_0 = _wgslsmith_mult_u32(0u, ~(4294967295u << (0u % 32u)) >> (u_input.a.x % 32u));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = u_input.a.x;
    let var_1 = reverseBits(select(vec2<i32>(-1i) * -vec2<i32>(36778i, 33344i), vec2<i32>(max(2147483647i, 23649i), -2147483647i), false | any(vec3<bool>(false, true, false))) >> (~(~(vec2<u32>(u_input.b, 85008u) | vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1())));
    var var_3 = Struct_3(592f, ~u_input.a.x);
    var var_4 = u_input.b;
    let var_5 = min(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.b, abs(~u_input.b))), ~31048u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(49178u, var_5)), ~vec4<i32>(~(-23322i), -_wgslsmith_add_i32(0i, -20787i), reverseBits(2147483647i << (u_input.b % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, 12880i), -vec3<i32>(0i, -24782i, 3699i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2222f), _wgslsmith_f_op_f32(209f * -789f))), _wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(abs(var_3.a)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, _wgslsmith_f_op_f32(round(var_3.a))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(162f, -837f))))));
}

