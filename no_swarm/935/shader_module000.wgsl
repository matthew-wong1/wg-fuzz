struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-27613i, 1i, 0i, 28429i, -13598i, i32(-2147483648), 102326i, 78639i, 0i, 1i, 1i, 0i, 14067i, i32(-2147483648), 0i);

var<private> global1: array<bool, 16>;

var<private> global2: vec2<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = all(vec3<bool>(any(!select(vec3<bool>(false, arg_1.a.a, arg_2.c.a.a), vec3<bool>(arg_2.c.a.a, true, global1[_wgslsmith_index_u32(4294967295u, 16u)]), arg_2.c.a.a)), true, global1[_wgslsmith_index_u32(arg_2.a.x, 16u)]));
    return select(vec2<u32>(arg_0.a.x, ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 49972u, u_input.a), arg_0.a.xxw), arg_0.a.x, true)), ~(arg_2.a.wz >> (vec2<u32>(arg_0.a.x ^ 4294967295u, _wgslsmith_add_u32(64946u, arg_0.a.x)) % vec2<u32>(32u))), true);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(vec2<bool>(true, arg_0), !(!vec2<bool>(true, arg_0)), !(true | !(arg_0 | true)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, ~45342u << ((_wgslsmith_mod_u32(u_input.a, arg_1) & 0u) % 32u)), func_3(Struct_4(~vec4<u32>(arg_1, 14766u, arg_1, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -851f, 248f, 272f) + vec4<f32>(-858f, global2.x, -1329f, global2.x))), Struct_2(Struct_1(arg_0, vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(10773u, 15u)])))), Struct_2(Struct_1(false, -vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(2206u, 15u)], 1i))), Struct_4((vec4<u32>(u_input.a, 53844u, u_input.a, u_input.a) >> (vec4<u32>(1u, arg_1, u_input.a, 60933u) % vec4<u32>(32u))) & ~vec4<u32>(0u, u_input.a, 0u, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, -1680f, global2.x), vec4<f32>(-1339f, 1000f, global2.x, global2.x), arg_0))), Struct_2(Struct_1(arg_2.c, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], -1i, global0[_wgslsmith_index_u32(arg_1, 15u)]))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -1819f)), global2.x)) + _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(step(583f, _wgslsmith_f_op_f32(abs(284f))))))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1247f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -275f)), _wgslsmith_f_op_f32(min(253f, _wgslsmith_f_op_f32(round(global2.x)))), select(true, global1[_wgslsmith_index_u32(4294967295u, 16u)], select(true, true, var_0.c))))), global2.x);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2114f - -1374f)));
    return Struct_1(!(!var_1.c), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-3491i, global0[_wgslsmith_index_u32(56306u, 15u)], global0[_wgslsmith_index_u32(3484u, 15u)] & global0[_wgslsmith_index_u32(var_2.x, 15u)]), -(vec3<i32>(2147483647i, -46584i, global0[_wgslsmith_index_u32(u_input.a, 15u)]) ^ vec3<i32>(0i, global0[_wgslsmith_index_u32(45068u, 15u)], 8786i)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(437f, 513f);
    let var_1 = func_2(global1[_wgslsmith_index_u32(52603u, 16u)], u_input.a, Struct_5(select(vec2<bool>(true, true), vec2<bool>(false, any(vec3<bool>(global1[_wgslsmith_index_u32(23256u, 16u)], false, global1[_wgslsmith_index_u32(u_input.a, 16u)]))), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], false), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(23466u, 16u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(29637u, 16u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 16u)]), true))), vec2<bool>(!global1[_wgslsmith_index_u32(29945u, 16u)] || global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 16u)], all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(135203u, 16u)], true, global1[_wgslsmith_index_u32(1u, 16u)]))), true && (4294967295u > abs(u_input.a))));
    let var_2 = var_1.a;
    var var_3 = Struct_4(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a & u_input.a, firstTrailingBit(u_input.a), 12066u), min(vec4<u32>(0u, u_input.a, 1u, 47735u) & vec4<u32>(4315u, 4294967295u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), ~select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(1u, 4294967295u, 34688u, u_input.a), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(step(global2.x, global2.x)), _wgslsmith_f_op_f32(min(global2.x, global2.x))) + vec4<f32>(global2.x, -387f, _wgslsmith_f_op_f32(step(global2.x, -1982f)), -845f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 938f, global2.x, global2.x)))), Struct_2(var_1));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.b.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(111f, 1396f), var_3.b.wy))), vec2<bool>(var_1.a, select(var_3.c.a.a, true, var_1.a))))));
    return StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(76148u, 0u, var_3.a.x, var_3.a.x)) << (vec4<u32>(var_3.a.x, 1u, 47035u, u_input.a) % vec4<u32>(32u)), ~(~vec4<u32>(var_3.a.x, u_input.a, var_3.a.x, var_3.a.x))), ~countOneBits(var_3.a.x), 4294967295u, u_input.a), max(var_3.a.xz, max(vec2<u32>(var_3.a.x, u_input.a), vec2<u32>(~var_3.a.x, min(0u, var_3.a.x)))), vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-28047i, global0[_wgslsmith_index_u32(16036u, 15u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 15u)], var_3.c.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

