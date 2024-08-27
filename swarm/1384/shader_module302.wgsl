struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(0u, 0u), vec2<bool>(false, true), Struct_1(vec3<i32>(-15481i, 30106i, -1i), false));

var<private> global3: Struct_3 = Struct_3(Struct_2(vec2<u32>(0u, 1u), vec2<bool>(false, true), Struct_1(vec3<i32>(-1i, -42256i, 1i), false)), Struct_1(vec3<i32>(0i, -1i, 35005i), false), vec2<i32>(-51005i, -1i), false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    return Struct_1(vec3<i32>(-19457i, global2.c.a.x ^ -(~global3.a.c.a.x), ~u_input.a.x), false);
}

fn func_3() -> bool {
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, 4294967295u, 4294967295u)), vec3<u32>(global2.a.x, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global3.a.a.x, 25u)]), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.b, 25u)], global2.a.x))), 31u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1002f * -1322f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]) + global1[_wgslsmith_index_u32(1u, 31u)]))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(103339u, 31u)]))));
    global2 = Struct_2(~vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.a.x, ~27607u), 25u)], _wgslsmith_mod_u32(select(global0[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b, true), 0u)), select(vec2<bool>(true, select(any(vec4<bool>(true, false, global2.c.b, false)), all(vec2<bool>(true, false)), var_0.x <= global1[_wgslsmith_index_u32(4294967295u, 31u)])), !select(global2.b, vec2<bool>(global3.b.b, true), !global3.d), global3.a.c.b), Struct_1(u_input.a, all(!vec4<bool>(global3.a.c.b, true, global2.b.x, global2.c.b)) || global3.b.b));
    var var_1 = Struct_2(~(~global2.a), !global3.a.b, Struct_1(reverseBits(vec3<i32>(global2.c.a.x, u_input.a.x, 27694i)) & global2.c.a, !global2.b.x));
    var_1 = Struct_2(_wgslsmith_mult_vec2_u32(~global2.a, var_1.a & _wgslsmith_sub_vec2_u32(firstTrailingBit(var_1.a), vec2<u32>(24724u, u_input.b) | vec2<u32>(global2.a.x, u_input.b))), global2.b, func_1(select(!select(vec3<bool>(true, global3.d, true), vec3<bool>(var_1.c.b, true, false), vec3<bool>(global3.a.c.b, var_1.b.x, global3.a.b.x)), vec3<bool>(true, true, true), global2.c.b), _wgslsmith_f_op_f32(1002f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)))));
    var var_2 = global3.a;
    return var_1.c.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<i32> {
    global2 = global3.a;
    global1 = array<f32, 31>();
    global0 = array<u32, 25>();
    var var_0 = Struct_2(vec2<u32>(74303u, _wgslsmith_dot_vec2_u32(~arg_0.a.a << ((vec2<u32>(51072u, u_input.b) >> (vec2<u32>(65779u, 3670u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~global2.a))), select(select(vec2<bool>(all(vec3<bool>(true, arg_0.d, global3.d)), global2.c.b && arg_0.a.b.x), select(vec2<bool>(false, global2.c.b), arg_0.a.b, 78276u <= global2.a.x), vec2<bool>(global2.c.b, func_1(vec3<bool>(false, true, arg_0.b.b), 1125f).b)), vec2<bool>(func_3(), global3.d), !select(arg_0.a.b, global3.a.b, func_3())), Struct_1(vec3<i32>(~global3.c.x, firstLeadingBit(firstLeadingBit(global2.c.a.x)), ~arg_0.c.x ^ _wgslsmith_div_i32(global2.c.a.x, u_input.a.x)), true));
    let var_1 = any(vec2<bool>(true, true));
    return vec2<i32>(global2.c.a.x, _wgslsmith_sub_i32(global3.a.c.a.x, ~(-10214i)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 31u)]), _wgslsmith_f_op_f32(select(arg_0.x, global1[_wgslsmith_index_u32(arg_2.a.a.x, 31u)], false))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-299f)) + -115f)), -1072f)));
    global1 = array<f32, 31>();
    var var_1 = Struct_4(select(vec3<bool>(global1[_wgslsmith_index_u32(~global3.a.a.x, 31u)] != _wgslsmith_f_op_f32(arg_0.x + global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]), true, false), !select(vec3<bool>(global3.d, true, global2.c.b), vec3<bool>(true, true, true), select(vec3<bool>(arg_2.b.b, global3.d, true), vec3<bool>(false, true, false), vec3<bool>(false, arg_2.a.c.b, global3.b.b))), !select(vec3<bool>(global3.b.b, false, true), select(vec3<bool>(true, global2.b.x, global2.b.x), vec3<bool>(false, global2.c.b, arg_2.d), arg_2.a.c.b), vec3<bool>(false, false, false))));
    let var_2 = vec3<bool>(true, func_3(), true);
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(~global3.a.a, !vec2<bool>(true, global3.b.b), global3.a.c);
    global2 = Struct_2(~select(global2.a, ~vec2<u32>(global3.a.a.x, 56953u) >> (~vec2<u32>(4294967295u, 20782u) % vec2<u32>(32u)), vec2<bool>(true, true)), global3.a.b, global2.c);
    global2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(9546u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], -268f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2462f, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]))))), ~global3.a.c.a, Struct_3(Struct_2(select(vec2<u32>(global0[_wgslsmith_index_u32(global3.a.a.x, 25u)], 0u), global2.a, !global3.d), select(global3.a.b, select(vec2<bool>(global2.c.b, global3.a.b.x), global2.b, vec2<bool>(global3.b.b, global2.b.x)), global1[_wgslsmith_index_u32(global2.a.x, 31u)] < global1[_wgslsmith_index_u32(u_input.b, 31u)]), Struct_1(vec3<i32>(2147483647i, global2.c.a.x, -16252i), global3.d)), global2.c, func_2(Struct_3(Struct_2(global3.a.a, global3.a.b, Struct_1(vec3<i32>(u_input.a.x, 12478i, 0i), global2.b.x)), func_1(vec3<bool>(false, false, global3.a.c.b), global1[_wgslsmith_index_u32(u_input.b, 31u)]), u_input.a.zy, global2.c.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(224f, -1175f), vec2<f32>(global1[_wgslsmith_index_u32(global2.a.x, 31u)], global1[_wgslsmith_index_u32(1569u, 31u)])) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(50847u, 31u)], global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]), vec2<f32>(487f, 1380f), false)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(58932u, 31u)]) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1086f * -1322f))), _wgslsmith_mult_i32(u_input.a.x | (select(u_input.a.x, -14049i, global3.d) & reverseBits(2147483647i)), 1i));
    let var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(~(~(vec2<u32>(4294967295u, u_input.b) | vec2<u32>(4294967295u, var_0))), vec2<bool>(all(!vec4<bool>(global2.c.b, global3.b.b, true, true)), ~15247u >= _wgslsmith_mult_u32(u_input.b, 31894u)), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-469f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.a.x, 25u)], 31u)], global1[_wgslsmith_index_u32(0u, 31u)]) - vec3<f32>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(55775u, 31u)], -1277f)), vec3<f32>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(39285u, 31u)]))), vec3<i32>(global2.c.a.x, -2147483647i, ~2147483647i), Struct_3(global3.a, global2.c, vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), global3.a.c.b), select(func_4(vec3<f32>(global1[_wgslsmith_index_u32(36633u, 31u)], -1666f, global1[_wgslsmith_index_u32(global3.a.a.x, 31u)]), vec3<i32>(392i, 0i, -2147483647i), Struct_3(Struct_2(global3.a.a, vec2<bool>(false, true), Struct_1(global3.a.c.a, false)), Struct_1(global3.a.c.a, true), vec2<i32>(2147483647i, global2.c.a.x), false), global3.a.c.a.x).c.a.x, select(global2.c.a.x, u_input.a.x, true), var_0 >= 18784u)).c), func_1(select(select(vec3<bool>(global2.b.x, global2.b.x, global2.b.x), !vec3<bool>(global3.a.b.x, global2.c.b, true), select(vec3<bool>(global3.d, true, global3.d), vec3<bool>(true, true, global3.a.c.b), vec3<bool>(global2.c.b, false, false))), vec3<bool>(global3.a.b.x, all(global2.b), func_3()), vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(var_0, 0u)), 31u)]), vec2<i32>(_wgslsmith_add_i32(19327i, func_2(Struct_3(global3.a, Struct_1(vec3<i32>(0i, global3.a.c.a.x, global3.c.x), true), vec2<i32>(6013i, u_input.a.x), true), vec2<f32>(global1[_wgslsmith_index_u32(57663u, 31u)], global1[_wgslsmith_index_u32(40334u, 31u)])).x), firstLeadingBit(i32(-1i) * -global3.c.x)), global3.a.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(max(0u, var_0), 31u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(abs(32741u), 31u)], _wgslsmith_f_op_f32(678f - -1230f))), -138f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(266f)), _wgslsmith_f_op_f32(trunc(-934f))))), _wgslsmith_add_u32(abs(0u) | (_wgslsmith_add_u32(var_0, global3.a.a.x) >> (func_4(vec3<f32>(global1[_wgslsmith_index_u32(global2.a.x, 31u)], global1[_wgslsmith_index_u32(13263u, 31u)], global1[_wgslsmith_index_u32(var_1.a.a.x, 31u)]), vec3<i32>(u_input.a.x, global3.c.x, global2.c.a.x), Struct_3(Struct_2(vec2<u32>(global0[_wgslsmith_index_u32(1123u, 25u)], var_1.a.a.x), vec2<bool>(var_1.b.b, true), global3.a.c), Struct_1(global2.c.a, false), var_1.b.a.yy, var_1.b.b), var_1.c.x).a.x % 32u)), 39791u));
}

