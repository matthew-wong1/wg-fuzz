struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1u, Struct_3(70294u, true, Struct_2(Struct_1(vec3<bool>(false, false, false)), -950f, vec4<bool>(true, false, true, true)), vec2<u32>(44646u, 1u)), vec4<i32>(-48583i, -1i, 1i, -25368i), Struct_3(57692u, false, Struct_2(Struct_1(vec3<bool>(false, false, false)), -1060f, vec4<bool>(true, false, true, false)), vec2<u32>(0u, 0u)), vec4<i32>(22982i, 0i, -26847i, -1i));

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(20947u, Struct_3(66641u, false, Struct_2(Struct_1(vec3<bool>(false, false, false)), -2043f, vec4<bool>(true, true, false, true)), vec2<u32>(30387u, 0u)), vec4<i32>(-28907i, -31519i, -21231i, 11364i), Struct_3(69330u, false, Struct_2(Struct_1(vec3<bool>(true, true, false)), -1152f, vec4<bool>(false, true, true, true)), vec2<u32>(0u, 0u)), vec4<i32>(i32(-2147483648), 16640i, 0i, 2147483647i)), Struct_4(5779u, Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, true, true)), -657f, vec4<bool>(false, false, true, true)), vec2<u32>(4294967295u, 26558u)), vec4<i32>(18882i, -2116i, 46767i, 0i), Struct_3(4954u, false, Struct_2(Struct_1(vec3<bool>(false, true, true)), 1182f, vec4<bool>(false, false, false, true)), vec2<u32>(32277u, 3079u)), vec4<i32>(2147483647i, 1i, -37484i, -1i)), Struct_4(1u, Struct_3(15103u, false, Struct_2(Struct_1(vec3<bool>(false, false, true)), 1248f, vec4<bool>(true, false, false, true)), vec2<u32>(54482u, 4294967295u)), vec4<i32>(2147483647i, -15809i, 0i, -84234i), Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(false, true, true)), 1000f, vec4<bool>(true, true, false, true)), vec2<u32>(0u, 97207u)), vec4<i32>(43396i, i32(-2147483648), -1649i, 10415i)), Struct_4(1u, Struct_3(4294967295u, true, Struct_2(Struct_1(vec3<bool>(false, true, false)), -1000f, vec4<bool>(true, false, false, true)), vec2<u32>(32233u, 10801u)), vec4<i32>(13974i, 31326i, -70663i, -10059i), Struct_3(1u, false, Struct_2(Struct_1(vec3<bool>(true, false, false)), -320f, vec4<bool>(false, false, true, false)), vec2<u32>(53716u, 0u)), vec4<i32>(-7935i, 8359i, 2147483647i, i32(-2147483648))), Struct_4(3871u, Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, false, true)), 284f, vec4<bool>(true, true, true, true)), vec2<u32>(7517u, 61528u)), vec4<i32>(1395i, 0i, i32(-2147483648), 6109i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, false, true)), -621f, vec4<bool>(true, true, true, false)), vec2<u32>(0u, 0u)), vec4<i32>(i32(-2147483648), 16715i, i32(-2147483648), -25307i)), Struct_4(1u, Struct_3(0u, true, Struct_2(Struct_1(vec3<bool>(true, false, false)), -1514f, vec4<bool>(false, true, true, true)), vec2<u32>(4294967295u, 2991u)), vec4<i32>(i32(-2147483648), 1i, 9459i, 37757i), Struct_3(103218u, true, Struct_2(Struct_1(vec3<bool>(false, false, true)), -1084f, vec4<bool>(false, false, false, false)), vec2<u32>(4294967295u, 2815u)), vec4<i32>(1i, -1539i, -22611i, -9240i)), Struct_4(4294967295u, Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(true, false, true)), 358f, vec4<bool>(true, false, true, false)), vec2<u32>(1u, 5197u)), vec4<i32>(1i, 41145i, -16899i, 68456i), Struct_3(78657u, true, Struct_2(Struct_1(vec3<bool>(true, true, false)), 484f, vec4<bool>(true, false, false, false)), vec2<u32>(40980u, 25186u)), vec4<i32>(12136i, -20443i, 2147483647i, -1705i)), Struct_4(53062u, Struct_3(21640u, true, Struct_2(Struct_1(vec3<bool>(false, false, true)), 907f, vec4<bool>(false, true, false, false)), vec2<u32>(27262u, 4294967295u)), vec4<i32>(71673i, 0i, 1i, -84972i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, true, false)), 1156f, vec4<bool>(true, true, true, true)), vec2<u32>(0u, 26830u)), vec4<i32>(-17741i, -26920i, 62679i, 0i)), Struct_4(7394u, Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(true, true, true)), -1165f, vec4<bool>(true, false, true, false)), vec2<u32>(62858u, 12422u)), vec4<i32>(43174i, -28024i, 1i, -9848i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, true, false)), -661f, vec4<bool>(true, false, true, true)), vec2<u32>(4294967295u, 1u)), vec4<i32>(64587i, 80320i, i32(-2147483648), 39635i)), Struct_4(97654u, Struct_3(4294967295u, true, Struct_2(Struct_1(vec3<bool>(false, true, true)), 150f, vec4<bool>(false, false, true, true)), vec2<u32>(11530u, 1u)), vec4<i32>(i32(-2147483648), 12547i, 2147483647i, 0i), Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(true, false, true)), -1316f, vec4<bool>(false, false, false, true)), vec2<u32>(31801u, 40944u)), vec4<i32>(-4892i, 31466i, -1i, 2147483647i)), Struct_4(0u, Struct_3(33280u, false, Struct_2(Struct_1(vec3<bool>(true, false, true)), 394f, vec4<bool>(false, false, false, false)), vec2<u32>(0u, 0u)), vec4<i32>(13333i, 8341i, i32(-2147483648), -1i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(true, true, false)), -273f, vec4<bool>(false, false, false, false)), vec2<u32>(4294967295u, 4294967295u)), vec4<i32>(2147483647i, 0i, -13301i, 1i)), Struct_4(71025u, Struct_3(0u, false, Struct_2(Struct_1(vec3<bool>(false, true, false)), 1239f, vec4<bool>(true, true, true, false)), vec2<u32>(4294967295u, 59337u)), vec4<i32>(19880i, 0i, 0i, 42170i), Struct_3(1u, false, Struct_2(Struct_1(vec3<bool>(true, false, true)), -297f, vec4<bool>(false, true, true, false)), vec2<u32>(4294967295u, 1u)), vec4<i32>(-1i, 0i, 2147483647i, -1i)), Struct_4(4294967295u, Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(true, true, true)), 1000f, vec4<bool>(false, true, false, true)), vec2<u32>(4294967295u, 0u)), vec4<i32>(2147483647i, -26214i, 1i, i32(-2147483648)), Struct_3(1716u, false, Struct_2(Struct_1(vec3<bool>(false, false, false)), -1120f, vec4<bool>(true, false, true, false)), vec2<u32>(65072u, 0u)), vec4<i32>(-30358i, i32(-2147483648), -1i, 1018i)), Struct_4(0u, Struct_3(28054u, false, Struct_2(Struct_1(vec3<bool>(true, true, true)), -1152f, vec4<bool>(false, false, false, false)), vec2<u32>(4428u, 6213u)), vec4<i32>(28044i, 2147483647i, 1i, -1i), Struct_3(0u, true, Struct_2(Struct_1(vec3<bool>(false, true, false)), 103f, vec4<bool>(false, false, true, false)), vec2<u32>(1u, 1u)), vec4<i32>(-31072i, 0i, -51849i, 1i)), Struct_4(1u, Struct_3(26237u, false, Struct_2(Struct_1(vec3<bool>(false, true, true)), 1262f, vec4<bool>(true, true, false, true)), vec2<u32>(18948u, 1u)), vec4<i32>(i32(-2147483648), i32(-2147483648), 11118i, 0i), Struct_3(4294967295u, true, Struct_2(Struct_1(vec3<bool>(false, false, false)), -1038f, vec4<bool>(true, false, false, true)), vec2<u32>(114046u, 38273u)), vec4<i32>(-46363i, i32(-2147483648), -63186i, i32(-2147483648))), Struct_4(1u, Struct_3(0u, true, Struct_2(Struct_1(vec3<bool>(true, true, true)), 1588f, vec4<bool>(true, false, true, true)), vec2<u32>(0u, 1u)), vec4<i32>(0i, 1i, -33687i, -4248i), Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(false, false, false)), -199f, vec4<bool>(false, false, false, true)), vec2<u32>(6546u, 3429u)), vec4<i32>(0i, 2147483647i, 61852i, -38760i)), Struct_4(0u, Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(false, false, true)), 645f, vec4<bool>(false, false, false, true)), vec2<u32>(1u, 20658u)), vec4<i32>(-5203i, 1415i, -2469i, -1i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, true, true)), 734f, vec4<bool>(true, false, false, false)), vec2<u32>(21858u, 32354u)), vec4<i32>(1i, 12749i, i32(-2147483648), 0i)), Struct_4(7481u, Struct_3(1u, true, Struct_2(Struct_1(vec3<bool>(true, false, false)), -806f, vec4<bool>(true, false, true, false)), vec2<u32>(32204u, 0u)), vec4<i32>(24817i, 2649i, -19264i, i32(-2147483648)), Struct_3(1u, false, Struct_2(Struct_1(vec3<bool>(false, false, true)), 1189f, vec4<bool>(false, false, true, false)), vec2<u32>(0u, 49428u)), vec4<i32>(0i, 0i, i32(-2147483648), 38347i)), Struct_4(1u, Struct_3(53600u, false, Struct_2(Struct_1(vec3<bool>(false, true, true)), -290f, vec4<bool>(false, false, true, true)), vec2<u32>(12510u, 24759u)), vec4<i32>(0i, -31695i, i32(-2147483648), 433i), Struct_3(47269u, false, Struct_2(Struct_1(vec3<bool>(false, false, false)), 629f, vec4<bool>(false, true, false, false)), vec2<u32>(99464u, 4294967295u)), vec4<i32>(-34751i, 2147483647i, 0i, 1i)), Struct_4(0u, Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(false, false, true)), 166f, vec4<bool>(true, false, true, true)), vec2<u32>(65991u, 4294967295u)), vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), Struct_3(4294967295u, false, Struct_2(Struct_1(vec3<bool>(true, true, false)), 315f, vec4<bool>(true, true, false, true)), vec2<u32>(0u, 28823u)), vec4<i32>(2147483647i, 1i, 16620i, -13207i)));

