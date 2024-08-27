struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, true), 432f, Struct_2(Struct_1(-1i), vec3<bool>(true, false, false)), Struct_2(Struct_1(21352i), vec3<bool>(true, true, false)), Struct_2(Struct_1(2147483647i), vec3<bool>(false, true, true)));

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(-21082i, Struct_2(Struct_1(0i), vec3<bool>(true, false, true)), false, vec4<u32>(0u, 49088u, 4294967295u, 1u)), Struct_4(i32(-2147483648), Struct_2(Struct_1(58696i), vec3<bool>(false, false, true)), true, vec4<u32>(4294967295u, 0u, 44660u, 4294967295u)), Struct_4(1i, Struct_2(Struct_1(2147483647i), vec3<bool>(true, false, true)), false, vec4<u32>(1u, 1u, 4294967295u, 0u)), Struct_4(1i, Struct_2(Struct_1(-1i), vec3<bool>(false, false, true)), true, vec4<u32>(45331u, 14325u, 1u, 0u)), Struct_4(-15726i, Struct_2(Struct_1(-43708i), vec3<bool>(false, true, false)), true, vec4<u32>(12054u, 15827u, 1u, 7846u)), Struct_4(0i, Struct_2(Struct_1(-39046i), vec3<bool>(false, false, false)), true, vec4<u32>(4294967295u, 4294967295u, 1u, 72848u)), Struct_4(0i, Struct_2(Struct_1(1i), vec3<bool>(true, true, false)), true, vec4<u32>(4294967295u, 24175u, 4294967295u, 1u)), Struct_4(1i, Struct_2(Struct_1(-1i), vec3<bool>(true, false, false)), false, vec4<u32>(0u, 4294967295u, 8340u, 52256u)), Struct_4(i32(-2147483648), Struct_2(Struct_1(-6883i), vec3<bool>(false, true, false)), false, vec4<u32>(73599u, 1u, 20691u, 44572u)), Struct_4(1i, Struct_2(Struct_1(2147483647i), vec3<bool>(false, true, false)), false, vec4<u32>(0u, 12930u, 581u, 0u)), Struct_4(2147483647i, Struct_2(Struct_1(2147483647i), vec3<bool>(true, false, true)), false, vec4<u32>(4294967295u, 47008u, 0u, 91649u)), Struct_4(-877i, Struct_2(Struct_1(0i), vec3<bool>(true, false, false)), true, vec4<u32>(1u, 1u, 38465u, 17545u)), Struct_4(0i, Struct_2(Struct_1(-85i), vec3<bool>(false, false, false)), true, vec4<u32>(574u, 41208u, 59063u, 0u)), Struct_4(i32(-2147483648), Struct_2(Struct_1(-54084i), vec3<bool>(false, true, true)), false, vec4<u32>(0u, 4294967295u, 662u, 0u)), Struct_4(0i, Struct_2(Struct_1(1i), vec3<bool>(false, true, false)), true, vec4<u32>(1u, 4294967295u, 4294967295u, 14260u)), Struct_4(26680i, Struct_2(Struct_1(-1i), vec3<bool>(false, true, true)), false, vec4<u32>(1u, 12865u, 4294967295u, 3227u)), Struct_4(-13569i, Struct_2(Struct_1(1i), vec3<bool>(false, false, true)), true, vec4<u32>(4294967295u, 26284u, 4294967295u, 4294967295u)), Struct_4(-11520i, Struct_2(Struct_1(29031i), vec3<bool>(false, true, false)), false, vec4<u32>(1u, 1u, 37445u, 1u)), Struct_4(i32(-2147483648), Struct_2(Struct_1(1i), vec3<bool>(true, true, true)), false, vec4<u32>(4294967295u, 0u, 13525u, 1u)), Struct_4(0i, Struct_2(Struct_1(47638i), vec3<bool>(true, false, true)), false, vec4<u32>(0u, 4294967295u, 10423u, 72662u)), Struct_4(i32(-2147483648), Struct_2(Struct_1(58067i), vec3<bool>(false, true, true)), true, vec4<u32>(6280u, 1u, 10740u, 4294967295u)));

var<private> global2: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 53000u, 36780u), vec3<u32>(60830u, 84637u, 73633u), vec3<u32>(1u, 0u, 7854u), vec3<u32>(1705u, 2129u, 1u), vec3<u32>(69000u, 4294967295u, 1u), vec3<u32>(43820u, 13881u, 25214u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(66926u, 105335u, 4294967295u), vec3<u32>(19187u, 21734u, 51487u), vec3<u32>(83674u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 58162u, 3151u), vec3<u32>(1u, 61245u, 32759u), vec3<u32>(38853u, 1u, 86306u), vec3<u32>(27342u, 55850u, 1u), vec3<u32>(45226u, 827u, 4294967295u), vec3<u32>(32888u, 0u, 4294967295u), vec3<u32>(5179u, 1u, 4294967295u), vec3<u32>(7614u, 26677u, 14254u), vec3<u32>(66104u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 0u));

