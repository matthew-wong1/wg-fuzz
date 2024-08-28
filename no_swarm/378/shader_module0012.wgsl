struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: bool;

var<private> global1: array<bool, 12>;

var<private> global2: array<f32, 17> = array<f32, 17>(-1298f, -1000f, -100f, 754f, 2087f, -1208f, -937f, -405f, -1548f, -1000f, 190f, -1053f, -1000f, 1000f, 2031f, -641f, -1203f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5) -> i32 {
    var var_0 = abs(arg_1.a);
    global0 = arg_0.a.x;
    var var_1 = Struct_3(arg_1.c, _wgslsmith_sub_u32(~reverseBits(8987u), u_input.a.x), arg_1.c);
    var var_2 = ~countOneBits(min(_wgslsmith_mult_u32(85095u, 22536u), arg_1.b.b >> (var_1.b % 32u))) & ~(select(~u_input.d, ~4294967295u, var_1.c.a) << (1u % 32u));
    let var_3 = Struct_1(var_1.c.b.a);
    return 3624i ^ (41298i >> (_wgslsmith_dot_vec2_u32(u_input.a.zy, abs(firstLeadingBit(u_input.a.xw))) % 32u));
}

fn func_2() -> f32 {
    let var_0 = u_input.a.x;
    let var_1 = firstLeadingBit(firstLeadingBit(min(u_input.a.xwx, max(_wgslsmith_add_vec3_u32(u_input.a.ywx, vec3<u32>(50480u, var_0, var_0)), _wgslsmith_div_vec3_u32(u_input.a.zzy, u_input.a.zwx)))));
    let var_2 = Struct_5(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, func_3(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], true, global1[_wgslsmith_index_u32(114280u, 12u)])), Struct_5(u_input.e.x, Struct_3(Struct_2(false, Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 12u)], true)), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]))), var_0, Struct_2(true, Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(33386u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(31091u, 12u)])))), Struct_2(global1[_wgslsmith_index_u32(7876u, 12u)], Struct_1(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 12u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], false, false)))))), ~(~u_input.e)), Struct_3(Struct_2(true, Struct_1(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0, 12u)], true, true), false)), Struct_1(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_1.x, 12u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(47213u, 12u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], false)))), 11976u & ~(u_input.a.x ^ var_1.x), Struct_2(~2782u <= var_0, Struct_1(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, global1[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(45318u, 12u)], true), global1[_wgslsmith_index_u32(20744u, 12u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)])))), Struct_2(true, Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(var_0, 12u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0, 12u)], false), true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, var_0), 12u)])), Struct_1(vec3<bool>(true, !global1[_wgslsmith_index_u32(0u, 12u)], var_1.x < var_0))));
    var var_3 = ~max(func_3(Struct_1(var_2.b.a.b.a), Struct_5(_wgslsmith_clamp_i32(-1i, var_2.a, -16111i), Struct_3(Struct_2(false, var_2.b.a.b, Struct_1(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4711u, 12u)]))), 4294967295u, Struct_2(true, Struct_1(var_2.b.c.b.a), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(var_2.b.b, 12u)], var_2.b.a.b.a.x, var_2.b.c.a)))), Struct_2(false, Struct_1(vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.x, 12u)])), Struct_1(vec3<bool>(var_2.b.c.b.a.x, var_2.c.c.a.x, global1[_wgslsmith_index_u32(var_2.b.b, 12u)]))))), 0i);
    let var_4 = Struct_2(true, Struct_1(vec3<bool>(true, true, all(vec3<bool>(true, true, var_2.b.a.a)))), Struct_1(!(!var_2.b.a.c.a)));
    return global2[_wgslsmith_index_u32(abs(firstLeadingBit(2463u)), 17u)];
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1u), 17u)]);
    var var_1 = vec2<bool>(all(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(14021u, 12u)], arg_0, arg_0)))), !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d, 17u)] * -1866f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), global2[_wgslsmith_index_u32(~4294967295u, 17u)])));
    var var_2 = Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 1u), vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 33040u), abs(0u))), 12u)], any(vec3<bool>(true | arg_0, false, !global1[_wgslsmith_index_u32(1u, 12u)])), arg_0));
    let var_3 = ~(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, ~u_input.b.x), 21475i));
    let var_4 = Struct_3(Struct_2(var_1.x, Struct_1(select(!vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(1u, 12u)]), var_2.a, vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true))), Struct_1(select(vec3<bool>(false, var_1.x, true), var_2.a, !arg_0))), 1u ^ u_input.a.x, Struct_2(var_3 >= var_3, Struct_1(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], var_2.a.x)), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), var_2.a, var_2.a), var_2.a))));
    return Struct_4(select(vec2<u32>(11164u, u_input.d & ~0u), firstLeadingBit(u_input.a.yw << ((vec2<u32>(var_4.b, var_4.b) | u_input.a.wx) % vec2<u32>(32u))), select(!var_4.c.c.a.yz, var_4.a.b.a.zx, vec2<bool>(true, var_1.x | var_4.a.a))), 2026f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(u_input.c.x, 12u)];
    let var_0 = func_1(true | !(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)])) || any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], false, false))));
    global1 = array<bool, 12>();
    let var_1 = var_0;
    let var_2 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.b)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-527f))), true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a.x, u_input.d), 12u)]));
    var var_3 = u_input.a.wx;
    global2 = array<f32, 17>();
    global2 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 944f, 336f)))))) - vec4<f32>(859f, func_1(false).b, _wgslsmith_f_op_f32(var_0.b * -500f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * var_1.b))));
}

