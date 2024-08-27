struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-615f, 584f, -1222f), vec3<f32>(-1071f, -1358f, -1177f), vec3<f32>(-1070f, -600f, -918f), vec3<f32>(-970f, -944f, -787f), vec3<f32>(-704f, -847f, 1299f), vec3<f32>(-994f, -1540f, 209f), vec3<f32>(384f, -340f, -581f), vec3<f32>(2314f, 134f, 772f), vec3<f32>(-1112f, -568f, 112f), vec3<f32>(-414f, 2804f, 1036f), vec3<f32>(-860f, -1000f, 210f), vec3<f32>(-942f, -1158f, 550f), vec3<f32>(317f, -1058f, 710f));

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    let var_0 = -reverseBits(arg_0.c.c.x);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    let var_0 = u_input.a;
    let var_1 = Struct_5(Struct_4(u_input.a.x < _wgslsmith_clamp_u32(func_3(Struct_4(false, -1606f, Struct_1(arg_0.a, vec4<i32>(arg_0.b.x, 1i, 1i, 1i), vec3<i32>(-632i, -2425i, arg_0.e.x), arg_0.d, arg_0.b.xww)), vec4<i32>(arg_0.e.x, -15089i, -1i, 1i), global0[_wgslsmith_index_u32(var_0.x, 18u)], var_0), ~0u, firstTrailingBit(0u)), _wgslsmith_f_op_f32(step(471f, 1f)), Struct_1(arg_0.a, _wgslsmith_mult_vec4_i32(arg_0.b, ~vec4<i32>(-49772i, arg_1, arg_0.c.x, 0i)), vec3<i32>(arg_0.b.x & 4826i, 28566i, ~arg_0.c.x), ~arg_0.d | arg_0.d, (vec3<i32>(605i, arg_0.c.x, -33283i) | arg_0.c) | arg_0.b.wxz)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(153f, 1041f, global0[_wgslsmith_index_u32(arg_0.d.x, 18u)])), _wgslsmith_f_op_f32(2129f * -117f))), vec2<f32>(_wgslsmith_div_f32(639f, _wgslsmith_f_op_f32(sign(-645f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1091f * -802f), _wgslsmith_f_op_f32(115f + 1946f)))))));
    var var_2 = var_1;
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    return !(!vec4<bool>(!select(var_2.a.a, true, var_1.a.c.a.x), select(!var_1.a.a, var_1.b.x > -569f, true), all(select(arg_0.a.zy, var_2.a.c.a.yy, vec2<bool>(false, arg_0.a.x))), all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 18u)], false, var_1.a.c.a.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<bool>) -> vec2<i32> {
    var var_0 = 20164u;
    global1 = array<vec3<f32>, 13>();
    let var_1 = Struct_2(countOneBits(1i), global0[_wgslsmith_index_u32(0u, 18u)], arg_2.c.d.zzy);
    var var_2 = _wgslsmith_mod_u32(49444u, var_1.c.x);
    let var_3 = Struct_5(arg_2, vec2<f32>(_wgslsmith_f_op_f32(ceil(-1238f)), -1122f));
    return _wgslsmith_add_vec2_i32(arg_2.c.e.xz, _wgslsmith_sub_vec2_i32(select(select(arg_2.c.c.yz, var_3.a.c.b.zy, true), arg_2.c.e.yx, select(var_3.a.c.a.yy, vec2<bool>(true, arg_0.x), global0[_wgslsmith_index_u32(19026u, 18u)])) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.a, arg_1), var_3.a.c.b.xz, vec2<i32>(var_1.a, var_3.a.c.c.x)), ~(-select(vec2<i32>(arg_1, var_1.a), var_3.a.c.b.xy, vec2<bool>(var_1.b, arg_3.x)))));
}

