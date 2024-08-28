struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<i32, 23> = array<i32, 23>(0i, i32(-2147483648), -1i, 2147483647i, 1i, 29405i, 1i, -30974i, -1i, 7232i, 2147483647i, -1i, 2147483647i, i32(-2147483648), 51541i, 37095i, 30141i, 10659i, -1i, 1i, -1i, 23563i, -21323i);

var<private> global2: array<u32, 13> = array<u32, 13>(1u, 0u, 73955u, 10656u, 0u, 0u, 4294967295u, 3263u, 1u, 4294967295u, 19075u, 56240u, 1u);

var<private> global3: array<f32, 30>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(0u, ~4294967295u), false, select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(~80244u, 26u)]), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 26u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 26u)], false), global0[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(68447u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4552u, 13u)], 26u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17702u, 13u)], 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], true, false))), 1u, ~global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a, 13u)], 23u)]), _wgslsmith_div_vec4_u32(vec4<u32>(~(~4294967295u), select(global2[_wgslsmith_index_u32(1u, 13u)], 0u, global0[_wgslsmith_index_u32(30441u, 26u)]), 12857u, _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_sub_u32(7268u, 1u))), max(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)]), vec4<u32>(4294967295u, 43277u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69431u, 13u)], 13u)], 13u)])), ~reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)))));
    var var_1 = var_0.a.b || false;
    var var_2 = Struct_3(-abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.e, -1i), ~vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16224u, 13u)], 23u)], -1i))), var_0.a.b, ~var_0.b.xww, global1[_wgslsmith_index_u32(64536u, 23u)] > ~(-1i));
    let var_3 = ~(var_2.a | abs(_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_2.c.x, 23u)], var_2.a.x), _wgslsmith_mod_vec2_i32(var_2.a, vec2<i32>(var_2.a.x, 0i)))));
    var_2 = Struct_3(-(vec2<i32>(var_2.a.x, 1i) ^ (vec2<i32>(0i, var_0.a.e) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))) >> (~vec2<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(66890u, var_0.a.a.x), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], var_2.c.x))) % vec2<u32>(32u)), var_2.b, select(~var_0.b.xzw, _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(~global2[_wgslsmith_index_u32(var_2.c.x, 13u)], firstLeadingBit(4294967295u), ~4294967295u)), true), false);
    return ~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.d, 37000u), var_0.b.yw) & ~var_0.b.xy), ~(vec2<u32>(var_2.c.x, 1u) | vec2<u32>(u_input.a, 0u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_2 {
    global1 = array<i32, 23>();
    var var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_sub_u32(u_input.a, arg_1.x), select(global2[_wgslsmith_index_u32(~arg_1.x, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)] ^ arg_1.x, !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 26u)]), ~u_input.a << (_wgslsmith_add_u32(289u, global2[_wgslsmith_index_u32(arg_1.x, 13u)]) % 32u)), firstLeadingBit(arg_1) >> (vec4<u32>(~u_input.a, 1u << (u_input.a % 32u), _wgslsmith_mod_u32(53858u, 4294967295u), _wgslsmith_sub_u32(arg_1.x, 0u)) % vec4<u32>(32u)))), 26u)];
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1923f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-992f, -386f)), _wgslsmith_f_op_f32(arg_0.a - 688f)))) - 766f)));
    global3 = array<f32, 30>();
    let var_2 = Struct_5(Struct_2(Struct_1(arg_1.xx, select(true, true, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 13u)], 54606u), 26u)], true), ~u_input.a, global1[_wgslsmith_index_u32(4294967295u | func_3(), 23u)]), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, ~arg_1), min(arg_1 | vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x), arg_1), firstLeadingBit(~arg_1))), _wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_dot_vec3_u32(abs(firstTrailingBit(arg_1.yww)), abs(arg_1.yzy)), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)]), ~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(17887u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)])) << (210u % 32u));
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = !(!arg_2.a.c.xx);
    var var_1 = Struct_4(1020f);
    var var_2 = -firstLeadingBit(~(-1i >> (0u % 32u))) & ~firstLeadingBit(-_wgslsmith_div_i32(arg_2.a.e, 1i));
    var var_3 = arg_3.x;
    var var_4 = true;
    return Struct_1(func_2(Struct_4(_wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_f32(f32(-1f) * -985f)))), vec4<u32>(u_input.a | 3776u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~1u), 13u)], ~abs(16956u), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.a, 756f, -1507f))) + _wgslsmith_f_op_vec3_f32(arg_3 * vec3<f32>(var_1.a, arg_3.x, -1000f))))).a.a, global0[_wgslsmith_index_u32(0u, 26u)], vec4<bool>(!global0[_wgslsmith_index_u32(0u, 26u)], false, !arg_2.a.c.x && arg_2.a.c.x, !arg_2.a.c.x), u_input.a, _wgslsmith_add_i32(-1226i, select(_wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(arg_2.b.x, 23u)] | arg_2.a.e), -_wgslsmith_dot_vec3_i32(arg_1, arg_1), true)));
}

