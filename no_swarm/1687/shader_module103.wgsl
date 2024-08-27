struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-1883f), Struct_2(757f), Struct_2(1462f), Struct_2(822f), Struct_2(1242f), Struct_2(-1000f), Struct_2(-1000f), Struct_2(-1123f), Struct_2(-2234f), Struct_2(-283f), Struct_2(-136f), Struct_2(229f), Struct_2(149f), Struct_2(1528f), Struct_2(1459f), Struct_2(-2479f), Struct_2(185f), Struct_2(612f), Struct_2(2443f));

var<private> global1: vec4<f32> = vec4<f32>(2005f, 113f, -871f, 1000f);

var<private> global2: vec4<f32>;

var<private> global3: vec3<bool>;

var<private> global4: array<i32, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-155f - 266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(360f)) * _wgslsmith_f_op_f32(trunc(arg_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global2.x, arg_1.a.x)))), arg_1.a.x), arg_1.b, arg_1.c, arg_0.x, arg_1.e), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))), ~(~vec4<i32>(arg_1.e >> (4294967295u % 32u), 17172i, ~14416i, global4[_wgslsmith_index_u32(~u_input.d, 8u)])), _wgslsmith_f_op_f32(floor(-2122f)));
    var var_1 = global0[_wgslsmith_index_u32(arg_1.b.x, 19u)];
    global1 = var_0.a.a;
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(abs(-338f));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_2.a * var_0.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(234f, 599f, 728f, var_3), _wgslsmith_f_op_vec4_f32(max(arg_1.a, vec4<f32>(global2.x, global1.x, var_0.b, -1048f))), !arg_0)) - _wgslsmith_f_op_vec4_f32(min(var_0.a.a, _wgslsmith_f_op_vec4_f32(arg_1.a + vec4<f32>(-1041f, global2.x, -1381f, var_0.b)))))) + var_0.a.a);
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_2, 19>();
    let var_0 = ~(~abs(~(~vec4<u32>(u_input.d, u_input.b, 1u, 0u))));
    global4 = array<i32, 8>();
    var var_1 = 1i;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global2.x + global1.x), 1008f, _wgslsmith_f_op_f32(global2.x + global2.x), -1258f), vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, global2.x)), _wgslsmith_f_op_f32(2118f - -341f), 647f, 501f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 763f, -219f, -236f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global2.x, 893f) * vec4<f32>(329f, global1.x, global1.x, global2.x)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 2345f, _wgslsmith_div_f32(-682f, global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(false, global3.x, global3.x, global3.x), Struct_1(vec4<f32>(-747f, global1.x, 260f, global1.x), vec3<u32>(0u, 4294967295u, u_input.d), vec3<bool>(global3.x, global3.x, global3.x), global3.x, u_input.c))) - vec4<f32>(global1.x, -2315f, 677f, global2.x)), !(!vec4<bool>(true, true, global3.x, global3.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1915f), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -883f))));
    return global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(131u, 12329u, u_input.d) | vec3<u32>(var_0.x, 21450u, 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, var_0.x, u_input.d), var_0.ywz, var_0.wzz), var_0.wxw)), abs(~_wgslsmith_div_u32(959u, u_input.b) >> ((min(var_0.x, u_input.b) << (60071u % 32u)) % 32u))), 19u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = func_2();
    var var_1 = Struct_1(arg_0, ~(~reverseBits(arg_1.b ^ arg_2.a.b)), select(!select(vec3<bool>(false, global3.x, false), select(vec3<bool>(arg_2.a.d, false, global3.x), arg_2.a.c, arg_1.d), true), arg_1.c, vec3<bool>(arg_2.a.c.x, !(!arg_1.d), false)), 1i == countOneBits(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], 2147483647i)), u_input.a.zx)), 0i);
    let var_2 = Struct_3(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, arg_0.x))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1375f - arg_0.x))), _wgslsmith_f_op_f32(468f * 1602f)))), countOneBits(vec4<i32>(arg_1.e, 1i, global4[_wgslsmith_index_u32(u_input.d >> (u_input.d % 32u), 8u)], u_input.c ^ 1i)) | select(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.c.wy, vec2<i32>(arg_1.e, var_1.e)), ~var_1.e, 11511i, abs(-56566i)), ~(~arg_2.c), select(vec4<bool>(arg_1.d, var_1.c.x, true, true), !vec4<bool>(var_1.c.x, global3.x, false, false), any(vec2<bool>(arg_1.c.x, var_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1548f));
    let var_3 = var_2;
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1174f, arg_0.x, 562f, -411f)), arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 803f, var_1.a.x, var_2.d)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(-arg_2.a.a)), vec4<f32>(-192f, _wgslsmith_f_op_f32(arg_2.a.a.x + 560f), arg_1.a.x, _wgslsmith_f_op_f32(trunc(-840f))))), arg_2.a.a));
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_clamp_i32(-2147483647i, 0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global4[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], u_input.c)), func_1(vec4<f32>(421f, global1.x, -465f, -1284f), Struct_1(vec4<f32>(415f, -742f, 1377f, -1098f), vec3<u32>(1269u, 0u, u_input.b), vec3<bool>(false, false, true), global3.x, u_input.c), Struct_3(Struct_1(vec4<f32>(2052f, -1382f, global2.x, global1.x), vec3<u32>(6877u, u_input.d, u_input.d), vec3<bool>(global3.x, global3.x, true), true, -13835i), 499f, vec4<i32>(48419i, u_input.a.x, u_input.a.x, -1i), global2.x)))) >> ((~(~_wgslsmith_add_u32(u_input.b, 0u)) >> ((~33901u | _wgslsmith_clamp_u32(~u_input.d, _wgslsmith_mult_u32(u_input.d, u_input.d), ~7786u)) % 32u)) % 32u);
    global4 = array<i32, 8>();
    global0 = array<Struct_2, 19>();
    var_0 = -(~(~_wgslsmith_sub_i32(3580i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -43340i, 1i), vec4<i32>(2147483647i, u_input.c, u_input.a.x, u_input.a.x)))));
    let var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(abs(u_input.b), u_input.d) ^ 728u, ~(~4294967295u << (u_input.b % 32u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(13618u, _wgslsmith_mult_u32(u_input.d, u_input.b)), ~4294967295u >> (u_input.d % 32u))));
    var var_2 = func_2().a;
    let var_3 = select(vec2<bool>(!global3.x, true), vec2<bool>(~1i <= (global4[_wgslsmith_index_u32(79931u, 8u)] & 1i), !(_wgslsmith_clamp_u32(var_1.x, 19101u, u_input.b) >= ~u_input.d)), vec2<bool>(any(!select(global3.xx, global3.yy, global3.zx)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, var_3.x, var_3.x, global3.x), Struct_1(vec4<f32>(global2.x, global2.x, -628f, global2.x), var_1, vec3<bool>(true, global3.x, false), true, -47038i))).xw)), vec4<i32>(_wgslsmith_sub_i32(63127i, firstTrailingBit(-42967i)), 1i, _wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.a.x, 50798i), ~u_input.c), (~global4[_wgslsmith_index_u32(4294967295u, 8u)] << (_wgslsmith_mult_u32(87829u, 0u) % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(25028u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)]), u_input.a.zz)), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(0u, u_input.d)) << (u_input.d % 32u), ~(~u_input.b), var_1.x, u_input.d), ~(~(vec4<u32>(6200u, 30729u, var_1.x, var_1.x) | vec4<u32>(var_1.x, u_input.b, 4294967295u, var_1.x)))), -472f);
}