fn func_1() -> Struct_3 {
    var var_0 = ~(vec2<i32>(~(~(-2147483647i)), i32(-1i) * -2147483647i) << (~u_input.a.xz % vec2<u32>(32u)));
    global1 = array<vec3<f32>, 13>();
    var_0 = -_wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.x, 23086i), vec2<i32>(var_0.x, var_0.x) | vec2<i32>(var_0.x, 2147483647i))), _wgslsmith_mult_vec2_i32(abs(min(vec2<i32>(-6144i, var_0.x), vec2<i32>(2147483647i, var_0.x))), vec2<i32>(var_0.x, var_0.x)), func_4(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(52445u, 18u)])), -34591i, Struct_4(global0[_wgslsmith_index_u32(abs(35804u), 18u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(var_0.x, -18461i, var_0.x, 36783i), vec3<i32>(-294i, var_0.x, var_0.x), vec4<u32>(u_input.b.x, 1u, 0u, 0u), vec3<i32>(var_0.x, var_0.x, 12955i))), select(func_2(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(30405u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<i32>(var_0.x, 29675i, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.b.x), vec3<i32>(32323i, -2147483647i, var_0.x)), var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(20870u, 18u)], false))));
    let var_1 = select(-33474i, max(-(~475i), _wgslsmith_div_i32(-13997i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, var_0.x)))), global0[_wgslsmith_index_u32(~16549u, 18u)]) | -var_0.x;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1, var_0.x), max(_wgslsmith_clamp_i32(2147483647i, -30941i, 61627i), ~2147483647i)), 1i), -38016i >> (u_input.a.x % 32u));
    return global2[_wgslsmith_index_u32(u_input.a.x, 21u)];
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_5 {
    let var_0 = -vec4<i32>(-min(arg_3.d.b.x, select(arg_3.d.b.x, arg_1.d.c.x, false)), ~(-41741i), -46285i, arg_1.d.c.x ^ ~func_4(arg_3.d.a.yy, arg_3.d.e.x, Struct_4(true, -1921f, Struct_1(vec3<bool>(true, true, true), vec4<i32>(arg_1.d.b.x, arg_3.d.e.x, arg_3.d.e.x, arg_3.d.b.x), vec3<i32>(0i, arg_1.d.c.x, arg_1.d.c.x), arg_1.d.d, vec3<i32>(arg_3.d.c.x, 22385i, 27817i))), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], false, false, true)).x);
    global1 = array<vec3<f32>, 13>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(301f))))));
    var var_2 = arg_2.x < ~(~arg_0);
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(select(arg_1.d.b, arg_1.d.b, false), vec4<i32>(arg_1.d.b.x, ~select(-1i, arg_3.d.b.x, global0[_wgslsmith_index_u32(0u, 18u)]), var_0.x, arg_1.d.e.x)), firstLeadingBit(-min(-13139i, ~2147483647i)), ~abs(func_4(vec2<bool>(false, arg_3.c.x), -1i, Struct_4(arg_3.c.x, 2139f, Struct_1(vec3<bool>(true, true, arg_3.c.x), vec4<i32>(2147483647i, var_0.x, arg_3.d.e.x, arg_3.d.e.x), arg_3.d.b.xww, arg_1.d.d, arg_1.d.b.xwy)), vec4<bool>(true, false, true, arg_3.d.a.x)).x));
    return Struct_5(Struct_4(func_2(func_1().d, -9627i).x, _wgslsmith_f_op_f32(abs(438f)), arg_3.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1324f)) - vec2<f32>(325f, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 21>();
    var var_0 = reverseBits(abs(vec4<i32>(1i, 1i, 1i, 1i))) << (max(~select(~vec4<u32>(80691u, u_input.b.x, 3016u, 0u), countOneBits(vec4<u32>(1u, 31271u, u_input.a.x, u_input.b.x)), !global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(47036u, u_input.b.x, u_input.a.x << (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(23232u, u_input.a.x, u_input.b.x, 28243u), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.b.x, 47831u, u_input.b.x, 1u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_1 = func_5(~u_input.a.x, func_1(), u_input.a.xz, Struct_3(abs(~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 4294967295u, vec3<bool>(all(func_1().d.a.zy), true, global0[_wgslsmith_index_u32(func_1().d.d.x ^ ~u_input.b.x, 18u)]), Struct_1(!func_1().c, firstLeadingBit(~vec4<i32>(var_0.x, -2147483647i, 0i, var_0.x)), vec3<i32>(11403i, countOneBits(-2147483647i), var_0.x), vec4<u32>(25717u, u_input.b.x, 53056u, 9884u) ^ vec4<u32>(75665u, 53043u, u_input.b.x, 4294967295u), select(vec3<i32>(var_0.x, var_0.x, 2605i) << (vec3<u32>(1u, u_input.a.x, u_input.b.x) % vec3<u32>(32u)), -vec3<i32>(-32789i, var_0.x, -10803i), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false)))));
    var_1 = func_5(_wgslsmith_div_u32(func_5(1u, func_1(), vec2<u32>(u_input.b.x, min(var_1.a.c.d.x, 89812u)), Struct_3(60415u, var_1.a.c.d.x, select(var_1.a.c.a, var_1.a.c.a, vec3<bool>(false, var_1.a.c.a.x, false)), var_1.a.c)).a.c.d.x, ~var_1.a.c.d.x | (_wgslsmith_mod_u32(var_1.a.c.d.x, u_input.b.x) ^ u_input.a.x)), func_1(), var_1.a.c.d.wx, Struct_3(~(~abs(u_input.b.x)), var_1.a.c.d.x, vec3<bool>(global0[_wgslsmith_index_u32(~u_input.a.x, 18u)], false, global0[_wgslsmith_index_u32(abs(~4294967295u), 18u)]), Struct_1(func_1().c, -countOneBits(var_1.a.c.b), var_1.a.c.e, ~var_1.a.c.d << (var_1.a.c.d % vec4<u32>(32u)), ~abs(vec3<i32>(30884i, 29697i, -1i)))));
    global0 = array<bool, 18>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-492f, var_1.a.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-440f, var_1.b.x))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-702f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), 192f)), var_1.b.x));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-851f, 673f)) - -530f), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(var_1.b.x - 622f)))) * -674f)));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_1.a.c.d.x, 13u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1162f, var_1.a.b) * 918f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, var_1.a.b))), var_1.a.b))), -_wgslsmith_mod_i32(i32(-1i) * -var_0.x, ~(~var_1.a.c.e.x)), func_5(12714u, func_1(), vec2<u32>(59410u, 4294967295u), global2[_wgslsmith_index_u32(~var_1.a.c.d.x, 21u)]).a.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-406f)) - var_1.a.b), func_5(55028u, func_1(), min(u_input.b & var_1.a.c.d.yz, _wgslsmith_div_vec2_u32(var_1.a.c.d.ww, min(u_input.b, vec2<u32>(var_1.a.c.d.x, 1948u)))), Struct_3(~92444u, ~(~u_input.b.x), var_1.a.c.a, var_1.a.c)).a.c.d.x);
}

