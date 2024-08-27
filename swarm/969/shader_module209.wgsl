struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(1i, 27332i), 1u, 270f);

var<private> global2: u32;

var<private> global3: i32 = -1i;

var<private> global4: array<f32, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.a, -vec2<i32>(global1.a.x, arg_0.a.x), global1.a), vec2<i32>(-7142i << (countOneBits(u_input.b) % 32u), abs(global1.a.x))), 102003u, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(58551u, 25u)]));
    let var_1 = _wgslsmith_dot_vec4_i32(~(~abs(vec4<i32>(var_0.a.x, arg_0.a.x, 0i, 1i))), ~vec4<i32>(2147483647i, arg_0.a.x, 1i, _wgslsmith_sub_i32(arg_0.a.x, u_input.a.x)) ^ min((vec4<i32>(u_input.a.x, var_0.a.x, -22168i, -9921i) ^ vec4<i32>(arg_0.a.x, arg_0.a.x, var_0.a.x, -2147483647i)) & countOneBits(vec4<i32>(1i, global1.a.x, 1i, -10362i)), vec4<i32>(global1.a.x, ~2147483647i, _wgslsmith_mod_i32(1739i, arg_0.a.x), var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(~var_0.b, 25u)], _wgslsmith_f_op_f32(973f - 1288f), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1180f, global4[_wgslsmith_index_u32(11664u, 25u)], var_0.c, var_0.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 352f, 828f, global4[_wgslsmith_index_u32(arg_0.b, 25u)])), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1445f, var_0.c, global4[_wgslsmith_index_u32(global1.b, 25u)], -476f)))), !any(vec4<bool>(true, false, true, false)))), true))));
    var var_3 = global4[_wgslsmith_index_u32(~4294967295u, 25u)];
    let var_4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.b, 25u)]) - arg_0.c)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> f32 {
    var var_0 = vec2<bool>(true, true);
    return arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(func_4(var_0, arg_0, vec3<f32>(_wgslsmith_f_op_f32(max(-344f, _wgslsmith_f_op_f32(-global1.c))), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_0)), -647f)))), -max(firstTrailingBit(-14627i), 32165i)));
    global1 = Struct_1(abs(~(abs(vec2<i32>(global1.a.x, arg_0.a.x)) ^ u_input.a.zz)), 15756u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2091f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(1i, arg_1), 7632u, -1071f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(global1.b, 25u)])))))));
    global1 = arg_0;
    var var_2 = arg_0;
    return Struct_1(vec2<i32>(-16936i, 16032i), var_2.b, 1f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = u_input.c.xyx;
    let var_2 = false;
    let var_3 = vec2<bool>(all(select(!(!vec4<bool>(false, var_2, false, true)), !select(vec4<bool>(var_2, true, var_2, var_2), vec4<bool>(var_2, true, var_2, false), var_2), true)), -1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(~10228i, firstLeadingBit(-1i), -10184i), _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-89841i, -487i, u_input.a.x), vec3<i32>(42162i, arg_1.a.x, arg_0.a.x)))));
    global2 = 4294967295u;
    return arg_0.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(global1.a >> (vec2<u32>(19499u, global1.b | global1.b) % vec2<u32>(32u)), ~select(abs(global1.a), u_input.a.yy, false)), ~(~(min(global1.b, global1.b) ^ u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f))));
    global3 = max(var_0.a.x, ~func_5(Struct_1(var_0.a, u_input.b, _wgslsmith_f_op_f32(global1.c * 1546f)), func_2(var_0, u_input.a.x), var_0));
    var var_1 = func_2(func_2(Struct_1(vec2<i32>(var_0.a.x, firstTrailingBit(1i)), var_0.b, _wgslsmith_f_op_f32(func_4(all(vec3<bool>(true, false, false)), func_2(Struct_1(var_0.a, var_0.b, var_0.c), 16644i), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, -1107f, -558f), vec3<f32>(-1605f, var_0.c, var_0.c)), var_0.a.x))), u_input.a.x), firstLeadingBit(~(-31480i)));
    var var_2 = !vec3<bool>(!all(vec4<bool>(false, false, true, true)), true, true);
    let var_3 = u_input.c;
    return Struct_1(vec2<i32>(~(-var_1.a.x), -global1.a.x), 1u, global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(true, all(vec2<bool>(true, true)), (global1.a.x | _wgslsmith_sub_i32(1i, global1.a.x | u_input.a.x)) > 20635i);
    let var_0 = true;
    global1 = func_1();
    global3 = 50956i;
    var var_1 = global1.b;
    let var_2 = global1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], _wgslsmith_div_f32(global1.c, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b, 83095u), 25u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(872f * global4[_wgslsmith_index_u32(u_input.c.x, 25u)]))), global4[_wgslsmith_index_u32(func_2(func_2(Struct_1(vec2<i32>(18606i, -59766i), 16992u, 282f), 7082i), u_input.a.x).b, 25u)]) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(477f, _wgslsmith_f_op_f32(round(-306f)), -1428f, _wgslsmith_f_op_f32(-260f * 1499f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -122f, global4[_wgslsmith_index_u32(u_input.b, 25u)], global1.c)))), _wgslsmith_f_op_f32(global1.c * global1.c) == _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(69346u, 25u)])))));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(519f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-365f, u_input.c.x, _wgslsmith_f_op_f32(func_4(var_0, func_2(func_2(Struct_1(global1.a, 0u, 503f), max(2474i, 41105i)), global1.a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1711f, 861f, var_3.x)), _wgslsmith_f_op_vec3_f32(-var_3.wyy), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0)))))), global1.a.x)), ~global1.b);
}

