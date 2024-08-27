struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-37152i, 0i, 19582i, 1i, -1i, -28600i, 13768i, 0i, 61341i);

var<private> global1: f32;

var<private> global2: i32 = -1i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    global1 = _wgslsmith_f_op_f32(floor(841f));
    let var_0 = vec2<bool>(arg_0.b, arg_1.e.a);
    global2 = -44922i;
    var var_1 = !vec4<bool>(all(vec4<bool>(arg_1.a.a, arg_1.e.a, any(vec4<bool>(false, var_0.x, true, true)), arg_1.c.a && arg_0.b)), select(!select(var_0.x, false, var_0.x), all(select(vec2<bool>(arg_1.c.a, arg_0.b), var_0, vec2<bool>(true, arg_1.a.a))), !arg_1.e.a), true, arg_0.b);
    let var_2 = vec3<u32>(u_input.d.x, u_input.b, ~(~(abs(6376u) | (arg_1.d << (arg_1.d % 32u)))));
    return !(!(-28265i < min(-21001i, u_input.a))) & var_0.x;
}

fn func_2() -> u32 {
    var var_0 = select(vec3<bool>(false, all(vec2<bool>(true, true)), ~abs(4294967295u) < firstTrailingBit(u_input.b)), vec3<bool>(!func_3(Struct_3(Struct_1(true), false), Struct_2(Struct_1(true), 28653i, Struct_1(true), 31068u, Struct_1(true))), all(vec2<bool>(true, true)), true || all(vec3<bool>(true, true, true))), vec3<bool>(true, !(u_input.b != u_input.d.x) != !(u_input.b > 0u), !((1i >> (1u % 32u)) < _wgslsmith_add_i32(u_input.a, 4388i))));
    global0 = array<i32, 9>();
    var var_1 = Struct_3(Struct_1(false), u_input.d.x != 9072u);
    var var_2 = var_1.a;
    let var_3 = u_input.b << (u_input.b % 32u);
    return ~1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    return Struct_4(arg_3.a, 1u, select(arg_3.c, arg_3.c, _wgslsmith_div_f32(527f, arg_2) <= -753f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, ~arg_0.x, abs(33683u)), vec3<u32>(2853u, _wgslsmith_mod_u32(arg_0.x, arg_0.x), ~36192u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 108868u, 67685u), vec3<u32>(0u, arg_0.x, arg_0.x)))), arg_0.xww << (~(~vec3<u32>(70045u, u_input.b, u_input.d.x)) % vec3<u32>(32u))), 9u)], ~arg_3.e);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1037f * -391f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1333f + 370f) - _wgslsmith_f_op_f32(floor(-671f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1595f, 1550f, -1055f, -161f) * vec4<f32>(613f, -1018f, -281f, 1351f)))))));
    var_0 = vec4<f32>(-155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1044f - var_0.x))) * _wgslsmith_div_f32(var_0.x, -992f))), var_0.x, -951f);
    global2 = _wgslsmith_dot_vec3_i32(abs(-(-arg_0.e.zyw >> (_wgslsmith_div_vec3_u32(vec3<u32>(6406u, 32420u, arg_0.a.d), vec3<u32>(4294967295u, arg_0.b, u_input.d.x)) % vec3<u32>(32u)))), -(~vec3<i32>(max(u_input.a, global0[_wgslsmith_index_u32(126752u, 9u)]), _wgslsmith_mod_i32(u_input.c, global0[_wgslsmith_index_u32(1u, 9u)]), -7767i)));
    let var_1 = func_4(vec4<u32>(~arg_0.b, u_input.b, func_2(), ~(~arg_0.a.d | arg_0.a.d)), Struct_3(arg_0.a.e, !((var_0.x < 810f) & arg_0.c.x)), var_0.x, func_4(vec4<u32>(~u_input.d.x, reverseBits(u_input.d.x), 1u, 1u) ^ vec4<u32>(0u, arg_0.a.d, max(arg_0.b, u_input.b), ~1u), Struct_3(arg_0.a.c, arg_1.x), _wgslsmith_f_op_f32(900f - var_0.x), arg_0)).a;
    var var_2 = _wgslsmith_div_vec2_u32(u_input.d, u_input.d >> (u_input.d % vec2<u32>(32u)));
    return func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 0u, 1u), vec3<u32>(arg_0.b, 4294967295u, var_2.x)), var_1.d, ~4294967295u), abs(~vec3<u32>(93u, 0u, 55997u))), 4294967295u, var_1.d, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.b & u_input.b, var_2.x, var_2.x ^ 1u), ~(u_input.b & 65077u))), Struct_3(Struct_1(any(!vec2<bool>(arg_0.c.x, false))), select(_wgslsmith_mult_u32(var_2.x, u_input.d.x) < 54680u, arg_1.x, !arg_0.a.a.a)), 1725f, arg_0);
}

