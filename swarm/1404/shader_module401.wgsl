struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global1: array<i32, 4> = array<i32, 4>(106640i, i32(-2147483648), 27580i, 2147483647i);

var<private> global2: vec3<f32> = vec3<f32>(-768f, -1004f, -662f);

var<private> global3: i32 = -1i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-676f, global2.x, global2.x) * vec3<f32>(global2.x, 1516f, global2.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, global2.x, -297f)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.x)), 2161f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))))), vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-595f * -482f), true)), -177f)), _wgslsmith_div_vec4_i32(reverseBits(firstLeadingBit(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 4u)], u_input.d, u_input.d, global1[_wgslsmith_index_u32(46725u, 4u)]))), vec4<i32>(u_input.c.x, u_input.d, -1i, 1i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, global2.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -367f, global2.x) * vec3<f32>(589f, -1000f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(-497f * global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - -735f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(1000f, global2.x), _wgslsmith_f_op_f32(-770f * 403f), _wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 664f, 1326f), vec3<f32>(-1554f, 2166f, 714f))), all(vec2<bool>(false, false)))))));
    let var_1 = -341f;
    var var_2 = var_0.d.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 297f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, 997f))), vec2<f32>(-313f, -249f), select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), var_0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, vec3<bool>(false, true, false)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1120f, 218f, -1361f), var_0.d))), vec3<f32>(-720f, -283f, var_0.b.x))), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)) | all(vec3<bool>(false, true, true)))));
    return -623f;
}

fn func_2(arg_0: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1301f)), -124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-global2.x), 1693f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1000f, 248f, global2.x), vec4<f32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 271f, -889f, 121f), vec4<f32>(-461f, global2.x, -192f, -1100f)), true))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, arg_0.x)), _wgslsmith_f_op_f32(min(661f, -284f))), global2.yy) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), -1477f)))), arg_0.x));
    var var_2 = select(vec2<bool>(true, true), !select(arg_0.wx, !arg_0.zy, vec2<bool>(arg_0.x, true | arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -772f))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(874f, -982f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1127f, 107f) * _wgslsmith_div_vec3_f32(vec3<f32>(302f, global2.x, 836f), var_0.ywx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1000f) * vec2<f32>(global2.x, var_1.x))))), vec4<i32>(~global0.x, -global1[_wgslsmith_index_u32(24847u, 4u)], min(27973i, -36727i), _wgslsmith_add_i32(-u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.c.yz), _wgslsmith_mod_i32(global0.x, global0.x)))), vec3<f32>(_wgslsmith_div_f32(-1007f, 627f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(-1067f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(305f - -1209f), global2.x), false))));
    global3 = global0.x;
    return vec4<u32>(~11108u, ~38339u | u_input.a.x, 4294967295u, firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 59480u), 12277u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = arg_0.a;
    global1 = array<i32, 4>();
    global3 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70332u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 63158u), u_input.b.xx), u_input.b.x, _wgslsmith_sub_u32(0u, reverseBits(u_input.a.x))), vec4<u32>(u_input.b.x, 1u, u_input.b.x, _wgslsmith_add_u32(74318u, 33997u)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 9150u, 1u)), func_2(vec4<bool>(false, true, false, false))) % vec4<u32>(32u))), 4u)], arg_0.c.x);
    var var_0 = abs(vec4<u32>(u_input.a.x << (0u % 32u), _wgslsmith_sub_u32(select(firstLeadingBit(u_input.a.x), 14967u, false), 10019u), u_input.a.x, 80936u));
    var_0 = vec4<u32>(max(4294967295u, var_0.x), countOneBits(1u), 1u, abs(select(~reverseBits(u_input.b.x), ~var_0.x & 10118u, all(vec4<bool>(true, true, true, true)))));
    return global2.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    global3 = -2147483647i;
    let var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_0.x, true)) * _wgslsmith_f_op_f32(arg_1.a.x * 698f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(f32(-1f) * -259f))), 1400f), _wgslsmith_f_op_vec3_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(-var_0.d.yx), ~arg_1.c | -vec4<i32>(~(-14521i), -1i, 2147483647i | var_0.c.x, var_0.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, global2.x, global2.x) * arg_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-971f, var_0.d.x, var_0.d.x)) * arg_1.a)));
    global3 = global0.x;
    var var_2 = var_0.c.wyy;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-682f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(global2.x - -771f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(547f)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + global2.x), 1523f) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(Struct_1(vec3<f32>(global2.x, global2.x, 1155f), vec2<f32>(var_0.x, 279f), vec4<i32>(global0.x, -2147483647i, global0.x, u_input.d), vec3<f32>(global2.x, global2.x, var_0.x)), Struct_1(vec3<f32>(var_0.x, global2.x, 1146f), vec2<f32>(var_0.x, global2.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.d, -1i, 3076i), vec3<f32>(-1425f, 529f, -702f)), Struct_1(vec3<f32>(-1000f, 887f, -1834f), vec2<f32>(global2.x, -1682f), vec4<i32>(-12093i, global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<f32>(1600f, 1000f, global2.x)))), _wgslsmith_f_op_f32(223f * -569f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(sign(740f))), select(~vec4<i32>(u_input.d, 26395i, global0.x, u_input.c.x), ~vec4<i32>(global0.x, u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 29477i), select(true, false, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(331f, var_0.x, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -736f, var_0.x)))))), -236f, _wgslsmith_f_op_f32(min(-1571f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1000f, 1000f)), -1232f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1 - var_1) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1620f, var_0.x, var_1.x)), _wgslsmith_f_op_vec3_f32(step(var_1, var_1)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))) + var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-667f - -910f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(865f)), _wgslsmith_f_op_f32(global2.x * var_0.x)), vec2<f32>(global2.x, _wgslsmith_f_op_f32(1000f + var_1.x))))), vec4<i32>(0i, _wgslsmith_add_i32(i32(-1i) * -global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 4u)] << (~u_input.a.x % 32u)), -7325i, u_input.c.x), _wgslsmith_f_op_vec3_f32(sign(var_1)));
    let var_3 = vec2<u32>(u_input.a.x, 1u);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_1)))) * var_2.d), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + global2.x))))), _wgslsmith_mult_vec4_i32(abs(var_2.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.c.x, -26462i) ^ vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], var_2.c.x, -31418i, var_2.c.x), ~max(vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_3.x, 4u)], -1i, global0.x), var_2.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1691f, -774f)), _wgslsmith_f_op_vec3_f32(abs(var_2.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -203f, global2.x) + var_2.d))))));
    let var_4 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)));
    let var_5 = _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(-7451i, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.d, u_input.c.x), max(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(7428u, 4u)], -2147483647i, 0i, global0.x), var_2.c), _wgslsmith_sub_vec4_i32(var_2.c, vec4<i32>(var_2.c.x, global1[_wgslsmith_index_u32(42412u, 4u)], var_2.c.x, global1[_wgslsmith_index_u32(1u, 4u)]))), false), -vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(-1724i, u_input.d)), -2147483647i, ~u_input.d, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx);
}

