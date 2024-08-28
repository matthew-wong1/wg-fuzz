struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(992f, 2419f, 1000f, -525f), vec4<f32>(-863f, 341f, 276f, 1000f), vec4<f32>(1900f, -875f, -478f, 1334f), vec4<f32>(-467f, -1276f, -1196f, 1940f), vec4<f32>(-1044f, -1644f, 440f, 317f), vec4<f32>(-797f, -762f, -162f, -1000f), vec4<f32>(466f, -624f, -1000f, 807f), vec4<f32>(-248f, 1000f, 1227f, -2597f), vec4<f32>(-399f, 684f, 1625f, 884f), vec4<f32>(184f, -185f, 695f, -312f), vec4<f32>(116f, -552f, -408f, -383f), vec4<f32>(-1960f, -1000f, 351f, -300f), vec4<f32>(706f, -645f, 493f, 120f), vec4<f32>(-1143f, 1297f, -159f, 1314f), vec4<f32>(473f, 159f, -250f, -129f), vec4<f32>(141f, -117f, -2481f, -383f), vec4<f32>(1000f, 342f, -621f, 547f), vec4<f32>(255f, -1703f, 1088f, -1000f), vec4<f32>(368f, 464f, -1271f, -1000f), vec4<f32>(290f, -364f, 1687f, 575f), vec4<f32>(-1000f, 112f, -880f, 1549f), vec4<f32>(224f, -1213f, -988f, -2070f), vec4<f32>(388f, -1000f, -1451f, -536f), vec4<f32>(156f, 652f, 1086f, -780f), vec4<f32>(-424f, -158f, -2094f, 1473f), vec4<f32>(-294f, 1360f, 1000f, 1000f), vec4<f32>(-1098f, -1000f, -536f, -543f), vec4<f32>(-109f, -792f, -745f, -978f), vec4<f32>(1000f, -767f, 638f, 2066f), vec4<f32>(136f, 649f, 625f, 108f), vec4<f32>(541f, 1981f, -1000f, 618f));

var<private> global1: f32 = 308f;

var<private> global2: array<vec3<i32>, 28>;

var<private> global3: array<i32, 8> = array<i32, 8>(i32(-2147483648), -1i, 47985i, 237i, 1i, 5532i, 2147483647i, i32(-2147483648));

var<private> global4: array<bool, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(~vec3<u32>(abs(u_input.a.x), _wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.a.x)), _wgslsmith_clamp_i32(~(~1i), -32824i >> ((arg_2.c.a.x << (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(24750u, 4294967295u)) % 32u)) % 32u), min(_wgslsmith_div_i32(-35076i, u_input.b.x), u_input.b.x) | ~2147483647i), arg_2.c.c, 86252u);
    global0 = array<vec4<f32>, 31>();
    global2 = array<vec3<i32>, 28>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.e.yz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(arg_2.e.x - 159f))));
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_div_f32(-1478f, arg_2.e.x)), (var_2.a.x <= 988f) || arg_1.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(arg_2.a.x - var_1.x)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_mult_u32(select(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 26016u, global4[_wgslsmith_index_u32(~(~1u), 22u)]), u_input.a.x));
    var var_1 = select(u_input.b.x ^ (max(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(4517u, 8u)], global3[_wgslsmith_index_u32(var_0, 8u)]), _wgslsmith_div_i32(1i, 1i)) & u_input.b.x), -6734i, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), Struct_2(vec2<f32>(383f, 230f), vec3<bool>(global4[_wgslsmith_index_u32(53472u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true), Struct_1(vec3<u32>(u_input.a.x, 0u, 65347u), u_input.b.x, vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 22u)]), 84695u), vec3<i32>(2147483647i, u_input.b.x, -2147483647i), vec4<f32>(-2131f, -168f, 1571f, 915f)))) - _wgslsmith_div_f32(1741f, -1301f)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -437f), 406f))));
    global2 = array<vec3<i32>, 28>();
    var var_2 = Struct_1(~_wgslsmith_mult_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(94420u, u_input.a.x, 4294967295u), vec3<u32>(var_0, var_0, u_input.a.x)), ~vec3<u32>(60400u, var_0, 0u)), ~vec3<u32>(u_input.a.x, 21295u, var_0) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0, u_input.a.x), vec3<u32>(1u, u_input.a.x, 24562u)) % vec3<u32>(32u))), 0i, !(!(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(var_0, 22u)]))), var_0);
    let var_3 = Struct_1(firstTrailingBit(~(~var_2.a)) | vec3<u32>(max(u_input.a.x, var_0), u_input.a.x, ~45422u), 1i & _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(923i, global3[_wgslsmith_index_u32(var_0, 8u)]), min(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], 16998i)), countOneBits(0i)), vec2<bool>(true, true), var_0);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, u_input.a.x, u_input.a.x), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_3.c.a, arg_3.c.a), arg_0.a.x, ~abs(u_input.a.x))), ~select(vec3<u32>(reverseBits(arg_0.d), ~arg_3.c.a.x, 11610u), _wgslsmith_sub_vec3_u32(arg_3.c.a ^ vec3<u32>(0u, arg_0.d, u_input.a.x), ~arg_0.a), vec3<bool>(!arg_3.c.c.x, arg_3.c.c.x, true)), arg_3.b);
    var_0 = func_2().b;
    global2 = array<vec3<i32>, 28>();
    let var_2 = vec4<i32>(-6271i, ~min(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, func_2().a.x), 8u)], 5364i), -arg_3.d.x, 1i);
    return arg_0;
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = firstTrailingBit(1i);
    var_0 = -3347i;
    global2 = array<vec3<i32>, 28>();
    global4 = array<bool, 22>();
    var var_1 = false;
    return select(select(func_2().c, arg_0.c, false), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(664u, 22u)]), !(!vec2<bool>(!arg_0.c.x, false)));
}

