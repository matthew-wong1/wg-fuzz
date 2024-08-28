struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<bool>(false, true, true, false), 1000f), vec2<bool>(false, false)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), 241f), vec2<bool>(true, false)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), 802f), vec2<bool>(true, false)));

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(false, true, true, true), -2238f), Struct_1(vec4<bool>(true, true, true, false), 2562f), Struct_1(vec4<bool>(true, true, true, false), -820f), Struct_1(vec4<bool>(false, true, true, true), -578f), Struct_1(vec4<bool>(true, false, false, false), 2455f), Struct_1(vec4<bool>(true, true, true, true), -665f), Struct_1(vec4<bool>(false, true, true, true), 1586f), Struct_1(vec4<bool>(true, true, false, false), 1110f), Struct_1(vec4<bool>(true, false, false, true), 255f), Struct_1(vec4<bool>(false, false, false, true), 615f), Struct_1(vec4<bool>(false, true, true, true), 182f), Struct_1(vec4<bool>(true, false, true, false), 781f), Struct_1(vec4<bool>(true, false, true, false), 694f), Struct_1(vec4<bool>(false, false, true, false), -1018f), Struct_1(vec4<bool>(false, false, false, false), -375f), Struct_1(vec4<bool>(true, true, true, true), 1030f), Struct_1(vec4<bool>(false, false, true, true), -1362f), Struct_1(vec4<bool>(true, true, true, true), 789f), Struct_1(vec4<bool>(false, false, true, false), 386f), Struct_1(vec4<bool>(true, true, true, false), -1797f), Struct_1(vec4<bool>(true, true, true, true), 1020f), Struct_1(vec4<bool>(true, true, false, false), 181f), Struct_1(vec4<bool>(true, false, true, false), -1000f), Struct_1(vec4<bool>(true, true, true, false), -2081f), Struct_1(vec4<bool>(true, true, false, false), 946f));

var<private> global3: array<f32, 13>;

