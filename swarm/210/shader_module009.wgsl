struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<vec4<f32>, 1>;

var<private> global2: array<f32, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> Struct_3 {
    global1 = array<vec4<f32>, 1>();
    var var_0 = -1000f;
    var_0 = global2[_wgslsmith_index_u32(u_input.b, 19u)];
    global1 = array<vec4<f32>, 1>();
    global1 = array<vec4<f32>, 1>();
    return Struct_3(Struct_1(~u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, -209f) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 19u)], -115f, global2[_wgslsmith_index_u32(u_input.e, 19u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2620f, -1217f, 987f) + vec3<f32>(1078f, arg_2.x, arg_2.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-413f, -316f, 174f) - vec3<f32>(global2[_wgslsmith_index_u32(1u, 19u)], arg_2.x, 157f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -995f, -553f), vec3<f32>(-1113f, arg_2.x, -1701f)), all(vec3<bool>(arg_1, true, false))))), vec3<u32>(max(u_input.e << (35381u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, 54042u), vec3<u32>(1u, 20008u, 4965u))), u_input.e, 40737u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = true;
    var var_1 = 700f;
    let var_2 = 1i;
    var var_3 = vec3<i32>(u_input.d, arg_1.c.x, countOneBits(-6832i));
    var var_4 = var_3.zy;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.a))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(~arg_1.b), abs(38217u >> (arg_1.b % 32u)), func_2(vec4<bool>(true, arg_0.x, false, global0[_wgslsmith_index_u32(arg_1.b, 9u)]), arg_0.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(302f, 518f)))).a.a, 22738u), ~(vec4<u32>(33955u, 4294967295u, 21231u, arg_1.b) | vec4<u32>(arg_1.b, u_input.e, u_input.e, u_input.b)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.e, arg_1.b), vec4<u32>(arg_1.b, 70472u, 4522u, 59353u))) % vec4<u32>(32u))), vec4<u32>(0u, 34867u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(36241u, 1u, 39328u), vec3<u32>(arg_1.b, 12276u, arg_1.b) | vec3<u32>(1u, arg_1.b, arg_1.b)), arg_1.b));
    var var_1 = true;
    var var_2 = 60474u;
    global0 = array<bool, 9>();
    var_1 = false;
    return arg_1.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0.a;
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(47508u, func_2(vec4<bool>(true, global0[_wgslsmith_index_u32(10782u, 9u)], global0[_wgslsmith_index_u32(40488u, 9u)], true), global0[_wgslsmith_index_u32(var_0.a, 9u)], arg_1.a).a.b, ~arg_0.a.c)), arg_1)).x, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-1045f - global2[_wgslsmith_index_u32(0u, 19u)])))), -1000f), arg_1);
    var_1 = Struct_4(757f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1000f) - vec2<f32>(_wgslsmith_div_f32(168f, _wgslsmith_div_f32(var_1.b.x, -1693f)), _wgslsmith_f_op_f32(trunc(var_0.b.x)))), var_1.c);
    var var_2 = 240f;
    var_2 = var_0.b.x;
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> vec3<u32> {
    let var_0 = func_5(func_2(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 9u)], false, global0[_wgslsmith_index_u32(u_input.b, 9u)], false)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(u_input.e, 10926u) ^ _wgslsmith_mult_u32(2220u, 8033u)), 9u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global2[_wgslsmith_index_u32(81174u, 19u)]) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], -1261f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_1))))), Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(arg_0.x, 1446f))), _wgslsmith_f_op_vec2_f32(abs(func_2(vec4<bool>(true, global0[_wgslsmith_index_u32(26041u, 9u)], false, global0[_wgslsmith_index_u32(3591u, 9u)]), global0[_wgslsmith_index_u32(0u, 9u)], arg_0.xz).a.b.xy)))), 4294967295u, func_4(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], false, global0[_wgslsmith_index_u32(u_input.e, 9u)])), Struct_2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(u_input.b, arg_0, vec3<u32>(u_input.e, 0u, 18778u))), Struct_2(vec2<f32>(arg_0.x, -442f), 1u, u_input.a.yy))), reverseBits(32820u), select(u_input.a.zx, vec2<i32>(61478i, 30976i), global0[_wgslsmith_index_u32(u_input.b, 9u)])))), u_input.e);
    return vec3<u32>(var_0.b, ~(~var_0.b), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.e, 19u)], -1373f, global2[_wgslsmith_index_u32(3555u, 19u)]) * vec3<f32>(global2[_wgslsmith_index_u32(82237u, 19u)], 1000f, global2[_wgslsmith_index_u32(45333u, 19u)]))), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e, 19u)]), _wgslsmith_f_op_f32(855f - 457f)))), vec3<u32>(1u, _wgslsmith_mult_u32(1u, u_input.b), u_input.b));
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-2212f, var_0.b.x, -1392f), var_0.b), _wgslsmith_div_f32(-743f, global2[_wgslsmith_index_u32(var_0.a, 19u)])), var_0.c), vec3<u32>(var_0.a & var_0.a, var_0.c.x, ~_wgslsmith_mult_u32(1u, var_0.a))));
    var var_2 = !(!vec4<bool>(false, any(vec2<bool>(true, true)), true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.c.x, 9u)], false, global0[_wgslsmith_index_u32(var_0.a, 9u)]))));
    var_2 = !select(!vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, var_2.x, global0[_wgslsmith_index_u32(32448u, 9u)], global0[_wgslsmith_index_u32(var_0.c.x, 9u)]))), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, false, true)), vec4<bool>(global0[_wgslsmith_index_u32(79876u, 9u)], var_2.x, !var_2.x, false), all(!vec4<bool>(var_2.x, true, var_2.x, global0[_wgslsmith_index_u32(44972u, 9u)]))), select(select(select(vec4<bool>(var_2.x, global0[_wgslsmith_index_u32(var_0.a, 9u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 9u)], false, false, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], true)), select(vec4<bool>(global0[_wgslsmith_index_u32(41875u, 9u)], var_2.x, var_2.x, var_2.x), vec4<bool>(true, false, true, true), var_2.x), false), vec4<bool>(true, all(var_2.zx), global0[_wgslsmith_index_u32(4294967295u, 9u)], all(vec2<bool>(var_2.x, global0[_wgslsmith_index_u32(u_input.b, 9u)]))), vec4<bool>(false, var_0.c.x >= 21553u, var_2.x & false, false)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(var_0.b.yy)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~(var_0.c.zz | var_0.c.xz), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_0.c.x), var_0.c.yz)), 3904u), vec2<i32>(u_input.a.x, u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~14130i, var_3.c.x, vec3<i32>(var_3.c.x, i32(-1i) * -51495i, 2147483647i), abs(func_5(func_2(select(vec4<bool>(var_2.x, false, var_2.x, global0[_wgslsmith_index_u32(var_3.b, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(22235u, 9u)], false, true, true), var_2.x), false, vec2<f32>(var_3.a.x, -1145f)), func_5(Struct_3(Struct_1(var_0.a, var_0.b, vec3<u32>(98182u, 4294967295u, 4294967295u))), Struct_2(var_0.b.xx, u_input.e, u_input.a.yx), 45276u), func_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], var_2.x, false, true), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a, 19u)], var_3.a.x) + vec2<f32>(788f, var_3.a.x))).a.c.x).c.x));
}

