struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(false), vec4<u32>(89427u, 16604u, 16562u, 14217u), -1045f, vec4<f32>(-414f, -1000f, 294f, 1586f), vec3<i32>(3580i, 2147483647i, 36681i)), Struct_2(Struct_1(true), vec4<u32>(3924u, 31219u, 32125u, 42227u), 221f, vec4<f32>(413f, 2388f, 1131f, 745f), vec3<i32>(i32(-2147483648), -70979i, 7452i)), Struct_2(Struct_1(false), vec4<u32>(4294967295u, 0u, 4294967295u, 4612u), -1355f, vec4<f32>(1350f, 618f, 368f, 1000f), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i)), Struct_2(Struct_1(true), vec4<u32>(25003u, 4294967295u, 93839u, 33858u), 400f, vec4<f32>(-536f, 258f, 1943f, -153f), vec3<i32>(-11951i, 16373i, -10601i)), Struct_2(Struct_1(false), vec4<u32>(56790u, 1u, 1u, 67023u), -968f, vec4<f32>(606f, -1414f, -1000f, 1146f), vec3<i32>(-9142i, 2147483647i, -13356i)), Struct_2(Struct_1(true), vec4<u32>(0u, 1u, 0u, 0u), -820f, vec4<f32>(-666f, -482f, -135f, -1104f), vec3<i32>(-13780i, 0i, 2147483647i)), Struct_2(Struct_1(false), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), -277f, vec4<f32>(1252f, 655f, -364f, 1000f), vec3<i32>(i32(-2147483648), i32(-2147483648), -33033i)), Struct_2(Struct_1(false), vec4<u32>(1u, 0u, 25380u, 4294967295u), 574f, vec4<f32>(1460f, 1131f, 1000f, -352f), vec3<i32>(-1i, 48387i, 1i)), Struct_2(Struct_1(true), vec4<u32>(1u, 872u, 27514u, 5975u), 1000f, vec4<f32>(-767f, -247f, -620f, 1298f), vec3<i32>(-45439i, -20123i, i32(-2147483648))), Struct_2(Struct_1(true), vec4<u32>(36993u, 40842u, 33154u, 49007u), -944f, vec4<f32>(-1605f, 1356f, -2628f, 828f), vec3<i32>(-43687i, 0i, 2147483647i)), Struct_2(Struct_1(true), vec4<u32>(6393u, 86796u, 1u, 4294967295u), 167f, vec4<f32>(-353f, -599f, 1195f, -414f), vec3<i32>(-36300i, 41407i, 2147483647i)), Struct_2(Struct_1(true), vec4<u32>(71987u, 1u, 4294967295u, 1u), 892f, vec4<f32>(-596f, -3007f, 161f, -1713f), vec3<i32>(1i, -18673i, 1i)), Struct_2(Struct_1(false), vec4<u32>(1u, 38026u, 108369u, 9068u), -422f, vec4<f32>(881f, 667f, -1721f, 173f), vec3<i32>(-25515i, -1i, 2147483647i)), Struct_2(Struct_1(true), vec4<u32>(0u, 25042u, 70550u, 0u), -953f, vec4<f32>(-409f, 809f, -680f, -367f), vec3<i32>(-22579i, 1i, -51418i)), Struct_2(Struct_1(false), vec4<u32>(1u, 9919u, 0u, 49567u), -193f, vec4<f32>(138f, 645f, 214f, 1810f), vec3<i32>(12576i, -19067i, i32(-2147483648))), Struct_2(Struct_1(true), vec4<u32>(11615u, 4294967295u, 61299u, 1u), -287f, vec4<f32>(-1316f, -114f, -1628f, 1072f), vec3<i32>(2147483647i, 2147483647i, 0i)), Struct_2(Struct_1(true), vec4<u32>(18231u, 28002u, 4294967295u, 53721u), -1016f, vec4<f32>(-193f, 654f, 1171f, 688f), vec3<i32>(-1i, 25958i, 35375i)), Struct_2(Struct_1(false), vec4<u32>(1u, 1u, 23584u, 10542u), -453f, vec4<f32>(1846f, -906f, -115f, -537f), vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_2(Struct_1(false), vec4<u32>(1u, 39763u, 15327u, 1u), 1554f, vec4<f32>(-809f, -1000f, -2295f, 1301f), vec3<i32>(30722i, 2147483647i, 2147483647i)), Struct_2(Struct_1(false), vec4<u32>(1u, 49936u, 24552u, 0u), -2325f, vec4<f32>(-2173f, -1426f, -756f, 156f), vec3<i32>(40578i, -29565i, -24406i)), Struct_2(Struct_1(true), vec4<u32>(4294967295u, 1u, 8694u, 1u), 185f, vec4<f32>(273f, 492f, -867f, -668f), vec3<i32>(0i, 53756i, -1i)), Struct_2(Struct_1(true), vec4<u32>(95468u, 8665u, 1u, 0u), 903f, vec4<f32>(-700f, 927f, 888f, 1255f), vec3<i32>(i32(-2147483648), -20475i, i32(-2147483648))), Struct_2(Struct_1(false), vec4<u32>(4294967295u, 71347u, 1u, 1u), 809f, vec4<f32>(-869f, 1484f, 214f, -812f), vec3<i32>(2147483647i, 2147483647i, 35202i)), Struct_2(Struct_1(true), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), 2915f, vec4<f32>(-1202f, 1089f, 1000f, 172f), vec3<i32>(-1i, 1i, -3572i)), Struct_2(Struct_1(true), vec4<u32>(14931u, 63498u, 0u, 21494u), 1553f, vec4<f32>(1066f, -251f, -654f, -795f), vec3<i32>(4428i, 1i, -712i)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec3<u32> {
    let var_0 = countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_mult_i32(-1i, -2147483647i)), vec2<i32>(abs(u_input.a), _wgslsmith_div_i32(1i, 2147483647i)) ^ vec2<i32>(u_input.b, _wgslsmith_add_i32(-2147483647i, u_input.a))));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let var_1 = 1703f;
    return vec3<u32>(~(~0u), 7423u, ~_wgslsmith_sub_u32(~firstTrailingBit(1u), ~(~1u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~firstTrailingBit(1u), _wgslsmith_sub_u32(~11109u, min(4294967295u, 88724u))) ^ ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16955u), vec2<u32>(4799u, 0u)), ~4294967295u), vec2<u32>(1u, 0u));
    global0 = array<Struct_2, 25>();
    let var_1 = reverseBits(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0 & 6542u, 0u, var_0), ~func_2(), abs(vec3<u32>(var_0, var_0, var_0)) >> (vec3<u32>(4294967295u, var_0, 1u) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_div_vec4_i32(reverseBits(~vec4<i32>(u_input.a, 1i, -24939i, ~(-14989i))), firstLeadingBit(-vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a), -u_input.a, 1i, u_input.b)));
    global0 = array<Struct_2, 25>();
    return Struct_1(arg_0);
}

