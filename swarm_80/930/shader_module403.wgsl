struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(33492i, 0i, -10437i, 1i, 11475i, 21076i, 0i, 0i, 0i, 2147483647i, i32(-2147483648), -49856i, -32482i, 22445i, -24316i, i32(-2147483648), i32(-2147483648));

var<private> global1: array<i32, 25> = array<i32, 25>(2147483647i, i32(-2147483648), i32(-2147483648), 56248i, 40939i, -26796i, 1i, -1i, 2147483647i, 88830i, 1i, 1i, -2037i, 28412i, 1i, i32(-2147483648), -4213i, 14659i, 0i, -1i, 2147483647i, 0i, 0i, -28870i, 39917i);

var<private> global2: Struct_1 = Struct_1(false, 61637u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = Struct_1(!(!(!select(global2.a, global2.a, global2.a))), arg_3);
    var var_1 = reverseBits(vec3<u32>(arg_2.x, global2.b, 0u));
    let var_2 = Struct_1(any(vec2<bool>(true, false)), _wgslsmith_mult_u32(max(4294967295u, 1u) | var_1.x, 93130u & global2.b));
    let var_3 = firstTrailingBit(vec3<u32>(~4294967295u, 13264u, 2869u));
    var_0 = Struct_1(all(vec3<bool>(var_0.a, true, global2.a)) & var_2.a, abs(global2.b | firstLeadingBit(arg_2.x)));
    return _wgslsmith_f_op_f32(trunc(-666f));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-420f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-281f)), _wgslsmith_f_op_f32(1025f + -1612f), 0u != global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-2147483647i, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], -1i, u_input.e.x, global1[_wgslsmith_index_u32(global2.b, 25u)]), vec4<u32>(global2.b, 4294967295u, 31282u, arg_2.a.b), arg_2.a.b)) * _wgslsmith_f_op_f32(abs(-630f))))), _wgslsmith_f_op_f32(func_3(1i, vec4<i32>(global1[_wgslsmith_index_u32(arg_2.e.b, 25u)], u_input.b.x, _wgslsmith_sub_i32(26591i, global0[_wgslsmith_index_u32(countOneBits(arg_2.a.b), 17u)]), u_input.e.x), vec4<u32>(~arg_2.c.b >> (1u % 32u), 9195u, _wgslsmith_dot_vec3_u32(vec3<u32>(52508u, arg_2.e.b, arg_1.e.b) >> (vec3<u32>(u_input.c, global2.b, arg_0.c.b) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(6944u, 1u, global2.b), vec3<u32>(1u, u_input.d.x, arg_1.e.b))), 0u), ~reverseBits(38839u) >> (0u % 32u))));
    let var_1 = Struct_2(Struct_1(arg_2.b.a, 30624u), Struct_1(select(arg_0.c.a, all(arg_0.d.zxw), true), ~0u), Struct_1(false & any(arg_1.d.ywz), global2.b), !(!(!arg_2.d)), arg_1.e);
    var var_2 = ~(~(~(0u << ((arg_0.c.b | u_input.c) % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)));
    let var_4 = Struct_2(arg_2.a, Struct_1(true, _wgslsmith_div_u32(~arg_0.b.b, 1u)), arg_0.c, select(vec4<bool>(all(select(vec2<bool>(true, arg_1.c.a), vec2<bool>(false, arg_1.b.a), vec2<bool>(false, arg_1.e.a))), all(vec4<bool>(false, false, global2.a, arg_2.d.x)), true, arg_1.b.a), !select(select(arg_2.d, var_1.d, arg_0.e.a), arg_1.d, all(vec3<bool>(arg_0.a.a, false, var_1.a.a))), select(all(select(vec4<bool>(arg_1.d.x, var_1.b.a, arg_2.c.a, arg_2.a.a), arg_2.d, var_1.d.x)), false, true)), var_1.a);
    return Struct_1(any(select(select(arg_2.d.wxx, !arg_2.d.zyz, !arg_1.d.ywz), !arg_1.d.xwy, all(vec2<bool>(true, arg_0.a.a)))), _wgslsmith_mult_u32(global2.b, 17224u) >> (var_4.e.b % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> i32 {
    var var_0 = -global0[_wgslsmith_index_u32(arg_1.b.b, 17u)];
    global1 = array<i32, 25>();
    global2 = func_2(arg_1, arg_1, arg_1);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2286f))));
    let var_2 = global1[_wgslsmith_index_u32(~0u >> (1u % 32u), 25u)];
    return 52281i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 25>();
    global0 = array<i32, 17>();
    let var_0 = true;
    var var_1 = max(_wgslsmith_sub_vec4_i32(u_input.e, _wgslsmith_sub_vec4_i32(-(u_input.e & vec4<i32>(u_input.b.x, 2147483647i, 0i, global1[_wgslsmith_index_u32(global2.b, 25u)])), vec4<i32>(global1[_wgslsmith_index_u32(min(525u, 1u), 25u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(5222u, 17u)], global1[_wgslsmith_index_u32(global2.b, 25u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11130u, 0u), u_input.d), 25u)], func_1(Struct_1(false, global2.b), Struct_2(Struct_1(false, global2.b), Struct_1(false, u_input.a), Struct_1(true, global2.b), vec4<bool>(var_0, false, false, global2.a), Struct_1(global2.a, 0u)), global2.b, u_input.d.x)))), _wgslsmith_add_vec4_i32(abs(u_input.e), u_input.e));
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec3<u32>(u_input.c, 1u, u_input.d.x) ^ vec3<u32>(u_input.a, 1u, 4294967295u)) | select(select(vec3<u32>(1u, u_input.d.x, 4294967295u), vec3<u32>(4294967295u, u_input.a, 79429u), vec3<bool>(var_0, var_0, false)), _wgslsmith_add_vec3_u32(vec3<u32>(47750u, u_input.a, 0u), vec3<u32>(global2.b, 1u, 27343u)), vec3<bool>(var_0, var_0, true))));
}

