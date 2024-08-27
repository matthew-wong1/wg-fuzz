struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: array<i32, 15>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(arg_0.a, 4294967295u, arg_0.c, -730f);
    global1 = array<i32, 15>();
    var var_1 = Struct_1(u_input.b);
    let var_2 = Struct_1(_wgslsmith_div_i32(15506i, -2147483647i));
    global0 = min(~vec2<u32>(var_0.a.x, 54560u), _wgslsmith_div_vec2_u32(arg_0.a.yy, select(var_0.a.zy, vec2<u32>(0u, _wgslsmith_clamp_u32(arg_0.b, arg_0.a.x, var_0.b)), vec2<bool>(select(true, true, false), all(vec4<bool>(true, false, true, true))))));
    return !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, arg_0.b < arg_0.a.x, true)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_3(Struct_2(~(~(vec4<u32>(0u, global0.x, 4294967295u, 15767u) >> (vec4<u32>(arg_0, 21469u, 0u, arg_0) % vec4<u32>(32u)))), reverseBits(66219u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1512f, -790f, -772f, -388f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-179f, -1000f, -1043f, -1020f) - vec4<f32>(447f, 334f, -964f, 278f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1396f, 1030f, -1493f, -1000f)))), 624f));
    var var_1 = vec3<bool>(false, false, any(!select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), any(vec2<bool>(true, false)))));
    var_1 = !select(func_3(Struct_2(~var_0.a.a, var_0.a.b, var_0.a.c, _wgslsmith_f_op_f32(1107f + -455f))), vec3<bool>(true, !var_1.x, true), func_3(var_0.a));
    let var_2 = u_input.a.xx;
    global1 = array<i32, 15>();
    return var_0.a.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global0 = abs(~(~arg_3.a.a.wz));
    var var_0 = vec2<bool>(true, !(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, -1126i, u_input.b) & u_input.a, vec3<i32>(u_input.a.x, u_input.b, arg_2.a)) == -_wgslsmith_mult_i32(arg_2.a, u_input.b)));
    var var_1 = Struct_2(countOneBits(arg_3.a.a), func_2(global0.x, arg_2, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, global0.x, global0.x)), _wgslsmith_add_vec3_u32(~arg_3.a.a.wyz, vec3<u32>(4294967295u, 84501u, global0.x)))), _wgslsmith_f_op_vec4_f32(round(arg_3.a.c)), _wgslsmith_f_op_f32(arg_3.a.d * _wgslsmith_f_op_f32(-arg_3.a.d)));
    var var_2 = Struct_2(~vec4<u32>(0u, ~0u, ~select(arg_3.a.a.x, global0.x, true), func_2(~1u, arg_0, var_1.a.xxx)), firstTrailingBit(max(var_1.a.x, ~(0u | arg_3.a.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(425f, -1137f, -1643f, -330f) - arg_3.a.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1308f, 1024f, 1000f, var_1.c.x)))), -821f);
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, _wgslsmith_clamp_i32(-1i, -global1[_wgslsmith_index_u32(3939u, 15u)], 1i), -1591i, -32114i ^ ~u_input.a.x) << (select(_wgslsmith_mod_vec4_u32(abs(arg_3.a.a), max(vec4<u32>(0u, 1u, var_1.a.x, arg_3.a.b), arg_3.a.a)), firstTrailingBit(~arg_3.a.a), select(!vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false))) % vec4<u32>(32u)), -select(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-11761i, -76402i, 81479i, 0i), vec4<i32>(-1i, 10546i, 35049i, 1i), vec4<i32>(u_input.a.x, -2147483647i, u_input.b, u_input.b)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a, arg_0.a, arg_2.a, arg_2.a), vec4<i32>(arg_2.a, -2147483647i, 1i, global1[_wgslsmith_index_u32(1u, 15u)]))), select(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, true, false, true), false), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), true)));
    return ~_wgslsmith_sub_u32(808u, 29492u & abs(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b ^ global1[_wgslsmith_index_u32(~21561u | (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 18235u), vec2<u32>(global0.x, global0.x)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 1u, global0.x), vec4<u32>(global0.x, 1u, 1u, 84103u))), 15u)];
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32((vec4<i32>(0i, global1[_wgslsmith_index_u32(global0.x, 15u)], -9576i, var_0) ^ vec4<i32>(1i, global1[_wgslsmith_index_u32(1381u, 15u)], -2147483647i, global1[_wgslsmith_index_u32(global0.x, 15u)])) ^ vec4<i32>(u_input.a.x, var_0, 1i, 2147483647i), vec4<i32>(_wgslsmith_mult_i32(var_0, -5441i), var_0, _wgslsmith_mod_i32(var_0, var_0), u_input.a.x)), ~vec4<i32>(select(u_input.a.x, u_input.a.x, true), ~0i, 23694i, 0i), abs(select(vec4<i32>(var_0, 29354i, var_0, u_input.a.x), vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 15u)], u_input.a.x, -1i, -65908i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))))) | vec4<i32>(_wgslsmith_add_i32(var_0, countOneBits(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(21776u, 15u)], 1i))), -1i, 53011i, ~var_0);
    var var_2 = ~global0.x;
    global0 = vec2<u32>(_wgslsmith_clamp_u32(~(global0.x ^ global0.x), _wgslsmith_mod_u32(func_1(Struct_1(u_input.a.x), vec2<f32>(-925f, 1064f), Struct_1(var_0), Struct_3(Struct_2(vec4<u32>(1u, global0.x, 1u, 1u), 0u, vec4<f32>(-223f, -188f, -429f, 437f), 1709f))), firstTrailingBit(4294967295u)), global0.x), 76930u) << (vec2<u32>(global0.x, ~(~global0.x)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_mult_vec3_i32(select(var_1.ywx, vec3<i32>(abs(1i), var_1.x & -4622i, 1181i), any(vec3<bool>(true, u_input.a.x < 21565i, true))), -(abs(vec3<i32>(-8736i, 73225i, var_0) >> (vec3<u32>(global0.x, global0.x, 78268u) % vec3<u32>(32u))) >> ((vec3<u32>(23364u, global0.x, 0u) | ~vec3<u32>(0u, global0.x, global0.x)) % vec3<u32>(32u))));
    let var_4 = Struct_3(Struct_2(select(~vec4<u32>(global0.x, 1u, 19739u, 11168u) << (vec4<u32>(global0.x, global0.x, 27105u, 0u) % vec4<u32>(32u)), vec4<u32>(func_1(Struct_1(u_input.b), vec2<f32>(-1665f, -1726f), Struct_1(global1[_wgslsmith_index_u32(global0.x, 15u)]), Struct_3(Struct_2(vec4<u32>(11655u, 0u, 13420u, global0.x), global0.x, vec4<f32>(-102f, -589f, -101f, 533f), 873f))), 3935u, 1u >> (global0.x % 32u), global0.x >> (4294967295u % 32u)), true), global0.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -376f, -725f, -707f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -307f, -1000f, -689f)))))), -1001f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f * var_4.a.d)) + var_4.a.d), var_4.a.c.yy);
}

