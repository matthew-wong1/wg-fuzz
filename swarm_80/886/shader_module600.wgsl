struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(263f, 1252f, 445f, -1195f), vec4<f32>(-464f, 263f, -328f, -333f), vec4<f32>(341f, 740f, -641f, -507f), vec4<f32>(-472f, 331f, 563f, 351f), vec4<f32>(-886f, 312f, -660f, 2585f), vec4<f32>(-437f, 1000f, -2986f, 1258f), vec4<f32>(241f, 2079f, -359f, -760f), vec4<f32>(1603f, 1263f, 1000f, 1266f), vec4<f32>(-961f, -564f, -1237f, -355f), vec4<f32>(-1219f, -1778f, 310f, 790f), vec4<f32>(-1389f, -859f, 554f, -1088f), vec4<f32>(1303f, -442f, -874f, -289f), vec4<f32>(-1808f, -971f, 418f, -925f), vec4<f32>(672f, 308f, 2702f, 1000f), vec4<f32>(-319f, 540f, 310f, 1035f), vec4<f32>(-1119f, 129f, -132f, -1094f), vec4<f32>(-113f, 1205f, 832f, -1048f), vec4<f32>(903f, -1242f, 753f, 1000f), vec4<f32>(470f, -129f, -600f, -700f), vec4<f32>(-693f, 237f, -647f, 1498f), vec4<f32>(1204f, 1023f, 612f, 1318f), vec4<f32>(-269f, 104f, 422f, -181f), vec4<f32>(-641f, 1022f, -821f, -1120f), vec4<f32>(1317f, 1740f, -1485f, -1493f), vec4<f32>(1135f, -271f, 229f, 1638f));

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 63760u), vec2<u32>(22725u, 20144u), vec2<u32>(1u, 29168u), vec2<u32>(23733u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(8040u, 0u), vec2<u32>(1u, 1u), vec2<u32>(45386u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 48434u), vec2<u32>(1u, 5830u), vec2<u32>(1u, 59391u), vec2<u32>(1u, 72477u), vec2<u32>(74075u, 1u), vec2<u32>(4294967295u, 6422u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 74025u), vec2<u32>(3281u, 1u), vec2<u32>(48308u, 34064u), vec2<u32>(22258u, 37643u), vec2<u32>(4967u, 0u), vec2<u32>(1u, 27679u), vec2<u32>(1u, 0u), vec2<u32>(82676u, 1u), vec2<u32>(96832u, 0u), vec2<u32>(1u, 53143u), vec2<u32>(40476u, 17672u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = countOneBits(vec3<u32>(global1.b.x, ~abs(arg_0 << (12765u % 32u)), select(global1.b.x, 4294967295u, false)));
    global1 = Struct_3(vec4<bool>(global1.a.x, _wgslsmith_div_u32(113312u, max(global1.b.x, arg_0)) <= _wgslsmith_sub_u32(~4294967295u, global1.b.x), 2147483647i != (u_input.a.x ^ -u_input.a.x), global1.a.x), var_0.zx, global1.c);
    global3 = array<vec2<u32>, 29>();
    global3 = array<vec2<u32>, 29>();
    let var_1 = firstTrailingBit(-1i);
    return any(vec2<bool>(true, global1.a.x));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = select(global1.a.xx, vec2<bool>(global1.a.x, any(vec3<bool>(true, arg_0.x, any(vec4<bool>(true, false, arg_0.x, arg_0.x))))), select(arg_1.b.ww, select(!(!vec2<bool>(true, arg_1.b.x)), vec2<bool>(all(vec3<bool>(global1.a.x, true, arg_1.b.x)), global1.a.x), global1.a.x), arg_1.b.zy));
    var var_1 = Struct_5(select(select(!var_0, select(arg_1.b.xy, select(arg_1.b.wz, global1.a.wx, arg_0.xy), select(global1.a.zz, vec2<bool>(true, arg_0.x), global1.a.xy)), !arg_1.b.x), select(var_0, vec2<bool>(func_3(arg_1.a), any(arg_0)), !select(global1.a.yw, vec2<bool>(global1.a.x, arg_0.x), arg_1.b.wz)), !all(vec2<bool>(false, arg_0.x))), Struct_3(arg_0, vec2<u32>(4294967295u, 60846u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-229f, global1.c)))))), select(vec4<u32>(~57014u, global1.b.x, ~firstLeadingBit(33617u), arg_1.a), ~((vec4<u32>(arg_1.a, global1.b.x, global1.b.x, 4294967295u) | vec4<u32>(arg_1.a, 1u, global1.b.x, global1.b.x)) & abs(vec4<u32>(1u, 68590u, 4294967295u, global1.b.x))), arg_1.b), Struct_2(~abs(~vec4<u32>(global1.b.x, global1.b.x, arg_1.d.x, global1.b.x)), _wgslsmith_div_vec3_u32(~(~arg_1.d), vec3<u32>(~14494u, _wgslsmith_clamp_u32(1u, 0u, 48780u), reverseBits(1u))), _wgslsmith_clamp_u32(arg_1.a, 47207u, ~arg_1.a & max(0u, 1u)), 1958f, ~_wgslsmith_add_u32(94691u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b.x, arg_1.d.x, 4294967295u), vec4<u32>(22096u, global1.b.x, 4294967295u, 1u)))), true);
    let var_2 = Struct_4(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_1.e.zyx, vec3<i32>(arg_1.e.x, arg_1.e.x, u_input.a.x)), -15135i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_1.e.x, -2147483647i, -2147483647i), _wgslsmith_mult_i32(u_input.a.x, 0i), ~(-50450i), -u_input.a.x), arg_1.e));
    return var_1.b;
}

