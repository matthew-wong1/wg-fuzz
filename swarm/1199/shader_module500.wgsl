struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(42177u, 1u), vec2<u32>(38529u, 1u), vec2<u32>(1u, 43110u), vec2<u32>(4294967295u, 39991u), vec2<u32>(4294967295u, 1u), vec2<u32>(7858u, 20223u), vec2<u32>(13988u, 1u), vec2<u32>(43072u, 1u), vec2<u32>(52581u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(57892u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 44438u), vec2<u32>(0u, 4294967295u), vec2<u32>(41297u, 0u));

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(26400i, 39i, -8105i, -60850i), vec4<i32>(57701i, 5214i, 23993i, 2147483647i), vec4<i32>(22402i, 1676i, 39863i, 0i), vec4<i32>(52887i, 0i, -2534i, 63166i), vec4<i32>(i32(-2147483648), -38398i, i32(-2147483648), 17825i), vec4<i32>(2147483647i, i32(-2147483648), -5776i, i32(-2147483648)), vec4<i32>(-19907i, i32(-2147483648), -8237i, -1i), vec4<i32>(2147483647i, 44005i, -6099i, 33028i), vec4<i32>(2147483647i, 2147483647i, -13084i, -16526i), vec4<i32>(i32(-2147483648), i32(-2147483648), 11097i, -13661i), vec4<i32>(15746i, -1i, 15484i, 40664i), vec4<i32>(-38524i, 41411i, 1i, 33938i), vec4<i32>(-36594i, -45858i, 63171i, 1i), vec4<i32>(24326i, -1i, -15058i, 16956i), vec4<i32>(0i, i32(-2147483648), -48413i, -1i), vec4<i32>(65206i, 69008i, i32(-2147483648), 14869i), vec4<i32>(-39220i, 2147483647i, -1i, -26272i), vec4<i32>(-54895i, 1i, -10346i, -9474i), vec4<i32>(-33416i, -1i, -1i, -62354i), vec4<i32>(2147483647i, -61753i, -3000i, -1i), vec4<i32>(-15977i, 20916i, 0i, i32(-2147483648)), vec4<i32>(-2047i, 1i, 37667i, -5472i), vec4<i32>(13727i, -5977i, 1i, 0i), vec4<i32>(11226i, i32(-2147483648), 0i, 27156i), vec4<i32>(i32(-2147483648), -1i, 0i, 31230i), vec4<i32>(5193i, -11889i, 1i, -41089i), vec4<i32>(i32(-2147483648), 0i, -3681i, -1i), vec4<i32>(0i, 39682i, 19940i, 1i));

var<private> global2: array<Struct_1, 5>;

var<private> global3: Struct_1 = Struct_1(-1771f, false, vec2<u32>(0u, 0u));

