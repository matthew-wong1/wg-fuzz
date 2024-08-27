struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(1i, 31297i, -28166i), vec3<i32>(-21177i, -9115i, 3405i), vec3<i32>(0i, 12054i, 1i), vec3<i32>(-3277i, 25231i, 0i), vec3<i32>(2147483647i, 0i, 10404i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(-33491i, 58213i, 79860i), vec3<i32>(11864i, 0i, -1732i), vec3<i32>(8343i, 7931i, -18479i), vec3<i32>(-7783i, 1i, -28812i), vec3<i32>(-9080i, 24914i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -7457i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_5(arg_2.b.b.wz, !arg_0.xy, firstLeadingBit(1u), var_0.b.e, arg_2);
    var var_2 = _wgslsmith_f_op_f32(1024f + -1930f);
    global2 = array<vec3<i32>, 15>();
    global2 = array<vec3<i32>, 15>();
    return arg_1;
}

fn func_3() -> u32 {
    let var_0 = false;
    let var_1 = Struct_3(_wgslsmith_div_u32(~(~56308u), ~67781u), vec4<f32>(-819f, 1078f, _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(162f - _wgslsmith_f_op_f32(f32(-1f) * -2125f))), func_1(select(vec3<bool>(!var_0, false, -2147483647i < u_input.d.x), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, false), var_0), select(func_1(vec3<bool>(var_0, var_0, true), Struct_2(u_input.c.x, Struct_1(vec3<bool>(var_0, var_0, var_0), vec4<f32>(-1000f, -1222f, 2795f, 1443f), u_input.b, true, global1.x)), Struct_2(-1i, Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1205f, 562f, 532f, -743f), u_input.c.wwz, var_0, 1u)), -477f).b.a, select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, var_0), var_0), vec3<bool>(var_0, var_0, false))), func_1(vec3<bool>(any(vec2<bool>(true, var_0)), true, u_input.c.x >= -23409i), func_1(!vec3<bool>(var_0, true, false), Struct_2(u_input.d.x, Struct_1(vec3<bool>(var_0, false, var_0), vec4<f32>(632f, -1066f, 1665f, 927f), vec3<i32>(u_input.b.x, 14925i, 383i), false, 1u)), Struct_2(15463i, Struct_1(vec3<bool>(var_0, false, var_0), vec4<f32>(-1574f, -2826f, 1283f, -1535f), vec3<i32>(0i, u_input.c.x, u_input.c.x), var_0, 68275u)), _wgslsmith_f_op_f32(step(-2663f, 1531f))), Struct_2(-2147483647i, func_1(vec3<bool>(false, var_0, var_0), Struct_2(u_input.d.x, Struct_1(vec3<bool>(false, var_0, var_0), vec4<f32>(-604f, -984f, 462f, 1007f), vec3<i32>(u_input.c.x, u_input.d.x, u_input.b.x), var_0, 0u)), Struct_2(u_input.c.x, Struct_1(vec3<bool>(false, true, var_0), vec4<f32>(1310f, 216f, 2112f, 1046f), vec3<i32>(u_input.c.x, -2147483647i, u_input.b.x), true, u_input.a)), -1135f).b), -429f), func_1(select(vec3<bool>(false, true, true), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, true), var_0), vec3<bool>(false, var_0, var_0)), Struct_2(0i, func_1(vec3<bool>(false, var_0, false), Struct_2(u_input.d.x, Struct_1(vec3<bool>(true, true, false), vec4<f32>(-2154f, 1344f, -146f, 843f), global2[_wgslsmith_index_u32(u_input.a, 15u)], true, 0u)), Struct_2(1i, Struct_1(vec3<bool>(false, var_0, var_0), vec4<f32>(2034f, -774f, -135f, -389f), vec3<i32>(2147483647i, 0i, 1i), false, 4294967295u)), 1078f).b), Struct_2(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(15448u, 15u)], global2[_wgslsmith_index_u32(global1.x, 15u)]), func_1(vec3<bool>(false, true, false), Struct_2(u_input.c.x, Struct_1(vec3<bool>(false, true, true), vec4<f32>(625f, 477f, 304f, -363f), u_input.c.yxz, true, 24044u)), Struct_2(-2147483647i, Struct_1(vec3<bool>(true, var_0, true), vec4<f32>(-293f, 2463f, 1445f, 648f), global2[_wgslsmith_index_u32(u_input.a, 15u)], var_0, u_input.a)), -434f).b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1178f)))), _wgslsmith_f_op_f32(-434f * 1084f)).b, _wgslsmith_dot_vec4_u32(max(~min(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, global1.x, 45612u, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 30872u, 4864u, global1.x), vec4<u32>(global1.x, 19163u, 27049u, 62627u))), _wgslsmith_mult_vec4_u32(vec4<u32>(~48905u, 1u, 64451u << (u_input.a % 32u), ~0u), max(vec4<u32>(61237u, 0u, global1.x, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(6978u, global1.x, 0u, 518u), vec4<u32>(u_input.a, u_input.a, 1246u, 42360u))))));
    let var_2 = 38224u;
    var var_3 = vec4<i32>(-_wgslsmith_add_i32(2147483647i, var_1.c.c.x), var_1.c.c.x, 1i, -abs(u_input.c.x)) & select(vec4<i32>(reverseBits(_wgslsmith_div_i32(var_1.c.c.x, var_1.c.c.x)), 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.yx, u_input.d), -2147483647i, 43130i), u_input.d.x & -12057i), select(u_input.c, reverseBits(u_input.c) >> (~vec4<u32>(u_input.a, var_1.c.e, 56836u, var_1.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_1.c.b.x) <= _wgslsmith_f_op_f32(-var_1.b.x)), true);
    var var_4 = Struct_1(var_1.c.a, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-982f)) + _wgslsmith_f_op_f32(-var_1.c.b.x)))), -1074f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), var_1.b.x)))), -1111f), abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.b.x, var_1.c.c.x & var_3.x), vec3<i32>(0i, _wgslsmith_sub_i32(-1i, 1i), var_1.c.c.x))), _wgslsmith_clamp_i32((i32(-1i) * -28168i) << (~u_input.a % 32u), var_3.x, abs(58542i)) >= -var_1.c.c.x, ~4294967295u);
    return u_input.a | u_input.a;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(-2147483647i, Struct_1(arg_0.e.b.a, _wgslsmith_f_op_vec4_f32(func_1(!vec3<bool>(arg_2, false, false), func_1(arg_0.e.b.a, arg_1.b, arg_1.b, -1032f), Struct_2(u_input.c.x, Struct_1(vec3<bool>(arg_2, arg_1.e.x, arg_1.d.d), arg_0.e.b.b, vec3<i32>(23452i, 0i, -42637i), false, arg_0.c)), 707f).b.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.e.b.b + arg_0.e.b.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.x, arg_1.b.b.b.x, arg_0.a.x, arg_0.a.x) * vec4<f32>(arg_1.b.b.b.x, arg_1.d.b.x, -495f, 277f)))), vec3<i32>(countOneBits(arg_1.b.b.c.x), max(1i, i32(-1i) * -2147483647i), func_1(select(vec3<bool>(arg_2, arg_2, arg_0.e.b.a.x), vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, false, false)), Struct_2(-1i, arg_1.b.b), func_1(vec3<bool>(arg_0.b.x, true, false), arg_1.b, arg_1.b, 732f), arg_0.a.x).a), arg_0.b.x, select(~118683u, 6847u, false) | reverseBits(min(global1.x, 4294967295u))));
    var var_1 = Struct_3(firstLeadingBit(~_wgslsmith_mult_u32(countOneBits(4294967295u), func_3())), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.b.b.x), arg_1.d.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x * arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -279f)), Struct_1(!(!vec3<bool>(true, true, arg_1.b.b.a.x)), _wgslsmith_f_op_vec4_f32(-arg_1.d.b), firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.xxw, vec3<u32>(var_0.b.e, global1.x, arg_1.d.e)), 15u)]) | arg_0.e.b.c, !all(!arg_0.b), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.zw, global1.xx), _wgslsmith_mult_u32(u_input.a, arg_0.c)) << (~(~1u) % 32u)), abs(var_0.b.e));
    var var_2 = func_1(select(vec3<bool>(any(vec4<bool>(true, var_1.c.a.x, true, true)), arg_1.b.b.a.x, arg_1.e.x), !vec3<bool>(true, false, all(vec4<bool>(false, false, var_0.b.d, arg_1.b.b.d))), !arg_0.e.b.a), func_1(!vec3<bool>(arg_2, true, true), Struct_2(~(~arg_1.a.x), var_0.b), Struct_2(2147483647i, Struct_1(!var_0.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.x, var_0.b.b.x, -442f, 1390f) - vec4<f32>(996f, arg_0.e.b.b.x, var_1.b.x, 1700f)), _wgslsmith_clamp_vec3_i32(var_1.c.c, vec3<i32>(13639i, 45670i, arg_0.e.b.c.x), vec3<i32>(arg_0.e.a, arg_0.e.b.c.x, u_input.c.x)), func_1(vec3<bool>(var_0.b.d, true, arg_0.e.b.a.x), Struct_2(var_1.c.c.x, Struct_1(var_1.c.a, vec4<f32>(-686f, -186f, var_0.b.b.x, var_0.b.b.x), var_1.c.c, true, arg_1.d.e)), var_0, var_0.b.b.x).b.a.x, firstTrailingBit(13767u))), 278f), Struct_2(arg_0.e.b.c.x, var_1.c), _wgslsmith_div_f32(arg_0.e.b.b.x, arg_1.b.b.b.x)).b;
    var_1 = Struct_3(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global1.x, 69367u, ~_wgslsmith_mod_u32(arg_1.d.e, arg_0.c)), ~var_0.b.e), _wgslsmith_f_op_vec4_f32(-var_2.b), func_1(!var_0.b.a, var_0, arg_0.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.b.x)))).b, firstTrailingBit(func_3()));
    var_1 = Struct_3((reverseBits(min(u_input.a, 0u)) ^ countOneBits(0u)) >> (4294967295u % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(396f, _wgslsmith_f_op_f32(ceil(arg_1.b.b.b.x)), -559f, var_2.b.x)))), func_1(!func_1(vec3<bool>(var_0.b.a.x, false, false), func_1(arg_0.e.b.a, Struct_2(var_1.c.c.x, arg_0.e.b), arg_1.b, -242f), func_1(arg_0.e.b.a, Struct_2(0i, arg_0.e.b), Struct_2(-9132i, Struct_1(var_0.b.a, vec4<f32>(var_0.b.b.x, -1000f, var_0.b.b.x, arg_0.e.b.b.x), var_2.c, var_0.b.a.x, 52734u)), -2244f), _wgslsmith_f_op_f32(var_0.b.b.x - -828f)).b.a, arg_0.e, func_1(func_1(func_1(vec3<bool>(var_1.c.a.x, true, arg_1.d.a.x), var_0, Struct_2(0i, var_0.b), 727f).b.a, var_0, Struct_2(1i, Struct_1(vec3<bool>(arg_2, arg_1.e.x, true), var_2.b, global2[_wgslsmith_index_u32(global1.x, 15u)], var_1.c.d, arg_0.d)), 221f).b.a, arg_1.b, Struct_2(countOneBits(-18178i), func_1(var_0.b.a, arg_0.e, var_0, -1323f).b), _wgslsmith_f_op_f32(1567f - 1132f)), var_1.c.b.x).b, ~reverseBits(var_1.a));
    return func_1(select(select(arg_1.b.b.a, !select(vec3<bool>(false, var_2.a.x, arg_1.e.x), var_1.c.a, var_1.c.d), 1000f < _wgslsmith_f_op_f32(-var_1.c.b.x)), vec3<bool>(true, true, true), arg_0.e.b.a), Struct_2(-12552i >> (0u % 32u), Struct_1(func_1(!var_1.c.a, func_1(vec3<bool>(arg_2, false, false), Struct_2(-2147483647i, arg_1.b.b), Struct_2(5915i, Struct_1(vec3<bool>(var_1.c.a.x, var_2.a.x, false), vec4<f32>(483f, -404f, arg_1.b.b.b.x, 1600f), var_1.c.c, true, var_1.a)), -1784f), Struct_2(arg_1.d.c.x, var_1.c), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)).b.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1064f, 1420f, arg_1.d.b.x, var_0.b.b.x), vec4<f32>(-1041f, arg_1.d.b.x, -1000f, var_0.b.b.x)))), func_1(!vec3<bool>(var_0.b.a.x, var_1.c.d, arg_0.e.b.a.x), Struct_2(-55973i, var_1.c), arg_1.b, arg_1.b.b.b.x).b.c, var_2.d, arg_0.e.b.e)), Struct_2(-arg_0.e.a, Struct_1(arg_1.e, _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.b.x, arg_0.a.x, -1737f, 2428f), vec4<f32>(var_2.b.x, 1000f, var_0.b.b.x, arg_0.e.b.b.x)), vec3<i32>(_wgslsmith_sub_i32(56305i, arg_1.b.b.c.x), -1648i, 1i ^ arg_0.e.a), !(!arg_0.b.x), u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b.b.x, 145f))), -1000f))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f + 733f) * -255f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1916f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2310f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1764f))));
    var var_1 = Struct_4(u_input.c, Struct_2(-1539i, func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<bool>(false, true), global1.x, _wgslsmith_sub_u32(49947u, global1.x), Struct_2(u_input.c.x, Struct_1(vec3<bool>(false, true, true), vec4<f32>(var_0.x, var_0.x, var_0.x, -703f), global2[_wgslsmith_index_u32(4294967295u, 15u)], false, 0u))), Struct_4(-u_input.c, func_1(vec3<bool>(true, false, true), Struct_2(u_input.d.x, Struct_1(vec3<bool>(true, true, false), vec4<f32>(-181f, var_0.x, var_0.x, 132f), vec3<i32>(u_input.c.x, 1i, u_input.c.x), true, global1.x)), Struct_2(u_input.c.x, Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1281f, 553f, var_0.x, -676f), vec3<i32>(22493i, 1i, -2147483647i), false, 15169u)), var_0.x), ~0u, Struct_1(vec3<bool>(true, true, true), vec4<f32>(var_0.x, 996f, -864f, var_0.x), vec3<i32>(-2147483647i, u_input.d.x, u_input.c.x), false, global1.x), vec3<bool>(true, true, true)), u_input.c.x > (u_input.b.x >> (32847u % 32u)))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, u_input.a), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, global1.x), 0u), global1.x), func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 717f))), vec2<bool>(all(vec3<bool>(false, true, true)), true), 0u, max(global1.x, global1.x), Struct_2(-28711i, func_2(Struct_5(vec2<f32>(-1515f, var_0.x), vec2<bool>(false, false), u_input.a, 4294967295u, Struct_2(0i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(var_0.x, -353f, 298f, 356f), global2[_wgslsmith_index_u32(0u, 15u)], false, 1u))), Struct_4(u_input.c, Struct_2(14682i, Struct_1(vec3<bool>(true, false, false), vec4<f32>(172f, var_0.x, var_0.x, -2683f), vec3<i32>(u_input.d.x, u_input.b.x, u_input.d.x), true, 40613u)), u_input.a, Struct_1(vec3<bool>(true, true, true), vec4<f32>(var_0.x, 815f, var_0.x, -626f), global2[_wgslsmith_index_u32(u_input.a, 15u)], true, global1.x), vec3<bool>(false, false, false)), true))), Struct_4(firstLeadingBit(u_input.c) << (~vec4<u32>(u_input.a, global1.x, u_input.a, u_input.a) % vec4<u32>(32u)), func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), Struct_2(0i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(var_0.x, 737f, var_0.x, -618f), vec3<i32>(-20925i, 53795i, u_input.d.x), false, 0u)), func_1(vec3<bool>(false, false, true), Struct_2(8879i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1284f, var_0.x, -1621f, var_0.x), vec3<i32>(u_input.d.x, 50197i, 6291i), true, global1.x)), Struct_2(12195i, Struct_1(vec3<bool>(true, true, false), vec4<f32>(var_0.x, 306f, var_0.x, -332f), u_input.c.zwy, true, 0u)), -248f), 944f), 1u, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1050f, -385f, -689f, var_0.x)), u_input.b, all(vec2<bool>(true, false)), countOneBits(global1.x)), vec3<bool>(true, true, true)), !select(true, var_0.x >= -460f, all(vec3<bool>(false, true, true)))), vec3<bool>(any(func_1(vec3<bool>(true, true, true), Struct_2(-9986i, Struct_1(vec3<bool>(true, false, true), vec4<f32>(2688f, var_0.x, -954f, var_0.x), vec3<i32>(u_input.b.x, 42521i, 2147483647i), true, 1u)), func_1(vec3<bool>(true, false, true), Struct_2(u_input.d.x, Struct_1(vec3<bool>(false, true, true), vec4<f32>(-1000f, var_0.x, var_0.x, var_0.x), u_input.c.zxw, false, 23800u)), Struct_2(-1i, Struct_1(vec3<bool>(true, false, false), vec4<f32>(736f, var_0.x, -340f, var_0.x), vec3<i32>(u_input.b.x, u_input.d.x, 2147483647i), false, u_input.a)), var_0.x), var_0.x).b.a), true, max(1u, 4294967295u | global1.x) == ~120563u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -649f);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(431f, var_0.x))))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(859f + -481f) * 441f)));
    var var_3 = _wgslsmith_div_u32(global1.x, _wgslsmith_dot_vec3_u32(global1.ywy, ~max(_wgslsmith_mod_vec3_u32(global1.yxw, vec3<u32>(42597u, 4902u, u_input.a)), vec3<u32>(u_input.a, var_1.d.e, global1.x))));
    var var_4 = Struct_4(vec4<i32>(func_1(var_1.b.b.a, var_1.b, var_1.b, var_0.x).a << ((~u_input.a ^ countOneBits(1u)) % 32u), u_input.d.x, -1i, firstTrailingBit(16995i)), Struct_2(-2147483647i, var_1.d), 1u, func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_2.yx))), var_1.b.b.a.xx, reverseBits(global1.x), min(4294967295u, global1.x), Struct_2(u_input.b.x, Struct_1(var_1.b.b.a, var_1.d.b, var_1.d.c, var_1.d.d, u_input.a))), Struct_4(vec4<i32>(u_input.d.x, 2147483647i, -2147483647i, u_input.d.x) | var_1.a, func_1(vec3<bool>(true, false, var_1.b.b.a.x), func_1(vec3<bool>(var_1.e.x, true, var_1.b.b.d), Struct_2(var_1.a.x, var_1.b.b), var_1.b, var_2.x), func_1(vec3<bool>(true, true, false), Struct_2(-38597i, Struct_1(var_1.e, var_1.b.b.b, global2[_wgslsmith_index_u32(20343u, 15u)], var_1.b.b.a.x, u_input.a)), var_1.b, var_2.x), _wgslsmith_f_op_f32(2204f * var_2.x)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 6426u, var_1.b.b.e), vec4<u32>(0u, u_input.a, 0u, 48480u)), 27540u, true), func_1(vec3<bool>(var_1.d.d, var_1.b.b.d, false), func_1(vec3<bool>(true, true, true), Struct_2(var_1.d.c.x, var_1.d), Struct_2(u_input.c.x, var_1.b.b), var_1.b.b.b.x), var_1.b, var_2.x).b, var_1.e), var_1.b.b.a.x), vec3<bool>(!var_1.d.d, func_1(func_2(Struct_5(var_0.zy, var_1.b.b.a.zz, 0u, u_input.a, var_1.b), Struct_4(var_1.a, var_1.b, 46072u, var_1.d, vec3<bool>(false, var_1.b.b.a.x, false)), var_1.d.a.x | var_1.d.a.x).a, var_1.b, func_1(vec3<bool>(var_1.e.x, var_1.e.x, false), var_1.b, func_1(vec3<bool>(var_1.d.d, var_1.d.d, var_1.d.d), Struct_2(9595i, Struct_1(vec3<bool>(var_1.e.x, true, false), vec4<f32>(-1635f, var_2.x, var_1.b.b.b.x, 1170f), global2[_wgslsmith_index_u32(u_input.a, 15u)], false, 51934u)), var_1.b, 904f), var_2.x), _wgslsmith_f_op_f32(-var_0.x)).b.d, func_1(!vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), func_1(func_2(Struct_5(vec2<f32>(var_0.x, -570f), vec2<bool>(var_1.b.b.d, false), u_input.a, 0u, var_1.b), Struct_4(var_1.a, Struct_2(u_input.d.x, Struct_1(vec3<bool>(false, false, var_1.d.a.x), var_1.d.b, vec3<i32>(-52140i, u_input.c.x, -35656i), var_1.d.d, global1.x)), 4294967295u, var_1.b.b, vec3<bool>(var_1.b.b.a.x, false, var_1.b.b.a.x)), false).a, var_1.b, func_1(vec3<bool>(var_1.e.x, true, var_1.b.b.d), var_1.b, Struct_2(1i, var_1.d), -1000f), var_0.x), Struct_2(_wgslsmith_sub_i32(-16789i, 17959i), var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.b.x + var_0.x))).b.d));
    let var_5 = firstLeadingBit(~_wgslsmith_dot_vec4_i32(var_1.a >> (vec4<u32>(0u, u_input.a, 0u, global1.x) % vec4<u32>(32u)), -u_input.c)) <= var_1.a.x;
    let var_6 = Struct_3(_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), global1.yy), ~(~44053u))), var_4.b.b.b, var_1.d, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-979f - 1148f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_vec2_f32(abs(var_4.b.b.b.yw))), vec3<i32>(0i, u_input.c.x, ~1i));
}