var<private> global3: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(66215u, 51104u), vec2<u32>(19807u, 23386u), vec2<u32>(80897u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 52911u), vec2<u32>(9843u, 1u), vec2<u32>(0u, 19677u), vec2<u32>(26088u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1964u, 0u), vec2<u32>(4294967295u, 19350u), vec2<u32>(38303u, 25954u), vec2<u32>(0u, 31982u), vec2<u32>(4995u, 1u), vec2<u32>(4294967295u, 48350u), vec2<u32>(0u, 28537u), vec2<u32>(1u, 60088u), vec2<u32>(40980u, 1u), vec2<u32>(18778u, 4294967295u), vec2<u32>(70395u, 79789u), vec2<u32>(41199u, 4294967295u));

var<private> global4: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> i32 {
    global4 = global0.d.c.a;
    return u_input.a;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b;
    global4 = arg_0.b.c.a;
    var var_1 = Struct_2(Struct_1(vec3<bool>(!all(vec4<bool>(global0.b.c.a.a.x, arg_0.b.b, false, true)), true, global4.a.x)), _wgslsmith_f_op_f32(max(arg_0.b.c.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.b))))), select(global0.b.c.c, !(!(!vec4<bool>(true, global4.a.x, global0.b.b, global4.a.x))), global0.d.c.c));
    global0 = global2[_wgslsmith_index_u32(~(~arg_0.b.a), 20u)];
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(select(-41979i, u_input.a, !global4.a.x), func_3(~0u, global0.a, select(global4.a, vec3<bool>(false, var_1.c.x, true), var_1.c.xzw), vec3<i32>(global0.c.x, -14608i, 0i)), -24026i) ^ -_wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(0u | arg_0.b.a, 10u)], vec3<i32>(u_input.a, -25954i, u_input.a)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x >> (0u % 32u), u_input.a, -arg_0.c.x), _wgslsmith_div_vec3_i32(global0.c.yxx, firstTrailingBit(global0.e.zyw)), abs(vec3<i32>(-23202i, global0.e.x, 44290i))), vec3<i32>(-(~1i), -2147483647i, u_input.a)));
    return global0.b.c.a;
}

