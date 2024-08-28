struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-480f, -30655i, -626f, vec3<f32>(-268f, -361f, 948f), vec4<bool>(false, false, false, false));

var<private> global1: array<f32, 21> = array<f32, 21>(-3341f, 271f, 1483f, 2162f, -480f, 214f, -265f, -1000f, -1075f, 998f, 208f, 1254f, 452f, -2084f, -362f, -612f, 275f, 901f, -473f, -480f, -1251f);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(-1000f, 2147483647i, -834f, vec3<f32>(-443f, -1000f, 956f), vec4<bool>(false, false, true, false)), Struct_4(-198f, -1i, 1410f, vec3<f32>(2163f, -352f, -1452f), vec4<bool>(false, false, true, true)), Struct_4(446f, 1i, 317f, vec3<f32>(-160f, -444f, 1000f), vec4<bool>(true, false, false, true)), Struct_4(-599f, -2933i, 1306f, vec3<f32>(-1509f, 716f, 1057f), vec4<bool>(true, false, true, true)), Struct_4(2331f, 1i, -814f, vec3<f32>(-496f, -1909f, 364f), vec4<bool>(true, true, false, false)), Struct_4(-1749f, 5968i, 1692f, vec3<f32>(-972f, -472f, -547f), vec4<bool>(true, false, true, false)), Struct_4(-1000f, i32(-2147483648), -1184f, vec3<f32>(920f, -1000f, 1462f), vec4<bool>(true, true, false, true)), Struct_4(1665f, -22085i, -333f, vec3<f32>(-990f, 1386f, -434f), vec4<bool>(true, false, true, true)), Struct_4(-427f, 2322i, -1416f, vec3<f32>(1142f, -1701f, 819f), vec4<bool>(false, true, true, true)), Struct_4(442f, -1i, 211f, vec3<f32>(-1105f, 760f, 2000f), vec4<bool>(true, false, false, false)), Struct_4(481f, 1i, 480f, vec3<f32>(-421f, 351f, -964f), vec4<bool>(true, false, true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<i32> {
    let var_0 = Struct_3(vec3<bool>(!(true & global0.e.x), all(vec2<bool>(any(vec3<bool>(false, global0.e.x, global0.e.x)), all(vec3<bool>(global0.e.x, global0.e.x, global0.e.x)))), global0.c == 332f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1178f - _wgslsmith_f_op_f32(-global0.c)), 781f) * -1090f), -474f, Struct_1(select(global0.e.ywy, select(!vec3<bool>(global0.e.x, global0.e.x, global0.e.x), select(global0.e.wxw, vec3<bool>(global0.e.x, false, global0.e.x), global0.e.wyx), !global0.e.x), global0.e.xyy), vec4<bool>(false, _wgslsmith_f_op_f32(-arg_0) >= global1[_wgslsmith_index_u32(~66789u, 21u)], global0.e.x, all(!global0.e.zzy)), any(!global0.e.zx)), Struct_1(select(vec3<bool>(!global0.e.x, global0.e.x, -989f < global1[_wgslsmith_index_u32(28702u, 21u)]), !(!vec3<bool>(global0.e.x, global0.e.x, false)), 1u != u_input.e), select(vec4<bool>(all(global0.e.xz), true, global0.e.x && global0.e.x, global0.e.x), global0.e, true), !all(vec3<bool>(global0.e.x, false, false))));
    let var_1 = Struct_2(var_0.a.x);
    var var_2 = abs(select(~countOneBits(max(vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 4294967295u))), ~countOneBits(vec2<u32>(36399u, u_input.e) ^ vec2<u32>(92819u, u_input.d)), !(false || any(vec3<bool>(var_0.d.c, global0.e.x, var_1.a)))));
    var var_3 = u_input.a ^ reverseBits(vec2<i32>(-(~global2.x), 3443i));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(385f, 715f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1286f * -181f), global1[_wgslsmith_index_u32(42477u, 21u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 21u)]))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1572f, global0.a, global0.a, 388f)))))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, 534f, 964f, var_0.c)), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], 776f, -1303f, 1573f), !var_0.e.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, global0.c, -1445f, -2501f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 21u)], global1[_wgslsmith_index_u32(var_2.x, 21u)], 164f, -1089f) + vec4<f32>(global0.c, -545f, global1[_wgslsmith_index_u32(196u, 21u)], 1506f)), vec4<bool>(false, true, false, var_0.e.a.x)))), select(!global0.e, !(!vec4<bool>(true, var_0.e.c, true, global0.e.x)), select(global0.e, !global0.e, vec4<bool>(var_1.a, var_1.a, global0.e.x, false))))));
    return vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(abs(countOneBits(-global2.yxx)), vec3<i32>(max(global2.x << (var_2.x % 32u), 0i | arg_1), -(~global2.x), reverseBits(_wgslsmith_mult_i32(global0.b, -2147483647i)))), firstTrailingBit(3931i), -53246i);
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.c;
    global3 = array<Struct_4, 11>();
    global2 = -abs(~(-abs(u_input.b)));
    global2 = _wgslsmith_div_vec4_i32(-(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, global0.b, var_0), vec4<i32>(0i, 1i, -5226i, 25774i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, global2.x, global0.b), u_input.b)) | -u_input.b, func_3(_wgslsmith_f_op_f32(global0.c + global0.c), u_input.a.x));
    global1 = array<f32, 21>();
    return Struct_3(!(!select(global0.e.wzw, vec3<bool>(global0.e.x, global0.e.x, true), any(global0.e.yx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 21u)]) * global0.a), -319f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~abs(u_input.e)), 21u)]), Struct_1(select(!(!global0.e.zwz), global0.e.yyw, global0.e.x), vec4<bool>(global0.e.x, !(false || global0.e.x), true, false), all(vec4<bool>(global0.e.x, false || global0.e.x, any(global0.e), true || global0.e.x))), Struct_1(global0.e.yzz, vec4<bool>(true, true, true, true), !any(!global0.e.yw)));
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    global3 = array<Struct_4, 11>();
    let var_0 = func_2();
    var var_1 = 2147483647i;
    var var_2 = func_2();
    var_2 = func_2();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1476f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(9322u, 21u)], -1000f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 1605f))))));
    let var_1 = 72233u;
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-538f, 1895f)) + -863f), firstTrailingBit(-20731i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-664f * _wgslsmith_f_op_f32(-1000f + global0.d.x)), -299f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, 51589u, 20690u), vec4<u32>(var_1, u_input.e, 26906u, 0u)), 21u)]), global1[_wgslsmith_index_u32(1u, 21u)], -247f)), !vec4<bool>(all(vec2<bool>(global0.e.x, global0.e.x)), true, _wgslsmith_div_f32(global0.a, -291f) <= _wgslsmith_f_op_f32(-global0.d.x), func_1(global1[_wgslsmith_index_u32(~58343u, 21u)], global0.e.x)));
    global1 = array<f32, 21>();
    var var_2 = -countOneBits(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, u_input.b.x), u_input.b.yx)));
    var_2 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1, 21u)]), func_2().b), i32(-1i) * -global2.x).wz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-363f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58226u, u_input.d, 33878u, var_1) | vec4<u32>(u_input.d, 1u, 35777u, u_input.d), vec4<u32>(u_input.d, var_1, 4294967295u, 0u)), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32836u, 21u)]) - global0.c)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(34926u, 6749u), vec2<u32>(4294967295u, 0u)), 21u)]))), countOneBits(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, 4294967295u), vec2<u32>(var_1, var_1))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7651u, 21u)]), ~_wgslsmith_div_i32(2147483647i, max(global0.b, ~global2.x)));
}

