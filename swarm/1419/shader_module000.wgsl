struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, true, true, false, true, true, true, false, false, true, true, true, false, true, true, true, true, true, false, false, true, false, true, false, false, false, true, true);

var<private> global1: vec2<i32>;

var<private> global2: f32 = 1000f;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: vec2<i32> = vec2<i32>(-6278i, -15730i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> bool {
    var var_0 = vec4<u32>(4294967295u, u_input.b, _wgslsmith_dot_vec4_u32(arg_3, arg_3), ~max(1u, arg_3.x) >> (30448u % 32u));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_1, arg_1))))))));
    var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~arg_3.x, _wgslsmith_dot_vec2_u32(abs(arg_3.xx), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, 25687u)))), firstTrailingBit(82448u), ~63729u, arg_3.x), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~arg_3, vec4<u32>(arg_3.x, var_0.x, var_0.x, 29426u)), ~select(arg_3, vec4<u32>(1u, 0u, arg_3.x, var_0.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 29u)], true))), 17881u, u_input.b, ~_wgslsmith_dot_vec3_u32(arg_3.yzw << (vec3<u32>(13316u, var_0.x, arg_3.x) % vec3<u32>(32u)), min(vec3<u32>(85168u, arg_3.x, var_0.x), arg_3.wzz))));
    var var_1 = reverseBits(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(arg_3.yyz, ~vec3<u32>(0u, 1u, 4294967295u)), arg_3.zww));
    global2 = arg_1;
    return false;
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    global4 = abs(abs(vec2<i32>(firstTrailingBit(~0i), 0i ^ (1i >> (u_input.b % 32u)))));
    let var_0 = Struct_3(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], false)));
    global1 = vec2<i32>(global1.x, global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(-1141f)), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, var_0.a), vec2<bool>(global0[_wgslsmith_index_u32(86443u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(true, false)), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(global3.x, false), global0[_wgslsmith_index_u32(u_input.b, 29u)]), all(vec2<bool>(true, true))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)] && false, false | global3.x), select(vec2<bool>(false, false), select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global0[_wgslsmith_index_u32(9691u, 29u)]), global3.x), var_0.a)), !any(vec4<bool>(false, true, false, var_0.a)) || global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b | u_input.b), 29u)]));
    var var_2 = Struct_2(Struct_1(-1240f, var_1.b), !(!select(vec4<bool>(true, false, false, var_0.a), select(vec4<bool>(var_0.a, var_1.b.x, var_0.a, true), vec4<bool>(true, false, var_1.b.x, var_1.b.x), vec4<bool>(global3.x, true, false, true)), u_input.b <= u_input.b)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), -412f), !vec2<bool>(global4.x < global1.x, var_0.a)), var_1, Struct_1(var_1.a, vec2<bool>(func_3(Struct_3(var_0.a), _wgslsmith_div_f32(var_1.a, var_1.a), false, ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), !any(var_1.b))));
    return var_2.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -765f))) * arg_0.x);
    global4 = vec2<i32>(abs(-2147483647i) | -(~global1.x), _wgslsmith_sub_i32(global1.x, 1i) << (_wgslsmith_sub_u32(55843u, 1u) % 32u));
    var var_1 = func_2(Struct_4(~(-vec4<i32>(-48242i, global1.x, -17504i, global1.x))));
    global4 = vec2<i32>(global1.x, u_input.e);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-428f, _wgslsmith_f_op_f32(abs(var_1.a)), any(vec4<bool>(true, true, global3.x, global0[_wgslsmith_index_u32(0u, 29u)]))))), vec2<bool>(func_2(Struct_4(vec4<i32>(global4.x, global1.x, 2147483647i, -1i))).b.x, func_2(Struct_4(vec4<i32>(-1i, global4.x, 1082i, u_input.a.x))).b.x)), select(vec4<bool>((arg_0.x > 712f) || select(true, false, false), true, func_2(Struct_4(vec4<i32>(global1.x, u_input.e, -1i, 58295i))).b.x, any(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], true), vec3<bool>(true, true, var_1.b.x), false))), !(!select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], var_1.b.x, global3.x, false), vec4<bool>(true, true, true, global3.x))), select(vec4<bool>(global0[_wgslsmith_index_u32(~4294967295u, 29u)], true, all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], var_1.b.x, true, true)), true), !(!vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(arg_1.x, 29u)])), !select(vec4<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)], true), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(arg_1.x, 29u)]), global3.x))), func_2(Struct_4(~vec4<i32>(global1.x, global1.x, -7729i, global1.x) << (~arg_1 % vec4<u32>(32u)))), Struct_1(var_1.a, select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 29u)]), var_1.b, func_2(Struct_4(vec4<i32>(-36790i, global1.x, u_input.d, global1.x))).b.x), var_1.b, func_2(Struct_4(vec4<i32>(-1i, 0i, 1i, 0i))).b.x)), Struct_1(arg_0.x, vec2<bool>(!var_1.b.x, true)));
    return var_2.c;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<bool, 29>();
    var var_0 = Struct_3(u_input.b >= u_input.b);
    let var_1 = false;
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(min(global4.x, -u_input.d) >> (u_input.b % 32u), 1i, _wgslsmith_dot_vec3_i32(~u_input.a, max(_wgslsmith_add_vec3_i32(vec3<i32>(-37312i, 1i, 2147483647i), vec3<i32>(arg_1, -1i, 7013i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.d, global1.x), vec3<i32>(global1.x, -1i, -2147483647i)))), 2147483647i), vec4<i32>(-17358i, _wgslsmith_div_i32(-global4.x, ~2147483647i), firstLeadingBit(-37247i), _wgslsmith_mult_i32(global4.x, 15314i) >> (14329u % 32u)) ^ -countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, global4.x, global1.x), vec4<i32>(-24068i, 0i, u_input.d, -5083i), vec4<i32>(u_input.d, u_input.d, -16915i, global1.x))));
    var var_3 = 6551u;
    return -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(min(var_2.wyy, vec3<i32>(-51964i, global1.x, -32340i))), u_input.a), global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec4<i32>(-24845i, func_4(global3.x, 1508i, func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-493f, -910f, -170f, -611f), vec4<f32>(-139f, -316f, -1203f, 514f)), abs(vec4<u32>(u_input.b, 3456u, 0u, 17238u)))), _wgslsmith_add_i32(global1.x ^ -29223i, u_input.d | u_input.a.x) | global1.x, max(firstLeadingBit(global4.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.e, 1i, -17481i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, -3136i, global1.x, u_input.c), vec4<i32>(global4.x, global4.x, 0i, 0i))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-138f, -290f))) * _wgslsmith_f_op_f32(-1f)))), !vec2<bool>(global4.x == (global1.x & u_input.d), global3.x));
    let var_2 = var_0;
    let var_3 = Struct_4(vec4<i32>(-2147483647i, -82997i, -select(u_input.c, -5243i, var_1.b.x), select(_wgslsmith_add_i32(u_input.d, -50239i), -18194i, true)) ^ vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(var_0.a, var_0.a)), -(var_0.a.x | 2147483647i), -2147483647i, _wgslsmith_mult_i32(reverseBits(-1i), -3443i)));
    let var_4 = vec3<i32>(global1.x, firstTrailingBit(_wgslsmith_add_i32(50344i, reverseBits(_wgslsmith_dot_vec2_i32(var_2.a.zz, var_2.a.zx)))), _wgslsmith_sub_i32(0i, func_4(!(!global0[_wgslsmith_index_u32(u_input.b, 29u)]), 0i, Struct_1(var_1.a, var_1.b))));
    var var_5 = Struct_2(Struct_1(var_1.a, var_1.b), select(!select(select(vec4<bool>(false, global3.x, true, false), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, false), vec4<bool>(true, false, false, false)), !vec4<bool>(true, global3.x, var_1.b.x, false), select(vec4<bool>(global3.x, true, true, false), vec4<bool>(global3.x, false, true, false), vec4<bool>(true, global3.x, true, true))), vec4<bool>(global0[_wgslsmith_index_u32(~1u | u_input.b, 29u)], !var_1.b.x != any(vec3<bool>(false, false, false)), false, var_1.b.x), all(!var_1.b)), Struct_1(376f, vec2<bool>(false, !(!var_1.b.x))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1552f, 129f, var_1.a, 522f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -891f, -1007f, 442f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 42361u, u_input.b), vec4<u32>(4294967295u, u_input.b, 14916u, 30225u)) >> ((~vec4<u32>(65485u, u_input.b, 4294967295u, u_input.b) | max(vec4<u32>(0u, 37403u, u_input.b, 4294967295u), vec4<u32>(11474u, 96904u, u_input.b, 4294967295u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -957f), !(!(!var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec4<f32>(var_5.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.e.a) + _wgslsmith_f_op_f32(-var_1.a)), var_5.d.a, -1000f), countOneBits(vec4<u32>(1u, 1400u >> (0u % 32u), _wgslsmith_div_u32(u_input.b, 50571u), 1u))).a, 0u, vec3<i32>(i32(-1i) * -1i, 1i, 831i), vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, 1i, var_4.x, -1i), _wgslsmith_sub_vec4_i32(var_2.a, var_3.a)), ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2176f, -1144f, 417f, -522f), vec4<f32>(var_1.a, var_1.a, var_5.c.a, var_1.a))) - vec4<f32>(var_1.a, 1138f, var_5.c.a, var_1.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 149f, -386f, -375f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1680f, -1264f, 605f, 907f) + vec4<f32>(1168f, var_5.a.a, var_5.a.a, 263f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_5.c.a, var_5.d.a, 1492f, -326f), vec4<f32>(127f, var_5.c.a, -434f, -186f), global3.x)) + vec4<f32>(var_5.d.a, var_5.c.a, 229f, 1666f)))));
}

