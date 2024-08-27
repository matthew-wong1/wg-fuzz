struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(10880u, 10293u), vec2<u32>(21080u, 4294967295u), vec2<u32>(27025u, 1u), vec2<u32>(1552u, 54283u), vec2<u32>(4294967295u, 76683u), vec2<u32>(13273u, 45192u), vec2<u32>(1u, 41618u), vec2<u32>(4294967295u, 23049u), vec2<u32>(16175u, 7942u), vec2<u32>(0u, 1u), vec2<u32>(52261u, 1u), vec2<u32>(39714u, 72294u), vec2<u32>(4294967295u, 27058u), vec2<u32>(1u, 1u), vec2<u32>(1u, 16813u), vec2<u32>(1u, 27702u), vec2<u32>(33704u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(12192u, 1u), vec2<u32>(37637u, 4610u));

var<private> global1: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(2344f, -837f, -749f), vec3<f32>(-1000f, -1257f, 1514f), vec3<f32>(394f, -920f, -1281f), vec3<f32>(1488f, -353f, 276f), vec3<f32>(272f, -2310f, 1624f), vec3<f32>(853f, 686f, -1225f), vec3<f32>(-411f, 179f, -1053f), vec3<f32>(1077f, 397f, 1360f));

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(78271u, 44623u, 0u, 1u), vec4<u32>(0u, 4294967295u, 84792u, 4294967295u), vec4<u32>(59728u, 0u, 1u, 4294967295u), vec4<u32>(65048u, 4914u, 46098u, 0u), vec4<u32>(4760u, 1u, 4294967295u, 1u), vec4<u32>(45321u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 1721u, 4294967295u), vec4<u32>(8449u, 10420u, 72989u, 4294967295u), vec4<u32>(0u, 46796u, 33130u, 1u), vec4<u32>(32901u, 82160u, 45123u, 1490u), vec4<u32>(1u, 0u, 4294967295u, 19844u), vec4<u32>(0u, 5594u, 34169u, 0u), vec4<u32>(0u, 34055u, 1998u, 26291u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(1574u, 5973u, 88657u, 0u), vec4<u32>(8450u, 35557u, 1u, 6417u), vec4<u32>(3365u, 1u, 4294967295u, 79479u), vec4<u32>(19118u, 36723u, 1u, 2563u), vec4<u32>(4294967295u, 132516u, 1u, 5358u), vec4<u32>(45163u, 4294967295u, 2340u, 4294967295u), vec4<u32>(20716u, 43055u, 1623u, 9286u), vec4<u32>(1u, 0u, 59301u, 0u), vec4<u32>(70873u, 4294967295u, 37957u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 0u, 55437u, 0u), vec4<u32>(38749u, 1u, 4294967295u, 39439u), vec4<u32>(27106u, 1u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 15853u), vec4<u32>(81461u, 66703u, 4294967295u, 1u), vec4<u32>(24713u, 1u, 4294967295u, 0u), vec4<u32>(1u, 33967u, 4294967295u, 11878u), vec4<u32>(4294967295u, 1421u, 4294967295u, 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-919f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_2.a))) * vec2<f32>(1f, 1f));
    var var_2 = min(u_input.d.x, 65092i);
    let var_3 = -arg_2.c.x;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -825f), -1000f, vec2<i32>(i32(-1i) * -24795i, 1i), !arg_1.d);
    return arg_2.d.x;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = func_1(Struct_3(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(45380u, 4294967295u, 22515u, u_input.c.x)), select(~vec4<u32>(u_input.c.x, 0u, u_input.b, 86815u), firstTrailingBit(global2[_wgslsmith_index_u32(1u, 32u)]), func_1(Struct_3(vec4<u32>(u_input.b, u_input.c.x, 64527u, 74403u), vec3<i32>(u_input.d.x, -2147483647i, 2147483647i)), Struct_1(-987f, -370f, u_input.a, vec3<bool>(true, false, true)), Struct_1(396f, 1000f, vec2<i32>(-2147483647i, u_input.d.x), vec3<bool>(true, true, true)))), vec4<u32>(38743u, 0u, countOneBits(u_input.c.x), _wgslsmith_mult_u32(u_input.c.x, u_input.b))), ~(-firstLeadingBit(vec3<i32>(u_input.d.x, -17393i, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-860f * -119f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-114f))), arg_0.yy, select(vec3<bool>(true, true, true), vec3<bool>(true, func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.b, 32u)], vec3<i32>(2147483647i, 6755i, 22293i)), Struct_1(152f, -197f, u_input.d.xy, vec3<bool>(true, false, false)), Struct_1(-221f, 237f, u_input.d.xz, vec3<bool>(false, false, true))), false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true))), Struct_1(825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(302f, 482f)) + 554f)), ~u_input.a, vec3<bool>(true, true, true)));
    var var_1 = vec4<bool>(true, true, false, u_input.c.x >= ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, u_input.b), 0u >> (u_input.c.x % 32u)));
    var var_2 = true;
    var_2 = true;
    let var_3 = Struct_4(u_input.c.x, select(vec4<bool>(false, false, var_0, var_0), !select(vec4<bool>(var_1.x, true, var_0, var_0), select(vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_0, false, false, true), true), func_1(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 32u)], arg_0), Struct_1(1245f, 1559f, arg_0.yy, vec3<bool>(true, var_0, false)), Struct_1(704f, -1533f, arg_0.zx, var_1.xyz))), !(!select(vec4<bool>(false, true, var_1.x, var_0), vec4<bool>(var_1.x, true, var_0, false), var_0))), !(!(_wgslsmith_f_op_f32(round(321f)) > _wgslsmith_f_op_f32(-982f + 1915f))), var_0);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -625f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1524f * 905f)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global0 = array<vec2<u32>, 20>();
    global1 = array<vec3<f32>, 8>();
    var var_0 = Struct_2(vec4<u32>(max(u_input.c.x & u_input.c.x, ~u_input.c.x), 4294967295u, u_input.c.x, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.c.x)), ~vec2<u32>(u_input.c.x, 42037u))) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), global2[_wgslsmith_index_u32(1u, 32u)]) | reverseBits(vec4<u32>(u_input.c.x, 124799u, u_input.b, u_input.b))) % vec4<u32>(32u)));
    var var_1 = !all(vec2<bool>(true, all(select(vec4<bool>(true, false, arg_1.d.x, true), vec4<bool>(false, arg_1.d.x, arg_1.d.x, true), arg_1.d.x))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(u_input.d)), 1000f)) - arg_1.a)), arg_0.x, -1012f, arg_1.a);
    return arg_1.d.x;
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.d.zy;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_3(select(~(~u_input.d), select(vec3<i32>(u_input.a.x, u_input.d.x, 2147483647i), reverseBits(vec3<i32>(u_input.a.x, 2147483647i, -48207i)), !arg_0.x), -var_0.x >= ~u_input.d.x))), -1991f);
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, 32947u, 1u), ~global2[_wgslsmith_index_u32(u_input.c.x, 32u)] | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 17579u, u_input.b, 4294967295u), global2[_wgslsmith_index_u32(86503u, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), abs(global2[_wgslsmith_index_u32(u_input.b, 32u)]) | select(vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.b), vec4<u32>(1u, u_input.c.x, 4792u, u_input.b), true)) | global2[_wgslsmith_index_u32(8607u, 32u)], _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~reverseBits(8703u), u_input.b, 16636u), vec4<u32>(~(~29230u), 22211u, min(u_input.c.x, ~u_input.c.x), u_input.b | _wgslsmith_mult_u32(1u, u_input.b))));
    let var_3 = reverseBits(var_2.wyz);
    var var_4 = -2569f;
    return Struct_2(countOneBits(vec4<u32>(select(~var_3.x, var_3.x, true), _wgslsmith_add_u32(var_2.x, 44844u | var_2.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.b, u_input.c.x, var_3.x), var_2), 15421u)));
}

