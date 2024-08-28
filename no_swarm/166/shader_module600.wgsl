struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global2: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 19200u, 32696u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(9676u, 0u, 1u), vec3<u32>(1u, 13735u, 118385u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    global1 = array<bool, 3>();
    let var_0 = !(!any(arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), -1139f, _wgslsmith_f_op_f32(1716f * _wgslsmith_f_op_f32(f32(-1f) * -774f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2927f - global0.a), -237f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -689f))))));
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    return !(!select(!(!vec4<bool>(false, arg_2.x, true, false)), vec4<bool>(arg_3.x, u_input.c > u_input.a, arg_0.x, !var_0), true));
}

fn func_2() -> Struct_3 {
    global1 = array<bool, 3>();
    let var_0 = vec3<bool>(!(!all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 3u)]))), all(vec2<bool>(true, true)), (global1[_wgslsmith_index_u32(max(~u_input.a, 27859u), 3u)] & true) & all(func_3(select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), true), _wgslsmith_div_i32(2147483647i, -1i), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(20231u, 3u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], false, false)), !vec2<bool>(global1[_wgslsmith_index_u32(13170u, 3u)], false))));
    var var_1 = func_3(vec2<bool>(true, true), -12695i, var_0, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)] | any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], false, global1[_wgslsmith_index_u32(u_input.a, 3u)])), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(37667u), 0u, ~max(u_input.e.x, u_input.e.x)), 3u)])).ywy;
    let var_2 = Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_f32(-global0.a), ~(~u_input.b), -u_input.b), all(select(vec3<bool>(var_0.x, false, u_input.b != 11401i), select(!vec3<bool>(false, true, var_1.x), select(vec3<bool>(false, var_0.x, var_0.x), var_0, true), all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 3u)], true, var_0.x))), true)), !vec3<bool>(var_1.x, var_0.x | (u_input.b > global0.c), true));
    global1 = array<bool, 3>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, var_2.b.a, -865f, var_2.b.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1932f, var_2.b.a, 1020f, global0.a)))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_2.b.a, global0.a, var_2.b.a))))), !global1[_wgslsmith_index_u32(0u, 3u)]);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    let var_0 = func_3(select(select(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 3u)])), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 3u)])), true), select(true, true, select(false, global1[_wgslsmith_index_u32(u_input.a, 3u)], true))), func_3(!func_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], false), 16188i, vec3<bool>(false, arg_0.b, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 3u)])).wy, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-9358i, 1i, 2147483647i, 2147483647i), vec4<i32>(u_input.b, -1i, 1i, 2147483647i)), global0.b), vec3<bool>(!arg_0.b, true, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], arg_0.b))), vec2<bool>(true, false)).xz, vec2<bool>(!select(arg_0.b, false, global1[_wgslsmith_index_u32(4294967295u, 3u)]), true | any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)], arg_0.b)))), global0.b, select(!select(vec3<bool>(false, true, true), select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], arg_0.b, global1[_wgslsmith_index_u32(77104u, 3u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 3u)], true)), !vec3<bool>(arg_0.b, false, arg_0.b)), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 3u)], true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 3u)], true, arg_0.b))), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 3u)], true, false)), all(vec4<bool>(false, true, arg_0.b, global1[_wgslsmith_index_u32(20726u, 3u)]))), !select(select(vec3<bool>(arg_0.b, global1[_wgslsmith_index_u32(u_input.d, 3u)], arg_0.b), vec3<bool>(arg_0.b, false, true), false), select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(14211u, 3u)]), vec3<bool>(arg_0.b, global1[_wgslsmith_index_u32(25815u, 3u)], false)), !vec3<bool>(arg_0.b, false, arg_0.b))), vec2<bool>(arg_0.b, any(!(!vec3<bool>(arg_0.b, true, arg_0.b)))));
    global2 = array<vec3<u32>, 5>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-938f * global0.a), _wgslsmith_f_op_f32(1312f + -1623f))))))));
    var var_2 = !(!any(var_0.wwx));
    let var_3 = Struct_2(!(!arg_0.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1248f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, -564f, arg_0.b)))), -(-u_input.b << (~u_input.e.x % 32u)), _wgslsmith_mod_i32(global0.c ^ _wgslsmith_mult_i32(global0.c, global0.b), abs(1i))), all(func_3(!(!vec2<bool>(false, arg_0.b)), _wgslsmith_add_i32(~2147483647i, u_input.b), func_3(var_0.xx, firstLeadingBit(arg_1), vec3<bool>(arg_0.b, global1[_wgslsmith_index_u32(4294967295u, 3u)], true), var_0.wx).zzy, var_0.ww).zy), vec3<bool>(select(any(var_0.xy), func_3(var_0.xy, u_input.b, vec3<bool>(true, true, false), var_0.yy).x, true) & true, false, select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(-9754i, -43137i, u_input.b)) >= select(-1i, 1i, true), !global1[_wgslsmith_index_u32(0u, 3u)] | var_0.x, true)));
    return Struct_1(global0.a, _wgslsmith_sub_i32(37313i, global0.c), -select(arg_1, global0.b, true));
}

