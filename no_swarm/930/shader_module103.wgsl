struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
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

var<private> global0: f32;

var<private> global1: array<i32, 10> = array<i32, 10>(35214i, 3613i, 27158i, 2147483647i, 2147483647i, -1i, 1i, 1i, 21376i, 0i);

var<private> global2: vec3<bool>;

var<private> global3: vec3<i32> = vec3<i32>(-28300i, -4032i, 9099i);

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), -1716f, -1504f, vec3<u32>(1091u, 12021u, 4294967295u), vec3<i32>(0i, -1i, 39156i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global2 = vec3<bool>(_wgslsmith_mod_i32(-2147483647i, ~(~6300i)) == _wgslsmith_clamp_i32(0i, global1[_wgslsmith_index_u32(~u_input.c, 10u)], (u_input.a.x | 0i) | _wgslsmith_add_i32(0i, global4.e.x)), any(global4.a.wxx), global2.x);
    var var_0 = arg_0.d.yy;
    global1 = array<i32, 10>();
    var var_1 = max(u_input.d.x, arg_0.d.x);
    let var_2 = arg_0;
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    global1 = array<i32, 10>();
    let var_0 = arg_3;
    var var_1 = vec2<bool>(!any(vec2<bool>(true, true & global4.a.x)), arg_1.a.x);
    var var_2 = Struct_1(global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(884f, arg_3.c, arg_3.a.x)), var_0.c, func_1(var_0).a.x))) * 1f), 1992f, arg_3.d, ~abs(~global4.e));
    let var_3 = Struct_1(vec4<bool>(arg_3.a.x, select(false, !any(vec4<bool>(arg_0, arg_0, arg_3.a.x, arg_3.a.x)), arg_1.a.x), var_2.a.x, any(!(!vec4<bool>(arg_1.a.x, arg_3.a.x, false, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(267f * arg_3.c)))), 1766f, ~(~arg_1.d.x) >= global4.d.x)), _wgslsmith_f_op_f32(exp2(arg_3.b)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(25236u, ~var_2.d.x, 19211u), global4.d | var_0.d), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 1u, global4.d.x), ~4294967295u, _wgslsmith_mod_u32(17877u, var_0.d.x)), ~arg_1.d)), reverseBits(~_wgslsmith_add_vec3_i32(arg_1.e, vec3<i32>(arg_1.e.x, global3.x, -2147483647i))) << (abs(vec3<u32>(~arg_2, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.x, var_2.d.x, arg_1.d.x, u_input.c), vec4<u32>(4294967295u, 658u, u_input.c, 4294967295u)))) % vec3<u32>(32u)));
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_1.d;
    global1 = array<i32, 10>();
    let var_1 = _wgslsmith_sub_vec4_u32((_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 41034u, var_0.x, 17418u), firstLeadingBit(vec4<u32>(arg_0, 1u, u_input.c, arg_3.d.x))) | ~(vec4<u32>(0u, 43764u, u_input.c, 149u) << (vec4<u32>(46130u, 36089u, arg_2.d.x, 11872u) % vec4<u32>(32u)))) >> (~max(vec4<u32>(global4.d.x, u_input.d.x, u_input.c, 66537u) | vec4<u32>(2950u, 2291u, arg_1.d.x, 4294967295u), vec4<u32>(4294967295u, 66229u, var_0.x, 84826u) << (vec4<u32>(2995u, 9296u, arg_1.d.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(arg_2.d.x, 32687u, arg_1.d.x, ~_wgslsmith_mult_u32(47312u, arg_2.d.x) ^ (_wgslsmith_clamp_u32(86349u, arg_2.d.x, 8869u) >> (1u % 32u))));
    let var_2 = func_3(all(func_1(arg_2).a) & (arg_1.a.x && true), Struct_1(arg_3.a, _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2498f, -814f)), ~vec3<u32>(arg_0, 34028u, _wgslsmith_sub_u32(4294967295u, 0u)), arg_3.e), var_1.x, arg_2);
    var var_3 = func_1(func_1(arg_1));
    return abs(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), arg_2.e.x), vec2<i32>(abs(global1[_wgslsmith_index_u32(global4.d.x, 10u)]), ~u_input.e.x))) << (u_input.d.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1468f, _wgslsmith_f_op_f32(trunc(1f)))) * -702f));
    let var_0 = Struct_1(!(!select(vec4<bool>(global2.x, global4.a.x, true, global4.a.x), !vec4<bool>(true, global2.x, global2.x, global4.a.x), select(global4.a, vec4<bool>(global4.a.x, global2.x, global4.a.x, false), vec4<bool>(global2.x, global4.a.x, false, false)))), global4.b, global4.b, firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d, ~vec3<u32>(global4.d.x, u_input.c, 52964u)), _wgslsmith_div_vec3_u32(global4.d, ~vec3<u32>(u_input.b.x, 1u, 0u)))), vec3<i32>(-(firstTrailingBit(3022i) | global4.e.x), -1i, func_2(~max(15291u, u_input.d.x), func_1(Struct_1(global4.a, global4.c, global4.b, global4.d, vec3<i32>(-4609i, global4.e.x, global3.x))), func_1(func_1(Struct_1(global4.a, global4.b, global4.b, vec3<u32>(34864u, u_input.d.x, 27068u), global4.e))), Struct_1(!vec4<bool>(global4.a.x, global4.a.x, global4.a.x, false), -1430f, -345f, vec3<u32>(25814u, global4.d.x, global4.d.x), ~vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b.x, 10u)], 25912i)))));
    global3 = vec3<i32>(-(var_0.e.x ^ _wgslsmith_clamp_i32(2147483647i, u_input.a.x, abs(-2147483647i))), _wgslsmith_div_i32(1i, ~func_2(abs(global4.d.x), func_1(var_0), func_1(Struct_1(global4.a, global4.b, global4.c, global4.d, u_input.a.xzx)), Struct_1(vec4<bool>(global2.x, true, global4.a.x, true), global4.c, var_0.c, vec3<u32>(u_input.d.x, 4294967295u, 1u), vec3<i32>(u_input.a.x, global3.x, -19894i)))), global4.e.x);
    global0 = _wgslsmith_f_op_f32(sign(var_0.c));
    global0 = -1000f;
    var var_1 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, _wgslsmith_clamp_i32(global3.x, ~global1[_wgslsmith_index_u32(reverseBits(u_input.c), 10u)], 1322i)));
}

