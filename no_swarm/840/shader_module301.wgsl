struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(1000f, vec2<f32>(-278f, 1089f), vec3<u32>(42294u, 0u, 28403u), vec4<f32>(-531f, 1643f, 1353f, 1000f)), Struct_1(246f, vec2<f32>(-367f, -1028f), vec3<u32>(1u, 19167u, 60915u), vec4<f32>(-307f, -1292f, 1693f, 1554f)), Struct_1(-1338f, vec2<f32>(-1548f, 1901f), vec3<u32>(0u, 11094u, 4294967295u), vec4<f32>(1313f, -492f, -2057f, 1530f)), Struct_1(869f, vec2<f32>(-1309f, 1720f), vec3<u32>(1u, 1u, 1u), vec4<f32>(-637f, 245f, 1000f, -698f)), Struct_1(-474f, vec2<f32>(715f, 437f), vec3<u32>(89668u, 0u, 19393u), vec4<f32>(-129f, 1216f, -1713f, 1000f)), Struct_1(-192f, vec2<f32>(-492f, 1117f), vec3<u32>(24727u, 0u, 73113u), vec4<f32>(333f, -685f, -341f, 2445f)), Struct_1(438f, vec2<f32>(1000f, -731f), vec3<u32>(0u, 14111u, 10551u), vec4<f32>(144f, 1795f, 1233f, -739f)), Struct_1(427f, vec2<f32>(890f, 172f), vec3<u32>(20268u, 37674u, 1u), vec4<f32>(-816f, -1000f, -269f, 1051f)), Struct_1(155f, vec2<f32>(-141f, 520f), vec3<u32>(27968u, 7558u, 1u), vec4<f32>(-1092f, -709f, -387f, -771f)), Struct_1(1487f, vec2<f32>(-1255f, 2104f), vec3<u32>(0u, 56527u, 78267u), vec4<f32>(-1499f, -1084f, -1000f, -1270f)), Struct_1(-1514f, vec2<f32>(1296f, -1264f), vec3<u32>(38405u, 0u, 4294967295u), vec4<f32>(534f, 517f, -1255f, 241f)), Struct_1(-1259f, vec2<f32>(-701f, 305f), vec3<u32>(79121u, 25070u, 1u), vec4<f32>(706f, 477f, 1197f, -1952f)), Struct_1(1000f, vec2<f32>(-656f, -2721f), vec3<u32>(4294967295u, 37760u, 4294967295u), vec4<f32>(-415f, -202f, -624f, 1770f)), Struct_1(878f, vec2<f32>(1000f, -1000f), vec3<u32>(31939u, 86378u, 1u), vec4<f32>(109f, -461f, -2083f, -2068f)), Struct_1(1265f, vec2<f32>(-699f, -213f), vec3<u32>(34283u, 58305u, 4294967295u), vec4<f32>(-517f, -339f, -916f, 1128f)), Struct_1(-493f, vec2<f32>(-287f, -2019f), vec3<u32>(5785u, 40981u, 44198u), vec4<f32>(-757f, -2640f, 297f, -966f)), Struct_1(-1282f, vec2<f32>(-276f, -719f), vec3<u32>(5949u, 1u, 4294967295u), vec4<f32>(-480f, -453f, 1015f, 1000f)), Struct_1(-877f, vec2<f32>(1370f, -798f), vec3<u32>(59424u, 4294967295u, 30791u), vec4<f32>(312f, -1126f, -392f, -438f)), Struct_1(188f, vec2<f32>(-1558f, 501f), vec3<u32>(162916u, 70290u, 65934u), vec4<f32>(562f, -484f, 1279f, -789f)), Struct_1(252f, vec2<f32>(3044f, -760f), vec3<u32>(1u, 39269u, 70880u), vec4<f32>(514f, -219f, -708f, -1000f)), Struct_1(-1000f, vec2<f32>(-498f, -1346f), vec3<u32>(403u, 150299u, 82684u), vec4<f32>(1200f, 124f, -689f, 289f)), Struct_1(620f, vec2<f32>(413f, -997f), vec3<u32>(1u, 69406u, 37964u), vec4<f32>(-530f, 2091f, -370f, 331f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = select(vec2<u32>(abs(1u), global0.c.x), arg_3.yz, true);
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var_0 = ~_wgslsmith_mult_vec2_u32(arg_3.yz, reverseBits(vec2<u32>(2413u, 1u) >> (arg_3.xx % vec2<u32>(32u))));
    global1 = array<Struct_1, 22>();
    return global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, var_0.x, arg_3.x, 22730u), vec4<u32>(global0.c.x, 1u, arg_3.x, global0.c.x)), ~vec4<u32>(var_0.x, 0u, var_0.x, 1u)), ~(vec4<u32>(global0.c.x, arg_3.x, arg_3.x, 38879u) << (~vec4<u32>(4294967295u, global0.c.x, 4294967295u, var_0.x) % vec4<u32>(32u))))), 22u)];
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    global1 = array<Struct_1, 22>();
    var var_0 = ((-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)) << (vec2<u32>(arg_2.c.x, ~arg_1.x) % vec2<u32>(32u))) | vec2<i32>(u_input.a, -1i)) | vec2<i32>(1i, _wgslsmith_sub_i32(8973i >> (_wgslsmith_clamp_u32(1u, 28856u, 1u) % 32u), u_input.a));
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.d.x, -227f, 788f), arg_2.d.xzx)), _wgslsmith_f_op_vec3_f32(round(arg_2.d.yzy)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(func_2(vec3<f32>(global0.a, global0.d.x, 343f), vec4<f32>(-1582f, global0.b.x, -587f, 918f), arg_2.d.zzw, global0.c).d, _wgslsmith_f_op_vec4_f32(step(arg_2.d, vec4<f32>(arg_2.b.x, -804f, -305f, arg_2.b.x)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.d)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2151f, _wgslsmith_f_op_f32(max(-287f, arg_2.a)), _wgslsmith_f_op_f32(sign(arg_2.b.x)))), ~(~arg_2.c) ^ vec3<u32>(0u, abs(1u), arg_0)), global1[_wgslsmith_index_u32(min(~(global0.c.x | arg_2.c.x), firstTrailingBit(88686u ^ arg_0)), 22u)], all(!vec4<bool>(select(true, true, true), var_0.x <= -1i, true, true)), 804f, _wgslsmith_dot_vec2_u32(arg_1.yz, abs(~global0.c.yy)));
    global1 = array<Struct_1, 22>();
    var var_2 = !select(!select(vec4<bool>(var_1.c, false, var_1.c, var_1.c), !vec4<bool>(true, true, true, var_1.c), true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, var_1.c, var_1.c, false), true), vec4<bool>(true, var_1.c, var_1.c, var_1.c), all(vec3<bool>(false, false, false))), false);
    return _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-17036i, 0i)), vec2<i32>(var_0.x, var_0.x) >> (global0.c.yy % vec2<u32>(32u))), firstLeadingBit(~vec2<i32>(2147483647i, u_input.a)), reverseBits(firstTrailingBit(vec2<i32>(u_input.a, -71633i)))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, countOneBits(~var_0.x)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, u_input.a) & vec2<i32>(7600i, 36106i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(var_0.x, 2147483647i)), max(vec2<i32>(u_input.a, 4031i), vec2<i32>(2147483647i, 44173i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(u_input.a, u_input.a)), select(1i, -44664i, true)))));
}

