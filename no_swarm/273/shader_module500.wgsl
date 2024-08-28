struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<bool, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(16u, 4294967295u), vec3<i32>(-15040i, 28092i, -1i), -1488f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    global1 = array<bool, 27>();
    let var_0 = vec3<u32>(global2.b.x, _wgslsmith_mult_u32(~(~global0.x), global2.b.x), 6481u);
    let var_1 = Struct_1(vec4<bool>(true, global2.a.x, !(true & global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 27u)]), !(_wgslsmith_clamp_i32(arg_0.x, global2.c.x, 2147483647i) < ~(-17702i))), global2.b, select(vec3<i32>(20591i, i32(-1i) * -9380i, min(-16947i, 1i)), vec3<i32>(abs(global2.c.x), reverseBits(1i), firstTrailingBit(global2.c.x)), global1[_wgslsmith_index_u32(1u, 27u)]) >> (~_wgslsmith_div_vec3_u32(~var_0, ~var_0) % vec3<u32>(32u)), global2.d);
    global0 = ~vec2<u32>(var_0.x, _wgslsmith_div_u32(~1u, ~u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-482f, 477f)), global2.d, _wgslsmith_f_op_f32(var_1.d * global2.d)) * vec3<f32>(_wgslsmith_f_op_f32(global2.d + var_1.d), 482f, global2.d))));
    return 998f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = vec3<f32>(arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + _wgslsmith_div_f32(global2.d, global2.d))), _wgslsmith_f_op_f32(exp2(global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(reverseBits(vec3<i32>(-1i, global2.c.x, global2.c.x)))) + _wgslsmith_f_op_f32(-global2.d))));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_3);
    let var_1 = abs(min(~vec3<u32>(4294967295u, u_input.a, ~0u), vec3<u32>(countOneBits(1u), ~_wgslsmith_mod_u32(global2.b.x, arg_2), ~77384u)));
    let var_2 = select(global2.a, vec4<bool>(!(global2.a.x | all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)], true))), global2.a.x & all(global2.a), !((4294967295u < arg_1.x) || (var_1.x == global0.x)), !global2.a.x), vec4<bool>(true, global2.a.x, global2.a.x, _wgslsmith_f_op_f32(floor(global2.d)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, var_0.x)))));
    var var_3 = 455i;
    return var_1.yy;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~select(~(~vec4<u32>(global0.x, u_input.a, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(global0.x, global2.b.x, 16259u, u_input.a)), select(select(vec4<bool>(false, global2.a.x, true, false), global2.a, false), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global2.a.x, true, false), global2.a)), ~(vec4<u32>(arg_0.x, global2.b.x, global0.x, 0u) | ~vec4<u32>(0u, 16225u, 28719u, global0.x)) << (firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, 1u, u_input.a, global2.b.x), vec4<u32>(arg_0.x, global0.x, arg_0.x, arg_0.x) ^ vec4<u32>(4294967295u, u_input.a, global2.b.x, global2.b.x))) % vec4<u32>(32u)), (abs(~vec4<u32>(2592u, arg_0.x, 598u, u_input.a)) >> ((firstTrailingBit(vec4<u32>(28332u, arg_0.x, global2.b.x, 45476u)) << (~vec4<u32>(global0.x, 0u, global0.x, 27316u) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~vec4<u32>(1u, _wgslsmith_mod_u32(19736u, global0.x), global2.b.x, _wgslsmith_mod_u32(u_input.a, 0u)));
    global1 = array<bool, 27>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f * 1000f))))));
    global1 = array<bool, 27>();
    let var_2 = global2.a.wzy;
    return Struct_1(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(9484u, 27u)], false, false, true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 27u)], true, true), global2.a, false), !global2.a)), vec2<u32>(abs(var_0.x), 1u), ~(-(~vec3<i32>(-1i, 54113i, 2220i))), _wgslsmith_f_op_f32(step(-1000f, -314f)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<i32> {
    global2 = func_4(reverseBits(select(reverseBits(func_2(vec4<i32>(global2.c.x, global2.c.x, -34824i, global2.c.x), vec3<u32>(u_input.a, 24832u, 62994u), global2.b.x, vec3<f32>(575f, global2.d, -795f))), reverseBits(abs(vec2<u32>(u_input.a, u_input.a))), false)));
    let var_0 = Struct_1(!select(func_4(global2.b).a, select(global2.a, vec4<bool>(true, global2.a.x, global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(3072u, 27u)]), !vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 27u)], global2.a.x, false, global2.a.x)), !vec4<bool>(true, global1[_wgslsmith_index_u32(54803u, 27u)], true, global1[_wgslsmith_index_u32(global2.b.x, 27u)])), func_4(~vec2<u32>(1u, _wgslsmith_add_u32(0u, global0.x))).b, global2.c >> (~(~vec3<u32>(u_input.a, global0.x, 0u)) % vec3<u32>(32u)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(1028f, arg_0.x)));
    global2 = var_0;
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    return _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~0i, -25201i, 2147483647i), var_0.c & ~global2.c), _wgslsmith_sub_vec3_i32(var_0.c, vec3<i32>(global2.c.x, ~global2.c.x, global2.c.x))) >> (firstTrailingBit(~select(vec3<u32>(u_input.a, u_input.a, 15941u), firstTrailingBit(vec3<u32>(16676u, 0u, global0.x)), u_input.a < 18435u)) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = arg_2;
    let var_1 = false;
    var_0 = Struct_1(vec4<bool>(false, all(global2.a.xx), 2147483647i <= var_0.c.x, arg_1.a.x), vec2<u32>(var_0.b.x, _wgslsmith_add_u32(arg_2.b.x, 1u | ~u_input.a)), ~func_4(arg_1.b).c | vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c.x, var_0.c.x, arg_2.c.x, arg_0.x), vec4<i32>(global2.c.x, 12694i, -21476i, -15786i)), vec4<i32>(var_0.c.x, -2147483647i, -36130i, -1i)), -arg_0.x << (global2.b.x % 32u), -2147483647i), 188f);
    global0 = vec2<u32>(~7788u, arg_2.b.x);
    var_0 = func_4(~vec2<u32>(~10171u, 1u));
    return -_wgslsmith_mult_vec4_i32(countOneBits(select(select(vec4<i32>(arg_2.c.x, arg_0.x, arg_1.c.x, 38647i), vec4<i32>(-2147483647i, 16523i, arg_0.x, global2.c.x), var_0.a.x), vec4<i32>(13181i, var_0.c.x, global2.c.x, -69777i), !arg_2.a.x)), firstTrailingBit(firstLeadingBit(vec4<i32>(arg_0.x, arg_2.c.x, 0i, 0i))));
}

