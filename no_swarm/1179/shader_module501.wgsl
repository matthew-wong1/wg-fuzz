struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7694u;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(57599u, 33230u, 1u, 1u), vec2<f32>(-906f, 521f), vec2<f32>(424f, 142f), vec4<f32>(-780f, -266f, 249f, 468f), true), Struct_1(vec4<u32>(1u, 4294967295u, 57829u, 33029u), vec2<f32>(219f, 162f), vec2<f32>(539f, -451f), vec4<f32>(-760f, 549f, 589f, 279f), true), Struct_1(vec4<u32>(0u, 76871u, 0u, 22838u), vec2<f32>(529f, -801f), vec2<f32>(-690f, -698f), vec4<f32>(2049f, -781f, -201f, -354f), false), Struct_1(vec4<u32>(1u, 1u, 0u, 67275u), vec2<f32>(1000f, 825f), vec2<f32>(760f, -1021f), vec4<f32>(1255f, -1036f, -229f, -1040f), false), Struct_1(vec4<u32>(31372u, 43851u, 47726u, 28911u), vec2<f32>(556f, 910f), vec2<f32>(350f, -1714f), vec4<f32>(-150f, -970f, 1480f, 556f), true), Struct_1(vec4<u32>(20879u, 4294967295u, 16367u, 7178u), vec2<f32>(750f, 726f), vec2<f32>(1161f, -818f), vec4<f32>(-128f, -295f, -819f, -2038f), false), Struct_1(vec4<u32>(58476u, 6659u, 4294967295u, 1u), vec2<f32>(121f, -552f), vec2<f32>(132f, -1107f), vec4<f32>(-652f, -1131f, 1403f, -386f), false), Struct_1(vec4<u32>(1u, 1u, 22050u, 4294967295u), vec2<f32>(1009f, 228f), vec2<f32>(-2832f, -1302f), vec4<f32>(-169f, 287f, 1153f, 409f), false), Struct_1(vec4<u32>(24807u, 1u, 55259u, 1u), vec2<f32>(1000f, -182f), vec2<f32>(161f, 266f), vec4<f32>(-442f, -489f, -396f, -121f), true), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 34526u), vec2<f32>(-1904f, -2096f), vec2<f32>(642f, -125f), vec4<f32>(1770f, 239f, 1035f, 1586f), true), Struct_1(vec4<u32>(54280u, 35718u, 52606u, 4294967295u), vec2<f32>(566f, -770f), vec2<f32>(1237f, -890f), vec4<f32>(-228f, 1314f, -771f, -1116f), true), Struct_1(vec4<u32>(71969u, 101454u, 4294967295u, 0u), vec2<f32>(518f, -435f), vec2<f32>(-1891f, -352f), vec4<f32>(933f, 740f, 590f, -732f), false), Struct_1(vec4<u32>(1u, 0u, 1u, 15650u), vec2<f32>(923f, -689f), vec2<f32>(-467f, -1363f), vec4<f32>(-272f, 218f, -290f, 447f), false), Struct_1(vec4<u32>(98088u, 12756u, 0u, 4294967295u), vec2<f32>(-127f, 731f), vec2<f32>(-3751f, -448f), vec4<f32>(-1500f, -1224f, -1292f, -205f), false), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 5690u), vec2<f32>(2071f, 1348f), vec2<f32>(593f, 2606f), vec4<f32>(2187f, -345f, -479f, -1455f), true), Struct_1(vec4<u32>(20674u, 0u, 69518u, 4294967295u), vec2<f32>(532f, 471f), vec2<f32>(1990f, 176f), vec4<f32>(295f, -584f, -601f, 579f), false), Struct_1(vec4<u32>(18005u, 0u, 1u, 0u), vec2<f32>(-1848f, 123f), vec2<f32>(-955f, 205f), vec4<f32>(-1000f, -866f, 341f, -867f), false), Struct_1(vec4<u32>(51613u, 4294967295u, 1u, 4294967295u), vec2<f32>(-1360f, 284f), vec2<f32>(861f, 1068f), vec4<f32>(1027f, 1151f, 433f, -1176f), true), Struct_1(vec4<u32>(63401u, 1u, 51798u, 40869u), vec2<f32>(1242f, 890f), vec2<f32>(-372f, 863f), vec4<f32>(997f, 1617f, 549f, -506f), true), Struct_1(vec4<u32>(11161u, 2271u, 4294967295u, 0u), vec2<f32>(-165f, -2492f), vec2<f32>(-1065f, 835f), vec4<f32>(578f, 349f, 1568f, -194f), true), Struct_1(vec4<u32>(0u, 1u, 35432u, 1u), vec2<f32>(729f, -1388f), vec2<f32>(533f, 466f), vec4<f32>(1000f, 544f, -990f, -1728f), true), Struct_1(vec4<u32>(4294967295u, 7516u, 19474u, 4294967295u), vec2<f32>(1388f, 1000f), vec2<f32>(1431f, -1175f), vec4<f32>(-357f, 919f, -392f, 1411f), false), Struct_1(vec4<u32>(41310u, 36188u, 1010u, 89738u), vec2<f32>(480f, -124f), vec2<f32>(1000f, -842f), vec4<f32>(711f, -1000f, -171f, 154f), false), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 116536u), vec2<f32>(-502f, -842f), vec2<f32>(-1515f, -574f), vec4<f32>(-1922f, 1110f, -1000f, 641f), false), Struct_1(vec4<u32>(62659u, 19667u, 1u, 930u), vec2<f32>(-1767f, -521f), vec2<f32>(1595f, -241f), vec4<f32>(1063f, 312f, -297f, 383f), true), Struct_1(vec4<u32>(4294967295u, 0u, 14150u, 12220u), vec2<f32>(-272f, -516f), vec2<f32>(-1189f, 1127f), vec4<f32>(793f, 108f, 1266f, -166f), false), Struct_1(vec4<u32>(30909u, 0u, 23509u, 1u), vec2<f32>(318f, 2238f), vec2<f32>(-502f, -1146f), vec4<f32>(-292f, -509f, -1219f, 182f), false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_1(~(~(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 167f) + vec2<f32>(-520f, arg_2.x)))))), arg_0.b, _wgslsmith_f_op_vec4_f32(-arg_0.d), all(!select(select(vec2<bool>(arg_0.e, false), vec2<bool>(true, arg_0.e), true), vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(arg_0.e, arg_0.e))));
    var var_1 = var_0.e;
    var var_2 = min(vec3<i32>(26860i, firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(-min(vec3<i32>(arg_1.x, u_input.c.x, u_input.c.x), vec3<i32>(0i, arg_1.x, 38364i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a, -15175i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, u_input.a, -1i), vec3<i32>(arg_1.x, u_input.c.x, -13172i)), vec3<i32>(u_input.a, 51941i, -23644i)))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(select(arg_1.x, u_input.c.x, var_0.e), 2147483647i, u_input.c.x), vec3<i32>(arg_1.x, -arg_1.x, u_input.c.x)), vec3<i32>(0i, u_input.c.x, -2147483647i) | vec3<i32>(~1i, -2313i, _wgslsmith_div_i32(-18387i, 1i))));
    global1 = array<Struct_1, 27>();
    var var_3 = arg_0.a.zyx;
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = ~vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 4294967295u), firstLeadingBit(arg_3.a.xx)), _wgslsmith_clamp_u32(u_input.b, arg_0.a.x, arg_1.a.x) | arg_0.a.x), arg_1.a.x);
    var var_1 = Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2618f, -239f) * vec2<f32>(1409f, 326f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_1.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.yy) * _wgslsmith_f_op_vec2_f32(arg_2.c - vec2<f32>(arg_0.d.x, 934f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.c.x)), -373f, -247f, -827f), false);
    var var_2 = arg_1;
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(-45291i, firstLeadingBit(-u_input.c.x)) << (~(var_1.a.x << (arg_3.a.x % 32u)) % 32u), u_input.c.x, -(~(-1i)), u_input.a);
    let var_4 = !(!(!(any(vec4<bool>(arg_0.e, false, arg_3.e, false)) == any(vec4<bool>(true, false, arg_3.e, arg_0.e)))));
    return var_3.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = -2147483647i >> ((firstLeadingBit(~_wgslsmith_dot_vec3_u32(arg_2.a.zxz, vec3<u32>(u_input.b, arg_1, 20101u))) << (1u % 32u)) % 32u);
    var var_1 = vec4<i32>(func_4(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_2.a, arg_2.a), _wgslsmith_add_u32(u_input.b, 69774u), func_3(global1[_wgslsmith_index_u32(0u, 27u)], u_input.c, arg_0.yx), 1u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(-1447f, arg_3.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-660f, arg_0.x) - arg_2.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_0.x, 1899f, arg_2.d.x)))), false), arg_2, arg_2, arg_2), _wgslsmith_sub_i32(_wgslsmith_mult_i32(reverseBits(-2147483647i) & u_input.a, 2147483647i), _wgslsmith_add_i32(u_input.a, var_0)), min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c << (vec2<u32>(u_input.b, arg_2.a.x) % vec2<u32>(32u)), -vec2<i32>(var_0, var_0)), 0i << (func_3(Struct_1(arg_2.a, arg_2.d.zz, vec2<f32>(-231f, arg_2.c.x), arg_2.d, arg_2.e), vec2<i32>(-7858i, var_0), vec2<f32>(arg_0.x, arg_3.x)) % 32u), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(u_input.a, u_input.a))), func_4(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(24375u, 4294967295u, u_input.b, arg_1), vec4<u32>(4294967295u, 1u, arg_2.a.x, arg_1)), arg_2.b, _wgslsmith_f_op_vec2_f32(ceil(arg_3)), vec4<f32>(829f, arg_2.b.x, -537f, -968f), arg_2.e), Struct_1(arg_2.a ^ vec4<u32>(u_input.b, 4294967295u, 40682u, 14091u), arg_0.yx, _wgslsmith_f_op_vec2_f32(-arg_3), _wgslsmith_div_vec4_f32(arg_2.d, arg_2.d), arg_2.e), Struct_1(select(arg_2.a, arg_2.a, arg_2.e), _wgslsmith_f_op_vec2_f32(select(arg_3, vec2<f32>(arg_3.x, -318f), vec2<bool>(false, arg_2.e))), _wgslsmith_f_op_vec2_f32(abs(arg_2.d.yw)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-459f, arg_0.x, 1000f, -1053f)), true), Struct_1(vec4<u32>(15458u, u_input.b, arg_2.a.x, 1857u), arg_0.yy, _wgslsmith_f_op_vec2_f32(arg_3 + vec2<f32>(1249f, 1416f)), arg_2.d, arg_2.b.x != -1199f))), min(-(~select(var_0, var_0, arg_2.e)), -u_input.c.x));
    let var_2 = ~(-17418i);
    global1 = array<Struct_1, 27>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)));
    return vec2<bool>(arg_2.e, arg_2.e);
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = -1040f;
    var var_1 = arg_3;
    global1 = array<Struct_1, 27>();
    global0 = ~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 0u, 1u) & vec4<u32>(1u, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, u_input.b, 103701u, 75954u), vec4<u32>(arg_3, u_input.b, arg_3, u_input.b))), 46119u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(469f, -983f));
    return vec3<bool>(!select(arg_0 && any(vec4<bool>(arg_2.x, arg_0, arg_2.x, false)), u_input.a >= max(arg_1.x, arg_1.x), arg_0), arg_0, func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1182f, 1038f, 261f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 163f, var_0))), vec3<f32>(-134f, _wgslsmith_f_op_f32(-var_0), -979f))), arg_3, Struct_1(min(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 0u, 1u, 1u), vec4<u32>(1u, 25855u, u_input.b, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2.x), vec2<f32>(601f, var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_2.x), vec2<f32>(var_0, -502f), vec2<bool>(arg_2.x, arg_0)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-406f, var_2.x, var_0, -269f))))), arg_2.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(317f, 1359f), var_0), vec2<f32>(1f, 1f)))).x);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = !select(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, (u_input.a | arg_0) <= ~2147483647i, 1u < u_input.b), func_5(false, abs(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, u_input.a, u_input.c.x), vec3<i32>(2147483647i, -2147483647i, 0i))), select(func_2(vec3<f32>(-758f, -1000f, -172f), 1u, Struct_1(vec4<u32>(42726u, 4294967295u, u_input.b, 0u), vec2<f32>(-998f, 1659f), vec2<f32>(277f, 1806f), vec4<f32>(-1000f, -363f, -1387f, 139f), false), vec2<f32>(235f, -471f)), vec2<bool>(false, false), true), 22350u));
    var var_1 = select(select(select(vec3<i32>(-2147483647i, 1i, arg_0), vec3<i32>(u_input.a, -16432i, arg_0), true), vec3<i32>(countOneBits(-1i), arg_0, i32(-1i) * -1916i), vec3<bool>(false, false, true)) >> (vec3<u32>(firstLeadingBit(~4294967295u), ~min(u_input.b, 43543u), max(min(u_input.b, 0u), ~21438u)) % vec3<u32>(32u)), abs(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, -46733i), vec3<i32>(arg_0, 1i, arg_0)), -vec3<i32>(arg_0, u_input.c.x, -2147483647i))), func_5(func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-584f, -324f, -268f))), u_input.b, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(25190u, 1u, 2599u, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(746f, -534f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1082f, -435f), vec2<f32>(-331f, -875f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-446f, 229f, 1000f, -170f), vec4<f32>(-753f, -844f, -1701f, -329f))), all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-151f, -1539f))))).x, -((vec3<i32>(2147483647i, arg_0, 20290i) & vec3<i32>(-16279i, u_input.c.x, 14060i)) | -vec3<i32>(u_input.c.x, -12931i, -33048i)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-756f, 1819f, -710f)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), ~vec2<u32>(4281u, u_input.b)), Struct_1(vec4<u32>(22805u, u_input.b, u_input.b, 9971u), _wgslsmith_div_vec2_f32(vec2<f32>(499f, -723f), vec2<f32>(-1579f, -946f)), vec2<f32>(-181f, -1073f), vec4<f32>(-1198f, 756f, 122f, -1081f), any(var_0.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, 825f))), 22264u));
    let var_2 = Struct_1(~(~(~vec4<u32>(u_input.b, u_input.b, 1u, 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1941f, _wgslsmith_f_op_f32(floor(443f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-728f, 247f), vec2<f32>(-1126f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1681f, -1035f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, 1171f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, 243f, 406f, -1159f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(971f, 232f, 1613f, -719f) + vec4<f32>(1000f, 591f, 264f, -305f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-538f, -967f, -2340f, 854f)))))), false);
    global1 = array<Struct_1, 27>();
    var_0 = select(func_5(max(0u & var_2.a.x, 3941u) < func_3(Struct_1(var_2.a, var_2.b, var_2.b, vec4<f32>(var_2.d.x, var_2.c.x, 295f, 2481f), true), -u_input.c, vec2<f32>(-603f, var_2.d.x)), ~_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, -12698i, 54880i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, u_input.a), vec3<i32>(-43619i, u_input.c.x, var_1.x))), select(vec2<bool>(func_5(false, vec3<i32>(u_input.a, var_1.x, 1i), var_0.zx, 11914u).x, all(vec3<bool>(true, var_0.x, var_2.e))), vec2<bool>(any(var_0.zy), var_0.x), select(!var_0.xz, !var_0.yy, true)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(select(4294967295u, 1u, false), ~4294967295u), abs(1u), ~select(u_input.b, 0u, var_2.e))), select(vec3<bool>(func_5(var_0.x & true, _wgslsmith_add_vec3_i32(vec3<i32>(4103i, 2733i, u_input.a), vec3<i32>(8727i, var_1.x, var_1.x)), vec2<bool>(true, true), _wgslsmith_div_u32(1u, var_2.a.x)).x, abs(0u) < (var_2.a.x ^ 1u), var_2.e), select(vec3<bool>(any(vec3<bool>(var_0.x, true, var_2.e)), false, func_5(var_2.e, vec3<i32>(var_1.x, -57266i, u_input.c.x), var_0.xx, u_input.b).x), select(vec3<bool>(true, var_2.e, true), vec3<bool>(false, var_0.x, var_2.e), all(vec2<bool>(false, var_2.e))), vec3<bool>(false || var_2.e, false & var_2.e, true)), !func_5(var_2.e, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -37483i, var_1.x), vec3<i32>(51244i, var_1.x, arg_0)), !vec2<bool>(var_2.e, true), ~u_input.b).x), !select(vec3<bool>(any(vec4<bool>(var_2.e, false, var_0.x, false)), !var_0.x, var_2.d.x != var_2.b.x), vec3<bool>(true, var_2.e, var_0.x), var_2.e));
    return 1144f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-740f + -1307f), _wgslsmith_f_op_f32(select(-235f, 853f, u_input.a == u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(841f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(739f, -1457f)), _wgslsmith_f_op_f32(ceil(-744f)), 2199f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(u_input.c.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -2528f)), var_0.x, vec3<u32>(u_input.b, 4294967295u, u_input.b));
}

