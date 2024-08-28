struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(true, false), vec2<i32>(-11206i, -1i), 570f, vec4<f32>(-204f, -1516f, 1184f, -644f), vec3<i32>(-20311i, -3201i, 10245i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 22701i), -107f, vec4<f32>(300f, -348f, 1000f, -2699f), vec3<i32>(33156i, -2606i, -13859i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 2147483647i), -125f, vec4<f32>(-510f, 1644f, -1429f, 741f), vec3<i32>(i32(-2147483648), -24834i, 15672i)), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, -15105i), -2246f, vec4<f32>(1545f, 968f, -1144f, -1090f), vec3<i32>(8717i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 28102i), 663f, vec4<f32>(890f, 158f, -244f, 1534f), vec3<i32>(-10897i, 2147483647i, 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 9643i), -167f, vec4<f32>(623f, 1067f, -854f, -1598f), vec3<i32>(0i, 0i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-33658i, -58990i), -1481f, vec4<f32>(-214f, -817f, 1000f, -415f), vec3<i32>(-62693i, -1i, -1i)), Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), 612f, vec4<f32>(640f, 214f, -351f, 212f), vec3<i32>(-15335i, 1i, -7319i)), Struct_1(vec2<bool>(true, false), vec2<i32>(21501i, 14424i), 1714f, vec4<f32>(-1000f, 158f, 161f, -292f), vec3<i32>(-10200i, -12282i, -1i)), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 0i), -1084f, vec4<f32>(818f, 469f, -1000f, -1000f), vec3<i32>(17715i, 84437i, 14732i)), Struct_1(vec2<bool>(true, true), vec2<i32>(2147483647i, 43112i), -990f, vec4<f32>(-377f, 1000f, 103f, -839f), vec3<i32>(78905i, -1i, 1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, i32(-2147483648)), 179f, vec4<f32>(-1080f, -368f, 959f, 153f), vec3<i32>(78284i, i32(-2147483648), 30743i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, -19415i), 481f, vec4<f32>(673f, 313f, 2003f, 839f), vec3<i32>(23364i, 23673i, 7294i)), Struct_1(vec2<bool>(false, false), vec2<i32>(8497i, 2147483647i), 112f, vec4<f32>(950f, -1282f, -978f, -1637f), vec3<i32>(2147483647i, -27394i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, 29186i), -471f, vec4<f32>(-469f, -648f, 118f, -1458f), vec3<i32>(35588i, -24656i, 17036i)), Struct_1(vec2<bool>(false, true), vec2<i32>(19877i, -53546i), 811f, vec4<f32>(-225f, 794f, 997f, -182f), vec3<i32>(-28335i, 27101i, 21326i)), Struct_1(vec2<bool>(true, true), vec2<i32>(21351i, 1i), 154f, vec4<f32>(-718f, -1000f, 1000f, -715f), vec3<i32>(1i, 7858i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, -35308i), -835f, vec4<f32>(1000f, 559f, -1572f, 589f), vec3<i32>(17406i, i32(-2147483648), -22627i)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -61841i), -2223f, vec4<f32>(-1157f, -1736f, 281f, -428f), vec3<i32>(1i, 40705i, -47773i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-35155i, 20093i), -302f, vec4<f32>(-496f, 2050f, 321f, -217f), vec3<i32>(-24244i, i32(-2147483648), 77430i)), Struct_1(vec2<bool>(true, true), vec2<i32>(1i, 1i), -643f, vec4<f32>(-1000f, -692f, 110f, 1241f), vec3<i32>(-6111i, -10509i, -1i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -15003i), -413f, vec4<f32>(-399f, 308f, 1551f, 978f), vec3<i32>(-40642i, 0i, 17550i)), Struct_1(vec2<bool>(false, true), vec2<i32>(18462i, i32(-2147483648)), 1121f, vec4<f32>(-341f, -149f, -510f, 1807f), vec3<i32>(93343i, 1i, -1i)));

var<private> global1: Struct_1;

var<private> global2: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(252f, global1.d.x)))))), 766f));
    var var_1 = Struct_3(Struct_2(global1.a.x, global1.b, global1.a, _wgslsmith_f_op_vec2_f32(global1.d.wx + vec2<f32>(_wgslsmith_f_op_f32(-global1.c), 254f)), global1.a.x), Struct_2(select(false, !global1.a.x, true), global1.e.yy, vec2<bool>(any(!vec4<bool>(global1.a.x, false, global1.a.x, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.d.zx, global1.d.xw) * _wgslsmith_f_op_vec2_f32(-global1.d.ww))), false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(29453u, u_input.b.x, 27637u)), ~vec3<u32>(_wgslsmith_mod_u32(u_input.a, 12905u), ~u_input.b.x, u_input.a >> (u_input.b.x % 32u))), 23u)], -(~vec2<i32>(-global1.e.x, ~global2.x)), any(!vec4<bool>(!global1.a.x, select(global1.a.x, false, false), global1.a.x, true)));
    let var_2 = min(~u_input.b.x, 0u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d.x));
    global0 = array<Struct_1, 23>();
    return any(vec3<bool>(true, all(!vec3<bool>(false, false, var_1.e)) & var_1.b.c.x, false));
}

