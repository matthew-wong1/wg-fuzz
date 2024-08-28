struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<f32>(-1609f, -1000f, -172f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_0;
    global1 = array<Struct_3, 1>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1148f + 829f), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1478f, 1235f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1335f)), -716f) + 526f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1377f), 1000f))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-323f, var_1.x, var_1.x)))))));
    let var_3 = vec4<bool>(any(!(!(!vec3<bool>(arg_1, true, arg_1)))), !(true == (true == (arg_2.b == u_input.d))), true, true);
    return ~vec2<u32>(~u_input.d, _wgslsmith_mult_u32(arg_2.d, u_input.d));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~46059u, _wgslsmith_dot_vec4_u32(vec4<u32>(5702u, 0u, 0u, arg_1), vec4<u32>(u_input.d, 17874u, 4294967295u, arg_1))), arg_0.xx) << (~func_3(Struct_2(4232i), true, Struct_1(arg_2, arg_1, 66989u, 41564u)) % vec2<u32>(32u)), ~arg_1, 1u, reverseBits(max(max(arg_1, arg_1), 46741u)));
    global1 = array<Struct_3, 1>();
    var var_1 = Struct_2(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1359f * 802f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1329f))))) * _wgslsmith_f_op_f32(round(-728f))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(round(800f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(-457f, 945f)) - vec2<f32>(var_2, var_2)))));
    return firstTrailingBit(vec2<u32>(arg_0.x, 1u));
}

fn func_1() -> vec2<u32> {
    var var_0 = u_input.a.x;
    global0 = true;
    let var_1 = Struct_2(-((u_input.c ^ abs(u_input.c)) | 30143i));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-971f, -265f, -424f), vec3<f32>(982f, -582f, -396f))) - _wgslsmith_div_vec3_f32(vec3<f32>(-589f, -377f, -685f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-393f, -1629f, -1013f))))));
    global1 = array<Struct_3, 1>();
    return func_2(firstLeadingBit(~vec4<u32>(4294967295u, 18805u, u_input.d, 73263u) << (~vec4<u32>(u_input.d, 0u, u_input.d, 31204u) % vec4<u32>(32u))), u_input.d, vec2<u32>(37409u, _wgslsmith_add_u32(u_input.d & ~21601u, _wgslsmith_div_u32(78947u, abs(u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(select(0i, -2147483647i, true) | -u_input.a.x, ~30815i));
    let var_1 = ~_wgslsmith_dot_vec2_u32(func_1(), ~firstLeadingBit(vec2<u32>(u_input.d, u_input.d)) ^ ~vec2<u32>(33007u, u_input.d));
    let var_2 = !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, u_input.b.x != u_input.b.x), true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-948f)), _wgslsmith_f_op_f32(f32(-1f) * -1956f))), 721f)) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -881f)));
    global1 = array<Struct_3, 1>();
    let var_4 = Struct_1(~(~(~(vec2<u32>(var_1, u_input.d) & vec2<u32>(1u, 139482u)))), ~(~61549u), 127u, func_1().x);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) - _wgslsmith_f_op_f32(f32(-1f) * -953f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1206f) - _wgslsmith_f_op_f32(abs(1191f))))), _wgslsmith_f_op_f32(f32(-1f) * -1286f)));
    let var_6 = vec2<bool>(!((-u_input.a.x <= u_input.c) & var_2.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1921f, -988f, var_6.x)) - -680f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1302f, _wgslsmith_f_op_f32(trunc(-1000f))))))), select(u_input.a.x, u_input.a.x, false), u_input.b.x);
}

