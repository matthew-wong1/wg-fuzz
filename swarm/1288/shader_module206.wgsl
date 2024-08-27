struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(0i, 30612i), vec2<i32>(-40931i, 0i), vec2<i32>(-1073i, 14660i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 27079i), vec2<i32>(-34368i, -21446i), vec2<i32>(24688i, i32(-2147483648)), vec2<i32>(1i, -13022i), vec2<i32>(68482i, -7679i), vec2<i32>(2147483647i, 1379i), vec2<i32>(-23314i, 27363i), vec2<i32>(2147483647i, 2446i), vec2<i32>(12514i, -17981i), vec2<i32>(i32(-2147483648), -20161i), vec2<i32>(2147483647i, 40383i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 0i), vec2<i32>(-4753i, 7516i), vec2<i32>(14387i, -1956i), vec2<i32>(-14906i, 1i), vec2<i32>(-28259i, -14318i), vec2<i32>(-20596i, 28403i), vec2<i32>(-8687i, 21484i), vec2<i32>(-36235i, i32(-2147483648)), vec2<i32>(1i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 36373i), vec2<i32>(-1242i, 21689i), vec2<i32>(-18981i, 2147483647i), vec2<i32>(1i, 0i));

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<i32>, 8>;

var<private> global3: Struct_3 = Struct_3(56335i, 30562u);

var<private> global4: f32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2421f, -1956f, false)), -196f))), arg_1.x, !global1.x));
    global1 = select(vec2<bool>(any(select(select(vec3<bool>(false, arg_2, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, global1.x, arg_2), false), !vec3<bool>(global1.x, global1.x, false))), true), !(!(!(!vec2<bool>(arg_2, true)))), all(vec2<bool>(global1.x, arg_0.b.x <= abs(global3.a))));
    let var_0 = Struct_4(_wgslsmith_dot_vec2_i32(~arg_0.b.wy, firstTrailingBit(select(vec2<i32>(arg_0.a, -3687i), arg_3.xz, true) | ~arg_3.ww)), firstLeadingBit(-vec4<i32>(u_input.b, _wgslsmith_div_i32(global3.a, -1i), global3.a, u_input.b)));
    global2 = array<vec4<i32>, 8>();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(floor(2808f)))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))) - -390f);
    return ~arg_0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    global1 = vec2<bool>(false || global1.x, !any(select(!vec4<bool>(global1.x, global1.x, false, false), !vec4<bool>(global1.x, true, true, false), global1.x)));
    global1 = select(vec2<bool>(true, select(false, true, true)), vec2<bool>(global1.x, false || !all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), vec2<bool>(true, all(select(vec4<bool>(global1.x, true, true, false), vec4<bool>(true, true, global1.x, false), vec4<bool>(true, true, true, false)))));
    global3 = arg_1;
    let var_0 = global1.x;
    let var_1 = _wgslsmith_add_vec2_u32(u_input.a, reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(25183u, u_input.a.x), select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1216u, global3.b), vec2<bool>(global1.x, global1.x))), ~(u_input.a | vec2<u32>(global3.b, u_input.a.x)))));
    return -1000f;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> vec3<bool> {
    let var_0 = !vec3<bool>(~(-1i) >= _wgslsmith_dot_vec3_i32(arg_0.b.yzz >> (vec3<u32>(u_input.a.x, global3.b, global3.b) % vec3<u32>(32u)), vec3<i32>(63005i, arg_1, -30704i)), any(vec3<bool>(true, global1.x, global3.b > u_input.a.x)), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-126f, -1679f)), _wgslsmith_div_f32(1115f, -174f), _wgslsmith_f_op_f32(abs(-1686f)))), Struct_3(func_3(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, -431f, 1321f, 648f)), true, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 9019u), 8u)]), u_input.a.x), Struct_1(_wgslsmith_f_op_f32(trunc(-1160f)), ~(-u_input.b), -vec2<i32>(u_input.b, 0i)))), u_input.b, arg_2.zz);
    let var_2 = select(vec3<bool>(21698u < abs(~global3.b), true, global1.x), vec3<bool>(var_0.x, global1.x, any(var_0.xz)), select(vec3<bool>(!(!global1.x), true, (arg_0.a <= arg_0.a) & (arg_3 > arg_1)), var_0, var_0));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(478f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(var_1.a, -800f)))))), arg_1, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(~2686i, ~arg_0.a)), vec2<i32>(_wgslsmith_add_i32(global3.a << (u_input.a.x % 32u), 33388i), abs(1i))));
    var var_3 = global3.b;
    return select(var_0, vec3<bool>(true, !(any(vec3<bool>(global1.x, var_2.x, var_2.x)) & (var_1.b > 1i)), all(vec3<bool>(var_0.x, true, !global1.x))), true);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    return arg_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    let var_0 = ~(~(~u_input.a));
    return func_5(select(!vec3<bool>(!arg_2, !arg_2, global1.x), func_2(Struct_4(~u_input.b, vec4<i32>(u_input.b, 15347i, u_input.b, u_input.b)), u_input.b, ~abs(vec3<i32>(1961i, global3.a, u_input.b)), -47051i ^ u_input.b), false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, -353f), _wgslsmith_f_op_f32(arg_0.x - 422f)))), countOneBits(-17468i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), global0[_wgslsmith_index_u32(40844u, 30u)]), global0[_wgslsmith_index_u32(44324u, 30u)]) << (~arg_1.xx % vec2<u32>(32u))), Struct_3(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~var_0.x), 30u)], ~(vec2<i32>(global3.a, -2147483647i) ^ global0[_wgslsmith_index_u32(global3.b, 30u)])), ~countOneBits(reverseBits(global3.b))));
}