var<private> global3: Struct_4 = Struct_4(-53803i, Struct_2(Struct_1(1i), vec3<bool>(true, true, true)), false, vec4<u32>(57343u, 0u, 48556u, 70320u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = u_input.b;
    let var_1 = Struct_4(_wgslsmith_mult_i32(-71244i, -min(global3.a, _wgslsmith_clamp_i32(u_input.c.x, global0.d.a.a, -1i))), global3.b, !((true && !global3.b.b.x) || true), select(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.d.x, u_input.b, global3.d.x, 4294967295u), vec4<u32>(global3.d.x, u_input.b, global3.d.x, 4294967295u) | vec4<u32>(26562u, global3.d.x, global3.d.x, 4294967295u))), vec4<u32>(_wgslsmith_add_u32(~34673u, _wgslsmith_div_u32(1u, u_input.b)), global3.d.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(30130u, 35338u, 99712u), global2[_wgslsmith_index_u32(global3.d.x, 21u)]), 1775u | u_input.b), ~min(u_input.b, 34104u)), select(select(!vec4<bool>(global0.e.b.x, global0.e.b.x, true, global3.c), vec4<bool>(false, false, true, global0.c.b.x), true), vec4<bool>(true, true, all(vec4<bool>(global3.c, false, global3.c, global3.b.b.x)), true), !select(true, true, false))));
    let var_2 = var_1;
    var var_3 = -951f;
    global0 = Struct_3(global0.c.b.zz, global0.b, var_1.b, global0.d, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c.x, global3.a) ^ vec4<i32>(u_input.a.x, -19219i, 1i, 27567i), vec4<i32>(u_input.a.x, u_input.a.x, -9424i, 22260i) ^ vec4<i32>(-52752i, 1i, var_2.b.a.a, -28551i))), select(var_2.b.b, !vec3<bool>(global3.c, true, false), global3.b.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b * 491f), _wgslsmith_f_op_f32(1633f - global0.b), var_2.b.b.x)) + _wgslsmith_f_op_f32(-global0.b))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(global0.d.a, vec3<bool>(all(!(!vec2<bool>(global3.c, global0.a.x))), global3.c, true));
    var_0 = global3.b;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(395f - -118f), -746f, global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(max(global0.b, global0.b))) + 1000f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, -125f, global0.b, global0.b))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.b, global0.b, 310f), vec4<f32>(124f, global0.b, -937f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(-1138f * global0.b), _wgslsmith_f_op_f32(select(global0.b, global0.b, true)), global0.b, _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1051f, -1304f, 1029f, -1079f))))));
    let var_2 = Struct_3(vec2<bool>(any(select(vec2<bool>(global0.c.b.x, global3.b.b.x), !vec2<bool>(global3.b.b.x, true), all(vec3<bool>(global0.e.b.x, false, false)))), !(!global3.b.b.x & (var_0.b.x || var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 209f) - _wgslsmith_f_op_f32(f32(-1f) * -866f)) - _wgslsmith_f_op_f32(f32(-1f) * -393f)) * 530f), Struct_2(global0.d.a, var_0.b), global0.c, global0.d);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))));
    return global1[_wgslsmith_index_u32(u_input.b, 21u)];
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global1 = array<Struct_4, 21>();
    var var_0 = func_2();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(global0.b, global0.b), 2186f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 512f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(591f, global0.b) * vec2<f32>(440f, global0.b))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-596f, -647f) * _wgslsmith_f_op_vec2_f32(func_1(global3.c))))));
    let var_1 = _wgslsmith_mult_i32(max(58961i, global3.b.a.a), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.d.a.a, ~u_input.a.x), -_wgslsmith_clamp_i32(global3.b.a.a, 46915i, 7447i)), _wgslsmith_sub_i32(0i, firstLeadingBit(global0.c.a.a)) << (u_input.b % 32u)));
    let var_2 = 1u;
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global2[_wgslsmith_index_u32(abs(~u_input.b), 21u)], vec3<u32>(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_div_u32(global3.d.x, u_input.b)), var_2, _wgslsmith_sub_u32(u_input.b, var_2) ^ ~35916u)), ~global2[_wgslsmith_index_u32(global3.d.x, 21u)]);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1209f, var_0.x, global0.b) - vec3<f32>(var_0.x, var_0.x, 1252f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, -326f, var_0.x))))) + vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(sign(-309f))), -1733f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(255f, global0.b, 1319f) + vec3<f32>(global0.b, 444f, 508f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, var_0.x, 562f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-631f, var_0.x, 309f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-836f, 757f, var_0.x), vec3<f32>(1000f, global0.b, 1073f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1680f, var_0.x, 635f) * vec3<f32>(global0.b, -1001f, -280f)))))));
    var var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~global3.d.x) ^ select(_wgslsmith_sub_u32(var_2, var_2), ~4294967295u, true)), max(vec4<i32>(min(global0.c.a.a | u_input.c.x, ~var_1), ~var_1, ~(-3411i), ~_wgslsmith_sub_i32(-26325i, -1i)), vec4<i32>(u_input.c.x, abs(var_5.x), _wgslsmith_mod_i32(-23286i, ~3274i), 0i)), min(_wgslsmith_add_i32(-3448i, 2147483647i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, 36883i, 43777i, var_5.x), vec4<i32>(global3.b.a.a, -2147483647i, -1i, global3.b.a.a)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-4488i, u_input.c.x, -1895i, u_input.a.x), vec4<i32>(var_1, -8345i, var_1, 2147483647i), vec4<i32>(var_1, -44510i, u_input.a.x, var_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.a, -57509i, global0.e.a.a, var_1), max(vec4<i32>(var_5.x, u_input.a.x, 34113i, -33721i), vec4<i32>(var_1, -1i, 1i, 2340i))))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(global0.e.a.a, global3.a, -32949i), vec3<i32>(2147483647i, -1i, u_input.c.x), global3.b.b.x), select(_wgslsmith_clamp_vec3_i32(min(u_input.c, vec3<i32>(u_input.c.x, -2147483647i, 2147483647i)), -u_input.c, abs(u_input.c)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, global3.a, var_5.x), u_input.c), u_input.c), false)), ~((~vec2<u32>(var_2, var_2) << (vec2<u32>(44099u, var_2) % vec2<u32>(32u))) | global3.d.ww));
}

