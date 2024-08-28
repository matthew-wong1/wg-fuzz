struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(2147483647i, 22557i), vec2<i32>(-2843i, 1i), vec2<i32>(-41110i, -1i));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(true, vec4<f32>(-660f, 1000f, -836f, -1071f)), Struct_1(false, vec4<f32>(-1395f, 1523f, 1000f, -647f)), Struct_1(false, vec4<f32>(-200f, -1143f, 205f, 906f)), Struct_1(true, vec4<f32>(-1894f, 2673f, 1000f, -3097f)), Struct_1(true, vec4<f32>(194f, 1059f, -1295f, -1653f)), Struct_1(true, vec4<f32>(694f, 263f, -1146f, 1167f)), Struct_1(true, vec4<f32>(-558f, 651f, -353f, 1485f)), Struct_1(false, vec4<f32>(251f, 813f, -1832f, 319f)), Struct_1(true, vec4<f32>(142f, -2143f, 1428f, 1000f)), Struct_1(true, vec4<f32>(1315f, 911f, -1803f, -1784f)));

var<private> global2: array<vec3<bool>, 22>;

var<private> global3: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(78792u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(25071u, 39450u), vec2<u32>(15819u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x) - 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -598f));
    global0 = array<vec2<i32>, 3>();
    let var_1 = 1229f;
    var var_2 = _wgslsmith_dot_vec4_i32(u_input.c << (vec4<u32>(56240u, 1u, _wgslsmith_mod_u32(~85010u, u_input.a.x), firstTrailingBit(1u)) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(58314i, u_input.c.x)), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c.x, 1i, u_input.c.x), vec4<i32>(5266i, 36381i, 15508i, u_input.c.x)) >> (_wgslsmith_mult_u32(u_input.d, 12837u) % 32u)) & ~u_input.c);
    var var_3 = 559f;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) * 487f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(arg_0.x, 10u)])), -1512f, _wgslsmith_f_op_f32(f32(-1f) * -107f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1299f, -707f, -331f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2900f, -1219f, 1000f)), any(vec4<bool>(arg_1, arg_1, false, true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1490f, -1435f, 490f), vec3<f32>(-399f, 539f, -181f)), vec3<f32>(400f, 503f, 648f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1606f, 719f, 554f), vec3<f32>(-1621f, -2235f, 1379f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -1000f, 1775f))))));
    let var_1 = select(global2[_wgslsmith_index_u32(select(4294967295u, ~(~(0u << (u_input.a.x % 32u))), all(vec4<bool>(true, all(vec2<bool>(arg_1, true)), true, !arg_1))), 22u)], vec3<bool>(!any(global2[_wgslsmith_index_u32(4294967295u, 22u)]) & arg_1, arg_1, all(!global2[_wgslsmith_index_u32(~arg_0.x, 22u)])), any(vec3<bool>(true, arg_1, all(vec2<bool>(false, true)))));
    let var_2 = ~(~(-3233i));
    let var_3 = global1[_wgslsmith_index_u32(~338u, 10u)];
    var var_4 = vec4<bool>(true, !(any(var_1.yx) | any(select(vec4<bool>(var_3.a, var_3.a, true, var_1.x), vec4<bool>(true, var_1.x, arg_1, true), vec4<bool>(false, false, var_3.a, var_3.a)))), !all(vec2<bool>(false, any(vec4<bool>(true, var_1.x, var_3.a, true)))), !any(!vec4<bool>(false, true, arg_1, arg_1)) && arg_1);
    return ~(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 11360u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.d, arg_0.x, arg_0.x), vec4<u32>(4294967295u, arg_0.x, 4294967295u, 4294967295u)))));
}

fn func_1() -> vec4<u32> {
    global2 = array<vec3<bool>, 22>();
    global3 = array<vec2<u32>, 4>();
    global2 = array<vec3<bool>, 22>();
    var var_0 = reverseBits(u_input.b.x);
    global1 = array<Struct_1, 10>();
    return vec4<u32>(u_input.d & _wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 97107u, 0u))), ~vec4<u32>(63474u, u_input.a.x, 20013u, u_input.b.x) >> (vec4<u32>(1u, 38910u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(45774u, u_input.d)), 2294u), _wgslsmith_sub_u32(u_input.a.x ^ u_input.b.x, u_input.a.x), 4294967295u), ~34088u), select(_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(43790u, u_input.d), ~19202u)), 0u, false), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.d, 33120u, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u)), _wgslsmith_sub_vec4_u32(func_2(vec3<u32>(u_input.d, u_input.b.x, 0u), false), vec4<u32>(u_input.a.x, u_input.d, 0u, 0u) >> (vec4<u32>(1u, u_input.a.x, 13880u, 39003u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(3187u, u_input.a.x, u_input.b.x, 13374u) & vec4<u32>(u_input.a.x, 4294967295u, 1u, 0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.a.x), vec4<u32>(10924u, 0u, u_input.a.x, 13720u) << (vec4<u32>(u_input.a.x, 38392u, 35729u, 0u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(16039u, u_input.a.x, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d), global3[_wgslsmith_index_u32(u_input.b.x, 4u)])), func_1()), 10u)];
    let var_1 = Struct_1(false | (var_0.b.x <= -487f), var_0.b);
    var_0 = Struct_1(any(select(vec2<bool>(true, var_0.a), !select(vec2<bool>(var_0.a, true), vec2<bool>(false, false), vec2<bool>(var_1.a, true)), !var_1.a || any(vec3<bool>(var_1.a, var_1.a, var_0.a)))), var_0.b);
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 10u)];
    var var_3 = Struct_1(var_2.a, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.yy);
}