fn func_6(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(select(func_4(~global2.b).a, select(vec4<bool>(true, func_4(global2.b).a.x, select(global2.a.x, true, global1[_wgslsmith_index_u32(7908u, 27u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.b.x, u_input.a), vec3<u32>(global0.x, 32776u, 0u)), 27u)]), global2.a, func_4(global2.b >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))).a), select(global2.d > global2.d, all(select(global2.a.zxw, vec3<bool>(false, false, global1[_wgslsmith_index_u32(global0.x, 27u)]), vec3<bool>(true, true, global2.a.x))), global1[_wgslsmith_index_u32(0u, 27u)])), select(reverseBits(_wgslsmith_mod_vec2_u32(abs(global2.b), global2.b)), vec2<u32>(4294967295u, 1u), false), vec3<i32>((i32(-1i) * -38172i) & max(-2147483647i, _wgslsmith_mod_i32(global2.c.x, 10233i)), arg_0.x, ~72708i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d, func_4(_wgslsmith_div_vec2_u32(vec2<u32>(global2.b.x, global2.b.x), vec2<u32>(44975u, global2.b.x))).d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1739f)) * global2.d)));
    return func_4(abs(vec2<u32>(firstTrailingBit(min(15844u, u_input.a)), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global2.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2218f))))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(global2.d + -713f)), true)), _wgslsmith_f_op_f32(global2.d - global2.d), any(select(vec4<bool>(var_0, var_0, var_0, true), global2.a, any(vec4<bool>(false, false, global2.a.x, global1[_wgslsmith_index_u32(4294967295u, 27u)])))))));
    var var_2 = vec4<bool>(true, global2.a.x, true, any(vec2<bool>(global2.a.x, select(true, true, global2.a.x))));
    var_2 = select(!select(select(global2.a, !vec4<bool>(var_0, var_2.x, true, true), global2.a.x || global1[_wgslsmith_index_u32(24303u, 27u)]), global2.a, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global2.a.x, global2.a.x, false))), global2.a, !(abs(0i) > _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.c.x, global2.c.x, 1i, global2.c.x), firstLeadingBit(vec4<i32>(16513i, global2.c.x, global2.c.x, global2.c.x)))));
    let var_3 = func_6(func_5(global2.c, Struct_1(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.x, 27u)], true), !vec4<bool>(false, global1[_wgslsmith_index_u32(global0.x, 27u)], var_0, global1[_wgslsmith_index_u32(global0.x, 27u)])), vec2<u32>(_wgslsmith_add_u32(7906u, global0.x), global2.b.x), _wgslsmith_sub_vec3_i32(global2.c, vec3<i32>(global2.c.x, -2147483647i, 1i) >> (vec3<u32>(72751u, global2.b.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - var_1))), Struct_1(select(global2.a, vec4<bool>(global2.a.x, var_0, var_2.x, var_0), true), ~(~global2.b), ~vec3<i32>(-11396i, global2.c.x, global2.c.x) | func_1(vec3<f32>(1449f, 2086f, 735f)), global2.d)));
    var_2 = !global2.a;
    global1 = array<bool, 27>();
    var var_4 = !var_3.a.ww;
    var var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x, _wgslsmith_add_u32(19266u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 6219u), ~(~vec4<u32>(1u, 59438u, global2.b.x, u_input.a)))), global2.c.x, u_input.a, 1i);
}

