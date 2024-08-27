struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 5539u, 23962u);

var<private> global2: array<f32, 3> = array<f32, 3>(607f, 2163f, 1698f);

var<private> global3: Struct_3;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(arg_2.a, any(global3.e.c.wzz), select(!(!vec4<bool>(true, global3.d.c.x, true, true)), select(arg_2.c, !vec4<bool>(global3.e.c.x, true, true, global3.e.b), !(!vec4<bool>(arg_2.b, true, global3.d.c.x, arg_2.b))), arg_1.a.x < arg_2.a));
    global0 = array<Struct_3, 23>();
    let var_1 = global3.a.a;
    var var_2 = 9150u;
    let var_3 = vec3<i32>(-1i) * -u_input.c;
    return vec2<f32>(global3.e.a, _wgslsmith_div_f32(_wgslsmith_div_f32(980f, arg_2.a), _wgslsmith_f_op_f32(2072f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 3u)]))))));
}

fn func_2() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a)) - _wgslsmith_div_f32(372f, global3.e.a)), _wgslsmith_f_op_f32(-global3.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -959f)));
    let var_2 = Struct_3(var_0.c, !select(vec3<bool>(false, global3.d.c.x, true), vec3<bool>(true, !var_0.b.x, any(vec4<bool>(global3.b.x, var_0.e.b, true, var_0.b.x))), !select(vec3<bool>(var_0.e.c.x, true, true), vec3<bool>(global3.d.c.x, global3.e.b, true), vec3<bool>(true, true, false))), Struct_2(_wgslsmith_f_op_vec2_f32(func_3((u_input.c.x >> (0u % 32u)) & (u_input.d.x | u_input.c.x), var_0.a, var_0.d))), Struct_1(1253f, global3.e.b, !vec4<bool>(u_input.d.x > u_input.a, false, false, var_0.b.x)), Struct_1(1163f, true, vec4<bool>(true, true, select(true & global3.e.c.x, select(var_0.b.x, false, global3.b.x), !var_0.e.b), global3.e.c.x)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(257f, global2[_wgslsmith_index_u32(32419u, 3u)], -856f, var_2.d.a) + vec4<f32>(-1367f, -822f, -395f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1466f, var_0.d.a, var_1.x, var_2.d.a))), _wgslsmith_div_vec4_f32(vec4<f32>(2419f, var_1.x, var_2.c.a.x, -859f), vec4<f32>(784f, 1169f, 785f, var_2.a.a.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.a.x, -967f, global3.d.a, global3.a.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(global3.c.a.x, global2[_wgslsmith_index_u32(1u, 3u)], -752f, 655f), vec4<f32>(-848f, var_0.d.a, 1492f, var_0.c.a.x)), true)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, global2[_wgslsmith_index_u32(global1.x, 3u)], var_1.x, -1000f), vec4<f32>(1480f, -1474f, -252f, var_1.x))))))));
    let var_4 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(63786u, abs(1u)), global1.x)), 23u)];
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_3(global3.c, global3.e.c.wyx, global3.a, Struct_1(_wgslsmith_f_op_f32(exp2(global3.e.a)), ~1u > firstTrailingBit(~0u), !(!(!vec4<bool>(arg_0, true, arg_0, true)))), global3.e);
    var var_1 = var_0.d;
    var var_2 = u_input.b;
    let var_3 = arg_2;
    var var_4 = global3.e;
    return Struct_3(func_2(), !select(var_0.b, select(select(var_4.c.zww, vec3<bool>(true, true, global3.b.x), var_1.c.x), select(vec3<bool>(false, var_0.d.c.x, false), var_0.b, var_1.c.xzz), select(vec3<bool>(false, arg_0, true), vec3<bool>(var_0.e.b, arg_0, true), var_1.b)), vec3<bool>(var_1.b || global3.d.c.x, true, false)), var_0.a, global3.d, global3.d);
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    global3 = func_4(global3.e.c.x, func_2(), -_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, u_input.c.x)), select(-vec4<i32>(arg_0.x, 18700i, 5409i, u_input.c.x), ~vec4<i32>(u_input.d.x, u_input.a, -1i, 1i), vec4<bool>(global3.d.b, false, global3.e.b, global3.d.b))));
    var var_0 = Struct_3(global3.a, vec3<bool>(!func_4(true, global3.c, 1i).e.c.x, !global3.d.b, false), Struct_2(func_4(false, func_4(true, Struct_2(vec2<f32>(806f, -881f)), -arg_0.x).a, ~arg_0.x ^ 38564i).c.a), Struct_1(-1000f, true, vec4<bool>(any(select(global3.d.c.yyx, global3.e.c.wxy, vec3<bool>(global3.d.b, true, global3.e.b))), !(global2[_wgslsmith_index_u32(1u, 3u)] == global2[_wgslsmith_index_u32(u_input.b.x, 3u)]), all(vec2<bool>(false, true)), global3.d.c.x)), global3.e);
    let var_1 = _wgslsmith_div_f32(var_0.e.a, 1424f);
    global0 = array<Struct_3, 23>();
    global0 = array<Struct_3, 23>();
    return abs(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 3>();
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(11656u), 0u, _wgslsmith_sub_u32(u_input.b.x, 31059u)) ^ ((u_input.b ^ u_input.b) ^ vec3<u32>(0u, u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(~u_input.b, _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), vec3<u32>(4294967295u, 12477u, u_input.b.x)))), global1.x), 3u)];
    let var_1 = global3.d;
    global1 = func_1(u_input.c);
    let var_2 = func_4(any(var_1.c.yww), Struct_2(global3.c.a), 24173i).d;
    global0 = array<Struct_3, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(u_input.b.x, 3u)]);
}