fn func_3(arg_0: bool) -> f32 {
    global0 = array<Struct_2, 25>();
    var var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(func_1(select(select(arg_0, false, true), arg_0, arg_0)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 44092u, 4294967295u, 1u), vec4<u32>(0u, 0u, 62379u, 47976u)), vec4<u32>(10321u, 1280u, 7486u, 75997u)), vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(71171u, 45663u, 1u, 68958u), vec4<u32>(18104u, 33046u, 18155u, 46786u)), 14134u, 57491u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -397f), -1089f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -734f, 299f, 2516f))))), ~select(vec3<i32>(u_input.b, 2147483647i, 0i), vec3<i32>(u_input.b, u_input.a, -1770i), vec3<bool>(arg_0, true, true)) << (abs(~vec3<u32>(0u, 1u, 16881u)) % vec3<u32>(32u))));
    var var_2 = max(~abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_1.a.b, vec4<u32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x, 10337u)), 470u)), select(var_1.a.b.x, ~var_1.a.b.x, true));
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(-var_1.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    var var_1 = Struct_5(Struct_3(global0[_wgslsmith_index_u32(~540u, 25u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 71632u), vec2<u32>(1u, 1u)), ~1u, true, countOneBits(~vec3<i32>(~1i, 2147483647i, _wgslsmith_div_i32(u_input.b, -1i))));
    let var_2 = ~vec4<i32>(select(~(-2573i), ~(-1i) | _wgslsmith_dot_vec2_i32(var_1.e.yx, var_1.a.a.e.yz), all(select(vec4<bool>(false, var_1.a.a.a.a, false, true), vec4<bool>(false, true, var_1.a.a.a.a, var_1.a.a.a.a), vec4<bool>(true, true, true, false)))), ~(-1438i), -39176i, -22834i);
    let var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(var_1.a.a.b.x, ~var_1.b)), 25u)];
    var var_4 = u_input.b;
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) + 242f))) - var_1.a.a.c), select(vec2<i32>(-(~7343i), ~(~2147483647i)), _wgslsmith_mod_vec2_i32(max(vec2<i32>(var_2.x, -1i), vec2<i32>(var_2.x, -1i) | vec2<i32>(30287i, var_2.x)), vec2<i32>(-52220i, var_2.x)), select(var_0.a == true, true, true) & select(false, !var_5.a, var_0.a)), var_1.b);
}

