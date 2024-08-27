struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, false, false, true, false, false, false, false, true, true, false, false, true, true, true, false, true, true, false, false, true, true, false, false, false, true);

var<private> global1: Struct_2 = Struct_2(false);

var<private> global2: array<vec4<u32>, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    var var_0 = arg_0.zz;
    let var_1 = u_input.a;
    let var_2 = vec3<u32>(abs(0u), (0u >> (u_input.b % 32u)) | select(abs(u_input.b), select(u_input.b, 891u, var_0.x), all(arg_0.wzw)), ~u_input.c);
    return Struct_2(global0[_wgslsmith_index_u32(u_input.b, 28u)] == !(!all(arg_0.yw)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = ~(~vec3<u32>(u_input.b, 51870u, ~abs(u_input.c)));
    global1 = func_2(select(!select(select(vec4<bool>(true, true, global1.a, global1.a), vec4<bool>(global1.a, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(48764u, 28u)], false), true), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 28u)], false, global1.a), select(true, global0[_wgslsmith_index_u32(var_0.x, 28u)], true)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], true, u_input.c > 0u, false), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(~var_0.x, 28u)], true, true)));
    let var_1 = ~abs(_wgslsmith_clamp_vec3_i32(min(-vec3<i32>(u_input.a.x, -16320i, u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, u_input.a.x, u_input.a.x))), countOneBits(~vec3<i32>(u_input.a.x, 2147483647i, u_input.d)), abs(vec3<i32>(-8803i, 0i, u_input.d))));
    global2 = array<vec4<u32>, 26>();
    let var_2 = all(vec3<bool>(all(vec2<bool>(true, true)), false, all(!(!vec4<bool>(global1.a, global1.a, true, true)))));
    return global0[_wgslsmith_index_u32(1u, 28u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> Struct_2 {
    global2 = array<vec4<u32>, 26>();
    let var_0 = arg_2;
    global0 = array<bool, 28>();
    var var_1 = func_2(select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(any(vec4<bool>(arg_3, arg_1.a.x, false, false)) && arg_3, arg_1.a.x, true, global1.a), vec4<bool>(any(vec4<bool>(false, arg_1.a.x, global0[_wgslsmith_index_u32(arg_2, 28u)], false)), global0[_wgslsmith_index_u32(arg_2, 28u)], true, true)));
    global1 = func_2(select(vec4<bool>(!(arg_3 & var_1.a), true, false, global1.a), vec4<bool>(all(arg_1.a) && true, any(!vec3<bool>(false, arg_1.a.x, false)), false, func_3(arg_0.zy)), !select(vec4<bool>(false, arg_3, global1.a, global0[_wgslsmith_index_u32(21875u, 28u)]), !vec4<bool>(false, true, arg_3, global0[_wgslsmith_index_u32(1u, 28u)]), any(vec4<bool>(arg_3, arg_3, arg_3, false)))));
    return Struct_2(var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = arg_0;
    global1 = func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1614f, 1000f, 1145f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1127f, -1371f, -738f) - vec3<f32>(1f, 1f, 1f))), true)), Struct_1(vec2<bool>(true && (0u > u_input.b), -1000f != _wgslsmith_f_op_f32(round(659f)))), ~u_input.b, true);
    global1 = arg_0;
    let var_1 = (abs(~(~global2[_wgslsmith_index_u32(u_input.c, 26u)])) << ((~global2[_wgslsmith_index_u32(~u_input.b, 26u)] | vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 8096u), vec3<u32>(1u, 39381u, 36553u)), u_input.c, 2917u)) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(73622u, 103925u, u_input.c, u_input.c), global2[_wgslsmith_index_u32(0u, 26u)]), ~global2[_wgslsmith_index_u32(48023u, 26u)]), select(firstTrailingBit(vec4<u32>(40239u, u_input.b, 20271u, 62186u)), ~vec4<u32>(0u, 0u, u_input.c, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 28u)])), global2[_wgslsmith_index_u32(~select(0u, 0u, true) ^ 4294967295u, 26u)], ~(~select(global2[_wgslsmith_index_u32(u_input.b, 26u)], vec4<u32>(u_input.c, 4294967295u, u_input.c, 20224u), global1.a))) % vec4<u32>(32u));
    let var_2 = Struct_2(true);
    return Struct_1(!vec2<bool>(false, any(vec2<bool>(var_2.a, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 26>();
    let var_0 = Struct_2(all(vec3<bool>(!any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 28u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(7440u, 28u)], global1.a, global1.a)), select(true, true, true) == false)));
    var var_1 = ~vec3<u32>(u_input.b, 0u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.c))) ^ 0u);
    let var_2 = func_4(func_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(795f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(911f, 430f))), _wgslsmith_f_op_f32(1485f + -434f)), Struct_1(select(vec2<bool>(true, true), !vec2<bool>(global1.a, var_0.a), vec2<bool>(global1.a, global0[_wgslsmith_index_u32(u_input.b, 28u)]))), 0u, true), vec4<i32>(u_input.a.x >> (var_1.x % 32u), u_input.d, min(u_input.a.x, reverseBits(25930i)), u_input.a.x));
    let var_3 = global2[_wgslsmith_index_u32(var_1.x, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(189f, 1145f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(628f, -165f), vec2<f32>(-928f, -1602f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(854f, 1070f), vec2<f32>(-256f, -1302f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-288f, 795f)))), !(!global0[_wgslsmith_index_u32(0u, 28u)]))) * vec2<f32>(_wgslsmith_f_op_f32(-347f * -789f), 1f)), vec4<f32>(378f, -539f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(200f * -198f), _wgslsmith_f_op_f32(select(-1000f, 1009f, global0[_wgslsmith_index_u32(var_3.x, 28u)])))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-846f)), _wgslsmith_f_op_f32(-217f * -1808f))), u_input.a.x, firstLeadingBit(vec3<u32>(var_1.x, 6943u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-998f, -1427f, 484f, _wgslsmith_f_op_f32(f32(-1f) * -2033f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1289f, 871f, -1936f, 621f))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-912f, 458f, _wgslsmith_f_op_f32(-1178f * 1295f), 515f)))));
}

