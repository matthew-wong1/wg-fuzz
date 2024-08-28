struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: Struct_1;

var<private> global2: array<bool, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = vec4<u32>(60479u, ~1u, max(96183u, 4294967295u), _wgslsmith_clamp_u32(0u, ~_wgslsmith_sub_u32(4294967295u, 8102u), firstLeadingBit(select(0u, 4294967295u, global2[_wgslsmith_index_u32(2266u, 3u)])))) & ~vec4<u32>(~8309u, ~(~1u), 53171u, 1u);
    global0 = array<vec2<i32>, 12>();
    let var_1 = Struct_1(global1.c, i32(-1i) * -global1.b, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + -1719f) * -426f)), -1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f))));
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(~global1.b, ~(-1i)) ^ ~countOneBits(71957i), abs(-5973i)), select(firstLeadingBit(vec3<i32>(~2147483647i, -22195i, _wgslsmith_mod_i32(u_input.b, 0i))), u_input.c.yyx, !(_wgslsmith_f_op_f32(arg_0.x - 567f) < -1000f)));
    var var_3 = var_1;
    return -reverseBits(~(~var_2));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = ~min(~u_input.c.zzy, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.xw))));
    return ~select(max(-vec2<i32>(var_0.x, -2147483647i), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(u_input.b, -1i)), arg_0)), ~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 2147483647i), global0[_wgslsmith_index_u32(~15953u, 12u)]), vec2<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], false, true, false)), any(!vec3<bool>(global2[_wgslsmith_index_u32(11237u, 3u)], true, true))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_clamp_u32(min(0u, 1u), _wgslsmith_clamp_u32(5367u, 1u, 4294967295u), firstLeadingBit(20146u)), ~57767u, 1u, ~1u)), abs(vec4<u32>(1u, _wgslsmith_clamp_u32(firstTrailingBit(57690u), 1u, ~27682u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 77815u, 46073u), firstLeadingBit(39232u)), 1u)));
    var var_1 = vec3<i32>(max(-1i, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(20887i, 2147483647i)), global0[_wgslsmith_index_u32(4294967295u, 12u)] ^ vec2<i32>(arg_2.b, global1.b))), 14631i, _wgslsmith_dot_vec3_i32(firstTrailingBit(select(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.b, global1.b, u_input.b), u_input.d.wwz), -vec3<i32>(-2147483647i, global1.b, arg_2.b), global2[_wgslsmith_index_u32(~var_0, 3u)])), reverseBits(~u_input.c.zxy)));
    var_1 = vec3<i32>(global1.b, abs(~(11888i & arg_2.b) >> (countOneBits(var_0) % 32u)), 22685i);
    var var_2 = !global2[_wgslsmith_index_u32(0u, 3u)];
    global2 = array<bool, 3>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x + -677f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - 413f), arg_1, _wgslsmith_f_op_f32(-arg_2.c.x))), _wgslsmith_clamp_i32(2147483647i, 1i, global1.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-644f, 798f, arg_1, global1.a.x) - vec4<f32>(-465f, 260f, arg_2.c.x, global1.c.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_2.c), _wgslsmith_div_vec4_f32(vec4<f32>(130f, global1.c.x, global1.a.x, -473f), vec4<f32>(1380f, 890f, arg_2.c.x, 1053f)), true))))));
}

fn func_1() -> f32 {
    global1 = Struct_1(global1.a, ~global1.b, global1.a);
    let var_0 = func_4(_wgslsmith_add_vec2_i32(reverseBits(func_2(2147483647i, Struct_1(vec4<f32>(global1.c.x, 1747f, -656f, global1.a.x), u_input.d.x, global1.a))), reverseBits(vec2<i32>(u_input.d.x << (440u % 32u), firstLeadingBit(0i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(-global1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 422f, global1.c.x, -636f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1569f, -1154f, global1.a.x, global1.a.x) + global1.c))), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(62901u, 3u)], false, true), select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)], true, global2[_wgslsmith_index_u32(14927u, 3u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 3u)], false), global2[_wgslsmith_index_u32(1u, 3u)]), all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(5420u, 3u)]))))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), ~vec2<i32>(-1i, 0i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, global1.a.x, global1.c.x, global1.c.x), vec4<f32>(global1.a.x, global1.c.x, -2282f, global1.a.x))))), vec2<bool>(false, true));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(3161f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) * -501f));
    let var_3 = max(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_add_u32(1u, ~abs(45945u))), 1u);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_1()), -1611f), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -290f, _wgslsmith_f_op_f32(max(764f, -323f)), -132f) * _wgslsmith_f_op_vec4_f32(exp2(global1.c)))));
    global2 = array<bool, 3>();
    var var_1 = global1.c.x;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1652f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1014f - -614f))), _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) * 1981f))), -1667f));
    var_1 = 1118f;
    let var_3 = !(!select(select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(global2[_wgslsmith_index_u32(countOneBits(46077u), 3u)], true, global2[_wgslsmith_index_u32(0u, 3u)] & true, any(vec2<bool>(global2[_wgslsmith_index_u32(75062u, 3u)], global2[_wgslsmith_index_u32(85956u, 3u)]))), global2[_wgslsmith_index_u32(~1u, 3u)]));
    var var_4 = func_4(max(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(0u, 19942u, 0u), 8485u), 12u)], -(u_input.c.yx >> (vec2<u32>(58064u, 56238u) % vec2<u32>(32u))) | u_input.c.zw), 182f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-2452f)), 860f, -444f, 1093f)), _wgslsmith_clamp_i32(global1.b, 11113i, _wgslsmith_clamp_i32(~(-9821i), -1i, -23678i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)))), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(max(97109u, 58521u), reverseBits(1u)), _wgslsmith_mod_u32(~7360u, _wgslsmith_dot_vec4_u32(vec4<u32>(56782u, 4294967295u, 55371u, 0u), vec4<u32>(37979u, 30403u, 4294967295u, 1920u)))), 3u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~abs(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global1.b, global1.b, 1i, global1.b))), _wgslsmith_mult_i32(0i, var_4.b)), _wgslsmith_sub_i32(-1i, global1.b), firstLeadingBit(func_4(-select(vec2<i32>(var_4.b, u_input.b), vec2<i32>(-24248i, -1i), false), _wgslsmith_f_op_f32(-196f * global1.a.x), func_4(vec2<i32>(var_0.b, global1.b), _wgslsmith_f_op_f32(-277f + 738f), func_4(global0[_wgslsmith_index_u32(4294967295u, 12u)], 1001f, Struct_1(vec4<f32>(650f, var_0.c.x, -1212f, var_0.c.x), u_input.d.x, var_0.a), var_3.yz), vec2<bool>(false, var_3.x)), vec2<bool>(true, all(vec2<bool>(false, false)))).b), _wgslsmith_mod_i32(~u_input.a & ~u_input.b, var_4.b), 28178u);
}

