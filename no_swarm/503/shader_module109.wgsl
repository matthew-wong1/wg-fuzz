struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1u, vec2<i32>(2147483647i, 0i), 786f, 0i), Struct_1(4294967295u, vec2<i32>(66189i, 28439i), -1202f, 53738i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-233f, arg_1.c.c, arg_1.b.x, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2289f, -963f, arg_1.b.x, arg_1.b.x))))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, 1000f, -223f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1414f, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(250f, 912f, 869f, 193f))), !all(vec2<bool>(true, true)))));
    global0 = array<Struct_1, 2>();
    let var_1 = vec4<i32>(-2333i, -min(_wgslsmith_mod_i32(-38006i, u_input.a.x), -10412i), min(arg_1.a, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 27787i, arg_1.a), vec4<i32>(arg_1.c.d, 1i, -1i, arg_1.a)))), countOneBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -19914i, -2147483647i, 0i), vec4<i32>(2147483647i, u_input.b.x, arg_1.a, u_input.b.x))) ^ arg_1.c.d);
    let var_2 = ~vec4<u32>(u_input.c & _wgslsmith_mod_u32(~arg_1.c.a, arg_0.x), ~(~arg_0.x), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(93430u, 4294967295u, arg_1.c.a, u_input.c), vec4<u32>(arg_0.x, arg_0.x, 76701u, arg_1.c.a))) << (0u % 32u), ~66680u & _wgslsmith_div_u32(abs(arg_1.c.a), ~u_input.c));
    let var_3 = vec3<u32>(abs(~(~1u)), _wgslsmith_div_u32(~15246u, ~u_input.c), select(32722u & _wgslsmith_add_u32(~u_input.c, 69170u), ~(~arg_1.c.a), true));
    return ~max(vec2<i32>(2147483647i, _wgslsmith_div_i32(2147483647i, 2233i)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-var_1.zx, arg_1.c.b), ~vec2<i32>(arg_1.a, 2147483647i)));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(all(vec2<bool>(true, true)), -2147483647i, -func_3(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 41204u), vec2<u32>(u_input.c, 35708u), vec2<u32>(1u, 4294967295u))), Struct_3(max(2147483647i, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(316f, -382f)), Struct_1(u_input.c, u_input.a, 1833f, -23282i))));
    var_0 = Struct_4(!select(true, false, true), i32(-1i) * -2147483647i, vec2<i32>(-var_0.b, abs(var_0.b)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(-266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1241f) - -1105f), _wgslsmith_f_op_f32(ceil(1542f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1294f)) * -219f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, -764f, 683f, -215f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, -306f, 346f, -430f))), vec4<bool>(true || var_0.a, !var_0.a || var_0.a, all(select(vec4<bool>(false, false, true, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(true, true, var_0.a, true))), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, 1341f, -1328f, -904f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1297f, -933f, 1367f, -296f)))))));
    var_0 = Struct_4(true, _wgslsmith_sub_i32(~(~_wgslsmith_sub_i32(17199i, -15772i)), -42227i), _wgslsmith_add_vec2_i32(vec2<i32>(select(-1i << (u_input.c % 32u), firstLeadingBit(-21507i), all(vec4<bool>(true, false, false, var_0.a))), -(~u_input.b.x)), var_0.c));
    var var_2 = -744f;
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-274f + -1416f)))));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_1 = Struct_3(reverseBits(u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -459f), _wgslsmith_f_op_f32(step(-213f, -126f))) * -525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1176f, 537f)))), global0[_wgslsmith_index_u32(1u, 2u)]);
    var_1 = Struct_3(-((countOneBits(u_input.b.x) << (select(var_1.c.a, var_1.c.a, var_0) % 32u)) << (9337u % 32u)), var_1.b, global0[_wgslsmith_index_u32(69114u, 2u)]);
    return abs(var_1.c.d);
}

fn func_4(arg_0: i32, arg_1: i32) -> i32 {
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(24296i <= func_4(-18643i, func_1(vec2<bool>(false, false))), false, u_input.a.x > u_input.b.x));
    global0 = array<Struct_1, 2>();
    var var_1 = 8017u;
    var var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(45772u), 2u)];
    var var_3 = Struct_2(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), ~(~var_2.a) == ~u_input.c, false, !(var_2.a <= ~1u)), min(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(5379i, 0i, u_input.a.x), u_input.b), ~vec3<i32>(18903i, var_2.d, u_input.a.x)) << (abs(reverseBits(vec3<u32>(u_input.c, 1u, 36772u))) % vec3<u32>(32u)), vec3<i32>(max(~(-29545i), func_1(vec2<bool>(false, false))), select(~u_input.a.x, func_1(vec2<bool>(true, false)), false), ~u_input.a.x)), vec3<u32>(0u, _wgslsmith_add_u32(~93946u, reverseBits(~u_input.c)), _wgslsmith_mult_u32(1u, 3002u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(var_2.b.x >> (var_2.a % 32u), 73997i)));
}

