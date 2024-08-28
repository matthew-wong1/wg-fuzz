struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: f32 = 142f;

var<private> global2: array<u32, 15>;

var<private> global3: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(1i, 48124i, 11092i), vec3<i32>(5523i, -562i, 24932i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(2147483647i, -20038i, -6634i), vec3<i32>(13080i, 0i, -1i), vec3<i32>(24943i, -49992i, i32(-2147483648)), vec3<i32>(-18581i, 1i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), -40212i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(10989i, -5012i, 28140i), vec3<i32>(1i, -21573i, 2147483647i), vec3<i32>(1i, 35073i, 1i), vec3<i32>(0i, 9113i, 1i), vec3<i32>(14763i, -30224i, -52190i), vec3<i32>(-50594i, 0i, -9035i), vec3<i32>(12594i, -1i, 2147483647i), vec3<i32>(-88910i, -13032i, 1i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    global3 = array<vec3<i32>, 18>();
    var var_0 = vec3<bool>(all(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 3u)], true))), true | arg_3, true);
    var var_1 = ~_wgslsmith_div_i32(311i, _wgslsmith_sub_i32(~17015i, _wgslsmith_dot_vec2_i32(u_input.a, reverseBits(vec2<i32>(8753i, arg_0)))));
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32((vec2<u32>(global2[_wgslsmith_index_u32(13504u, 15u)], global2[_wgslsmith_index_u32(23853u, 15u)]) << (vec2<u32>(1091u, arg_1.b) % vec2<u32>(32u))) | ~vec2<u32>(78813u, 36854u), select(vec2<u32>(65570u, arg_1.b) >> (vec2<u32>(67164u, 1u) % vec2<u32>(32u)), ~vec2<u32>(arg_1.b, 1u), any(vec3<bool>(arg_1.d, var_0.x, var_0.x)))) << ((vec2<u32>(global2[_wgslsmith_index_u32(8828u, 15u)] << (23106u % 32u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(44273u, 15u)], 1u, arg_1.b, 1u), vec4<u32>(global2[_wgslsmith_index_u32(57656u, 15u)], 13494u, arg_1.b, global2[_wgslsmith_index_u32(4294967295u, 15u)])), 15u)]) & abs(vec2<u32>(15823u, global2[_wgslsmith_index_u32(29410u, 15u)]))) % vec2<u32>(32u)), firstTrailingBit(select(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 4462u), vec2<u32>(arg_1.b, 4294967295u), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.b, 3u)], false)) ^ max(vec2<u32>(0u, 67546u), vec2<u32>(3699u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36283u, 15u)], 15u)]))) ^ ~(~vec2<u32>(48529u, 43942u)));
    var_0 = select(vec3<bool>(global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(_wgslsmith_div_u32(1u, arg_1.b), 4294967295u), ~abs(0u)), 3u)], !(_wgslsmith_sub_u32(arg_1.b, arg_1.b) < reverseBits(arg_1.b)), arg_1.c < -370f), !vec3<bool>(true, !(!arg_3), true), false);
    return var_2.x;
}