fn func_1() -> i32 {
    global4 = func_2(global2[_wgslsmith_index_u32(global0.b.d.x, 20u)], global0.d.c, global0.d.c);
    let var_0 = global0.b.c;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(36221u, 22u)], vec2<u32>(global0.a, global0.b.d.x))), global0.a), global0.b.a), 20u)];
    var var_2 = -vec2<i32>(~var_1.c.x, select(u_input.a ^ var_1.e.x, _wgslsmith_add_i32(var_1.e.x, -1i), var_1.d.c.c.x));
    var var_3 = Struct_1(var_0.a.a);
    return -7730i;
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    return vec2<i32>(48365i, -2147483647i) >> (global0.d.d % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_mod_u32(global0.d.a, _wgslsmith_dot_vec2_u32(arg_1.yx, ~(~vec2<u32>(arg_1.x, 24019u)))), any(global4.a), global0.d.c, _wgslsmith_mod_vec2_u32(global0.b.d, vec2<u32>(4294967295u, global0.b.a)));
    global4 = global0.b.c.a;
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(max(func_4(vec4<i32>(arg_0.x, arg_0.x, 0i, global0.c.x)).x, ~_wgslsmith_mult_i32(arg_0.x, 2810i)), func_1()), vec2<i32>(1i, abs(-29641i)), global0.e.zx);
    let var_2 = u_input.a;
    var var_3 = global0.b.c.a;
    return Struct_3(_wgslsmith_dot_vec3_u32(~arg_1, abs((vec3<u32>(var_0.d.x, 24559u, global0.b.d.x) | vec3<u32>(var_0.d.x, 81373u, 1u)) & select(vec3<u32>(33813u, var_0.a, 57971u), vec3<u32>(arg_1.x, arg_1.x, 72207u), global4.a.x))), false, Struct_2(Struct_1(select(var_0.c.a.a, !var_0.c.a.a, vec3<bool>(false, global4.a.x, global4.a.x))), -1797f, global0.b.c.c), _wgslsmith_div_vec2_u32(~(~vec2<u32>(arg_1.x, arg_1.x)), vec2<u32>(0u, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0.d.c.b) > _wgslsmith_f_op_f32(round(global0.d.c.b));
    let var_1 = Struct_1(global4.a);
    let var_2 = 60860u;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, global0.d.c.b, global0.d.c.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.c.b, global0.b.c.b, global0.d.c.b), vec3<f32>(global0.b.c.b, global0.d.c.b, global0.b.c.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.c.b, global0.d.c.b, -1775f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.c.b, 707f, 554f)))))));
    let var_4 = func_5(func_4(vec4<i32>(global0.e.x, func_1(), -64879i, ~_wgslsmith_dot_vec4_i32(global0.e, global0.e))), vec3<u32>(reverseBits(var_2), _wgslsmith_mult_u32(var_2, 0u), global0.a >> (_wgslsmith_dot_vec2_u32(~global3[_wgslsmith_index_u32(8205u, 22u)], vec2<u32>(18737u, 1u)) % 32u)), -1022f, var_3.x);
    global1 = array<vec3<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(vec2<i32>(68892i, -2147483647i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(4217i, u_input.a), vec2<i32>(16132i, global0.c.x), vec2<i32>(0i, 2147483647i)), global0.c.xw), vec2<u32>(_wgslsmith_div_u32(global0.b.a, firstTrailingBit(~var_2)), var_2), 55236u, func_3(~var_4.a, var_2, !(!select(var_4.c.a.a, vec3<bool>(var_4.c.a.a.x, true, true), var_1.a)), ~_wgslsmith_mult_vec3_i32(~vec3<i32>(11707i, global0.e.x, u_input.a), abs(vec3<i32>(4726i, u_input.a, global0.e.x)))));
}