fn func_6(arg_0: Struct_3) -> StorageBuffer {
    global3 = func_5(vec3<bool>(global1.x, any(vec3<bool>(false, true, false | global1.x)), global1.x), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -358f))), reverseBits(-arg_0.a), ~(-vec2<i32>(global3.a, -27314i))), arg_0);
    let var_0 = Struct_3(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_0.b, 30u)], abs(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(50032i, -1i))))), _wgslsmith_mult_u32(0u, ~(_wgslsmith_div_u32(arg_0.b, 19033u) | ~arg_0.b)));
    global0 = array<vec2<i32>, 30>();
    var var_1 = Struct_4(global3.a, abs(vec4<i32>(0i, _wgslsmith_mod_i32(arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a, 0i), global0[_wgslsmith_index_u32(var_0.b, 30u)])), select(-1i, func_3(Struct_4(-21974i, global2[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(572f, -850f, -1000f, 1038f), global1.x, vec4<i32>(77362i, u_input.b, 3233i, arg_0.a)), global1.x), u_input.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1293f, 998f, -717f, 522f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, -854f, -822f, -639f))))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(-858f)), var_2.x, _wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(exp2(var_2.x))))), vec2<i32>(abs(_wgslsmith_div_i32(var_0.a >> (4294967295u % 32u), 2147483647i)), _wgslsmith_mod_i32(~2147483647i, ~global3.a) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 86718u), arg_0.b | u_input.a.x) % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, reverseBits(arg_0.b)), countOneBits(vec4<u32>(arg_0.b, u_input.a.x, 20108u, u_input.a.x)), reverseBits(vec4<u32>(func_1(vec4<f32>(1502f, var_2.x, -753f, var_2.x), vec4<u32>(var_0.b, 0u, 4294967295u, 4294967295u), true).b, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_0.b, 6590u), vec4<u32>(arg_0.b, 36828u, 1u, u_input.a.x)), min(u_input.a.x, 0u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, var_2.x) - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, -110f)) - _wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(-1533f - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(step(-510f, -1324f)), _wgslsmith_f_op_f32(f32(-1f) * -276f))), reverseBits(var_1.b.ywz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -379f;
    var var_1 = false;
    global4 = var_0;
    var var_2 = Struct_3(u_input.b ^ -53924i, ~global3.b);
    var var_3 = _wgslsmith_sub_i32(u_input.b, -48051i);
    let x = u_input.a;
    s_output = func_6(func_1(vec4<f32>(_wgslsmith_f_op_f32(-1189f - _wgslsmith_f_op_f32(abs(423f))), _wgslsmith_f_op_f32(f32(-1f) * -962f), var_0, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(global3.b, 1u, var_2.b, 1u) << (select(vec4<u32>(0u, 109277u, 46724u, 16797u), vec4<u32>(global3.b, u_input.a.x, 4294967295u, 71839u), global1.x) % vec4<u32>(32u)), select(vec4<u32>(u_input.a.x, 1u, var_2.b, 31221u), vec4<u32>(global3.b, 56383u, global3.b, 26849u), global1.x) >> ((vec4<u32>(0u, 1u, 1u, 6990u) >> (vec4<u32>(29152u, u_input.a.x, 15446u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), global1.x));
}

