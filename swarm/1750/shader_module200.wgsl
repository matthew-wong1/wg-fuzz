struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32 = 0u;

var<private> global2: Struct_3 = Struct_3(-827f, vec2<u32>(41832u, 83981u), 37184u, 16338u, vec2<i32>(-1i, -42513i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = abs(global2.b.x);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + -1199f) + 1034f))) * _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-global2.a)))), global2.a));
    let var_2 = u_input.a.x >> (~global2.b.x % 32u);
    var var_3 = 928f;
    var_3 = _wgslsmith_f_op_f32(-var_1);
    return abs(global2.d);
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = func_3();
    var var_0 = _wgslsmith_f_op_f32(-global2.a);
    var var_1 = ~(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, u_input.a.x), firstLeadingBit(u_input.a.x)), 2147483647i, global2.e.x, select(11708i, global2.e.x, true) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.d, global2.c), global2.b) % 32u)) >> ((_wgslsmith_mult_vec4_u32(~vec4<u32>(global2.c, global2.b.x, global2.c, 15732u), vec4<u32>(global2.b.x, global2.c, global2.d, 6800u)) | ~select(vec4<u32>(global2.d, global2.b.x, 0u, 0u), vec4<u32>(global2.c, global2.d, 35239u, global2.d), true)) % vec4<u32>(32u)));
    global0 = 1000f;
    return Struct_3(1119f, vec2<u32>(1u, global2.c ^ _wgslsmith_div_u32(~56577u, _wgslsmith_sub_u32(global2.c, 0u))), global2.c, max(global2.d, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, global2.c, global2.c, global2.d) << (vec4<u32>(1u, global2.d, 60735u, 5720u) % vec4<u32>(32u)), vec4<u32>(global2.d & 1u, global2.c, _wgslsmith_add_u32(18065u, global2.c), abs(4294967295u)))), var_1.yx);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(vec3<bool>(!((arg_3.a.x <= arg_1.a) | all(vec2<bool>(true, false))), true, (max(-1i, 29541i) >= _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) & false));
    var var_1 = !vec4<bool>(1u > global2.d, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false)), true);
    var_0 = var_1.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.d));
    var_1 = select(vec4<bool>(true, var_1.x, true, all(vec4<bool>(false, !var_1.x, any(vec3<bool>(true, true, var_1.x)), var_1.x))), vec4<bool>(!(_wgslsmith_f_op_f32(var_2.x + -783f) < _wgslsmith_f_op_f32(arg_3.a.x * -1067f)), all(!select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true)), false, true), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.a.x)) - arg_2.a.a.x) <= func_2(_wgslsmith_f_op_f32(abs(1061f))).a));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1265f)) * _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - arg_2.d.x)), 1308f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.a.a.x, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a.c.a)))));
}

