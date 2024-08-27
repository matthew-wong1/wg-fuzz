struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec2<bool>;

var<private> global2: array<f32, 21> = array<f32, 21>(-559f, -526f, -459f, -339f, 861f, -1071f, -745f, -487f, 148f, -553f, 864f, 803f, 174f, -187f, 372f, -931f, -507f, -1023f, 110f, 337f, 867f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> vec4<f32> {
    let var_0 = select(!select(vec3<bool>(global1.x & false, true, arg_0.x && global1.x), !(!vec3<bool>(true, global1.x, global1.x)), vec3<bool>(false, global1.x, any(vec4<bool>(true, true, true, global1.x)))), vec3<bool>(all(!select(vec4<bool>(true, true, global1.x, arg_0.x), vec4<bool>(global1.x, arg_0.x, false, arg_0.x), vec4<bool>(true, global1.x, global1.x, arg_0.x))), all(vec3<bool>(all(vec4<bool>(global1.x, true, true, global1.x)), global1.x, false)), all(!select(vec4<bool>(arg_0.x, true, arg_0.x, global1.x), vec4<bool>(arg_0.x, global1.x, false, global1.x), arg_0.x))), any(arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_2.x, 21u)], -179f, global1.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(42139u, 21u)] * global2[_wgslsmith_index_u32(arg_2.x, 21u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(arg_2.x, 21u)], arg_1)))))), any(var_0), all(select(!(!vec4<bool>(true, true, arg_0.x, var_0.x)), vec4<bool>(var_0.x, !arg_0.x, false, any(vec3<bool>(true, false, var_0.x))), false)), reverseBits(vec3<u32>(~(u_input.c >> (u_input.c % 32u)), u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 0u) ^ arg_2.yyz, _wgslsmith_clamp_vec3_u32(arg_2.zzz, vec3<u32>(u_input.c, 15750u, 0u), arg_2.zxx)))));
    global0 = abs(firstTrailingBit(~(_wgslsmith_mod_u32(u_input.c, arg_2.x) | 0u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.a))) - var_1.a), global1.x, var_1.b, vec3<u32>(~arg_2.x, u_input.c ^ ~(~53464u), 16881u));
    global2 = array<f32, 21>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 21u)]), -1199f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(641f, _wgslsmith_f_op_f32(-var_2.a.x))) * var_1.a.x), 153f, global2[_wgslsmith_index_u32(u_input.c, 21u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -222f, _wgslsmith_f_op_f32(-188f - var_2.a.x), _wgslsmith_f_op_f32(min(var_1.a.x, -936f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-769f, global2[_wgslsmith_index_u32(var_1.d.x, 21u)], _wgslsmith_f_op_f32(var_1.a.x + arg_1), _wgslsmith_f_op_f32(arg_1 - var_1.a.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c ^ _wgslsmith_sub_u32(arg_1.d.x, 95657u | u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x ^ 4294967295u, firstTrailingBit(u_input.c), _wgslsmith_dot_vec3_u32(arg_1.d, arg_0.d), arg_0.d.x), (vec4<u32>(arg_1.d.x, 0u, 48641u, arg_0.d.x) ^ vec4<u32>(58484u, 29771u, 3944u, arg_0.d.x)) & reverseBits(vec4<u32>(u_input.c, arg_0.d.x, arg_0.d.x, arg_1.d.x)))), firstTrailingBit(~(~arg_1.d.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(!vec2<bool>(global1.x, arg_0.b), arg_0.a.x, ~vec4<u32>(u_input.c, arg_1.d.x, 28386u, _wgslsmith_mult_u32(u_input.c, arg_0.d.x)))));
    return ~reverseBits(_wgslsmith_clamp_u32(u_input.c, 43338u, ~(~1u)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: u32) -> vec2<f32> {
    global2 = array<f32, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1817f, global2[_wgslsmith_index_u32(~firstLeadingBit(113509u), 21u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, global2[_wgslsmith_index_u32(0u, 21u)]), vec2<f32>(649f, -620f), vec2<bool>(global1.x, true))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]))))), arg_1.x, !all(!select(arg_1, arg_1, vec4<bool>(arg_1.x, false, false, true))), ~vec3<u32>(func_2(Struct_1(vec2<f32>(arg_0, global2[_wgslsmith_index_u32(15494u, 21u)]), true, global1.x, vec3<u32>(u_input.c, 4294967295u, 71211u)), Struct_1(vec2<f32>(global2[_wgslsmith_index_u32(arg_2, 21u)], -1100f), false, global1.x, vec3<u32>(u_input.c, 24945u, 80918u))), 32120u, ~arg_2) ^ vec3<u32>(_wgslsmith_clamp_u32(u_input.c, u_input.c, arg_2), func_2(Struct_1(vec2<f32>(661f, global2[_wgslsmith_index_u32(4294967295u, 21u)]), false, arg_1.x, vec3<u32>(4294967295u, u_input.c, u_input.c)), Struct_1(vec2<f32>(-1532f, global2[_wgslsmith_index_u32(u_input.c, 21u)]), arg_1.x, true, vec3<u32>(u_input.c, 40709u, 4294967295u))), 1u));
    var var_1 = countOneBits(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.d.x, 21u)], 748f)))) * arg_0) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(round(-423f))));
    global0 = 0u;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1332f * var_0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, global2[_wgslsmith_index_u32(23229u, 21u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 21u)] * -390f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(61119u, 21u)], vec4<bool>(global1.x, global1.x, false, global1.x), 4294967295u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], 487f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, 384f, 551f, 787f) + vec4<f32>(global2[_wgslsmith_index_u32(20036u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(59160u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(60275u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]) - vec4<f32>(global2[_wgslsmith_index_u32(51446u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)], -240f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], -2333f, global2[_wgslsmith_index_u32(23836u, 21u)], -250f)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(47910u, 21u)], global2[_wgslsmith_index_u32(70652u, 21u)]), -703f, -485f, -144f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, _wgslsmith_div_f32(-1206f, 1003f), -831f, _wgslsmith_f_op_f32(-434f - -578f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-436f, global2[_wgslsmith_index_u32(u_input.c, 21u)], 148f, 148f))))))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 21u)], -1053f, global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1237f))), _wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(global1.x, global1.x), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)])), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))).x, 1247f, -596f)));
}