fn func_2() -> vec2<f32> {
    var var_0 = func_3();
    let var_1 = Struct_1(!global1.a, vec2<i32>(~select(global1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.x, 2497i, 2147483647i, -31064i), vec4<i32>(-1i, global2.x, global1.b.x, -13102i)), true), 1i), 575f, vec4<f32>(_wgslsmith_div_f32(113f, _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(trunc(-1194f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-856f, _wgslsmith_f_op_f32(-global1.d.x)))))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~global1.b.x, global1.e.x, ~2147483647i), global1.e), ~0i, _wgslsmith_mod_i32(min(global2.x, _wgslsmith_sub_i32(-1i, global2.x)), -11197i)));
    global2 = abs(vec2<i32>(var_1.e.x, global2.x) << (u_input.b % vec2<u32>(32u))) >> (~(~u_input.b) % vec2<u32>(32u));
    var var_2 = Struct_3(Struct_2(select(_wgslsmith_f_op_f32(global1.c + 1671f) < 1512f, (u_input.b.x != 4294967295u) != all(vec3<bool>(var_1.a.x, true, global1.a.x)), false), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-2147483647i, var_1.b.x)), vec2<i32>(var_1.e.x, -21974i) ^ global1.e.xx, vec2<i32>(16531i, var_1.e.x) & vec2<i32>(var_1.e.x, global2.x)) | global1.e.zx, var_1.a, global1.d.xz, var_1.a.x), Struct_2(var_1.a.x, vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -8338i, var_1.e.x), _wgslsmith_div_i32(-1i, -var_1.e.x)), select(vec2<bool>(!global1.a.x, global1.a.x || var_1.a.x), vec2<bool>(true, false || var_1.a.x), var_1.a), global1.d.yz, any(vec2<bool>(var_1.a.x, true))), var_1, abs(vec2<i32>(~(-21707i), firstTrailingBit(1i))), !(!(any(var_1.a) & all(vec3<bool>(false, true, true)))));
    let var_3 = var_2.b;
    return var_1.d.yz;
}

fn func_1(arg_0: f32) -> i32 {
    global2 = vec2<i32>(-21521i, global1.b.x);
    global2 = -reverseBits(~(~vec2<i32>(-8024i, global2.x)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1.d.xx);
    var var_1 = global1.a;
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -1000f), vec2<f32>(-736f, -1000f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-449f, arg_0), global1.d.xw))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.d.wy * _wgslsmith_f_op_vec2_f32(func_2())))))));
    return ~(-global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, global2.x, 1i, -2147483647i), -vec4<i32>(global2.x, global2.x, 0i, global1.b.x))), -global1.b.x) ^ 0i;
    var var_1 = Struct_1(vec2<bool>(false, true), ~reverseBits(global1.e.yx), global1.d.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(floor(global1.d.x)))), _wgslsmith_f_op_f32(-global1.d.x), -165f), vec3<i32>(countOneBits(i32(-1i) * -2147483647i), func_1(_wgslsmith_div_f32(1323f, -1000f)), _wgslsmith_add_i32(global2.x, 21637i)));
    let var_2 = 2147483647i;
    var_0 = 0i;
    var var_3 = Struct_2(var_1.a.x, reverseBits(vec2<i32>(-93199i, var_2)), !var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, global1.c) * var_1.d.xw)))), all(!global1.a) & !global1.a.x);
    var var_4 = Struct_3(Struct_2(false, _wgslsmith_add_vec2_i32(-(~global1.e.zx), ~vec2<i32>(1i, 20754i)), select(select(!global1.a, select(var_3.c, vec2<bool>(var_1.a.x, true), false), true), var_3.c, !var_3.c), _wgslsmith_f_op_vec2_f32(step(global1.d.zy, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global1.d.xz - var_1.d.yx))))), var_3.a), Struct_2(true, var_3.b, var_3.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_1.d.xz)), _wgslsmith_f_op_vec2_f32(var_1.d.zx - vec2<f32>(var_3.d.x, var_3.d.x)))))), !select(!var_1.a.x, true, true)), Struct_1(vec2<bool>(-var_3.b.x <= (30285i | global2.x), !(!var_3.e)), vec2<i32>(~var_3.b.x, global1.b.x), 825f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(236f + -1457f), _wgslsmith_f_op_f32(-global1.c), -1016f, _wgslsmith_f_op_f32(-449f * var_1.c))), vec3<i32>(var_2, var_3.b.x, _wgslsmith_mult_i32(global2.x, global2.x))), firstLeadingBit(vec2<i32>(var_1.b.x, var_1.e.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, -41503i), abs(vec2<i32>(global1.e.x, global1.b.x)), vec2<i32>(7920i, var_3.b.x))), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_1.e.x, var_1.b.x, global2.x, var_4.c.b.x), vec4<i32>(-74210i, var_4.b.b.x, -1i, var_4.c.e.x), vec4<bool>(global1.a.x, var_1.a.x, true, var_4.a.c.x)), ~vec4<i32>(-1i, var_2, 2147483647i, var_3.b.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global2.x, 0i, var_2), vec4<i32>(25697i, 1943i, var_1.b.x, 2147483647i)), select(vec4<i32>(global2.x, var_1.e.x, -22887i, 0i), vec4<i32>(global1.b.x, 0i, global1.b.x, -11380i), true)))));
}