var<private> global4: array<u32, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    global4 = array<u32, 3>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global3.a) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1225f, global3.a), vec2<f32>(371f, -549f), vec2<bool>(false, global3.b)))) + vec2<f32>(global3.a, _wgslsmith_f_op_f32(-global3.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.a), global3.a) - vec2<f32>(global3.a, 1f))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = !(!((global3.c.x & 20288u) == ~_wgslsmith_dot_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 3u)], u_input.b.x, 1u, global4[_wgslsmith_index_u32(12156u, 3u)]), vec4<u32>(u_input.b.x, 1u, 1u, global4[_wgslsmith_index_u32(1u, 3u)]))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, global3.a));
    var var_2 = all(vec2<bool>(!var_0, true));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_3 = ~u_input.a.zyy;
    return _wgslsmith_f_op_f32(-global3.a);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(min(global3.c.x, 0u), _wgslsmith_mult_u32(0u, global3.c.x)))), _wgslsmith_f_op_f32(-arg_2.a))));
    var var_1 = Struct_1(_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(434f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))), !(any(vec2<bool>(arg_2.b, true)) || !global3.b), _wgslsmith_mult_vec2_u32(abs(~(~u_input.b.wy)), select(global3.c, ~vec2<u32>(0u, global4[_wgslsmith_index_u32(u_input.e.x, 3u)]), vec2<bool>(global3.b, true))));
    global3 = arg_2;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], Struct_1(-1927f, !arg_2.b || false, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, arg_2.c.x), arg_2.c) >> (~vec2<u32>(arg_2.c.x, 1u) % vec2<u32>(32u)), ~vec2<u32>(global3.c.x, arg_2.c.x), ~vec2<u32>(u_input.a.x, var_1.c.x))));
    var var_3 = _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.d.x), vec3<i32>(u_input.c, u_input.c, 17161i)) & firstTrailingBit(vec3<i32>(14043i, u_input.d.x, -50294i)), _wgslsmith_mod_vec3_i32(vec3<i32>(72065i, u_input.c, u_input.c) >> (u_input.b.wxw % vec3<u32>(32u)), vec3<i32>(u_input.d.x, u_input.d.x, u_input.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, ~u_input.d.x), _wgslsmith_add_i32(-u_input.d.x, ~u_input.c), u_input.c), vec3<i32>(1i, abs(0i), 0i)));
    return max(vec3<i32>(-26943i, min(max(firstTrailingBit(-2147483647i), var_3.x), max(0i, 1i) >> (1u % 32u)), var_3.x), firstTrailingBit(select(vec3<i32>(-31441i, 1i, var_3.x), vec3<i32>(firstLeadingBit(u_input.c), -var_3.x, max(var_3.x, var_3.x)), var_1.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~20947u, abs(4294967295u), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 27880u, global4[_wgslsmith_index_u32(arg_1.c.x, 3u)]), ~vec3<u32>(u_input.e.x, 0u, global4[_wgslsmith_index_u32(40882u, 3u)]), vec3<u32>(1u, global4[_wgslsmith_index_u32(37533u, 3u)], 38094u)) >> (vec3<u32>(min(u_input.b.x, 4294967295u), 4294967295u, ~2288u) % vec3<u32>(32u)));
    global2 = array<Struct_1, 5>();
    global0 = array<vec2<u32>, 16>();
    var var_1 = select(true, arg_1.b, arg_1.b) & !(_wgslsmith_sub_i32(~1i, max(arg_2.x, arg_2.x)) <= ~arg_2.x);
    global4 = array<u32, 3>();
    return min(global3.c.x, ~(74531u | global4[_wgslsmith_index_u32(min(global3.c.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(12704u, 3u)], 3u)]), 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 16>();
    global1 = array<vec4<i32>, 28>();
    global1 = array<vec4<i32>, 28>();
    let var_0 = min(~vec4<u32>(global4[_wgslsmith_index_u32(max(u_input.e.x, firstLeadingBit(global4[_wgslsmith_index_u32(global3.c.x, 3u)])), 3u)], _wgslsmith_div_u32(1u, 120116u), 29686u, ~global4[_wgslsmith_index_u32(reverseBits(global4[_wgslsmith_index_u32(4294967295u, 3u)]), 3u)]), vec4<u32>(1u, _wgslsmith_mod_u32(global3.c.x | u_input.b.x, func_4(any(vec4<bool>(false, false, global3.b, false)), global2[_wgslsmith_index_u32(~0u, 5u)], func_1(global4[_wgslsmith_index_u32(global3.c.x, 3u)], vec4<bool>(false, false, false, true), global2[_wgslsmith_index_u32(u_input.b.x, 5u)]))), ~(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], 55561u, u_input.e.x, global3.c.x))), global4[_wgslsmith_index_u32(46129u, 3u)]));
    var var_1 = global3.b;
    let var_2 = true;
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(251f + _wgslsmith_f_op_f32(-global3.a)))) + _wgslsmith_f_op_f32(func_2(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, 4294967295u), vec2<u32>(var_0.x, 26363u))))), !(!(1000f > global3.a)), vec2<u32>(0u, _wgslsmith_mod_u32(min(abs(global3.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), var_0.yw)), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(global3.a * -1148f)), _wgslsmith_f_op_f32(-1f), -1576f, _wgslsmith_f_op_f32(-global3.a)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(397f, global3.a, global3.a, global3.a)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a, global3.a, 922f, global3.a))))))), global3.a, func_1(1u, !vec4<bool>(global3.b, false || var_2, global3.a < -1455f, false), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3.a)), global3.a), true, abs(vec2<u32>(global3.c.x, global4[_wgslsmith_index_u32(global3.c.x, 3u)])))), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(7954i, u_input.c, u_input.c, -20177i), -(global1[_wgslsmith_index_u32(global3.c.x, 28u)] >> (vec4<u32>(global4[_wgslsmith_index_u32(var_0.x, 3u)], 0u, var_0.x, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-64738i, 18615i), u_input.d.x, firstTrailingBit(-36023i), i32(-1i) * -1i), vec4<i32>(-u_input.c, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), ~(-8773i), ~u_input.d.x))));
}

