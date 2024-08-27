struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-230f, -642f, -927f), vec3<f32>(-1899f, -153f, 829f), vec3<f32>(-398f, -1490f, 1318f), vec3<f32>(2150f, -351f, -1207f));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(255f, i32(-2147483648), 4294967295u), Struct_1(-1492f, i32(-2147483648), 49748u), Struct_1(625f, 2147483647i, 4294967295u), Struct_1(1394f, 0i, 1u), Struct_1(1530f, i32(-2147483648), 63309u), Struct_1(1338f, -15270i, 4294967295u), Struct_1(-125f, 0i, 4991u), Struct_1(-548f, i32(-2147483648), 21068u), Struct_1(199f, -2219i, 1u), Struct_1(-1110f, 2147483647i, 25795u), Struct_1(738f, 3004i, 65087u), Struct_1(-1000f, -28363i, 1u), Struct_1(-160f, 1i, 4294967295u), Struct_1(1000f, -27948i, 1u), Struct_1(-2109f, -779i, 44684u), Struct_1(1326f, 0i, 4294967295u), Struct_1(759f, -47540i, 0u), Struct_1(-1346f, 2147483647i, 4294967295u), Struct_1(-1020f, -3749i, 54067u), Struct_1(-714f, 12487i, 4294967295u), Struct_1(-941f, -80423i, 2664u), Struct_1(601f, 71945i, 74913u), Struct_1(-1573f, -1i, 4294967295u), Struct_1(-120f, -13500i, 90889u), Struct_1(1225f, 25531i, 53451u), Struct_1(262f, 13744i, 0u), Struct_1(579f, 64098i, 46037u), Struct_1(1026f, -27928i, 34848u), Struct_1(1197f, 0i, 4066u), Struct_1(135f, -15665i, 5357u), Struct_1(-370f, -1i, 16942u), Struct_1(1113f, -27356i, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(47570u, 32u)];
    global1 = array<Struct_1, 32>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_2 = ~u_input.b;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.a))))));
    return -877f;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> i32 {
    global1 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(-(~(-arg_1.xy)), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.zx, arg_1.yx), firstTrailingBit(arg_1.yx), -vec2<i32>(arg_0.a.b, -2147483647i)), vec2<i32>(1i, select(-2147483647i, u_input.d, true)), -vec2<i32>(34849i, 4459i) >> (vec2<u32>(arg_0.b.x, u_input.b) % vec2<u32>(32u)))), vec2<i32>(-(_wgslsmith_dot_vec2_i32(arg_1.yz, vec2<i32>(-19855i, -2147483647i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, arg_0.a.b, arg_2.a.b), vec4<i32>(arg_0.a.b, -2147483647i, -1i, arg_2.a.b))), select(-abs(49978i), arg_1.x, true)));
    global1 = array<Struct_1, 32>();
    global0 = array<vec3<f32>, 4>();
    global1 = array<Struct_1, 32>();
    return reverseBits(-22638i);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    global1 = array<Struct_1, 32>();
    var var_0 = -(vec2<i32>(-6826i, -23067i) << (u_input.a % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~arg_1.a, 4u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(arg_1.a, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), vec3<f32>(-844f, -1036f, -820f), arg_3.x && arg_3.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, arg_2.c.a, 1043f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a) + arg_1.c.a), _wgslsmith_f_op_f32(arg_2.c.a - _wgslsmith_f_op_f32(step(arg_2.c.a, -1000f))), _wgslsmith_f_op_f32(trunc(-1220f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_2.c.c, 4u)] * vec3<f32>(275f, 203f, arg_1.c.a)))))) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_2.a, 4u)] - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-872f + -695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a)), _wgslsmith_f_op_f32(func_2(true, 35003u > u_input.c.x, vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x))))));
    var_0 = vec2<i32>(u_input.d, ~arg_1.c.b & -func_3(Struct_3(arg_1.c, u_input.a), vec3<i32>(2147483647i, arg_1.b, arg_1.b), Struct_3(global1[_wgslsmith_index_u32(17790u, 32u)], u_input.c.zx))) >> (vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(~7414u, _wgslsmith_clamp_u32(~u_input.c.x, 1u, u_input.a.x))) % vec2<u32>(32u));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec3<i32>(max(_wgslsmith_mod_i32(0i, u_input.d), u_input.d), -abs(5014i), -(~(-2147483647i))));
    var var_1 = Struct_2(select(_wgslsmith_mod_u32(u_input.c.x, func_1(-54169i, Struct_2(u_input.a.x, u_input.d, Struct_1(-1195f, var_0.x, 85735u)), Struct_2(4294967295u, u_input.d, Struct_1(-828f, -18771i, u_input.b)), vec4<bool>(true, false, false, true))), func_1(var_0.x, Struct_2(1u, -2147483647i, global1[_wgslsmith_index_u32(1u, 32u)]), Struct_2(u_input.b, -1i, Struct_1(-529f, -1i, 20314u)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)))) & _wgslsmith_div_u32(select(u_input.c.x, 0u, false) >> (1u % 32u), ~80021u), 24000i, Struct_1(_wgslsmith_f_op_f32(round(643f)), ~(~(-4146i)), _wgslsmith_mod_u32(85919u, _wgslsmith_sub_u32(abs(4294967295u), u_input.b))));
    let var_2 = all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, false), false)));
    global0 = array<vec3<f32>, 4>();
    var_1 = Struct_2(~select(_wgslsmith_clamp_u32(var_1.c.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 0u, u_input.c.x), vec3<u32>(39871u, 29178u, 22445u)), u_input.c.x), ~func_1(49920i, Struct_2(0u, -6198i, Struct_1(2012f, 1i, 60474u)), Struct_2(var_1.a, -4651i, Struct_1(var_1.c.a, var_1.b, u_input.b)), vec4<bool>(var_2, true, var_2, false)), var_2), 777i, Struct_1(525f, var_0.x | -59643i, 1u));
    var_1 = Struct_2(0u, ~var_1.b, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(min(294f, _wgslsmith_f_op_f32(1170f * var_1.c.a)))), _wgslsmith_sub_i32(-(~u_input.d), -_wgslsmith_sub_i32(var_1.c.b, 2147483647i)), _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(var_1.c.c)), 1u)));
    var_1 = Struct_2(~(~1u), _wgslsmith_sub_i32(~var_0.x, 2527i), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * _wgslsmith_f_op_f32(step(-917f, var_1.c.a))))), -var_0.x, firstLeadingBit(u_input.c.x)));
    let var_3 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 1u, 4294967295u, u_input.a.x) & vec4<u32>(var_1.c.c, var_1.a, var_1.a, 96778u), _wgslsmith_clamp_vec4_u32(vec4<u32>(9734u, 4294967295u, u_input.c.x, var_1.a), vec4<u32>(25377u, 0u, 18575u, var_1.a), vec4<u32>(var_1.a, 53582u, var_1.a, var_1.c.c))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.a, 33342u, 14320u, 1418u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, var_1.a), vec4<u32>(0u, 10291u, 0u, 35706u))))), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(0u, -641f, _wgslsmith_f_op_f32(max(-936f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_3.a)))))), 4294967295u, _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(reverseBits(5404u), 4u)], _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), 4u)] + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.a, var_3.a, -1296f)) * _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_3.c, 4u)] + vec3<f32>(var_3.a, var_3.a, var_3.a))))));
}

