struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec3<u32>(1u, 4294967295u, 13182u), 1076f, vec2<bool>(true, true));

var<private> global1: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, arg_3.x)), u_input.c), _wgslsmith_mod_u32(u_input.c.x, countOneBits(3093u))), reverseBits(vec3<u32>(arg_3.x >> (1u % 32u), ~(~u_input.a.x), u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), vec2<bool>(-1i < _wgslsmith_mult_i32(1i, arg_2.x), any(global0.d)));
    var var_0 = ~vec4<u32>(41413u, 4294967295u, ~abs(4294967295u), 18050u);
    var var_1 = vec2<bool>(any(vec4<bool>(global0.d.x, arg_0 != global0.d.x, true, all(vec3<bool>(arg_0, global0.d.x, true)))) & any(vec3<bool>(true, true, true)), arg_0);
    var_0 = vec4<u32>(arg_3.x, 1u, _wgslsmith_sub_u32(16354u, 0u), _wgslsmith_clamp_u32(select(u_input.a.x, ~1u, global0.d.x && true), ~u_input.c.x, ~min(_wgslsmith_sub_u32(57624u, global0.b.x), 1u)));
    global1 = _wgslsmith_f_op_f32(-global0.c);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(-global0.c), -352f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, global0.c) - _wgslsmith_f_op_f32(global0.c - 693f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - -1245f)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    let var_0 = Struct_1(global0.b.x, select(arg_1.b, global0.b, select(vec3<bool>(any(vec4<bool>(arg_2.x, arg_2.x, global0.d.x, false)), all(vec3<bool>(global0.d.x, arg_1.d.x, true)), true), select(!vec3<bool>(true, true, arg_2.x), !vec3<bool>(false, arg_2.x, global0.d.x), arg_1.d.x), !select(vec3<bool>(arg_1.d.x, true, true), vec3<bool>(false, global0.d.x, global0.d.x), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3(all(vec4<bool>(false, arg_1.d.x, false, arg_1.d.x)), u_input.b, vec2<i32>(u_input.b, 2147483647i) >> (vec2<u32>(51616u, u_input.a.x) % vec2<u32>(32u)), ~global0.b)).x, _wgslsmith_f_op_f32(f32(-1f) * -274f))) * global0.c), !(!(!vec2<bool>(arg_2.x, arg_1.d.x))));
    let var_1 = vec3<bool>(any(!select(select(vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(false, true, true, true), var_0.d.x), select(vec4<bool>(arg_1.d.x, arg_2.x, true, arg_1.d.x), vec4<bool>(true, arg_1.d.x, global0.d.x, arg_1.d.x), true), vec4<bool>(arg_1.d.x, arg_2.x, true, false))), !all(select(!vec4<bool>(global0.d.x, true, true, false), vec4<bool>(false, arg_2.x, true, arg_2.x), false)), arg_1.d.x);
    var var_2 = vec2<bool>(global0.d.x, var_0.d.x);
    global1 = var_0.c;
    let var_3 = Struct_1(72793u, max(~firstLeadingBit(vec3<u32>(1u, global0.a, global0.a)), vec3<u32>(0u, 4294967295u, select(var_0.a, ~11124u, true))), 364f, select(arg_2, var_1.yx, !all(vec2<bool>(global0.d.x, true))));
    return ~87239i;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = abs(vec3<u32>(~(~arg_2.b), 29874u, ~arg_2.b));
    global0 = Struct_1(arg_2.b, ~abs(vec3<u32>(~u_input.a.x, ~var_0.x, 0u)), -1381f, !arg_0.d.d);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-4543i, arg_0.a.x, _wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a & arg_2.a), 0i), vec4<i32>(countOneBits(max(u_input.b, 33349i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 0i), ~vec2<i32>(u_input.b, 53535i)), (arg_0.a.x << (arg_2.b % 32u)) >> (var_0.x % 32u), func_4(_wgslsmith_f_op_vec3_f32(func_3(true, -3798i, arg_0.a, arg_0.d.b)), Struct_1(47443u, global0.b, 674f, vec2<bool>(true, global0.d.x)), !vec2<bool>(global0.d.x, false)))), arg_2.a.x);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-120f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-866f, _wgslsmith_f_op_f32(arg_0.d.c - arg_0.d.c)) - _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(global0.c * arg_0.c))), global0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f + arg_0.c)), _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c * 296f))))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.c)))))), global0.c, false));
    return any(!select(select(select(vec3<bool>(false, false, arg_1.x), vec3<bool>(arg_1.x, global0.d.x, arg_1.x), true), vec3<bool>(true, false, global0.d.x), all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), vec3<bool>(true, true, true), !select(vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, true, true), false)));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_3(~arg_1.xy >> ((select(u_input.c.zx, firstTrailingBit(vec2<u32>(1u, u_input.c.x)), vec2<bool>(true, true)) >> (countOneBits(global0.b.yy) % vec2<u32>(32u))) % vec2<u32>(32u)), !any(select(select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(global0.d.x, global0.d.x, true, global0.d.x), vec4<bool>(false, global0.d.x, false, true)), select(vec4<bool>(false, false, global0.d.x, arg_0), vec4<bool>(true, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(arg_0, false, true, arg_0)), select(vec4<bool>(false, false, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, arg_0, arg_0, global0.d.x), arg_0))), global0.c, Struct_1(u_input.a.x, vec3<u32>(1u, u_input.c.x, 38423u), global0.c, vec2<bool>(true, any(select(vec4<bool>(true, global0.d.x, arg_0, true), vec4<bool>(global0.d.x, false, arg_0, arg_0), vec4<bool>(false, global0.d.x, global0.d.x, arg_0))))));
    global1 = global0.c;
    global0 = Struct_1(34107u, _wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), global0.b.x >> (_wgslsmith_sub_u32(global0.b.x, 4294967295u) % 32u), ~_wgslsmith_mod_u32(64679u, var_0.d.b.x)), vec3<u32>(_wgslsmith_clamp_u32(var_0.d.a, global0.a, var_0.d.a), ~1u, 55394u)), -452f, vec2<bool>(any(vec3<bool>(true, true, false)), !(_wgslsmith_f_op_f32(-var_0.d.c) >= 1149f)));
    global0 = var_0.d;
    var var_1 = ~firstTrailingBit(u_input.c.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c)), _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(global0.c + global0.c)))), 2991f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1711f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1177f - 363f) * _wgslsmith_f_op_f32(round(var_0.d.c)))), _wgslsmith_f_op_f32(f32(-1f) * -544f), false))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: i32) -> vec3<f32> {
    global1 = _wgslsmith_f_op_f32(func_5(true, vec4<i32>(-5415i, reverseBits(~u_input.b), u_input.b, -(i32(-1i) * -4187i)) >> (vec4<u32>(4466u, select(0u, 1u, func_2(Struct_3(vec2<i32>(1i, 1i), arg_2, global0.c, Struct_1(arg_1, vec3<u32>(4294967295u, 4294967295u, 0u), 380f, global0.d)), global0.d, Struct_2(vec2<i32>(0i, -1i), 7728u))), 17348u, 1u) % vec4<u32>(32u))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1237f)) - 234f)))), _wgslsmith_f_op_f32(max(638f, _wgslsmith_f_op_f32(-global0.c))), 312f);
    let var_1 = 1f;
    var var_2 = global0.b.x & ~1u;
    let var_3 = abs(global0.a) << (~max(~(~4294967295u), arg_1) % 32u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 165f, var_0.x) + vec3<f32>(1000f, var_1, -373f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -393f;
    var var_0 = global0.d.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1(!any(global0.d), max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 39850u, global0.b.x, 34519u) | vec4<u32>(9895u, 85673u, global0.b.x, 27050u), firstLeadingBit(vec4<u32>(global0.b.x, u_input.a.x, 1u, 0u))), global0.b.x, ~_wgslsmith_div_u32(global0.b.x, 61003u)), ~(~u_input.a.x) << (~global0.a % 32u)), any(select(!vec3<bool>(true, false, global0.d.x), vec3<bool>(global0.d.x | true, true, false), ~u_input.c.x > u_input.c.x)), -(_wgslsmith_sub_i32(u_input.b, 18044i) ^ 0i)));
    global0 = Struct_1(1u, vec3<u32>(~9623u, global0.a, global0.a ^ _wgslsmith_add_u32(select(u_input.a.x, 0u, global0.d.x), select(u_input.c.x, global0.b.x, false))), var_1.x, !global0.d);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -530f);
    var var_3 = global0.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(func_5(global0.d.x, _wgslsmith_add_vec4_i32(abs(vec4<i32>(29685i, 23906i, u_input.b, 38115i)), ~vec4<i32>(u_input.b, u_input.b, -34312i, 4594i))))));
}

