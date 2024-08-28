struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true));

var<private> global2: array<Struct_1, 6>;

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-7896i, 1i), 1289f, -775f);

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 6>();
    global0 = array<Struct_3, 2>();
    var var_0 = select(arg_0.c.e.xzw, select(vec3<bool>(!(u_input.a.x > u_input.b), arg_0.d.e.x || any(arg_0.a.xz), false), vec3<bool>(false, !(true || arg_0.c.e.x), !(2925u > u_input.b)), true), true);
    var_0 = !(!select(select(vec3<bool>(var_0.x, arg_0.d.e.x, true), arg_0.a.wzx, u_input.b < 4294967295u), select(select(vec3<bool>(var_0.x, arg_0.c.e.x, var_0.x), vec3<bool>(false, true, true), arg_0.c.e.zzy), !arg_0.c.e.zwz, select(var_0.x, arg_0.c.e.x, var_0.x)), !select(arg_0.a.yyw, arg_0.a.zzw, vec3<bool>(false, false, arg_0.c.e.x))));
    let var_1 = ~global3.a.x;
    return vec4<bool>(select(false, !(!var_0.x), false) & true, var_0.x, arg_0.d.e.x, !(all(arg_0.c.e) || any(vec4<bool>(var_0.x, var_0.x, true, true))));
}

fn func_2() -> i32 {
    var var_0 = 48193i;
    global2 = array<Struct_1, 6>();
    let var_1 = Struct_3(!select(func_3(Struct_3(vec4<bool>(true, true, false, false), global2[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_2(global3.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], Struct_1(vec2<i32>(1i, -2147483647i), 1000f, global3.b), vec3<i32>(global3.a.x, 0i, -2147483647i), vec4<bool>(false, true, false, true)), Struct_2(global3.b, global2[_wgslsmith_index_u32(64949u, 6u)], Struct_1(vec2<i32>(global3.a.x, global3.a.x), global3.c, global3.c), vec3<i32>(global3.a.x, -2147483647i, -70516i), global1[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(max(global3.b, global3.c)), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 6u)]), !(!global1[_wgslsmith_index_u32(5985u, 27u)]), false), global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(-956f, global2[_wgslsmith_index_u32(0u | ~(~u_input.a.x), 6u)], global2[_wgslsmith_index_u32(4900u, 6u)], -vec3<i32>(22361i, -global3.a.x, global3.a.x), !(!(!global1[_wgslsmith_index_u32(u_input.b, 27u)]))), Struct_2(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(f32(-1f) * -265f)), Struct_1(vec2<i32>(_wgslsmith_div_i32(0i, -28520i), ~(-2147483647i)), global3.c, _wgslsmith_f_op_f32(-global3.c)), Struct_1(global3.a, _wgslsmith_f_op_f32(-1f), -1429f), min((vec3<i32>(0i, global3.a.x, global3.a.x) >> (vec3<u32>(75814u, u_input.b, u_input.a.x) % vec3<u32>(32u))) | vec3<i32>(0i, global3.a.x, global3.a.x), (vec3<i32>(-1i, -10394i, global3.a.x) & vec3<i32>(22987i, -4881i, 1i)) & ~vec3<i32>(-814i, global3.a.x, global3.a.x)), vec4<bool>(!any(vec3<bool>(false, false, true)), all(vec2<bool>(false, false)), true, true)));
    var_0 = global3.a.x;
    global1 = array<vec4<bool>, 27>();
    return global3.a.x;
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<bool>, 27>();
    let var_0 = ~vec4<i32>(select(func_2(), 0i, func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.a.x, u_input.b, 1u)), 2u)], _wgslsmith_f_op_f32(-global3.c), Struct_1(vec2<i32>(global3.a.x, 0i), 364f, global3.c)).x), ~30684i, select(0i, 0i, any(vec2<bool>(false, true))), -46572i);
    let var_1 = vec4<bool>(true, false, true & (global3.a.x < _wgslsmith_dot_vec4_i32(min(vec4<i32>(global3.a.x, global3.a.x, var_0.x, var_0.x), var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_0.x, global3.a.x, 2147483647i), var_0))), any(vec2<bool>(true, true)));
    let var_2 = vec4<bool>(true, !(true != var_1.x), false, var_1.x);
    let var_3 = Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b))), _wgslsmith_f_op_f32(f32(-1f) * -1125f));
    return global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a, 331f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.c, 1540f))))));
    let var_0 = func_1();
    global1 = array<vec4<bool>, 27>();
    let var_1 = global3.c;
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(global3.a.x, -2147483647i, 2147483647i, var_0.b.a.x) & vec4<i32>(max(global3.a.x, global3.a.x), ~0i, ~29505i, firstLeadingBit(global3.a.x)), abs(select(vec4<i32>(var_0.b.a.x, 32709i, 0i, global3.a.x), min(vec4<i32>(global3.a.x, 1i, global3.a.x, var_0.d.d.x), vec4<i32>(global3.a.x, -83671i, 1i, -1i)), true))));
    var var_3 = _wgslsmith_f_op_f32(-575f + 957f);
    let var_4 = abs(vec2<u32>(_wgslsmith_div_u32(0u, u_input.b) | firstLeadingBit(_wgslsmith_add_u32(u_input.b, u_input.b)), ~u_input.b));
    let var_5 = var_0.c.e.wz;
    var var_6 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_div_i32(-19407i, ~var_2.x), 1i) | var_6.x);
}