fn func_1() -> vec2<bool> {
    let var_0 = !(-148f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1320f)))));
    global1 = -1735f;
    return !func_5(func_4(func_2(), -(i32(-1i) * -53619i), (0u | u_input.a.x) <= ~11233u, Struct_2(vec2<f32>(1149f, -699f), !vec3<bool>(var_0, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(0u, 22u)]), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(4726u, 8u)], vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), u_input.a.x), _wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(1u, 28u)], vec3<i32>(1i, 2147483647i, 12593i)), _wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(12616u, 31u)], vec4<f32>(-537f, -334f, 135f, 1408f))))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> StorageBuffer {
    global3 = array<i32, 8>();
    global2 = array<vec3<i32>, 28>();
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, 13565u, arg_1.c.d)), ~vec4<u32>(arg_1.c.a.x, arg_1.c.d, 52251u, 0u)) & arg_2.c.d, arg_1.c.a.x), 4430i, vec2<bool>(true, true), ~36061u);
    let var_2 = ~abs(select(_wgslsmith_sub_vec3_u32(arg_1.c.a, vec3<u32>(u_input.a.x, arg_1.c.a.x, arg_2.c.d)), arg_2.c.a, arg_1.b.x)) << (vec3<u32>(reverseBits(abs(7004u & arg_2.c.d)), arg_1.c.d, var_1.a.x << (~_wgslsmith_div_u32(arg_1.c.d, arg_1.c.d) % 32u)) % vec3<u32>(32u));
    return StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_1.a.x, var_1.a.x ^ 88529u), var_1.a.x), 8u)] ^ ~(-(~global3[_wgslsmith_index_u32(u_input.a.x, 8u)])), select(vec4<i32>(reverseBits(global3[_wgslsmith_index_u32(arg_1.c.a.x, 8u)]), -1i, -10048i, 35758i), vec4<i32>(1i, arg_2.c.b, global3[_wgslsmith_index_u32(~u_input.a.x, 8u)], _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.b, 18112i), arg_2.d.yx)), vec4<bool>(all(arg_2.b.yx), arg_0.x, all(vec4<bool>(false, true, false, true)), func_1().x)) >> (max(vec4<u32>(~var_2.x, max(4294967295u, var_2.x), countOneBits(0u), 50426u), abs(vec4<u32>(60605u, 81759u, 1u, 0u))) % vec4<u32>(32u)), arg_1.e.yyw, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1134i, func_2().b), u_input.b.x) ^ _wgslsmith_dot_vec4_i32(~(-vec4<i32>(global3[_wgslsmith_index_u32(var_1.a.x, 8u)], u_input.b.x, -2147483647i, 28883i)), vec4<i32>(arg_2.c.b, -23587i, -2147483647i << (var_2.x % 32u), -1i)), ~vec2<u32>(func_2().d, max(38611u, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 22>();
    global0 = array<vec4<f32>, 31>();
    let var_0 = _wgslsmith_add_u32(0u, ~6629u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-783f))));
    global1 = 312f;
    var var_1 = var_0;
    let var_2 = 2147483647i;
    let x = u_input.a;
    s_output = func_6(select(vec2<bool>(!global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(1u, 22u)]), func_1(), !(select(false, false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]) == global4[_wgslsmith_index_u32(~1u, 22u)])), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1363f, -1000f))))), select(select(vec3<bool>(global4[_wgslsmith_index_u32(42858u, 22u)], global4[_wgslsmith_index_u32(11377u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), !vec3<bool>(global4[_wgslsmith_index_u32(var_0, 22u)], false, false), select(vec3<bool>(false, global4[_wgslsmith_index_u32(var_0, 22u)], global4[_wgslsmith_index_u32(var_0, 22u)]), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 22u)], false, global4[_wgslsmith_index_u32(43855u, 22u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true, true))), !select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(var_0, 22u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(var_0, 22u)], false)), any(vec3<bool>(true, global4[_wgslsmith_index_u32(7397u, 22u)], false)) && any(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]))), Struct_1(firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 10630u))), global3[_wgslsmith_index_u32(0u, 8u)], vec2<bool>(true, select(global4[_wgslsmith_index_u32(var_0, 22u)], true, false)), ~var_0), global2[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~reverseBits(1u), 31u)])), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1731f), -1486f), !select(select(vec3<bool>(global4[_wgslsmith_index_u32(var_0, 22u)], false, global4[_wgslsmith_index_u32(var_0, 22u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 22u)], global4[_wgslsmith_index_u32(10101u, 22u)]), false), vec3<bool>(global4[_wgslsmith_index_u32(var_0, 22u)], global4[_wgslsmith_index_u32(var_0, 22u)], true), any(vec3<bool>(global4[_wgslsmith_index_u32(var_0, 22u)], true, true))), func_2(), max(u_input.b, ~countOneBits(global2[_wgslsmith_index_u32(39090u, 28u)])), global0[_wgslsmith_index_u32(max(~select(var_0, 57976u, false), 0u), 31u)]), all(vec4<bool>((2215u ^ var_0) >= ~var_0, !all(vec2<bool>(global4[_wgslsmith_index_u32(40558u, 22u)], global4[_wgslsmith_index_u32(var_0, 22u)])), global4[_wgslsmith_index_u32(~reverseBits(var_0), 22u)], any(vec2<bool>(global4[_wgslsmith_index_u32(18452u, 22u)], global4[_wgslsmith_index_u32(1u, 22u)])))));
}

