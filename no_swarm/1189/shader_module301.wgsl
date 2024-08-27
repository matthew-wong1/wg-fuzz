struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-733f, -13963i, 1905f, vec4<bool>(false, false, true, false));

var<private> global1: array<bool, 11>;

var<private> global2: array<i32, 9>;

var<private> global3: Struct_2 = Struct_2(-1679f, true, Struct_1(-1476f, 1i, -668f, vec4<bool>(false, true, false, false)));

var<private> global4: vec3<bool>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = reverseBits(firstTrailingBit(-57771i));
    let var_1 = Struct_1(global0.a, global2[_wgslsmith_index_u32(0u, 9u)], -1047f, global0.d);
    let var_2 = Struct_2(2476f, true, Struct_1(945f, 1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f), var_1.c)), !(!vec4<bool>(var_1.d.x, true, global0.d.x, true))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, 987f), _wgslsmith_f_op_vec2_f32(vec2<f32>(821f, var_2.a) + vec2<f32>(-254f, 904f)))))))));
    return _wgslsmith_f_op_f32(select(global3.a, var_1.a, global1[_wgslsmith_index_u32(63880u, 11u)]));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = !global0.d;
    global3 = Struct_2(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-global2[_wgslsmith_index_u32(74086u, 9u)])) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1316f * global3.a), _wgslsmith_f_op_f32(-global3.a))))), true, Struct_1(global0.c, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(~67115u, 9u)], -(i32(-1i) * -15301i)), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(899f, 1204f))), global3.c.d));
    let var_1 = select(!(!global3.c.d.zyz), vec3<bool>(true, !global4.x, global4.x), false);
    global3 = Struct_2(global3.a, any(vec3<bool>(all(select(vec4<bool>(false, false, global0.d.x, false), vec4<bool>(global3.c.d.x, false, false, true), vec4<bool>(global1[_wgslsmith_index_u32(40417u, 11u)], global4.x, false, false))), false, global4.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))), -1i, global0.c, vec4<bool>(all(!global4.zz), true, var_1.x | (47391u >= arg_0), global0.b < (global0.b >> (0u % 32u)))));
    let var_2 = u_input.a.xwx;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(409f, global0.a))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(func_2(-19484i))), 1319f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    global0 = Struct_1(_wgslsmith_div_f32(-452f, _wgslsmith_f_op_f32(global3.c.c * _wgslsmith_f_op_f32(func_2(24049i)))), 0i, _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-arg_1)), !global3.c.d);
    var var_0 = _wgslsmith_f_op_f32(func_3(u_input.b));
    let var_1 = true;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - global3.a), global0.a), ~(-(~abs(2147483647i))), _wgslsmith_f_op_f32(-679f * -148f), !(!select(vec4<bool>(false, global3.c.d.x, false, false), vec4<bool>(false, arg_2.x, true, true), !arg_2.x)));
    var var_2 = Struct_2(297f, global0.d.x | (any(vec2<bool>(var_1, global0.d.x)) || false), Struct_1(777f, _wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_3, global2[_wgslsmith_index_u32(74701u, 9u)] << (1u % 32u), firstLeadingBit(-8989i)), 8096i), _wgslsmith_f_op_f32(f32(-1f) * -511f), select(!global0.d, !(!global3.c.d), vec4<bool>(all(arg_0.d.wwz), any(vec3<bool>(global4.x, global3.c.d.x, arg_0.d.x)), true, any(global3.c.d)))));
    return (~(~2147483647i) | (-51230i << (min(u_input.b ^ 1u, u_input.b) % 32u))) | (1i ^ var_2.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(635f, -840f, global3.c.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(var_0.zx));
    var var_2 = vec2<u32>(countOneBits(u_input.b), 76095u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 + vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), -1153f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_0.zz)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(-621f, global3.a), global3.c.d.zy)), _wgslsmith_f_op_vec2_f32(-var_0.yy))), true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.zy, var_1))))));
    var var_4 = global3.c.b;
    var var_5 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(i32(-1i) * -func_1(global3.c, -741f, vec2<bool>(true, true), 5181i), global0.b), func_1(Struct_1(467f, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 9u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(41422u, var_2.x), 9u)]), _wgslsmith_f_op_f32(func_3(17112u)), vec4<bool>(false, all(vec2<bool>(global1[_wgslsmith_index_u32(var_2.x, 11u)], global3.c.d.x)), all(global3.c.d.wx), global1[_wgslsmith_index_u32(u_input.b, 11u)])), 1116f, !select(global0.d.xz, global0.d.zy, global0.d.xw), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, global3.c.b, -2873i);
}

