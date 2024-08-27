struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(1279f, -909f, 890f, -1324f), vec3<i32>(55304i, -26573i, 7237i), -135f), Struct_1(vec4<f32>(-530f, 1000f, 1120f, -714f), vec3<i32>(-26007i, 37577i, 1i), 536f), Struct_1(vec4<f32>(374f, 2085f, 1200f, 1406f), vec3<i32>(34315i, 7910i, 21187i), -684f), Struct_1(vec4<f32>(-1332f, -1491f, 1286f, 526f), vec3<i32>(13969i, 2147483647i, 1i), -280f), Struct_1(vec4<f32>(-1163f, 559f, 1676f, -1000f), vec3<i32>(2147483647i, 52727i, -12616i), 665f), Struct_1(vec4<f32>(782f, 342f, 615f, 1598f), vec3<i32>(i32(-2147483648), 2147483647i, -15750i), -226f), Struct_1(vec4<f32>(-2334f, -702f, 172f, -3355f), vec3<i32>(-1i, i32(-2147483648), -11404i), 1000f), Struct_1(vec4<f32>(211f, -389f, 802f, -855f), vec3<i32>(i32(-2147483648), -1i, -1i), 1886f), Struct_1(vec4<f32>(-911f, 2402f, -249f, 962f), vec3<i32>(i32(-2147483648), -28327i, 0i), 211f), Struct_1(vec4<f32>(136f, 1359f, -1779f, 104f), vec3<i32>(-42453i, 33849i, -1i), 1315f), Struct_1(vec4<f32>(-522f, -2107f, 514f, 731f), vec3<i32>(-76967i, 60761i, 2147483647i), 1000f), Struct_1(vec4<f32>(686f, 301f, -1855f, 1530f), vec3<i32>(-77599i, -20328i, 1i), -798f), Struct_1(vec4<f32>(-498f, -198f, -1698f, 624f), vec3<i32>(-21385i, 1i, 36798i), 950f), Struct_1(vec4<f32>(545f, -1902f, 1115f, -105f), vec3<i32>(0i, -1i, 1i), 459f), Struct_1(vec4<f32>(-565f, -388f, -423f, -1404f), vec3<i32>(-27484i, i32(-2147483648), 1i), -1379f), Struct_1(vec4<f32>(160f, -579f, -822f, 2030f), vec3<i32>(1350i, i32(-2147483648), 0i), 2186f), Struct_1(vec4<f32>(1231f, -709f, -1874f, 768f), vec3<i32>(-1i, 1i, -18683i), 733f), Struct_1(vec4<f32>(-1233f, 815f, -1475f, 1338f), vec3<i32>(-1i, 38981i, 6407i), -248f), Struct_1(vec4<f32>(-1000f, 877f, 946f, 672f), vec3<i32>(-52556i, 1i, 1i), 1467f), Struct_1(vec4<f32>(-382f, 1314f, -274f, -194f), vec3<i32>(66084i, 1i, i32(-2147483648)), -1168f), Struct_1(vec4<f32>(681f, 1000f, -1000f, -1148f), vec3<i32>(2147483647i, 21316i, 10135i), -490f), Struct_1(vec4<f32>(-865f, -672f, 1378f, 1089f), vec3<i32>(i32(-2147483648), 1i, 1i), -439f), Struct_1(vec4<f32>(1301f, -1000f, -453f, 1458f), vec3<i32>(2147483647i, 24055i, i32(-2147483648)), 218f), Struct_1(vec4<f32>(-664f, -845f, 368f, 930f), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 105f), Struct_1(vec4<f32>(307f, 192f, 111f, 1034f), vec3<i32>(2147483647i, 44154i, -55018i), 471f), Struct_1(vec4<f32>(-310f, 713f, -603f, 1000f), vec3<i32>(0i, 2147483647i, -1i), 1382f), Struct_1(vec4<f32>(122f, -1000f, -1195f, 463f), vec3<i32>(-1i, i32(-2147483648), 2147483647i), -236f), Struct_1(vec4<f32>(1167f, 1122f, -1132f, -341f), vec3<i32>(-1i, 80226i, 0i), -1061f), Struct_1(vec4<f32>(-148f, -150f, 1000f, -972f), vec3<i32>(i32(-2147483648), 17192i, 0i), 670f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    let var_0 = u_input.a.zz & min(~firstLeadingBit(u_input.a.zz), select(u_input.a.xy, max(vec2<u32>(13143u, 2971u), u_input.a.xx) >> (abs(u_input.a.xy) % vec2<u32>(32u)), global0.x && global0.x));
    global1 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_div_i32(arg_0.b.x, -_wgslsmith_mult_i32(6418i, arg_0.b.x));
    global0 = !(!vec3<bool>(!global0.x, -arg_0.b.x == -arg_0.b.x, true));
    global0 = select(!vec3<bool>(global0.x, all(vec3<bool>(global0.x, false, true)), true), vec3<bool>(true, global0.x, true), !any(!vec4<bool>(true, false, true, global0.x)));
    return arg_0.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(561f, 1095f, 650f, -615f), vec3<i32>(-13653i, arg_1, 0i), 330f), _wgslsmith_f_op_vec3_f32(vec3<f32>(129f, -922f, 1573f) * vec3<f32>(685f, 637f, -1716f)), -954f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2454f + 434f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1001f, 1000f) + vec2<f32>(-1000f, 215f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(947f, 1404f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, 834f))), arg_0.x));
    let var_1 = Struct_1(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 29u)], vec3<f32>(var_0.x, var_0.x, var_0.x), 1000f)))) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f)))), vec3<i32>(i32(-1i) * -16619i, _wgslsmith_sub_i32(arg_1, _wgslsmith_clamp_i32(-arg_1, ~0i, arg_1)), ~(-2147483647i)), 332f);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-691f, 825f) * var_1.a.ww))) * _wgslsmith_f_op_vec2_f32(var_1.a.zz + vec2<f32>(_wgslsmith_f_op_f32(select(1898f, var_0.x, global0.x)), -1080f))));
    global1 = array<Struct_1, 29>();
    global0 = !arg_0;
    return u_input.a.yx;
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1485f), 1f, _wgslsmith_f_op_f32(round(-1435f)), _wgslsmith_f_op_f32(select(913f, -221f, false))), vec4<f32>(-730f, 124f, -766f, _wgslsmith_f_op_f32(select(826f, -655f, global0.x))))), vec3<i32>(-1i, abs(0i), -select(0i, -96i, global0.x) ^ 1i), _wgslsmith_f_op_f32(f32(-1f) * -540f));
    var_0 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~func_2(vec3<bool>(true, false, global0.x), 1i), vec2<u32>(4294967295u, u_input.a.x) << (~vec2<u32>(51035u, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~u_input.a.zz, ~(~vec2<u32>(u_input.a.x, u_input.a.x))))), 29u)];
    let var_1 = vec4<u32>(36213u ^ u_input.a.x, 43938u, 4294967295u | u_input.a.x, func_2(select(!vec3<bool>(global0.x, false, false), select(!vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(false, true, false), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, global0.x, false)), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, true, global0.x))), any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, true), global0.x))), firstTrailingBit(abs(5807i))).x);
    global0 = vec3<bool>(!(!(_wgslsmith_div_f32(-1214f, var_0.c) > _wgslsmith_f_op_f32(-1000f * -1000f))), all(vec2<bool>(global0.x || true, global0.x)) & !(!global0.x), (false && any(vec3<bool>(global0.x, false, global0.x))) & any(!select(global0.zz, vec2<bool>(global0.x, true), global0.yx)));
    let var_2 = vec2<u32>(var_1.x, ~var_1.x);
    return select(!(!vec3<bool>(all(vec2<bool>(false, global0.x)), any(global0.xz), !global0.x)), vec3<bool>(global0.x, !(countOneBits(var_0.b.x) >= ~var_0.b.x), true), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = max(_wgslsmith_dot_vec2_i32(arg_1.b.xy, select(arg_1.b.yy, ~(~vec2<i32>(0i, arg_1.b.x)), select(global0.yy, select(vec2<bool>(arg_0.x, false), arg_0.zy, global0.yx), 58465i != arg_1.b.x))), -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.a.x, 780f)))), -1296f));
    let var_2 = u_input.a.x;
    global1 = array<Struct_1, 29>();
    var var_3 = _wgslsmith_f_op_f32(round(var_1));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)))), u_input.a.zz, arg_1.a.ww, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(func_1(), vec3<bool>(true, true, true), vec3<bool>(true && global0.x, global0.x, select(true, global0.x, false))), global1[_wgslsmith_index_u32(min(abs(57977u), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(57078u, 20749u, 0u, 44361u), vec4<u32>(12695u, 1u, 4294967295u, 1u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 42985u) % vec4<u32>(32u))))), 29u)]);
}

