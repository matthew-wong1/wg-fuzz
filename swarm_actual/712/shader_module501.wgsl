struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = true;
    var var_1 = arg_0.b;
    let var_2 = arg_0.e;
    var_0 = !arg_3;
    return 0u;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(20175u, func_3(Struct_4(arg_1.x, Struct_2(true, -278f), Struct_2(true, arg_2.x), true, Struct_2(true, -1467f)), _wgslsmith_mod_i32(u_input.e, u_input.e), 1i, true)), ~1u, _wgslsmith_dot_vec3_u32(~abs(u_input.d), _wgslsmith_div_vec3_u32(~(~vec3<u32>(13600u, 36116u, arg_1.x)), ~(~u_input.d))), ~_wgslsmith_mult_u32(u_input.d.x, arg_1.x));
    global0 = array<vec2<f32>, 29>();
    var_0 = vec4<u32>(_wgslsmith_add_u32(~4294967295u, 4294967295u), _wgslsmith_clamp_u32(~var_0.x, ~_wgslsmith_mod_u32(74213u, arg_1.x) ^ _wgslsmith_sub_u32(select(var_0.x, arg_1.x, false), _wgslsmith_dot_vec3_u32(var_0.zzz, vec3<u32>(95220u, arg_1.x, 1u))), 111817u), u_input.b, 0u);
    let var_1 = 0u;
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-413f, _wgslsmith_f_op_f32(f32(-1f) * -1938f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_3) + _wgslsmith_f_op_f32(trunc(232f))))));
    return Struct_2(~(~29036u) > ~var_0.x, arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 446f, -118f, arg_0.e.b));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e.b + _wgslsmith_f_op_f32(min(arg_0.c.b, -1552f))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-636f * func_2(-476f, ~vec2<u32>(arg_0.a, u_input.d.x) | abs(u_input.d.yz), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1347f, var_0.a.x))), arg_0.c.b).b), arg_0.c.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(arg_0.c.b + var_0.a.x), ~vec2<u32>(u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_f_op_f32(-arg_0.e.b)).b))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(321f, -403f))))));
    var_3 = vec4<f32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f - 425f) * var_1.c.b), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(62217u, u_input.d.x, 0u, 17733u), vec4<u32>(var_1.a, u_input.c, 1u, var_1.a)), arg_0.a), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~firstLeadingBit(10595u), 29u)]), _wgslsmith_f_op_f32(floor(var_3.x))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.b)))), _wgslsmith_f_op_f32(select(var_3.x, arg_0.b.b, false)), -544f);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-217f, var_1.c.b))) >= -772f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(833f, var_3.x) * var_0.a.x)))), Struct_1(vec4<f32>(arg_0.e.b, var_0.a.x, arg_0.e.b, arg_0.b.b)), u_input.d.x, Struct_1(vec4<f32>(_wgslsmith_div_f32(-460f, -1898f), _wgslsmith_f_op_f32(floor(var_1.e.b)), 758f, var_0.a.x)), Struct_1(var_0.a));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    global0 = array<vec2<f32>, 29>();
    var var_0 = arg_0.a;
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(arg_0.c, arg_0.c), 4294967295u);
    var_0 = arg_0.a;
    var var_2 = func_3(Struct_4(select(4294967295u, 1u, true), Struct_2(func_4(Struct_4(4294967295u, arg_0.a, Struct_2(arg_0.a.a, arg_1), false, Struct_2(false, 1058f)), true).a.a, arg_0.b.a.x), arg_0.a, arg_2.x <= ~_wgslsmith_clamp_u32(60061u, u_input.b, var_1.x), arg_0.a), countOneBits(-2147483647i), -u_input.e, !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_mult_vec2_u32(arg_2, firstTrailingBit(arg_2)), vec2<f32>(-678f, _wgslsmith_f_op_f32(-arg_0.a.b)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -892f), ~u_input.d.yx, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, -1277f))), _wgslsmith_f_op_f32(-arg_0.d.a.x)).b).a);
    return func_4(Struct_4(1711u, func_4(Struct_4(~u_input.a, Struct_2(arg_0.a.a, arg_0.b.a.x), func_2(arg_0.e.a.x, vec2<u32>(var_1.x, 4748u), global0[_wgslsmith_index_u32(51336u, 29u)], arg_0.d.a.x), arg_0.b.a.x != 142f, arg_0.a), !var_0.a).a, Struct_2(_wgslsmith_clamp_u32(u_input.c, var_1.x, 51387u) != _wgslsmith_mod_u32(0u, var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-103f * arg_3) * -889f)), true, arg_0.a), ~_wgslsmith_mult_u32(50907u, _wgslsmith_clamp_u32(1u, 41921u, arg_2.x)) <= reverseBits(arg_0.c)).a;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(u_input.e, -12927i, 245i, u_input.e)), -vec4<i32>(0i, -7405i, -4597i, 7643i))), _wgslsmith_add_i32(abs(u_input.e), i32(-1i) * -u_input.e), u_input.e);
    var var_1 = Struct_4(~_wgslsmith_clamp_u32(56363u, ~27113u, firstLeadingBit(0u)) & reverseBits(~(u_input.d.x | u_input.b)), func_5(func_4(Struct_4(4294967295u, Struct_2(false, 1526f), Struct_2(true, -1295f), true, func_2(-2070f, vec2<u32>(15244u, 4294967295u), vec2<f32>(-451f, 1668f), -1346f)), !(var_0.x > var_0.x)), -1542f, abs(vec2<u32>(1u, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(423f + -348f))))), Struct_2(true, 1f), func_5(func_4(Struct_4(_wgslsmith_mult_u32(18u, u_input.c), func_4(Struct_4(u_input.a, Struct_2(true, -865f), Struct_2(false, 289f), true, Struct_2(false, -503f)), false).a, Struct_2(false, -367f), select(false, true, true), Struct_2(true, 843f)), false), -1000f, vec2<u32>(1103u, _wgslsmith_clamp_u32(u_input.c, u_input.b, 11416u) >> (u_input.b % 32u)), -1642f).a, func_5(func_4(Struct_4(u_input.c, Struct_2(false, 790f), func_2(-183f, vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(u_input.a, 29u)], 901f), false, Struct_2(true, -228f)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(324f, 1243f)))), firstLeadingBit(u_input.d.yz), _wgslsmith_f_op_f32(ceil(1549f))));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-var_1.c.b) < 640f, !(!var_1.c.a));
    let var_3 = vec3<i32>(var_0.x, ~_wgslsmith_sub_i32(-36440i, -abs(u_input.e)), -1i);
    var var_4 = !vec4<bool>(var_1.b.a, var_1.c.a, false, true);
    return func_4(Struct_4(_wgslsmith_dot_vec2_u32(u_input.d.zx >> (~u_input.d.zz % vec2<u32>(32u)), u_input.d.yy), var_1.e, func_4(Struct_4(~4294967295u, Struct_2(false, var_1.c.b), var_1.e, var_4.x, var_1.c), true).a, all(select(!vec4<bool>(var_2.x, var_1.e.a, var_1.c.a, var_4.x), select(vec4<bool>(var_2.x, var_1.e.a, false, var_2.x), vec4<bool>(var_4.x, var_2.x, true, true), vec4<bool>(true, true, var_4.x, true)), vec4<bool>(var_1.e.a, var_4.x, true, var_4.x))), var_1.e), (true | !var_4.x) || (~_wgslsmith_mod_u32(17991u, 1u) != var_1.a)).b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    let var_0 = u_input.d.x;
    var var_1 = u_input.e;
    global0 = array<vec2<f32>, 29>();
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_f32(floor(var_2.a.x));
    let var_4 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz, ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.e, -2147483647i, 2147483647i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.e, u_input.e), vec4<i32>(u_input.e, 14382i, -2147483647i, 849i), vec4<i32>(u_input.e, u_input.e, 5635i, u_input.e))), _wgslsmith_f_op_f32(sign(162f)));
}

