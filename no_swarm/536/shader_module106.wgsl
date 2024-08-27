struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(1i, 0i), vec2<i32>(29166i, 25380i), vec2<i32>(51065i, 0i), vec2<i32>(-41235i, 8569i), vec2<i32>(0i, -27331i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(33006i, 0i));

var<private> global2: array<Struct_5, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_3(firstLeadingBit(u_input.d.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-182f, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -186f), arg_0.a)))));
    global2 = array<Struct_5, 30>();
    let var_1 = any(vec2<bool>(true, select(true, true, false)));
    global2 = array<Struct_5, 30>();
    var var_2 = select(vec2<bool>(var_1, select(var_1 || !var_1, var_0.a <= _wgslsmith_add_u32(0u, 4294967295u), true)), vec2<bool>(var_1, !(!var_1)), select(vec2<bool>(!var_1, var_1), vec2<bool>(true, -283f >= var_0.b.x), vec2<bool>(false, true)));
    return ~(u_input.d.xz ^ ~select(vec2<u32>(var_0.a, 28884u) & u_input.c, ~u_input.c, true));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = func_3(Struct_1(-1351f));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1201f * -1678f))))), 1059f);
    var var_2 = Struct_1(1000f);
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b.x, 11656i, u_input.b.x)), (vec4<i32>(-2147483647i, 15706i, u_input.a, 2147483647i) ^ vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.b.x)) | select(vec4<i32>(-2147483647i, u_input.a, -2147483647i, -1i), vec4<i32>(0i, -37229i, 1i, 9207i), true)), -1i), u_input.b);
    global1 = array<vec2<i32>, 9>();
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_4(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 78870u, 1u), _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x))), u_input.d), max(vec2<u32>(firstLeadingBit(u_input.d.x) << (reverseBits(12037u) % 32u), 4294967295u), vec2<u32>(~6637u, max(49684u, _wgslsmith_div_u32(u_input.d.x, u_input.d.x)))), -1036f, _wgslsmith_mult_u32(u_input.d.x, u_input.d.x), firstTrailingBit(_wgslsmith_mod_u32(abs(~u_input.d.x), 14514u)));
    var var_1 = u_input.b;
    return Struct_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~var_0.e, ~1u, countOneBits(5452u)), 4294967295u), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), -1163f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(515f, var_0.c)), _wgslsmith_f_op_f32(-var_0.c))))));
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> Struct_2 {
    global0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-21577i, 0i, u_input.a, arg_0.b)), countOneBits(vec4<i32>(arg_0.b, arg_0.b, 86872i, u_input.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, u_input.a, u_input.b.x, arg_0.b), vec4<i32>(42914i, u_input.a, u_input.b.x, 61700i) << (vec4<u32>(arg_0.a.a.x, 4294967295u, u_input.d.x, 4294967295u) % vec4<u32>(32u)))), min(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, arg_0.b, arg_0.b), vec4<i32>(arg_0.b, u_input.b.x, u_input.b.x, arg_0.b)) & _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b, u_input.b.x, u_input.b.x, 0i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(19310i, arg_0.b, -57869i, u_input.b.x) << (vec4<u32>(33515u, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x) % vec4<u32>(32u)), vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 23304i) << (u_input.d % vec4<u32>(32u)))));
    let var_0 = func_4(vec3<bool>(true, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-140f, arg_0.a.b.x)), _wgslsmith_f_op_f32(arg_0.c.x - -2198f))) == _wgslsmith_div_f32(_wgslsmith_div_f32(178f, arg_1), _wgslsmith_f_op_f32(select(arg_0.c.x, 681f, false)))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(false, -22383i >= u_input.b.x)), vec2<bool>(false, !func_2(vec2<bool>(true, false))), vec2<bool>(true, u_input.b.x <= arg_0.b)));
    global0 = _wgslsmith_div_i32(u_input.a | -17644i, arg_0.b);
    global0 = 22580i;
    var var_1 = Struct_4(vec4<u32>(~var_0.a, ~max(min(arg_0.a.a.x, arg_0.a.a.x), var_0.a), _wgslsmith_mult_u32(18190u, ~arg_0.a.a.x), 0u), _wgslsmith_sub_vec2_u32(u_input.d.xw, vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.a.a.x, 15259u), arg_0.a.a.x), ~abs(var_0.a))), arg_0.a.b.x, var_0.a, 23918u);
    return Struct_2(vec4<u32>(min(~4294967295u, countOneBits(u_input.c.x)), _wgslsmith_dot_vec4_u32(abs(arg_0.a.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), u_input.d)), 47157u, reverseBits(~var_0.a)) ^ ~vec4<u32>(~var_1.a.x, _wgslsmith_clamp_u32(7781u, var_0.a, u_input.c.x), arg_0.a.a.x, abs(1750u)), _wgslsmith_f_op_vec2_f32(-var_0.b.yy), Struct_1(1395f));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    var var_0 = select(vec4<bool>(~u_input.d.x == u_input.c.x, true, firstLeadingBit(1u) >= arg_0.a.a.x, all(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), ~16714i <= (2147483647i >> (arg_0.a.a.x % 32u))), true);
    var var_1 = 0u;
    var var_2 = _wgslsmith_div_vec3_i32((-vec3<i32>(arg_0.b, -72623i, 49077i) & ~(~vec3<i32>(-57689i, arg_0.b, -2844i))) << (vec3<u32>(arg_0.a.a.x, 0u, _wgslsmith_mult_u32(arg_0.a.a.x, 0u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(abs(arg_0.b), ~(-53160i) | arg_0.b, 1i ^ arg_0.b), vec3<i32>(u_input.b.x, countOneBits(19831i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_0.b, arg_0.b, -17529i), -1i))));
    var_0 = vec4<bool>(!all(!select(var_0.yw, var_0.wz, true)), !func_2(select(var_0.zw, var_0.wz, !var_0.yz)), select(all(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x))), var_0.x || all(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, false), true)), !(~arg_0.a.a.x > _wgslsmith_clamp_u32(0u, u_input.c.x, 45446u))), select(all(vec3<bool>(func_2(vec2<bool>(true, var_0.x)), true, arg_0.c.x <= arg_0.a.b.x)), false, all(!select(var_0.yxw, vec3<bool>(true, false, var_0.x), var_0.xyx))));
    var var_3 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.b.x)) - _wgslsmith_f_op_f32(268f * 1084f))))));
    return Struct_4(~firstLeadingBit(firstLeadingBit(u_input.d)), u_input.d.wx, -2748f, func_3(func_1(Struct_5(func_1(Struct_5(Struct_2(vec4<u32>(65432u, arg_0.a.a.x, 1766u, arg_0.a.a.x), arg_0.a.b, arg_0.a.c), 12344i, vec2<f32>(-1639f, arg_0.a.c.a)), arg_0.c.x), arg_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -969f) - _wgslsmith_f_op_f32(exp2(arg_0.a.c.a)))).c).x, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_5(func_1(Struct_5(Struct_2(vec4<u32>(0u, u_input.d.x, 1u, 2222u), vec2<f32>(277f, -294f), Struct_1(-201f)), ~u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, -451f))), -299f), 1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(224f, -967f), vec2<f32>(1222f, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-601f, -661f))), func_1(global2[_wgslsmith_index_u32(u_input.c.x & 32978u, 30u)], _wgslsmith_f_op_f32(1029f * 1000f)).b, vec2<bool>(true, true)))));
    var_0 = Struct_4(vec4<u32>(_wgslsmith_mult_u32(~firstLeadingBit(1u), var_0.a.x), 23427u, 0u, 52333u), ~vec2<u32>(abs(45354u) << (_wgslsmith_clamp_u32(u_input.d.x, 0u, 16209u) % 32u), var_0.e), _wgslsmith_f_op_f32(abs(-637f)), _wgslsmith_add_u32(func_3(func_1(Struct_5(Struct_2(u_input.d, vec2<f32>(var_0.c, -444f), Struct_1(1939f)), 2147483647i, vec2<f32>(var_0.c, 636f)), _wgslsmith_f_op_f32(select(-791f, -268f, true))).c).x, ~(func_4(vec3<bool>(false, true, false), vec2<bool>(false, true)).a << ((8449u & var_0.d) % 32u))), _wgslsmith_dot_vec4_u32(func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.a.wzw, u_input.d.xyx), 30u)]).a, _wgslsmith_mod_vec4_u32(~func_5(Struct_5(Struct_2(u_input.d, vec2<f32>(var_0.c, var_0.c), Struct_1(var_0.c)), -35811i, vec2<f32>(var_0.c, 1000f))).a, firstLeadingBit(vec4<u32>(u_input.c.x, 14711u, u_input.c.x, 76774u)))));
    var var_1 = Struct_3(func_5(global2[_wgslsmith_index_u32(select(u_input.c.x, var_0.d, true), 30u)]).b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, -467f, var_0.c))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c, -1453f, var_0.c))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(535f, var_0.c, var_0.c))))));
    global1 = array<vec2<i32>, 9>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2089f, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -627f), func_5(global2[_wgslsmith_index_u32(var_1.a << (1u % 32u), 30u)]).c))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c * var_0.c), _wgslsmith_f_op_f32(var_1.b.x + var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1268f, 1000f)) + var_1.b.x), var_1.b.x, var_0.c) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_0.c, var_1.b.x, var_1.b.x) * vec4<f32>(var_0.c, 2973f, var_0.c, var_0.c))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(275f, var_1.b.x, var_0.c, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, -209f, var_0.c, 355f))))));
    var var_3 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~(~u_input.d.wz), u_input.c), vec2<u32>(reverseBits(0u), abs(var_1.a)) & u_input.c);
    var var_4 = any(select(vec4<bool>(!func_2(vec2<bool>(true, false)), select(true, true, true), func_2(vec2<bool>(true, true)), true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), true), vec4<bool>(any(vec4<bool>(true, true, false, true)), select(true, false, true), false, true), !(u_input.c.x <= var_3.x)), vec4<bool>((u_input.a != -45792i) & true, func_5(Struct_5(Struct_2(u_input.d, vec2<f32>(var_1.b.x, var_1.b.x), Struct_1(-612f)), 1i, var_1.b.zy)).a.x <= 1u, true, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)))));
    var var_5 = any(vec3<bool>(all(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), 0u >= var_0.d)), true));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<i32>(_wgslsmith_clamp_i32(u_input.a, firstLeadingBit(u_input.a), u_input.a) | u_input.b.x, reverseBits(u_input.b.x) >> ((0u << (~u_input.c.x % 32u)) % 32u), max(-u_input.a, _wgslsmith_div_i32(u_input.b.x, u_input.b.x) << (_wgslsmith_clamp_u32(var_0.b.x, 1u, var_1.a) % 32u))));
}

