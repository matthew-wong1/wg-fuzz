struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(18096u, false, Struct_2(Struct_1(16267i, true), 233f, Struct_1(0i, true))), Struct_3(4294967295u, true, Struct_2(Struct_1(2147483647i, true), -1533f, Struct_1(0i, true))), Struct_3(4294967295u, true, Struct_2(Struct_1(-37881i, true), -688f, Struct_1(-1i, false))));

var<private> global2: vec4<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = 42645u;
    let var_2 = Struct_1(global2.x, false);
    global0 = Struct_4(u_input.a.xz, Struct_1(0i, var_2.b & var_2.b), Struct_1(-(arg_0.a ^ global2.x), true));
    let var_3 = arg_1;
    return global0.b;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<i32>) -> f32 {
    global1 = array<Struct_3, 3>();
    global2 = countOneBits(-vec4<i32>(2147483647i, arg_1.x, 13923i, ~arg_3.x) | min(max(min(vec4<i32>(arg_0.c.a.a, arg_3.x, -808i, -23998i), vec4<i32>(0i, 74004i, 2352i, -8413i)), arg_1), _wgslsmith_mult_vec4_i32(arg_3, vec4<i32>(-2147483647i, global2.x, arg_3.x, global0.c.a)) & -vec4<i32>(36723i, -49163i, arg_3.x, 2147483647i)));
    return -1784f;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global1 = array<Struct_3, 3>();
    var var_0 = Struct_3(83690u, global0.c.b, Struct_2(func_2(Struct_1(2147483647i, select(global0.c.b, false, false)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1282u, 1u), 3u)]), -1831f, global0.c));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(465f * _wgslsmith_f_op_f32(var_0.c.b * _wgslsmith_f_op_f32(func_3(Struct_3(var_0.a, true, Struct_2(var_0.c.c, var_0.c.b, var_0.c.a)), firstTrailingBit(vec4<i32>(0i, u_input.a.x, 33666i, var_0.c.a.a)), _wgslsmith_add_u32(0u, var_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_0.c.c.a, 0i, 0i), vec4<i32>(2118i, -41721i, global0.c.a, global2.x)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(456f, -286f)) * _wgslsmith_f_op_f32(func_3(Struct_3(73991u, arg_0.x, Struct_2(Struct_1(17270i, arg_0.x), var_0.c.b, Struct_1(global0.b.a, global0.b.b))), vec4<i32>(-2147483647i, 68727i, global0.a.x, -7102i), var_0.a, vec4<i32>(1i, var_0.c.c.a, var_0.c.c.a, global2.x)))), _wgslsmith_f_op_f32(func_3(Struct_3(0u, arg_0.x, Struct_2(var_0.c.c, 963f, var_0.c.c)), vec4<i32>(u_input.a.x, 1i, 1i, 2147483647i) | vec4<i32>(18034i, u_input.a.x, global2.x, u_input.a.x), countOneBits(var_0.a), vec4<i32>(global2.x, -54344i, u_input.a.x, global2.x) >> (vec4<u32>(13106u, var_0.a, 0u, var_0.a) % vec4<u32>(32u)))))))), _wgslsmith_f_op_f32(trunc(var_0.c.b)));
    let var_2 = Struct_4(u_input.a.xy, global0.c, Struct_1(1i, any(!vec2<bool>(var_0.b, true)) || !all(vec2<bool>(arg_0.x, false))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, global0.b.b)))), _wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(845f + 2238f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1250f)), _wgslsmith_f_op_f32(floor(-329f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1723f, 933f)), _wgslsmith_f_op_f32(-448f - 1114f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1401f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-421f, -454f), vec2<f32>(-245f, -200f))))), vec2<f32>(_wgslsmith_div_f32(366f, 333f), _wgslsmith_f_op_f32(round(-2663f))))))));
    global0 = Struct_4(-select(global0.a, u_input.a.xx, !vec2<bool>(global0.c.b, false)), global0.c, func_2(Struct_1(-(~(-44836i)), all(!vec4<bool>(global0.b.b, global0.b.b, false, global0.c.b))), Struct_3(0u, !func_2(global0.b, global1[_wgslsmith_index_u32(0u, 3u)]).b, Struct_2(Struct_1(-2147483647i, true), _wgslsmith_f_op_f32(select(var_0.x, -1187f, global0.c.b)), Struct_1(u_input.a.x, true)))));
    let var_1 = Struct_4(~_wgslsmith_mult_vec2_i32(global0.a, firstTrailingBit(select(global0.a, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(global0.b.b, global0.c.b)))), global0.c, func_2(Struct_1(-global2.x, global0.c.b), global1[_wgslsmith_index_u32(~(~(~38956u)), 3u)]));
    var var_2 = Struct_2(func_2(Struct_1(-2147483647i, true), global1[_wgslsmith_index_u32(~1u, 3u)]), var_0.x, Struct_1(~abs(global0.a.x | global2.x), true));
    global2 = ~(-select(vec4<i32>(var_2.a.a, ~0i, func_2(var_2.c, global1[_wgslsmith_index_u32(0u, 3u)]).a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.a.x, u_input.a.x), vec3<i32>(var_1.b.a, global0.a.x, -4753i))), vec4<i32>(~u_input.a.x, var_2.a.a, var_2.c.a, 2147483647i), false));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-820f, var_2.b, var_2.b)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global0.b.a, _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_1.c.a, 29560i, -1i, 14370i) >> (vec4<u32>(4294967295u, 54556u, 4342u, 4294967295u) % vec4<u32>(32u))), reverseBits(vec4<i32>(u_input.a.x, var_2.c.a, global2.x, global0.a.x)) & vec4<i32>(34738i, global2.x, global0.b.a, u_input.a.x))), vec3<i32>(-(~firstLeadingBit(-1i)), global0.b.a, u_input.a.x), -1000f, 0u, -vec4<i32>(-1i, -_wgslsmith_div_i32(20496i, 2147483647i), 7752i, -2147483647i));
}

