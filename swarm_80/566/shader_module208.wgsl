struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = Struct_3(63452u, arg_0.a.b, arg_3, -132f, _wgslsmith_f_op_vec4_f32(step(arg_3, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(905f)))), _wgslsmith_f_op_f32(f32(-1f) * -826f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.x, 411f) * 1774f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(global0.c.x))))))));
    var var_0 = arg_0.c;
    global0 = Struct_3(reverseBits(u_input.a), abs(arg_0.a.b | 46870u) | ~(~_wgslsmith_mult_u32(4294967295u, 0u)), arg_3, arg_0.a.a.x, _wgslsmith_div_vec4_f32(arg_3, arg_3));
    global0 = Struct_3(132628u, ~max(_wgslsmith_mult_u32(0u, 4385u) & ~arg_0.a.b, ~4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(642f, -591f, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.a.x)))) * global0.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(arg_3.x - -189f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.a.x - arg_3.x))))), true)), arg_3);
    var var_1 = !(any(vec4<bool>(global0.c.x <= arg_0.a.a.x, true, arg_0.b.x < u_input.b.x, true)) || all(vec3<bool>(true, arg_2 && arg_0.c, !arg_0.d.x)));
    return abs(vec3<u32>(~countOneBits(u_input.a), abs(~(global0.a & arg_0.a.b)), _wgslsmith_clamp_u32(~67732u, 4294967295u, global0.b | 13172u) | _wgslsmith_clamp_u32(~u_input.a, 61953u, 40736u)));
}

