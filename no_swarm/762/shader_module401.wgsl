struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, -1135f, vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648)), vec3<i32>(23463i, 28565i, 13616i), 1596f), Struct_1(true, -1833f, vec4<i32>(3833i, 21211i, 1i, -16328i), vec3<i32>(23796i, 1i, i32(-2147483648)), -1437f), Struct_1(false, -795f, vec4<i32>(30556i, i32(-2147483648), 2147483647i, 38847i), vec3<i32>(1i, 6740i, 2147483647i), 476f), Struct_1(true, 2386f, vec4<i32>(50636i, -18969i, 1i, 62114i), vec3<i32>(-13515i, 41167i, 7722i), 1389f), Struct_1(false, 1775f, vec4<i32>(4005i, 3730i, -39040i, 1i), vec3<i32>(1i, -886i, 0i), -134f), Struct_1(true, 822f, vec4<i32>(-1i, 1i, -27283i, 1i), vec3<i32>(-1i, i32(-2147483648), -44150i), -293f), Struct_1(false, 468f, vec4<i32>(0i, 568i, -13611i, 74355i), vec3<i32>(0i, -1i, i32(-2147483648)), -1054f), Struct_1(true, -333f, vec4<i32>(-1i, 10572i, -2321i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, -47913i), -643f), Struct_1(false, -164f, vec4<i32>(-1i, -32276i, i32(-2147483648), 2364i), vec3<i32>(i32(-2147483648), i32(-2147483648), -32781i), 1456f), Struct_1(false, -1371f, vec4<i32>(1i, 10202i, 0i, 1i), vec3<i32>(-1i, i32(-2147483648), 2784i), -1105f), Struct_1(true, -758f, vec4<i32>(28113i, -1i, -1i, -11875i), vec3<i32>(-22007i, 1i, 53134i), -1194f), Struct_1(true, -1119f, vec4<i32>(0i, -1i, 0i, 40325i), vec3<i32>(i32(-2147483648), 0i, 56438i), -2238f), Struct_1(false, 159f, vec4<i32>(-49747i, 87404i, -1i, 2147483647i), vec3<i32>(-39950i, -32695i, 1i), 305f), Struct_1(false, 845f, vec4<i32>(15613i, 2147483647i, i32(-2147483648), -19725i), vec3<i32>(2147483647i, -3448i, 2147483647i), -442f), Struct_1(true, 435f, vec4<i32>(2147483647i, 1i, 24058i, 2147483647i), vec3<i32>(-7980i, 1i, -24290i), -969f), Struct_1(false, 888f, vec4<i32>(-46619i, -1i, 23340i, -27874i), vec3<i32>(-16643i, 1i, 16094i), 576f), Struct_1(true, -2698f, vec4<i32>(2147483647i, 26246i, 37058i, -26720i), vec3<i32>(i32(-2147483648), -55273i, i32(-2147483648)), -1162f), Struct_1(false, 1413f, vec4<i32>(1i, -1i, 1990i, 2147483647i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), -835f), Struct_1(true, 2275f, vec4<i32>(0i, 50581i, 42173i, -1i), vec3<i32>(31849i, 34965i, -50619i), -848f), Struct_1(false, -1043f, vec4<i32>(-984i, -1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -35601i, 1i), 1000f), Struct_1(false, 374f, vec4<i32>(1i, -35148i, -2514i, 41055i), vec3<i32>(11973i, 2048i, 3343i), 1000f), Struct_1(true, 249f, vec4<i32>(1i, -1i, 0i, 4767i), vec3<i32>(27416i, -16662i, -1182i), -144f), Struct_1(true, -2645f, vec4<i32>(-19065i, 1999i, -1949i, 3080i), vec3<i32>(44081i, 38890i, 0i), 1295f), Struct_1(false, 316f, vec4<i32>(34264i, 41690i, -9665i, -3264i), vec3<i32>(-2889i, -34648i, -472i), -1376f), Struct_1(true, 1000f, vec4<i32>(-26754i, 1i, 18620i, -1i), vec3<i32>(1i, 0i, i32(-2147483648)), -723f), Struct_1(true, 359f, vec4<i32>(0i, i32(-2147483648), -1i, -22398i), vec3<i32>(31987i, 1i, 121i), 1250f), Struct_1(true, 1126f, vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i), vec3<i32>(-63110i, i32(-2147483648), i32(-2147483648)), 1822f), Struct_1(true, 1151f, vec4<i32>(35576i, 0i, 0i, -1i), vec3<i32>(i32(-2147483648), 0i, -3020i), 187f), Struct_1(true, -529f, vec4<i32>(-42761i, -4916i, -1i, -5168i), vec3<i32>(20468i, -1i, 79562i), 867f), Struct_1(false, 600f, vec4<i32>(-1i, -1635i, 40884i, 2147483647i), vec3<i32>(2147483647i, -21775i, -44886i), 252f));

