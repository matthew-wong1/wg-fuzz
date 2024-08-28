struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec2<bool>) -> f32 {
    global1 = ~46275i;
    let var_0 = abs(vec4<u32>(firstTrailingBit(42228u), ~u_input.d.x, 1u, arg_0.c));
    global1 = u_input.e;
    global1 = u_input.c;
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.d.xww, ~vec3<u32>(u_input.d.x, 22706u, 5918u)), u_input.a.zxz), 0u);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 1677f)), 1732f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(414f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1289f + global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, 361f)) * _wgslsmith_f_op_f32(f32(-1f) * -1474f))))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = Struct_2(arg_0.a.a);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(vec3<bool>(arg_3.a.a.x, arg_0.b.a.x, false)), Struct_2(arg_3.d.a), 0u, Struct_2(vec3<bool>(false, arg_3.a.a.x, false))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(264f, arg_1), vec2<f32>(-449f, 211f), arg_3.a.a.x)), vec2<bool>(true, true))))));
}

fn func_3(arg_0: Struct_4) -> u32 {
    let var_0 = 7869i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x * global0.x), global0.x, true))))), -643f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-475f - arg_0.a.x), 1274f)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.a.x, var_1.x)), -553f, _wgslsmith_f_op_f32(f32(-1f) * -2087f), 860f), arg_0.a)) - arg_0.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f + var_1.x) - 1000f), -295f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1125f, global0.x), arg_0.a))))));
    let var_2 = Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_2(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), u_input.a.x << (~(u_input.d.x & 1u) % 32u), Struct_2(vec3<bool>(true, true, true)));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -404f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(313f)) * _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(sign(var_1.x))) + var_1.yy);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(Struct_3(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), u_input.b, Struct_2(vec3<bool>(false, false, true))), global0.x, -2147483647i, Struct_3(Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, true)), 4294967295u, Struct_2(vec3<bool>(false, true, false))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1458f, global0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(1083f, global0.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-463f, global0.x) + vec2<f32>(global0.x, 1435f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, global0.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1159f, 1000f)))))));
    let var_0 = Struct_2(!vec3<bool>(u_input.d.x < func_3(Struct_4(vec4<f32>(global0.x, 117f, global0.x, -391f), vec4<i32>(u_input.e, u_input.e, -1i, -1i), vec2<i32>(25543i, u_input.e))), !select(false, false, true), !any(vec2<bool>(false, true))));
    global1 = u_input.e;
    var var_1 = min(~u_input.a.wyz, vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), abs(~(u_input.a.x >> (33504u % 32u))), func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1322f, 553f, -108f, -673f)), vec4<i32>(u_input.c, 5849i, u_input.e, 4152i), -vec2<i32>(81430i, 0i)))));
    global1 = u_input.c;
    global1 = u_input.e;
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -711f) - vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1344f, 986f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-115f, 221f) + vec2<f32>(global0.x, global0.x)))))));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x))), _wgslsmith_f_op_f32(min(1006f, _wgslsmith_f_op_f32(func_2(Struct_3(var_0, var_0, var_1.x << (4294967295u % 32u), var_0), vec2<f32>(_wgslsmith_f_op_f32(-649f + 438f), _wgslsmith_div_f32(global0.x, global0.x)), var_0.a.yz))))));
    let var_3 = u_input.d.ywx >> (~u_input.a.wwx % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(11286u, 4294967295u | func_3(Struct_4(vec4<f32>(445f, 1114f, 171f, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.c, u_input.e), vec4<i32>(u_input.e, 2147483647i, 42027i, 16362i)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -27133i), vec2<i32>(u_input.c, u_input.e)))), vec3<i32>(-1i) * -(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, 29135i, 0i), vec3<i32>(u_input.c, u_input.e, u_input.c), vec3<i32>(-16463i, u_input.e, u_input.c)) ^ vec3<i32>(u_input.c, u_input.e, u_input.e)), ~(~u_input.a & firstLeadingBit(reverseBits(u_input.d))), 4294967295u);
}

