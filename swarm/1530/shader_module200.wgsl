struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<f32>(427f, -394f), 42790i, vec4<f32>(1180f, -628f, -775f, 243f), vec4<f32>(1949f, 1083f, 696f, 2237f)), Struct_1(vec2<f32>(-425f, -360f), 10689i, vec4<f32>(120f, -922f, -1000f, -385f), vec4<f32>(602f, -858f, -265f, 562f)), Struct_1(vec2<f32>(-730f, 902f), i32(-2147483648), vec4<f32>(-464f, -1550f, -350f, 676f), vec4<f32>(-1065f, -875f, -412f, 791f)), Struct_1(vec2<f32>(-572f, -235f), 2147483647i, vec4<f32>(-1187f, -1000f, -239f, 409f), vec4<f32>(-2098f, -467f, 172f, 1111f)), Struct_1(vec2<f32>(-747f, 288f), 1i, vec4<f32>(-2534f, -691f, -1665f, 1235f), vec4<f32>(-334f, 354f, -1097f, 769f)), Struct_1(vec2<f32>(-131f, 1084f), i32(-2147483648), vec4<f32>(1110f, 411f, -358f, 873f), vec4<f32>(1000f, 361f, 340f, -753f)), Struct_1(vec2<f32>(1409f, 350f), -18728i, vec4<f32>(915f, -1281f, -1000f, -292f), vec4<f32>(-1313f, 674f, 1250f, 159f)), Struct_1(vec2<f32>(-341f, -554f), 9019i, vec4<f32>(495f, 1779f, 1034f, -642f), vec4<f32>(-1259f, -413f, 1261f, -739f)), Struct_1(vec2<f32>(576f, -106f), -13639i, vec4<f32>(1432f, -1644f, -133f, -265f), vec4<f32>(1137f, 1281f, 891f, -216f)), Struct_1(vec2<f32>(515f, -538f), 1i, vec4<f32>(-1000f, 941f, 364f, 878f), vec4<f32>(-1795f, 142f, -731f, 1853f)), Struct_1(vec2<f32>(899f, -1000f), 5386i, vec4<f32>(-502f, 1000f, 1000f, 320f), vec4<f32>(-1099f, -506f, 816f, -526f)), Struct_1(vec2<f32>(2717f, 559f), 33481i, vec4<f32>(714f, -485f, -624f, 2518f), vec4<f32>(-300f, -1285f, -1776f, 486f)), Struct_1(vec2<f32>(-3388f, -863f), 0i, vec4<f32>(-489f, -1123f, -1100f, -1000f), vec4<f32>(559f, -100f, -920f, 1239f)), Struct_1(vec2<f32>(-383f, 995f), 1i, vec4<f32>(1568f, -180f, -701f, -625f), vec4<f32>(-856f, -1113f, -1108f, 699f)), Struct_1(vec2<f32>(1244f, 1856f), 0i, vec4<f32>(-234f, 1248f, 1158f, -1381f), vec4<f32>(-228f, -866f, -1051f, -189f)), Struct_1(vec2<f32>(275f, 1000f), 0i, vec4<f32>(-2416f, 476f, 629f, 372f), vec4<f32>(-307f, -140f, -1251f, 1074f)));

var<private> global2: array<vec2<bool>, 24>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(309f, 413f), -63190i, vec4<f32>(597f, -1654f, -965f, 944f), vec4<f32>(1651f, 530f, -1000f, 2206f));