fn func_1() -> bool {
    global0 = func_4(func_2(), global0.b & global0.b);
    global2 = array<vec3<u32>, 5>();
    global0 = Struct_1(global0.a, ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, -2147483647i, u_input.b, 16441i)), ~abs(vec4<i32>(global0.b, u_input.b, 7397i, global0.b))), _wgslsmith_sub_i32(-46785i, u_input.b));
    let var_0 = select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)] | true, true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)]), global1[_wgslsmith_index_u32(u_input.c, 3u)]))), !(!vec3<bool>(global0.a < global0.a, !global1[_wgslsmith_index_u32(u_input.a, 3u)], !global1[_wgslsmith_index_u32(u_input.d, 3u)])), global1[_wgslsmith_index_u32(34194u, 3u)]);
    let var_1 = 1f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 709f, true))), global0.a, func_3(vec2<bool>(true, true), global0.c, vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)], true), var_0.yx).x | global1[_wgslsmith_index_u32(u_input.e.x, 3u)])) + global0.a);
    return false;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_5) -> vec3<bool> {
    global2 = array<vec3<u32>, 5>();
    let var_0 = !arg_1.yz;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1366f, _wgslsmith_f_op_f32(abs(-827f)))) + -1285f), global0.b, max(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(198f, global0.a, 288f, global0.a) - vec4<f32>(161f, 1794f, global0.a, global0.a)), global0.a >= 2162f), global0.c).c, -1i));
    let var_1 = Struct_2(!func_1(), Struct_1(855f, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(19569i, u_input.b, 2147483647i)), min(~vec3<i32>(global0.c, 9479i, u_input.b), firstTrailingBit(vec3<i32>(u_input.b, 1i, global0.b)))), -1i), !(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 4294967295u, arg_0, arg_0), vec4<u32>(38730u, 6762u, arg_2.b.x, 56225u)) != select(arg_0, _wgslsmith_mult_u32(0u, 1u), false)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 3u)], false, !any(vec3<bool>(false, arg_1.x, false)) | !func_2().b));
    var var_2 = u_input.d;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(u_input.c), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.e.x, 6517u), vec3<u32>(41674u, 60930u, u_input.c))), vec3<u32>(u_input.a, ~30837u, _wgslsmith_mod_u32(4294967295u, 40215u)))), select(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(6885u, 3u)], global1[_wgslsmith_index_u32(u_input.e.x, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]), global1[_wgslsmith_index_u32(1u, 3u)]), vec3<bool>(true, !global1[_wgslsmith_index_u32(u_input.c, 3u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 3u)] | global1[_wgslsmith_index_u32(46453u, 3u)], !global1[_wgslsmith_index_u32(u_input.d, 3u)], !global1[_wgslsmith_index_u32(23550u, 3u)])), vec3<bool>(!func_1(), false, false), select(global1[_wgslsmith_index_u32(~u_input.d, 3u)], true, func_2().b)), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(582f))), vec2<u32>(u_input.a, 25764u)));
    var var_1 = _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-447f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2244f) * func_2().a.x)))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-func_4(Struct_3(vec4<f32>(1000f, global0.a, global0.a, 238f), var_0.x), global0.c).a), _wgslsmith_div_vec2_u32(vec2<u32>(71282u, _wgslsmith_clamp_u32(abs(73625u), ~1u, ~u_input.d)), u_input.e.yz));
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), 829f));
    let var_3 = func_2();
    var_1 = func_2().a.x;
    let var_4 = Struct_4(u_input.e.x, -countOneBits(-(vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b) & vec4<i32>(global0.c, u_input.b, -2147483647i, u_input.b))), !var_0.zy, abs(countOneBits(-abs(u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, var_3.a.zz, _wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(~29692u, 5u)] & abs(vec3<u32>(22958u, var_2.b.x, var_4.a)), _wgslsmith_div_vec3_u32(~select(u_input.e, u_input.e, var_0.x), u_input.e)));
}

