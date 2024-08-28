struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1947f, -1i, vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global1: vec4<u32>;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_1(-280f, 0i, vec2<bool>(false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec4<f32>(527f, 408f, -451f, 203f), Struct_2(Struct_1(-988f, 62778i, vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), Struct_1(-134f, 23383i, vec2<bool>(false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), 65821u, vec4<i32>(-1i, -31680i, 5385i, 0i), Struct_1(1000f, -11349i, vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), vec2<i32>(0i, -32805i)), Struct_3(Struct_1(1655f, 69572i, vec2<bool>(true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec4<f32>(-417f, 435f, -877f, -1255f), Struct_2(Struct_1(1703f, 27545i, vec2<bool>(false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(-689f, 47021i, vec2<bool>(true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), 14663u, vec4<i32>(15425i, 1i, 2147483647i, -36191i), Struct_1(-659f, -30535i, vec2<bool>(false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), vec2<i32>(11037i, 10493i)), Struct_3(Struct_1(1022f, -33852i, vec2<bool>(true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec4<f32>(-1398f, 214f, -731f, -2015f), Struct_2(Struct_1(1100f, i32(-2147483648), vec2<bool>(true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_1(-845f, 0i, vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), 1u, vec4<i32>(i32(-2147483648), 2147483647i, 30926i, -16512i), Struct_1(175f, 47878i, vec2<bool>(true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), vec2<i32>(1i, 1i)), Struct_3(Struct_1(808f, 1i, vec2<bool>(true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec4<f32>(503f, -141f, -501f, -1009f), Struct_2(Struct_1(775f, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), Struct_1(-990f, 10671i, vec2<bool>(false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), 56148u, vec4<i32>(63174i, 1i, 46929i, 17017i), Struct_1(-845f, 1i, vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), vec2<i32>(1i, 43788i)), Struct_3(Struct_1(-735f, -6712i, vec2<bool>(true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec4<f32>(1504f, 196f, -1507f, 862f), Struct_2(Struct_1(1574f, 38282i, vec2<bool>(true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_1(-1260f, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), 1u, vec4<i32>(2147483647i, 10752i, 1i, -75870i), Struct_1(943f, 2147483647i, vec2<bool>(true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec2<i32>(1i, i32(-2147483648))), Struct_3(Struct_1(233f, 23744i, vec2<bool>(true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec4<f32>(-1000f, 2366f, 1000f, -208f), Struct_2(Struct_1(-742f, -10154i, vec2<bool>(true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), Struct_1(-2029f, i32(-2147483648), vec2<bool>(false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), 4294967295u, vec4<i32>(i32(-2147483648), 11932i, 0i, -2332i), Struct_1(380f, 2147483647i, vec2<bool>(true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec2<i32>(-26735i, 2147483647i)), Struct_3(Struct_1(-272f, -1i, vec2<bool>(true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec4<f32>(1032f, 231f, -964f, -517f), Struct_2(Struct_1(1326f, 59326i, vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_1(-975f, 0i, vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), 15944u, vec4<i32>(-21471i, i32(-2147483648), 17947i, 14289i), Struct_1(590f, 43870i, vec2<bool>(false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec2<i32>(-1i, 16903i)), Struct_3(Struct_1(-1000f, i32(-2147483648), vec2<bool>(true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec4<f32>(-1143f, -724f, -283f, -314f), Struct_2(Struct_1(-308f, 0i, vec2<bool>(true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), Struct_1(1000f, -1i, vec2<bool>(false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), 0u, vec4<i32>(2147483647i, 0i, 64493i, 1i), Struct_1(1154f, -1i, vec2<bool>(false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec2<i32>(0i, 0i)), Struct_3(Struct_1(-345f, 1i, vec2<bool>(false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec4<f32>(-1000f, 1000f, -1000f, 610f), Struct_2(Struct_1(1027f, -1i, vec2<bool>(false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_1(233f, -45284i, vec2<bool>(true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), 76807u, vec4<i32>(68366i, -1i, -67789i, 2147483647i), Struct_1(-399f, -1i, vec2<bool>(true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), vec2<i32>(10702i, -31351i)), Struct_3(Struct_1(1000f, -5918i, vec2<bool>(true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec4<f32>(-1757f, -1936f, -1603f, -479f), Struct_2(Struct_1(628f, 2147483647i, vec2<bool>(false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_1(1320f, -32549i, vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), 1u, vec4<i32>(11320i, 59856i, 0i, -1i), Struct_1(-311f, 2147483647i, vec2<bool>(true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec2<i32>(75886i, 2147483647i)), Struct_3(Struct_1(1595f, 1i, vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec4<f32>(233f, -422f, -796f, 1604f), Struct_2(Struct_1(-1109f, 63966i, vec2<bool>(false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), Struct_1(1000f, 2147483647i, vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), 0u, vec4<i32>(1i, 2147483647i, 1i, 0i), Struct_1(168f, i32(-2147483648), vec2<bool>(false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), vec2<i32>(i32(-2147483648), 2295i)), Struct_3(Struct_1(1186f, 1i, vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec4<f32>(-1336f, 233f, 1690f, 1214f), Struct_2(Struct_1(1007f, i32(-2147483648), vec2<bool>(true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_1(2463f, 5333i, vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), 6308u, vec4<i32>(2147483647i, -54193i, -22577i, 45736i), Struct_1(1745f, 57032i, vec2<bool>(true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec2<i32>(-8712i, -32477i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(global0.a, 64667i, global0.c, select(!vec3<bool>(false, arg_0.b.a.e.x, true), global0.e, !vec3<bool>(arg_0.b.c.e.c.x, false, arg_0.b.a.d.x)), select(vec3<bool>(all(arg_0.b.a.d), true, all(vec4<bool>(false, global0.e.x, true, true))), vec3<bool>(false || global0.c.x, all(vec3<bool>(arg_0.b.c.b.d.x, global0.d.x, global0.d.x)), true), !global0.e)), arg_0.b.a, reverseBits(global1.x), vec4<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.d.x, -1i, -51212i, 22519i), arg_0.b.c.d), arg_0.b.c.d), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(arg_0.b.c.d.yyz, vec3<i32>(arg_0.b.d.x, -2147483647i, -4158i)), ~var_0, -38379i), _wgslsmith_add_i32(~global0.b >> (_wgslsmith_mod_u32(global1.x, 0u) % 32u), 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, ~u_input.a, var_0, u_input.a), arg_0.b.c.d)), arg_0.b.c.e);
    var_1 = Struct_2(arg_0.b.a, arg_0.b.c.b, _wgslsmith_mod_u32(abs(44046u) | ~arg_0.b.c.c, _wgslsmith_div_u32(_wgslsmith_add_u32(firstLeadingBit(global1.x), 4294967295u), ~(~4294967295u))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_0.c, global0.b, -2147483647i), _wgslsmith_sub_vec4_i32(var_1.d, var_1.d)) << ((~vec4<u32>(arg_0.b.c.c, arg_0.a.x, 48043u, var_1.c) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 58182u, var_1.c, 56760u), vec4<u32>(arg_0.b.c.c, 78366u, var_1.c, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -451f), i32(-1i) * -_wgslsmith_sub_i32(-1i, 0i), vec2<bool>(any(!var_1.b.e), false), !select(var_1.b.e, select(vec3<bool>(arg_0.b.a.e.x, global0.c.x, var_1.a.d.x), vec3<bool>(arg_0.b.a.e.x, global0.e.x, var_1.a.c.x), false), vec3<bool>(false, true, arg_0.b.c.a.e.x)), vec3<bool>(!var_1.b.c.x, any(vec4<bool>(arg_0.b.c.a.c.x, false, var_1.e.c.x, var_1.b.d.x)), all(!var_1.b.e))));
    var var_2 = arg_0.b.a;
    var var_3 = -(_wgslsmith_clamp_vec2_i32(-(~arg_0.b.c.d.ww), -var_1.d.ww, vec2<i32>(-1i) * -vec2<i32>(-111340i, var_2.b)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, arg_0.b.c.c, 3972u), vec3<u32>(arg_0.a.x, 1u, 0u)), global1.zyw), _wgslsmith_add_u32(~arg_0.a.x, ~var_1.c)) % vec2<u32>(32u)));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = !vec4<bool>(!global0.d.x, func_3(Struct_4(global1.ww, global3[_wgslsmith_index_u32(~4294967295u, 12u)], _wgslsmith_mult_i32(global0.b, global0.b))), !(!(global0.a >= global2.x)), false);
    global1 = vec4<u32>(1u, ~(_wgslsmith_mod_u32(abs(20234u), 1u) << (arg_0.x % 32u)), global1.x, ~_wgslsmith_mod_u32(arg_0.x, arg_0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.a)), countOneBits(-global0.b), select(global0.c, vec2<bool>(var_0.x, _wgslsmith_clamp_u32(global1.x, 0u, global1.x) == (0u ^ global1.x)), select(select(select(global0.c, var_0.xy, var_0.x), !vec2<bool>(var_0.x, true), select(global0.d.x, false, global0.c.x)), select(vec2<bool>(var_0.x, false), var_0.zy, global0.e.zz), vec2<bool>(!var_0.x, !var_0.x))), select(!(!var_0.wyw), select(vec3<bool>(false == var_0.x, func_3(Struct_4(arg_0.zx, global3[_wgslsmith_index_u32(0u, 12u)], u_input.a)), true), select(select(global0.e, var_0.wxz, global0.e.x), global0.d, !vec3<bool>(false, global0.e.x, var_0.x)), select(!vec3<bool>(true, true, var_0.x), select(vec3<bool>(global0.c.x, true, global0.e.x), vec3<bool>(true, false, var_0.x), global0.e.x), var_0.ywz)), !var_0.yyz), var_0.wyw);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.yxz * _wgslsmith_div_vec3_f32(global2.ywx, vec3<f32>(global0.a, -1428f, global2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.xyy * vec3<f32>(global2.x, global0.a, -271f))))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)));
    return Struct_1(global0.a, abs(21872i), var_0.wy, vec3<bool>(false & func_3(Struct_4(vec2<u32>(global1.x, 2167u), Struct_3(Struct_1(725f, u_input.a, var_0.ww, global0.d, var_0.xyx), vec4<f32>(-1000f, var_2.x, global2.x, global2.x), Struct_2(Struct_1(-1407f, global0.b, global0.e.zy, var_1.d, vec3<bool>(var_1.e.x, true, var_1.e.x)), Struct_1(var_1.a, -27954i, var_0.zw, global0.d, var_1.d), 4294967295u, vec4<i32>(-8030i, u_input.a, var_1.b, global0.b), Struct_1(var_1.a, global0.b, global0.d.zz, vec3<bool>(global0.c.x, false, global0.e.x), vec3<bool>(global0.c.x, var_1.c.x, false))), vec2<i32>(-2147483647i, -52704i)), global0.b)), !(!all(vec2<bool>(true, false))), false && (-926f != _wgslsmith_f_op_f32(sign(-253f)))), var_0.yyz);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> u32 {
    var var_0 = reverseBits(~(vec4<u32>(7214u, 75572u, 47205u, 27039u) | vec4<u32>(global1.x, 1u, 0u, 36728u)) << (abs(~vec4<u32>(38969u, arg_2.c.c, global1.x, arg_2.c.c)) % vec4<u32>(32u))) & ~(_wgslsmith_div_vec4_u32(vec4<u32>(21477u, 139772u, global1.x, arg_2.c.c) ^ vec4<u32>(global1.x, arg_2.c.c, 0u, 36083u), vec4<u32>(global1.x, arg_2.c.c, 34992u, global1.x)) & _wgslsmith_add_vec4_u32(select(vec4<u32>(25988u, arg_2.c.c, 4294967295u, global1.x), vec4<u32>(global1.x, 11623u, global1.x, 4294967295u), vec4<bool>(true, false, true, arg_2.a.d.x)), vec4<u32>(arg_2.c.c, 4294967295u, 4294967295u, arg_2.c.c) >> (vec4<u32>(arg_2.c.c, 52112u, global1.x, arg_2.c.c) % vec4<u32>(32u))));
    var var_1 = firstLeadingBit(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(-38080i, global0.b), vec2<i32>(global0.b, global0.b)))) >> (min(vec2<u32>(abs(_wgslsmith_mult_u32(var_0.x, 22070u)), 62941u), global1.zw) % vec2<u32>(32u));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(global0.a)), arg_2.c.d.x, global0.c, vec3<bool>(global2.x >= global0.a, arg_2.a.c.x, false), vec3<bool>(true, select(!global0.c.x, true, arg_2.a.d.x), true)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1676f - -1133f)), _wgslsmith_f_op_f32(global0.a + arg_0.a)), reverseBits(i32(-1i) * -30005i) << (~countOneBits(global1.x) % 32u), !vec2<bool>(arg_2.d.x >= u_input.a, all(vec4<bool>(arg_1, false, false, true))), arg_0.d, select(vec3<bool>(arg_1 || arg_2.c.b.c.x, -37294i >= var_1.x, false), !select(arg_0.e, arg_2.a.e, vec3<bool>(arg_1, true, true)), true)), _wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(~23332u, 51187u)), -arg_2.c.d, arg_0);
    var var_3 = !select(!(!(!vec3<bool>(false, true, arg_0.d.x))), select(!(!global0.d), !global0.e, true), select(func_2(firstTrailingBit(var_0.yzz)).d, func_2(~vec3<u32>(4294967295u, 36718u, 126901u)).d, var_0.x >= ~var_2.c));
    var var_4 = _wgslsmith_sub_vec4_u32(~(~(min(vec4<u32>(4294967295u, 0u, global1.x, var_2.c), vec4<u32>(var_0.x, arg_2.c.c, var_0.x, 1u)) | (vec4<u32>(var_2.c, 4294967295u, var_2.c, var_2.c) >> (vec4<u32>(4294967295u, arg_2.c.c, 21614u, 21367u) % vec4<u32>(32u))))), vec4<u32>((reverseBits(5573u) << (var_0.x % 32u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 29891u, 4294967295u), vec4<u32>(var_0.x, var_2.c, global1.x, arg_2.c.c)), ~_wgslsmith_dot_vec2_u32(global1.zz, abs(vec2<u32>(47917u, 1u))), 1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(~arg_2.c.c, arg_2.c.c ^ 19889u), ~_wgslsmith_add_u32(116614u, 0u))));
    return var_4.x;
}

fn func_1() -> vec4<u32> {
    return ~vec4<u32>(48921u, abs(func_4(func_2(global1.zyy), any(vec4<bool>(global0.e.x, true, false, global0.e.x)), global3[_wgslsmith_index_u32(~4294967295u, 12u)])), global1.x, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-115f, global0.a, 690f))))) - _wgslsmith_f_op_vec3_f32(-global2.yyy)) * vec3<f32>(_wgslsmith_div_f32(global0.a, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, global0.a))), _wgslsmith_f_op_f32(exp2(global2.x))));
    let var_1 = ~reverseBits(_wgslsmith_add_vec4_u32(abs(func_1()), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 0u, global1.x, global1.x), reverseBits(vec4<u32>(0u, 44935u, 20102u, global1.x)))));
    let var_2 = any(global0.d);
    var var_3 = u_input.a;
    global0 = Struct_1(var_0.x, -39363i, !func_2(global1.wxx).d.zx, !global0.d, vec3<bool>(false, global0.d.x, true));
    global0 = func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~global1.yyz, global1.yzy), 89508u, 0u), global1.zxw << (firstTrailingBit(abs(vec3<u32>(7061u, var_1.x, 38869u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.zwy, 565f, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1, _wgslsmith_mult_vec4_u32(func_1(), ~var_1), vec4<u32>(~var_1.x, firstLeadingBit(60939u), ~1u, ~global1.x)), ~var_1));
}

