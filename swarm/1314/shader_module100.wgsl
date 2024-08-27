struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 25> = array<f32, 25>(2196f, -1827f, 203f, -2482f, -1000f, -2229f, -155f, -116f, 284f, -151f, 1138f, -1034f, -526f, -115f, 590f, 517f, -700f, 913f, 324f, 1245f, -739f, -1785f, -1000f, 984f, 1000f);

var<private> global2: array<u32, 23> = array<u32, 23>(4294967295u, 0u, 30215u, 44484u, 1u, 1u, 14134u, 32339u, 0u, 1u, 4294967295u, 25885u, 1u, 72883u, 6788u, 6292u, 1u, 4294967295u, 4294967295u, 49431u, 40604u, 22654u, 1u);

var<private> global3: array<vec3<u32>, 14>;

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    let var_0 = -1352f;
    return countOneBits(14067u);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = !(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, 24137i), vec3<i32>(1i, u_input.a, u_input.a))) != 0i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1030f + global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15090u, 23u)], 25u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17977u, 25u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1297f * -889f), _wgslsmith_f_op_f32(-global0.x)), global4.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-360f)))))), global0.x, _wgslsmith_f_op_f32(select(-422f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, global1[_wgslsmith_index_u32(arg_0, 25u)], true)))))), !(global2[_wgslsmith_index_u32(arg_0, 23u)] > 25355u))), 478f);
    global2 = array<u32, 23>();
    var var_2 = ~(~global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(5785u, arg_0), 23u)] >> ((~global2[_wgslsmith_index_u32(arg_0, 23u)] ^ 52748u) % 32u), 14u)]);
    let var_3 = !(!(global0.x >= -430f) || !(!var_0)) || all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0, false), vec4<bool>(var_0, global4.x, var_0, var_0), vec4<bool>(var_0, false, var_0, global4.x)), true));
    return select(~(~_wgslsmith_sub_u32(3158u, var_2.x)), global2[_wgslsmith_index_u32(1u, 23u)], true) == ~(~_wgslsmith_mult_u32(1u, var_2.x));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(min(_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.a, 15672i, 27095i, u_input.a) >> (vec4<u32>(1u, 4294967295u, 23323u, 68374u) % vec4<u32>(32u))), -min(vec4<i32>(u_input.a, -1i, u_input.a, 23782i), vec4<i32>(19271i, 51450i, u_input.a, u_input.a))), firstLeadingBit(vec4<i32>(-u_input.a, _wgslsmith_mult_i32(1i, u_input.a), ~u_input.a, firstLeadingBit(2147483647i)))), ~max(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(57251u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)]), vec2<u32>(68123u, 52374u)), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30698u, 23u)], 23u)]), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 23u)], 23u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(44897u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)]), 23u)], 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 37026u)), func_3(global2[_wgslsmith_index_u32(1u, 23u)]));
    var var_1 = u_input.a;
    global1 = array<f32, 25>();
    let var_2 = select(select(vec3<bool>(false, var_0.c, !(!var_0.c)), select(select(select(vec3<bool>(var_0.c, false, false), vec3<bool>(global4.x, true, true), vec3<bool>(arg_0, false, false)), !vec3<bool>(true, global4.x, true), vec3<bool>(false, true, arg_0)), vec3<bool>(global4.x, select(var_0.c, false, true), all(vec4<bool>(false, arg_0, arg_0, false))), !vec3<bool>(arg_0, global4.x, global4.x)), !(!(!vec3<bool>(true, true, arg_0)))), !(!select(vec3<bool>(global4.x, false, false), vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, arg_0))), any(vec3<bool>(true, true, true)));
    global1 = array<f32, 25>();
    return vec3<bool>(false, var_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 14>();
    global4 = select(select(vec3<bool>(reverseBits(59019u) <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)] ^ global2[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], global4.x, !(-726f <= global0.x)), select(vec3<bool>(select(global4.x, global4.x, false), true, all(vec4<bool>(global4.x, global4.x, true, false))), !(!vec3<bool>(global4.x, false, global4.x)), true), 4294967295u <= func_1(~u_input.a, select(vec3<i32>(u_input.a, -57804i, -5401i), vec3<i32>(u_input.a, u_input.a, u_input.a), false))), !select(select(!vec3<bool>(true, true, global4.x), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, false, true)), !vec3<bool>(global4.x, true, true)), func_2(global4.x), all(vec4<bool>(global4.x, global4.x, false, true))), vec3<bool>(global4.x, global4.x, global4.x));
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 14u)] >> (reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)] ^ 15970u), 14u)] ^ min(_wgslsmith_mod_vec3_u32(vec3<u32>(13846u, global2[_wgslsmith_index_u32(71577u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23871u, global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53397u, 23u)], 23u)], 23u)], 71546u, 38784u), vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9877u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)])))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(39294u, 25u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(31257u << (var_0.x % 32u), 25u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(0u, 25u)], 500f))))), -vec3<i32>(u_input.a, u_input.a, (u_input.a | u_input.a) & countOneBits(1i)), ~(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(45757i, u_input.a, -2147483647i, u_input.a), vec4<i32>(-1i, 27694i, u_input.a, u_input.a)), u_input.a, 0i, max(u_input.a, -78134i))), var_0.x, var_0.x);
}

