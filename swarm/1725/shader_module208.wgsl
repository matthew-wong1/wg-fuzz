struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(35575u, 75547u, 0u), vec3<u32>(444u, 65052u, 27168u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 17800u, 0u), vec3<u32>(0u, 4294967295u, 49675u), vec3<u32>(109539u, 4294967295u, 0u), vec3<u32>(9713u, 6449u, 29097u), vec3<u32>(57455u, 1u, 3666u), vec3<u32>(1u, 4294967295u, 2464u), vec3<u32>(0u, 137598u, 62965u), vec3<u32>(106139u, 85984u, 30541u), vec3<u32>(0u, 24730u, 4294967295u), vec3<u32>(33696u, 4294967295u, 4294967295u), vec3<u32>(53692u, 0u, 4294967295u), vec3<u32>(74335u, 1u, 34397u), vec3<u32>(15774u, 9233u, 0u), vec3<u32>(4294967295u, 32393u, 0u), vec3<u32>(4294967295u, 87343u, 0u), vec3<u32>(83438u, 10190u, 1u));

var<private> global1: array<i32, 14>;

var<private> global2: array<u32, 14> = array<u32, 14>(0u, 11389u, 30011u, 37795u, 1u, 0u, 1u, 79592u, 57202u, 35319u, 0u, 38988u, 1937u, 12203u);

var<private> global3: i32;

var<private> global4: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_div_i32(-(~(-u_input.d)), -2147483647i);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, arg_0.e.b, arg_0.a.b)) + vec3<f32>(-998f, -1524f, -630f)))));
}

fn func_3() -> u32 {
    let var_0 = -2014f;
    let var_1 = !any(vec4<bool>(all(vec2<bool>(false, true)), false, _wgslsmith_f_op_f32(floor(var_0)) >= _wgslsmith_f_op_f32(-var_0), firstLeadingBit(u_input.b.x) > global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15923u ^ u_input.c.x, 14u)], 14u)]));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(max(u_input.c, vec3<u32>(68805u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], global2[_wgslsmith_index_u32(24900u, 14u)])), vec3<u32>(75929u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48236u, 14u)], 14u)], 14u)], 14u)], u_input.c.x)), u_input.c, ~max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), u_input.c.yy), 19u)], abs(global0[_wgslsmith_index_u32(4294967295u, 19u)]))), _wgslsmith_f_op_f32(-var_0), -15207i, vec3<i32>(_wgslsmith_sub_i32(14744i, ~countOneBits(27982i)), countOneBits(reverseBits(reverseBits(11118i))), -37685i), vec4<bool>(!(max(48252u, u_input.c.x) <= select(u_input.c.x, 56591u, true)), any(vec2<bool>(u_input.a <= u_input.d, false)), (all(vec2<bool>(var_1, var_1)) | (u_input.c.x <= global2[_wgslsmith_index_u32(1u, 14u)])) || var_1, true));
    var var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~global0[_wgslsmith_index_u32(var_2.a.x, 19u)], ~vec3<u32>(var_2.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], global2[_wgslsmith_index_u32(0u, 14u)])) >> (firstLeadingBit(_wgslsmith_mod_vec3_u32(var_2.a, var_2.a)) % vec3<u32>(32u)), ~(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], 0u, 9259u) ^ vec3<u32>(59878u, 1u, u_input.c.x)) | _wgslsmith_clamp_vec3_u32(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a.x, 14u)], 19u)], ~vec3<u32>(var_2.a.x, 0u, 4294967295u), u_input.c)) | u_input.c;
    global2 = array<u32, 14>();
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    global3 = -1i;
    global4 = 4294967295u;
    global4 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~(1u >> (u_input.c.x % 32u)), ~19567u, _wgslsmith_dot_vec3_u32(~u_input.c, vec3<u32>(1u, u_input.c.x, global2[_wgslsmith_index_u32(43626u, 14u)])), func_3()), firstTrailingBit(min(vec4<u32>(0u, 24388u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68807u, 14u)], 14u)], 58517u), vec4<u32>(global2[_wgslsmith_index_u32(14877u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], u_input.c.x, 1u)) ^ vec4<u32>(4294967295u, u_input.c.x, 54105u, u_input.c.x)));
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    return Struct_3(!select(!(!vec3<bool>(true, false, arg_0.x)), vec3<bool>(all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), all(vec4<bool>(true, arg_0.x, true, false)), any(vec3<bool>(true, arg_0.x, arg_0.x))), !vec3<bool>(true, arg_0.x, arg_0.x)), -global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(0u << (1u % 32u)), 14u)], 14u)] <= ~(max(-17649i, global1[_wgslsmith_index_u32(u_input.c.x, 14u)]) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 14u)], u_input.a, u_input.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16981u, 14u)], 14u)]), vec4<i32>(u_input.a, -8673i, global1[_wgslsmith_index_u32(34353u, 14u)], -3676i))), Struct_2(Struct_1(vec3<u32>(1u, ~global2[_wgslsmith_index_u32(53088u, 14u)], 4294967295u), _wgslsmith_f_op_f32(ceil(-1142f)), ~_wgslsmith_clamp_i32(4390i, u_input.b.x, -30416i), u_input.b, select(!vec4<bool>(arg_0.x, true, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, true))), vec3<bool>(~global2[_wgslsmith_index_u32(25474u, 14u)] > 0u, true, arg_0.x), firstTrailingBit(abs(vec4<u32>(56496u, 60459u, global2[_wgslsmith_index_u32(70944u, 14u)], global2[_wgslsmith_index_u32(60485u, 14u)]))), u_input.a, Struct_1(abs(~vec3<u32>(16297u, global2[_wgslsmith_index_u32(65881u, 14u)], 21041u)), _wgslsmith_f_op_f32(-2248f + -1286f), u_input.d, _wgslsmith_div_vec3_i32(u_input.b, u_input.b), !vec4<bool>(arg_0.x, false, false, true))), 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    global2 = array<u32, 14>();
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_0.c.e.b));
    let var_1 = ~_wgslsmith_mod_u32(firstLeadingBit(arg_1.c.e.a.x), ~(59671u | arg_0.c.e.a.x));
    let var_2 = -312f;
    let var_3 = arg_0.c.e;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1669f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1076f * 2285f), _wgslsmith_f_op_f32(-var_3.b)), var_3.e.x))) + -652f);
}

