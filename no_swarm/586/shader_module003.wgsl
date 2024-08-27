struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<f32>(-1000f, -350f, 590f, 662f), 0u, vec3<f32>(1449f, 417f, -742f));

var<private> global2: array<i32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    var var_0 = arg_2;
    let var_1 = global1.c;
    global1 = global0[_wgslsmith_index_u32(0u, 6u)];
    global0 = array<Struct_1, 6>();
    let var_2 = arg_0;
    return global1.b;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = global1.a.x;
    let var_1 = -1000f < arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.wy, vec2<i32>(u_input.a.x, 2147483647i)), u_input.a.yw), _wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(-18780i, global2[_wgslsmith_index_u32(global1.c, 24u)])) & min(u_input.a.xx, u_input.a.zx)), _wgslsmith_f_op_f32(arg_2 - -404f), global1.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b * _wgslsmith_f_op_vec4_f32(global1.b * global1.b))));
    let var_3 = Struct_2(arg_1 ^ arg_1, min(u_input.a.xyz, vec3<i32>(_wgslsmith_sub_i32(arg_1 | 1i, ~u_input.a.x), countOneBits(0i ^ u_input.a.x), 9856i)), arg_1);
    global2 = array<i32, 24>();
    return !(!select(global1.a, select(vec2<bool>(var_1, var_1), !vec2<bool>(true, global1.a.x), false), global1.a));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 6>();
    global2 = array<i32, 24>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 6u)];
    global2 = array<i32, 24>();
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 6u)];
    return _wgslsmith_add_u32(0u, countOneBits(u_input.b));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = global1.c;
    global0 = array<Struct_1, 6>();
    global2 = array<i32, 24>();
    var var_1 = Struct_1(vec2<bool>(all(select(vec3<bool>(true, arg_0.a.x, arg_1), vec3<bool>(true, arg_1, arg_0.a.x), vec3<bool>(arg_1, arg_1, false))) && (arg_0.a.x | arg_0.a.x), (_wgslsmith_div_u32(global1.c, global1.c) >> (_wgslsmith_mult_u32(85481u, global1.c) % 32u)) >= 6736u), arg_0.b, u_input.c.x, _wgslsmith_f_op_vec3_f32(-arg_0.d));
    let var_2 = abs(~(~abs(vec3<u32>(1u, var_1.c, 0u) >> (vec3<u32>(0u, var_1.c, u_input.b) % vec3<u32>(32u)))));
    return max(select(countOneBits(~abs(-2147483647i)), 3113i, true), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1i, -u_input.a.zzz, -func_4(Struct_1(func_1(global1.b.x, 36266i, global1.d.x), global1.b, 17037u, _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, -1084f, -475f), global1.d)), _wgslsmith_div_i32(1i, -13228i) > global2[_wgslsmith_index_u32(func_3(), 24u)]));
    global1 = Struct_1(select(vec2<bool>(_wgslsmith_div_f32(global1.d.x, -1073f) < _wgslsmith_f_op_f32(trunc(global1.b.x)), !global1.a.x | true), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.x + global1.d.x))), -2147483647i, global1.d.x), vec2<bool>(true, false)), global1.b, ~(~global1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-699f, 1449f, global1.d.x), global1.b.zxy)) * _wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(global2[_wgslsmith_index_u32(0u, 24u)], -2147483647i), 1000f, ~36177u)).yzw) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.b.x, global1.d.x))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1198f)), global1.b.x, -299f))));
    var var_1 = global1.b.x;
    global1 = global0[_wgslsmith_index_u32(~(~u_input.b) & func_3(), 6u)];
    let var_2 = select(select(select(vec3<bool>(global1.d.x == global1.d.x, global1.a.x, all(vec3<bool>(true, global1.a.x, global1.a.x))), vec3<bool>(u_input.c.x <= 30267u, false, false), select(vec3<bool>(global1.a.x, true, true), vec3<bool>(global1.a.x, true, false), global1.a.x)), !(!vec3<bool>(true, global1.a.x, global1.a.x)), vec3<bool>(global1.a.x, any(select(vec4<bool>(true, global1.a.x, true, false), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x))), true)), !vec3<bool>(any(select(vec3<bool>(true, global1.a.x, false), vec3<bool>(true, global1.a.x, true), vec3<bool>(true, global1.a.x, false))), all(!vec4<bool>(global1.a.x, true, true, true)), any(vec4<bool>(false, global1.a.x, global1.a.x, false))), global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(-global1.b.x), select(~(~(u_input.c.x >> (global1.c % 32u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(func_3(), global1.c), select(~u_input.c.x, 9497u, !global1.a.x)), global1.a.x));
}

