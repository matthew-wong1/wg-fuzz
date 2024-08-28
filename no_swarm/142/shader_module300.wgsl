struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec3<f32>(-193f, 679f, -410f), vec4<i32>(-1i, -1620i, i32(-2147483648), 0i)), Struct_2(vec3<f32>(880f, -106f, 191f), vec4<i32>(58682i, 52953i, 1i, -16013i)), Struct_2(vec3<f32>(-844f, -1000f, -870f), vec4<i32>(2147483647i, 0i, -47371i, 8860i)), Struct_2(vec3<f32>(-1375f, -987f, 179f), vec4<i32>(0i, 20033i, 2147483647i, -43229i)), Struct_2(vec3<f32>(-1182f, -1018f, 559f), vec4<i32>(2147483647i, i32(-2147483648), -1i, 33440i)), Struct_2(vec3<f32>(-538f, 265f, -835f), vec4<i32>(-14641i, 0i, 1i, 17617i)), Struct_2(vec3<f32>(1000f, -1681f, 2159f), vec4<i32>(0i, 22303i, -1i, 2147483647i)), Struct_2(vec3<f32>(-703f, -1074f, -214f), vec4<i32>(-43739i, 1i, i32(-2147483648), 17875i)), Struct_2(vec3<f32>(1092f, -878f, 193f), vec4<i32>(2147483647i, 29410i, -1i, -1i)), Struct_2(vec3<f32>(-1852f, -1386f, 1210f), vec4<i32>(i32(-2147483648), 0i, -1i, 0i)), Struct_2(vec3<f32>(1206f, -301f, 2459f), vec4<i32>(0i, -28890i, 24100i, 61104i)), Struct_2(vec3<f32>(-2051f, 165f, 1000f), vec4<i32>(-66314i, i32(-2147483648), 5579i, i32(-2147483648))), Struct_2(vec3<f32>(-1560f, 1952f, -1569f), vec4<i32>(9170i, -9014i, 1i, -23312i)), Struct_2(vec3<f32>(271f, 931f, 104f), vec4<i32>(-18600i, -34061i, 1i, 2147483647i)), Struct_2(vec3<f32>(302f, 1331f, -213f), vec4<i32>(11356i, 1i, 2147483647i, -17782i)), Struct_2(vec3<f32>(-2442f, -1115f, -509f), vec4<i32>(-6723i, -2372i, 1i, 1i)), Struct_2(vec3<f32>(175f, 255f, -1000f), vec4<i32>(46824i, 45491i, 0i, -11276i)), Struct_2(vec3<f32>(127f, 259f, -319f), vec4<i32>(1i, -4524i, 2147483647i, -33767i)), Struct_2(vec3<f32>(-1979f, -740f, -1204f), vec4<i32>(-1i, 0i, 1654i, 43403i)), Struct_2(vec3<f32>(-621f, 1939f, -2107f), vec4<i32>(0i, 0i, -8529i, -584i)), Struct_2(vec3<f32>(-351f, -1000f, -799f), vec4<i32>(2220i, 3054i, 2147483647i, -1i)), Struct_2(vec3<f32>(-402f, -232f, 1000f), vec4<i32>(54025i, -1i, 0i, -57050i)), Struct_2(vec3<f32>(1000f, -281f, 499f), vec4<i32>(i32(-2147483648), -56237i, 22947i, 36848i)), Struct_2(vec3<f32>(-1000f, -222f, 248f), vec4<i32>(4215i, 24370i, -16447i, 1i)), Struct_2(vec3<f32>(847f, 369f, -630f), vec4<i32>(6300i, -1222i, 337i, -18877i)), Struct_2(vec3<f32>(-430f, 1000f, -755f), vec4<i32>(9141i, 57168i, 2147483647i, 2147483647i)), Struct_2(vec3<f32>(-193f, -179f, 889f), vec4<i32>(-46435i, -1261i, -1i, i32(-2147483648))));

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(21137i, 2147483647i, 1i), vec3<i32>(-15128i, 30479i, 25175i), vec3<i32>(-1i, i32(-2147483648), -2634i));