fn func_2(arg_0: i32) -> Struct_5 {
    global0 = Struct_3(max(u_input.a, global0.a & 64568u), _wgslsmith_dot_vec3_u32(func_3(Struct_2(Struct_1(global0.e.xx, u_input.a, false), vec4<i32>(u_input.b.x, arg_0, u_input.b.x, u_input.b.x), true, vec4<bool>(false, true, true, false)), -vec2<i32>(arg_0, -2147483647i), true, vec4<f32>(-944f, global0.e.x, global0.e.x, global0.e.x)), ~(~vec3<u32>(0u, global0.b, 79042u))) >> (4294967295u % 32u), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), 359f), _wgslsmith_f_op_f32(1690f - -814f), global0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1454f * -1737f), -407f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1438f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(988f)), _wgslsmith_f_op_f32(553f * global0.c.x))))), _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.d)))))), global0.e);
    var var_0 = 0i;
    var var_1 = ~u_input.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(999f - global0.c.x), -483f, _wgslsmith_div_f32(-428f, -1195f), 1345f);
    let var_3 = -879f;
    return Struct_5(u_input.b.wwz, !(!(_wgslsmith_f_op_f32(-var_3) >= -483f)), select(vec3<bool>(true, _wgslsmith_f_op_f32(floor(var_3)) == _wgslsmith_f_op_f32(global0.c.x - var_3), any(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false)), Struct_1(vec2<f32>(-1000f, -776f), countOneBits(global0.b), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d, _wgslsmith_div_f32(279f, var_3))))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_5 {
    var var_0 = func_2(select(u_input.b.x, 2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_2) - arg_0) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1784f - -1124f) - _wgslsmith_div_f32(global0.c.x, arg_2))));
    let var_1 = false;
    var var_2 = Struct_3(abs(select(_wgslsmith_mod_u32(global0.a, 1u), 1u, arg_1) ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.d.b, 0u), max(6182u, 4294967295u))), max(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.b, u_input.a, 1u), vec4<u32>(34271u, var_0.d.b, 81851u, var_0.d.b) << (vec4<u32>(1u, 0u, 73629u, global0.b) % vec4<u32>(32u))), _wgslsmith_mod_u32(var_0.d.b ^ global0.b, u_input.a)), ~_wgslsmith_clamp_u32(global0.b, global0.b, u_input.a)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -262f, 510f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e.x - -1333f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, 495f, var_0.d.a.x, -933f), global0.e)))), _wgslsmith_f_op_f32(floor(-222f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-244f, arg_0), _wgslsmith_f_op_f32(-arg_2), 2979f, _wgslsmith_f_op_f32(-global0.e.x))) - global0.c));
    let var_3 = var_0.a.xy;
    var_2 = Struct_3(func_3(Struct_2(Struct_1(vec2<f32>(arg_2, 900f), var_2.b | u_input.a, var_0.d.c), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_3.x, var_3.x, -5757i), u_input.b), true & var_0.d.c, vec4<bool>(var_0.b, false, !var_0.b, true)), _wgslsmith_mult_vec2_i32(var_0.a.xz, -(~vec2<i32>(-1i, var_3.x))), false || var_1, vec4<f32>(_wgslsmith_f_op_f32(ceil(-354f)), 1669f, 320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2602f * arg_0) + _wgslsmith_f_op_f32(-arg_2)))).x, 0u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(649f, 209f, var_2.c.x, var_0.d.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, global0.e.x, var_0.e, arg_0))), vec4<bool>(false, false, true, var_1)))))), _wgslsmith_div_f32(-123f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - -269f), _wgslsmith_f_op_f32(663f * -2247f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - var_0.d.a.x) * arg_2), var_0.e > -645f))), var_2.e);
    return func_2(abs(~u_input.b.x >> (4294967295u % 32u)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -_wgslsmith_mod_i32(0i, ~arg_0.a.x), -10109i), ~vec3<i32>(u_input.b.x, -1i, max(firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(-40365i, arg_0.a.x))));
    let var_1 = arg_0;
    global0 = Struct_3(var_1.d.b, _wgslsmith_mod_u32(~arg_1.x, firstTrailingBit(reverseBits(4294967295u) << ((19053u | arg_3.a) % 32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.e))), var_1.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.x) + global0.c.x), 1148f), var_1.e, global0.e);
    global0 = Struct_3(_wgslsmith_mult_u32(~(~11554u) & abs(~arg_0.d.b), countOneBits(reverseBits(_wgslsmith_dot_vec3_u32(arg_1.xyx, arg_1.zww)))), max(min(min(~arg_1.x, 4294967295u), firstTrailingBit(min(arg_1.x, arg_3.a))), ~20575u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1355f, _wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e + 1263f)))), arg_0.d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1965f))), _wgslsmith_f_op_vec4_f32(-global0.c));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1154f, global0.e.x)))), vec2<f32>(global0.d, arg_0.d.a.x))), _wgslsmith_sub_u32(1u, func_1(_wgslsmith_f_op_f32(abs(global0.c.x)), !arg_2.x, -1355f).d.b), var_1.d.a.x >= 189f), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, arg_0.a.x), u_input.b)), !(arg_2.x || true), select(!vec4<bool>(true, any(arg_0.c), true, arg_0.b), vec4<bool>(var_1.a.x <= -59467i, true, var_1.c.x, true), !(!func_2(u_input.b.x).b)));
    return Struct_3(1u, ~var_1.d.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, arg_0.d.a.x, 640f, arg_0.d.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.a.a.x, arg_0.e, global0.c.x), vec4<f32>(global0.c.x, var_1.d.a.x, -552f, var_1.e)) + global0.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.c)))), _wgslsmith_f_op_f32(abs(-1733f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.d, arg_0.d.a.x, -2303f, var_2.a.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.e.x - arg_0.e), -1363f)), var_2.a.a.x, var_1.e, arg_0.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(-165f, u_input.a >= ~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.e.x - -460f), _wgslsmith_f_op_f32(min(690f, global0.d)))))), select(~(vec4<u32>(global0.a, u_input.a, 1u, global0.b) << (vec4<u32>(global0.a, global0.a, global0.b, u_input.a) % vec4<u32>(32u))), select(~vec4<u32>(global0.b, global0.b, u_input.a, global0.a), abs(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)), true), true) & max(firstLeadingBit(~vec4<u32>(u_input.a, global0.a, 37938u, 5923u)), ~vec4<u32>(1892u, global0.a, global0.a, global0.b)), vec2<bool>(false, false), Struct_4(4294967295u));
    global0 = Struct_3(abs(reverseBits(~(global0.b | global0.b))), 11596u >> (~_wgslsmith_add_u32(func_1(global0.c.x, true, 402f).d.b, u_input.a) % 32u), _wgslsmith_f_op_vec4_f32(trunc(global0.c)), -263f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 1271f, 1280f, -1361f)));
    var var_0 = 197f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1334f);
    global0 = Struct_3(global0.b, ~13499u, global0.e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1510f)))), global0.c);
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(343f)) + 677f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + _wgslsmith_f_op_f32(sign(-1822f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + 1000f))), ~min(u_input.b, abs(vec4<i32>(u_input.b.x, var_1, u_input.b.x, -1i))) & firstTrailingBit(u_input.b), -_wgslsmith_sub_vec3_i32(countOneBits(select(vec3<i32>(var_1, -9263i, -22955i), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), false)), ~u_input.b.wzz), select(vec2<u32>((global0.a << (u_input.a % 32u)) | 24853u, ~(~0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(6126u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 14934u), vec2<u32>(u_input.a, 4999u))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(u_input.b.x).b))));
}

