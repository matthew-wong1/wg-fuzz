struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(40289u, 1u), vec2<u32>(27537u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(21597u, 4294967295u), vec2<u32>(14713u, 1u), vec2<u32>(1u, 4294967295u));

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: Struct_2 = Struct_2(Struct_1(false), 0u, Struct_1(true));

var<private> global3: array<u32, 23> = array<u32, 23>(5015u, 4294967295u, 27062u, 63166u, 1u, 18511u, 0u, 4294967295u, 33085u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 0u, 14u, 0u, 0u, 4294967295u, 6433u, 0u, 13539u, 4294967295u);

var<private> global4: i32 = 0i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1255f, 283f, 168f), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 23u)], 22u)])) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(global2.b, 22u)] + global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 23u)], 22u)]) - _wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(53783u, 22u)])))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-201f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -749f))), 546f) + global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, global3[_wgslsmith_index_u32(global2.b, 23u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 23u)], 2394u, u_input.b), vec4<u32>(u_input.b, 1u, 19764u, u_input.b))), abs(global2.b) >> (1u % 32u)), 22u)])));
}

fn func_1() -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.b, 6u)];
    global0 = array<vec2<u32>, 6>();
    let var_1 = 39251u;
    global0 = array<vec2<u32>, 6>();
    var_0 = ~vec2<u32>(var_1 ^ (global2.b >> (~58077u % 32u)), 0u);
    return _wgslsmith_f_op_vec3_f32(func_2());
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    global4 = u_input.c.x;
    var var_0 = firstLeadingBit(vec3<u32>(global2.b, ~_wgslsmith_sub_u32(18257u, min(global2.b, global3[_wgslsmith_index_u32(global2.b, 23u)])), _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(0u, 4294967295u, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, global2.b, 1u), ~vec4<u32>(4294967295u, 1u, arg_1, arg_1)))));
    var var_1 = Struct_1(!(-countOneBits(arg_0.x) <= (i32(-1i) * -1i)));
    let var_2 = ~abs(firstTrailingBit(vec3<u32>(5788u, var_0.x, 30074u) >> (vec3<u32>(u_input.b, global2.b, arg_1) % vec3<u32>(32u))) << (vec3<u32>(0u, 1u, ~var_0.x) % vec3<u32>(32u)));
    global1 = array<vec3<f32>, 22>();
    return Struct_2(Struct_1(all(vec2<bool>(any(vec3<bool>(false, var_1.a, global2.a.a)), global2.c.a))), ~(countOneBits(~0u) | _wgslsmith_clamp_u32(58103u, firstTrailingBit(4294967295u), ~29087u)), Struct_1(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-756i, firstTrailingBit(u_input.a), u_input.c.x, -2147483647i), -vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.c.wx), -2147483647i, _wgslsmith_sub_i32(-47795i, u_input.c.x), reverseBits(-2147483647i)), _wgslsmith_sub_vec4_i32(~u_input.c & u_input.c, countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2791i, u_input.c.x, -13751i), u_input.c)))), u_input.b | u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), 22u)] + _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(0u, 22u)])), global1[_wgslsmith_index_u32(~38555u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(58214u, 6u)]), 23u)], 23u)], 22u)]) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(trunc(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 23u)], 22u)]))))))));
    var var_0 = func_3(_wgslsmith_div_vec4_i32(vec4<i32>(56125i, u_input.c.x, _wgslsmith_add_i32(0i, max(-26819i, 52686i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(50377i, 0i, -16104i), vec3<i32>(u_input.c.x, 45619i, u_input.c.x)), vec3<i32>(u_input.a, 1i, -6326i))), vec4<i32>(u_input.c.x, -1444i, max(26505i, 2147483647i), 29024i)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b, min(global2.b, abs(4294967295u))), 23u)], 23u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(-792f, -312f), _wgslsmith_f_op_f32(abs(-1457f)), _wgslsmith_div_f32(1446f, 2230f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-109f, 976f, -1116f), vec3<f32>(-1090f, 1386f, -869f), !vec3<bool>(true, true, global2.c.a)))))).a;
    var var_1 = func_3(~u_input.c, 1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -717f, -653f), global1[_wgslsmith_index_u32(u_input.b, 22u)], any(vec2<bool>(var_0.a, global2.c.a)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2())))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1138f + 819f), _wgslsmith_f_op_f32(-785f + 816f), true)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(-169f))), 1561f)));
    var var_2 = ~reverseBits(-abs(countOneBits(u_input.a)));
    var_2 = ~(-1i);
    let var_3 = Struct_3(func_3(_wgslsmith_mod_vec4_i32(u_input.c, ~u_input.c), 21001u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, 1000f, -322f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-809f, -920f, 866f)))))), select(true, true, all(select(select(vec2<bool>(var_0.a, var_1.a.a), vec2<bool>(global2.c.a, true), false), !vec2<bool>(var_0.a, global2.a.a), vec2<bool>(true, true)))), u_input.c.xzw);
    global3 = array<u32, 23>();
    var var_4 = Struct_3(Struct_2(func_3(u_input.c, 38271u, vec3<f32>(_wgslsmith_div_f32(292f, -1319f), 475f, -514f)).c, ~global2.b, func_3(-max(u_input.c, vec4<i32>(-2147483647i, u_input.c.x, -1i, var_3.c.x)), _wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(14793u, 23u)], select(u_input.b, global3[_wgslsmith_index_u32(99223u, 23u)], var_0.a)), global1[_wgslsmith_index_u32(0u, 22u)]).c), !(true | var_0.a), reverseBits(~vec3<i32>(-85386i, ~0i, _wgslsmith_sub_i32(1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.c.yxz, u_input.c.wzy, select(vec3<bool>(16186i == var_3.c.x, true, true), !(!vec3<bool>(false, global2.c.a, true)), var_4.a.c.a)));
}

