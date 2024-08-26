struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(2147483647i, -25256i, 1i), vec3<f32>(1000f, 679f, 1079f), vec3<bool>(false, true, true), vec3<i32>(-14580i, -34912i, -10635i)), Struct_1(vec3<i32>(8672i, 12240i, -55034i), vec3<f32>(-939f, 388f, 779f), vec3<bool>(false, false, false), vec3<i32>(-16858i, 4263i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -24145i), vec3<f32>(-856f, 593f, 1171f), vec3<bool>(false, false, true), vec3<i32>(0i, -34677i, 15367i)), Struct_1(vec3<i32>(1i, 1i, 14156i), vec3<f32>(-603f, 1452f, 544f), vec3<bool>(true, true, false), vec3<i32>(-1i, 17942i, -36307i)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1i), vec3<f32>(-253f, 1214f, 119f), vec3<bool>(false, false, false), vec3<i32>(1i, 22381i, 1i)), Struct_1(vec3<i32>(1i, -78775i, 30478i), vec3<f32>(-2065f, 418f, 186f), vec3<bool>(true, false, false), vec3<i32>(-6464i, i32(-2147483648), -52268i)), Struct_1(vec3<i32>(2009i, 1i, -1i), vec3<f32>(-1158f, -620f, 3335f), vec3<bool>(true, false, false), vec3<i32>(-66899i, 25132i, 0i)), Struct_1(vec3<i32>(0i, 24611i, -29396i), vec3<f32>(-317f, -396f, 995f), vec3<bool>(true, true, false), vec3<i32>(8300i, 1i, -21031i)), Struct_1(vec3<i32>(484i, i32(-2147483648), 2147483647i), vec3<f32>(800f, -456f, -1901f), vec3<bool>(true, false, true), vec3<i32>(0i, -1i, 38110i)), Struct_1(vec3<i32>(0i, 5744i, -49347i), vec3<f32>(-1522f, -919f, -303f), vec3<bool>(true, false, true), vec3<i32>(44930i, i32(-2147483648), 2147483647i)));

