struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1876i, -4160i, -14486i, -1i);

var<private> global1: array<bool, 25>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.c.yx * vec2<f32>(arg_2.c.a.x, _wgslsmith_f_op_f32(-arg_1.c.x))), vec4<bool>(any(!select(arg_1.d, vec4<bool>(arg_2.a.c.x, true, true, arg_1.b.x), arg_2.a.d.d)), arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true | arg_2.b.x), _wgslsmith_f_op_vec4_f32(arg_1.c - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f + arg_1.a.x)), 386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c.x))), arg_1.c.x)), select(vec4<bool>(false, any(!vec4<bool>(arg_0.x, false, false, true)), any(!arg_0), true), arg_2.a.d.d, select(all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(43666u, 25u)]), arg_1.b.wz, false)), all(!arg_2.a.c), true)));
    var var_1 = -vec3<i32>(~min(-7026i, -1i), _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(1i, global0.x)), -32305i) ^ (vec3<i32>(_wgslsmith_dot_vec3_i32(global0.www, arg_2.a.a), ~(-27267i), global0.x) & ~vec3<i32>(global0.x ^ 1i, 28087i, arg_2.a.a.x));
    global1 = array<bool, 25>();
    var var_2 = arg_2;
    var var_3 = reverseBits(vec3<i32>(15719i, firstLeadingBit(~(-var_2.a.a.x)), 1i));
    return global0.xw << (~(select(abs(u_input.a.zy), vec2<u32>(u_input.a.x, u_input.a.x), arg_2.c.d.x) & (~u_input.a.xx & ~vec2<u32>(u_input.a.x, 1u))) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    let var_0 = vec2<bool>(_wgslsmith_div_u32(1u, 1u) >= _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.wxw, u_input.a.xyw >> (vec3<u32>(6981u, 4294967295u, u_input.a.x) % vec3<u32>(32u)), u_input.a.wxx), vec3<u32>(u_input.a.x, u_input.a.x & u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x))), global1[_wgslsmith_index_u32(~(u_input.a.x >> (_wgslsmith_mod_u32(select(0u, 1u, false), u_input.a.x) % 32u)), 25u)]);
    var var_1 = ~40423u <= reverseBits(u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(286f, 222f, var_0.x)), _wgslsmith_f_op_f32(ceil(-922f)), _wgslsmith_f_op_f32(min(223f, -1238f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1200f, 1510f, -823f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -624f, 1121f))))) * vec3<f32>(563f, _wgslsmith_f_op_f32(-1601f * _wgslsmith_f_op_f32(1966f + 733f)), -408f)));
    global1 = array<bool, 25>();
    let var_3 = Struct_3(Struct_2(~_wgslsmith_div_vec3_i32(min(global0.yxx, global0.xzx), global0.yxy), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(211f, 354f, var_2.x, 151f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, var_2.x, -780f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(global1[_wgslsmith_index_u32(41259u, 25u)], true, true, global1[_wgslsmith_index_u32(1u, 25u)])))))), select(!vec3<bool>(true, var_0.x, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true)), global1[_wgslsmith_index_u32(u_input.a.x, 25u)] & var_0.x, !global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), !select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(30167u, 25u)], false, true), global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, 959f)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, var_0.x, var_0.x), vec4<bool>(false, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, true, true)), !vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(50411u, 25u)], true), !vec4<bool>(true, global1[_wgslsmith_index_u32(14731u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 1034f, -802f, -602f), vec4<f32>(var_2.x, var_2.x, var_2.x, -2064f), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0.x, false))), select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false, true), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], true, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), true))), select(!(!select(var_0, vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))), var_0, true | select(any(var_0), var_2.x <= 842f, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1375f * -823f) + _wgslsmith_f_op_f32(var_2.x - var_2.x)), -343f), select(vec4<bool>(!global1[_wgslsmith_index_u32(19553u, 25u)], true, all(vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(1u, 25u)], false)), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], var_0.x))), !select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, true, var_0.x, global1[_wgslsmith_index_u32(0u, 25u)]), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), !select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, false, var_0.x, true), true)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -1274f) - -1097f), _wgslsmith_f_op_f32(round(-454f)), -967f), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, false, var_0.x), select(select(vec4<bool>(global1[_wgslsmith_index_u32(29067u, 25u)], false, var_0.x, global1[_wgslsmith_index_u32(41092u, 25u)]), vec4<bool>(true, true, true, var_0.x), global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(0u, 25u)]), select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], true), global1[_wgslsmith_index_u32(55944u, 25u)])), vec4<bool>(var_0.x, var_0.x, 41235i < u_input.b, global1[_wgslsmith_index_u32(63136u, 25u)]))));
    return -u_input.b;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: u32) -> i32 {
    global0 = vec4<i32>(-global0.x, func_4(func_3(vec4<bool>(global1[_wgslsmith_index_u32(arg_3, 25u)], false, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)]), Struct_1(vec2<f32>(-713f, 1000f), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], false), vec4<f32>(-1901f, -1489f, 892f, -1045f), vec4<bool>(global1[_wgslsmith_index_u32(arg_3, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], false, global1[_wgslsmith_index_u32(0u, 25u)])), Struct_3(Struct_2(vec3<i32>(-4387i, u_input.b, 2147483647i), vec4<f32>(-1545f, 1737f, -583f, -706f), vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(arg_3, 25u)], global1[_wgslsmith_index_u32(arg_3, 25u)]), Struct_1(vec2<f32>(2194f, -373f), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 25u)], false, false, global1[_wgslsmith_index_u32(arg_1.x, 25u)]), vec4<f32>(1458f, 402f, -1337f, -654f), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)], true, global1[_wgslsmith_index_u32(arg_0.x, 25u)]))), vec2<bool>(true, true), Struct_1(vec2<f32>(-1000f, -276f), vec4<bool>(true, true, false, false), vec4<f32>(107f, -816f, 624f, -1588f), vec4<bool>(false, true, global1[_wgslsmith_index_u32(13708u, 25u)], true))))), -(~u_input.b & 2147483647i), -20636i) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2.x, 8942i, 49888i, 2147483647i))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(13090i, u_input.b, -53669i, 30965i)), vec4<i32>(u_input.b, u_input.b, global0.x, 20922i))), vec4<i32>(2147483647i, global0.x, _wgslsmith_mod_i32(u_input.b >> (arg_3 % 32u), abs(arg_2.x)), select(33995i ^ arg_2.x, global0.x >> (arg_0.x % 32u), 12660u > u_input.a.x)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2102f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1079f, -901f) * _wgslsmith_f_op_f32(f32(-1f) * -1249f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-883f + 1565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1661f, _wgslsmith_f_op_f32(-1202f + -1941f), arg_3 > arg_3)) * -392f))));
    global0 = vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.x, u_input.b, 2147483647i, 11556i)), vec4<i32>(42687i, -2147483647i, 0i, global0.x) & vec4<i32>(1i, u_input.b, 7048i, global0.x)));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(min(~arg_0.x ^ u_input.a.x, arg_3), arg_1.x, u_input.a.x), ~reverseBits(~arg_0.x), 0u, ~_wgslsmith_sub_u32(abs(1u << (1u % 32u)), _wgslsmith_dot_vec3_u32(arg_0, arg_0)));
    global1 = array<bool, 25>();
    return 2147483647i;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<i32>(max(4089i, ~20528i) >> (u_input.a.x % 32u), reverseBits(u_input.b), 48077i, _wgslsmith_mult_i32(~u_input.b, func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), u_input.a.yz), ~arg_0, _wgslsmith_sub_u32(84818u, u_input.a.x)), firstLeadingBit(vec3<u32>(arg_0, 3813u, arg_0)), abs(global0.zx), _wgslsmith_mult_u32(_wgslsmith_add_u32(31269u, arg_0), u_input.a.x))));
    var var_1 = vec3<f32>(-134f, arg_1.x, -1000f);
    let var_2 = u_input.a.wyw;
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    return Struct_2(vec3<i32>(13322i, u_input.b | _wgslsmith_mod_i32(u_input.b | u_input.b, -2147483647i), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(330f * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), false)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(sign(-663f))), 2141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2128f - -784f)) * 167f), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))), select(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(5380u, 25u)], true), vec3<bool>(global1[_wgslsmith_index_u32(var_2.x, 25u)] && global1[_wgslsmith_index_u32(114543u, 25u)], global1[_wgslsmith_index_u32(arg_0, 25u)] | global1[_wgslsmith_index_u32(arg_0, 25u)], !global1[_wgslsmith_index_u32(1u, 25u)]), !select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(arg_0, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]))), !vec3<bool>(global1[_wgslsmith_index_u32(~u_input.a.x, 25u)], true, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, true))), vec3<bool>(_wgslsmith_f_op_f32(-174f * -710f) < _wgslsmith_f_op_f32(-arg_1.x), !(u_input.a.x > arg_0), !(var_2.x < 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))), vec4<bool>(false | !global1[_wgslsmith_index_u32(arg_0, 25u)], true & global1[_wgslsmith_index_u32(4294967295u, 25u)], false || any(vec3<bool>(global1[_wgslsmith_index_u32(37619u, 25u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(218f, 1000f, arg_1.x, var_1.x))), vec4<f32>(-1999f, -1027f, var_1.x, 453f), !vec4<bool>(true, global1[_wgslsmith_index_u32(39781u, 25u)], false, global1[_wgslsmith_index_u32(0u, 25u)]))), !vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(20803u, 25u)] && true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-290f, 721f), vec2<f32>(1000f, -832f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2846f, -170f))))))), select(vec2<bool>(true, all(func_1(54511u, vec2<f32>(-3145f, 745f)).d.b)), select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(59346u, 25u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(4106u, 25u)]), true), !vec2<bool>(false, global1[_wgslsmith_index_u32(38326u, 25u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(14667u, 25u)], false), vec2<bool>(false, false), true)), select(func_1(u_input.a.x, vec2<f32>(727f, -289f)).d.d.wx, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), all(vec3<bool>(global1[_wgslsmith_index_u32(22344u, 25u)], global1[_wgslsmith_index_u32(35953u, 25u)], false))), false), func_1(max(u_input.a.x << (u_input.a.x % 32u), u_input.a.x ^ u_input.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 925f), vec2<f32>(-1623f, 1158f)), func_1(4294967295u, vec2<f32>(-389f, 472f)).b.yx, select(vec2<bool>(global1[_wgslsmith_index_u32(19369u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), false)))).c.zy), func_1(abs(8422u), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-871f * 294f), _wgslsmith_f_op_f32(-319f - -133f), select(global1[_wgslsmith_index_u32(1u, 25u)], true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-361f, -1000f), -1000f)))).d);
    let var_1 = 4294967295u;
    global1 = array<bool, 25>();
    let var_2 = var_0;
    global0 = -(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -2147483647i, 23321i, var_2.a.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, var_1, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.a.x, 70981i, 0i, global0.x), vec4<i32>(2147483647i, -1i, -22077i, 2147483647i)))) << (_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_add_u32(0u, u_input.a.x)), abs(~var_1), _wgslsmith_add_u32(min(4294967295u, var_1), ~u_input.a.x), u_input.a.x), vec4<u32>(0u, var_1, _wgslsmith_div_u32(u_input.a.x, 1u), u_input.a.x)) % vec4<u32>(32u));
    global1 = array<bool, 25>();
    var var_3 = Struct_4(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b.xyy)) - vec3<f32>(var_0.a.b.x, -2972f, _wgslsmith_f_op_f32(-var_3.a.c.c.x))))), vec4<f32>(func_1(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1494f, -1446f)))).d.c.x, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) - -259f), _wgslsmith_f_op_f32(-func_1(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, var_2.a.d.a.x))).b.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-var_3.a.a.a.yx, ~(vec2<i32>(1i, 0i) | var_3.a.a.a.xz)), 2147483647i, 0i | (func_1(1u, vec2<f32>(-847f, 845f)).a.x << (select(58393u, 95695u, true) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.c.x, var_2.a.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.c.a.x * var_2.c.c.x) + _wgslsmith_f_op_f32(ceil(-182f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c.a.x) + var_2.a.d.a.x)))), func_1(abs(u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_2.c.a.x)) * var_3.a.c.c.xy)).a.x);
}

