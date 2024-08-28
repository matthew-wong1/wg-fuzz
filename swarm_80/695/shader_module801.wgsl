struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1144f, 1039f, 1000f, -1055f, 809f, -2454f, 243f, 179f, 290f, -620f, -607f);

var<private> global1: array<f32, 7> = array<f32, 7>(-1809f, 1099f, -509f, -346f, 1135f, 140f, 367f);

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 70347u, 1u), vec2<f32>(991f, 1103f), vec2<u32>(45595u, 8986u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x, u_input.a.x);
    global1 = array<f32, 7>();
    let var_1 = Struct_2(vec2<i32>(var_0.x, -24163i));
    let var_2 = vec4<u32>(global2.c.x, ~1u, ~_wgslsmith_mod_u32(~(~arg_2.x), 19084u), 0u);
    global2 = Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(firstLeadingBit(var_2), ~var_2), 1u, 0u), global2.b, vec2<u32>(firstTrailingBit(var_2.x) ^ ~(~global2.c.x), arg_2.x));
    return -239f;
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_1(~(~firstLeadingBit(~global2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1343f, global2.b.x, global2.b.x) * vec3<f32>(global1[_wgslsmith_index_u32(global2.a.x, 7u)], 2473f, 1363f)), ~vec4<u32>(global2.a.x, global2.c.x, 53994u, 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 7u)]), global0[_wgslsmith_index_u32(0u, 11u)], arg_0)))), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_add_u32(global2.a.x, global2.a.x), ~32043u), _wgslsmith_div_vec2_u32(vec2<u32>(global2.c.x, global2.a.x) & vec2<u32>(4294967295u, global2.a.x), firstTrailingBit(global2.a.xz)), true), ~global2.a.yy, min(global2.c, firstLeadingBit(global2.c))));
    global0 = array<f32, 11>();
    let var_1 = u_input.a.x;
    global1 = array<f32, 7>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global2.c.x, 11u)], -390f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(1031f * 170f)))))));
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = 4294967295u;
    var var_1 = abs(func_2(-124f < _wgslsmith_f_op_f32(round(-1321f))));
    var_1 = vec3<u32>(~(~abs(~global2.a.x)), arg_1, 47533u);
    let var_2 = vec3<i32>(i32(-1i) * -arg_0.a.x, 1i, u_input.a.x) & firstTrailingBit(firstLeadingBit(max(vec3<i32>(-19019i, u_input.a.x, -13781i), vec3<i32>(u_input.a.x, 0i, u_input.a.x)) << (func_2(false) % vec3<u32>(32u))));
    var var_3 = 1i;
    return Struct_3(~vec4<i32>(-2147483647i, arg_0.a.x, _wgslsmith_mod_i32(-var_2.x, _wgslsmith_sub_i32(arg_0.a.x, 2147483647i)), max(_wgslsmith_add_i32(0i, u_input.a.x), firstLeadingBit(885i))), true, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 11u)], global2.b.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool) -> vec2<bool> {
    var var_0 = Struct_2(u_input.a);
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 11763i), vec2<i32>(arg_0, arg_0)), -1i)), -47342i));
    var_1 = Struct_2(countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.x, var_1.a.x, arg_1.a.x), vec3<i32>(1i, 19985i, var_1.a.x))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, var_1.a.x), vec2<i32>(6950i, arg_0)), vec2<i32>(2147483647i, 0i) & vec2<i32>(-30133i, var_1.a.x)))));
    global0 = array<f32, 11>();
    var_1 = Struct_2(arg_1.a.wz);
    return select(select(select(!(!vec2<bool>(arg_1.b, false)), vec2<bool>(arg_2 | arg_1.b, func_1(Struct_2(arg_1.a.zw), global2.a.x).b), vec2<bool>(true, true)), select(select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, arg_1.b), vec2<bool>(true, arg_2), false), !vec2<bool>(arg_2, false)), select(vec2<bool>(arg_1.b, false), select(vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_2), true), vec2<bool>(arg_2, arg_1.b)), arg_2), false), vec2<bool>(var_1.a.x <= ~(-var_1.a.x), arg_2), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i & u_input.a.x;
    var var_1 = -1366f;
    var var_2 = any(vec3<bool>(true, true, true));
    var var_3 = !select(select(func_4(~(-45715i), func_1(Struct_2(vec2<i32>(u_input.a.x, u_input.a.x)), 63853u), any(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, global2.a.x < 21724u)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), var_0 >= u_input.a.x), vec2<bool>(true, select(true, false, false)), any(vec2<bool>(true, true))), select(vec2<bool>(select(true, false, false), true), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    global2 = Struct_1(vec3<u32>(0u, 98288u, ~_wgslsmith_mult_u32(1u, 2462u)), vec2<f32>(-2469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.a.x, 7u)]), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(25657u, 11u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1986f))))), _wgslsmith_mult_vec2_u32(global2.c | global2.c, vec2<u32>(global2.a.x, _wgslsmith_clamp_u32(global2.c.x, 1u, _wgslsmith_dot_vec2_u32(global2.c, vec2<u32>(30381u, 4294967295u))))));
    global0 = array<f32, 11>();
    let var_4 = !select(select(!select(vec3<bool>(true, false, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(false, var_3.x, var_3.x)), vec3<bool>(1709f < global1[_wgslsmith_index_u32(global2.c.x, 7u)], var_3.x, var_3.x), func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, u_input.a.x, 0i), vec4<i32>(var_0, u_input.a.x, var_0, u_input.a.x)), Struct_3(vec4<i32>(21829i, 53229i, u_input.a.x, var_0), true, 478f), true).x), select(!(!vec3<bool>(false, true, var_3.x)), select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_3.x, false, false), select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, true, true), vec3<bool>(true, var_3.x, var_3.x))), vec3<bool>(var_3.x, 0i > var_0, func_1(Struct_2(u_input.a), 1u).b)), vec3<bool>(any(!vec2<bool>(var_3.x, var_3.x)), var_3.x, true));
    let var_5 = -249f;
    var var_6 = !vec2<bool>(!any(vec2<bool>(true, true)), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 11u)], -1396f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a.x, 7u)] - var_5))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-174f)))))), _wgslsmith_f_op_f32(func_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global2.c.x, 11u)], -120f, -666f) * vec3<f32>(global0[_wgslsmith_index_u32(global2.c.x, 11u)], global1[_wgslsmith_index_u32(global2.a.x, 7u)], global2.b.x))))), vec4<u32>(global2.c.x, ~_wgslsmith_div_u32(78310u, 15087u), global2.c.x, global2.a.x))));
}

