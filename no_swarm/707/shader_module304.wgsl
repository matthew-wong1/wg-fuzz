struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(1091f, 301f, 347f, -189f);

var<private> global3: array<bool, 21> = array<bool, 21>(true, false, false, true, true, true, false, false, false, false, true, true, true, true, true, false, true, true, true, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_mult_u32(global0.b.b, 0u);
    global1 = global0.b;
    global0 = arg_0;
    global0 = arg_0;
    let var_1 = global0.c;
    return false;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    var var_0 = !func_3(Struct_2(_wgslsmith_f_op_f32(arg_1.a.x + global0.b.a.x), arg_1, global1.d > 12857u, 2052u)) != global3[_wgslsmith_index_u32(~global1.b | reverseBits(arg_0), 21u)];
    var var_1 = Struct_1(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1671f + global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1142f)))), abs(_wgslsmith_add_u32(~abs(4294967295u), global0.d)), u_input.c, 4294967295u, u_input.c);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a, global0.b.a) * vec4<f32>(global0.a, -1499f, arg_2.a.x, 470f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(193f, global2.x, 222f, arg_2.a.x)))))) * global0.b.a), _wgslsmith_mult_u32(abs(53940u) & abs(max(arg_0, 5314u)), ~4294967295u), u_input.c, arg_0 << (~54185u % 32u), arg_1.e);
    var_0 = global0.c;
    var var_3 = 14233u >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(~(~var_1.d), arg_0, abs(select(4294967295u, 13836u, false))), 0u) % 32u);
    return 6902u;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_2(-1054f, Struct_1(vec4<f32>(_wgslsmith_div_f32(-395f, 1041f), _wgslsmith_f_op_f32(trunc(-1079f)), _wgslsmith_f_op_f32(select(678f, arg_1.a, !global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -417f)), arg_1.d, u_input.c, global0.b.b, ~u_input.c), all(select(vec4<bool>(!global3[_wgslsmith_index_u32(arg_1.b.d, 21u)], false, true, arg_1.c), select(select(vec4<bool>(arg_0.c, global3[_wgslsmith_index_u32(25407u, 21u)], true, false), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1.d, 21u)], global3[_wgslsmith_index_u32(arg_0.b.b, 21u)], false), true), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(arg_0.b.b, 21u)], true), vec4<bool>(global3[_wgslsmith_index_u32(55109u, 21u)], true, true, global0.c), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.b.b, 21u)], false, false, true)), true == arg_1.c), !(4294967295u == u_input.a.x))), _wgslsmith_sub_u32(~1u, u_input.b));
    return _wgslsmith_f_op_f32(-global1.a.x);
}

fn func_1() -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - global1.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(588f - _wgslsmith_f_op_f32(trunc(global1.a.x))))), global1.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(global0.b.a - global0.b.a)));
    var var_0 = 4384i;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(750f, -1784f)) + _wgslsmith_f_op_f32(ceil(-236f))), Struct_1(vec4<f32>(global1.a.x, global1.a.x, 1000f, -1534f), _wgslsmith_dot_vec3_u32(vec3<u32>(27010u, 15928u, 4294967295u), vec3<u32>(0u, 57923u, u_input.a.x)), abs(12726i), abs(55698u), global1.c), true, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.d, u_input.b, global0.b.d), vec3<u32>(4294967295u, global0.d, global1.d)) | func_2(global0.d, Struct_1(vec4<f32>(294f, global2.x, global1.a.x, -989f), global0.d, u_input.c, u_input.a.x, u_input.c), global0.b, vec4<i32>(global0.b.e, -1i, global0.b.e, 2147483647i))), Struct_2(-1735f, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(854f, 402f, global1.a.x, 351f))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14694u, 16211u, 4294967295u), vec4<u32>(0u, 0u, 0u, u_input.b)), firstLeadingBit(2147483647i), global1.b, global0.b.e), global3[_wgslsmith_index_u32(4294967295u, 21u)] && !global0.c, 4294967295u ^ global0.d))));
    var_0 = u_input.c;
    global3 = array<bool, 21>();
    return global0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1() | 29271i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(global1.d, _wgslsmith_add_u32(abs(u_input.a.x), abs(4294967295u))), -2147483647i, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.b, 32362u), min(abs(abs(u_input.a)), ~vec2<u32>(42882u, u_input.b) >> (vec2<u32>(55639u, 4294967295u) % vec2<u32>(32u)))), global0.b.a, reverseBits(global0.b.b));
}

