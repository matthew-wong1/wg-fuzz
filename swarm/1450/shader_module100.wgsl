struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<i32>(-1i, 0i, 2147483647i, -1i), 1u, -124f, vec4<f32>(1000f, 1291f, -276f, -227f), 373f), Struct_1(vec4<i32>(2147483647i, -7426i, 1i, 43960i), 7529u, -1841f, vec4<f32>(-249f, -1000f, 2041f, -883f), 506f), Struct_1(vec4<i32>(-6007i, 12276i, -13974i, 1i), 1u, 236f, vec4<f32>(-1157f, -515f, -1139f, 2253f), -563f), Struct_1(vec4<i32>(1i, 1i, 0i, -31389i), 13305u, 231f, vec4<f32>(212f, 2391f, 147f, -380f), -133f), Struct_1(vec4<i32>(0i, 0i, 1i, 1i), 1u, 1315f, vec4<f32>(-1159f, -1726f, 1000f, -2054f), 802f), Struct_1(vec4<i32>(46089i, 64830i, -1i, -21731i), 0u, -354f, vec4<f32>(-933f, 719f, -905f, -1516f), 139f), Struct_1(vec4<i32>(0i, -28197i, -25882i, -3468i), 4294967295u, 403f, vec4<f32>(173f, -1477f, 867f, 1051f), 926f), Struct_1(vec4<i32>(1i, -1i, -1i, -11856i), 4294967295u, 542f, vec4<f32>(-668f, -1000f, 1095f, -942f), 1245f), Struct_1(vec4<i32>(39651i, i32(-2147483648), -2069i, -40899i), 60658u, -385f, vec4<f32>(507f, 1876f, -1386f, -268f), 1205f), Struct_1(vec4<i32>(0i, 0i, 15149i, 1i), 4294967295u, -438f, vec4<f32>(-320f, 176f, 1307f, 292f), 163f), Struct_1(vec4<i32>(-45635i, 2147483647i, 2147483647i, 2147483647i), 4294967295u, -1314f, vec4<f32>(-1000f, -1000f, -1691f, 1550f), 663f), Struct_1(vec4<i32>(1i, 3011i, 20181i, 2147483647i), 26705u, -1569f, vec4<f32>(1000f, 450f, -182f, -611f), -859f), Struct_1(vec4<i32>(-13455i, 70551i, -19917i, 19225i), 19754u, 2117f, vec4<f32>(863f, 1842f, -264f, -946f), -739f), Struct_1(vec4<i32>(0i, 44460i, -36801i, 1901i), 4294967295u, -657f, vec4<f32>(-254f, 1293f, 1261f, -517f), 528f), Struct_1(vec4<i32>(1i, 0i, -6880i, 2147483647i), 0u, 1000f, vec4<f32>(-686f, -2391f, -450f, 183f), -1320f), Struct_1(vec4<i32>(1i, -25891i, 9453i, 2147483647i), 20880u, 736f, vec4<f32>(1446f, 1569f, -296f, -455f), -1818f));

