struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: Struct_4;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(12375i, Struct_1(true, vec2<u32>(0u, 5179u))), Struct_3(0i, Struct_1(false, vec2<u32>(0u, 30486u))), Struct_3(-19826i, Struct_1(false, vec2<u32>(1u, 77951u))), Struct_3(i32(-2147483648), Struct_1(false, vec2<u32>(19382u, 15962u))), Struct_3(-60382i, Struct_1(true, vec2<u32>(817u, 0u))), Struct_3(21586i, Struct_1(true, vec2<u32>(20574u, 722u))), Struct_3(29555i, Struct_1(false, vec2<u32>(65452u, 72412u))), Struct_3(-32201i, Struct_1(false, vec2<u32>(27564u, 34289u))), Struct_3(42675i, Struct_1(false, vec2<u32>(101u, 42655u))), Struct_3(-1i, Struct_1(true, vec2<u32>(5080u, 0u))), Struct_3(41619i, Struct_1(true, vec2<u32>(4294967295u, 4294967295u))), Struct_3(1i, Struct_1(true, vec2<u32>(1u, 65505u))), Struct_3(0i, Struct_1(false, vec2<u32>(1u, 0u))), Struct_3(-1i, Struct_1(false, vec2<u32>(12686u, 4294967295u))), Struct_3(9734i, Struct_1(true, vec2<u32>(0u, 82035u))), Struct_3(1341i, Struct_1(true, vec2<u32>(13601u, 35056u))), Struct_3(6588i, Struct_1(false, vec2<u32>(12758u, 4294967295u))), Struct_3(i32(-2147483648), Struct_1(true, vec2<u32>(4294967295u, 4294967295u))), Struct_3(19135i, Struct_1(true, vec2<u32>(1u, 0u))), Struct_3(-13i, Struct_1(true, vec2<u32>(80132u, 14539u))), Struct_3(1i, Struct_1(false, vec2<u32>(4294967295u, 0u))), Struct_3(i32(-2147483648), Struct_1(false, vec2<u32>(15283u, 0u))), Struct_3(25247i, Struct_1(true, vec2<u32>(0u, 54073u))), Struct_3(1i, Struct_1(false, vec2<u32>(4294967295u, 3157u))), Struct_3(0i, Struct_1(false, vec2<u32>(38063u, 0u))), Struct_3(-49968i, Struct_1(false, vec2<u32>(2823u, 4294967295u))), Struct_3(31944i, Struct_1(true, vec2<u32>(17423u, 71309u))), Struct_3(-28167i, Struct_1(false, vec2<u32>(15539u, 0u))), Struct_3(1i, Struct_1(true, vec2<u32>(18006u, 0u))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.a, -397f)), _wgslsmith_div_f32(global1.a, global1.a))))), global2.x);
    var var_1 = vec4<u32>(u_input.a.x, u_input.a.x, ~u_input.a.x, u_input.a.x);
    var var_2 = Struct_4(global1.a, var_0.b);
    var var_3 = global1.b;
    var var_4 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(394f + var_0.a));
    return var_2.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + 207f);
    var var_1 = u_input.c.wz;
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2323f, -192f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -201f)), global1.a), Struct_1(global1.b, vec2<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 102348u)) << (u_input.a % vec2<u32>(32u))), _wgslsmith_mult_u32(36646u, 10921u));
    global0 = array<bool, 3>();
    return -234f;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(arg_2.a);
    var var_1 = !select(!(!vec4<bool>(global1.b, false, false, global2.x)), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(24366u, 3u)], global1.b, false), !vec4<bool>(false, arg_2.b.a, arg_2.b.a, arg_2.b.a), true), false && arg_2.b.a);
    let var_2 = vec4<bool>(true, true, false, true);
    let var_3 = var_2.zyx;
    let var_4 = min(abs(u_input.b), -(~(-u_input.b)));
    return arg_2.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = func_4(vec2<u32>(max(firstTrailingBit(u_input.a.x), firstTrailingBit(u_input.a.x)) << (45197u % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 0u, 0u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1525u)))), _wgslsmith_f_op_f32(func_3(select(global2.ywz, vec3<bool>(true, arg_2 || arg_1.a, arg_2 || global2.x), func_2(-20692i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(365f * _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-219f, global1.a, arg_2))))), ~select(~vec4<u32>(u_input.a.x, u_input.a.x, 3810u, arg_1.b.x), max(vec4<u32>(arg_1.b.x, 27630u, arg_1.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 135035u, arg_1.b.x, u_input.a.x)), vec4<bool>(global1.b, false, global2.x, global0[_wgslsmith_index_u32(4294967295u, 3u)])))), global3[_wgslsmith_index_u32(90082u, 29u)]);
    let var_1 = vec3<bool>(select(func_2(-u_input.c.x), false, select(select(global2.x, global2.x, global2.x), arg_1.a && true, any(vec2<bool>(global2.x, var_0.a)))), global2.x, false & !any(select(vec4<bool>(arg_1.a, false, arg_2, global1.b), vec4<bool>(true, false, true, arg_1.a), true)));
    let var_2 = reverseBits(18589u);
    var var_3 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(~10892i, abs(arg_0)) ^ _wgslsmith_add_vec2_i32(countOneBits(u_input.b.zz), ~u_input.c.yx), u_input.c.xy & -abs(u_input.c.yy));
    var var_4 = select(~arg_1.b, ~countOneBits(arg_1.b & var_0.b), global2.zx) & ~(~(~(~u_input.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -698f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(func_1(0i, Struct_1(global1.b, u_input.a), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 597f) * global1.a), 1427f), vec4<f32>(global1.a, _wgslsmith_div_f32(-454f, _wgslsmith_div_f32(1358f, global1.a)), _wgslsmith_div_f32(global1.a, 379f), global1.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(62412u, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 1u, 32302u, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(~u_input.a.x, 4294967295u & u_input.a.x, 0u, 76284u)), 4501u, 53192u, firstTrailingBit(0u | _wgslsmith_mult_u32(u_input.a.x, 68264u))), 22140u, ~(~vec3<u32>(~27449u, ~u_input.a.x, u_input.a.x)), -689f);
}