fn func_1() -> f32 {
    global0 = func_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a))), global0.a), _wgslsmith_f_op_f32(2106f + _wgslsmith_f_op_f32(f32(-1f) * -360f)), global0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, global0.a, global0.d.x, -563f))))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(max(global0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -817f))), -179f), global0.c);
    let var_0 = firstTrailingBit(abs(func_2(_wgslsmith_f_op_vec3_f32(-global0.d.zwz), global0.d, _wgslsmith_f_op_vec3_f32(global0.d.wyy - _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 692f, 157f), vec3<f32>(-810f, 435f, global0.b.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 29426u, 4294967295u), global0.c)).c.x));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), ~_wgslsmith_sub_i32(~func_3(83876u, global0.c, global1[_wgslsmith_index_u32(global0.c.x, 22u)]), u_input.a), 27014i);
    let var_2 = all(vec2<bool>(true && (~global0.c.x != (0u >> (global0.c.x % 32u))), false));
    let var_3 = global1[_wgslsmith_index_u32(46105u, 22u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(abs(1f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    global0 = arg_1.b;
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(-global0.d.zwz), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_f_op_f32(func_1()), 1132f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f))), vec3<f32>(_wgslsmith_div_f32(-1000f, -178f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.a.b.x, 1946f)), -288f, true)), -1000f), arg_1.a.c);
    return StorageBuffer(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~_wgslsmith_clamp_u32(0u, ~0u, reverseBits(global0.c.x))), global0.c.x, !select(true, true, true));
    let var_1 = -u_input.a;
    let var_2 = _wgslsmith_add_i32(16415i, _wgslsmith_add_i32((var_1 | _wgslsmith_add_i32(0i, u_input.a)) ^ _wgslsmith_clamp_i32(u_input.a ^ var_1, u_input.a, -1516i), ~_wgslsmith_mult_i32(-42057i, u_input.a >> (4294967295u % 32u))));
    var var_3 = 406f;
    var var_4 = _wgslsmith_mult_i32(~45759i, _wgslsmith_div_i32(var_1, -(1i & select(0i, -2147483647i, false))));
    let x = u_input.a;
    s_output = func_4(Struct_2(Struct_1(677f, vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(1000f - global0.b.x)), vec3<u32>(~global0.c.x, min(global0.c.x, var_0), _wgslsmith_dot_vec2_u32(global0.c.xy, global0.c.zz)), vec4<f32>(791f, global0.d.x, global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -336f))), global1[_wgslsmith_index_u32(reverseBits(4294967295u), 22u)], false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2382f + 1337f))) - 136f), firstTrailingBit(75835u)), Struct_2(global1[_wgslsmith_index_u32(var_0, 22u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -375f)), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.d)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, -1136f, -425f, -730f), vec4<f32>(2160f, -418f, global0.a, 322f)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), global0.a, var_0), false | !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
}