fn func_1() -> vec2<bool> {
    let var_0 = func_5(func_4(firstTrailingBit(vec4<u32>(min(u_input.b, u_input.d.x), u_input.d.x, 1u, func_2())), Struct_3(Struct_1(true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), -145f, Struct_4(Struct_2(Struct_1(true), ~(-9557i), Struct_1(false), ~21653u, Struct_1(false)), u_input.d.x, !select(vec2<bool>(false, true), vec2<bool>(false, false), false), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, -2147483647i) | vec3<i32>(-2147483647i, u_input.a, 0i), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 9u)], -12272i, global0[_wgslsmith_index_u32(u_input.b, 9u)])), max(~vec4<i32>(18277i, u_input.c, 10542i, global0[_wgslsmith_index_u32(4294967295u, 9u)]), -vec4<i32>(0i, global0[_wgslsmith_index_u32(62795u, 9u)], 25634i, global0[_wgslsmith_index_u32(u_input.b, 9u)])))), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), -2147483647i > _wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 9u)]), true, true), vec4<bool>(true, true, true, true), !(!all(vec2<bool>(false, true)))));
    global2 = ~2147483647i;
    let var_1 = ~vec3<i32>(-2147483647i, -u_input.c, 19507i);
    let var_2 = Struct_2(Struct_1((true && var_0.c.x) | true), -28369i, Struct_1(!(!any(vec3<bool>(var_0.c.x, var_0.a.c.a, var_0.a.e.a)))), ~_wgslsmith_mod_u32(4294967295u, u_input.b), Struct_1(select(!all(vec3<bool>(false, false, true)), any(vec3<bool>(true, var_0.a.a.a, var_0.c.x)), true)));
    let var_3 = func_5(func_5(var_0, select(vec4<bool>(any(vec2<bool>(true, var_0.c.x)), any(vec4<bool>(var_0.c.x, true, var_2.e.a, var_2.c.a)), false, true), !(!vec4<bool>(true, var_2.e.a, true, true)), select(!vec4<bool>(var_2.c.a, var_2.e.a, var_2.a.a, var_2.c.a), select(vec4<bool>(false, var_0.c.x, true, var_0.c.x), vec4<bool>(var_2.c.a, var_0.a.a.a, false, var_0.a.e.a), var_2.c.a), func_4(vec4<u32>(var_2.d, var_0.b, u_input.d.x, 27957u), Struct_3(var_0.a.c, true), 1888f, Struct_4(Struct_2(var_0.a.c, 12124i, Struct_1(var_0.c.x), var_2.d, Struct_1(var_2.e.a)), 2626u, var_0.c, -49079i, vec4<i32>(1i, global0[_wgslsmith_index_u32(0u, 9u)], var_1.x, 30122i))).a.a.a))), !select(select(vec4<bool>(var_2.a.a, var_2.e.a, var_0.c.x, false), select(vec4<bool>(true, true, var_0.c.x, var_2.c.a), vec4<bool>(var_0.c.x, var_2.c.a, var_2.e.a, false), var_0.c.x), select(vec4<bool>(var_2.c.a, false, var_2.a.a, true), vec4<bool>(false, var_2.c.a, var_0.c.x, var_0.a.c.a), vec4<bool>(true, true, false, var_2.e.a))), vec4<bool>(any(vec2<bool>(true, true)), true, var_2.c.a, var_0.a.a.a), u_input.d.x > ~1u)).c;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -634f;
    let var_0 = Struct_5(Struct_1(any(vec2<bool>(true, true))), select(vec2<bool>(true, true), func_1(), !func_1()), 0u, func_4(~(~(~vec4<u32>(0u, 0u, u_input.d.x, 24032u))), Struct_3(Struct_1(func_4(vec4<u32>(2071u, u_input.b, u_input.d.x, 0u), Struct_3(Struct_1(true), true), -144f, Struct_4(Struct_2(Struct_1(false), global0[_wgslsmith_index_u32(u_input.d.x, 9u)], Struct_1(false), 0u, Struct_1(true)), u_input.d.x, vec2<bool>(false, false), 1i, vec4<i32>(u_input.c, u_input.c, 0i, -2147483647i))).a.a.a), true), _wgslsmith_f_op_f32(f32(-1f) * -997f), Struct_4(Struct_2(Struct_1(false), u_input.a, Struct_1(true), _wgslsmith_mod_u32(1u, u_input.b), func_5(Struct_4(Struct_2(Struct_1(false), global0[_wgslsmith_index_u32(5330u, 9u)], Struct_1(false), 0u, Struct_1(true)), 5558u, vec2<bool>(false, true), -2147483647i, vec4<i32>(2147483647i, 0i, -50074i, 2147483647i)), vec4<bool>(true, true, true, false)).a.c), 4294967295u, vec2<bool>(true, true), min(~u_input.a, ~(-22417i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, 34952i, 1i, 5320i), reverseBits(vec4<i32>(-1i, u_input.a, 13748i, u_input.c))))).a, true);
    let var_1 = func_4(_wgslsmith_mod_vec4_u32(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 61224u, var_0.c, u_input.d.x), vec4<u32>(4294967295u, 4294967295u, 107205u, 76929u)), vec4<u32>(var_0.d.d, 1u, 12340u, 1u)), select(vec4<u32>(u_input.b ^ var_0.c, ~4294967295u, var_0.d.d, var_0.c >> (4294967295u % 32u)), reverseBits(vec4<u32>(4294967295u, u_input.b, 6507u, 0u)), true)), Struct_3(func_5(func_5(Struct_4(Struct_2(Struct_1(false), -2147483647i, var_0.a, 1u, var_0.a), var_0.c, var_0.b, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], vec4<i32>(0i, -1i, -23082i, -2147483647i)), vec4<bool>(true, var_0.a.a, false, false)), select(!vec4<bool>(var_0.e, false, var_0.d.a.a, var_0.b.x), !vec4<bool>(var_0.a.a, false, var_0.e, false), vec4<bool>(var_0.d.e.a, false, var_0.a.a, var_0.e))).a.c, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(315f, -325f)))))), Struct_4(func_5(Struct_4(func_5(Struct_4(var_0.d, var_0.c, vec2<bool>(true, true), u_input.c, vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 9u)], var_0.d.b, global0[_wgslsmith_index_u32(29297u, 9u)])), vec4<bool>(true, true, true, var_0.b.x)).a, _wgslsmith_add_u32(u_input.b, 51047u), vec2<bool>(false, false), reverseBits(global0[_wgslsmith_index_u32(var_0.c, 9u)]), vec4<i32>(-19220i, var_0.d.b, var_0.d.b, 29335i)), vec4<bool>(var_0.d.c.a & var_0.d.c.a, any(vec3<bool>(true, false, true)), false, true)).a, u_input.b, !var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, abs(u_input.a)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.d.d, 9u)]), vec2<i32>(var_0.d.b, -1i)))), abs(min(vec4<i32>(10718i, -1i, u_input.a, 553i), countOneBits(vec4<i32>(0i, u_input.a, u_input.c, global0[_wgslsmith_index_u32(7502u, 9u)])))))).c.x;
    global2 = select(func_5(Struct_4(func_5(Struct_4(Struct_2(var_0.d.e, 49602i, Struct_1(true), 0u, var_0.a), u_input.d.x, vec2<bool>(var_0.a.a, var_1), 26565i, vec4<i32>(43560i, 0i, 2147483647i, -36232i)), !vec4<bool>(var_1, false, false, true)).a, var_0.d.d, !vec2<bool>(var_1, var_0.a.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.d.b, 2065i, u_input.a), select(vec3<i32>(1i, 13970i, -1i), vec3<i32>(1i, 11837i, var_0.d.b), vec3<bool>(var_0.b.x, true, var_1))), vec4<i32>(16745i, 1i, func_4(vec4<u32>(u_input.b, 0u, 8870u, u_input.b), Struct_3(var_0.a, var_1), 2123f, Struct_4(Struct_2(var_0.a, -24801i, Struct_1(true), var_0.c, var_0.d.c), 58027u, var_0.b, u_input.c, vec4<i32>(-10796i, -2147483647i, 2147483647i, -1i))).e.x, firstLeadingBit(var_0.d.b))), !vec4<bool>(func_4(vec4<u32>(u_input.d.x, u_input.b, 3198u, 77156u), Struct_3(Struct_1(var_1), var_0.b.x), 714f, Struct_4(Struct_2(var_0.d.a, -15062i, Struct_1(var_0.e), var_0.d.d, Struct_1(true)), 33181u, vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.d.d, 9u)], vec4<i32>(1i, u_input.c, global0[_wgslsmith_index_u32(0u, 9u)], var_0.d.b))).a.a.a, true, var_0.e, false & var_1)).e.x, 2147483647i, func_1().x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1014f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -290f), -744f))) + _wgslsmith_f_op_f32(step(-164f, _wgslsmith_f_op_f32(-1163f + 588f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(17765u, u_input.b))), _wgslsmith_mod_i32(-var_0.d.b, select(1i, var_0.d.b >> (u_input.b % 32u), false)) ^ countOneBits(u_input.a));
}

