struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(0u, 0u, 4294967295u, 79314u, 4294967295u, 0u, 1u, 1u, 0u, 12805u, 0u, 48148u, 43375u, 4294967295u, 8725u, 36228u, 0u, 57135u, 17409u, 1497u, 125308u, 15966u, 1378u, 1u, 14340u);

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(426f, 158f, 1000f, -762f), vec4<f32>(442f, 1362f, -1000f, -528f), vec4<f32>(1132f, 333f, 246f, -1037f), vec4<f32>(-785f, 1000f, -1711f, 124f), vec4<f32>(-511f, -357f, 1953f, 303f), vec4<f32>(-308f, 736f, -984f, -1125f), vec4<f32>(1000f, 440f, 258f, -195f), vec4<f32>(-609f, 2080f, -1000f, -1340f), vec4<f32>(254f, -1095f, -1233f, -702f), vec4<f32>(577f, 2176f, -898f, -1000f), vec4<f32>(1612f, -500f, -1000f, 933f), vec4<f32>(660f, -212f, 112f, -169f), vec4<f32>(647f, 705f, -398f, -878f), vec4<f32>(-912f, -514f, 556f, 683f), vec4<f32>(-1000f, 1267f, -1779f, 579f), vec4<f32>(113f, -1457f, 1200f, 1022f), vec4<f32>(1625f, 655f, 1191f, -1472f), vec4<f32>(-1000f, 264f, 100f, 1000f), vec4<f32>(-1739f, 107f, -1385f, 658f), vec4<f32>(1074f, 543f, -1807f, 1224f), vec4<f32>(-1234f, 1771f, -864f, 1177f));

var<private> global2: Struct_1;

var<private> global3: array<u32, 20>;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~1u, 20u)], 20u)], 3u)];
    let var_1 = vec4<bool>(false, (_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), abs(vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], arg_0.x, u_input.a.x))) | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)]), vec3<u32>(u_input.a.x, 63017u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10405u, 20u)], 20u)])), _wgslsmith_clamp_vec3_u32(vec3<u32>(41043u, 21060u, 1u), arg_0, arg_0))) != ~1u, true, !(_wgslsmith_f_op_f32(-global2.a) <= -627f));
    let var_2 = true;
    global1 = array<vec4<f32>, 21>();
    let var_3 = select(!var_1.xxw, var_1.yxw, select(!(!vec3<bool>(var_1.x, var_2, false)), select(!select(var_1.yyz, var_1.ywz, false), var_1.zyx, true != (var_2 == var_2)), all(select(vec3<bool>(true, true, true), var_1.yyz, var_1.wwy))));
    return _wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-267f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -965f))), _wgslsmith_f_op_f32(-1007f - _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1179f + -1000f)))))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global2 = Struct_1(-1775f, _wgslsmith_f_op_f32(sign(-173f)));
    global4 = array<Struct_1, 3>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-469f, _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, 315f)));
    var var_1 = Struct_1(1760f, var_0.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.yz), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0, arg_3.yy)))))));
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1671f, global2.b)));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u & global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 20u)], 20u)], 25u)], _wgslsmith_dot_vec3_u32(vec3<u32>(5646u, global3[_wgslsmith_index_u32(1u, 20u)], u_input.a.x), vec3<u32>(59549u, global3[_wgslsmith_index_u32(24546u, 20u)], 1u))), 1u)), 20u)]), 3u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(2016f, 1897f)), 1987f);
    let var_3 = func_4(_wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(func_3(~vec3<u32>(u_input.a.x, 20706u, 2653u), arg_1.x, -1i, arg_1.yz))), 42037u, var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, var_1.b, 691f) - vec3<f32>(global2.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 990f, -279f)))))) >= _wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 20u)], u_input.a.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(109984u, 25u)], 20u)]))), ~(~vec3<u32>(69246u, 1u, 41346u)) << ((~vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(1u, 20u)]) << (reverseBits(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22290u, 25u)], 20u)], 20u)], 25u)], 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = array<u32, 25>();
    return Struct_1(-1772f, _wgslsmith_f_op_f32(f32(-1f) * -398f));
}