var<private> global1: array<vec2<i32>, 9>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(15842i, 1i, 43616i), vec3<f32>(125f, 943f, -742f), vec3<bool>(false, false, false), vec3<i32>(0i, -91536i, 9891i)), Struct_1(vec3<i32>(i32(-2147483648), -27354i, 0i), vec3<f32>(-775f, 741f, -393f), vec3<bool>(true, true, true), vec3<i32>(42482i, -1i, 0i)), Struct_1(vec3<i32>(-1i, 15440i, i32(-2147483648)), vec3<f32>(-447f, -1106f, -821f), vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), 27925i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, 0i, -13482i), vec3<f32>(790f, 612f, 837f), vec3<bool>(false, false, true), vec3<i32>(0i, 20984i, 0i)), Struct_1(vec3<i32>(-53278i, 29767i, 1i), vec3<f32>(-557f, -846f, 1185f), vec3<bool>(true, false, false), vec3<i32>(-1i, 13889i, -47939i)), Struct_1(vec3<i32>(i32(-2147483648), -44011i, -7325i), vec3<f32>(1000f, -376f, -592f), vec3<bool>(false, true, false), vec3<i32>(0i, 1i, 1i)), Struct_1(vec3<i32>(1i, -983i, i32(-2147483648)), vec3<f32>(-1106f, 1536f, 452f), vec3<bool>(true, false, true), vec3<i32>(-1i, -6186i, 2147483647i)), Struct_1(vec3<i32>(-1i, 57031i, 72221i), vec3<f32>(452f, -398f, 246f), vec3<bool>(true, true, true), vec3<i32>(-23435i, 0i, -23763i)), Struct_1(vec3<i32>(0i, -12526i, 1670i), vec3<f32>(835f, -673f, -500f), vec3<bool>(false, false, true), vec3<i32>(-45351i, i32(-2147483648), -36576i)), Struct_1(vec3<i32>(32271i, 28930i, -5818i), vec3<f32>(-1914f, -158f, 922f), vec3<bool>(false, true, false), vec3<i32>(0i, i32(-2147483648), 2147483647i)));

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: u32) -> u32 {
    global1 = array<vec2<i32>, 9>();
    global1 = array<vec2<i32>, 9>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3, _wgslsmith_div_u32(arg_3, arg_3), _wgslsmith_add_u32(u_input.b, 100691u), u_input.a.x), _wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, 39758u, arg_3, 0u), vec4<u32>(arg_3, arg_3, 0u, 4294967295u), arg_1), u_input.c)), 9u)], !arg_1.zx, abs(-52442i), arg_0, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a.x, u_input.c.x, 1u << (arg_3 % 32u)), 10u)]);
    let var_1 = var_0;
    var var_2 = arg_0.b;
    return _wgslsmith_dot_vec2_u32(u_input.a, u_input.a);
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> f32 {
    let var_0 = true;
    global3 = _wgslsmith_div_u32(7903u, 23762u);
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(func_3(Struct_1(arg_3.d.d, arg_3.e.b, arg_3.d.c, arg_3.e.d), select(vec4<bool>(var_0, true, arg_2, arg_2), arg_0, vec4<bool>(arg_2, true, arg_2, false)), any(vec3<bool>(false, false, false)), arg_1), func_3(Struct_1(vec3<i32>(arg_3.d.a.x, arg_3.d.a.x, arg_3.c), vec3<f32>(906f, arg_3.e.b.x, -1244f), arg_3.e.c, arg_3.e.a), select(arg_0, arg_0, true), arg_0.x, min(4294967295u, u_input.c.x)), arg_1), u_input.a.x);
    let var_2 = 0i;
    var var_3 = Struct_1(arg_3.d.d, _wgslsmith_f_op_vec3_f32(-arg_3.e.b), vec3<bool>(true, true, true), arg_3.d.d);
    return _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1269f, -534f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, false, true), 2488u, false, Struct_2(vec2<i32>(39228i, -2147483647i), vec2<bool>(false, true), 19043i, global2[_wgslsmith_index_u32(u_input.c.x, 10u)], Struct_1(vec3<i32>(-1i, -2147483647i, 1i), vec3<f32>(664f, -278f, -1570f), vec3<bool>(false, false, true), vec3<i32>(2147483647i, -2147483647i, -373i))))), -1345f)))));
    global2 = array<Struct_1, 10>();
    global3 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, max(0u, u_input.a.x)), select(~u_input.a, countOneBits(u_input.c.yx), true)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 0u) ^ u_input.c.zz), _wgslsmith_add_vec2_u32(u_input.c.zx, u_input.a))), u_input.a);
    global0 = array<Struct_1, 10>();
    return Struct_3(-(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-14420i, 581i, 1i)) << (u_input.c.wzy % vec3<u32>(32u))), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-8946i, -1i), max(-24106i, 83929i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), abs(global1[_wgslsmith_index_u32(1u, 9u)])), firstTrailingBit(-2147483647i) << ((u_input.a.x | 0u) % 32u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_dot_vec3_u32(u_input.c.yyz, vec3<u32>(4294967295u, ~u_input.b >> (abs(u_input.b) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, 67397u, 34493u), u_input.c))) << (u_input.c.x % 32u);
    return var_0;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.d;
    global2 = array<Struct_1, 10>();
    var var_1 = Struct_3(arg_0.e.d, arg_0.a.x);
    let var_2 = 0i & func_1().b;
    let var_3 = 1u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), Struct_2(-global1[_wgslsmith_index_u32(u_input.b, 9u)], select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), false), countOneBits(_wgslsmith_div_i32(-18958i, 31654i)), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-23089i, 0i, -1i), vec3<i32>(-1i, 8878i, 47769i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1326f, 247f, 501f), vec3<f32>(-346f, -701f, -1249f))), vec3<bool>(true, false, true), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -19104i, -1i), vec3<i32>(1i, 2147483647i, 2147483647i))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 29200u), vec3<u32>(u_input.b, 0u, u_input.b))), 10u)]), u_input.b != 4294967295u, (~u_input.b > 1u) && true));
    global0 = array<Struct_1, 10>();
    global1 = array<vec2<i32>, 9>();
    global0 = array<Struct_1, 10>();
    var_0 = func_5(Struct_2(abs(vec2<i32>(-2147483647i, -32373i)), vec2<bool>(all(vec2<bool>(true, false)), var_0.e.c.x), i32(-1i) * -18090i, var_0.e, global0[_wgslsmith_index_u32(0u, 10u)]));
    let var_1 = func_1();
    var var_2 = Struct_3(func_1().a ^ var_0.d.d, ~func_4(func_1(), Struct_2(var_0.d.a.zx, !vec2<bool>(false, var_0.e.c.x), _wgslsmith_mod_i32(1i, 1i), Struct_1(vec3<i32>(44080i, -1i, 20110i), vec3<f32>(-633f, 582f, -696f), vec3<bool>(true, true, true), vec3<i32>(var_0.a.x, var_1.a.x, 1852i)), func_4(Struct_3(vec3<i32>(var_0.a.x, -89170i, -27722i), var_0.a.x), Struct_2(vec2<i32>(var_0.d.d.x, var_1.b), var_0.e.c.yz, -30930i, Struct_1(var_1.a, var_0.d.b, vec3<bool>(var_0.e.c.x, true, var_0.b.x), vec3<i32>(var_1.a.x, 2147483647i, 1i)), var_0.d), true, true).d), false, true).c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.b.xx, u_input.c.x, -(abs(vec4<i32>(var_1.a.x, var_0.d.a.x, var_1.b, -1i)) >> ((vec4<u32>(u_input.a.x, 1u, u_input.c.x, 1u) >> (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(274f, 1f) - 763f), var_0.d.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-277f, -1000f), _wgslsmith_f_op_f32(floor(var_0.e.b.x)))) - _wgslsmith_f_op_vec2_f32(var_0.e.b.zx * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(448f, 1275f))))));
}

