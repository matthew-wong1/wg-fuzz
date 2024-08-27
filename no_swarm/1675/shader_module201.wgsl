struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<bool, 3> = array<bool, 3>(true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    global0 = 84854u;
    var var_0 = arg_0.b.xy;
    var_0 = select(!(!select(select(arg_0.b.wy, arg_0.b.xx, arg_0.b.x), !arg_0.b.zw, true | global1[_wgslsmith_index_u32(0u, 3u)])), !arg_0.b.wz, !arg_0.b.yy);
    var var_1 = Struct_1(-456f, !(!vec4<bool>(all(arg_0.b), !var_0.x, true, true)));
    var_1 = Struct_1(var_1.a, select(select(vec4<bool>(var_1.b.x, all(arg_0.b.ww), var_1.b.x, 350f > arg_1.x), !(!vec4<bool>(true, var_1.b.x, true, false)), arg_0.b.x), var_1.b, select(!var_1.b, arg_0.b, !select(arg_0.b, arg_0.b, var_1.b))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global1 = array<bool, 3>();
    let var_0 = func_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1496f, -1302f) - vec3<f32>(arg_0.a, arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 609f, -216f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a, 449f, -162f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -727f, arg_0.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 666f, arg_0.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, 814f) - vec3<f32>(1115f, -1000f, arg_0.a))), vec3<bool>(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.x, 3u)])), !global1[_wgslsmith_index_u32(19049u, 3u)], any(arg_0.b.yw))))));
    let var_1 = arg_0;
    var var_2 = all(!vec3<bool>(true, select(any(vec4<bool>(false, false, true, var_1.b.x)), func_3(Struct_1(var_1.a, arg_0.b), vec3<f32>(var_1.a, 580f, arg_0.a)), var_1.b.x), false));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_add_i32(27886i, u_input.a), abs(-(~0i)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global0 = 15667u;
    var var_0 = arg_0.a;
    var var_1 = select(max(min(firstTrailingBit(vec4<i32>(u_input.d.x, u_input.b, -2147483647i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -3350i, 0i, -6482i), vec4<i32>(u_input.b, u_input.e, u_input.b, -34780i))) & vec4<i32>(8887i, abs(14909i), 0i, 1306i), (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.b, 1269i, u_input.b), vec4<i32>(69643i, -13222i, u_input.d.x, u_input.d.x)) >> (arg_2 % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.b, u_input.e), vec3<i32>(u_input.e, u_input.d.x, 0i)), countOneBits(u_input.b), u_input.d.x, ~0i)), ~vec4<i32>(u_input.b, u_input.e, u_input.d.x, ~(-12727i << (u_input.c.x % 32u))), select(true, !all(func_2(Struct_1(arg_0.a, vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 3u)], true)), vec4<u32>(32216u, arg_2.x, 4294967295u, arg_2.x)).b.zzy), func_2(func_2(Struct_1(1918f, vec4<bool>(arg_0.b.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], true)), arg_2), ~vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 4294967295u)).b.x | true));
    let var_2 = arg_0;
    var var_3 = arg_0.a;
    return !arg_0.b.x;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2273f, _wgslsmith_f_op_f32(1599f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))) + arg_0);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1045f * -790f))), _wgslsmith_div_f32(-245f, _wgslsmith_f_op_f32(-645f + arg_0)))) + _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0))), vec4<bool>(true, !(true | all(vec2<bool>(false, false))), func_4(func_2(Struct_1(427f, vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.c.x, 3u)])), vec4<u32>(u_input.c.x, u_input.c.x, 7255u, u_input.c.x)), func_2(func_2(Struct_1(679f, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], true, global1[_wgslsmith_index_u32(4294967295u, 3u)])), vec4<u32>(1u, 23675u, u_input.c.x, u_input.c.x)), vec4<u32>(4294967295u, 40137u, 1u, 4294967295u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 44836u), vec4<u32>(u_input.c.x, u_input.c.x, 20301u, 68449u)))), (!global1[_wgslsmith_index_u32(u_input.c.x, 3u)] && global1[_wgslsmith_index_u32(22853u, 3u)]) || global1[_wgslsmith_index_u32(1u, 3u)]));
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.c.x, ~16683u), ~u_input.c.x);
    let var_2 = var_1;
    let var_3 = ~u_input.c.x;
    return !any(vec3<bool>(true, true, func_4(func_2(Struct_1(786f, var_1.b), vec4<u32>(51593u, 4294967295u, 1u, u_input.c.x)), var_2, select(vec4<u32>(u_input.c.x, 26809u, u_input.c.x, 4294967295u), vec4<u32>(var_3, var_3, 62083u, u_input.c.x), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!global1[_wgslsmith_index_u32(2141u, 3u)], global1[_wgslsmith_index_u32(~(~1u), 3u)] & func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(599f, -866f))), true == func_4(Struct_1(1861f, select(vec4<bool>(false, global1[_wgslsmith_index_u32(28264u, 3u)], global1[_wgslsmith_index_u32(90718u, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false, global1[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], false, global1[_wgslsmith_index_u32(28710u, 3u)], true))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -763f), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)], true, true)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(48401u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(2992u, 70937u, u_input.c.x, 80962u)), ~vec4<u32>(25438u, 31580u, 46615u, u_input.c.x), ~vec4<u32>(55670u, u_input.c.x, u_input.c.x, 30014u))), global1[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_sub_u32(u_input.c.x, 50998u)), 3u)]);
    global1 = array<bool, 3>();
    global0 = u_input.c.x;
    global0 = 37336u;
    var var_1 = u_input.a;
    global1 = array<bool, 3>();
    var_1 = u_input.b;
    global0 = 41245u;
    var var_2 = -338f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-191f, _wgslsmith_div_f32(_wgslsmith_div_f32(367f, _wgslsmith_f_op_f32(trunc(-507f))), _wgslsmith_f_op_f32(f32(-1f) * -1024f))), 1f, 1u, u_input.c.x ^ 17052u);
}