fn func_1(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = abs(u_input.a);
    var_0 = ~_wgslsmith_div_u32(~0u, ~(~select(60629u, 4294967295u, global0[_wgslsmith_index_u32(333u, 26u)])));
    global1 = array<i32, 23>();
    global3 = array<f32, 30>();
    let var_1 = Struct_2(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_0.a)))), (select(vec3<i32>(global1[_wgslsmith_index_u32(1478u, 23u)], global1[_wgslsmith_index_u32(80245u, 23u)], 0i), vec3<i32>(-1i, global1[_wgslsmith_index_u32(20994u, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)]), false) | -vec3<i32>(-32366i, 2147483647i, -2320i)) ^ abs(-vec3<i32>(global1[_wgslsmith_index_u32(36565u, 23u)], 13974i, global1[_wgslsmith_index_u32(3532u, 23u)])), func_2(arg_0, ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 51757u, 72267u, u_input.a), vec4<u32>(28189u, u_input.a, 47525u, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, -806f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec3<f32>(global3[_wgslsmith_index_u32(85425u, 30u)], -412f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 30u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]))))), vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(16927u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(79683u, 13u)], u_input.a), vec2<u32>(3336u, u_input.a))), 30u)], arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -298f))), vec4<u32>(firstTrailingBit(~(~65385u)), 1u, 4497u, max(1u & (40313u & u_input.a), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, global2[_wgslsmith_index_u32(1u, 13u)]), u_input.a), 13u)])));
    return StorageBuffer(vec2<i32>(-27899i, select(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(50986i, global1[_wgslsmith_index_u32(0u, 23u)], -2147483647i), vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 23u)], -2147483647i)), vec3<i32>(1i, global1[_wgslsmith_index_u32(var_1.b.x, 23u)], -1i)), func_4(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 30u)])), vec3<i32>(1i, 1i, 1i), Struct_2(Struct_1(vec2<u32>(2226u, 37997u), true, var_1.a.c, 1u, -13156i), vec4<u32>(var_1.b.x, 80926u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], var_1.b.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2092f, arg_0.a, global3[_wgslsmith_index_u32(1u, 30u)])))).e, false)), select(func_2(Struct_4(-635f), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 13u)], 1u, select(u_input.a, 0u, global0[_wgslsmith_index_u32(75378u, 26u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(162f, global3[_wgslsmith_index_u32(var_1.b.x, 30u)], -739f) * vec3<f32>(arg_0.a, -201f, 630f))))).b.x, 49027u, true), var_1.a.d & var_1.b.x, ~(~abs(vec4<u32>(global2[_wgslsmith_index_u32(var_1.a.a.x, 13u)], 0u, var_1.b.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], 13u)], 54587u), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)]), vec2<u32>(u_input.a, 9780u)) >> (max(vec2<u32>(30657u, 1u) & vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 13u)], 13u)]), vec2<u32>(u_input.a, 94634u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(6348u, u_input.a) >> (vec2<u32>(u_input.a, 53467u) % vec2<u32>(32u)), abs(vec2<u32>(0u, u_input.a))), firstLeadingBit(abs(vec2<u32>(u_input.a, 81u)))), vec2<bool>(!global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a, 13u)], 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]));
    let x = u_input.a;
    s_output = func_1(Struct_4(-1173f));
}

