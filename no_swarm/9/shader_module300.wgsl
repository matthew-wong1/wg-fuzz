struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<vec4<bool>, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = array<vec4<bool>, 24>();
    let var_0 = ~(~arg_0);
    global1 = array<vec4<bool>, 24>();
    let var_1 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -6572i, 12406i), vec3<i32>(-1i, var_0, var_0)), -vec3<i32>(var_0, var_0, 19552i)), arg_0, _wgslsmith_clamp_i32(var_0, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(0i, -17716i, -1i) << (vec3<u32>(arg_1, 11436u, arg_1) % vec3<u32>(32u))), var_0)), true);
    var var_2 = vec3<u32>(_wgslsmith_div_u32(abs(~firstTrailingBit(22027u)), 29923u), 0u, ~abs(1u));
    return var_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<bool>(!(!arg_1.b), false, true, arg_1.b);
    let var_1 = vec2<u32>(~(~4294967295u), ~firstLeadingBit(_wgslsmith_sub_u32(19077u ^ u_input.e.x, u_input.c.x & u_input.d.x)));
    global1 = array<vec4<bool>, 24>();
    let var_2 = Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), true);
    var var_3 = func_2(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(max(arg_1.a.xy, vec2<i32>(arg_1.a.x, 2147483647i)), _wgslsmith_mod_vec2_i32(arg_1.a.zx, arg_1.a.xz)), -790i), u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, var_2.b, false)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(473f, 1054f)), 1475f), arg_3.x);
    var_0 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mod_u32(var_0.a, 15124u), ~min(var_0.a, var_0.a), reverseBits(var_0.a)), firstTrailingBit(u_input.e.ywx ^ u_input.c)), _wgslsmith_f_op_f32(trunc(-686f)), true || (((var_0.a >= var_0.a) && (arg_3.x || arg_2.x)) & all(global1[_wgslsmith_index_u32(u_input.e.x, 24u)])));
    var var_1 = Struct_1(~arg_0.a << (countOneBits(~vec3<u32>(0u, 4294967295u, var_0.a)) % vec3<u32>(32u)), true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(600f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1686f + 137f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(arg_3.a.x, arg_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.x, -23327i, arg_3.a.x, arg_1.x), vec4<i32>(arg_2.a.x, 7426i, arg_1.x, arg_1.x))), ~countOneBits(-2147483647i)), u_input.e.x), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_2.a.x, _wgslsmith_mod_i32(-23525i, 6661i)), _wgslsmith_mult_i32(-1i, arg_1.x) << (~56496u % 32u)), func_2(~min(arg_3.a.x, -34473i), _wgslsmith_sub_u32(u_input.b, arg_0.a) & 0u))), vec2<bool>(arg_3.b, all(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 59579u, arg_0.a), 3u)])), select(!select(select(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(arg_0.a, 24u)], arg_0.c), vec4<bool>(false, arg_3.b, true, arg_3.b), arg_3.b), select(vec4<bool>(any(vec3<bool>(false, arg_3.b, arg_3.b)), arg_0.c, arg_0.c, !arg_0.c), vec4<bool>(any(vec4<bool>(false, true, arg_3.b, false)), arg_0.a <= arg_0.a, arg_3.b, false), true | (arg_0.c | true)), global1[_wgslsmith_index_u32(arg_0.a, 24u)])));
    global0 = array<vec3<bool>, 3>();
    let var_1 = arg_0;
    var var_2 = arg_3;
    var var_3 = arg_2.a.x << (26098u % 32u);
    return select(var_1.c, all(global1[_wgslsmith_index_u32(4294967295u, 24u)]), true) || any(vec4<bool>(select(arg_3.b, var_1.c, arg_0.b <= var_1.b), 273f < _wgslsmith_f_op_f32(func_3(-45153i, Struct_1(arg_3.a, false))), arg_2.b, var_2.b));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    global0 = array<vec3<bool>, 3>();
    var var_0 = Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - arg_1)), true);
    let var_1 = arg_2.zy;
    global1 = array<vec4<bool>, 24>();
    var_0 = Struct_2(~_wgslsmith_sub_u32(firstTrailingBit(var_0.a), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(f32(-1f) * -1207f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - 1460f)))), !var_0.c);
    return Struct_1(-max(select(max(vec3<i32>(2147483647i, 1i, 31820i), vec3<i32>(-4823i, -2147483647i, -2147483647i)), ~vec3<i32>(2147483647i, 35637i, -2147483647i), !global0[_wgslsmith_index_u32(48052u, 3u)]), _wgslsmith_div_vec3_i32(~vec3<i32>(12574i, -10013i, 0i), -vec3<i32>(1i, 24568i, 43691i))), true);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global1 = array<vec4<bool>, 24>();
    var var_0 = select(vec3<bool>(!((u_input.a.x | 16284u) <= (arg_2.a ^ 22172u)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f - arg_2.b) - _wgslsmith_f_op_f32(-arg_2.b))), select(global0[_wgslsmith_index_u32(24242u, 3u)], vec3<bool>(arg_0.b, false, !arg_2.c), (any(global0[_wgslsmith_index_u32(u_input.b, 3u)]) | true) || (-2147483647i < arg_1.x)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(firstTrailingBit(~37455u), abs(_wgslsmith_div_u32(75696u, arg_2.a))), 3u)]);
    var var_1 = select(vec3<bool>(false, true, var_0.x), vec3<bool>(!((arg_1.x << (arg_2.a % 32u)) <= countOneBits(-2147483647i)), arg_2.c, select(true | any(var_0.xy), arg_2.c, !(!arg_0.b))), arg_2.c & var_0.x);
    var var_2 = Struct_2(min(62226u | max(arg_2.a, select(arg_2.a, 65218u, false)), countOneBits(min(~3975u, u_input.c.x))), -651f, var_1.x);
    let var_3 = func_5(select(global1[_wgslsmith_index_u32(1u, 24u)], select(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(var_2.a, 24753u), ~var_2.a), 24u)], select(global1[_wgslsmith_index_u32(0u, 24u)], vec4<bool>(true, false, true, arg_2.c), true), any(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a, 39579u), 3u)])), vec4<bool>(true, false, !var_1.x, false)), var_2.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, var_2.b, var_2.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b, var_2.b, -588f), vec3<f32>(var_2.b, var_2.b, -512f), vec3<bool>(false, true, arg_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.b, var_2.b, var_2.b))) - vec3<f32>(var_2.b, arg_2.b, -1045f))))));
    return arg_2;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1054f);
    global0 = array<vec3<bool>, 3>();
    let var_1 = func_5(select(!global1[_wgslsmith_index_u32(1u, 24u)], !select(select(global1[_wgslsmith_index_u32(arg_0.a, 24u)], vec4<bool>(false, arg_0.c, false, arg_0.c), arg_0.c), !global1[_wgslsmith_index_u32(u_input.c.x, 24u)], arg_0.c), select(!vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), select(!global1[_wgslsmith_index_u32(arg_0.a, 24u)], vec4<bool>(false, arg_0.c, false, arg_0.c), !vec4<bool>(true, false, arg_0.c, arg_0.c)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-535f, arg_0.b, 170f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2186f, var_0, arg_0.b) - vec3<f32>(arg_0.b, 774f, var_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, 142f, arg_0.b)))), false)));
    return func_6(Struct_1(vec3<i32>(abs(-var_1.a.x), countOneBits(_wgslsmith_clamp_i32(var_1.a.x, var_1.a.x, var_1.a.x)), var_1.a.x), true), -_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, -1i, -6964i, var_1.a.x)), select(vec4<i32>(62864i, var_1.a.x, 2147483647i, 9910i), vec4<i32>(var_1.a.x, var_1.a.x, -43082i, var_1.a.x), false)) & vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(17185i, -2147483647i, -35243i), -2147483647i), var_1.a.x, _wgslsmith_add_i32(countOneBits(var_1.a.x), _wgslsmith_add_i32(var_1.a.x, 15249i)), _wgslsmith_mult_i32(var_1.a.x, -17561i)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(vec4<bool>(true, true, all(global1[_wgslsmith_index_u32(u_input.e.x, 24u)]), func_1(Struct_2(u_input.b, -371f, false), vec2<i32>(-1i, -14811i), Struct_1(vec3<i32>(2147483647i, 17619i, -1i), true), Struct_1(vec3<i32>(39027i, -1i, 0i), false))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(249f, 980f))), vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(-1i, -2147483647i, -19186i), true), 1185f, vec2<bool>(true, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(1127f + -495f), _wgslsmith_f_op_f32(f32(-1f) * -619f))), abs(firstTrailingBit(select(vec4<i32>(0i, 1i, -48432i, 19198i), vec4<i32>(-66i, -2147483647i, -30997i, -38393i), false))), Struct_2(abs(_wgslsmith_dot_vec4_u32(u_input.e, u_input.d)), 1344f, func_1(Struct_2(u_input.a.x, -1402f, true), vec2<i32>(1i, 1i), Struct_1(vec3<i32>(-10155i, 16442i, -1i), true), Struct_1(vec3<i32>(7980i, -1353i, 1i), true)))));
    let var_1 = Struct_2(max(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c.x << (0u % 32u), var_0.a | 21247u), 6033u, var_0.a), u_input.c.x), _wgslsmith_f_op_f32(-var_0.b), false);
    let var_2 = select(global0[_wgslsmith_index_u32(var_1.a, 3u)], select(vec3<bool>(true, !var_0.c, !(!var_1.c)), vec3<bool>(true, true, (617f <= var_1.b) || false), !(!global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 3u)])), vec3<bool>(!(!select(false, true, var_0.c)), true, ~firstTrailingBit(var_0.a) != var_1.a));
    let var_3 = var_1;
    let var_4 = reverseBits(select(abs(~(u_input.e.yx & vec2<u32>(var_3.a, 1u))), _wgslsmith_sub_vec2_u32(~(~u_input.c.yy), vec2<u32>(43305u, min(u_input.b, 24895u))), any(vec3<bool>(any(global1[_wgslsmith_index_u32(425u, 24u)]), true, any(vec4<bool>(var_1.c, false, false, var_3.c))))));
    global1 = array<vec4<bool>, 24>();
    var var_5 = func_5(global1[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(u_input.a.x, var_1.a), u_input.d.x, _wgslsmith_f_op_f32(min(var_0.b, var_1.b)) < -1437f) ^ countOneBits(8999u), 24u)], _wgslsmith_f_op_f32(func_4(func_2(~63180i >> (~var_4.x % 32u), var_4.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(var_3.b, var_3.b)))), select(vec2<bool>(true, true), vec2<bool>(any(global1[_wgslsmith_index_u32(0u, 24u)]), false), var_2.yx), select(global1[_wgslsmith_index_u32(28970u, 24u)], !select(vec4<bool>(true, var_3.c, var_2.x, false), vec4<bool>(var_1.c, true, false, var_3.c), true), global1[_wgslsmith_index_u32(~func_6(Struct_1(vec3<i32>(-76886i, -14835i, -17625i), var_3.c), vec4<i32>(-1i, 2147483647i, 102270i, -26827i), var_3).a, 24u)]))), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(vec3<i32>(21430i, 2147483647i, 33284i), false), var_3.b, vec2<bool>(false, true), vec4<bool>(var_2.x, var_3.c, var_1.c, false))), -316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.b, -1072f))))));
    let var_6 = var_1;
    var var_7 = func_2(var_5.a.x, 20924u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(641f, var_0.b, var_1.b), vec3<f32>(var_0.b, -817f, var_6.b))), vec3<f32>(var_0.b, var_3.b, var_1.b)))))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-var_5.a.x, 49639i, 15651i, 4263i), firstTrailingBit(-vec4<i32>(-6869i, var_5.a.x, var_7.a.x, var_5.a.x))), vec4<i32>(~_wgslsmith_add_i32(var_7.a.x, 26658i), _wgslsmith_sub_i32(~var_7.a.x, min(var_7.a.x, var_5.a.x)), i32(-1i) * -14085i, _wgslsmith_add_i32(var_7.a.x << (57522u % 32u), -42961i))), var_7.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - _wgslsmith_f_op_f32(var_0.b * var_6.b))) - 388f));
}

