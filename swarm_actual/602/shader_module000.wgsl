struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 23436i, 78434i, -18529i), vec4<f32>(-461f, 1157f, 120f, 2094f), false, 1u), Struct_1(vec2<bool>(false, false), vec4<i32>(-56695i, 4943i, 1i, -1i), vec4<f32>(444f, -986f, -532f, -359f), false, 0u), Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 29450i, 46053i, -27289i), vec4<f32>(362f, -489f, 502f, -932f), true, 20328u), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 12665i, 2147483647i, 8763i), vec4<f32>(-1314f, -531f, -1393f, 1342f), false, 0u), Struct_1(vec2<bool>(true, true), vec4<i32>(-14622i, -1i, 19961i, i32(-2147483648)), vec4<f32>(-773f, 1407f, 993f, 925f), false, 4518u), Struct_1(vec2<bool>(false, true), vec4<i32>(32170i, 0i, 0i, 14861i), vec4<f32>(-358f, 766f, 550f, -1298f), false, 5668u), Struct_1(vec2<bool>(true, false), vec4<i32>(54545i, 2147483647i, -59808i, -1i), vec4<f32>(800f, -650f, 356f, -379f), false, 42144u), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 2147483647i, 0i, -31386i), vec4<f32>(-1125f, -316f, 435f, -143f), true, 34100u), Struct_1(vec2<bool>(true, false), vec4<i32>(-84749i, 35238i, -16385i, 37404i), vec4<f32>(-279f, 731f, 341f, 679f), false, 89319u), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, -1i, -8488i), vec4<f32>(-573f, -1173f, 814f, -518f), true, 0u), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, 1i, -26098i), vec4<f32>(1623f, -1480f, 542f, -1140f), true, 53168u), Struct_1(vec2<bool>(true, false), vec4<i32>(-18528i, -1i, -15398i, i32(-2147483648)), vec4<f32>(864f, 1487f, -287f, -1584f), true, 0u), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, i32(-2147483648), -20156i, 2147483647i), vec4<f32>(343f, -122f, 631f, -350f), false, 0u), Struct_1(vec2<bool>(false, false), vec4<i32>(-47431i, -24284i, 2147483647i, 135i), vec4<f32>(-1673f, -374f, 501f, -413f), true, 693u), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 17933i, -1i, -40258i), vec4<f32>(1165f, -402f, 1813f, 1214f), true, 4294967295u), Struct_1(vec2<bool>(false, true), vec4<i32>(46540i, i32(-2147483648), i32(-2147483648), -22971i), vec4<f32>(-1051f, -1812f, 1478f, 606f), true, 15038u), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 5931i, 9788i, 33769i), vec4<f32>(254f, 900f, 145f, 379f), false, 444u), Struct_1(vec2<bool>(true, true), vec4<i32>(-17088i, -28379i, -1i, i32(-2147483648)), vec4<f32>(-587f, -1126f, 1047f, 606f), true, 0u), Struct_1(vec2<bool>(true, false), vec4<i32>(-1628i, -1i, 0i, -19805i), vec4<f32>(453f, 1266f, -1754f, 1000f), true, 36961u), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -53123i, 2147483647i, -52541i), vec4<f32>(1309f, 1351f, 258f, 332f), true, 0u), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 2147483647i, -783i, 0i), vec4<f32>(630f, -1485f, 425f, 799f), false, 18663u), Struct_1(vec2<bool>(false, true), vec4<i32>(-10139i, 0i, -24251i, 51185i), vec4<f32>(142f, 1643f, -1176f, 444f), false, 4294967295u), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -1i, -58559i, -3723i), vec4<f32>(-590f, -674f, 1000f, 1158f), true, 31349u));

