struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_3(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -205f) * _wgslsmith_f_op_f32(round(arg_0.a.x))))), vec3<u32>(firstTrailingBit(1u), countOneBits(7353u), 4294967295u), arg_1.a.x, !select(vec2<bool>(true, true), vec2<bool>(-894f < arg_1.a.x, true), true));
    var var_1 = vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))) * 965f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * arg_0.a.x));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1194f, 1151f)), arg_0.a.x, any(var_0.d)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -668f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -549f)))), -249f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.x, var_0.c), 574f), _wgslsmith_f_op_f32(f32(-1f) * -583f))));
    let var_3 = var_0;
    return _wgslsmith_clamp_u32((firstTrailingBit(4294967295u) << (_wgslsmith_div_u32(var_0.b.x, var_3.b.x) % 32u)) & 0u, 12441u, 4294967295u);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global0 = array<i32, 23>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x)))))));
    var var_1 = false;
    var var_2 = Struct_2(vec3<f32>(-256f, 293f, -365f));
    let var_3 = Struct_1(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), var_0), arg_1.yy, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) - var_2.a.x), -1574f), _wgslsmith_f_op_f32(-251f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)), vec4<u32>(16428u, 1u, ~(~_wgslsmith_mod_u32(20550u, 68669u)), 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-943f)))), var_0.a.x) * arg_1.xz));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(select(var_3.d.wxw, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_3.a, var_3.a), vec3<u32>(4294967295u, 27532u, 30084u)), true), vec3<u32>(var_3.a, ~5435u, ~1u)), _wgslsmith_add_vec3_u32(var_3.d.xyx, var_3.d.xwz)), firstTrailingBit(var_3.d.xww));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1.c;
    global0 = array<i32, 23>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(284f + arg_1.c) * _wgslsmith_f_op_f32(floor(1651f))) + 260f)) + arg_1.a.x);
    let var_1 = !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(true, arg_1.d.x, false, true)), !vec4<bool>(arg_1.d.x, false, arg_1.d.x, arg_1.d.x), !vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x))));
    var_0 = _wgslsmith_f_op_f32(278f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.c)), -710f)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -1507f, arg_1.c))));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    let var_0 = func_4(23806u, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1333f, 1000f, 1782f) - vec3<f32>(-393f, -997f, 869f)) - vec3<f32>(680f, 352f, 740f))), vec3<u32>(_wgslsmith_clamp_u32(14190u, 10487u, 16920u), ~1u, func_2(-26085i, vec3<f32>(1704f, 1801f, -671f))) >> (firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 0u)) % vec3<u32>(32u)), 446f, select(select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(false, arg_1)), vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, arg_1)), !arg_1), any(vec2<bool>(true, true)))), vec3<i32>(~(-1i), _wgslsmith_clamp_i32(-54045i, 1i, -1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0, 0i, u_input.a), vec4<i32>(arg_0, u_input.a, -1i, global0[_wgslsmith_index_u32(4294967295u, 23u)])), firstTrailingBit(arg_0))) ^ countOneBits(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(global0[_wgslsmith_index_u32(66152u, 23u)], arg_0, u_input.a)), vec3<i32>(-67370i, arg_0, -1i))), ~1u);
    let var_1 = var_0;
    var var_2 = Struct_1(1u, var_1.a.zz, -740f, vec4<u32>(123852u, 1u, 4294967295u, ~func_3(func_4(30396u, Struct_3(var_0.a, vec3<u32>(70414u, 4294967295u, 29372u), 1554f, vec2<bool>(arg_1, true)), vec3<i32>(global0[_wgslsmith_index_u32(25083u, 23u)], -35854i, u_input.a), 14917u), var_1)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a.xx * var_0.a.yz), vec2<f32>(var_0.a.x, 473f)))))));
    var var_3 = abs(~(-20418i));
    var var_4 = _wgslsmith_sub_u32(max(35669u, var_2.a), 1u);
    return max(59018u, func_2(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(19509u, 23u)], (global0[_wgslsmith_index_u32(37872u, 23u)] & 0i) | _wgslsmith_add_i32(u_input.a, arg_0)), var_1.a));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>) -> bool {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, -252f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2535f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-476f, _wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2014f) + -1042f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(438f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)))), false));
    var var_2 = Struct_1(_wgslsmith_add_u32(~(~1u), ~(~1u ^ _wgslsmith_clamp_u32(27669u, 0u, 113412u))), _wgslsmith_f_op_vec2_f32(var_1.yz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, -1815f))))), 1292f, _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, 11341u, 1u), select(vec4<u32>(26541u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 68780u, 0u, 1u), !arg_1.x)) & _wgslsmith_div_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(109337u, 4294967295u, 17830u, 4294967295u))), vec4<u32>(79617u, 38614u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(546f)), _wgslsmith_f_op_f32(func_4(21830u, Struct_3(vec3<f32>(var_1.x, -228f, var_1.x), vec3<u32>(16336u, 7648u, 53264u), var_1.x, vec2<bool>(false, true)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), 0u).a.x + _wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_1.x)))))));
    var_0 = !(!(select(74113u, 59222u, var_2.c >= -474f) > var_2.d.x));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~max(firstTrailingBit(var_2.d), var_2.d)), vec4<u32>(4294967295u, countOneBits(26288u), 30073u, var_2.a));
    return !(var_2.a < ~_wgslsmith_mod_u32(~var_3.x, 16056u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = func_5(vec2<i32>(-22258i, ~(1i & global0[_wgslsmith_index_u32(func_1(u_input.a, false), 23u)])), select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, select(false, false, true)), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec4<bool>(true, false, false, true))), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(50186u, 0u), vec2<u32>(9031u, 1u)) != 1u, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))));
    let var_1 = func_4(countOneBits(~reverseBits(1u)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1435f, -1581f, -1339f) - vec3<f32>(2033f, 301f, 381f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, 1000f, 194f) * vec3<f32>(1030f, -393f, -680f)))), vec3<u32>(1u, 79306u, 45297u), 1f, !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)), max(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 53609i, global0[_wgslsmith_index_u32(22606u, 23u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(112964u, 23u)], u_input.a)), vec3<i32>(2147483647i, -30055i, global0[_wgslsmith_index_u32(4294967295u, 23u)] & -2147483647i), vec3<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)))), vec3<i32>(abs(1i), u_input.a, 36910i)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 73994u, 4294967295u, 23017u), vec4<u32>(76542u, 47592u, 0u, 98334u)), firstLeadingBit(19716u), select(23072u, 16394u, false)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(58111u, 1u, 31693u), vec3<u32>(3052u, 1u, 9851u))) >> (5375u % 32u));
    let var_2 = Struct_1(45232u, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(-780f)), -442f))), func_4(func_3(func_4(func_3(var_1, var_1), Struct_3(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<u32>(76096u, 1u, 1u), -2555f, vec2<bool>(true, true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(33294u, 23u)], global0[_wgslsmith_index_u32(4234u, 23u)]), vec3<i32>(u_input.a, 1i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 7227i)), func_1(-1i, false)), Struct_2(_wgslsmith_f_op_vec3_f32(var_1.a + var_1.a))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, 1950f), vec3<f32>(var_1.a.x, -1073f, 1146f)) - vec3<f32>(var_1.a.x, -973f, var_1.a.x)), vec3<u32>(~4294967295u, _wgslsmith_mod_u32(24564u, 17591u), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_div_f32(var_1.a.x, 693f)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), select(vec3<i32>(0i, 1i, global0[_wgslsmith_index_u32(0u, 23u)]), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(48819u, 23u)], global0[_wgslsmith_index_u32(63724u, 23u)]), true) & vec3<i32>(u_input.a ^ -2147483647i, countOneBits(global0[_wgslsmith_index_u32(1u, 23u)]), 2147483647i | global0[_wgslsmith_index_u32(4294967295u, 23u)]), 28969u).a.x, max(vec4<u32>(1u, firstLeadingBit(1u), ~1u, _wgslsmith_sub_u32(firstTrailingBit(83180u), select(4294967295u, 209u, true))), vec4<u32>(~func_3(Struct_2(vec3<f32>(var_1.a.x, 1360f, var_1.a.x)), var_1), func_2(_wgslsmith_add_i32(10545i, 1i), _wgslsmith_f_op_vec3_f32(-var_1.a)), 4294967295u, ~64538u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.yx)));
    global0 = array<i32, 23>();
    var var_3 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, ~var_2.a, _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(1u, var_2.a)), 4294967295u), firstTrailingBit(~vec4<u32>(39668u, var_2.d.x, var_2.a, 4294967295u)), var_2.d);
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-1i, -countOneBits(2147483647i)), var_2.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(118f + -1407f), var_1.a.x, _wgslsmith_f_op_f32(-var_2.e.x), -579f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b.x, 303f, var_1.a.x, -640f), vec4<f32>(-707f, -981f, var_1.a.x, var_2.b.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, 343f, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, var_2.b.x, -912f, var_1.a.x), vec4<bool>(false, true, true, true))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, -298f, var_2.c, var_1.a.x) + vec4<f32>(var_2.c, -288f, 369f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1260f, var_1.a.x, 1000f) + vec4<f32>(-1240f, -1000f, var_1.a.x, 1000f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, -250f, -1302f, 621f))))), true)), vec3<u32>(_wgslsmith_div_u32(51643u, var_2.a), ~var_2.d.x, reverseBits(~101425u)));
}

