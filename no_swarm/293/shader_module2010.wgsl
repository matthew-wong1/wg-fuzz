struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(1066f, 1000f), 5965u, vec2<f32>(-655f, 294f)), vec4<u32>(23042u, 1u, 43758u, 37399u), 4294967295u, Struct_1(vec2<f32>(652f, -331f), 909u, vec2<f32>(2086f, -331f))));

var<private> global2: u32 = 77481u;

var<private> global3: array<vec3<u32>, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = arg_1;
    global2 = _wgslsmith_div_u32(1u, _wgslsmith_add_u32(abs(25493u << (var_0.b.x % 32u)), ~0u) | _wgslsmith_div_u32(var_0.a.b, ~(arg_1.c << (16424u % 32u))));
    let var_1 = vec4<f32>(arg_0, 978f, _wgslsmith_f_op_f32(-683f + -2217f), arg_3);
    var var_2 = global1.a.a;
    global2 = ~var_2.b;
    return 11512i;
}

fn func_2(arg_0: i32) -> vec2<u32> {
    var var_0 = reverseBits(-vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(0i), func_3(-1213f, global1.a, false, global1.a.a.a.x)), firstTrailingBit(4068i), max(arg_0, countOneBits(1i))));
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a.a.c), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(72177u, u_input.a, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2084f, global1.a.a.c.x))), select(global1.a.b, vec4<u32>(global1.a.b.x, 4294967295u, 0u, 27308u), true) << (global1.a.b % vec4<u32>(32u)), u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.a.c.x, 1067f))), 1u, global1.a.a.c))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true))));
    var var_2 = 6739i;
    global3 = array<vec3<u32>, 28>();
    global2 = 4294967295u;
    return max(~global1.a.b.xz, abs(~(~vec2<u32>(var_1.a.a.b.x, u_input.a))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(abs(firstTrailingBit(arg_2.a.b)), ~select(vec4<u32>(global1.a.d.b, 39601u, u_input.a, u_input.a) ^ arg_2.a.b, arg_2.a.b | vec4<u32>(arg_2.a.b.x, 4294967295u, global1.a.b.x, 1u), vec4<bool>(true, false, true, true)), max(firstTrailingBit(~vec4<u32>(arg_2.a.a.b, arg_2.a.b.x, 1u, 9824u)), ~max(global1.a.b, vec4<u32>(40194u, arg_0.x, arg_0.x, 4294967295u)))));
    return 1561f;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(arg_2.a), false);
    global2 = 34569u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a.d.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_2.a.a.a.x))))), 28743u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-280f, global1.a.a.a.x), var_0.a.a.a.c, global0[_wgslsmith_index_u32(22436u, 7u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global1.a.a.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-749f, arg_0))))), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(1u, 4294967295u, 0u, arg_2.a.d.b)) & max(~var_0.a.a.b, vec4<u32>(var_0.a.a.c, global1.a.d.b, 1u, 1u) << (vec4<u32>(1u, global1.a.c, 1u, u_input.a) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, arg_2.a.a.b, var_0.a.a.d.b), vec4<u32>(u_input.a, 18808u, 4294967295u, u_input.a)) >> (abs(vec4<u32>(global1.a.c, 16848u, 4294967295u, 118561u)) % vec4<u32>(32u)), vec4<u32>(reverseBits(arg_2.a.c), reverseBits(97604u), select(167u, 34503u, var_0.b), ~1u))), _wgslsmith_mod_u32(40572u, firstLeadingBit(u_input.a)), arg_2.a.d);
    let var_2 = 7766u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(614f, -297f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-596f, global1.a.d.c.x)))))), abs(reverseBits(~u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.a.a)))), ~vec4<u32>(~global1.a.c, var_1.a.b, var_1.d.b, ~0u) & var_0.a.a.b, ~_wgslsmith_add_u32(max(_wgslsmith_add_u32(var_2, 17886u), func_2(u_input.b).x), abs(0u)), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(638f, 205f))), vec2<f32>(_wgslsmith_f_op_f32(max(-726f, -2232f)), -1052f))), 1u, vec2<f32>(_wgslsmith_f_op_f32(func_4(~arg_2.a.b.xz, -1408f, Struct_3(var_0.a.a))), _wgslsmith_f_op_f32(367f - _wgslsmith_f_op_f32(select(1104f, arg_0, var_0.b))))));
    return global1.a;
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_div_i32(u_input.b, 1i)), arg_0, Struct_3(Struct_2(global1.a.a, global1.a.b, 4362u, global1.a.d)))), 1179f)), _wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.b, 0i, u_input.b)), ~(~(vec3<i32>(u_input.b, -12591i, 2147483647i) & vec3<i32>(u_input.b, u_input.b, u_input.b)))), Struct_3(global1.a));
    let var_1 = 854f;
    let var_2 = all(vec4<bool>(true, true, true, true));
    var var_3 = u_input.b;
    var_3 = 964i;
    return func_5(global1.a.d.a.x, ~(~(-countOneBits(vec3<i32>(-42618i, 5313i, 0i)))), Struct_3(Struct_2(func_5(_wgslsmith_f_op_f32(-var_1), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, -2147483647i, -2147483647i)), Struct_3(Struct_2(var_0.d, var_0.b, global1.a.c, var_0.d))).a, reverseBits(~var_0.b), _wgslsmith_add_u32(0u, ~1u), func_5(-776f, select(vec3<i32>(2147483647i, u_input.b, 38116i), vec3<i32>(u_input.b, -46688i, -28018i), var_2), Struct_3(Struct_2(var_0.d, var_0.b, global1.a.a.b, Struct_1(var_0.a.a, global1.a.a.b, vec2<f32>(var_0.a.c.x, var_1))))).a)));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_5(_wgslsmith_f_op_f32(-365f + _wgslsmith_div_f32(global1.a.a.c.x, _wgslsmith_f_op_f32(exp2(arg_1.a.a.x)))), -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 36759i, arg_0), vec3<i32>(1i, u_input.b, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, 1i)), Struct_3(func_5(_wgslsmith_f_op_f32(295f * arg_1.d.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(24886i, 1i, u_input.b)), Struct_3(Struct_2(Struct_1(global1.a.d.c, global1.a.d.b, arg_1.d.c), vec4<u32>(global1.a.a.b, u_input.a, 4294967295u, arg_1.c), global1.a.b.x, global1.a.a))))));
    let var_1 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, select(true, false, false)), all(vec2<bool>(true, true))), vec3<bool>(global1.a.a.a.x == _wgslsmith_f_op_f32(-var_0.a.d.c.x), -1000f == _wgslsmith_div_f32(-506f, global1.a.a.a.x), _wgslsmith_div_u32(var_0.a.c, u_input.a) <= ~arg_1.a.b), _wgslsmith_dot_vec3_u32(select(global3[_wgslsmith_index_u32(global1.a.c, 28u)], vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_1.c, global1.a.b.x), vec3<u32>(0u, 18863u, 34228u), vec3<u32>(34072u, 4294967295u, 0u))) <= 0u));
    let var_2 = global1.a.a;
    global0 = array<vec2<bool>, 7>();
    let var_3 = !(!(!(!(var_1 & true))));
    return Struct_2(func_1(global1.a.a.a.x, abs(_wgslsmith_mult_u32(4294967295u, 0u)) << (_wgslsmith_clamp_u32(countOneBits(u_input.a), ~var_2.b, _wgslsmith_mod_u32(global1.a.d.b, var_0.a.c)) % 32u)).a, global1.a.b, select(global1.a.c, u_input.a, var_1), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1011f, -1229f, false))) + -321f), 0u).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(492f + global1.a.d.a.x);
    let var_1 = func_6(u_input.b, func_1(global1.a.a.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(1u, 28u)], global1.a.b.xwy)), 38461u)));
    global2 = u_input.a;
    let var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.x) + -750f), func_5(_wgslsmith_div_f32(global1.a.d.a.x, 437f), select(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(6096i, u_input.b, u_input.b), false), Struct_3(Struct_2(global1.a.d, var_1.b, 18203u, Struct_1(vec2<f32>(var_0, -206f), 12089u, global1.a.a.c)))).d.c.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(27593u, global1.a.c << (0u % 32u), var_1.a.b), 28817u, firstTrailingBit(_wgslsmith_mod_u32(var_1.c, 1u))), _wgslsmith_div_vec2_f32(vec2<f32>(823f, _wgslsmith_f_op_f32(-global1.a.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.x, var_1.d.a.x)) * vec2<f32>(var_1.a.a.x, 469f)))), ~select(global1.a.b, _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, global1.a.b.x, global1.a.a.b, u_input.a), var_1.b, vec4<bool>(true, false, false, false)), vec4<u32>(19843u, 39514u, 5406u, 7005u) & global1.a.b), false), max(var_1.a.b, ~15537u), func_6(select(22843i, u_input.b, true), Struct_2(func_6(u_input.b, Struct_2(global1.a.d, var_1.b, global1.a.b.x, Struct_1(vec2<f32>(global1.a.d.a.x, -511f), u_input.a, global1.a.d.a))).a, _wgslsmith_sub_vec4_u32(var_1.b, ~global1.a.b), global1.a.a.b, func_5(var_0, max(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, -26240i, 0i)), Struct_3(var_1)).a)).a);
    var var_3 = _wgslsmith_f_op_f32(floor(var_1.a.c.x));
    var var_4 = 27674u >= _wgslsmith_add_u32(global1.a.c, 0u);
    let var_5 = false;
    var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.a.c.x, _wgslsmith_f_op_f32(abs(var_0))))));
    let var_6 = Struct_2(global1.a.a, vec4<u32>(var_1.a.b, _wgslsmith_div_u32(21192u, 4294967295u), ~func_6(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b)), var_1).d.b, firstTrailingBit(1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.c, 4294967295u, u_input.a), var_2.b) % 32u))), var_2.d.b, func_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.c.x * 470f), -1140f))), var_2.d.b).a);
    let x = u_input.a;
    s_output = StorageBuffer(-1341f);
}

