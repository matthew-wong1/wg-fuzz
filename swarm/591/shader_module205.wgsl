struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: u32 = 1u;

var<private> global2: array<vec3<bool>, 15>;

var<private> global3: array<u32, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.d, arg_1.d) ^ vec2<i32>(arg_1.d, -25805i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.d, arg_1.d), -vec2<i32>(-15657i, arg_1.d)), vec2<i32>(-17166i, -2147483647i)), global0[_wgslsmith_index_u32(~arg_1.a, 25u)]);
    var var_1 = arg_0.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1192f + arg_0.x), arg_0.x, true)))) - arg_0.x));
    var var_3 = ~(~_wgslsmith_div_vec3_i32(~(-vec3<i32>(-27326i, 48359i, -34637i)), vec3<i32>(2147483647i ^ arg_1.d, arg_1.d | 57522i, -11373i & arg_1.d)));
    let var_4 = Struct_2(arg_0.x);
    return var_0;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_4) -> f32 {
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(79716u, 0u, 1u, 1u) | vec4<u32>(u_input.b, 0u, u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63554u, 4u)], 4u)]), vec4<u32>(31740u, global3[_wgslsmith_index_u32(u_input.b, 4u)], 19789u, global3[_wgslsmith_index_u32(u_input.a.x, 4u)])), vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4598u, _wgslsmith_mult_u32(u_input.d.x, global3[_wgslsmith_index_u32(26396u, 4u)])), 4u)], _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(6598u, u_input.d.x)), max(~u_input.a.x, 19087u), _wgslsmith_add_u32(~9722u, u_input.d.x))), ~(~(~countOneBits(vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 4u)])))));
    global0 = array<bool, 25>();
    global1 = global3[_wgslsmith_index_u32(35043u, 4u)];
    var var_0 = -vec2<i32>(arg_2.x, 0i);
    let var_1 = arg_3.a.x;
    return -1741f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> Struct_3 {
    global3 = array<u32, 4>();
    let var_0 = !vec3<bool>(true, !all(!vec4<bool>(arg_2.x, global0[_wgslsmith_index_u32(0u, 25u)], arg_2.x, global0[_wgslsmith_index_u32(127626u, 25u)])), ~(~0u) == global3[_wgslsmith_index_u32(~1u, 4u)]);
    global3 = array<u32, 4>();
    let var_1 = vec3<u32>(arg_1.c.x, arg_1.a, global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.c.x, global3[_wgslsmith_index_u32(4294967295u, 4u)]), 4u)]) << ((firstTrailingBit(u_input.d) | u_input.d) % vec3<u32>(32u));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, 626f, arg_0, -1299f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, arg_0, 1577f, arg_0)))))), Struct_1(1u, var_1, ~arg_1.c, arg_1.d << (1u % 32u)));
    return Struct_3(!(!(var_2.b && true)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, arg_1.d, var_2.a.x), abs(vec3<i32>(arg_1.d, -2147483647i, -16574i))), abs(~select(vec3<i32>(21563i, 34460i, -2147483647i), vec3<i32>(53088i, var_2.a.x, var_2.a.x), false))), Struct_2(_wgslsmith_f_op_f32(min(1636f, arg_0))), Struct_1(_wgslsmith_sub_u32(var_1.x, ~global3[_wgslsmith_index_u32(arg_1.a, 4u)]), select(~arg_1.b, max(vec3<u32>(0u, 43439u, 16336u), arg_1.b) | (vec3<u32>(4294967295u, var_1.x, global3[_wgslsmith_index_u32(50330u, 4u)]) | u_input.d), var_0.x), min(~(~arg_1.c), arg_1.c), -var_2.a.x));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 25>();
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true & global0[_wgslsmith_index_u32(0u, 25u)], Struct_2(1554f), -vec2<i32>(45742i, -2147483647i), func_2(vec4<f32>(231f, -1447f, 503f, -843f), Struct_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], u_input.d, vec4<u32>(38233u, u_input.a.x, u_input.d.x, u_input.b), 9226i)))))), Struct_1(_wgslsmith_clamp_u32(select(4294967295u, 0u, global0[_wgslsmith_index_u32(1u, 25u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 84312u), 4u)], firstTrailingBit(u_input.b)) | (4294967295u << (u_input.b % 32u)), reverseBits(u_input.d | (vec3<u32>(u_input.b, 0u, u_input.d.x) >> (vec3<u32>(global3[_wgslsmith_index_u32(0u, 4u)], 0u, u_input.a.x) % vec3<u32>(32u)))), vec4<u32>(select(global3[_wgslsmith_index_u32(~1u, 4u)], 1u, all(global2[_wgslsmith_index_u32(u_input.a.x, 15u)])), u_input.c.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, u_input.c.x, 4294967295u), ~u_input.c.x), 22507u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(19526i, 53136i, 8615i), vec3<i32>(-2147483647i, 1i, -86680i)), abs(55554i)) ^ -1i), select(global2[_wgslsmith_index_u32(abs((global3[_wgslsmith_index_u32(17467u, 4u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)] % 32u)) | u_input.c.x), 15u)], select(select(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(569u, 25u)]), global2[_wgslsmith_index_u32(u_input.b, 15u)], global2[_wgslsmith_index_u32(u_input.b, 15u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(82814u, 25u)], false), false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true), !(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16739u, 4u)], 25u)] | global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(60601u, 4u)], 25u)])), !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.d.x, ~0u), 15u)]), 367f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global0 = array<bool, 25>();
    global3 = array<u32, 4>();
    let var_0 = arg_2;
    global2 = array<vec3<bool>, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(642f - -1082f)), _wgslsmith_div_f32(arg_0.c.a, 1398f), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c.a))))), arg_0.c.a), vec4<f32>(-1262f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(902f, -863f, global0[_wgslsmith_index_u32(arg_2.c.x, 25u)])) * _wgslsmith_f_op_f32(f32(-1f) * -2081f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(-304f - -1661f))), 513f), arg_0.c.a > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a + arg_0.c.a), 1322f))));
    return 60219u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 15>();
    let var_0 = -36496i;
    let var_1 = max(vec3<u32>(4294967295u, ~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(4944u, 98485u), vec2<u32>(u_input.d.x, 3007u)), ~u_input.a)), vec3<u32>(select(0u, ~4294967295u, true), global3[_wgslsmith_index_u32(u_input.a.x, 4u)], ~u_input.a.x)) & vec3<u32>(~func_5(func_1(), func_2(vec4<f32>(1516f, 485f, 120f, 2477f), Struct_1(global3[_wgslsmith_index_u32(115405u, 4u)], u_input.d, vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17199u, 4u)], 4u)], global3[_wgslsmith_index_u32(28183u, 4u)], u_input.b), -15524i)), Struct_1(global3[_wgslsmith_index_u32(10883u, 4u)], vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40549u, 4u)], 4u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41846u, 4u)], 4u)]), vec4<u32>(0u, u_input.d.x, 31949u, 4294967295u), var_0), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(71855u, 25u)])), 61546u, ~1u);
    var var_2 = func_1().d.b.x;
    var var_3 = func_1().d.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(960f, 488f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_4(-986f, Struct_1(4294967295u, vec3<u32>(0u, u_input.a.x, 28205u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 4u)], 4u)], 4u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(999u, 4u)], 4u)], u_input.c.x, 24618u), var_0), vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, true), -1000f).c.a, _wgslsmith_f_op_f32(floor(716f))))), _wgslsmith_f_op_f32(-1f)));
}

