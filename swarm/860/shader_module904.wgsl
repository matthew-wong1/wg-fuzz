struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false));

var<private> global1: vec4<u32> = vec4<u32>(53768u, 1u, 14540u, 4294967295u);

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-256f, vec2<u32>(91165u, 4294967295u), vec3<u32>(1u, 47898u, 4294967295u)), Struct_1(470f, vec2<u32>(1u, 1u), vec3<u32>(0u, 26275u, 1u)), Struct_1(-746f, vec2<u32>(8378u, 4294967295u), vec3<u32>(0u, 19830u, 0u)), Struct_1(-1000f, vec2<u32>(0u, 4294967295u), vec3<u32>(5006u, 0u, 21752u)), Struct_1(-1675f, vec2<u32>(1u, 12949u), vec3<u32>(17307u, 43093u, 69430u)));

var<private> global3: array<Struct_1, 9>;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-478f, vec2<u32>(4294967295u, 10416u), vec3<u32>(15884u, 16801u, 1u)), Struct_1(-660f, vec2<u32>(0u, 29795u), vec3<u32>(16125u, 30224u, 76431u)), Struct_1(1494f, vec2<u32>(4294967295u, 10091u), vec3<u32>(4294967295u, 109900u, 16158u)), Struct_1(-1000f, vec2<u32>(83881u, 4294967295u), vec3<u32>(90087u, 1u, 4294967295u)), Struct_1(1099f, vec2<u32>(1u, 6680u), vec3<u32>(0u, 41446u, 93152u)), Struct_1(-298f, vec2<u32>(4039u, 1u), vec3<u32>(1u, 61479u, 43935u)), Struct_1(1471f, vec2<u32>(31474u, 0u), vec3<u32>(4294967295u, 19227u, 29042u)), Struct_1(-669f, vec2<u32>(51494u, 0u), vec3<u32>(0u, 23679u, 4294967295u)), Struct_1(-940f, vec2<u32>(52116u, 23262u), vec3<u32>(80667u, 1u, 22661u)), Struct_1(521f, vec2<u32>(13840u, 11716u), vec3<u32>(0u, 1u, 0u)), Struct_1(445f, vec2<u32>(0u, 881u), vec3<u32>(26595u, 0u, 48105u)), Struct_1(-1369f, vec2<u32>(12535u, 0u), vec3<u32>(1340u, 4294967295u, 3170u)), Struct_1(277f, vec2<u32>(28780u, 1u), vec3<u32>(45368u, 85601u, 30959u)), Struct_1(786f, vec2<u32>(1u, 4294967295u), vec3<u32>(12946u, 70644u, 25854u)), Struct_1(-963f, vec2<u32>(1u, 14255u), vec3<u32>(1u, 1u, 36290u)), Struct_1(-218f, vec2<u32>(32341u, 28488u), vec3<u32>(59718u, 7784u, 0u)), Struct_1(599f, vec2<u32>(4294967295u, 0u), vec3<u32>(30519u, 4294967295u, 1u)), Struct_1(-1680f, vec2<u32>(29019u, 0u), vec3<u32>(0u, 1u, 5222u)), Struct_1(1200f, vec2<u32>(9297u, 1u), vec3<u32>(4294967295u, 31156u, 0u)), Struct_1(-371f, vec2<u32>(45257u, 75033u), vec3<u32>(1u, 40191u, 0u)), Struct_1(1826f, vec2<u32>(28186u, 56835u), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(-1516f, vec2<u32>(104574u, 36046u), vec3<u32>(57818u, 1u, 41321u)), Struct_1(234f, vec2<u32>(81066u, 1u), vec3<u32>(4294967295u, 27292u, 27952u)), Struct_1(1000f, vec2<u32>(49781u, 0u), vec3<u32>(20743u, 16117u, 0u)), Struct_1(173f, vec2<u32>(92701u, 78318u), vec3<u32>(23539u, 39944u, 6557u)), Struct_1(509f, vec2<u32>(1u, 1u), vec3<u32>(5063u, 99920u, 22285u)), Struct_1(-496f, vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(1201f, vec2<u32>(15724u, 22533u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(-947f, vec2<u32>(33398u, 1u), vec3<u32>(27357u, 4294967295u, 1u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1111f - _wgslsmith_div_f32(-1808f, -842f)), _wgslsmith_f_op_f32(select(-148f, 1f, false)), global1.x < ~global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_div_f32(594f, 173f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1454f, -250f) - _wgslsmith_f_op_f32(f32(-1f) * -387f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f + 299f)))), -1512f));
    global2 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 4294967295u, _wgslsmith_clamp_u32(4294967295u, global1.x, ~global1.x)), vec3<u32>(0u ^ u_input.c, 64060u, 4294967295u));
    global2 = array<Struct_1, 5>();
    return firstTrailingBit(~(~_wgslsmith_dot_vec3_u32(~global1.wwz, global1.xzx)));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_div_u32(func_3(true, arg_1), _wgslsmith_add_u32(0u, 26439u)), select(~global1.x, _wgslsmith_mult_u32(max(3985u, global1.x), reverseBits(37233u)), true));
    var var_1 = (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~2064u, u_input.c, 4294967295u), vec4<u32>(global1.x, 63227u, u_input.c, 17843u) | vec4<u32>(var_0, 60996u, 4294967295u, 120250u)) & ~max(vec4<u32>(u_input.c, var_0, var_0, 0u) & vec4<u32>(1u, var_0, 0u, 0u), vec4<u32>(0u, global1.x, u_input.d.x, 5067u))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(~43908u, 13360u, 44852u, u_input.d.x), firstLeadingBit(vec4<u32>(u_input.c, _wgslsmith_sub_u32(4294967295u, 21653u), select(56088u, 132495u, false), 1u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(574f))))), -636f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(464f, 1078f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(128f, -2103f) - vec2<f32>(-1530f, -461f))))));
    var var_3 = global3[_wgslsmith_index_u32(var_1.x, 9u)];
    return global4[_wgslsmith_index_u32(u_input.c, 29u)];
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(-800f - 188f))))));
    let var_1 = u_input.c;
    let var_2 = global4[_wgslsmith_index_u32(4294967295u, 29u)];
    global0 = array<vec4<bool>, 3>();
    var var_3 = _wgslsmith_f_op_f32(-var_2.a);
    return func_2(true, true && !all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 9>();
    let var_0 = func_1();
    var var_1 = u_input.d.x;
    var_1 = global1.x;
    let var_2 = vec3<bool>(all(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), _wgslsmith_f_op_f32(ceil(1f)) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - -1704f), var_0.a)), !((u_input.b & (i32(-1i) * -1i)) < min(-5604i, _wgslsmith_div_i32(u_input.a, 29076i))));
    var var_3 = var_0;
    global1 = vec4<u32>(~88951u, func_1().c.x, global1.x, var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-952f, vec4<f32>(-960f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(-var_0.a)), var_3.a, 2846f), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.e.x, u_input.a, 0i, u_input.e.x), abs(u_input.e)), vec4<i32>(min(1i, u_input.a), u_input.e.x, select(2147483647i, u_input.a, true), u_input.b)), -1i));
}

