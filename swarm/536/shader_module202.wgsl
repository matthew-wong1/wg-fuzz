struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true, vec3<i32>(2147483647i, 13553i, -1i), vec4<f32>(-558f, -1245f, 1019f, -245f), vec2<f32>(-123f, 307f), 0i), Struct_1(false, vec3<i32>(i32(-2147483648), 45822i, 18117i), vec4<f32>(-429f, 1216f, 159f, -1649f), vec2<f32>(-727f, 992f), 2147483647i), Struct_1(true, vec3<i32>(-19859i, 41313i, 1i), vec4<f32>(1369f, 1385f, 811f, 442f), vec2<f32>(-1048f, 367f), 1632i), Struct_1(false, vec3<i32>(i32(-2147483648), 0i, -1i), vec4<f32>(124f, 347f, -1146f, 1000f), vec2<f32>(-1044f, -1613f), -14260i), Struct_1(false, vec3<i32>(14644i, -62616i, 1i), vec4<f32>(1743f, 1346f, 526f, 569f), vec2<f32>(-1805f, 645f), -28305i), Struct_1(false, vec3<i32>(0i, i32(-2147483648), 1i), vec4<f32>(511f, 1205f, 1213f, -1000f), vec2<f32>(1269f, -323f), -7565i), Struct_1(true, vec3<i32>(26085i, -6813i, -4579i), vec4<f32>(968f, -308f, 815f, -206f), vec2<f32>(1387f, 1000f), 1i), Struct_1(false, vec3<i32>(-35709i, i32(-2147483648), 7399i), vec4<f32>(-1238f, 1000f, 1142f, 988f), vec2<f32>(-1072f, -1072f), 20092i), Struct_1(false, vec3<i32>(0i, 27361i, 1i), vec4<f32>(-973f, 1126f, 137f, 606f), vec2<f32>(-1627f, -1000f), i32(-2147483648)), Struct_1(true, vec3<i32>(1i, 52808i, 1i), vec4<f32>(-1861f, -1832f, 1047f, -767f), vec2<f32>(702f, -1201f), -19507i), Struct_1(true, vec3<i32>(-5731i, -36474i, 9854i), vec4<f32>(-782f, -374f, -428f, 1639f), vec2<f32>(1000f, -2332f), -57311i), Struct_1(false, vec3<i32>(-46992i, 0i, 7569i), vec4<f32>(-586f, -222f, -1207f, 674f), vec2<f32>(-554f, 737f), 1i), Struct_1(true, vec3<i32>(2147483647i, -27696i, 2147483647i), vec4<f32>(-213f, -404f, -234f, 292f), vec2<f32>(-560f, -1254f), 46023i), Struct_1(false, vec3<i32>(-54074i, i32(-2147483648), 1i), vec4<f32>(-391f, 1000f, 849f, 822f), vec2<f32>(-1194f, 152f), 10856i), Struct_1(true, vec3<i32>(i32(-2147483648), 28191i, 35832i), vec4<f32>(-951f, 1512f, -475f, 319f), vec2<f32>(-971f, -532f), 2147483647i), Struct_1(false, vec3<i32>(i32(-2147483648), -1i, -1i), vec4<f32>(-728f, 1304f, -476f, -289f), vec2<f32>(1000f, 1447f), i32(-2147483648)), Struct_1(true, vec3<i32>(28506i, -1i, -1i), vec4<f32>(1608f, -2327f, -1010f, -585f), vec2<f32>(101f, 555f), 0i), Struct_1(true, vec3<i32>(-1i, 1i, -17874i), vec4<f32>(120f, -999f, 1372f, -1203f), vec2<f32>(1000f, -479f), 4466i), Struct_1(false, vec3<i32>(7381i, i32(-2147483648), 14148i), vec4<f32>(863f, -1000f, -1006f, 543f), vec2<f32>(834f, 717f), -222i), Struct_1(true, vec3<i32>(-40421i, 396i, 2147483647i), vec4<f32>(-3521f, 1470f, 1000f, -1350f), vec2<f32>(-1724f, -582f), 21908i), Struct_1(true, vec3<i32>(23992i, -1i, -28942i), vec4<f32>(172f, 1261f, 249f, 944f), vec2<f32>(-380f, -529f), 13419i), Struct_1(true, vec3<i32>(i32(-2147483648), i32(-2147483648), 1067i), vec4<f32>(-1096f, -474f, -1129f, -1000f), vec2<f32>(1000f, 1826f), 29938i), Struct_1(true, vec3<i32>(2147483647i, 0i, 19702i), vec4<f32>(-545f, -714f, 1073f, -468f), vec2<f32>(798f, -145f), 0i), Struct_1(true, vec3<i32>(-1i, -2422i, 10212i), vec4<f32>(-802f, 1794f, 181f, -1209f), vec2<f32>(2219f, -1068f), 1i), Struct_1(true, vec3<i32>(1i, -15900i, 1i), vec4<f32>(1240f, -586f, 762f, 465f), vec2<f32>(-1434f, -334f), -56311i), Struct_1(true, vec3<i32>(22330i, 18420i, -38480i), vec4<f32>(-193f, -2823f, 665f, -1000f), vec2<f32>(1000f, -1157f), -24423i), Struct_1(false, vec3<i32>(17711i, 63704i, -1i), vec4<f32>(-429f, 1578f, 158f, -789f), vec2<f32>(-1000f, 723f), 1i), Struct_1(true, vec3<i32>(6740i, 9598i, -25940i), vec4<f32>(-698f, -1210f, 855f, 873f), vec2<f32>(-757f, -1047f), 50820i), Struct_1(false, vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec4<f32>(633f, 2615f, -739f, -515f), vec2<f32>(178f, -325f), 62270i));

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: u32) -> vec3<u32> {
    global0 = array<Struct_1, 29>();
    var var_0 = true;
    let var_1 = _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 43047u, 0u, arg_3), vec4<u32>(10887u, u_input.b.x, arg_3, u_input.b.x))), arg_1.x);
    let var_2 = -272f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1264f)));
    global1 = array<vec3<u32>, 12>();
    return abs(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xy) ^ vec2<u32>(arg_1.x, 4294967295u), max(arg_1.zw, vec2<u32>(58601u, arg_1.x)) << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), 12u)]);
}

