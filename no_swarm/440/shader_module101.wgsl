struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = global1.a.a;
    var var_1 = _wgslsmith_div_f32(global1.d.x, -636f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a.c.x, arg_1.x)));
    let var_3 = !all(vec2<bool>(true, true));
    var var_4 = select(vec4<i32>(9168i, -65042i, firstTrailingBit(_wgslsmith_sub_i32(u_input.d.x, 0i)) ^ 1i, -2147483647i), vec4<i32>(-reverseBits(abs(u_input.d.x)), 27001i, -(~47620i), -18392i), select(!vec4<bool>(global1.b, true, false, any(vec4<bool>(arg_2.c, global1.b, true, false))), select(!select(vec4<bool>(var_3, global1.c, global1.c, arg_2.b), vec4<bool>(false, false, arg_2.b, arg_2.b), vec4<bool>(true, false, false, true)), vec4<bool>(true, global1.c & arg_2.b, false, global1.d.x == 790f), arg_2.b), select(vec4<bool>(global1.b, false, true, true), !(!vec4<bool>(true, var_3, false, arg_2.b)), select(!vec4<bool>(arg_2.c, arg_2.b, var_3, var_3), vec4<bool>(true, true, true, true), true))));
    return max(global1.a.a.b, min(_wgslsmith_add_vec2_u32(u_input.b, global1.a.a.b) ^ arg_2.a.a.b, u_input.b) | global1.a.a.b);
}

fn func_2() -> Struct_1 {
    let var_0 = global1.a;
    return Struct_1(2607f, max(reverseBits(_wgslsmith_sub_vec2_u32(global1.a.a.b, vec2<u32>(var_0.a.b.x, var_0.a.b.x)) >> (~var_0.a.b % vec2<u32>(32u))), u_input.b ^ func_3(_wgslsmith_mult_u32(0u, u_input.a), vec3<f32>(-432f, -193f, 807f), Struct_4(Struct_2(Struct_1(var_0.a.a, global1.a.a.b, var_0.a.c)), true, false, vec4<f32>(var_0.a.c.x, global1.d.x, var_0.a.a, global1.a.a.c.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.a.a.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    var var_0 = Struct_5(global1.a, 17441u, vec2<bool>(true, arg_1.c));
    var_0 = Struct_5(Struct_2(func_2()), u_input.b.x, vec2<bool>(true, true));
    var var_1 = Struct_5(arg_1.a, u_input.a, vec2<bool>(arg_1.b, !arg_1.c));
    var_0 = Struct_5(Struct_2(arg_0), ~(4294967295u >> ((u_input.b.x >> (func_3(4294967295u, vec3<f32>(var_1.a.a.c.x, 523f, 1206f), Struct_4(global1.a, false, true, arg_0.c)).x % 32u)) % 32u)), vec2<bool>(var_1.c.x, 493f >= _wgslsmith_f_op_f32(sign(-232f))));
    let var_2 = select(-1i, u_input.d.x, !(!all(select(vec4<bool>(false, var_1.c.x, false, arg_1.c), vec4<bool>(arg_1.b, true, arg_1.c, true), vec4<bool>(false, true, global1.b, arg_1.b)))));
    return arg_1;
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<u32>(u_input.b.x, u_input.c, 32941u) << (vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, firstLeadingBit(u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47383u), vec2<u32>(u_input.b.x, 31965u)) | 1u), max(u_input.a, 58936u), 19405u) % vec3<u32>(32u));
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(36827u, u_input.c, u_input.c)), var_0), ~18815u << (0u % 32u), 71674u >> ((~max(0u, var_0.x) | 91216u) % 32u), global1.a.a.b.x);
    global0 = array<i32, 8>();
    global1 = func_4(func_2(), Struct_4(Struct_2(func_2()), global1.b, false, global1.d));
    let var_2 = func_2();
    return Struct_5(Struct_2(func_4(Struct_1(-850f, vec2<u32>(global1.a.a.b.x, 0u), var_2.c), Struct_4(global1.a, select(true, global1.b, false), global1.b & global1.c, _wgslsmith_f_op_vec4_f32(-global1.d))).a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(~27098u, ~var_0.x, 1u, var_1.x), vec4<u32>(81483u, min(31579u, var_2.b.x), ~global1.a.a.b.x, _wgslsmith_sub_u32(u_input.a, 4294967295u) << (var_1.x % 32u))), vec2<bool>(global1.b, false));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_2(global1.a.a);
    global1 = func_4(global1.a.a, func_4(func_2(), func_4(func_4(func_2(), func_4(global1.a.a, Struct_4(Struct_2(var_0.a), false, arg_0.c.x, arg_0.a.a.c))).a.a, func_4(Struct_1(arg_0.a.a.c.x, vec2<u32>(43248u, 1u), vec4<f32>(arg_1.c.x, var_0.a.c.x, arg_1.c.x, 115f)), Struct_4(var_0, true, false, vec4<f32>(2331f, -164f, -155f, global1.d.x))))));
    var var_1 = vec3<bool>(false, arg_0.c.x, arg_0.c.x);
    return func_4(func_4(Struct_1(468f, ~arg_0.a.a.b << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.a.c * arg_1.c))), Struct_4(Struct_2(arg_1), arg_0.c.x, ~global0[_wgslsmith_index_u32(0u, 8u)] >= (i32(-1i) * -16064i), arg_0.a.a.c)).a.a, func_4(arg_1, Struct_4(arg_0.a, true, (4294967295u <= arg_0.a.a.b.x) && true, _wgslsmith_f_op_vec4_f32(-var_0.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.b & (true && !global1.b), global1.c);
    var_0 = !vec2<bool>(!(~global1.a.a.b.x >= ~u_input.b.x), true);
    global1 = func_5(func_1(), func_4(global1.a.a, func_4(func_2(), func_4(func_4(Struct_1(global1.a.a.c.x, u_input.b, vec4<f32>(231f, global1.a.a.a, 1912f, -1000f)), Struct_4(global1.a, true, var_0.x, vec4<f32>(-1285f, -543f, global1.d.x, global1.a.a.c.x))).a.a, func_4(Struct_1(global1.a.a.c.x, u_input.b, vec4<f32>(-408f, 514f, -450f, -2316f)), Struct_4(global1.a, true, true, global1.d))))).a.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f), 383f));
    let var_2 = reverseBits(global0[_wgslsmith_index_u32(~u_input.b.x ^ ~(func_2().b.x | 18778u), 8u)]);
    var var_3 = ~abs(countOneBits(u_input.d.wz));
    var_3 = countOneBits(max(u_input.d.xz, abs(vec2<i32>(var_3.x, u_input.d.x)) & vec2<i32>(0i, 2147483647i))) << (~u_input.b % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -487f, global1.d.x, 379f), _wgslsmith_f_op_vec4_f32(-global1.d)), vec4<f32>(594f, _wgslsmith_f_op_f32(-global1.a.a.a), global1.d.x, global1.d.x)))), _wgslsmith_div_i32(-(~(global0[_wgslsmith_index_u32(7164u, 8u)] & -604i)), ~_wgslsmith_div_i32(~var_3.x, 2147483647i)));
}

