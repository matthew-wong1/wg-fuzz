struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_4, arg_3: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_4(arg_2.a);
    let var_2 = !(!var_1.a.b.e.x);
    let var_3 = abs(vec3<u32>(_wgslsmith_clamp_u32(4157u & ~arg_2.a.b.b, u_input.b, arg_3.c), min(abs(~93768u), var_1.a.b.b & reverseBits(var_1.a.b.c)), min(u_input.a.x, ~max(4294967295u, 1u))));
    var var_4 = _wgslsmith_f_op_f32(exp2(var_1.a.a));
    return u_input.a.x < var_1.a.b.c;
}

fn func_2() -> u32 {
    global0 = array<Struct_4, 15>();
    let var_0 = !vec2<bool>(true, func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(723f, -993f, -1979f))))), 1i, Struct_4(Struct_2(-371f, Struct_1(vec3<bool>(true, true, true), 1u, 4294967295u, 1i, vec3<bool>(true, false, false)), vec4<i32>(0i, u_input.d.x, -1i, 0i), vec4<i32>(u_input.c, u_input.d.x, 37639i, u_input.c), vec3<i32>(u_input.d.x, 1i, 2147483647i))), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.a.x, u_input.b)), -50722i, vec3<bool>(true, true, true))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(69812u, ~u_input.a.x, abs(reverseBits(reverseBits(u_input.b)))), 15u)];
    var var_2 = ~select(var_1.a.c.wz >> (vec2<u32>(~36989u, var_1.a.b.b) % vec2<u32>(32u)), ~firstTrailingBit(firstTrailingBit(vec2<i32>(2147483647i, 1i))), true);
    global0 = array<Struct_4, 15>();
    return _wgslsmith_add_u32(var_1.a.b.c, select(select(~u_input.a.x | ~4294967295u, u_input.a.x, all(select(var_1.a.b.e.yx, var_0, var_0.x))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_1.a.b.b, var_1.a.b.c), u_input.a), ~u_input.a), ~(4294967295u << (var_1.a.b.c % 32u))), _wgslsmith_f_op_f32(var_1.a.a * _wgslsmith_f_op_f32(1695f * 513f)) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1247f)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_2(724f, Struct_1(!arg_1.a, abs(u_input.b), arg_0.x, 67150i, select(vec3<bool>(true, true, !arg_2.b.a.x), select(select(vec3<bool>(arg_2.b.a.x, false, arg_2.b.a.x), arg_2.b.a, arg_1.e), !vec3<bool>(false, arg_1.e.x, true), true), !arg_1.a.x)), _wgslsmith_div_vec4_i32(~(~(~vec4<i32>(0i, arg_1.d, arg_2.b.d, -1i))), _wgslsmith_sub_vec4_i32(~(vec4<i32>(9688i, -45229i, -25099i, u_input.d.x) | vec4<i32>(arg_1.d, 1229i, arg_2.b.d, 2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.d.x, 17270i, -2147483647i), ~vec4<i32>(u_input.d.x, u_input.c, arg_1.d, u_input.d.x)))), vec4<i32>(arg_1.d ^ u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.d, arg_1.d), -1i), arg_1.d), 2147483647i, arg_2.b.d), -vec3<i32>(-2147483647i, reverseBits(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, arg_1.d, 6673i, 62370i), vec4<i32>(u_input.d.x, arg_2.b.d, -51046i, -2147483647i)) << (_wgslsmith_clamp_u32(2486u, arg_0.x, arg_0.x) % 32u)));
    let var_1 = -countOneBits(_wgslsmith_add_vec2_i32(var_0.c.wy, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.d, u_input.c) >> (arg_0 % vec2<u32>(32u)), vec2<i32>(0i, 77185i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, var_0.a), vec2<f32>(1094f, var_0.a))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, -561f))), vec2<f32>(var_0.a, 2179f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-638f, _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, 658f))))))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, var_2.x, -812f, var_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(var_2.x * -2396f), var_0.a, var_0.a, _wgslsmith_f_op_f32(floor(-1285f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 741f, 1085f, -1433f)))), vec4<f32>(var_0.a, -1322f, _wgslsmith_f_op_f32(select(890f, var_0.a, var_0.b.a.x)), var_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_div_f32(var_0.a, -1148f), _wgslsmith_div_f32(var_2.x, var_0.a), _wgslsmith_f_op_f32(-2053f * var_2.x)))));
    var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_3.x)))), _wgslsmith_div_f32(-1990f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a, var_3.x), 1f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-331f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-208f * _wgslsmith_f_op_f32(var_2.x + 1419f)))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f + var_2.x)) * _wgslsmith_f_op_f32(sign(-399f))))));
    return Struct_2(var_0.a, arg_2.b, (vec4<i32>(1i, var_1.x, -49377i, 19027i) >> (vec4<u32>(96734u, 43603u, 1u, ~u_input.b) % vec4<u32>(32u))) & var_0.d, var_0.c, var_0.e);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = vec4<u32>(arg_0.b.c, arg_0.b.b, ~0u, func_4(vec2<u32>(30980u, 4294967295u), Struct_1(vec3<bool>(arg_0.b.e.x, arg_0.b.e.x, arg_0.b.a.x), u_input.a.x, 1u, arg_1.x, arg_0.b.a), Struct_3(u_input.b, arg_0.b)).b.c & 4294967295u) | vec4<u32>(~26068u, 4294967295u, 102221u, 4294967295u);
    var var_1 = Struct_1(vec3<bool>(false, true, true && (arg_0.a < _wgslsmith_div_f32(arg_0.a, -656f))), reverseBits(max(1u, min(abs(u_input.b), 1u))), arg_0.b.c, ~2147483647i, select(!(!vec3<bool>(arg_0.b.a.x, false, arg_0.b.e.x)), vec3<bool>(true, all(select(vec4<bool>(arg_0.b.a.x, arg_0.b.e.x, true, arg_0.b.a.x), vec4<bool>(true, false, true, arg_0.b.e.x), arg_0.b.e.x)), arg_0.b.a.x), true));
    global0 = array<Struct_4, 15>();
    var var_2 = vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.b, var_0.x), u_input.a), u_input.a), vec2<u32>(40838u, 37216u))) << ((~vec2<u32>(min(var_0.x, 49466u), arg_0.b.c << (61944u % 32u)) | reverseBits(max(~u_input.a, vec2<u32>(4294967295u, 4294967295u)))) % vec2<u32>(32u));
    let var_3 = 15993u;
    return Struct_4(func_4(vec2<u32>(var_3, ~(var_2.x << (10272u % 32u))), Struct_1(func_4(var_0.xw, arg_0.b, Struct_3(4294967295u, arg_0.b)).b.a, 106835u, 0u, u_input.c, vec3<bool>(all(vec4<bool>(arg_0.b.e.x, false, false, false)), false || arg_0.b.e.x, true)), Struct_3(~(u_input.b | var_1.b), func_4(u_input.a, func_4(vec2<u32>(var_3, 7349u), arg_0.b, Struct_3(var_3, Struct_1(vec3<bool>(false, var_1.a.x, true), u_input.a.x, var_0.x, 5076i, vec3<bool>(true, var_1.a.x, var_1.e.x)))).b, Struct_3(var_3, Struct_1(var_1.a, var_2.x, var_2.x, -6386i, var_1.a))).b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(1626f, _wgslsmith_f_op_f32(277f - arg_0.x), -(reverseBits(u_input.c) | min(u_input.c, -19883i)) >= select(u_input.d.x, min(~1i, -1i), false)));
    global0 = array<Struct_4, 15>();
    var var_1 = func_5(func_4(u_input.a, Struct_1(vec3<bool>(true, true, false), _wgslsmith_dot_vec3_u32(arg_1, arg_1) & u_input.a.x, func_2(), u_input.d.x, vec3<bool>(true, true, true)), Struct_3(1u, Struct_1(vec3<bool>(true, true, true), u_input.b >> (69839u % 32u), firstTrailingBit(0u), u_input.c, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)))), func_4(~arg_1.xx, Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), abs(u_input.b), 0u << (1u % 32u), 0i, vec3<bool>(true, true, true)), Struct_3(~(arg_1.x >> (0u % 32u)), Struct_1(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), abs(u_input.a.x), _wgslsmith_mult_u32(4294967295u, 1u), reverseBits(0i), vec3<bool>(true, true, true)))).d);
    var_1 = func_5(var_1.a, var_1.a.d >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(15053u, 0u, 15693u, var_1.a.b.b) & vec4<u32>(41933u, 15650u, arg_1.x, arg_1.x), countOneBits(vec4<u32>(26620u, arg_1.x, 1u, u_input.b)), !var_1.a.b.a.x), max(firstTrailingBit(vec4<u32>(69448u, arg_1.x, arg_1.x, 4294967295u)), vec4<u32>(u_input.b, 4294967295u, var_1.a.b.c, 1u))) % vec4<u32>(32u)));
    var var_2 = 104054u;
    return Struct_1(var_1.a.b.e, ~var_1.a.b.b, _wgslsmith_div_u32(47410u, 34520u >> (u_input.a.x % 32u)), -_wgslsmith_mult_i32(u_input.d.x, u_input.c), select(var_1.a.b.e, !select(vec3<bool>(false, var_1.a.b.e.x, var_1.a.b.a.x), !var_1.a.b.a, var_1.a.b.e), all(func_5(func_5(Struct_2(var_0, var_1.a.b, vec4<i32>(-51247i, u_input.d.x, -28807i, var_1.a.b.d), var_1.a.c, vec3<i32>(-40675i, u_input.c, var_1.a.d.x)), vec4<i32>(var_1.a.b.d, var_1.a.e.x, -13999i, u_input.c)).a, abs(vec4<i32>(var_1.a.b.d, var_1.a.e.x, var_1.a.b.d, var_1.a.b.d))).a.b.a.xy)));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = arg_0.b.e.x;
    var var_1 = _wgslsmith_div_f32(1293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1055f, _wgslsmith_f_op_f32(-arg_0.a))) - arg_0.a));
    let var_2 = Struct_4(arg_0);
    return Struct_3(4294967295u, Struct_1(var_2.a.b.a, ~var_2.a.b.c, var_2.a.b.b, reverseBits(1i), !vec3<bool>(true, var_2.a.b.e.x, !arg_0.b.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(_wgslsmith_f_op_f32(1393f * _wgslsmith_f_op_f32(round(1f))), func_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -230f)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 102507u, 2638u), select(vec3<u32>(0u, u_input.a.x, u_input.b), vec3<u32>(54917u, 87001u, 0u), true))), ~max(_wgslsmith_div_vec4_i32(vec4<i32>(-51064i, u_input.c, u_input.d.x, u_input.c), vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x)), ~vec4<i32>(u_input.c, u_input.c, -9041i, u_input.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, -2147483647i) >> (vec4<u32>(0u, u_input.b, 0u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, u_input.c, u_input.c), vec4<i32>(u_input.c, -2147483647i, -51774i, -7268i))), -(~vec4<i32>(1i, -2147483647i, u_input.d.x, -10317i))), firstTrailingBit(vec3<i32>(u_input.d.x, ~(-39201i), ~u_input.d.x))), ~(~u_input.a.x));
    global0 = array<Struct_4, 15>();
    let var_1 = func_5(func_5(func_5(func_5(func_4(u_input.a, Struct_1(var_0.b.e, var_0.b.c, var_0.a, 19816i, var_0.b.a), Struct_3(var_0.a, Struct_1(var_0.b.a, 40709u, 1u, 8572i, var_0.b.e))), vec4<i32>(var_0.b.d, u_input.c, 2147483647i, var_0.b.d)).a, abs(firstTrailingBit(vec4<i32>(0i, -1i, -26756i, 0i)))).a, vec4<i32>(-1i) * -select(vec4<i32>(var_0.b.d, u_input.d.x, u_input.c, u_input.d.x), vec4<i32>(-29741i, var_0.b.d, var_0.b.d, u_input.c), vec4<bool>(false, var_0.b.e.x, true, var_0.b.e.x))).a, vec4<i32>(-1i, 2147483647i, select(countOneBits(-6962i), -1i, !all(var_0.b.e)), var_0.b.d)).a;
    var var_2 = false;
    let var_3 = firstLeadingBit(var_1.c.wxy);
    var_2 = !(!(!func_4(~u_input.a, Struct_1(vec3<bool>(false, var_1.b.a.x, var_0.b.e.x), var_0.b.b, 0u, var_0.b.d, var_0.b.e), func_6(var_1, var_0.b.c)).b.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-376f)), var_1.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))), var_1.a, _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(round(var_1.a))))));
}

