struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<f32>(1067f, -216f), vec4<f32>(-249f, 1484f, -1161f, -1465f), vec2<bool>(false, true), vec2<i32>(2147483647i, 4153i), 180f), Struct_1(vec2<f32>(362f, 1424f), vec4<f32>(-1218f, 1679f, 1321f, -288f), vec2<bool>(true, false), vec2<i32>(-1i, 18880i), -769f), Struct_1(vec2<f32>(121f, 2973f), vec4<f32>(1161f, 1268f, 973f, 522f), vec2<bool>(false, true), vec2<i32>(1i, 0i), 1097f), Struct_1(vec2<f32>(-328f, -946f), vec4<f32>(-412f, 495f, 147f, -167f), vec2<bool>(false, true), vec2<i32>(53307i, 1i), -1000f), Struct_1(vec2<f32>(1366f, -668f), vec4<f32>(-635f, -1730f, 504f, 1556f), vec2<bool>(true, false), vec2<i32>(3970i, 1i), -1041f), Struct_1(vec2<f32>(1043f, 550f), vec4<f32>(1081f, -450f, -667f, -616f), vec2<bool>(true, false), vec2<i32>(-52767i, i32(-2147483648)), 641f), Struct_1(vec2<f32>(514f, -1253f), vec4<f32>(417f, 213f, -805f, 1128f), vec2<bool>(false, true), vec2<i32>(-11337i, -1i), -123f), Struct_1(vec2<f32>(647f, -776f), vec4<f32>(265f, 2431f, -903f, 430f), vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -24535i), -113f), Struct_1(vec2<f32>(2384f, -1430f), vec4<f32>(1448f, -1578f, -432f, -1185f), vec2<bool>(true, false), vec2<i32>(2147483647i, -59797i), 658f), Struct_1(vec2<f32>(2083f, -105f), vec4<f32>(-824f, 418f, 1000f, 214f), vec2<bool>(true, true), vec2<i32>(1i, 0i), 1307f), Struct_1(vec2<f32>(421f, 433f), vec4<f32>(-625f, 117f, -711f, -1035f), vec2<bool>(true, false), vec2<i32>(9792i, i32(-2147483648)), -1388f), Struct_1(vec2<f32>(476f, -1890f), vec4<f32>(-457f, 1137f, 1196f, -703f), vec2<bool>(true, true), vec2<i32>(-4854i, 1i), 301f), Struct_1(vec2<f32>(-772f, 1396f), vec4<f32>(1000f, -752f, -1425f, -2041f), vec2<bool>(true, true), vec2<i32>(-1i, 2547i), -820f), Struct_1(vec2<f32>(112f, -1798f), vec4<f32>(-1806f, 165f, -1152f, 722f), vec2<bool>(false, true), vec2<i32>(15037i, -1i), 210f), Struct_1(vec2<f32>(667f, -109f), vec4<f32>(1011f, -610f, -1003f, -1006f), vec2<bool>(true, false), vec2<i32>(-13815i, 0i), -503f), Struct_1(vec2<f32>(-1792f, -961f), vec4<f32>(810f, 357f, 777f, -358f), vec2<bool>(false, true), vec2<i32>(2147483647i, i32(-2147483648)), -758f), Struct_1(vec2<f32>(1118f, 410f), vec4<f32>(1003f, -1221f, 1000f, 1328f), vec2<bool>(true, true), vec2<i32>(-30561i, 13922i), 787f), Struct_1(vec2<f32>(-694f, 650f), vec4<f32>(-398f, 1573f, 271f, 2179f), vec2<bool>(false, false), vec2<i32>(-1i, 7430i), 1502f), Struct_1(vec2<f32>(1000f, -232f), vec4<f32>(299f, 1000f, -786f, 1000f), vec2<bool>(true, true), vec2<i32>(-12840i, 2147483647i), 802f));

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    global2 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    global3 = 368f;
    var var_0 = vec2<bool>(global2.c.x, !arg_0);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.x, _wgslsmith_f_op_f32(284f - _wgslsmith_f_op_f32(f32(-1f) * -942f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 1000f) - global2.a)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global4.a + vec2<f32>(766f, -885f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(step(global2.b.x, global4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.e))), _wgslsmith_f_op_f32(-global4.e), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.b.x * 851f), _wgslsmith_f_op_f32(606f + 680f), true)))), select(vec2<bool>(false, -25525i >= reverseBits(global4.d.x)), !select(!vec2<bool>(false, arg_1), global0[_wgslsmith_index_u32(u_input.a.x, 15u)], any(vec4<bool>(true, true, true, true))), var_0.x), vec2<i32>(21786i, _wgslsmith_mult_i32(~(-4436i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1877i, global2.d.x), vec4<i32>(global4.d.x, -2147483647i, -37292i, 1i)) ^ -37299i)), _wgslsmith_f_op_f32(-297f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.e)) - _wgslsmith_f_op_f32(f32(-1f) * -1601f)))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global4.b.wx, _wgslsmith_f_op_vec2_f32(global4.b.yy + _wgslsmith_f_op_vec2_f32(global2.a + global2.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - global4.e), _wgslsmith_div_f32(global2.e, global2.b.x), _wgslsmith_f_op_f32(ceil(-447f)), global2.e))), global2.c, ~global4.d, -2046f);
    return u_input.a.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    let var_1 = vec3<i32>(1i, -29282i, -var_0.d.x);
    var_0 = global1[_wgslsmith_index_u32(u_input.a.x >> (~_wgslsmith_div_u32(abs(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1u, u_input.a.x))) % 32u), 19u)];
    var var_2 = false;
    let var_3 = abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, u_input.b, arg_1.x, var_0.d.x) ^ vec4<i32>(global4.d.x, u_input.b, -88720i, global4.d.x), vec4<i32>(2147483647i, global4.d.x, -1989i, u_input.b) >> (~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, arg_0.x) % vec4<u32>(32u))) >> (vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(func_2(global2.c.x, true), ~u_input.a.x, ~u_input.a.x), arg_0.x >> (arg_0.x % 32u), 9350u) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b.x, _wgslsmith_div_f32(-472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - global4.b.x))) - global4.a.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = ~(-global2.d) << (vec2<u32>(u_input.a.x, func_2(all(!vec2<bool>(arg_0, false)), select(any(vec3<bool>(global4.c.x, arg_0, arg_0)), true, true))) % vec2<u32>(32u));
    global0 = array<vec2<bool>, 15>();
    var var_1 = select(select(!vec3<bool>(select(global4.c.x, global2.c.x, true), true, global4.a.x < global2.a.x), vec3<bool>(all(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_1.c.x, true, false), vec3<bool>(true, arg_0, global2.c.x))), arg_1.c.x, all(!vec3<bool>(true, global2.c.x, arg_0))), true), !vec3<bool>(arg_0, arg_1.c.x, true), vec3<bool>(true, true, true));
    global3 = _wgslsmith_f_op_f32(468f + global4.a.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4.b, _wgslsmith_f_op_vec4_f32(sign(global4.b))))), var_1.yy, -abs(global4.d ^ vec2<i32>(1i, -2147483647i)), global4.e);
    return _wgslsmith_f_op_f32(func_3(vec2<u32>(max(~4294967295u, reverseBits(u_input.a.x)), u_input.a.x), vec3<i32>(-33371i, u_input.b, _wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(global2.d, vec2<i32>(global4.d.x, -665i))) & global4.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.b.zw)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-617f, global4.e), global2.a)), _wgslsmith_f_op_vec2_f32(max(global2.b.wx, vec2<f32>(global4.b.x, global4.a.x))), !global4.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-992f, global4.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global4.b.x * 2344f), global2.a.x, 1000f, global4.e), vec4<f32>(-643f, global2.b.x, _wgslsmith_f_op_f32(-1590f * 541f), _wgslsmith_f_op_f32(func_1(global4.c.x, Struct_1(global4.b.xy, global2.b, global0[_wgslsmith_index_u32(7675u, 15u)], vec2<i32>(u_input.b, global2.d.x), -266f)))))), vec2<bool>(true, global2.c.x), vec2<i32>(countOneBits(-2147483647i), global4.d.x), _wgslsmith_f_op_f32(global4.b.x - -514f));
    let var_0 = u_input.a;
    let var_1 = global1[_wgslsmith_index_u32(select(56959u, _wgslsmith_add_u32(~(~0u), 4294967295u), global4.c.x), 19u)];
    let var_2 = vec2<u32>(u_input.a.x, var_0.x ^ ~4294967295u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(global4.b.wz)))));
    let var_4 = var_1.c;
    var var_5 = _wgslsmith_dot_vec4_u32(select(~vec4<u32>(~3960u, var_0.x, 73440u, 4294967295u), abs(~(vec4<u32>(var_2.x, var_0.x, var_2.x, var_2.x) << (vec4<u32>(4294967295u, var_0.x, u_input.a.x, var_2.x) % vec4<u32>(32u)))), _wgslsmith_clamp_u32(~var_0.x, ~var_0.x, _wgslsmith_clamp_u32(31886u, 2701u, var_2.x)) < ~41166u), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(32061u, 1u, 1u, u_input.a.x)), select(vec4<u32>(var_2.x, u_input.a.x, 78540u, var_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 41897u), vec4<u32>(u_input.a.x, 74641u, 4294967295u, u_input.a.x)), !vec4<bool>(global4.c.x, global4.c.x, var_1.c.x, var_1.c.x))));
    var var_6 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(-1040f)), 1285f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + global4.b)), vec4<bool>(global4.c.x, global4.c.x || global4.c.x, global4.c.x, false)))), !vec2<bool>(!all(global2.c), false), ~vec2<i32>(global4.d.x, global2.d.x), -980f);
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-410f, 1524f)))) * var_3))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1050f), -111f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-130f, -258f))), !var_6.c, ~vec2<i32>(i32(-1i) * -6357i, global4.d.x), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(4294967295u, 1u, 39277u), 46946u), ~abs(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))), 1i, abs(abs(vec3<i32>(firstTrailingBit(-8238i), _wgslsmith_div_i32(global2.d.x, -2147483647i), 41197i))), var_1.b.xwy);
}

