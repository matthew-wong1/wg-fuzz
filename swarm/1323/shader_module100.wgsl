struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<u32>(arg_0.a.x, 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-712f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1285f, 401f)) + _wgslsmith_f_op_vec2_f32(arg_1.b - vec2<f32>(602f, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(arg_1.a.x, 19u)])) - arg_1.b)))), vec3<i32>(-1i) * -arg_1.c);
    let var_1 = min(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(var_0.c.x), 40537i), -_wgslsmith_mod_vec2_i32(vec2<i32>(6601i, arg_1.c.x), vec2<i32>(arg_0.c.x, arg_1.c.x))), _wgslsmith_mult_i32(~(~(arg_0.c.x >> (90979u % 32u))), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0.c.zx, vec2<i32>(0i, -1i)), -2147483647i), var_0.c.x)));
    let var_2 = arg_1;
    var var_3 = Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x)), var_2.b))), vec3<i32>(-2147483647i, var_2.c.x, -min(-1483i, var_1)));
    let var_4 = firstTrailingBit(~vec3<u32>(var_3.a.x, 1u, _wgslsmith_div_u32(33684u, var_2.a.x))) | reverseBits(vec3<u32>(~4294967295u, 35314u, ~var_2.a.x));
    return select(-firstLeadingBit(countOneBits(var_1)), max(arg_1.c.x, var_0.c.x), true);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = ~(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 26675u, 16997u, 44630u), vec4<u32>(54117u, 45646u, arg_1.a.x, 0u)), _wgslsmith_mult_u32(0u, arg_0.a.x)) & firstTrailingBit(max(_wgslsmith_clamp_u32(arg_1.a.x, arg_1.a.x, u_input.b), arg_1.a.x)));
    let var_1 = arg_1;
    var var_2 = -1i;
    var_2 = func_3(var_1, arg_0);
    var var_3 = ~(~vec3<u32>(~select(1u, 18126u, true), arg_1.a.x, u_input.b));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-544f)) - arg_1.b.x), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(max(var_1.b.x, -2430f))), _wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x) * vec3<f32>(540f, arg_1.b.x, 510f)));
}

fn func_4(arg_0: vec3<f32>) -> bool {
    global1 = func_3(Struct_1(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(u_input.b, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 19397u), vec2<u32>(57984u, 4294967295u))) >> (~vec2<u32>(10687u, u_input.c) % vec2<u32>(32u)), vec2<f32>(arg_0.x, arg_0.x), -vec3<i32>(1i, 1i, 1i)), Struct_1(vec2<u32>(~u_input.a & _wgslsmith_add_u32(10517u, 52073u), 1u), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(31316i, 0i, 2147483647i), vec3<i32>(-42841i, -15923i, -1i))));
    global1 = _wgslsmith_div_i32(-(_wgslsmith_mult_i32(firstTrailingBit(33342i), -1326i) | -(i32(-1i) * -1i)), 1i);
    var var_0 = u_input.a;
    global1 = ~(-42595i | _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -85005i), -41520i, -firstLeadingBit(1i)));
    var var_1 = max(~select(vec2<u32>(44981u, 0u) << (vec2<u32>(u_input.c, u_input.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 84542u), vec2<u32>(1u, u_input.a)), vec2<bool>(false, true)) << (select(abs(vec2<u32>(u_input.a, 1u)) & ~vec2<u32>(4294967295u, u_input.c), firstLeadingBit(~vec2<u32>(20547u, 25636u)), 1u != u_input.c) % vec2<u32>(32u)), ~firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, u_input.c), abs(vec2<u32>(0u, u_input.c)))));
    return all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~9451u;
    var_0 = firstLeadingBit(~(u_input.c ^ 0u));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(abs(vec2<u32>(1u, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 874f) - global0[_wgslsmith_index_u32(u_input.c, 19u)]), ~vec3<i32>(2147483647i, -91182i, -42321i)), Struct_1(vec2<u32>(48083u, u_input.c) << (vec2<u32>(60810u, 30974u) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(3355f, 1300f), vec2<f32>(2262f, 1000f)), _wgslsmith_add_vec3_i32(vec3<i32>(-19112i, -1i, -2147483647i), vec3<i32>(13661i, -1i, 43690i))))))));
    var var_2 = Struct_1(~(~vec2<u32>(1u, u_input.c) | vec2<u32>(71302u ^ u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 28214u, 12681u), vec3<u32>(u_input.c, u_input.a, u_input.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-403f + -1328f), 387f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-331f, -1430f), _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(u_input.c, 19u)]))))))), vec3<i32>(min(select(0i, -52411i, var_1), 1i) & -18739i, -2147483647i, -6204i));
    var var_3 = Struct_1(firstTrailingBit(max(var_2.a, vec2<u32>(_wgslsmith_mult_u32(0u, var_2.a.x), select(1u, var_2.a.x, false)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(select(vec2<u32>(u_input.a, 7306u), vec2<u32>(u_input.a, u_input.c), var_1), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.b.x, 1291f))), _wgslsmith_mod_vec3_i32(var_2.c, var_2.c)), Struct_1(vec2<u32>(0u, 0u), global0[_wgslsmith_index_u32(34932u, 19u)], var_2.c))).zx)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.c, var_2.c >> (vec3<u32>(1u, var_2.a.x, u_input.c) % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(var_2.c, var_2.c, vec3<i32>(1i, var_2.c.x, var_2.c.x))) & -max(~vec3<i32>(var_2.c.x, 11807i, var_2.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c.x, -16512i, var_2.c.x), var_2.c)));
    return Struct_1(var_3.a << (_wgslsmith_mult_vec2_u32(vec2<u32>(~8268u, _wgslsmith_clamp_u32(u_input.b, 0u, var_2.a.x)), countOneBits(_wgslsmith_add_vec2_u32(var_3.a, vec2<u32>(11717u, var_3.a.x)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_2.a, vec2<f32>(var_3.b.x, var_3.b.x), var_2.c), Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-330f, var_3.b.x))), _wgslsmith_div_vec3_i32(vec3<i32>(18430i, 70411i, var_3.c.x), var_2.c)))).xy), firstTrailingBit(var_2.c & reverseBits(var_3.c)));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = ~(vec4<u32>(_wgslsmith_add_u32(min(1u, 45120u), 51089u), 21450u, 70890u, 4294967295u) & vec4<u32>(arg_0.a.x, max(u_input.b ^ u_input.c, 1u | arg_0.a.x), ~arg_0.a.x ^ u_input.a, 10436u << (~u_input.c % 32u)));
    var var_1 = -firstTrailingBit(firstLeadingBit(i32(-1i) * -arg_0.c.x));
    global1 = arg_0.c.x;
    global0 = array<vec2<f32>, 19>();
    let var_2 = -arg_0.c.x;
    return StorageBuffer(~(~arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1());
}

