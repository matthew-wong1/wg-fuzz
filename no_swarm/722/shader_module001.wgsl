struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5>;

var<private> global1: array<u32, 22> = array<u32, 22>(0u, 66365u, 6862u, 6682u, 1u, 1u, 1u, 2040u, 0u, 0u, 4294967295u, 66290u, 0u, 64108u, 1u, 41303u, 0u, 8052u, 0u, 70343u, 0u, 41712u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: u32) -> i32 {
    return firstTrailingBit(-42366i);
}

fn func_2(arg_0: bool) -> i32 {
    global1 = array<u32, 22>();
    var var_0 = ~u_input.c.yx;
    global0 = array<vec2<f32>, 5>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(~10748u, 5u)], _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34194u, 22u)], 22u)], 5u)], global0[_wgslsmith_index_u32(64703u, 5u)]))), _wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48985u, 22u)], 22u)], 22u)]), 5u)]))), u_input.c, global1[_wgslsmith_index_u32(1u, 22u)] | 34153u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1329f, -739f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(124f, 834f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2039f, 578f), vec2<f32>(-2367f, 1131f), vec2<bool>(false, false)))), true)))), -220f);
    global0 = array<vec2<f32>, 5>();
    return var_0.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<f32>, 5>();
    var var_0 = ~(~min(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 14637u, 40453u, arg_1.c.x), vec4<u32>(global1[_wgslsmith_index_u32(arg_1.c.x, 22u)], arg_1.b.c, arg_1.a, 0u)), arg_1.a, reverseBits(arg_1.a)), vec3<u32>(arg_1.a, global1[_wgslsmith_index_u32(~1u, 22u)], 4294967295u << (global1[_wgslsmith_index_u32(1u, 22u)] % 32u))));
    global1 = array<u32, 22>();
    var var_1 = select(!select(!vec4<bool>(false, arg_1.d, arg_1.d, true), !vec4<bool>(arg_1.d, false, arg_1.d, arg_1.d), false), !vec4<bool>(false, !(!arg_1.d), 1u == _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(7347u, 22u)], 0u), vec3<u32>(4294967295u, 39569u, 0u)), true & arg_1.d), !(arg_1.a >= ~(~var_0.x)));
    var var_2 = arg_1.b;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 5>();
    var var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1335f - 1889f) + -1202f)), -859f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-152f, 1348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) + -1000f), true)), _wgslsmith_f_op_f32(f32(-1f) * -610f)), u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1429f), 18089u);
    let var_1 = global0[_wgslsmith_index_u32(select(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(98438u, 22u)], 18940u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48379u, 22u)], 22u)], 22u)]), ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 44268u, global1[_wgslsmith_index_u32(51701u, 22u)])), 22u)], ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22659u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)])), min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37438u, 22u)], 22u)], 4294967295u), vec2<u32>(26487u, 4294967295u)))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3829u, 22u)], 22u)], 22u)], false), 5u)];
    global0 = array<vec2<f32>, 5>();
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 22u)], 22838u), reverseBits(1u) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(29962u, global1[_wgslsmith_index_u32(0u, 22u)]), 22u)], 22u)], 22u)] % 32u)), 5u)], select(-vec4<i32>(0i, 0i >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)] % 32u), u_input.a.x, 0i), vec4<i32>(func_2(true), func_3(vec4<f32>(var_1.x, -148f, var_1.x, 1398f), Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], Struct_1(global0[_wgslsmith_index_u32(21845u, 5u)], u_input.c, 4294967295u, vec2<f32>(-1433f, -543f), 1410f), vec2<u32>(21676u, 0u), false, Struct_1(vec2<f32>(var_1.x, 1000f), u_input.c, 40363u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22399u, 22u)], 5u)], 237f))), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), u_input.a.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), !any(vec4<bool>(true, false, false, true)))), 6269u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(921f, 1118f, true)), var_1.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x))))) - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(57992u), 22u)] & 1u, 5u)]), var_1.x);
    global0 = array<vec2<f32>, 5>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1180f, -583f, var_1.x, var_1.x))))))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~24191u, 5u)]))), reverseBits(var_2.b), ~(~31934u), _wgslsmith_f_op_vec2_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(-1686f + -2347f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(32953i, reverseBits(countOneBits(_wgslsmith_div_i32(-49451i, -24891i)))), var_2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 586f)) + _wgslsmith_f_op_f32(329f * var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, -1000f, 212f) - _wgslsmith_div_vec3_f32(var_3.wwx, var_3.xyz))))), vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(sign(var_1.x))));
}

