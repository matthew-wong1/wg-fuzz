struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, -1i), Struct_1(false, 0i), Struct_1(true, 0i), Struct_1(true, -22616i), Struct_1(true, 2147483647i), Struct_1(true, -38107i), Struct_1(false, 2147483647i), Struct_1(false, i32(-2147483648)));

var<private> global1: bool;

var<private> global2: f32 = -230f;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32) -> f32 {
    global2 = 1028f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f + -1114f)) - -1000f) + _wgslsmith_f_op_f32(1289f - _wgslsmith_f_op_f32(f32(-1f) * -594f)))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(global3.d, false, global3.c.a), vec3<bool>(global3.c.a, global3.d, global3.c.a), false), ~vec3<u32>(u_input.b, global3.a.x, global3.e), 1i)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0))), 666f, true && global3.b.a)));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) + 589f)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2039f * arg_0) - -1176f);
    let var_0 = Struct_2(~firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 0u), global3.a)), global3.c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global3.a, vec4<u32>(~18794u, _wgslsmith_clamp_u32(u_input.b, firstLeadingBit(111437u), 815u), 4294967295u, ~(~u_input.b))), 8u)], global3.d == global3.d, ~(~global3.a.x));
    global0 = array<Struct_1, 8>();
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_2(~(~vec4<u32>(max(global3.a.x, 41311u), countOneBits(0u), _wgslsmith_add_u32(58428u, global3.a.x), ~62846u)), arg_2, global3.b, true, 1u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(663f, 306f))) * _wgslsmith_div_f32(-416f, arg_0)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) * _wgslsmith_f_op_f32(f32(-1f) * -321f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))));
    global2 = arg_0;
    let var_1 = Struct_2(~(~vec4<u32>(10722u | var_0.a.x, ~37593u, _wgslsmith_clamp_u32(49124u, var_0.a.x, 4294967295u), 31803u)), Struct_1(true, arg_2.b), Struct_1(false, 1i), any(vec4<bool>(var_0.d, all(select(vec2<bool>(true, true), vec2<bool>(global3.b.a, global3.d), true)), !any(vec4<bool>(var_0.d, arg_2.a, arg_2.a, var_0.d)), any(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b.a, false, arg_1.a), vec3<bool>(global3.d, true, var_0.b.a))))), firstLeadingBit(1u));
    return vec3<bool>(127f >= _wgslsmith_div_f32(600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), arg_2.a, all(vec3<bool>(var_1.d, var_0.b.a, true)));
}

fn func_1() -> bool {
    var var_0 = firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(0u, u_input.b), _wgslsmith_add_u32(global3.e, firstLeadingBit(u_input.b)), global3.e));
    var_0 = vec3<u32>(_wgslsmith_div_u32(34766u, ~(~max(1u, 1u))), 4294967295u, min(_wgslsmith_add_u32(u_input.b, 41279u), u_input.b));
    let var_1 = !select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f * 1000f)), func_2(_wgslsmith_div_f32(-209f, -1161f)), global0[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_f_op_f32(f32(-1f) * -773f)), !vec3<bool>(false, global3.d, true), global3.b.a);
    let var_2 = global3.e;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-557f, -1270f, -750f))), vec3<f32>(_wgslsmith_f_op_f32(-1608f * 694f), _wgslsmith_f_op_f32(step(709f, 1073f)), _wgslsmith_f_op_f32(-918f - 1941f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -143f, 730f), vec3<f32>(-852f, -433f, -1500f), vec3<bool>(var_1.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(706f, 1502f, -175f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(173f, 1460f, 883f))) * vec3<f32>(-925f, _wgslsmith_f_op_f32(-450f + 1354f), -181f)) - vec3<f32>(-198f, 400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_1, global3.a.wxx, 2147483647i)) + 1000f))));
    return any(select(var_1, !vec3<bool>(all(vec2<bool>(true, global3.b.a)), var_1.x, var_3.x < -1146f), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(_wgslsmith_clamp_i32(global3.c.b, ~u_input.a.x, _wgslsmith_mult_i32(-1i, -2147483647i)) >= 32140i);
    global0 = array<Struct_1, 8>();
    global1 = func_1();
    var var_0 = func_2(_wgslsmith_f_op_f32(-1467f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1216f, -627f)))));
    var var_1 = Struct_1(global3.d, global3.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(521f, 1000f))))))));
}