fn func_2() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22644u, global2[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_mult_u32(38033u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)]), _wgslsmith_mod_u32(58189u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], 15u)], 15u)], 15u)])), _wgslsmith_clamp_vec4_u32(~vec4<u32>(3581u, global2[_wgslsmith_index_u32(0u, 15u)], 4294967295u, global2[_wgslsmith_index_u32(48742u, 15u)]), ~vec4<u32>(1u, 22482u, 12711u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(54314u, 15u)], 71001u, global2[_wgslsmith_index_u32(20457u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)]))) | vec4<u32>(global2[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5246u, 15u)], 15u)]), 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(36703i, Struct_1(vec4<f32>(-3332f, -600f, 445f, -1125f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], -1049f, global0[_wgslsmith_index_u32(7966u, 3u)], vec3<f32>(-273f, -324f, -1708f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-208f, 662f, 271f, 1000f), vec4<f32>(171f, -629f, -965f, -2298f), true)), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22926u, 15u)], 15u)], 15u)], 3u)]))), 15u)], 15u)], 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)], 6740u) & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)]), vec4<u32>(global2[_wgslsmith_index_u32(~0u, 15u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)] >> ((17389u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]) % 32u), 15u)], ~abs(31034u)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(1u), ~countOneBits(0u)), 15u)], _wgslsmith_mult_u32(firstTrailingBit(~58012u), global2[_wgslsmith_index_u32(0u, 15u)]))), 15u)];
    var var_1 = _wgslsmith_f_op_f32(max(-1241f, _wgslsmith_f_op_f32(1001f - _wgslsmith_f_op_f32(floor(2384f)))));
    global2 = array<u32, 15>();
    global3 = array<vec3<i32>, 18>();
    var var_2 = Struct_4(vec4<bool>(!all(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(443u, 15u)], 15u)], 15u)], 15u)], 3u)], global0[_wgslsmith_index_u32(42168u, 3u)], true), true)), false, _wgslsmith_f_op_f32(f32(-1f) * -2204f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-114f))), true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), 26232u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-149f)), -420f)), 1088f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 31978u), 3u)])), !any(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27203u, 15u)], 15u)], 15u)], 3u)], global0[_wgslsmith_index_u32(1u, 3u)])), vec3<f32>(_wgslsmith_f_op_f32(abs(-1580f)), _wgslsmith_f_op_f32(trunc(284f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -145f))))));
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> f32 {
    global2 = array<u32, 15>();
    let var_0 = select(!select(vec2<bool>(arg_1, true), !select(vec2<bool>(false, arg_1), vec2<bool>(false, false), false), !(!arg_1)), !select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_0.c.d, global0[_wgslsmith_index_u32(arg_0.a.b, 3u)]), false), vec2<bool>(true, arg_1), !(!vec2<bool>(arg_1, false))), vec2<bool>(all(vec4<bool>(arg_1, arg_0.c.d, arg_0.a.d, true)) | true, !(1u != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.c.b, 46014u), vec3<u32>(arg_0.c.b, 63960u, arg_0.b)))));
    global3 = array<vec3<i32>, 18>();
    let var_1 = all(select(!var_0, !var_0, var_0));
    var var_2 = (vec4<u32>(4294967295u, reverseBits(arg_0.c.b), global2[_wgslsmith_index_u32(func_2().b, 15u)] ^ func_2().b, countOneBits(countOneBits(global2[_wgslsmith_index_u32(1u, 15u)]))) >> (vec4<u32>(firstTrailingBit(func_3(u_input.a.x, Struct_1(vec4<f32>(-1471f, 1811f, arg_0.d.x, 1115f), 4294967295u, -343f, var_1, arg_0.c.e), arg_0.d, arg_0.c.d)), ~reverseBits(38703u), arg_0.c.b, global2[_wgslsmith_index_u32(~abs(51127u), 15u)]) % vec4<u32>(32u))) << (~(~(vec4<u32>(4294967295u, 4294967295u, 1u, arg_0.b) ^ _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.b, arg_0.a.b, 87633u, global2[_wgslsmith_index_u32(23123u, 15u)]), vec4<u32>(39513u, 1u, arg_0.a.b, global2[_wgslsmith_index_u32(arg_0.b, 15u)])))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(760f)) - arg_0.d.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    var var_0 = false;
    let var_1 = ~(~_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)], 0u, 4294967295u)), vec4<u32>(global2[_wgslsmith_index_u32(17725u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] % 32u), 15u)], min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80788u, 15u)], 15u)], 15u)], 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 15u)]), 42842u & global2[_wgslsmith_index_u32(29949u, 15u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)])));
    return _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(16653u, 15u)], 0u), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f * -1000f)), false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-663f, 1000f, -415f)))))), ~_wgslsmith_add_u32(var_1.x, var_1.x), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1079f, 905f, 153f, 2808f), vec4<f32>(-593f, 775f, -1229f, -1028f), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2350f, 1000f, 340f, 292f))), any(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 3u)], arg_1.x, global0[_wgslsmith_index_u32(var_1.x, 3u)], global0[_wgslsmith_index_u32(32460u, 3u)])))))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -554f;
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(461f, _wgslsmith_f_op_f32(func_1(vec2<bool>(global0[_wgslsmith_index_u32(60780u, 3u)], true), vec2<bool>(false, false), u_input.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<f32>(259f, 1521f, -458f, -1243f), global2[_wgslsmith_index_u32(4294967295u, 15u)], -1000f, true, vec3<f32>(179f, -718f, 620f)), global2[_wgslsmith_index_u32(42343u, 15u)], Struct_1(vec4<f32>(-1442f, -361f, -411f, -1930f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], 15u)], -1674f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 3u)], vec3<f32>(843f, 1772f, -257f)), vec4<f32>(-1290f, -200f, 314f, 1159f)), global0[_wgslsmith_index_u32(1u, 3u)] & global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76226u, 15u)], 15u)], 15u)], 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1440f)) * 855f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38236u, 15u)], 15u)], 3u)]), vec2<bool>(true, true), u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1546f + -1755f)));
    var var_1 = ~(~global2[_wgslsmith_index_u32(abs(countOneBits(global2[_wgslsmith_index_u32(3713u, 15u)])), 15u)] << (34180u % 32u));
    global2 = array<u32, 15>();
    let var_2 = _wgslsmith_mod_vec3_i32(firstLeadingBit(global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2().b, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34586u, 15u)], 15u)])), 15u)], 18u)]), min(countOneBits(abs(~vec3<i32>(u_input.a.x, 42680i, u_input.a.x))), vec3<i32>(-6935i, 0i, 1i)));
    let var_3 = 4294967295u;
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, firstTrailingBit(vec4<i32>(1i, 2147483647i >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 15u)], var_3) % 32u), -2807i, _wgslsmith_dot_vec2_i32(var_2.xx & vec2<i32>(-14129i, var_2.x), abs(vec2<i32>(-14710i, 1i))))), func_2().c);
}

