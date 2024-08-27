struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, 45627u, vec2<u32>(38293u, 1u), true), Struct_1(0u, 0u, vec2<u32>(48346u, 3713u), true));

var<private> global1: array<u32, 30> = array<u32, 30>(3035u, 17011u, 17501u, 1803u, 80395u, 1u, 4294967295u, 4294967295u, 44739u, 2683u, 17184u, 1u, 1u, 3993u, 89375u, 0u, 32896u, 65926u, 0u, 42491u, 0u, 72352u, 1u, 53625u, 22784u, 34207u, 0u, 41075u, 1u, 0u);

var<private> global2: array<vec4<i32>, 7>;

var<private> global3: Struct_2 = Struct_2(Struct_1(0u, 87720u, vec2<u32>(62404u, 0u), true), Struct_1(1u, 4294967295u, vec2<u32>(4294967295u, 0u), false));

var<private> global4: array<vec2<bool>, 13>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = 0u;
    let var_4 = Struct_1(firstTrailingBit(~max(1u, ~u_input.b)), reverseBits(1u), ~_wgslsmith_add_vec2_u32(global3.a.c, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(var_1.a.c.x, 30u)]), vec2<u32>(28875u, 43749u))), global3.a.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1245f)));
}

fn func_1() -> Struct_1 {
    let var_0 = -45953i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-121f, 1783f, -426f, -1000f), vec4<f32>(1123f, -811f, -1370f, -568f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(vec3<i32>(2147483647i, u_input.e.x, -18566i), global3.a, vec4<i32>(u_input.e.x, var_0, var_0, var_0), Struct_2(global0.a, Struct_1(global1[_wgslsmith_index_u32(20922u, 30u)], 77344u, vec2<u32>(51858u, 0u), true)))), _wgslsmith_div_f32(-1020f, -1193f), _wgslsmith_div_f32(396f, 1644f), _wgslsmith_f_op_f32(f32(-1f) * -1185f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-626f, 781f, -1048f, 464f), vec4<f32>(875f, 228f, -1080f, 959f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-325f, 2634f, -689f, 1664f))))));
    global1 = array<u32, 30>();
    global2 = array<vec4<i32>, 7>();
    let var_2 = global0.a;
    return global3.a;
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    global2 = array<vec4<i32>, 7>();
    var var_0 = global0.a;
    let var_1 = false;
    let var_2 = select(vec3<bool>(true, arg_1, arg_1), select(!vec3<bool>(any(vec4<bool>(var_0.d, true, var_0.d, arg_1)), true, var_0.d), vec3<bool>(false, false, true), !select(!vec3<bool>(arg_1, false, global0.b.d), vec3<bool>(var_0.d, false, true), vec3<bool>(var_1, arg_1, global0.a.d))), select(vec3<bool>(global0.a.d, var_1, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, global0.a.d), vec3<bool>(var_1, true, global0.b.d)), !vec3<bool>(var_1, true, global3.a.d), !vec3<bool>(var_1, global3.b.d, arg_1)), vec3<bool>(true, true, true), select(!vec3<bool>(false, var_0.d, var_1), !vec3<bool>(arg_1, global3.b.d, var_1), !var_0.d)), !select(!vec3<bool>(global0.a.d, false, true), !vec3<bool>(true, global3.a.d, var_1), any(vec3<bool>(true, arg_1, false)))));
    let var_3 = Struct_1((abs(~2099u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_0.c)) & 53788u, 1u, _wgslsmith_add_vec2_u32(min(vec2<u32>(5517u, global0.b.c.x), ~vec2<u32>(23015u, var_0.c.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(71949u, 0u), global0.a.c)) >> (_wgslsmith_sub_vec2_u32(min(u_input.c, ~global3.b.c), vec2<u32>(u_input.b | 0u, 0u)) % vec2<u32>(32u)), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) - _wgslsmith_div_f32(-1791f, -317f))) * _wgslsmith_f_op_f32(572f - _wgslsmith_f_op_f32(func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(-69753i, arg_0, 12441i), vec3<i32>(-2147483647i, 0i, arg_0)), Struct_1(1u, min(var_3.b, global3.b.c.x), global0.a.c, var_2.x), global2[_wgslsmith_index_u32(abs(1u), 7u)], Struct_2(func_1(), Struct_1(39121u, var_0.a, global3.a.c, global0.a.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(), global3.a);
    global3 = Struct_2(func_1(), func_1());
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(f32(-1f) * -184f)) * _wgslsmith_div_f32(336f, -547f));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(u_input.e.x, u_input.e.x), true))));
    global3 = Struct_2(global0.a, func_1());
    var var_1 = func_1();
    let var_2 = -1292f;
    var var_3 = Struct_1(abs(0u), func_1().c.x, ~(~reverseBits(~vec2<u32>(var_1.c.x, global0.a.b))), any(select(vec4<bool>(any(vec3<bool>(var_1.d, global3.a.d, false)), var_1.d && true, false, false), select(vec4<bool>(global3.a.d, true, global0.a.d, var_1.d), !vec4<bool>(global0.b.d, global0.b.d, global0.a.d, global0.a.d), !vec4<bool>(var_1.d, global0.a.d, true, var_1.d)), all(select(vec2<bool>(var_1.d, global3.b.d), vec2<bool>(false, var_1.d), var_1.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, ~22802u), var_1.a, ~487u), select(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i), !vec3<bool>(false, var_1.d, global3.a.d)), vec3<i32>(28606i, -u_input.e.x, u_input.e.x ^ -7735i), -firstTrailingBit(vec3<i32>(u_input.e.x, 24051i, 0i))), -select(vec3<i32>(-2147483647i, -30815i, u_input.e.x), vec3<i32>(-1i, -46315i, u_input.e.x), vec3<bool>(var_1.d, global3.b.d, var_1.d)) ^ ~(~vec3<i32>(2147483647i, u_input.e.x, u_input.e.x)), true), 39641u);
}