fn func_5(arg_0: Struct_2) -> i32 {
    var var_0 = !(!vec4<bool>(!func_2(vec2<f32>(642f, 197f), Struct_1(1726f, -1000f, u_input.a, vec3<bool>(false, true, true))), true, true, true));
    let var_1 = arg_0;
    let var_2 = ~select(~(~vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, 4294967295u)), max(vec4<u32>(firstTrailingBit(u_input.c.x), select(arg_0.a.x, var_1.a.x, var_0.x), arg_0.a.x, _wgslsmith_div_u32(1u, arg_0.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 0u), 1516u), 32u)]), select(!vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, !var_0.x, true, true), var_0.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(ceil(-223f)), -358f) + vec3<f32>(1000f, -590f, _wgslsmith_f_op_f32(244f - 215f))))));
    let var_4 = 2003f;
    return _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a.x, ~u_input.d.x), _wgslsmith_sub_vec2_i32(u_input.a, u_input.d.yx) & abs(u_input.d.yy), vec2<i32>(reverseBits(-30808i), u_input.a.x)), ~vec2<i32>(0i, _wgslsmith_clamp_i32(u_input.d.x, countOneBits(-30347i), max(1i, u_input.d.x))));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(~(_wgslsmith_add_u32(~select(0u, arg_0, false), 11283u) | 0u), 8u)];
    var var_1 = Struct_3(vec4<u32>(firstLeadingBit(4294967295u), 4294967295u, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(3920u, 1u)), ~0u), ~arg_0), vec3<i32>(~arg_1, ~func_5(func_4(vec4<bool>(false, true, false, true))), -1i));
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(exp2(arg_2));
    var var_4 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    return Struct_4(var_4.x, vec4<bool>(~arg_0 != func_4(vec4<bool>(true, true, true, true)).a.x, arg_1 == 0i, !(abs(arg_0) <= 2483u), !(_wgslsmith_f_op_f32(-arg_2) <= var_0.x)), all(vec3<bool>(true, true, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.b << (~(~1u) % 32u), func_5(func_4(vec4<bool>(false, any(vec4<bool>(false, false, false, false)), func_1(Struct_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec3<i32>(u_input.d.x, 26447i, u_input.d.x)), Struct_1(-737f, -766f, u_input.d.xx, vec3<bool>(true, false, false)), Struct_1(596f, -1414f, u_input.d.zx, vec3<bool>(true, true, true))), func_2(vec2<f32>(305f, -392f), Struct_1(-424f, -244f, u_input.a, vec3<bool>(true, true, true)))))), -744f);
    var_0 = Struct_4(~22910u, vec4<bool>(false, any(!var_0.b.wzz), var_0.d, !var_0.b.x), false, !(~_wgslsmith_sub_u32(1u, 1u) == func_6(4294967295u, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-20170i, -2147483647i, u_input.a.x)), -612f).a));
    global2 = array<vec4<u32>, 32>();
    var var_1 = var_0.b.yy;
    let var_2 = Struct_4(var_0.a, select(var_0.b, func_6(reverseBits(var_0.a >> (50605u % 32u)), 2147483647i, _wgslsmith_f_op_f32(trunc(1533f))).b, select(true, var_0.d, all(vec2<bool>(true, true)))), var_1.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~select(vec3<u32>(u_input.c.x, u_input.c.x, 32923u), vec3<u32>(u_input.c.x, var_2.a, 4294967295u), true) | _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u << (0u % 32u), 1u, func_4(vec4<bool>(false, var_0.c, var_1.x, true)).a.x), ~vec3<u32>(0u, u_input.b, u_input.c.x), vec3<u32>(var_0.a & 4294967295u, u_input.b & 1u, 45862u ^ var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1890f, -1000f)) - _wgslsmith_f_op_f32(max(1786f, -643f))))), -609f);
}