fn func_1() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(-global2.a)));
    var var_0 = Struct_1(vec4<f32>(global2.a, 155f, _wgslsmith_f_op_f32(ceil(-448f)), _wgslsmith_f_op_f32(abs(global2.a))));
    global1 = select(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(global2.d, global2.c), ~1u), countOneBits(_wgslsmith_clamp_u32(21602u >> (global2.b.x % 32u), global2.b.x & 38050u, ~global2.c))), 1u, true || (((global2.e.x | global2.e.x) << (1u % 32u)) < firstLeadingBit(~global2.e.x)));
    var var_1 = _wgslsmith_f_op_f32(-global2.a);
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.xxx * vec3<f32>(var_0.a.x, -1000f, 905f))), func_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a, var_0.a.x, -855f, global2.a), var_0.a)))), func_2(-1671f), Struct_4(Struct_2(vec3<f32>(-1408f, var_0.a.x, 1071f), Struct_1(vec4<f32>(var_0.a.x, global2.a, global2.a, 278f)), Struct_1(var_0.a), Struct_1(vec4<f32>(-1534f, var_0.a.x, -603f, global2.a))), -16077i, -u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(340f, var_0.a.x, 916f) * vec3<f32>(-1058f, 1000f, 338f))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)))), Struct_1(var_0.a), func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + 1000f), -415f, global2.a), func_2(-1000f), Struct_4(Struct_2(vec3<f32>(-660f, var_0.a.x, -834f), Struct_1(var_0.a), Struct_1(vec4<f32>(-116f, global2.a, -390f, var_0.a.x)), Struct_1(var_0.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x), u_input.a), 2147483647i, _wgslsmith_div_vec3_f32(vec3<f32>(global2.a, var_0.a.x, 705f), var_0.a.wzx)), func_4(_wgslsmith_f_op_vec4_f32(-var_0.a), func_2(global2.a), Struct_4(Struct_2(var_0.a.zwy, Struct_1(var_0.a), Struct_1(vec4<f32>(-609f, 585f, global2.a, -945f)), Struct_1(vec4<f32>(505f, var_0.a.x, var_0.a.x, var_0.a.x))), -27954i, u_input.a.x, var_0.a.xyz), Struct_1(vec4<f32>(var_0.a.x, -1870f, -1735f, -292f))))), reverseBits(u_input.a.x), -u_input.a.x & global2.e.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, var_0.a.x, 466f))))));
    return ~min(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, global2.b.x), vec3<u32>(0u, 4294967295u, 1u)) ^ ~vec3<u32>(global2.c, 17379u, global2.c), ~(~vec3<u32>(1u, global2.b.x, global2.c))), vec3<u32>(_wgslsmith_add_u32(54088u, global2.d) | ~4294967295u, (global2.d | global2.b.x) & reverseBits(0u), ~(~1u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec3<u32>) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, global2.a, -1081f, -213f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 495f, 114f, global2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, global2.a)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, global2.a, global2.a, 689f))))))));
    global1 = 27567u;
    var var_1 = Struct_4(Struct_2(var_0.a.xyw, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, -930f, var_0.a.x, global2.a)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(227f, var_0.a.x, global2.a, global2.a), vec4<f32>(var_0.a.x, -122f, var_0.a.x, 977f)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1502f)), Struct_4(Struct_2(var_0.a.wzx, Struct_1(var_0.a), Struct_1(vec4<f32>(global2.a, var_0.a.x, global2.a, 227f)), Struct_1(var_0.a)), u_input.a.x, -2147483647i, vec3<f32>(var_0.a.x, global2.a, var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -946f, global2.a, var_0.a.x) * vec4<f32>(global2.a, -404f, 1088f, var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, 256f, -1000f, var_0.a.x))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, -501f, -416f, 1000f), vec4<f32>(var_0.a.x, 836f, var_0.a.x, 222f))) + _wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(-669f, var_0.a.x, global2.a, -1978f))), Struct_3(865f, vec2<u32>(arg_0.x, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, global2.b.x, 28108u, 1u), vec4<u32>(arg_2.x, 61079u, 34201u, 13948u)), ~arg_0.x, vec2<i32>(global2.e.x, global2.e.x) | u_input.a.zz), Struct_4(Struct_2(var_0.a.zxx, Struct_1(vec4<f32>(var_0.a.x, -431f, var_0.a.x, var_0.a.x)), Struct_1(vec4<f32>(-676f, global2.a, -583f, -601f)), Struct_1(vec4<f32>(var_0.a.x, 1185f, global2.a, global2.a))), firstTrailingBit(-29780i), countOneBits(u_input.a.x), var_0.a.zwy), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)))), u_input.a.x, ~firstLeadingBit(-u_input.a.x), var_0.a.zyy);
    global2 = func_2(-1107f);
    var var_2 = 849f;
    return Struct_4(var_1.a, global2.e.x | 5826i, global2.e.x, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -4764i;
    var var_1 = func_5(global2.b, _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.c, global2.b.x, global2.c) << (vec3<u32>(global2.d, 4294967295u, global2.c) % vec3<u32>(32u)), ~(~vec3<u32>(4294967295u, global2.b.x, global2.c))), firstTrailingBit(vec3<u32>(max(global2.c, global2.c), global2.b.x << (1u % 32u), 1u))), abs(firstLeadingBit(func_1())));
    global2 = func_2(-267f);
    var var_2 = -min(vec4<i32>(_wgslsmith_div_i32(1i, ~62930i), ~(i32(-1i) * -2147483647i), ~2147483647i, ~abs(-1i)), -min(~vec4<i32>(-2147483647i, -18145i, 1i, var_1.c), u_input.a & u_input.a));
    let var_3 = var_1.a;
    var_2 = vec4<i32>(~(-2147483647i), -41674i, -var_1.b, var_1.b);
    let var_4 = global2.e;
    let x = u_input.a;
    s_output = StorageBuffer(global2.d, -1272f, _wgslsmith_add_vec3_u32(~max(vec3<u32>(global2.b.x, 0u, 38357u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.d, 16544u, global2.b.x), vec3<u32>(0u, 1u, 1u), vec3<u32>(global2.d, 1823u, 6531u))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global2.d, 44517u), vec3<u32>(global2.d, 4294967295u, global2.d), vec3<u32>(1u, 4294967295u, global2.d)), firstLeadingBit(vec3<u32>(1u, 30526u, 0u)), select(vec3<u32>(global2.b.x, global2.c, global2.d), vec3<u32>(global2.b.x, 52820u, global2.b.x), vec3<bool>(false, true, false))), vec3<u32>(5138u, ~16865u, 1u))), -1299f);
}

