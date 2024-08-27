struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-214f, vec2<i32>(2147483647i, 43043i), 2147483647i), Struct_1(1758f, vec2<i32>(i32(-2147483648), 1i), 53968i), Struct_1(1456f, vec2<i32>(-9548i, -1061i), -1i), Struct_1(-630f, vec2<i32>(-21808i, -30215i), 2147483647i), Struct_1(-513f, vec2<i32>(15226i, 1i), i32(-2147483648)), Struct_1(1776f, vec2<i32>(i32(-2147483648), 30852i), 0i), Struct_1(-504f, vec2<i32>(663i, -8920i), i32(-2147483648)), Struct_1(-141f, vec2<i32>(1i, 0i), 33161i), Struct_1(325f, vec2<i32>(2147483647i, 0i), -21680i), Struct_1(142f, vec2<i32>(-1i, 2147483647i), 2147483647i), Struct_1(148f, vec2<i32>(0i, 14802i), -1i), Struct_1(-1091f, vec2<i32>(-30458i, 30069i), 0i), Struct_1(906f, vec2<i32>(i32(-2147483648), 9609i), 1i), Struct_1(-1308f, vec2<i32>(2147483647i, -21371i), -1i), Struct_1(178f, vec2<i32>(-2620i, 1i), 2147483647i), Struct_1(171f, vec2<i32>(44034i, -7871i), i32(-2147483648)), Struct_1(-299f, vec2<i32>(i32(-2147483648), -30827i), -26010i), Struct_1(-479f, vec2<i32>(-1i, -9543i), 0i), Struct_1(-1041f, vec2<i32>(0i, -7803i), 35807i), Struct_1(-1000f, vec2<i32>(-1i, 468i), -1i), Struct_1(-491f, vec2<i32>(1i, 20128i), 1i), Struct_1(1000f, vec2<i32>(40569i, 0i), 29629i), Struct_1(-911f, vec2<i32>(-63812i, i32(-2147483648)), -18237i), Struct_1(-905f, vec2<i32>(-9151i, 2147483647i), 42624i), Struct_1(-425f, vec2<i32>(64348i, -31417i), 0i), Struct_1(-1571f, vec2<i32>(2147483647i, i32(-2147483648)), i32(-2147483648)), Struct_1(-1000f, vec2<i32>(0i, -1986i), 1i), Struct_1(486f, vec2<i32>(-8929i, 2147483647i), -52839i), Struct_1(-1234f, vec2<i32>(1i, 694i), -11339i), Struct_1(1747f, vec2<i32>(2147483647i, 61558i), 18055i));

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(63145u, 30u)];
    var var_1 = vec2<u32>(_wgslsmith_clamp_u32(u_input.c, ~10253u, ~u_input.a.x), ~reverseBits(_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x ^ u_input.c)));
    var var_2 = (~(-(~vec3<i32>(10815i, -2147483647i, u_input.b))) ^ (vec3<i32>(~var_0.b.x, 0i << (u_input.a.x % 32u), _wgslsmith_sub_i32(-2147483647i, var_0.b.x)) << (~(vec3<u32>(u_input.a.x, 101560u, var_1.x) >> (vec3<u32>(41949u, u_input.c, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))) << (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(7133u, 60098u, 96393u), abs(vec3<u32>(1u, u_input.a.x, 45175u))), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(70480u, 1u, var_1.x), vec3<u32>(69812u, 27794u, var_1.x)))), vec3<u32>(select(u_input.c, u_input.c, true), 50016u, abs(1u))) % vec3<u32>(32u));
    let var_3 = Struct_4(!(!select(vec3<bool>(true, arg_2, global1.a), select(vec3<bool>(true, false, global1.a), vec3<bool>(false, global1.a, false), vec3<bool>(arg_0.x, arg_2, true)), true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1163f + 315f), _wgslsmith_div_f32(var_0.a, -640f), _wgslsmith_f_op_f32(477f * 1000f), _wgslsmith_f_op_f32(arg_1 - 294f)))))));
    var var_4 = 790f;
    return global1.a;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global0 = array<Struct_1, 30>();
    var var_0 = func_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(select(-488f, 1000f, false)))))), true);
    var var_1 = Struct_3(Struct_2(true), Struct_2(true), vec3<u32>(52877u, 1u, arg_0.x), ~arg_0.zw);
    var_0 = true;
    var var_2 = _wgslsmith_sub_i32(u_input.b, ~u_input.b);
    return Struct_3(var_1.b, var_1.a, arg_0.zxx, firstLeadingBit(_wgslsmith_sub_vec2_u32(arg_0.wy, ~(~vec2<u32>(4294967295u, var_1.c.x)))));
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global1 = Struct_2(!(arg_0.a | true));
    global1 = arg_0;
    var var_0 = func_2(reverseBits(~_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(64809u, u_input.c, 71922u, u_input.c)), ~vec4<u32>(u_input.c, 29951u, u_input.a.x, u_input.a.x))));
    var var_1 = 1363f;
    global1 = Struct_2(var_0.b.a);
    return Struct_4(!select(!(!vec3<bool>(global1.a, false, var_0.b.a)), select(vec3<bool>(true, true, true), !vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, arg_0.a, arg_0.a)), !select(vec3<bool>(false, global1.a, arg_0.a), vec3<bool>(false, global1.a, true), vec3<bool>(var_0.a.a, false, arg_0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(472f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1538f - -649f))), _wgslsmith_f_op_f32(-1f), 1f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1735f, 593f, -1552f, 1574f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-702f, -1042f, -450f, 102f) * vec4<f32>(155f, -1748f, 867f, 1059f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1490f, 754f, 672f, -1310f))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    let var_0 = u_input.a.x;
    global1 = Struct_2(true);
    var var_1 = -1i << (0u % 32u);
    global1 = Struct_2(any(vec3<bool>((false || global1.a) && any(vec4<bool>(true, global1.a, true, false)), global1.a, true)));
    var var_2 = _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, ~u_input.b & -42564i, 1i), vec4<i32>(20586i, arg_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, ~u_input.b, firstLeadingBit(u_input.b)), ~vec3<i32>(arg_1.b.x, arg_1.c, -2818i) >> (vec3<u32>(0u, 1u, var_0) % vec3<u32>(32u))), u_input.b));
    return Struct_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(Struct_2(all(select(vec4<bool>(false, false, global1.a, true), vec4<bool>(global1.a, global1.a, global1.a, global1.a), false)))), global0[_wgslsmith_index_u32(u_input.a.x, 30u)]);
    let var_0 = Struct_4(!vec3<bool>(global1.a, true, u_input.b > (0i & u_input.b)), vec4<f32>(func_1(Struct_2(func_1(Struct_2(global1.a)).a.x)).b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1200f)), _wgslsmith_f_op_f32(f32(-1f) * -173f), any(vec4<bool>(true, global1.a, global1.a, global1.a)))), _wgslsmith_f_op_f32(max(-387f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, -843f)))), _wgslsmith_f_op_f32(min(1084f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -127f), 1099f)))));
    var var_1 = _wgslsmith_sub_vec2_u32(~(~(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a) << (~u_input.a % vec2<u32>(32u)))), min(u_input.a, vec2<u32>(4294967295u, u_input.a.x)));
    var var_2 = ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 14610i, u_input.b, u_input.b) << ((vec4<u32>(u_input.c, 1u, 0u, var_1.x) & vec4<u32>(30727u, var_1.x, 0u, 1u)) % vec4<u32>(32u)), firstTrailingBit(-vec4<i32>(67301i, u_input.b, -1i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 24491i, 2147483647i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, -13871i, u_input.b)))));
    let var_3 = func_2(_wgslsmith_div_vec4_u32(~(~min(vec4<u32>(u_input.a.x, var_1.x, u_input.c, var_1.x), vec4<u32>(u_input.a.x, var_1.x, 0u, 4294967295u))), countOneBits(select(~vec4<u32>(0u, 0u, 0u, u_input.a.x), ~vec4<u32>(1u, 12195u, 4294967295u, u_input.a.x), !var_0.a.x))));
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.zz);
}