fn func_5(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(arg_2.a.x)), 14u)], 41228i);
    let var_1 = ~34400u;
    global4 = _wgslsmith_div_u32(4294967295u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4290u, 75870u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 12525u), vec4<u32>(4294967295u, u_input.c.x, var_1, var_1)))));
    let var_2 = func_2(select(!select(arg_2.e.wz, !arg_2.e.ww, select(vec2<bool>(true, arg_2.e.x), arg_2.e.xz, vec2<bool>(false, false))), vec2<bool>(false, any(select(vec3<bool>(true, false, arg_2.e.x), arg_2.e.zxw, arg_2.e.x))), true));
    let var_3 = select(arg_2.e.yx, select(!var_2.c.e.e.yx, !var_2.c.e.e.yx, arg_2.e.wy), select(!var_2.c.b.x, any(func_2(vec2<bool>(arg_2.e.x, true)).a.xz), true));
    return func_2(select(var_2.c.a.e.zw, var_3, !((-2147483647i << (u_input.c.x % 32u)) > u_input.d))).c.e;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    global4 = 4294967295u;
    return func_2(arg_2.e.xy).c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.c.zz, u_input.c.xz, vec2<bool>(true, true));
    var var_1 = func_6(Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -717f))) - -781f), 1i, u_input.b, select(vec4<bool>(select(true, false, true), true, false, all(vec4<bool>(false, true, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~(-vec3<i32>(_wgslsmith_add_i32(u_input.b.x, -1i), 1i, global1[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(u_input.c.x, 14u)]), 14u)])), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(vec3<u32>(var_0.x, u_input.c.x, var_0.x), -1000f, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], u_input.b, vec4<bool>(false, true, false, true)), vec3<bool>(false, false, false), vec4<u32>(u_input.c.x, u_input.c.x, 90370u, u_input.c.x), 0i, Struct_1(u_input.c, 1000f, 1i, u_input.b, vec4<bool>(false, false, true, true))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-747f - 676f))))), Struct_1(abs(global0[_wgslsmith_index_u32(var_0.x, 19u)] | vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 14u)], 14u)], 39u, u_input.c.x)), _wgslsmith_f_op_f32(func_4(func_2(vec2<bool>(true, false)), func_2(vec2<bool>(false, true)), vec4<bool>(false, true, true, true))), -1i, _wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, u_input.d, u_input.b.x), vec3<i32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(var_0.x, 14u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(vec2<bool>(false, false)).c.e.e))));
    global4 = 0u;
    var_0 = _wgslsmith_mult_vec2_u32(u_input.c.xz, ~firstTrailingBit(vec2<u32>(4294967295u, var_1.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + func_6(Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, var_0.x), -1000f, var_1.c, vec3<i32>(0i, -4164i, 59130i), var_1.e), var_1.d, Struct_1(global0[_wgslsmith_index_u32(70377u, 19u)], var_1.b, u_input.d, var_1.d, vec4<bool>(var_1.e.x, false, true, var_1.e.x))).b), 736f), var_1.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_div_f32(902f, _wgslsmith_div_f32(-1000f, var_1.b)), var_1.b, 755f)));
    global0 = array<vec3<u32>, 19>();
    let var_3 = _wgslsmith_clamp_u32(~min(~global2[_wgslsmith_index_u32(~4294967295u, 14u)], ~_wgslsmith_mod_u32(1u, u_input.c.x)), 19160u, ~countOneBits(global2[_wgslsmith_index_u32(var_0.x << ((u_input.c.x | global2[_wgslsmith_index_u32(var_0.x, 14u)]) % 32u), 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_1.b)) + _wgslsmith_f_op_f32(round(-111f))), var_1.b)) * _wgslsmith_div_f32(-840f, var_2.x)), _wgslsmith_f_op_vec3_f32(step(var_2.zxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(var_2.x * -1000f), -408f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, var_2.x, -1535f), var_2.wyz, var_1.e.wyy)))))), ~(~4294967295u), ~select(func_2(var_1.e.xw).c.a.d.zx, var_1.d.zz, var_0.x >= (var_1.a.x >> (4294967295u % 32u))), 82876u);
}