var<private> global1: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), vec4<i32>(-8819i, 0i, i32(-2147483648), 23766i), vec4<f32>(-499f, 1022f, 1000f, -840f), true, 30711u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> bool {
    let var_0 = any(arg_1.zz);
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(71143u, 23u)];
    var var_3 = Struct_1(select(select(select(select(var_2.a, global1[_wgslsmith_index_u32(global2.e, 15u)], global2.a), !var_2.a, any(arg_1)), vec2<bool>(all(vec4<bool>(var_0, false, false, var_2.d)), global2.d), global2.a), select(global2.a, select(select(vec2<bool>(arg_1.x, false), arg_1.yz, global2.a.x), !global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(~0u, 15u)]), !var_2.a), all(!vec4<bool>(arg_0, global2.a.x, arg_1.x, true))), -(~(~vec4<i32>(-1i, var_2.b.x, -2147483647i, -1i))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c.x, var_2.c.x) - _wgslsmith_div_f32(320f, -1360f)), 536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), -163f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.c.x, 1992f, var_2.c.x, 1429f))))), !select(!vec4<bool>(false, false, var_2.a.x, false), !vec4<bool>(var_0, arg_0, false, arg_1.x), vec4<bool>(false, var_2.d, false, false)))), false, ~select(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.e, 38207u, 1u), vec3<u32>(50866u, 3339u, 77482u)), 67011u, !(-1000f > var_2.c.x)));
    global0 = array<Struct_1, 23>();
    return !(!all(select(!arg_1, !arg_1, true)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = vec3<bool>(!arg_0.a.x, func_3(global2.d, vec3<bool>(true, arg_0.d, !arg_0.d)), global2.d);
    var var_1 = Struct_1(var_0.yy, select(global2.b, ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, global2.b.x, 5679i), vec4<i32>(global2.b.x, u_input.c, global2.b.x, -1i)) ^ vec4<i32>(_wgslsmith_mod_i32(18186i, global2.b.x), ~2147483647i, -37504i, reverseBits(-1i)), select(!(!vec4<bool>(global2.d, var_0.x, arg_0.d, false)), select(!vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, global2.a.x, arg_0.a.x, var_0.x), true), select(!vec4<bool>(var_0.x, arg_0.a.x, arg_0.a.x, false), !vec4<bool>(false, true, global2.a.x, false), !vec4<bool>(true, true, false, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_0.c.x)), -332f, -962f, -1394f)), countOneBits(u_input.a) > -11259i, u_input.b);
    var var_2 = vec4<bool>((~1i <= global2.b.x) && false, max(~global2.e, 4294967295u) >= _wgslsmith_mult_u32(global2.e & (arg_0.e << (1u % 32u)), _wgslsmith_clamp_u32(global2.e, var_1.e, 38853u) & 12082u), all(!vec2<bool>(true, !var_0.x)), true && !((arg_0.a.x & var_0.x) & (false | global2.a.x)));
    var_2 = !vec4<bool>(false, true, true, all(vec2<bool>(true, !var_1.a.x)));
    return !(_wgslsmith_f_op_f32(f32(-1f) * -1952f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1997f, _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))));
    let var_1 = 100f;
    let var_2 = _wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, -1059f, global2.c.x, global2.c.x))), _wgslsmith_f_op_vec4_f32(-arg_3.c)))));
    let var_3 = Struct_1(select(select(select(select(vec2<bool>(false, arg_2.x), vec2<bool>(global2.d, false), vec2<bool>(arg_2.x, global2.d)), select(vec2<bool>(global2.a.x, true), vec2<bool>(arg_3.d, true), arg_3.d), !global2.a.x), !select(vec2<bool>(global2.d, arg_3.a.x), arg_2, arg_3.a.x), vec2<bool>(true, func_2(Struct_1(arg_2, vec4<i32>(1i, u_input.a, -12588i, 1i), vec4<f32>(arg_3.c.x, -1713f, 582f, -590f), true, u_input.b), arg_3.c.x, vec4<i32>(-7165i, -3595i, global2.b.x, 0i)))), global2.a, false), global2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-459f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * var_1)), _wgslsmith_f_op_f32(sign(arg_3.c.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1387f, var_2.x, 1415f) * vec4<f32>(-747f, 109f, -894f, 453f))), vec4<f32>(_wgslsmith_div_f32(-422f, global2.c.x), -1512f, -1974f, var_1))), !(!select(arg_3.c.x <= arg_3.c.x, func_3(global2.d, vec3<bool>(arg_2.x, true, true)), true)), ~abs(arg_3.e));
    let var_4 = u_input.b;
    return _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(min(-vec2<i32>(global2.b.x, u_input.c) ^ countOneBits(vec2<i32>(arg_3.b.x, 22614i)), global2.b.wy), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, 10500i, 1i), arg_3.b.zyy), _wgslsmith_div_i32(-1158i, _wgslsmith_dot_vec2_i32(var_3.b.yw, var_3.b.wy)))), firstTrailingBit(select(arg_3.b.ww, max(-global2.b.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.x, -2147483647i), arg_3.b.xz)), !(!arg_3.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~select(firstTrailingBit(global2.e) ^ 0u, _wgslsmith_clamp_u32(reverseBits(1u), ~u_input.b, min(12510u, global2.e)), global2.d)), 23u)];
    let var_1 = global2.a.x;
    var var_2 = _wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, -288f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c.x, 2055f)), 1395f))) != _wgslsmith_f_op_f32(abs(-1000f));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-230f - _wgslsmith_f_op_f32(f32(-1f) * -423f)), var_0.c.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-641f)) - _wgslsmith_f_op_f32(select(global2.c.x, -493f, all(!vec4<bool>(true, global2.a.x, false, true)))));
    global2 = Struct_1(vec2<bool>(func_3(func_3(true, vec3<bool>(false, arg_0.x, global2.d)) == all(arg_0), arg_0), false), ~vec4<i32>(-_wgslsmith_mult_i32(-35408i, 10327i), _wgslsmith_dot_vec2_i32(global2.b.wx, vec2<i32>(var_0.b.x, -4080i)), _wgslsmith_div_i32(73990i, arg_1.x), 1036i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(851f, 1569f, _wgslsmith_f_op_f32(global2.c.x * 597f), _wgslsmith_f_op_f32(302f + -753f)))), !global2.d, ~u_input.b);
    return global0[_wgslsmith_index_u32(129566u, 23u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(!global2.a, vec2<bool>(false, true), !(!select(vec2<bool>(arg_2.a.x, arg_0.d), arg_2.a, arg_0.a.x))), arg_1, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(890f * _wgslsmith_f_op_f32(arg_2.c.x * 703f)) + -1191f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x)))), _wgslsmith_div_f32(-711f, _wgslsmith_f_op_f32(trunc(-143f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) - 997f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.x)) * _wgslsmith_f_op_f32(705f * -131f))))), !(4294967295u >= _wgslsmith_mult_u32(33291u, ~arg_2.e)), 0u);
    let var_1 = select(61343u, u_input.b, !global2.a.x);
    var var_2 = arg_0;
    let var_3 = !(!arg_2.d);
    var_2 = func_4(!select(vec3<bool>(arg_2.a.x, arg_0.a.x, true), !select(vec3<bool>(false, arg_0.a.x, var_0.a.x), vec3<bool>(false, arg_2.d, true), false), global2.a.x), var_2.b.zy);
    return func_4(!select(!vec3<bool>(true, false, var_2.d), select(!vec3<bool>(false, var_2.d, var_2.a.x), vec3<bool>(false, true, false), vec3<bool>(false, true, arg_0.a.x)), arg_2.d), -vec2<i32>(~0i, ~var_2.b.x) & global2.b.xx);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec2<bool>, 15>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b ^ _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, global2.e)), ~vec2<u32>(26202u, u_input.b) >> (~vec2<u32>(4294967295u, var_0.e) % vec2<u32>(32u))), ~4294967295u), 23u)];
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-834i, -var_0.b.x ^ 2147483647i, 1i), _wgslsmith_mult_vec3_i32(reverseBits(~(~var_1.b.wyz)), var_1.b.xzx >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 3996u), ~vec3<u32>(arg_0.e, 0u, arg_0.e)) % vec3<u32>(32u))));
    let var_3 = arg_0.b.zy;
    return global0[_wgslsmith_index_u32(25279u, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(func_4(vec3<bool>(true, false, true && global2.a.x), reverseBits(func_1(43432i, u_input.b, global2.a, global0[_wgslsmith_index_u32(1u, 23u)]))), firstTrailingBit(abs(vec4<i32>(35827i, u_input.a, u_input.a, u_input.c)) & vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c)), global0[_wgslsmith_index_u32(1u, 23u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(26939i, u_input.c, 24084i), global2.b.ywy), vec3<i32>(global2.b.x | global2.b.x, firstTrailingBit(u_input.a), u_input.a) << (vec3<u32>(u_input.b, 91858u, _wgslsmith_add_u32(1u, 61739u)) % vec3<u32>(32u))));
}

