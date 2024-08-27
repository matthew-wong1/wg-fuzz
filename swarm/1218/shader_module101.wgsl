struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: array<bool, 20>;

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: array<f32, 9> = array<f32, 9>(315f, 133f, 1076f, -1682f, -1000f, -1000f, -1000f, -682f, -888f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<u32>) -> u32 {
    global1 = !global2[_wgslsmith_index_u32(abs(~9009u), 20u)] & true;
    var var_0 = u_input.a ^ -select(u_input.a, vec4<i32>(firstTrailingBit(-2147483647i), firstLeadingBit(37993i), 2147483647i, arg_2.a.a.x), true);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, ~var_1.a.c), 1u, abs(~1u)), vec3<u32>(_wgslsmith_mod_u32(1u, ~1u), select(~max(arg_3.x, 20192u), _wgslsmith_sub_u32(var_1.a.c, 4294967295u) | 0u, true), _wgslsmith_dot_vec2_u32(arg_3, ~u_input.e)));
    global3 = array<vec4<bool>, 22>();
    return 4294967295u;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(vec2<i32>(-u_input.a.x, ~2147483647i), select(select(vec3<bool>(arg_1, global2[_wgslsmith_index_u32(1u, 20u)], false), vec3<bool>(false, false, arg_1), global2[_wgslsmith_index_u32(arg_0, 20u)]), !vec3<bool>(arg_1, true, arg_1), arg_1), select(29819u, arg_0, true))), firstLeadingBit(max(18072i >> (firstLeadingBit(arg_0) % 32u), _wgslsmith_sub_i32(max(u_input.b, u_input.d), u_input.c.x | u_input.a.x))), Struct_1(u_input.c, !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 20u)], global2[_wgslsmith_index_u32(83361u, 20u)], global2[_wgslsmith_index_u32(arg_2.x, 20u)])), 1u), Struct_1(vec2<i32>(i32(-1i) * -58817i, -(i32(-1i) * -19565i)), vec3<bool>(any(global3[_wgslsmith_index_u32(48601u, 22u)]), !arg_1, true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1255f), abs(-vec3<i32>(-14460i, 0i, 29986i)), Struct_2(Struct_1(u_input.c, vec3<bool>(global2[_wgslsmith_index_u32(26418u, 20u)], global2[_wgslsmith_index_u32(u_input.e.x, 20u)], true), 0u)), ~vec2<u32>(arg_2.x, arg_2.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    global1 = true & arg_0.x;
    global2 = array<bool, 20>();
    let var_0 = _wgslsmith_f_op_f32(1835f + 835f);
    let var_1 = Struct_1(~u_input.c, !(!vec3<bool>(true, any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.e.x, 20u)], arg_0.x)), 38137u == u_input.e.x)), u_input.e.x);
    global2 = array<bool, 20>();
    return func_2(30609u, !var_1.b.x, ~vec2<u32>(_wgslsmith_add_u32(0u, ~22210u), max(0u, ~var_1.c)), _wgslsmith_mod_u32(1u, 30237u));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    global1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(u_input.e.x, 9u)])) * _wgslsmith_f_op_f32(f32(-1f) * -1176f)) - global4[_wgslsmith_index_u32(u_input.e.x, 9u)]) >= global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.c.c, 53112u | u_input.e.x), 9u)]);
    var var_0 = func_1(arg_1.yw, -1035f).a.a;
    global1 = any(vec3<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(1u, 9u)] != global4[_wgslsmith_index_u32(88109u, 9u)], true && arg_1.x, select(false, var_0.b.x, arg_0.a.a.b.x), true)), arg_1.x, var_0.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e.x, 9u)]))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(arg_0.c.c, 51087u), 9u)]), -258f, global4[_wgslsmith_index_u32(1u, 9u)]) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(197f, -441f, global4[_wgslsmith_index_u32(var_0.c, 9u)], 279f))), vec4<f32>(_wgslsmith_f_op_f32(1000f + global4[_wgslsmith_index_u32(var_0.c, 9u)]), -894f, _wgslsmith_f_op_f32(select(1042f, -116f, global2[_wgslsmith_index_u32(var_0.c, 20u)])), global4[_wgslsmith_index_u32(arg_0.c.c, 9u)])))));
    var var_2 = func_1(!vec2<bool>(_wgslsmith_f_op_f32(515f * global4[_wgslsmith_index_u32(u_input.e.x, 9u)]) > _wgslsmith_f_op_f32(-var_1.x), false), var_1.x);
    return var_2.c;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global3 = array<vec4<bool>, 22>();
    var var_0 = !(!vec2<bool>(true, arg_0.b.x));
    global3 = array<vec4<bool>, 22>();
    global3 = array<vec4<bool>, 22>();
    global2 = array<bool, 20>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 20u)], false)), global4[_wgslsmith_index_u32(abs(u_input.e.x), 9u)]), select(select(!global3[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], false, false), all(vec4<bool>(true, false, true, true))), select(global3[_wgslsmith_index_u32(~u_input.e.x, 22u)], vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], false, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(u_input.e.x, 20u)]), false), true), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 6830i, 581i, u_input.d), vec4<i32>(14092i, -1i, u_input.a.x, u_input.c.x)), max(vec4<i32>(2147483647i, u_input.a.x, u_input.b, 1i), u_input.a)), u_input.c.x, 1i, u_input.a.x), _wgslsmith_div_i32(u_input.c.x, i32(-1i) * -u_input.b)));
    let var_1 = all(vec4<bool>(!var_0.b.x, false, any(var_0.b), true));
    var var_2 = u_input.c & ~u_input.c;
    global4 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(19108u, 9u)])), -938f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(49585u, 9u)] - global4[_wgslsmith_index_u32(1u, 9u)]) + _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e.x, 9u)] * 321f)))), (0i ^ ~u_input.b) > ~var_2.x)), _wgslsmith_mod_u32(~(~u_input.e.x), 4294967295u), _wgslsmith_div_u32(47920u, u_input.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(var_0.c, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], true)), 514f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e.x, 9u)])))), _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.e.x, 9u)])));
}

