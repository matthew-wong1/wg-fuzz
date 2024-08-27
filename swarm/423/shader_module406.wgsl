struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(2147483647i, Struct_1(true, vec4<f32>(-285f, 859f, -230f, -843f), vec4<u32>(26941u, 1u, 85880u, 4294967295u), vec4<u32>(2265u, 1u, 4881u, 0u), vec3<f32>(1307f, 254f, 367f)), Struct_1(false, vec4<f32>(-1477f, -1058f, 1004f, -1240f), vec4<u32>(4294967295u, 0u, 42000u, 20950u), vec4<u32>(1u, 22617u, 4294967295u, 4294967295u), vec3<f32>(-239f, -1877f, 806f)));

var<private> global1: array<f32, 19> = array<f32, 19>(-1335f, 457f, 1399f, -415f, 883f, 1250f, -538f, -1794f, -1448f, -2527f, 1044f, 1546f, -1348f, -538f, -112f, 607f, 1000f, 125f, 1376f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = ~_wgslsmith_clamp_u32(firstTrailingBit(global0.b.d.x), global0.b.d.x, global0.b.d.x);
    global0 = Struct_2(~(_wgslsmith_mod_i32(u_input.a, u_input.a) | -42333i), global0.c, arg_2.b);
    var var_1 = global0.a;
    var var_2 = -1i;
    let var_3 = _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15511i, 28143i, global0.a, -1i), vec4<i32>(44152i, 0i, global0.a, -2147483647i) ^ vec4<i32>(u_input.a, 0i, arg_2.a, arg_2.a)), 13064i, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(1i, 10139i))))), vec3<i32>(_wgslsmith_add_i32(-44231i, global0.a), -36911i, -(i32(-1i) * -1i)));
    return firstLeadingBit(u_input.d);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = vec2<bool>(true, (abs(55836u | u_input.d.x) == _wgslsmith_dot_vec2_u32(~global0.b.c.xy, func_3(vec2<bool>(global0.b.a, arg_0.a), vec2<u32>(20797u, u_input.c), Struct_2(47640i, Struct_1(global0.b.a, arg_0.b, arg_0.c, vec4<u32>(4294967295u, 4294967295u, arg_0.c.x, global0.c.c.x), arg_0.b.xwz), Struct_1(arg_0.a, arg_0.b, global0.c.d, global0.b.c, vec3<f32>(global0.b.e.x, -402f, global0.c.b.x)))))) | select(all(select(vec2<bool>(arg_0.a, global0.b.a), vec2<bool>(false, true), false)), (global0.b.c.x <= 78358u) != true, global0.b.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.b.e))))));
    let var_2 = vec4<i32>(1i, ~countOneBits(global0.a), global0.a, global0.a);
    var var_3 = global0.a;
    var var_4 = u_input.b.x >> (42423u % 32u);
    return ~(~87025u);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = global0.c.a;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1514f, global1[_wgslsmith_index_u32(global0.b.d.x, 19u)])) + _wgslsmith_f_op_f32(min(-1537f, 1920f))) * 543f))), _wgslsmith_f_op_f32(floor(global0.b.e.x)));
    let var_2 = u_input.b;
    global0 = Struct_2(global0.a, Struct_1(all(!(!vec2<bool>(false, global0.c.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 147f) - var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-878f)))), _wgslsmith_f_op_f32(step(281f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(12608u, 19u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * global1[_wgslsmith_index_u32(arg_0, 19u)]))), ~(global0.c.c ^ firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 57069u, 4475u))), countOneBits(vec4<u32>(u_input.c, u_input.d.x | arg_0, ~arg_0, u_input.c)), _wgslsmith_div_vec3_f32(vec3<f32>(-146f, _wgslsmith_f_op_f32(665f * 2746f), 511f), global0.c.e)), global0.b);
    var var_3 = abs(-abs(~_wgslsmith_sub_i32(var_2.x, var_2.x)));
    return global0.b;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_2(23080i, func_4(func_2(Struct_1(true, global0.c.b, firstLeadingBit(global0.b.c), ~global0.c.c, global0.b.e))), Struct_1(-197f > _wgslsmith_div_f32(global0.c.b.x, _wgslsmith_div_f32(-435f, 273f)), global0.c.b, vec4<u32>(~reverseBits(1u), reverseBits(reverseBits(global0.c.d.x)), u_input.d.x, _wgslsmith_add_u32(62422u, u_input.d.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(global0.c.c.x, 0u, global0.b.d.x, global0.b.d.x), ~(~vec4<u32>(19053u, u_input.d.x, u_input.c, 2865u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.e))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c.c.x, 19u)]))) - _wgslsmith_f_op_f32(global0.b.e.x * _wgslsmith_f_op_f32(653f - global1[_wgslsmith_index_u32(27064u, 19u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 19u)]) * -1495f))));
    global0 = Struct_2(select(-2147483647i, ~(~(-25137i)), true), func_4(11784u), func_4(_wgslsmith_sub_u32(global0.c.c.x, _wgslsmith_clamp_u32(7708u, u_input.d.x, 67591u)) | ~(u_input.c ^ global0.c.c.x)));
    var var_1 = Struct_2(min(abs(10162i), -u_input.b.x), global0.c, Struct_1(global0.c.a, global0.c.b, _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.c.x, 0u, u_input.c, u_input.d.x), global0.b.d, global0.c.d), ~global0.c.d), global0.c.c & abs(~global0.b.c), vec3<f32>(175f, 1431f, _wgslsmith_f_op_f32(sign(-2006f)))));
    var var_2 = countOneBits(vec2<i32>(-1i, u_input.b.x));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(~u_input.a, global0.b, func_1(vec2<bool>(!global0.b.a && !global0.c.a, false)));
    global1 = array<f32, 19>();
    var var_0 = func_1(vec2<bool>(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~25610u, 19u)])) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(0u).d.x, 19u)]), false));
    let var_1 = !(!(!select(vec4<bool>(global0.c.a, false, var_0.a, false), select(vec4<bool>(var_0.a, global0.c.a, var_0.a, var_0.a), vec4<bool>(true, false, global0.c.a, true), false), func_4(var_0.c.x).a)));
    let var_2 = Struct_1(!(!var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c.b), var_0.b))), max(max(global0.c.d, vec4<u32>(u_input.c, global0.c.d.x, ~37680u, 105896u)), vec4<u32>(~u_input.d.x, _wgslsmith_mult_u32(0u << (0u % 32u), 1u), 104099u, 22926u)), func_1(select(vec2<bool>(var_1.x, -61501i > u_input.a), var_1.zy, !var_1.xy)).d, global0.b.e);
    var var_3 = func_1(!vec2<bool>(!(global0.a > u_input.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x >> (u_input.c % 32u));
}

