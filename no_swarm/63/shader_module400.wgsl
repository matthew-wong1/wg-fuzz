struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec4<bool>(false, true, true, false), 4294967295u, Struct_2(i32(-2147483648), -1094f, Struct_1(vec2<u32>(65189u, 21343u), 1030f, false, true), Struct_1(vec2<u32>(104752u, 1u), 109f, false, false)), 408f, 21695u), Struct_3(vec4<bool>(true, false, true, true), 37257u, Struct_2(-49825i, 161f, Struct_1(vec2<u32>(25639u, 21502u), -839f, false, true), Struct_1(vec2<u32>(40354u, 4294967295u), -643f, true, false)), 371f, 4294967295u), Struct_3(vec4<bool>(false, true, true, true), 1u, Struct_2(-29761i, 1129f, Struct_1(vec2<u32>(1u, 1u), 124f, true, false), Struct_1(vec2<u32>(120193u, 9572u), -1081f, false, true)), -268f, 5410u), Struct_3(vec4<bool>(true, false, true, false), 19076u, Struct_2(23053i, 428f, Struct_1(vec2<u32>(4294967295u, 23621u), -1503f, false, true), Struct_1(vec2<u32>(16587u, 1u), 755f, true, false)), 1098f, 4294967295u), Struct_3(vec4<bool>(false, false, false, false), 53678u, Struct_2(0i, -603f, Struct_1(vec2<u32>(71739u, 1u), -130f, false, true), Struct_1(vec2<u32>(0u, 1u), -252f, false, false)), 1747f, 21623u), Struct_3(vec4<bool>(true, false, false, false), 4294967295u, Struct_2(4496i, -1000f, Struct_1(vec2<u32>(1u, 1u), -136f, true, true), Struct_1(vec2<u32>(20061u, 1u), 380f, true, false)), -1905f, 0u), Struct_3(vec4<bool>(true, true, false, true), 4294967295u, Struct_2(i32(-2147483648), -457f, Struct_1(vec2<u32>(94629u, 0u), 367f, false, true), Struct_1(vec2<u32>(4294967295u, 7353u), -1602f, true, true)), -266f, 8991u), Struct_3(vec4<bool>(false, true, false, true), 56181u, Struct_2(-23951i, 389f, Struct_1(vec2<u32>(0u, 1u), -1140f, true, true), Struct_1(vec2<u32>(4294967295u, 36983u), -1256f, true, true)), 1876f, 52444u), Struct_3(vec4<bool>(true, false, true, true), 1u, Struct_2(i32(-2147483648), 1000f, Struct_1(vec2<u32>(19620u, 95981u), -162f, true, true), Struct_1(vec2<u32>(22743u, 7857u), -1185f, true, true)), -858f, 4294967295u), Struct_3(vec4<bool>(false, true, true, true), 19097u, Struct_2(-45451i, -785f, Struct_1(vec2<u32>(1u, 2748u), -1210f, false, false), Struct_1(vec2<u32>(53408u, 23610u), 226f, false, true)), 254f, 10732u), Struct_3(vec4<bool>(true, true, false, false), 0u, Struct_2(-6554i, -413f, Struct_1(vec2<u32>(60033u, 0u), -1201f, true, true), Struct_1(vec2<u32>(15794u, 26613u), 1781f, true, true)), -630f, 8129u));

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_3, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-675f - _wgslsmith_f_op_f32(-arg_3.b)) + _wgslsmith_f_op_f32(-1237f * 2561f));
    return u_input.a;
}

