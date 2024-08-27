struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(0u, 16120u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(81561u, 4294967295u, 58198u), vec3<u32>(1u, 23624u, 9532u), vec3<u32>(65236u, 58700u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 50348u), vec3<u32>(12300u, 0u, 4294967295u), vec3<u32>(4294967295u, 39179u, 63239u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 0u, 90823u), vec3<u32>(0u, 53230u, 4294967295u), vec3<u32>(0u, 870u, 1u), vec3<u32>(1u, 38308u, 4294967295u), vec3<u32>(18331u, 21461u, 32947u));

var<private> global2: array<u32, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<u32> {
    global1 = array<vec3<u32>, 14>();
    global2 = array<u32, 2>();
    var var_0 = Struct_3(Struct_1(select(vec2<i32>(i32(-1i) * -51195i, global3.a.x ^ 1i), vec2<i32>(-u_input.a.x, -47256i), vec2<bool>(false, true)), _wgslsmith_f_op_f32(floor(1120f)), vec3<bool>(select(global3.c.x, false, 70442i > u_input.a.x), false, true), vec4<u32>(global2[_wgslsmith_index_u32(global3.d.x, 2u)] & 42915u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 2u)], ~global3.d.x, 37564u << (global2[_wgslsmith_index_u32(4294967295u, 2u)] % 32u)) ^ ~global3.d), vec2<bool>(false, global3.c.x));
    var var_1 = Struct_2(Struct_1(abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(45844i, 0i), abs(vec2<i32>(2147483647i, u_input.a.x)), countOneBits(vec2<i32>(-1i, u_input.b)))), 772f, select(select(select(vec3<bool>(false, false, true), global3.c, global3.c), var_0.a.c, select(false, false, global3.c.x)), vec3<bool>(select(false, global3.c.x, var_0.b.x), global3.c.x, all(vec3<bool>(global3.c.x, true, true))), select(select(var_0.a.c, var_0.a.c, global3.c.x), vec3<bool>(false, false, var_0.b.x), !var_0.a.c.x)), _wgslsmith_div_vec4_u32(var_0.a.d, reverseBits(~global3.d))), min(vec4<i32>(global3.a.x, ~829i, firstLeadingBit(0i | u_input.b), var_0.a.a.x << (1074u % 32u)), ~(-vec4<i32>(42746i, u_input.a.x, u_input.b, var_0.a.a.x))));
    global0 = array<Struct_1, 30>();
    return ~_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(var_1.a.d.zxz, vec3<u32>(37236u, 4294967295u, var_1.a.d.x)), _wgslsmith_add_vec3_u32(var_1.a.d.yyz, vec3<u32>(var_1.a.d.x, var_1.a.d.x, 4294967295u)), vec3<u32>(30336u, 27637u, 4294967295u)), vec3<u32>(596u, _wgslsmith_sub_u32(4294967295u & var_0.a.d.x, 4294967295u ^ var_1.a.d.x), ~global3.d.x));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(-1i, _wgslsmith_clamp_i32(-1i, 1i, -1i))) >> ((abs(58117u) ^ (33487u << (~(arg_2.a.d.x ^ arg_0.a.d.x) % 32u))) % 32u);
    var var_1 = _wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_2.a.d.x, 2u)] << (arg_0.a.d.x % 32u), _wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.a.d.x, 2u)], 14u)], ~arg_2.a.d.yyy) | ~0u) & global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(43960u, abs(12503u))) & arg_3.a.d.x, 2u)];
    var var_2 = arg_1.zz;
    var var_3 = Struct_2(arg_3.a, u_input.a);
    let var_4 = _wgslsmith_mult_vec3_u32(~vec3<u32>(max(global3.d.x ^ global3.d.x, global3.d.x), 12658u, var_3.a.d.x), select(abs(func_3()), arg_0.a.d.yxz, vec3<bool>(true, _wgslsmith_f_op_f32(-1117f - var_3.a.b) != arg_0.a.b, true)));
    return arg_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    return false;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b - 735f)) != 1f, false, all(!global3.c), any(select(!vec4<bool>(false, global3.c.x, false, global3.c.x), !vec4<bool>(global3.c.x, false, true, global3.c.x), vec4<bool>(true, global3.c.x, global3.c.x, true)))), !vec4<bool>(func_4(vec2<f32>(-841f, 448f), func_2(Struct_3(global0[_wgslsmith_index_u32(global3.d.x, 30u)], vec2<bool>(true, true)), vec3<f32>(global3.b, -2194f, -1536f), Struct_3(global0[_wgslsmith_index_u32(1u, 30u)], vec2<bool>(global3.c.x, global3.c.x)), Struct_3(global0[_wgslsmith_index_u32(36110u, 30u)], vec2<bool>(true, global3.c.x)))), !global3.c.x, global3.b >= _wgslsmith_f_op_f32(-global3.b), true), !(!vec4<bool>(1000f != global3.b, !global3.c.x, true, global3.b >= -502f)));
    var var_1 = func_2(Struct_3(Struct_1(-global3.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b))), !var_0.xwx, ~(~global3.d)), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 180f, -563f) - vec3<f32>(-702f, global3.b, global3.b)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.b, global3.b, global3.b), vec3<f32>(global3.b, -219f, global3.b)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.b, -640f, 362f))), vec3<bool>(true, var_0.x && false, all(global3.c.zy))))), Struct_3(Struct_1(reverseBits(vec2<i32>(0i, -36814i)), func_2(func_2(Struct_3(Struct_1(vec2<i32>(global3.a.x, 0i), global3.b, global3.c, vec4<u32>(arg_0, global3.d.x, global3.d.x, 0u)), global3.c.xx), vec3<f32>(global3.b, global3.b, 636f), Struct_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(234u, 2u)], 30u)], global3.c.xy), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 30u)], global3.c.yz)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, global3.b, -126f) * vec3<f32>(global3.b, global3.b, global3.b)), Struct_3(Struct_1(vec2<i32>(0i, -2147483647i), -588f, var_0.wxw, global3.d), vec2<bool>(false, var_0.x)), Struct_3(Struct_1(vec2<i32>(0i, u_input.a.x), global3.b, var_0.yzw, global3.d), vec2<bool>(var_0.x, global3.c.x))).a.b, vec3<bool>(all(global3.c.zx), false, 55881i >= global3.a.x), global3.d), vec2<bool>(!any(var_0), any(vec4<bool>(false, false, var_0.x, global3.c.x)) || false)), Struct_3(global0[_wgslsmith_index_u32(25002u, 30u)], func_2(Struct_3(func_2(Struct_3(global0[_wgslsmith_index_u32(arg_0, 30u)], global3.c.yy), vec3<f32>(-366f, -1375f, global3.b), Struct_3(Struct_1(vec2<i32>(global3.a.x, -30953i), -818f, vec3<bool>(var_0.x, global3.c.x, false), global3.d), var_0.yx), Struct_3(Struct_1(vec2<i32>(-52948i, 1i), -681f, vec3<bool>(var_0.x, global3.c.x, false), global3.d), vec2<bool>(global3.c.x, var_0.x))).a, global3.c.xx), vec3<f32>(1829f, _wgslsmith_f_op_f32(max(554f, global3.b)), _wgslsmith_f_op_f32(global3.b + -343f)), Struct_3(Struct_1(vec2<i32>(-12951i, u_input.b), 2432f, vec3<bool>(true, true, global3.c.x), global3.d), func_2(Struct_3(Struct_1(u_input.a.yy, global3.b, vec3<bool>(global3.c.x, false, false), global3.d), vec2<bool>(global3.c.x, false)), vec3<f32>(-1000f, 379f, global3.b), Struct_3(Struct_1(vec2<i32>(2147483647i, u_input.b), -985f, var_0.xxy, vec4<u32>(arg_0, 4294967295u, 29576u, global2[_wgslsmith_index_u32(15716u, 2u)])), var_0.yy), Struct_3(Struct_1(vec2<i32>(0i, 1930i), 521f, vec3<bool>(false, var_0.x, false), vec4<u32>(15065u, 16871u, global2[_wgslsmith_index_u32(4294967295u, 2u)], 7164u)), global3.c.yz)).a.c.xz), func_2(Struct_3(global0[_wgslsmith_index_u32(33567u, 30u)], global3.c.yy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, global3.b, 942f)), Struct_3(Struct_1(u_input.a.yy, -139f, global3.c, vec4<u32>(arg_0, 1u, 4294967295u, 4294967295u)), global3.c.xz), func_2(Struct_3(global0[_wgslsmith_index_u32(56778u, 30u)], var_0.xw), vec3<f32>(global3.b, global3.b, -1175f), Struct_3(Struct_1(u_input.a.yx, -380f, vec3<bool>(global3.c.x, false, var_0.x), global3.d), var_0.xx), Struct_3(Struct_1(u_input.a.xz, -111f, vec3<bool>(true, global3.c.x, var_0.x), vec4<u32>(global3.d.x, arg_0, global2[_wgslsmith_index_u32(7022u, 2u)], 1u)), vec2<bool>(true, var_0.x))))).a.c.yx));
    var var_2 = select(~(~vec4<u32>(~arg_0, arg_0, 60258u, global2[_wgslsmith_index_u32(~0u, 2u)])), var_1.a.d, true);
    let var_3 = -(~u_input.b);
    var var_4 = func_2(func_2(func_2(Struct_3(Struct_1(u_input.a.ww, -494f, var_0.wyw, vec4<u32>(global3.d.x, arg_0, 0u, var_2.x)), !var_1.a.c.zz), vec3<f32>(global3.b, _wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2(Struct_3(Struct_1(u_input.a.xz, -2754f, vec3<bool>(var_0.x, false, var_0.x), var_1.a.d), global3.c.yy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(856f, -1000f, global3.b)), Struct_3(var_1.a, vec2<bool>(false, var_0.x)), Struct_3(Struct_1(vec2<i32>(-11984i, u_input.b), var_1.a.b, var_1.a.c, vec4<u32>(6932u, 0u, 14027u, var_2.x)), vec2<bool>(var_1.b.x, var_1.a.c.x))), Struct_3(Struct_1(var_1.a.a, var_1.a.b, vec3<bool>(global3.c.x, global3.c.x, false), vec4<u32>(global3.d.x, 1u, var_2.x, 4294967295u)), vec2<bool>(true, true))), vec3<f32>(-507f, _wgslsmith_f_op_f32(ceil(global3.b)), -802f), func_2(Struct_3(global0[_wgslsmith_index_u32(~85627u, 30u)], var_0.ww), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(581f, var_1.a.b, 176f), vec3<f32>(var_1.a.b, var_1.a.b, var_1.a.b)))), Struct_3(func_2(Struct_3(var_1.a, var_0.yy), vec3<f32>(global3.b, global3.b, var_1.a.b), Struct_3(Struct_1(vec2<i32>(var_3, var_1.a.a.x), var_1.a.b, var_0.xyy, var_1.a.d), global3.c.xx), Struct_3(var_1.a, vec2<bool>(global3.c.x, var_1.a.c.x))).a, select(global3.c.xx, var_0.xx, var_0.x)), Struct_3(Struct_1(vec2<i32>(-1i, var_1.a.a.x), var_1.a.b, vec3<bool>(global3.c.x, global3.c.x, false), var_1.a.d), select(global3.c.zz, vec2<bool>(false, false), vec2<bool>(var_1.b.x, true)))), func_2(Struct_3(func_2(Struct_3(Struct_1(u_input.a.xy, -227f, vec3<bool>(true, true, false), global3.d), var_0.wx), vec3<f32>(var_1.a.b, -665f, global3.b), Struct_3(Struct_1(global3.a, -421f, vec3<bool>(var_1.b.x, var_1.a.c.x, true), var_1.a.d), var_1.b), Struct_3(var_1.a, vec2<bool>(var_0.x, false))).a, func_2(Struct_3(Struct_1(var_1.a.a, 134f, vec3<bool>(var_1.a.c.x, true, true), var_1.a.d), vec2<bool>(true, true)), vec3<f32>(global3.b, 1000f, var_1.a.b), Struct_3(var_1.a, var_1.b), Struct_3(global0[_wgslsmith_index_u32(var_1.a.d.x, 30u)], global3.c.zy)).b), vec3<f32>(_wgslsmith_f_op_f32(floor(-441f)), _wgslsmith_div_f32(548f, -795f), _wgslsmith_div_f32(var_1.a.b, -1106f)), Struct_3(global0[_wgslsmith_index_u32(var_1.a.d.x, 30u)], vec2<bool>(true, false)), func_2(func_2(Struct_3(global0[_wgslsmith_index_u32(var_2.x, 30u)], vec2<bool>(global3.c.x, false)), vec3<f32>(global3.b, 599f, var_1.a.b), Struct_3(Struct_1(u_input.a.xz, var_1.a.b, var_1.a.c, global3.d), global3.c.xx), Struct_3(Struct_1(var_1.a.a, 1230f, global3.c, global3.d), var_1.b)), vec3<f32>(1101f, var_1.a.b, var_1.a.b), Struct_3(Struct_1(vec2<i32>(var_1.a.a.x, var_1.a.a.x), global3.b, var_1.a.c, vec4<u32>(var_1.a.d.x, var_1.a.d.x, 1u, 44298u)), var_1.a.c.yz), Struct_3(Struct_1(u_input.a.xy, global3.b, var_1.a.c, var_1.a.d), var_1.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.a.b)), 215f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.b))))), func_2(Struct_3(Struct_1(abs(global3.a), _wgslsmith_f_op_f32(global3.b + -774f), vec3<bool>(true, true, global3.c.x), var_1.a.d), !global3.c.zx), vec3<f32>(var_1.a.b, -475f, _wgslsmith_div_f32(var_1.a.b, -936f)), func_2(Struct_3(func_2(Struct_3(Struct_1(vec2<i32>(-2147483647i, u_input.b), -1377f, vec3<bool>(true, var_0.x, var_0.x), global3.d), var_0.yz), vec3<f32>(var_1.a.b, -1486f, 856f), Struct_3(Struct_1(var_1.a.a, -131f, var_0.zyz, var_1.a.d), global3.c.xx), Struct_3(var_1.a, vec2<bool>(false, var_1.a.c.x))).a, !var_0.zx), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-601f, var_1.a.b, 448f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 1847f, global3.b) * vec3<f32>(global3.b, var_1.a.b, global3.b)), var_1.a.c)), Struct_3(Struct_1(global3.a, var_1.a.b, global3.c, vec4<u32>(global3.d.x, 12587u, 34122u, var_2.x)), var_1.b), func_2(func_2(Struct_3(Struct_1(u_input.a.xx, 1000f, var_0.wxz, global3.d), vec2<bool>(global3.c.x, true)), vec3<f32>(global3.b, global3.b, 524f), Struct_3(Struct_1(vec2<i32>(60761i, var_3), var_1.a.b, var_1.a.c, vec4<u32>(0u, 32718u, 46585u, var_2.x)), vec2<bool>(false, true)), Struct_3(Struct_1(vec2<i32>(-1i, 0i), -474f, var_1.a.c, global3.d), global3.c.yy)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1498f, var_1.a.b, var_1.a.b))), func_2(Struct_3(var_1.a, var_0.ww), vec3<f32>(var_1.a.b, -612f, 1000f), Struct_3(Struct_1(vec2<i32>(-1i, global3.a.x), 203f, global3.c, vec4<u32>(40733u, 0u, 1u, 1u)), var_1.b), Struct_3(Struct_1(global3.a, global3.b, global3.c, vec4<u32>(96502u, 0u, 0u, var_2.x)), vec2<bool>(global3.c.x, true))), Struct_3(var_1.a, var_0.xx))), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43554u, 40182u, var_2.x) | global3.d, ~global3.d), 30u)], vec2<bool>(any(vec2<bool>(false, var_0.x)), true))), Struct_3(var_1.a, !(!select(var_0.yx, global3.c.xx, global3.c.yx))));
    return var_4.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = -46741i;
    var var_1 = vec3<u32>(firstLeadingBit(global3.d.x), firstLeadingBit(0u), 1u) >> (_wgslsmith_add_vec3_u32(reverseBits(arg_0.d.xzy), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(global3.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.d.x, arg_3.a.d.x, 100552u), vec3<u32>(arg_0.d.x, 16914u, arg_3.a.d.x))), 17978u, arg_3.a.d.x)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wxy) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1261f, -100f, global3.b)), vec3<f32>(492f, 289f, arg_3.a.b), true))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_1.yzw)))))));
    let var_3 = Struct_3(Struct_1(arg_3.a.a, -1474f, arg_3.a.c, _wgslsmith_add_vec4_u32(global3.d, ~arg_3.a.d)), arg_0.c.yy);
    let var_4 = ~1u;
    return -reverseBits(arg_0.a & (vec2<i32>(-1i, u_input.b) >> (~global3.d.xx % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(func_5(func_1(_wgslsmith_mult_u32(~global3.d.x, _wgslsmith_div_u32(1u, 105565u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1626f, 1538f, global3.b, 1660f), vec4<f32>(global3.b, global3.b, -1114f, 106f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b, -1941f, global3.b, -1493f), vec4<f32>(global3.b, global3.b, 639f, 1000f), false)))), global3.d.ww, Struct_2(func_1(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(global3.d.x, 2u)])), ~u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(714f, -1361f), -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global3.b)), 1f)))))), global3.c, global3.d);
    global3 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, ~(global3.d.x & (4294967295u << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] % 32u))))), 30u)];
    let var_0 = any(vec2<bool>(any(vec2<bool>(true, !global3.c.x)), !(!global3.c.x)));
    var var_1 = Struct_1(u_input.a.xx, _wgslsmith_f_op_f32(global3.b + global3.b), select(func_1(_wgslsmith_dot_vec3_u32(global3.d.ywy, _wgslsmith_mod_vec3_u32(global3.d.www, vec3<u32>(32845u, 87699u, 56502u)))).c, func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.x, global2[_wgslsmith_index_u32(global3.d.x, 2u)]) | vec2<u32>(global2[_wgslsmith_index_u32(26683u, 2u)], 67669u), firstTrailingBit(vec2<u32>(global3.d.x, global3.d.x)))).c, select(global3.c, global3.c, func_2(Struct_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.d.x, 2u)], 2u)], 2u)], 30u)], vec2<bool>(true, global3.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, global3.b, global3.b) + vec3<f32>(906f, 242f, 190f)), Struct_3(global0[_wgslsmith_index_u32(35259u, 30u)], global3.c.zz), Struct_3(Struct_1(u_input.a.xz, 253f, global3.c, vec4<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 0u, 0u, 0u)), vec2<bool>(false, var_0))).a.c)), abs(~countOneBits(~global3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.d.zz), u_input.a.xxw, abs(~vec2<i32>(1i, -global3.a.x)), global2[_wgslsmith_index_u32(~27341u, 2u)]);
}