fn func_1() -> Struct_1 {
    let var_0 = firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-8453i, u_input.b, 0i) & (vec3<i32>(u_input.b, u_input.b, -1i) ^ vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(_wgslsmith_sub_i32(39977i, 37310i), _wgslsmith_mult_i32(21351i, u_input.b), u_input.b)));
    let var_1 = func_2(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.x, 19013i, var_0.x), vec4<i32>(var_0.x, u_input.b, 2147483647i, u_input.b) | vec4<i32>(2147483647i, var_0.x, var_0.x, u_input.b)) | -(u_input.b >> (u_input.a.x % 32u)), 0i), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), false), true));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(0u, abs(~u_input.a.x)), max(_wgslsmith_sub_u32(reverseBits(u_input.a.x | global3[_wgslsmith_index_u32(0u, 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)])) & func_4(var_1.a, 10760u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 25u)], 3u)], vec3<f32>(-418f, 982f, -312f)), 25u)]), ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), ~u_input.a.x, ~_wgslsmith_add_u32(u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 25u)]));
    let var_3 = _wgslsmith_sub_u32(~(~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 37199u), 20u)]) << (48252u % 32u), u_input.a.x);
    var var_4 = var_1;
    return func_2(_wgslsmith_add_vec2_i32(~select(vec2<i32>(-47791i, u_input.b) & vec2<i32>(var_0.x, u_input.b), var_0.zz & vec2<i32>(2147483647i, -6202i), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), ~var_0.yz), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = !(!(!(!vec3<bool>(arg_1, false, false))));
    global3 = array<u32, 20>();
    global0 = array<u32, 25>();
    let var_1 = ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 25u)], firstTrailingBit(~global0[_wgslsmith_index_u32(31063u, 25u)]), _wgslsmith_mult_u32((global3[_wgslsmith_index_u32(11847u, 20u)] >> (global3[_wgslsmith_index_u32(4294967295u, 20u)] % 32u)) | firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), firstLeadingBit(~u_input.a.x)));
    let var_2 = vec4<bool>(true, var_0.x, !arg_1, arg_2.b >= func_1().a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(53413u & var_1, ~global0[_wgslsmith_index_u32(4294967295u, 25u)]), 21u)]))) + global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(71157u, 20u)], 25u)], 21u)]);
}

fn func_6(arg_0: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1170f, 1047f, false)) * _wgslsmith_f_op_f32(global2.a + arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2207f, 1097f)) * _wgslsmith_f_op_f32(func_3(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 20u)], 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), false, u_input.b, vec2<bool>(true, false))))) * _wgslsmith_f_op_f32(1074f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1273f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = !vec3<bool>(all(vec2<bool>(true, true)), true, !all(vec4<bool>(false, true, false, false)));
    var_0 = Struct_1(-2143f, 230f);
    var var_2 = var_1.zz;
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 7271i, -2147483647i, _wgslsmith_sub_i32(i32(-1i) * -u_input.b, u_input.b)), reverseBits(-(vec4<i32>(6204i, 0i, 10188i, -32030i) ^ ~vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))));
    return min(vec4<i32>(2147483647i, var_3.x, var_3.x, abs(var_3.x)), vec4<i32>(-_wgslsmith_div_i32(-var_3.x, reverseBits(2147483647i)), ~abs(~0i), _wgslsmith_dot_vec3_i32(-countOneBits(var_3.zzw), vec3<i32>(0i, var_3.x, var_3.x)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.b, 50593i, _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(~u_input.b, -u_input.b)), ~firstTrailingBit(u_input.b)));
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(-461f, -1248f), any(vec4<bool>(true, true, false, true)), func_1()))))));
    var var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(firstTrailingBit(vec4<u32>(8098u, 39219u, global3[_wgslsmith_index_u32(64917u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)])) | ~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12432u, 25u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67974u, 25u)], 25u)], u_input.a.x))), ~0i, vec4<u32>(global3[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(99917u, 20u)], 25u)], global3[_wgslsmith_index_u32(0u, 20u)], 15011u), vec3<u32>(u_input.a.x, 0u, 4294967295u))) ^ 0u, 20u)], max(~global3[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 20u)], 4294967295u), ~(1u >> (~global0[_wgslsmith_index_u32(62787u, 25u)] % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~64326u, global0[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(firstLeadingBit(17439u), 20u)], 0u), vec4<u32>(_wgslsmith_sub_u32(1u, global3[_wgslsmith_index_u32(1653u, 20u)]), ~124938u, ~global0[_wgslsmith_index_u32(4294967295u, 25u)], ~u_input.a.x))), u_input.a);
}