fn func_1() -> i32 {
    global1 = func_2(select(vec4<bool>(global1.a.x, true, global1.a.x, select(-2147483647i, u_input.a.x, false) != ~u_input.a.x), !vec4<bool>(!global1.a.x, global1.a.x && true, false, true), global1.a), Struct_1(global1.b.x, vec4<bool>(all(vec2<bool>(true, global1.a.x)), global0[_wgslsmith_index_u32(global1.b.x, 29u)] <= global1.c, false, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) * _wgslsmith_f_op_f32(abs(global1.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1316f, global1.c)) - _wgslsmith_f_op_f32(-1302f * global1.c))), ~(~countOneBits(vec3<u32>(global1.b.x, 0u, 38361u))), abs(~vec4<i32>(u_input.a.x, -65716i, u_input.a.x, 1302i) >> (~vec4<u32>(global1.b.x, global1.b.x, 50460u, global1.b.x) % vec4<u32>(32u)))));
    global3 = array<vec2<u32>, 29>();
    var var_0 = any(select(global1.a.xyw, !select(!global1.a.www, select(global1.a.xzw, vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), true), vec3<bool>(false, true, false)));
    let var_1 = func_2(func_2(!(!vec4<bool>(global1.a.x, global1.a.x, false, false)), Struct_1(func_2(global1.a, Struct_1(global1.b.x, vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), global0[_wgslsmith_index_u32(global1.b.x, 29u)], vec3<u32>(global1.b.x, 325u, global1.b.x), vec4<i32>(1i, -48073i, 0i, 37738i))).b.x >> ((global1.b.x | 42733u) % 32u), vec4<bool>(global1.a.x, false, all(vec2<bool>(global1.a.x, global1.a.x)), global0[_wgslsmith_index_u32(20592u, 29u)] < global0[_wgslsmith_index_u32(30396u, 29u)]), _wgslsmith_f_op_f32(floor(-1901f)), reverseBits(vec3<u32>(17555u, global1.b.x, 3158u)) | vec3<u32>(1u, 1u, 1u), vec4<i32>(u_input.a.x, u_input.a.x, 30031i, u_input.a.x) & ~vec4<i32>(29469i, -1i, u_input.a.x, u_input.a.x))).a, Struct_1(1u, global1.a, _wgslsmith_f_op_f32(floor(-375f)), abs(~abs(vec3<u32>(global1.b.x, 52197u, 17018u))), ~vec4<i32>(firstLeadingBit(0i), 0i, u_input.a.x & u_input.a.x, u_input.a.x)));
    global1 = var_1;
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a, min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), -(~vec2<i32>(u_input.a.x, u_input.a.x))) << (~(~select(var_1.b.x, ~36442u, true)) % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-157f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global1.b.x, 29u)]))) - 1425f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -231f))) + global1.c), global0[_wgslsmith_index_u32(~(~global1.b.x) << (global1.b.x % 32u), 29u)]));
    let var_1 = Struct_5(select(global1.a.yy, select(select(!vec2<bool>(true, global1.a.x), !global1.a.zw, func_2(global1.a, Struct_1(32505u, global1.a, var_0.x, vec3<u32>(global1.b.x, 0u, 17709u), arg_1)).a.yz), global1.a.zw, _wgslsmith_f_op_f32(-global1.c) <= 1024f), vec2<bool>(false, true)), func_2(vec4<bool>(all(func_2(global1.a, Struct_1(global1.b.x, global1.a, var_0.x, vec3<u32>(1u, global1.b.x, global1.b.x), arg_1)).a.zxz), !select(global1.a.x, false, true), any(vec4<bool>(global1.a.x, global1.a.x, false, false)), !all(global1.a)), Struct_1(global1.b.x & global1.b.x, select(global1.a, global1.a, vec4<bool>(true, global1.a.x, false, false)), _wgslsmith_f_op_f32(global1.c + 1384f), vec3<u32>(4294967295u, 1u, 8190u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, global1.b.x), vec3<u32>(36171u, global1.b.x, 4294967295u)) % vec3<u32>(32u)), vec4<i32>(-98868i, 2147483647i, ~(-1i), firstLeadingBit(2147483647i)))), ~countOneBits(vec4<u32>(global1.b.x >> (63677u % 32u), _wgslsmith_sub_u32(global1.b.x, global1.b.x), global1.b.x, _wgslsmith_mod_u32(13677u, 1u))), Struct_2(select(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, global1.b.x, 10305u, 4294967295u)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global1.b.x, 11852u, 4294967295u, 17728u)), ~vec4<u32>(1u, global1.b.x, 68441u, 73448u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, 4299u), vec4<u32>(global1.b.x, 52966u, 18203u, 68012u))), !global1.a), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.x, 8480u, 378u), vec3<u32>(global1.b.x, global1.b.x, global1.b.x), vec3<u32>(38393u, 49752u, global1.b.x))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u | global1.b.x, _wgslsmith_clamp_u32(global1.b.x, 1u, global1.b.x)), max(_wgslsmith_mult_u32(global1.b.x, 0u), 79968u), global1.b.x), global1.c, 70922u), all(!global1.a));
    global3 = array<vec2<u32>, 29>();
    let var_2 = global1.a.xy;
    let var_3 = Struct_1(select(~min(global1.b.x | var_1.d.c, _wgslsmith_mult_u32(var_1.d.b.x, var_1.c.x)), ~(~1u), global1.a.x), func_2(var_1.b.a, Struct_1(~_wgslsmith_sub_u32(var_1.d.b.x, var_1.b.b.x), !vec4<bool>(var_1.b.a.x, true, var_1.b.a.x, var_1.e), var_1.d.d, vec3<u32>(4294967295u, 36593u, func_2(vec4<bool>(false, true, false, global1.a.x), Struct_1(var_1.c.x, global1.a, 1386f, vec3<u32>(var_1.d.c, 0u, 16999u), vec4<i32>(2147483647i, 2147483647i, u_input.a.x, arg_0.a))).b.x), -arg_1)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1708f - global1.c), -402f, !global1.a.x))))), select(abs(var_1.c.zzz), var_1.c.zzw, var_1.b.a.xzw), vec4<i32>(-1i, countOneBits(u_input.a.x), firstTrailingBit(arg_1.x), ~50049i | (-1i >> (reverseBits(global1.b.x) % 32u))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 29u)];
    global1 = Struct_3(global1.a, select(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(abs(global1.b.x), ~41421u), ~firstTrailingBit(global1.b.x)), 29u)], ~firstLeadingBit(vec2<u32>(4294967295u, global1.b.x) ^ global1.b), select(global1.a.wz, vec2<bool>(all(global1.a), global1.a.x && global1.a.x), select(global1.a.wx, !vec2<bool>(global1.a.x, global1.a.x), any(global1.a.wy)))), _wgslsmith_f_op_f32(2016f * global0[_wgslsmith_index_u32(1u, 29u)]));
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(~1u, ~0u, ~global1.b.x, global1.b.x), firstTrailingBit(~(~vec4<u32>(0u, 1u, 72642u, global1.b.x)))), vec4<u32>(global1.b.x, ~(~0u) | global1.b.x, ~6554u, select(69111u, _wgslsmith_mult_u32(0u, 16263u), false)));
    var var_2 = func_4(Struct_4(func_1()), ~(-(~vec4<i32>(2562i, 42756i, 0i, u_input.a.x) << (vec4<u32>(var_1.x, global1.b.x, 30950u, global1.b.x) % vec4<u32>(32u)))));
    global2 = array<vec4<f32>, 25>();
    global1 = Struct_3(!vec4<bool>(25985i <= _wgslsmith_mult_i32(-13658i, u_input.a.x), all(!vec4<bool>(var_2.b.x, global1.a.x, true, true)), !var_2.b.x, true), global1.b, -2043f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e | -var_2.e, var_2.a);
}