var<private> global4: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-605f, 793f, 1030f), vec3<f32>(-136f, -314f, -1000f), vec3<f32>(403f, -1000f, 1978f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(max(42805u, ~0u), 0u), ~firstTrailingBit(u_input.a), vec2<u32>(abs(~u_input.b), ~40817u)), abs(vec2<u32>(0u, countOneBits(_wgslsmith_mod_u32(u_input.d, 0u)))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 13u)] - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(arg_2.a.b * 938f)))), global1.x, -1248f, global1.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(205f, -1754f, -401f, arg_1.b), vec4<f32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(var_1.x, 13u)], -1228f, 121f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(515f, -1266f, 326f, 458f))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-184f, arg_1.b, arg_3.b, global3[_wgslsmith_index_u32(3526u, 13u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, arg_2.a.b, arg_3.b, 1000f))))));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1265f, 189f, arg_3.b, 513f), vec4<f32>(arg_3.b, -1000f, global3[_wgslsmith_index_u32(u_input.d, 13u)], arg_1.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, 331f, global1.x, 311f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, -113f, 434f, arg_3.b), vec4<f32>(arg_1.b, global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(21014u, 13u)], arg_3.b), vec4<bool>(arg_0.x, arg_2.a.a.x, arg_3.a.x, true))), _wgslsmith_div_vec4_f32(vec4<f32>(348f, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 2028f, arg_3.b), vec4<f32>(946f, arg_1.b, -462f, -1399f)), !vec4<bool>(arg_1.a.x, arg_2.b.x, false, arg_3.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(step(822f, arg_3.b)), -188f, _wgslsmith_f_op_f32(min(global1.x, arg_1.b)), _wgslsmith_f_op_f32(sign(-404f)))))));
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, 2077f, -1152f, global3[_wgslsmith_index_u32(u_input.b, 13u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-101f, global1.x, global3[_wgslsmith_index_u32(24989u, 13u)], global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec4<f32>(global1.x, -896f, global1.x, global1.x), false))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(327f, arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 673f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 13u)] - 1121f), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(abs(1501f)), global3[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], -623f, global1.x) + vec4<f32>(global1.x, 740f, global3[_wgslsmith_index_u32(1u, 13u)], -1219f))), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))))));
    let var_0 = global2[_wgslsmith_index_u32(~1u, 25u)];
    let var_1 = vec4<u32>(~42407u, ~u_input.d, countOneBits(0u), u_input.a.x);
    global2 = array<Struct_1, 25>();
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>((arg_0.x >= global3[_wgslsmith_index_u32(var_1.x, 13u)]) | true, true), Struct_1(!(!var_0.a), global1.x), global0[_wgslsmith_index_u32(var_1.x, 3u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.xzx, abs(~vec3<u32>(u_input.d, u_input.b, u_input.a.x))), 25u)])), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(false, false), Struct_1(var_0.a, 170f), global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], Struct_1(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), global3[_wgslsmith_index_u32(var_1.x, 13u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -435f, -926f, global3[_wgslsmith_index_u32(28174u, 13u)]) * vec4<f32>(var_0.b, 1686f, 1914f, -494f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-531f, -690f, var_0.b, 264f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 207f, -1230f, global3[_wgslsmith_index_u32(1u, 13u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1317f, -635f, -1276f, 1664f)))))));
    return _wgslsmith_clamp_vec3_i32(-(~reverseBits(vec3<i32>(0i, u_input.c.x, u_input.c.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x & 5903i, u_input.e.x | u_input.c.x, 4196i, -31667i), vec4<i32>(u_input.c.x, _wgslsmith_add_i32(u_input.e.x, 2147483647i), u_input.c.x, ~(-22615i))), ~_wgslsmith_sub_i32(-28585i, -u_input.c.x), ~u_input.e.x), -(~countOneBits(vec3<i32>(u_input.c.x, -2254i, -2147483647i))) ^ countOneBits(vec3<i32>(countOneBits(u_input.e.x), -u_input.e.x, _wgslsmith_div_i32(u_input.e.x, 0i))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<i32>(-(~(~(~u_input.e.x))), ~(~(-_wgslsmith_div_i32(u_input.e.x, 0i))), i32(-1i) * -2147483647i, -_wgslsmith_dot_vec3_i32(select(func_2(global1.wy), vec3<i32>(2147483647i, 2147483647i, -1i), true), vec3<i32>(13708i, firstLeadingBit(0i), u_input.e.x)));
    global0 = array<Struct_2, 3>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(1u, 13u)], global1.x), _wgslsmith_f_op_vec2_f32(round(global1.wz)), select(true, false, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, false), Struct_1(vec4<bool>(true, true, false, false), global3[_wgslsmith_index_u32(28181u, 13u)]), global0[_wgslsmith_index_u32(abs(u_input.d), 3u)], Struct_1(vec4<bool>(false, true, true, false), -1027f))).xw)), global1.yy);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1011f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + var_1.x)))));
    var var_3 = abs(u_input.b >> (u_input.a.x % 32u));
    return Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~1u, ~min(u_input.b, u_input.d), 4294967295u), 25u)], select(vec2<bool>(true, any(vec4<bool>(true, false, false, false))), vec2<bool>(_wgslsmith_div_f32(-425f, -1595f) >= _wgslsmith_f_op_f32(floor(global1.x)), false), -1593f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(821f - -1998f), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1019f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-300f)) - global1.x))));
    var var_0 = vec2<f32>(-219f, global1.x);
    var var_1 = func_1();
    var_0 = vec2<f32>(1232f, _wgslsmith_f_op_f32(f32(-1f) * -1423f));
    global0 = array<Struct_2, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, true), func_1().a, Struct_2(func_1().a, select(vec2<bool>(var_1.b.x, var_1.b.x), vec2<bool>(true, var_1.a.a.x), vec2<bool>(false, true))), Struct_1(select(var_1.a.a, vec4<bool>(true, true, false, true), var_1.a.a), -134f))).x, 1235f, _wgslsmith_f_op_f32(-global1.x)));
    let var_3 = Struct_1(!var_1.a.a, 881f);
    var var_4 = global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.d), 25u)];
    var var_5 = vec2<bool>(var_4.a.x, false & var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_mult_i32(~(~u_input.c.x), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_4.a.xy, func_1().a, global0[_wgslsmith_index_u32(u_input.b, 3u)], Struct_1(!vec4<bool>(var_4.a.x, var_4.a.x, true, false), -806f))).yw));
}

