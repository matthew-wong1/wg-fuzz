struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: bool;

var<private> global2: array<bool, 26>;

var<private> global3: vec4<f32> = vec4<f32>(-122f, 2817f, -2487f, -888f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<i32> {
    global0 = array<vec4<bool>, 23>();
    let var_0 = select(firstTrailingBit(select(countOneBits(u_input.b.yxz), u_input.b.zxz & vec3<u32>(0u, 34414u, 0u), vec3<bool>(true, false, true))) ^ vec3<u32>(u_input.b.x, ~u_input.a, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), ~firstLeadingBit(_wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.e, u_input.a, 1u), u_input.b.xzx, false), u_input.b.xwz)), all(vec3<bool>(global2[_wgslsmith_index_u32(5146u >> (u_input.a % 32u), 26u)], true & !arg_0.x, false)));
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(77195u, var_0.x, u_input.b.x, var_0.x), ~u_input.b, true), u_input.b), var_0.x));
    let var_2 = ~(~4294967295u);
    var var_3 = Struct_4(vec3<i32>(arg_1.x & (-10384i << (_wgslsmith_sub_u32(var_0.x, u_input.a) % 32u)), ~arg_1.x, arg_1.x), Struct_1(reverseBits(~var_0.x) << (var_1.a % 32u)), u_input.a);
    return vec2<i32>(arg_1.x, ~abs(8841i));
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_add_i32(47119i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_3(vec2<bool>(true, false), vec2<i32>(u_input.c, -2147483647i)), -vec2<i32>(u_input.d, -1i)), -5398i), -u_input.c));
    let var_1 = all(global0[_wgslsmith_index_u32(u_input.e, 23u)]);
    global1 = true;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1643f))), _wgslsmith_f_op_f32(424f * global3.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(745f, 321f, -1000f, 1719f), vec4<f32>(var_2, global3.x, var_2, global3.x)))), vec4<f32>(150f, var_2, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -588f)), !select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.e, 26u)]), global0[_wgslsmith_index_u32(u_input.a, 23u)], true))))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, -2295f, -1247f, 431f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-805f, global3.x, -3001f, var_2))), vec4<bool>(!(global2[_wgslsmith_index_u32(u_input.e, 26u)] || global2[_wgslsmith_index_u32(u_input.a, 26u)]), 4294967295u > (103472u | u_input.e), true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.wz), u_input.b.zy), 26u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2, var_2, -2015f, 1000f)))))))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> u32 {
    var var_0 = arg_0.a.x;
    let var_1 = u_input.e;
    global0 = array<vec4<bool>, 23>();
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, arg_1.x, _wgslsmith_f_op_f32(max(global3.x, 522f)), _wgslsmith_div_f32(552f, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1000f, global3.x, 1163f) - vec4<f32>(807f, arg_1.x, global3.x, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 423f) + -2007f), 592f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yy));
    return ~(~_wgslsmith_div_u32(var_1, 17841u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = select(!vec3<bool>(_wgslsmith_f_op_f32(floor(global3.x)) >= -603f, select(!global2[_wgslsmith_index_u32(arg_1, 26u)], !global2[_wgslsmith_index_u32(25703u, 26u)], !global2[_wgslsmith_index_u32(1u, 26u)]), (u_input.e << (32409u % 32u)) != u_input.e), select(vec3<bool>(!global2[_wgslsmith_index_u32(u_input.a, 26u)], !global2[_wgslsmith_index_u32(arg_1, 26u)], true), vec3<bool>(true, true, true), any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(85869u, 26u)]), !vec2<bool>(global2[_wgslsmith_index_u32(26678u, 26u)], global2[_wgslsmith_index_u32(47325u, 26u)]), select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(65994u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), global2[_wgslsmith_index_u32(0u, 26u)])))), all(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(18625u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<bool>(false, true, true), 1i > u_input.d), vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1, 26u)], true, false)), -40066i == u_input.d, !global2[_wgslsmith_index_u32(u_input.e, 26u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(arg_1, 26u)], global2[_wgslsmith_index_u32(u_input.e, 26u)]))));
    let var_1 = Struct_2(Struct_1(1u), u_input.a);
    var var_2 = arg_2.x;
    let var_3 = abs(min(2147483647i, ~u_input.c));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(exp2(arg_0)), 1146f, global3.x));
    return !var_0.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    var var_0 = func_4(-279f, func_1(Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(20202i, 2147483647i, u_input.c), vec3<i32>(-14982i, u_input.c, u_input.d)) >> (u_input.b.yzy % vec3<u32>(32u)), Struct_1(0u), ~19982u), global3.zyy), vec4<i32>(u_input.d, -90240i, ~u_input.d, u_input.c));
    var var_1 = func_4(_wgslsmith_div_f32(global3.x, global3.x), ~_wgslsmith_div_u32(~61698u, _wgslsmith_clamp_u32(113554u, 4294967295u, u_input.e)) | 0u, vec4<i32>(-38204i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.d, -16758i, u_input.c, 35456i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.d, -1i, u_input.d), vec4<i32>(0i, u_input.c, u_input.d, -1i)))), -u_input.c ^ u_input.c, u_input.c)).x;
    global0 = array<vec4<bool>, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, global3.x, global3.x, 283f) * vec4<f32>(2137f, global3.x, global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 675f, -656f, -352f) - vec4<f32>(global3.x, global3.x, -1000f, global3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, -1000f, 738f), vec4<f32>(1039f, global3.x, global3.x, -1000f), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -790f, global3.x, global3.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(738f, 232f, 800f, global3.x) - vec4<f32>(-2599f, 452f, global3.x, global3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~135296u);
}