var<private> global1: array<i32, 23> = array<i32, 23>(45644i, 2147483647i, -1i, -11368i, -36722i, -37023i, 2147483647i, 1i, 67292i, 0i, -13154i, i32(-2147483648), 0i, 0i, 1i, -23169i, 1i, 10887i, -1i, 31718i, 0i, -22107i, 2147483647i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global1 = array<i32, 23>();
    var var_0 = arg_2.b;
    global1 = array<i32, 23>();
    return ~(~(global1[_wgslsmith_index_u32(arg_2.b, 23u)] ^ 28347i));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(u_input.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.x, 1000f, 906f))))), 2533f));
    global0 = array<Struct_1, 16>();
    var var_1 = var_0.a;
    let var_2 = 1u;
    var var_3 = min(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(46375u, var_2, var_1.b, var_2), vec4<u32>(var_1.b, var_1.b, 1u, 57044u)) & min(vec4<u32>(1u, var_1.b, var_0.a.b, 4294967295u), vec4<u32>(0u, var_0.a.b, var_0.a.b, 1u)), ~select(vec4<u32>(var_1.b, 0u, var_2, 15874u), vec4<u32>(var_2, var_0.a.b, 4294967295u, var_0.a.b), vec4<bool>(false, arg_1, arg_1, arg_1))), _wgslsmith_add_vec4_u32(~vec4<u32>(42245u, var_1.b, 4294967295u, 2858u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 1u, 1u), vec3<u32>(4294967295u, 12966u, var_1.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, 4294967295u), vec2<u32>(var_2, 10432u)), _wgslsmith_clamp_u32(1u, var_2, 59479u), var_1.b))) | ~vec4<u32>(~17449u << (max(71375u, var_2) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1981u, 7797u), vec2<u32>(7955u, var_0.a.b)), ~vec2<u32>(var_2, 1u)), ~min(var_2, 48004u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0.a.b, var_1.b, 0u), vec4<u32>(0u, var_1.b, 4294967295u, 4294967295u)));
    return !select(vec3<bool>(true, !arg_1, !arg_1), !select(!vec3<bool>(false, false, arg_1), !vec3<bool>(arg_1, arg_1, false), any(vec3<bool>(arg_1, arg_1, true))), !(!vec3<bool>(arg_1, arg_1, arg_1)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(u_input.a, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -787f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, 1361f, -2877f, _wgslsmith_f_op_f32(-arg_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 1781f) - _wgslsmith_f_op_f32(max(-2876f, -810f))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-295f)) + arg_2.x)))));
    var var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(35495u), ~abs(var_0.b), 21816u, (0u << (arg_1.x % 32u)) ^ _wgslsmith_sub_u32(arg_1.x, var_0.b)), vec4<u32>(arg_1.x, var_0.b, ~max(4294967295u, 1u), arg_1.x)) >> (firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, 0u, arg_1.x, 40449u), vec4<u32>(0u, 22154u, var_0.b, var_0.b), vec4<u32>(arg_1.x, arg_1.x, var_0.b, arg_1.x)), ~vec4<u32>(arg_1.x, 1u, 41476u, 42768u), ~vec4<u32>(var_0.b, arg_1.x, 35728u, arg_1.x)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_sub_vec2_u32(max(var_1.xy, ~arg_1.yx & ~countOneBits(vec2<u32>(var_0.b, arg_1.x))), vec2<u32>(_wgslsmith_add_u32(~(~arg_1.x), 4294967295u), ~4294967295u));
    var_2 = ~vec2<u32>(0u, abs(1u));
    global1 = array<i32, 23>();
    return select(!select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, false), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(true, any(vec3<bool>(arg_0.x, arg_0.x, true)), arg_0.x, false), any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, false, false)))), vec4<bool>(any(!select(vec3<bool>(false, false, arg_0.x), vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x))), true, any(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), true), !(!select(vec4<bool>(false, arg_0.x, true, false), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, true, false, arg_0.x), arg_0.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    var_0 = any(!vec4<bool>(true, arg_0, true, arg_0));
    global0 = array<Struct_1, 16>();
    let var_1 = func_4(vec2<bool>(arg_0, true), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1439u, 23852u, 51333u), vec3<u32>(55172u, 49594u, 5377u)), 1u, ~89783u), func_3(arg_1.x, true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1584f, arg_1.x, -413f)))), -func_2(vec4<bool>(true, true, arg_0, arg_0), -1272f, global0[_wgslsmith_index_u32(1u, 16u)], true))), arg_1.xw, ~firstTrailingBit(arg_2.yy));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec4<i32>(firstLeadingBit(func_1(true, vec4<f32>(1000f, -396f, -1853f, -531f), vec3<i32>(-2147483647i, u_input.c.x, u_input.d.x), vec3<f32>(-825f, -2182f, -506f))), _wgslsmith_mult_i32(min(global1[_wgslsmith_index_u32(20181u, 23u)], u_input.b), u_input.a.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 5479i), vec3<i32>(u_input.a.x, -1i, global1[_wgslsmith_index_u32(56923u, 23u)])), -u_input.d.x), 39506u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-245f)) + _wgslsmith_f_op_f32(abs(-696f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1170f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1638f)) + _wgslsmith_div_f32(171f, -1211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(ceil(-1155f)), _wgslsmith_f_op_f32(round(-1394f))), -1741f);
    let var_1 = vec2<u32>(1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(202f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.e))), var_0.e), var_0.d.wyw)), var_0.d.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d.xzy)) - vec3<f32>(_wgslsmith_f_op_f32(134f * var_0.e), 1000f, 263f)), _wgslsmith_f_op_vec3_f32(var_0.d.wwy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.xyx + vec3<f32>(-107f, var_0.d.x, -1114f)) - var_0.d.zwz)), select(vec3<bool>(1914f < var_0.c, false, var_1.x != var_1.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), var_0.d.xw);
}

