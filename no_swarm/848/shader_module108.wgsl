struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<f32>(1975f, 728f, 879f, -860f), 111f, vec4<i32>(-2971i, -26821i, 1i, 1i), -198f);

var<private> global1: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 1u, 19661u, 79648u), vec4<u32>(0u, 0u, 44749u, 53607u), vec4<u32>(4294967295u, 1u, 13541u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 57499u, 20140u), vec4<u32>(39301u, 44616u, 16254u, 0u));

var<private> global2: Struct_1 = Struct_1(false, vec4<f32>(-2703f, -266f, 891f, -951f), -419f, vec4<i32>(26767i, -30311i, i32(-2147483648), -45333i), -372f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    var var_0 = Struct_1(true, global0.b, _wgslsmith_div_f32(global0.e, _wgslsmith_f_op_f32(ceil(-631f))), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -1000f) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.c, 621f), _wgslsmith_f_op_f32(arg_1 * arg_1))))));
    var_0 = Struct_1(any(vec2<bool>(false, true)), global2.b, _wgslsmith_f_op_f32(-arg_1), vec4<i32>(1i, global0.d.x, (1i & _wgslsmith_dot_vec4_i32(global0.d, var_0.d)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.d.x, 20106i), _wgslsmith_add_vec3_i32(vec3<i32>(-6269i, global0.d.x, 0i), var_0.d.zyw)), -2147483647i), -840f);
    var var_1 = 41790u;
    global1 = array<vec4<u32>, 5>();
    var_1 = 60257u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-global2.e))))) + _wgslsmith_f_op_f32(trunc(747f)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = 56125u;
    let var_1 = arg_2.b.x;
    var var_2 = 15303u < ~select(1u, ~u_input.c, -414f == _wgslsmith_f_op_f32(floor(global0.e)));
    var var_3 = arg_2;
    let var_4 = arg_1.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(!vec3<bool>(global0.a, arg_0, global2.a), 558f)))), -125f, true));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(global2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.b, vec4<f32>(global0.b.x, global0.b.x, -616f, global2.c))), _wgslsmith_f_op_vec4_f32(global0.b * global2.b)), _wgslsmith_div_f32(global0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, vec2<u32>(1u, u_input.c), Struct_1(false, vec4<f32>(-323f, -1102f, 553f, global0.b.x), global2.e, u_input.d, global0.b.x)))), _wgslsmith_f_op_f32(-global2.e))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(24786i, global0.d.x, 1i, ~global2.d.x)), abs(-vec4<i32>(-2147483647i, u_input.d.x, global2.d.x, 1i) >> (vec4<u32>(u_input.c, u_input.c, 43076u, 4294967295u) % vec4<u32>(32u)))), global2.e);
    global2 = Struct_1(all(!select(vec2<bool>(true, true), select(vec2<bool>(true, global0.a), vec2<bool>(global2.a, false), false), global2.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1825f), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-1010f - 1115f), _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.a, global2.a, true), global0.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, global0.c, var_0.c, var_0.e)))))), -607f, countOneBits(vec4<i32>(37539i, max(1i, global0.d.x), global0.d.x, 25141i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 1i, u_input.d.x ^ -24938i, i32(-1i) * -57579i), -(global0.d & vec4<i32>(-2147483647i, var_0.d.x, -19022i, var_0.d.x))), _wgslsmith_f_op_f32(var_0.b.x - var_0.c));
    var var_1 = min(var_0.d.x, ~_wgslsmith_mod_i32(27354i, _wgslsmith_div_i32(1541i, select(0i, 2147483647i, global2.a))));
    global2 = Struct_1(all(vec3<bool>(true, true & select(global0.a, true, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b * global0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e, global0.b.x, global2.b.x, -469f)) + vec4<f32>(1000f, global2.e, -827f, 985f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1109f * _wgslsmith_f_op_f32(-1000f - global2.b.x)), _wgslsmith_f_op_f32(-var_0.e), true))), -_wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(var_0.d, u_input.d)), -var_0.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.b.x, 850f)), _wgslsmith_f_op_f32(-global2.e)) * _wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, global2.a, var_0.a), vec3<bool>(false, false, global2.a), vec3<bool>(true, global0.a, false)), _wgslsmith_f_op_f32(abs(2530f))))))));
    let var_2 = ~_wgslsmith_dot_vec4_i32(global2.d, -global2.d);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = global2.b.wyx;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.c, 0u), global1[_wgslsmith_index_u32(0u, 5u)])), 15367u), 5587u);
    let var_2 = func_1();
    var_1 = countOneBits(0u);
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.e)) + global0.b.x), ~vec3<u32>(_wgslsmith_div_u32(0u, u_input.c) | 12560u, u_input.c, u_input.c), vec3<f32>(-280f, var_0.x, -2459f), 1u, vec3<i32>(~firstTrailingBit(global2.d.x), u_input.d.x, _wgslsmith_clamp_i32(var_2.d.x, global2.d.x, ~(70878i | global2.d.x))));
}