fn func_2() -> vec3<i32> {
    global3 = array<bool, 28>();
    global0 = array<Struct_1, 29>();
    global3 = array<bool, 28>();
    let var_0 = all(!(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 28u)], true, global3[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(20549u, 28u)], false), vec3<bool>(global2.a, global2.a, false)))));
    return (global2.b << (vec3<u32>(~(~0u), 4294967295u, 30060u) % vec3<u32>(32u))) >> (~_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.b.x, 27945u, 51666u), global1[_wgslsmith_index_u32(u_input.d, 12u)], any(vec3<bool>(global3[_wgslsmith_index_u32(17043u, 28u)], false, var_0))), func_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.d), 29u)], vec4<u32>(53941u, 4294967295u, u_input.b.x, 9377u), vec4<bool>(global2.a, true, global3[_wgslsmith_index_u32(88793u, 28u)], false), ~u_input.d)) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = ~abs(u_input.b.yy);
    let var_2 = Struct_1(global2.a, reverseBits(~min(~vec3<i32>(u_input.c, global2.e, var_0), -vec3<i32>(var_0, -2147483647i, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1303f, arg_0.x, -1160f) - vec4<f32>(global2.c.x, global2.c.x, arg_0.x, 345f)) * arg_0) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(global2.c)), arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.c.x, arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)))), -_wgslsmith_dot_vec3_i32(func_2(), vec3<i32>(var_0, 2147483647i | u_input.a, -51885i)));
    var var_3 = var_2.d;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1466f - -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(159f))))), 1278f);
    return Struct_1(!(true || select(true, true, false)), _wgslsmith_sub_vec3_i32(var_2.b, select(var_2.b, ~(~vec3<i32>(-19747i, var_0, 2147483647i)), !select(vec3<bool>(true, true, var_2.a), vec3<bool>(global2.a, global2.a, global2.a), global3[_wgslsmith_index_u32(u_input.d, 28u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(972f, _wgslsmith_f_op_f32(abs(var_2.c.x)), -641f, _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(global2.c * vec4<f32>(arg_0.x, global2.c.x, 327f, global2.c.x)))), _wgslsmith_f_op_vec4_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, 372f)) * _wgslsmith_f_op_vec2_f32(arg_0.xx + arg_0.xx))), u_input.a & -63848i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> StorageBuffer {
    global3 = array<bool, 28>();
    let var_0 = !vec4<bool>(u_input.d > countOneBits(u_input.b.x | u_input.b.x), true, any(vec4<bool>(arg_1.a, arg_1.a, global3[_wgslsmith_index_u32(u_input.d, 28u)], global2.a)) != arg_0.a, _wgslsmith_f_op_f32(sign(358f)) >= global2.d.x);
    let var_1 = ~(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(95498u, u_input.d, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.d, u_input.b.x, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 31547u, u_input.d), u_input.b), _wgslsmith_sub_u32(0u, 0u), select(u_input.b.x, u_input.b.x, true), 1u), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(49288u, 4294967295u, 20626u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.d, 38020u, 1u)))) & vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.yy), vec2<u32>(u_input.d, u_input.d)), u_input.b.x & select(1u, 36748u, global3[_wgslsmith_index_u32(u_input.d, 28u)]), 0u, u_input.b.x));
    global0 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c.xzw), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d.x, -1816f, _wgslsmith_f_op_f32(min(604f, arg_0.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-920f)))), -486f, 1000f))));
    return StorageBuffer(_wgslsmith_mult_u32(u_input.d, 4294967295u), arg_1.c.wyw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(2087f, global2.d.x, global3[_wgslsmith_index_u32(1u, 28u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1582f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, global2.d.x)))), Struct_1(true, vec3<i32>(u_input.c, global2.b.x, global2.e), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.d.x)), _wgslsmith_f_op_f32(exp2(global2.d.x)), -597f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - _wgslsmith_f_op_f32(-global2.c.x))), global2.c.wz, -_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, u_input.a), abs(global2.e))), vec2<i32>(u_input.c ^ _wgslsmith_mult_i32(-u_input.a, global2.b.x), ~(-2147483647i)));
}

