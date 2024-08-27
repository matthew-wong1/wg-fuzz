struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<bool>, 17>;

var<private> global3: array<i32, 14> = array<i32, 14>(2147483647i, 0i, -1i, -3374i, 2147483647i, 26236i, 72070i, 1i, 0i, 0i, 43115i, -3757i, 2147483647i, 54688i);

var<private> global4: array<f32, 13> = array<f32, 13>(402f, -1518f, -111f, 789f, -1000f, 206f, 315f, 175f, -258f, 1105f, -1430f, 1961f, 490f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-708f))), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 45512u, u_input.a, arg_0.x), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u)), 13u)], -792f));
    let var_1 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, select(true, false, true), true), !any(vec4<bool>(false, true, false, true))), vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
    global2 = array<vec2<bool>, 17>();
    let var_2 = _wgslsmith_add_i32(-global3[_wgslsmith_index_u32(~(~1u), 14u)], global3[_wgslsmith_index_u32(u_input.a, 14u)]);
    global3 = array<i32, 14>();
    return !select(select(vec3<bool>(0u >= u_input.a, var_1, true), vec3<bool>(var_1, true, true), true), !vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 13u)] > -1228f, true, true), (993f == _wgslsmith_f_op_f32(-var_0.a)) || var_1);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(-1i, -2147483647i);
    global4 = array<f32, 13>();
    global4 = array<f32, 13>();
    var var_1 = !func_3(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 13246u))), countOneBits(global1.zyy << (vec3<u32>(26564u, 1u, u_input.a) % vec3<u32>(32u))) | ~u_input.b.yxz);
    let var_2 = vec3<f32>(global4[_wgslsmith_index_u32(u_input.a | min(u_input.a, ~u_input.a), 13u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -826f)))))), global4[_wgslsmith_index_u32(u_input.a, 13u)]);
    return Struct_2(94670u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(ceil(-563f)), any(var_1.zx))) * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 13u)] - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(33308u, 13u)]))) - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(67414u, 13u)])), Struct_1(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-570f, _wgslsmith_f_op_f32(trunc(var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * global4[_wgslsmith_index_u32(0u, 13u)])))), u_input.b.wz);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-681f))), -533f);
    var var_2 = !all(global2[_wgslsmith_index_u32(1u, 17u)]);
    let var_3 = arg_2;
    var_2 = select(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true, false);
    return _wgslsmith_dot_vec3_i32(u_input.b.zxw >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(arg_0.wxy, vec3<u32>(arg_2.a, var_3.a, 11659u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.wzz, vec3<u32>(var_3.a, arg_2.a, var_3.a)), vec3<u32>(arg_0.x, arg_2.a, 54599u), ~vec3<u32>(25831u, var_3.a, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(global1.ywx, global1.wzy));
}

fn func_1(arg_0: Struct_2) -> vec4<i32> {
    global4 = array<f32, 13>();
    var var_0 = u_input.b.zwy;
    global0 = min(min(_wgslsmith_dot_vec2_i32(arg_0.d, vec2<i32>(var_0.x, ~0i)), u_input.b.x), var_0.x);
    let var_1 = ~4294967295u;
    return vec4<i32>(func_4(~vec4<u32>(u_input.a, 20719u, var_1, 0u) & select(~vec4<u32>(1u, 1u, 4411u, u_input.a), vec4<u32>(u_input.a, 0u, 33649u, 10232u), vec4<bool>(false, true, true, true)), arg_0.c, func_2(), arg_0.c), 1i, _wgslsmith_mult_i32(5046i, var_0.x), ~global3[_wgslsmith_index_u32(1u, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(countOneBits(u_input.a), select(~_wgslsmith_add_u32(u_input.a, u_input.a), 102568u, _wgslsmith_sub_u32(u_input.a, u_input.a) <= firstTrailingBit(79841u)), u_input.a) ^ ~(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a), u_input.a | u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(6461u, u_input.a, u_input.a), vec3<u32>(1u, 4294967295u, 1u)));
    let var_1 = countOneBits(~vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x) << (0u % 32u), u_input.a, 0u >> (~var_0.x % 32u), 46876u));
    var var_2 = var_1.yz;
    global2 = array<vec2<bool>, 17>();
    global1 = max(abs(min(-u_input.b, vec4<i32>(43957i, global3[_wgslsmith_index_u32(var_2.x, 14u)], 21416i, 0i)) | ~func_1(Struct_2(35223u, 359f, Struct_1(global4[_wgslsmith_index_u32(u_input.a, 13u)], global4[_wgslsmith_index_u32(u_input.a, 13u)]), u_input.b.zy))), vec4<i32>(_wgslsmith_add_i32(-global3[_wgslsmith_index_u32(var_1.x >> (var_1.x % 32u), 14u)], global3[_wgslsmith_index_u32(var_2.x, 14u)] << (u_input.a % 32u)), firstTrailingBit(~global3[_wgslsmith_index_u32(~var_1.x, 14u)]), u_input.b.x, select(max(-6780i, -2147483647i), abs(select(-44109i, 2147483647i, false)), true)));
    var var_3 = Struct_2(~u_input.a, -1021f, func_2().c, -vec2<i32>(global3[_wgslsmith_index_u32(abs(reverseBits(1u)), 14u)], -(~u_input.b.x)));
    var var_4 = !((false && select(true, true, true)) && !(true || (var_3.c.b <= global4[_wgslsmith_index_u32(0u, 13u)])));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~0u), global4[_wgslsmith_index_u32(var_1.x, 13u)], var_3.c.b, var_1.ywz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-770f, _wgslsmith_f_op_f32(round(-119f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(61273u, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(f32(-1f) * -498f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.b, -562f, -406f, -493f), vec4<f32>(var_3.c.a, var_3.c.a, 889f, -2062f), true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, global4[_wgslsmith_index_u32(38005u, 13u)], -1237f, global4[_wgslsmith_index_u32(var_3.a, 13u)])))));
}