var<private> global4: bool = true;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_1, -36436i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), global3.d.x, _wgslsmith_f_op_f32(global3.c.x + 167f), -256f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d) + _wgslsmith_f_op_vec4_f32(-global3.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 870f, arg_1.x, 153f), global3.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1615f, 952f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(909f, -1000f, global3.d.x, global3.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global3.d, global3.c))), select(true, true, true))));
    var var_1 = var_0;
    let var_2 = var_0;
    global0 = ~vec4<u32>(arg_0.x, ~arg_0.x, global0.x, arg_0.x);
    return !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), any(global2[_wgslsmith_index_u32(global0.x, 24u)])), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), true));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0.a.x;
    let var_1 = select(reverseBits(vec4<u32>(abs(4294967295u), ~(~12015u), ~0u, _wgslsmith_sub_u32(~0u, global0.x))), select(vec4<u32>(global0.x, 0u, ~reverseBits(global0.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.yw)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, 70899u, global0.x, global0.x), vec4<u32>(global0.x, 37961u, 1u, 4294967295u)) & vec4<u32>(1u, global0.x, global0.x, 0u)), func_3(min(vec3<u32>(global0.x, 1u, 9053u), ~vec3<u32>(4294967295u, global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, -660f)))), false);
    var var_2 = abs(global3.b);
    global1 = array<Struct_1, 16>();
    var var_3 = arg_0;
    return true;
}

fn func_1() -> vec4<f32> {
    global4 = all(vec2<bool>((46957u == reverseBits(global0.x)) | (global0.x < 0u), false));
    var var_0 = !vec4<bool>(!(!func_2(Struct_1(vec2<f32>(-285f, -791f), u_input.b, global3.c, global3.d))), true || (false || (global3.b >= 17117i)), any(vec3<bool>(true, true, true)), func_3(countOneBits(global0.yzy), vec2<f32>(global3.d.x, -261f)).x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, -660f, 540f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, 1655f, global3.c.x) - _wgslsmith_f_op_vec3_f32(ceil(global3.c.xzx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.x, global3.a.x, global3.d.x), global3.c.yyz)))))));
    var_0 = select(vec4<bool>(~_wgslsmith_sub_i32(u_input.b, u_input.a.x) >= ~select(0i, global3.b, true), false, false, true), !select(vec4<bool>(!var_0.x, select(var_0.x, false, true), var_0.x, any(vec3<bool>(true, false, true))), !func_3(vec3<u32>(4294967295u, 4294967295u, 26408u), vec2<f32>(1167f, var_1.x)), vec4<bool>(all(vec3<bool>(true, var_0.x, false)), true, true, false)), select(func_3(vec3<u32>(global0.x, 0u, global0.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1050f, var_1.x) * vec2<f32>(-253f, var_1.x)), _wgslsmith_f_op_vec2_f32(step(var_1.yy, global3.a))))), select(func_3(abs(vec3<u32>(23061u, 0u, 49567u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-302f, -1000f) * vec2<f32>(-786f, -656f))), select(!vec4<bool>(var_0.x, var_0.x, false, true), !vec4<bool>(false, var_0.x, false, true), !var_0.x), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x)), select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x), func_3(global0.zyz, vec2<f32>(global3.d.x, -334f)), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), (var_1.x <= global3.a.x) && !var_0.x)));
    global4 = var_0.x;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, var_1.x, -932f, 1249f)) + vec4<f32>(-1321f, var_1.x, var_1.x, var_1.x)) - global3.d) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(global3.d, global3.c, var_0.x)))))), vec4<f32>(-1449f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1101f + var_1.x), _wgslsmith_f_op_f32(global3.c.x - var_1.x), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(-var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~66257u;
    let var_1 = Struct_1(vec2<f32>(global3.a.x, global3.d.x), (~2147483647i >> (var_0 % 32u)) << (global0.x % 32u), _wgslsmith_f_op_vec4_f32(-global3.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-173f * 653f), -1520f, _wgslsmith_div_f32(759f, 102f), global3.a.x))));
    var var_2 = var_1.c.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.d.zy + _wgslsmith_div_vec2_f32(global3.d.yw, _wgslsmith_f_op_vec2_f32(step(global3.c.xy, var_1.d.wz))))), var_1.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1253f, 570f, 640f, -527f) - vec4<f32>(947f, global3.d.x, 849f, var_1.d.x)))))));
    let var_4 = (true || (u_input.b != (u_input.a.x ^ 0i))) & false;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -26265i, -1i, -_wgslsmith_mult_vec4_i32(vec4<i32>(~var_3.b, 1i, -2147483647i, firstLeadingBit(17711i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global3.b, var_1.b, -32779i, 0i), vec4<i32>(var_3.b, var_1.b, 0i, 0i))), global3.c.xx);
}