var<private> global2: f32 = -715f;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec3<f32>(-1919f, 1887f, -649f), vec4<i32>(0i, 17659i, 0i, 19399i)), Struct_2(vec3<f32>(430f, 824f, 1000f), vec4<i32>(i32(-2147483648), 11835i, 2147483647i, -1i)), Struct_2(vec3<f32>(1286f, 1534f, 747f), vec4<i32>(-1i, 7910i, -11609i, -6710i)), Struct_2(vec3<f32>(513f, -1000f, 1554f), vec4<i32>(27946i, i32(-2147483648), i32(-2147483648), 0i)), Struct_2(vec3<f32>(-696f, 585f, 771f), vec4<i32>(0i, 5506i, i32(-2147483648), 3841i)), Struct_2(vec3<f32>(431f, 372f, -289f), vec4<i32>(i32(-2147483648), 2147483647i, 21675i, 1i)), Struct_2(vec3<f32>(1320f, -145f, 1441f), vec4<i32>(23089i, i32(-2147483648), i32(-2147483648), 17917i)), Struct_2(vec3<f32>(356f, -1000f, -1093f), vec4<i32>(-48880i, -1i, 0i, -20454i)), Struct_2(vec3<f32>(374f, 568f, 475f), vec4<i32>(4409i, 26169i, 0i, -9504i)), Struct_2(vec3<f32>(168f, -194f, 1577f), vec4<i32>(-1681i, -19062i, i32(-2147483648), 1i)), Struct_2(vec3<f32>(461f, 249f, -1000f), vec4<i32>(-1i, 0i, 18277i, i32(-2147483648))), Struct_2(vec3<f32>(1178f, 1102f, -1890f), vec4<i32>(2147483647i, i32(-2147483648), 1i, -5418i)), Struct_2(vec3<f32>(329f, -823f, -2258f), vec4<i32>(0i, 37459i, 2147483647i, 1i)), Struct_2(vec3<f32>(-554f, -458f, 482f), vec4<i32>(-31598i, 15120i, 2147483647i, 2147483647i)), Struct_2(vec3<f32>(-245f, -147f, 1000f), vec4<i32>(1989i, 50051i, i32(-2147483648), -30551i)), Struct_2(vec3<f32>(2114f, 464f, -2302f), vec4<i32>(i32(-2147483648), 35353i, 9945i, 2147483647i)), Struct_2(vec3<f32>(-725f, -1001f, 433f), vec4<i32>(-29784i, -13057i, -1i, -1i)), Struct_2(vec3<f32>(1340f, 1000f, -1474f), vec4<i32>(-25084i, 29928i, i32(-2147483648), -1i)), Struct_2(vec3<f32>(-1293f, 1000f, 236f), vec4<i32>(1i, -1i, 2147483647i, 2147483647i)), Struct_2(vec3<f32>(566f, 1000f, 1755f), vec4<i32>(13318i, 15747i, -32310i, i32(-2147483648))), Struct_2(vec3<f32>(-372f, 908f, -1625f), vec4<i32>(-1i, -7179i, -15541i, 34924i)), Struct_2(vec3<f32>(2262f, -2523f, 1446f), vec4<i32>(-1i, 1i, 0i, 45113i)), Struct_2(vec3<f32>(309f, -434f, -1575f), vec4<i32>(14076i, 32339i, 2147483647i, -1i)), Struct_2(vec3<f32>(-1126f, -744f, 1309f), vec4<i32>(1i, -8374i, -35245i, i32(-2147483648))), Struct_2(vec3<f32>(1307f, -551f, -272f), vec4<i32>(-27553i, -1i, 11602i, 8191i)), Struct_2(vec3<f32>(474f, 1085f, -788f), vec4<i32>(2147483647i, -1i, 0i, 21378i)), Struct_2(vec3<f32>(-775f, -694f, -447f), vec4<i32>(0i, -14987i, -31182i, 8038i)), Struct_2(vec3<f32>(1405f, 1333f, -397f), vec4<i32>(-18135i, -8050i, 28601i, 1i)));

var<private> global4: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-754f, 177f, -1258f, -1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-344f + arg_0), arg_0);
    global1 = array<vec3<i32>, 3>();
    global0 = array<Struct_2, 27>();
    let var_1 = select(~(~select(vec3<u32>(0u, 0u, 0u), vec3<u32>(7146u, 35974u, 108582u), false)) & vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(0u, 76823u)), ~_wgslsmith_mult_u32(4294967295u, 0u), ~(~43581u)), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(1u, 10772u, 4294967295u)), vec3<u32>(1u, 15914u, 0u), reverseBits(vec3<u32>(0u, 1u, 1u)))) ^ ~(~firstLeadingBit(vec3<u32>(35782u, 45935u, 73300u))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1816f)) - var_0.x) > arg_0, true, false));
    global2 = -450f;
    return var_1.x;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global1 = array<vec3<i32>, 3>();
    global3 = array<Struct_2, 28>();
    var var_0 = arg_0;
    global2 = 996f;
    var var_1 = _wgslsmith_f_op_f32(-1f);
    return _wgslsmith_f_op_f32(560f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1181f, -1000f)))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true))));
    return ~(42297u & countOneBits(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 28>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-600f, -1153f, -950f))))), -(~vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 47964i, -49381i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1163f * var_0.a.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.a.x), var_0.a.x))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)));
    let var_1 = 0u;
    global4 = array<vec4<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(2334u, ~func_1(var_0.a.x), ~func_2(), ~min(0u >> (var_1 % 32u), var_1)), _wgslsmith_sub_vec3_i32(firstLeadingBit(var_0.b.ywz), ~vec3<i32>(-2147483647i, _wgslsmith_sub_i32(var_0.b.x, -2147483647i), _wgslsmith_mod_i32(-2147483647i, 1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-107f, var_0.a.x)))), _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(floor(1041f))))));
}