var<private> global1: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(3721f, global1.b, false)), -326f, _wgslsmith_f_op_f32(global1.b + -1465f), _wgslsmith_f_op_f32(global1.b * 368f)))), global1.a.x, ~(-select(vec4<i32>(u_input.a, 47643i, u_input.a, u_input.a), vec4<i32>(-2147483647i, -38725i, u_input.a, 2147483647i) ^ vec4<i32>(2147483647i, 0i, u_input.a, u_input.a), select(vec4<bool>(true, false, false, global1.a.x), vec4<bool>(global1.c, global1.a.x, global1.c, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, global1.c, true)))), global1.a);
    let var_1 = Struct_2(global1.a, -2191f, true, _wgslsmith_sub_vec4_u32(global1.d, global1.d));
    var var_2 = Struct_2(!global1.a, _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)) + _wgslsmith_f_op_f32(-var_1.b))), all(vec2<bool>(true, false)), ~var_1.d);
    var var_3 = global0[_wgslsmith_index_u32(1u, 30u)];
    let var_4 = false;
    return 33551i < u_input.c.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = Struct_2(select(select(global1.a, !vec3<bool>(false, arg_0.a, true), !vec3<bool>(arg_0.a, false, global1.c)), !(!global1.a), (false & (0i < arg_0.c.x)) | (global1.d.x != min(57427u, 14732u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0.b)), false, vec4<u32>(4294967295u, _wgslsmith_mod_u32(~(~global1.d.x), global1.d.x), 0u, ~_wgslsmith_dot_vec2_u32(global1.d.zx, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global1.d.x), global1.d.wy))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = true && arg_0.a;
    var_0 = all(vec2<bool>(arg_0.a, true));
    return (24891u >> (_wgslsmith_dot_vec2_u32(countOneBits(global1.d.zw), vec2<u32>(u_input.b, 1u)) % 32u)) <= ~u_input.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 30>();
    var var_0 = arg_1.a;
    global1 = arg_1;
    var_0 = vec3<bool>(any(vec3<bool>(false, any(arg_1.a.yy), func_2())), func_3(global0[_wgslsmith_index_u32(4294967295u, 30u)]), select(false, reverseBits(_wgslsmith_sub_u32(global1.d.x, arg_1.d.x)) >= ~60483u, (countOneBits(-2147483647i) >> (max(global1.d.x, u_input.b) % 32u)) >= max(-2147483647i, i32(-1i) * -19032i)));
    let var_1 = vec4<u32>(select(global1.d.x, 4294967295u, func_3(Struct_1(false, 1028f, vec4<i32>(u_input.a, 32088i, 1i, -12602i), u_input.c, -461f)) | true), firstLeadingBit(arg_1.d.x) | ~(~_wgslsmith_mod_u32(u_input.b, arg_1.d.x)), arg_1.d.x, ~_wgslsmith_mult_u32(~21412u, u_input.b << (arg_1.d.x % 32u)) >> (u_input.b % 32u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global1 = Struct_2(!(!(!(!vec3<bool>(global1.c, global1.a.x, true)))), global1.b, (_wgslsmith_div_u32(func_1(vec4<f32>(459f, -313f, 363f, global1.b), Struct_2(vec3<bool>(global1.c, false, global1.c), global1.b, global1.c, vec4<u32>(39520u, 4294967295u, u_input.b, global1.d.x))), u_input.b) ^ global1.d.x) > _wgslsmith_add_u32(4294967295u, 0u << ((global1.d.x >> (u_input.b % 32u)) % 32u)), firstLeadingBit(vec4<u32>(reverseBits(global1.d.x), ~u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.d.x, global1.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), global1.d.yw)), ~(~90581u))));
    global1 = Struct_2(select(vec3<bool>(any(select(vec3<bool>(global1.a.x, global1.c, global1.a.x), global1.a, vec3<bool>(true, global1.c, false))), func_2(), all(select(vec2<bool>(global1.a.x, global1.c), vec2<bool>(true, global1.a.x), false))), global1.a, !global1.a.x), global1.b, all(vec4<bool>(true, true, true, true)), vec4<u32>(~(~4654u), reverseBits(u_input.b), _wgslsmith_div_u32(global1.d.x, u_input.b), 1u));
    global1 = Struct_2(!(!(!select(vec3<bool>(global1.c, false, false), vec3<bool>(false, true, global1.c), true))), -171f, any(!(!(!vec4<bool>(global1.c, false, true, global1.c)))), select(firstTrailingBit(_wgslsmith_mult_vec4_u32(global1.d, ~vec4<u32>(global1.d.x, u_input.b, global1.d.x, 12841u))), ~global1.d, vec4<bool>(all(global1.a), false, true, all(vec3<bool>(false, global1.a.x, global1.a.x)))));
    let var_0 = global1.d.x;
    let var_1 = u_input.a;
    let var_2 = 1004f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - 2480f)) + global1.b), 1567f, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, -var_1, var_1), 2147483647i));
}