fn func_2() -> bool {
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(func_3(-10889i, Struct_4(vec4<u32>(global0.x, u_input.c, u_input.a, u_input.a), vec3<bool>(false, true, false), 4294967295u, Struct_2(1532i, 1000f, Struct_1(vec2<u32>(11871u, 0u), -2254f, false, false), Struct_1(global0.yw, 728f, true, true))), -vec2<i32>(1i, -1i), Struct_1(global0.wz, -551f, true, true))), select(global0.x, u_input.a, true), 0u, ~func_3(global2.x, Struct_4(vec4<u32>(u_input.c, 64473u, global0.x, global0.x), vec3<bool>(false, false, true), 0u, Struct_2(-29136i, -973f, Struct_1(global0.wz, 221f, true, false), Struct_1(vec2<u32>(u_input.a, global0.x), 1610f, true, false))), -vec2<i32>(-27238i, 1i), Struct_1(vec2<u32>(35955u, global0.x), 1374f, false, false))), firstTrailingBit(abs(~select(vec4<u32>(global0.x, global0.x, u_input.a, u_input.c), vec4<u32>(1u, global0.x, u_input.a, u_input.a), vec4<bool>(false, false, true, false)))));
    var var_0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(min(vec2<u32>(10554u, global0.x & global0.x), global0.ww)), ~(~vec2<u32>(global0.x ^ 0u, 60499u)));
    var var_1 = Struct_2(-(global2.x & ~u_input.d), -825f, Struct_1(vec2<u32>(~var_0.x, ~_wgslsmith_sub_u32(49157u, var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1395f))), -708f)), true, !(~global2.x == ~(-45797i))), Struct_1(~vec2<u32>(var_0.x | var_0.x, ~var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2169f)) + 346f))), all(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, false, false, false)))), false));
    global0 = ~(~vec4<u32>(4294967295u, 37942u, u_input.a >> (23310u % 32u), 78737u & global0.x)) & min(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.a.x, u_input.a, u_input.a, 8364u), vec4<u32>(34040u, 1u, 6400u, var_0.x)), ~max(vec4<u32>(var_0.x, u_input.c, global0.x, var_0.x), vec4<u32>(global0.x, 14045u, var_1.c.a.x, var_0.x))), ~firstTrailingBit(~vec4<u32>(global0.x, global0.x, 0u, 1u)));
    global1 = array<Struct_3, 11>();
    return var_1.c.d;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = vec4<bool>(false & (arg_1.x == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x))), true || !(any(vec4<bool>(true, true, true, true)) | true), false, func_2());
    global0 = select(~_wgslsmith_mult_vec4_u32(vec4<u32>(154261u, ~0u, global0.x ^ 19335u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)), vec4<u32>(17008u & global0.x, 0u, abs(46130u), u_input.a)), vec4<u32>(global0.x, 4294967295u, 18064u, _wgslsmith_mod_u32(~42169u, u_input.c)), var_0);
    let var_1 = _wgslsmith_add_vec4_u32(countOneBits(max(_wgslsmith_mod_vec4_u32(vec4<u32>(3236u, global0.x, u_input.a, 76233u), vec4<u32>(0u, global0.x, 0u, u_input.a)) << (max(vec4<u32>(u_input.a, global0.x, global0.x, 0u), vec4<u32>(u_input.a, 6232u, u_input.c, 0u)) % vec4<u32>(32u)), vec4<u32>(global0.x, u_input.a, u_input.a, 20655u) & _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 10675u, 0u, 34095u), vec4<u32>(20573u, global0.x, 7289u, global0.x)))), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, ~(global0.x >> (u_input.c % 32u)), u_input.c, global0.x), ~max(firstLeadingBit(vec4<u32>(0u, u_input.a, global0.x, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(5317u, u_input.c, 4294967295u, 5657u), vec4<u32>(global0.x, u_input.a, global0.x, 1u)))));
    let var_2 = var_1.x | abs(~countOneBits(~u_input.c));
    let var_3 = u_input.c;
    return Struct_2(global2.x, -332f, Struct_1(global0.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - arg_1.x), true, var_0.x), Struct_1(var_1.yy, _wgslsmith_div_f32(-644f, -499f), false, var_0.x | (global2.x <= _wgslsmith_dot_vec2_i32(arg_0.yy, arg_0.yy))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    global2 = _wgslsmith_div_vec2_i32(arg_1, ~_wgslsmith_div_vec2_i32(vec2<i32>(~19264i, firstTrailingBit(arg_0.x)), -arg_1));
    let var_0 = Struct_4(vec4<u32>(arg_2.d.a.x, (u_input.c << (4294967295u % 32u)) << ((func_1(vec3<i32>(arg_2.a, 0i, arg_0.x), arg_3.zy).c.a.x ^ func_1(vec3<i32>(1i, arg_2.a, global2.x), vec2<f32>(2065f, -1369f)).d.a.x) % 32u), 1u, global0.x), vec3<bool>(arg_3.x != -686f, select(arg_2.d.d, arg_2.c.d, !arg_2.c.c) && true, _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -1496f)), _wgslsmith_sub_u32(u_input.a, ~(~1u ^ ~global0.x)), Struct_2(0i, arg_2.d.b, Struct_1(~global0.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(293f, arg_2.c.b)) * arg_3.x), _wgslsmith_sub_u32(4294967295u, 1u) < global0.x, !(!arg_2.d.c)), Struct_1(select(vec2<u32>(arg_2.d.a.x, u_input.a), vec2<u32>(0u, global0.x), all(vec4<bool>(arg_2.d.d, arg_2.d.d, true, arg_2.c.c))), 741f, false, arg_2.c.d)));
    let var_1 = func_1(firstTrailingBit(countOneBits(vec3<i32>(33102i, ~(-44424i), global2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(843f, arg_2.b))), 951f) + arg_3.zz)).d.a;
    let var_2 = Struct_1(arg_2.d.a, -548f, !arg_2.c.c, !(!var_0.b.x));
    let var_3 = ~vec4<i32>(_wgslsmith_mod_i32(-abs(var_0.d.a), arg_2.a << (0u % 32u)), 53114i, -(~(~(-1i))), _wgslsmith_div_i32(-2147483647i, _wgslsmith_clamp_i32(abs(14436i), ~arg_0.x, -66413i)));
    return Struct_2(_wgslsmith_add_i32(min(_wgslsmith_dot_vec3_i32(var_3.xzx & vec3<i32>(arg_1.x, var_0.d.a, var_3.x), var_3.zyw), firstTrailingBit(global2.x)), 0i), 714f, func_1(var_3.wxz << (_wgslsmith_div_vec3_u32(~global0.wwx, vec3<u32>(arg_2.d.a.x, global0.x, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_3.yx))), vec2<bool>(true || arg_2.d.c, arg_2.c.d)))).d, var_0.d.c);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = select(vec2<bool>(abs(firstTrailingBit(1i)) > _wgslsmith_mult_i32(1i, arg_3.a), !arg_0.c.d), !select(vec2<bool>(!arg_3.d.c, arg_3.d.d & arg_0.c.d), select(vec2<bool>(arg_0.c.c, arg_3.d.d), vec2<bool>(arg_0.c.d, arg_0.d.d), arg_3.d.c != true), vec2<bool>(!arg_3.c.c, true)), true);
    var_0 = select(select(select(!(!vec2<bool>(arg_3.c.d, var_0.x)), select(vec2<bool>(true, true), !vec2<bool>(arg_3.d.d, arg_0.d.c), any(vec2<bool>(var_0.x, true))), vec2<bool>(arg_3.d.c, true)), vec2<bool>(!arg_3.c.d, !arg_3.c.c), !vec2<bool>(select(arg_3.d.c, var_0.x, true), var_0.x)), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, arg_3.c.d), var_0.x), !select(vec2<bool>(true, arg_0.d.d), vec2<bool>(var_0.x, true), vec2<bool>(true, arg_3.d.d)), !(arg_1 == 759f)), !vec2<bool>(func_2(), true & var_0.x), 1000f >= arg_1), select(!(!select(vec2<bool>(var_0.x, arg_0.c.d), vec2<bool>(var_0.x, var_0.x), false)), select(!vec2<bool>(false, var_0.x), !select(vec2<bool>(false, var_0.x), vec2<bool>(arg_3.d.d, true), false), !vec2<bool>(false, var_0.x)), arg_0.c.c));
    var var_1 = ~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(12240u, arg_0.c.a.x, u_input.a, arg_3.c.a.x) | vec4<u32>(global0.x, arg_3.c.a.x, arg_3.c.a.x, 1u), firstTrailingBit(vec4<u32>(arg_3.d.a.x, 87281u, 1u, arg_3.c.a.x)), !vec4<bool>(true, false, var_0.x, var_0.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(7645u, arg_3.c.a.x, 0u, arg_3.c.a.x), vec4<u32>(1u, 41055u, 1u, arg_0.c.a.x))));
    let var_2 = global1[_wgslsmith_index_u32(var_1.x, 11u)];
    let var_3 = ~(1u >> (var_2.e % 32u));
    return true;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<Struct_3, 11>();
    global2 = vec2<i32>(arg_3.a, global2.x);
    let var_0 = arg_2.x;
    var var_1 = Struct_1(~(~vec2<u32>(countOneBits(arg_3.d.a.x), _wgslsmith_dot_vec3_u32(global0.yyz, vec3<u32>(arg_0, arg_1.a.x, 23492u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 + 175f))), ((global0.x >> (57124u % 32u)) << (arg_3.d.a.x % 32u)) <= arg_0, true);
    let var_2 = Struct_1(~arg_1.a, _wgslsmith_f_op_f32(min(-155f, arg_2.x)), true, !arg_3.d.c && !all(vec2<bool>(true, arg_1.c)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(61277u | max(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(11923u, u_input.c)), 19267u), Struct_1(vec2<u32>(_wgslsmith_sub_u32(global0.x, _wgslsmith_add_u32(global0.x, global0.x)), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -2720f), true, func_5(func_4(vec2<i32>(u_input.b, global2.x), vec2<i32>(global2.x, -15826i), func_1(vec3<i32>(global2.x, global2.x, global2.x), vec2<f32>(-418f, -445f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(673f, -140f, 1275f), vec3<f32>(1790f, 346f, 608f), vec3<bool>(true, false, true)))), -1000f, _wgslsmith_sub_vec4_i32(vec4<i32>(-9193i, -28323i, u_input.b, 8628i), vec4<i32>(global2.x, 30274i, u_input.b, u_input.d)) << ((vec4<u32>(49965u, 103596u, global0.x, global0.x) | vec4<u32>(57039u, global0.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)), func_1(vec3<i32>(-25942i, 0i, 5303i) & vec3<i32>(u_input.d, 0i, 2147483647i), vec2<f32>(-411f, 322f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-296f, -159f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f + -391f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-321f * _wgslsmith_f_op_f32(132f + 1123f)))), Struct_2(countOneBits(i32(-1i) * -global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -162f), _wgslsmith_f_op_f32(ceil(-3359f))), 332f)), Struct_1(_wgslsmith_div_vec2_u32(global0.yz, ~vec2<u32>(1u, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(734f, -1000f)))), any(vec2<bool>(false, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), Struct_1(vec2<u32>(4294967295u, 31647u), 1138f, true, true)));
    global0 = firstLeadingBit(max(~reverseBits(vec4<u32>(0u, var_0.d.a.x, 1u, global0.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(16498u, u_input.a, var_0.d.a.x, global0.x), select(vec4<u32>(4294967295u, global0.x, global0.x, 0u), vec4<u32>(global0.x, 34647u, global0.x, 0u), vec4<bool>(false, true, var_0.d.d, var_0.d.d)), vec4<u32>(var_0.d.a.x, global0.x, var_0.d.a.x, 1u) & vec4<u32>(var_0.c.a.x, 1u, 0u, u_input.a))) ^ max(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4294967295u, global0.x, 1u)), vec4<u32>(u_input.a, 25096u, 4294967295u, 45075u)), countOneBits(min(vec4<u32>(1u, u_input.c, global0.x, global0.x), vec4<u32>(42803u, 14067u, u_input.a, 10612u)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_1(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, -37067i, u_input.d), vec3<i32>(u_input.b, -1i, global2.x)), select(vec3<i32>(global2.x, -47609i, u_input.b), vec3<i32>(var_0.a, 24372i, u_input.d), vec3<bool>(var_0.c.d, var_0.d.c, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b, var_0.b), vec2<f32>(-523f, 174f)) + vec2<f32>(-1994f, var_0.c.b))).b)) - -665f);
    let var_2 = Struct_3(vec4<bool>(_wgslsmith_add_u32(1u, ~76716u) != u_input.c, false, func_4(firstLeadingBit(vec2<i32>(20125i, u_input.b)), max(vec2<i32>(var_0.a, var_0.a), vec2<i32>(-18841i, u_input.d)), Struct_2(u_input.b, var_0.c.b, var_0.d, Struct_1(vec2<u32>(1u, u_input.c), -1503f, var_0.d.d, false)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b, var_0.d.b, var_0.c.b), vec3<f32>(var_0.b, var_0.c.b, -706f))).d.a.x < func_1(-vec3<i32>(38489i, var_0.a, global2.x), vec2<f32>(var_0.c.b, -320f)).c.a.x, true == any(vec4<bool>(var_0.c.d, true, true, true))), 1u, Struct_2(-29008i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.c.b)), Struct_1(~global0.zx, _wgslsmith_f_op_f32(727f + var_0.b), (-8351i <= global2.x) && (global2.x <= -1i), var_0.c.b <= _wgslsmith_f_op_f32(526f * var_0.c.b)), func_6(131915u, func_6(~u_input.a, func_6(u_input.a, Struct_1(vec2<u32>(var_0.c.a.x, 0u), var_0.d.b, true, true), vec3<f32>(-1000f, var_0.b, 1035f), var_0).d, vec3<f32>(var_0.d.b, 239f, var_0.d.b), func_1(vec3<i32>(u_input.d, 1i, global2.x), vec2<f32>(var_0.b, -1557f))).c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b, 1686f, 1989f)))), var_0).c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(round(328f)))), var_0.d.a.x);
    global0 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 69959u, 63783u, 0u), vec4<u32>(0u, 4294967295u, var_0.d.a.x, u_input.c)), ~vec4<u32>(global0.x, var_2.e, 16967u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, var_2.b, 1u), vec4<u32>(0u, var_2.e, u_input.c, 23189u)) << (~vec4<u32>(4294967295u, var_2.b, global0.x, 16280u) % vec4<u32>(32u))));
    let var_3 = ~(~var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(func_6(~select(var_0.d.a.x, var_3.x, var_0.c.d), func_4(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, u_input.d), vec2<i32>(u_input.d, -1i)), abs(vec2<i32>(var_0.a, 31796i)), Struct_2(var_0.a, -109f, Struct_1(vec2<u32>(var_2.e, var_3.x), var_2.d, false, false), Struct_1(vec2<u32>(0u, 4294967295u), 622f, true, var_0.c.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1547f, var_2.c.d.b, var_0.d.b) + vec3<f32>(var_2.c.b, 1142f, var_2.d))).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b, -1000f))), func_1(firstTrailingBit(vec3<i32>(u_input.b, var_2.c.a, 0i)), vec2<f32>(1087f, var_0.b))).d.b)), vec3<i32>(_wgslsmith_mod_i32(-1i, -2147483647i), -7710i, 0i));
}

