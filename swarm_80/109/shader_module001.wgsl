struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1543f, -1487f) - _wgslsmith_f_op_f32(-2090f - 1207f)), 4294967295u, ~(-2147483647i)), !any(vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(276f - 908f), -312f, -993f, _wgslsmith_f_op_f32(833f + 228f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-862f, -473f, 375f, -767f)))), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), -921f, ~u_input.a & ~1u, i32(-1i) * -1442i)));
    let var_1 = Struct_1(var_0.a.a.a, 1733f, ~0u, reverseBits(u_input.c));
    global0 = array<vec3<u32>, 6>();
    var_0 = Struct_3(var_0.a);
    var var_2 = var_0.a.b;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.c.yy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.c.xx * var_0.a.c.yw)), var_0.a.c.wz))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global0 = array<vec3<u32>, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1031f, 970f), vec2<f32>(-1000f, -189f))))))));
    global0 = array<vec3<u32>, 6>();
    var_0 = vec2<f32>(1611f, _wgslsmith_f_op_f32(select(-2436f, _wgslsmith_f_op_f32(-1f), 0u < ((4294967295u >> (1u % 32u)) << (u_input.a % 32u)))));
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(countOneBits(reverseBits(u_input.a)), 0u), ~abs(~vec2<u32>(14614u, 0u)) >> (_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u)));
    return Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), 422f, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_add_u32(21054u, u_input.a)), _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(2147483647i, ~1i, -39902i))), any(vec2<bool>(abs(-4541i) >= _wgslsmith_mult_i32(u_input.b, u_input.c), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(902f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, 995f, var_0.x, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, var_0.x, var_0.x, var_0.x))), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1890f, 496f), _wgslsmith_f_op_f32(trunc(1818f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f + -730f)))), select(false, true, true) && (true && all(vec3<bool>(false, true, false))), Struct_1(vec2<bool>(true, true), -1226f, _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(2303u, ~77115u)), _wgslsmith_add_i32(u_input.c, ~arg_0)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_3 {
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    var var_0 = func_2(0i);
    var_0 = func_2(-1i | min(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_2.xx), ~vec2<i32>(var_0.e.d, arg_2.x)), u_input.b << (_wgslsmith_mod_u32(arg_0.a.a.c, 4294967295u) % 32u)));
    var_0 = Struct_2(func_2(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(159i, 0i, -16066i, arg_0.a.a.d)), vec4<i32>(1i, -1i, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_0.a.a.d, 0i, u_input.c)), _wgslsmith_div_i32(-6047i, u_input.c)))).e, all(select(vec4<bool>(false, var_0.b, arg_0.a.a.a.x, true), select(vec4<bool>(true, false, var_0.d, var_0.e.a.x), vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(true, arg_0.a.d, arg_0.a.d, arg_1.x)), arg_0.a.e.a.x)) & true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b, arg_0.a.a.b, arg_0.a.e.b, var_0.e.b)), true, func_2(select(var_0.a.d, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.e.d), arg_2.yy), u_input.a > var_0.a.c)).a);
    return Struct_3(func_2(u_input.c));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<u32>, 6>();
    var var_0 = func_4(Struct_3(func_2(~_wgslsmith_mod_i32(1i, -48817i))), func_2(_wgslsmith_sub_i32(u_input.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c >> (u_input.a % 32u)))).a.a, vec3<i32>(firstLeadingBit(25368i), 67956i, ~10421i) >> ((~global0[_wgslsmith_index_u32(~62684u, 6u)] & global0[_wgslsmith_index_u32(0u, 6u)]) % vec3<u32>(32u)));
    var_0 = func_4(func_4(Struct_3(var_0.a), !var_0.a.e.a, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-43328i, var_0.a.a.d, -1i) | vec3<i32>(0i, -1i, u_input.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(-58i, var_0.a.a.d, 2147483647i), vec3<i32>(var_0.a.a.d, -18369i, var_0.a.e.d), vec3<i32>(-3539i, var_0.a.e.d, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.d, u_input.c, var_0.a.a.d), vec3<i32>(-2147483647i, -38814i, u_input.b))), ~abs(vec3<i32>(1i, 3982i, 0i)))), var_0.a.e.a, -((~vec3<i32>(u_input.b, var_0.a.e.d, var_0.a.a.d) >> (_wgslsmith_div_vec3_u32(vec3<u32>(34903u, 0u, u_input.a), vec3<u32>(5355u, var_0.a.a.c, var_0.a.a.c)) % vec3<u32>(32u))) ^ ~(~vec3<i32>(var_0.a.a.d, -7304i, var_0.a.a.d))));
    global0 = array<vec3<u32>, 6>();
    var var_1 = Struct_1(!(!(!var_0.a.a.a)), _wgslsmith_f_op_f32(ceil(-807f)), (u_input.a & u_input.a) ^ 1u, -var_0.a.a.d);
    return Struct_1(var_0.a.e.a, 1482f, u_input.a, ~2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<vec3<u32>, 6>();
    var var_0 = func_4(func_4(Struct_3(Struct_2(func_2(0i).a, !arg_0.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, arg_0.b, arg_0.b, -1366f)), arg_0.a.x, arg_0)), func_2(-arg_0.d).a.a, reverseBits(firstTrailingBit(vec3<i32>(u_input.c, arg_0.d, 0i) | vec3<i32>(arg_0.d, -2147483647i, 2147483647i)))), arg_0.a, ~((~vec3<i32>(u_input.c, 0i, 158i) << (_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(1u, 6u)], vec3<u32>(8700u, 4294967295u, 9150u)) % vec3<u32>(32u))) << (global0[_wgslsmith_index_u32(min(arg_1.x | u_input.a, 0u), 6u)] % vec3<u32>(32u)))).a;
    var_0 = Struct_2(func_2(firstTrailingBit(arg_0.d)).e, func_1().a.x, _wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(sign(var_0.c))), any(!(!vec4<bool>(true, arg_0.a.x, false, arg_0.a.x))), var_0.e);
    let var_1 = !(!(false & !any(vec3<bool>(arg_0.a.x, true, arg_0.a.x))));
    var_0 = Struct_2(arg_0, arg_0.a.x, _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_4(Struct_3(Struct_2(Struct_1(arg_0.a, var_0.c.x, 0u, arg_0.d), false, var_0.c, false, Struct_1(arg_0.a, var_0.e.b, 1867u, u_input.b))), var_0.a.a, vec3<i32>(arg_0.d, -3678i, u_input.b)).a.a.b, var_0.c.x, 1387f, _wgslsmith_f_op_f32(arg_0.b + -1000f)), vec4<f32>(-262f, arg_0.b, arg_0.b, _wgslsmith_f_op_f32(285f + arg_0.b)), true))), true, Struct_1(vec2<bool>(var_0.d, any(!vec3<bool>(false, var_1, true))), _wgslsmith_f_op_f32(-arg_0.b), ~56421u, func_4(Struct_3(Struct_2(var_0.a, false, var_0.c, arg_0.a.x, Struct_1(arg_0.a, arg_0.b, 53803u, u_input.c))), !func_1().a, countOneBits(vec3<i32>(26545i, -9995i, arg_0.d))).a.a.d));
    return func_2(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(-2147483647i, var_0.a.d, arg_0.d, u_input.c)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.d, -1i, -1i, u_input.b), vec4<i32>(-2147483647i, var_0.e.d, u_input.c, arg_0.d)), vec4<i32>(0i, 2147483647i, 1i, var_0.a.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 6>();
    let var_0 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true), true);
    global0 = array<vec3<u32>, 6>();
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(11418u), 6u)];
    global0 = array<vec3<u32>, 6>();
    var var_2 = func_5(func_1(), ~var_1.zy >> (vec2<u32>(1u ^ ~var_1.x, ~max(10447u, 0u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(59332u, var_1.x, 66442u), global0[_wgslsmith_index_u32(min(u_input.a, u_input.a), 6u)]), var_1.x), 4294967295u, var_2.e.d, var_2.c, vec4<f32>(func_2(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b, -33485i, 64141i), -var_2.e.d)).c.x, 885f, _wgslsmith_f_op_f32(-359f + var_2.e.b), _wgslsmith_f_op_f32(var_2.c.x * -183f)));
}

