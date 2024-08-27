struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-118f, -1526f, -423f);

var<private> global1: array<bool, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1945f), _wgslsmith_f_op_f32(f32(-1f) * -352f))), global0.x) - _wgslsmith_f_op_vec2_f32(-global0.xx)));
    return global0.x;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 143f, global0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1326f, 252f)) * vec3<f32>(arg_0, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 691f)) * vec3<f32>(803f, arg_0, -1033f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1707f, _wgslsmith_f_op_f32(arg_0 + 1000f), _wgslsmith_f_op_f32(step(arg_0, -1563f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, 247f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 552f))), !global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))));
    let var_1 = var_0.xz;
    let var_2 = Struct_2(Struct_1(_wgslsmith_mult_i32(u_input.b.x, ~(-u_input.b.x)), -(~(-1i)) & ~(u_input.b.x | -1i), -(~u_input.b.x)), Struct_1(28575i, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b.x, 1i, -55084i), ~(~vec3<i32>(-2147483647i, 26735i, 0i))), u_input.b.x), select(!vec2<bool>(true, u_input.b.x >= -16239i), select(vec2<bool>(var_1.x <= 299f, true), vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 21u)]), false), select(select(vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true), true), !(!vec2<bool>(global1[_wgslsmith_index_u32(5984u, 21u)], true)), true)));
    var var_3 = any(select(vec4<bool>(false, !global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(~u_input.a.x, 21u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u >> (u_input.a.x % 32u), 21u)], true, -2147483647i > u_input.b.x), select(any(vec4<bool>(global1[_wgslsmith_index_u32(141958u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), var_2.c.x, var_1.x != -1000f))) & var_2.c.x;
    var_3 = true;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1510f, global0.x), var_1.x));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -340f)))), -1000f));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~58301u, abs(reverseBits(~(u_input.a.x ^ u_input.a.x)))), 21u)];
    var var_1 = Struct_1(u_input.b.x, -9795i, u_input.b.x);
    var var_2 = global0.x;
    var var_3 = vec3<f32>(-581f, global0.x, global0.x);
    return Struct_1(1i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, (27874i ^ var_1.c) | 1i)), firstLeadingBit(~_wgslsmith_add_i32(~(-1i), 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = true;
    let var_2 = select(reverseBits(~20501u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x & _wgslsmith_sub_u32(76866u, u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(0u, u_input.a.x, 9381u, u_input.a.x)), u_input.a.x)), vec3<u32>(40826u, u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 18390u, u_input.a.x, 2276u)))), !global1[_wgslsmith_index_u32(4294967295u, 21u)]);
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, min(var_2, _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(var_2, 43734u)))), 21u)] & !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, u_input.a.x, u_input.a.x), ~u_input.a), 21u)];
    let var_3 = !(!vec4<bool>(any(!vec2<bool>(global1[_wgslsmith_index_u32(133481u, 21u)], false)), all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 21u)], false, false, global1[_wgslsmith_index_u32(59734u, 21u)])), true, any(select(vec3<bool>(global1[_wgslsmith_index_u32(var_2, 21u)], global1[_wgslsmith_index_u32(var_2, 21u)], global1[_wgslsmith_index_u32(3339u, 21u)]), vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global1[_wgslsmith_index_u32(1u, 21u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(floor(-1000f))) - 700f), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)) + _wgslsmith_f_op_f32(global0.x - -522f))));
}

