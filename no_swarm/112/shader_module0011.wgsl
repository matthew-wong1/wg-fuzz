struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(!vec4<bool>(global0.b.x, true, false, !(!arg_0)), ~reverseBits((vec4<u32>(u_input.a, 71340u, 40u, u_input.a) >> (vec4<u32>(48499u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 24840u)) % vec4<u32>(32u))));
    global1 = array<f32, 6>();
    var var_1 = 692f;
    var var_2 = abs(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(~(var_0.b.x ^ var_0.b.x), countOneBits(1u))));
    global0 = Struct_2(true, var_0.a.xy, var_0.a.x, 35699i);
    return ~u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-564f - -1052f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1781f)), var_0)), _wgslsmith_f_op_f32(-2700f * -590f), _wgslsmith_f_op_f32(272f * var_0));
    var_1 = vec3<f32>(1f, -1137f, var_1.x);
    var var_2 = select(select(arg_0.a.wxz, select(vec3<bool>(true, true, all(arg_1.b)), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.a.x, false, false), arg_0.a.yxy), any(vec3<bool>(true, global0.a, arg_1.a))), !select(vec3<bool>(arg_0.a.x, global0.a, arg_1.b.x), arg_0.a.xwx, arg_1.a)), !arg_0.a.wyw, arg_0.a.x);
    return arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1281f + -359f)))) - _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_div_f32(-588f, arg_1.x))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(8469u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), ~vec2<u32>(1u, 1u)) >> (func_2(select(arg_2.x, true, true)) % 32u), 6u)]);
    global1 = array<f32, 6>();
    global0 = Struct_2(all(vec2<bool>(!(global1[_wgslsmith_index_u32(arg_0, 6u)] > var_0.x), arg_2.x)), vec2<bool>(arg_2.x, func_3(Struct_1(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), ~vec4<u32>(arg_0, u_input.a, arg_0, 24283u)), Struct_2(false, vec2<bool>(arg_2.x, arg_2.x), true, -1i), 1u)), !global0.a, u_input.b);
    global1 = array<f32, 6>();
    let var_1 = true;
    return Struct_1(select(select(!vec4<bool>(var_1, arg_2.x, var_1, global0.b.x), vec4<bool>(var_1, any(vec3<bool>(var_1, true, global0.c)), arg_2.x, global0.b.x), !select(vec4<bool>(var_1, global0.b.x, var_1, var_1), vec4<bool>(false, false, false, false), vec4<bool>(true, arg_2.x, true, var_1))), !vec4<bool>(any(vec4<bool>(true, global0.a, var_1, var_1)), func_3(Struct_1(vec4<bool>(arg_2.x, true, arg_2.x, false), vec4<u32>(17280u, arg_0, arg_0, u_input.a)), Struct_2(var_1, vec2<bool>(true, var_1), var_1, global0.d), 0u), 1u > u_input.a, true), any(select(!vec2<bool>(global0.c, var_1), !vec2<bool>(var_1, global0.b.x), var_1))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 0u), 0u), firstTrailingBit(4294967295u) >> (_wgslsmith_mult_u32(arg_0, u_input.a) % 32u)), ~vec4<u32>(u_input.a, ~1u, ~4294967295u, ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a >> (_wgslsmith_sub_u32(~u_input.a, u_input.a ^ 15270u) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, global1[_wgslsmith_index_u32(u_input.a, 6u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 351f), vec2<f32>(-1000f, 302f))))), !(!global0.b));
    global1 = array<f32, 6>();
    let var_1 = vec3<i32>(countOneBits(select(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, global0.d, -2147483647i, u_input.b), vec4<i32>(global0.d, global0.d, global0.d, u_input.b)), -1i, false)) ^ countOneBits(-max(global0.d, -1i)), ~(min(global0.d, max(-1i, -21214i)) | ((0i ^ u_input.b) | ~(-1i))), _wgslsmith_clamp_i32(u_input.b >> (24443u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, u_input.b, -50185i, u_input.b), ~vec4<i32>(1i, 0i, u_input.b, global0.d)), min(_wgslsmith_mod_i32(u_input.b, 22847i), u_input.b)) ^ ~(-11537i));
    var var_2 = func_1(var_0.b.x, vec2<f32>(659f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 6u)]))))), vec2<bool>(true | global0.b.x, 4294967295u < _wgslsmith_dot_vec3_u32(var_0.b.yzy, select(vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), vec3<u32>(var_0.b.x, 4294967295u, 4294967295u), true))));
    var_0 = func_1(17777u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(381f, 465f) - vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], -1000f)))))), !vec2<bool>(all(vec3<bool>(var_0.a.x, true, false)), all(vec3<bool>(var_2.a.x, var_0.a.x, false))));
    var_0 = func_1(6199u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(var_0.b.x, 6u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -971f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1153f)), -625f), false))), var_2.a.wz);
    let var_3 = Struct_2(true, var_0.a.xx, var_0.a.x, ~0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_0.b.x, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(var_2.b.x, 6u)], -1749f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, -149f, global1[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_0.b.x, 6u)]))), any(vec4<bool>(true, var_0.a.x, var_0.a.x, var_3.a))))));
}

