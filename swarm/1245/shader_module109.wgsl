struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(239f, 2147483647i, Struct_1(vec2<bool>(true, false), 0u)), Struct_2(2181f, 2147483647i, Struct_1(vec2<bool>(false, true), 15586u)), Struct_2(1065f, i32(-2147483648), Struct_1(vec2<bool>(true, false), 1576u)), Struct_2(1061f, 33725i, Struct_1(vec2<bool>(true, true), 0u)), Struct_2(195f, 10439i, Struct_1(vec2<bool>(false, true), 30517u)), Struct_2(1133f, 0i, Struct_1(vec2<bool>(true, true), 4294967295u)), Struct_2(2803f, -21520i, Struct_1(vec2<bool>(false, false), 0u)), Struct_2(-1000f, 2147483647i, Struct_1(vec2<bool>(true, false), 1u)), Struct_2(-676f, 13833i, Struct_1(vec2<bool>(false, true), 23247u)), Struct_2(-1000f, -1i, Struct_1(vec2<bool>(true, true), 4294967295u)), Struct_2(1108f, 1i, Struct_1(vec2<bool>(true, false), 36838u)), Struct_2(-594f, -14136i, Struct_1(vec2<bool>(false, false), 51136u)), Struct_2(598f, -43694i, Struct_1(vec2<bool>(false, true), 0u)), Struct_2(-2155f, i32(-2147483648), Struct_1(vec2<bool>(true, true), 48679u)), Struct_2(1000f, 8277i, Struct_1(vec2<bool>(false, false), 41681u)), Struct_2(113f, -2516i, Struct_1(vec2<bool>(false, false), 1u)));

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: vec2<u32> = vec2<u32>(25970u, 37938u);

var<private> global4: array<f32, 1> = array<f32, 1>(1330f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global4 = array<f32, 1>();
    let var_0 = !arg_0.c.a.x;
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_1 = arg_0.c.a.x;
    return arg_0.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = arg_2.c.x << (~global3.x % 32u);
    let var_1 = func_2(Struct_2(arg_2.b.a, -30811i, arg_3.b.c));
    global2 = array<vec2<i32>, 28>();
    global4 = array<f32, 1>();
    var var_2 = Struct_1(vec2<bool>(!arg_3.b.c.a.x, false), 4294967295u);
    return global1[_wgslsmith_index_u32(0u, 16u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-612f, -922f, true))));
    global4 = array<f32, 1>();
    global2 = array<vec2<i32>, 28>();
    let var_1 = _wgslsmith_sub_i32(u_input.a | -10649i, ~select(1i, -2147483647i, arg_1.c.a.x));
    var var_2 = select(select(!vec3<bool>(false, arg_1.c.a.x, global4[_wgslsmith_index_u32(arg_3.b, 1u)] != -2145f), select(!vec3<bool>(arg_3.a.x, arg_1.c.a.x, arg_1.c.a.x), vec3<bool>(arg_3.a.x | arg_1.c.a.x, !arg_3.a.x, false), arg_3.a.x), vec3<bool>(any(select(vec4<bool>(false, arg_1.c.a.x, arg_3.a.x, true), vec4<bool>(arg_1.c.a.x, arg_1.c.a.x, true, arg_1.c.a.x), true)), arg_3.a.x, all(vec3<bool>(false, false, false)))), select(!(!select(vec3<bool>(false, arg_3.a.x, arg_1.c.a.x), vec3<bool>(true, arg_1.c.a.x, true), vec3<bool>(arg_1.c.a.x, arg_1.c.a.x, arg_3.a.x))), vec3<bool>(arg_3.a.x, var_1 >= -22935i, all(!vec3<bool>(false, true, arg_1.c.a.x))), all(arg_3.a)), false);
    return func_1(Struct_2(1f, -min(i32(-1i) * -2147483647i, -arg_1.b), func_2(func_1(func_1(Struct_2(arg_0.x, 0i, Struct_1(vec2<bool>(true, true), arg_3.b)), vec2<bool>(true, true), Struct_3(vec3<u32>(global3.x, arg_3.b, 26900u), Struct_2(-911f, u_input.a, Struct_1(arg_3.a, arg_1.c.b)), vec4<i32>(arg_1.b, -2147483647i, -1i, -2147483647i)), Struct_3(vec3<u32>(global3.x, arg_1.c.b, arg_3.b), global1[_wgslsmith_index_u32(1u, 16u)], vec4<i32>(-1i, 1i, arg_2.x, 25070i))), vec2<bool>(true, true), Struct_3(vec3<u32>(global3.x, 94890u, 1u), global1[_wgslsmith_index_u32(arg_3.b, 16u)], vec4<i32>(arg_2.x, arg_1.b, -1i, 1i)), Struct_3(vec3<u32>(global3.x, 63873u, arg_3.b), Struct_2(arg_0.x, 23307i, Struct_1(var_2.yx, arg_1.c.b)), vec4<i32>(arg_1.b, 52778i, var_1, -26813i))))), arg_3.a, Struct_3(~(~vec3<u32>(global3.x, 1u, 57194u)) ^ ~(~vec3<u32>(20912u, 0u, 1u)), func_1(Struct_2(_wgslsmith_f_op_f32(step(-1000f, arg_1.a)), u_input.a, arg_3), arg_3.a, Struct_3(vec3<u32>(0u, 4294967295u, 33764u), func_1(global1[_wgslsmith_index_u32(83104u, 16u)], var_2.yx, Struct_3(vec3<u32>(arg_1.c.b, 7668u, arg_1.c.b), Struct_2(global4[_wgslsmith_index_u32(arg_1.c.b, 1u)], 0i, Struct_1(vec2<bool>(arg_3.a.x, false), 1u)), vec4<i32>(-57264i, -11311i, arg_2.x, -1i)), Struct_3(vec3<u32>(arg_3.b, 0u, 4294967295u), global1[_wgslsmith_index_u32(global3.x, 16u)], vec4<i32>(41266i, 56717i, 2147483647i, -1i))), vec4<i32>(arg_1.b, u_input.a, 1i, arg_1.b) ^ vec4<i32>(arg_1.b, -27842i, -53765i, 29432i)), Struct_3(~vec3<u32>(arg_1.c.b, global3.x, arg_3.b), func_1(Struct_2(172f, 7044i, arg_3), arg_1.c.a, Struct_3(vec3<u32>(0u, arg_3.b, arg_1.c.b), Struct_2(-144f, u_input.a, Struct_1(vec2<bool>(false, false), arg_3.b)), vec4<i32>(0i, -42797i, var_1, 11994i)), Struct_3(vec3<u32>(0u, 0u, arg_1.c.b), global1[_wgslsmith_index_u32(4294967295u, 16u)], vec4<i32>(2147483647i, -10671i, var_1, -7112i))), -vec4<i32>(-1i, arg_2.x, 1i, u_input.a))), ~vec4<i32>(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -34908i, arg_2.x, 2147483647i), vec4<i32>(var_1, arg_1.b, var_1, 2147483647i)), 1i, -2147483647i)), Struct_3(~(firstLeadingBit(vec3<u32>(0u, 107132u, arg_1.c.b)) & _wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, 30149u, 4294967295u), vec3<u32>(global3.x, 4294967295u, 0u))), func_1(func_1(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 1u)], arg_2.x, arg_3), arg_3.a, Struct_3(vec3<u32>(arg_3.b, 0u, global3.x), arg_1, vec4<i32>(arg_2.x, var_1, -2803i, var_1)), Struct_3(vec3<u32>(0u, 0u, arg_1.c.b), Struct_2(global4[_wgslsmith_index_u32(global3.x, 1u)], -2147483647i, arg_3), vec4<i32>(1i, u_input.a, 1i, -43059i))), func_1(arg_1, vec2<bool>(arg_3.a.x, arg_1.c.a.x), Struct_3(vec3<u32>(arg_3.b, 49870u, 10244u), arg_1, vec4<i32>(arg_2.x, -4015i, u_input.a, -1i)), Struct_3(vec3<u32>(arg_1.c.b, arg_1.c.b, 51310u), arg_1, vec4<i32>(arg_2.x, u_input.a, arg_2.x, var_1))).c.a, Struct_3(~vec3<u32>(arg_1.c.b, 63028u, 49427u), global1[_wgslsmith_index_u32(~36909u, 16u)], _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, arg_1.b, -36934i, 26817i), vec4<i32>(u_input.a, var_1, -1i, 8181i))), Struct_3(vec3<u32>(4294967295u, arg_3.b, global3.x) | vec3<u32>(9644u, arg_1.c.b, arg_1.c.b), Struct_2(global4[_wgslsmith_index_u32(50917u, 1u)], -49140i, arg_3), vec4<i32>(-2147483647i, var_1, var_1, u_input.a) << (vec4<u32>(0u, 29084u, arg_1.c.b, 55417u) % vec4<u32>(32u)))), vec4<i32>(arg_1.b >> (4294967295u % 32u), _wgslsmith_sub_i32(0i, ~(-1i)), 1i, abs(var_1) & _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(-1i, -1i, u_input.a)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = select(countOneBits(abs(-(~vec3<i32>(u_input.a, 39021i, 2147483647i)))), vec3<i32>(firstTrailingBit(abs(1i)), abs(-u_input.a ^ max(0i, arg_0.b)), 0i), select(select(vec3<bool>(!arg_0.c.a.x, arg_0.c.a.x, true), vec3<bool>(true, arg_0.c.a.x, true), true == (arg_0.c.a.x | arg_1.a.x)), vec3<bool>(false, true, false), !all(!vec3<bool>(arg_1.a.x, false, false))));
    var var_1 = 10805i;
    let var_2 = Struct_2(146f, func_1(func_1(arg_0, vec2<bool>(arg_0.c.a.x, global3.x > 41367u), Struct_3(~vec3<u32>(arg_1.b, global3.x, 4294967295u), Struct_2(-796f, 6071i, Struct_1(arg_0.c.a, arg_1.b)), min(vec4<i32>(-22336i, var_0.x, var_0.x, -1i), vec4<i32>(-2782i, arg_0.b, arg_0.b, var_0.x))), Struct_3(~arg_2, Struct_2(arg_0.a, var_0.x, Struct_1(arg_1.a, arg_2.x)), vec4<i32>(11494i, -45848i, u_input.a, u_input.a))), vec2<bool>(arg_1.a.x, func_2(arg_0).a.x), Struct_3(arg_2, Struct_2(-1120f, abs(u_input.a), arg_0.c), ~vec4<i32>(var_0.x, 1i, -20946i, -1i)), Struct_3(arg_2, Struct_2(_wgslsmith_f_op_f32(abs(-1057f)), abs(40981i), Struct_1(vec2<bool>(arg_0.c.a.x, arg_0.c.a.x), global3.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-55488i, -86558i, -14148i, u_input.a) | vec4<i32>(-1i, arg_0.b, 37219i, -2147483647i), max(vec4<i32>(u_input.a, var_0.x, u_input.a, var_0.x), vec4<i32>(926i, u_input.a, 24803i, 17409i)), abs(vec4<i32>(u_input.a, var_0.x, var_0.x, u_input.a))))).b, arg_0.c);
    let var_3 = 44699u;
    let var_4 = _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~reverseBits(arg_1.b), 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_1(func_3(vec3<f32>(1624f, var_2.a, arg_0.a), arg_0, var_0, arg_1), !vec2<bool>(arg_0.c.a.x, false), Struct_3(arg_2, var_2, vec4<i32>(arg_0.b, 58062i, -33821i, u_input.a)), Struct_3(vec3<u32>(global3.x, 39645u, arg_1.b), Struct_2(var_2.a, var_0.x, Struct_1(arg_0.c.a, 15117u)), vec4<i32>(-1i, u_input.a, u_input.a, var_2.b))).a)) - -383f));
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(min(1i, -func_3(vec3<f32>(var_4, arg_0.a, arg_0.a), Struct_2(564f, 24055i, Struct_1(arg_0.c.a, 0u)), var_0, arg_1).b), var_0.x & -1i), _wgslsmith_add_i32(~(~(var_0.x << (17597u % 32u))), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 1>();
    global1 = array<Struct_2, 16>();
    let var_0 = Struct_3(vec3<u32>(~global3.x, global3.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 25136u, global3.x, 64356u), vec4<u32>(global3.x, 2788u, 1u, 1u)) << (global3.x % 32u))), global1[_wgslsmith_index_u32(abs(~global3.x), 16u)], vec4<i32>(func_4(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(global3.x, 1u)], global4[_wgslsmith_index_u32(59984u, 1u)], 1384f) + vec3<f32>(873f, -615f, -815f)), func_1(Struct_2(global4[_wgslsmith_index_u32(global3.x, 1u)], 15330i, Struct_1(vec2<bool>(true, true), global3.x)), vec2<bool>(false, true), Struct_3(vec3<u32>(55828u, global3.x, global3.x), global1[_wgslsmith_index_u32(global3.x, 16u)], vec4<i32>(u_input.a, -1i, u_input.a, -9763i)), Struct_3(vec3<u32>(0u, 149259u, 65741u), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a, Struct_1(vec2<bool>(false, true), 51969u)), vec4<i32>(u_input.a, 192i, 1i, u_input.a))), vec3<i32>(u_input.a, 7858i, 29620i) | vec3<i32>(-24903i, u_input.a, u_input.a), Struct_1(vec2<bool>(false, false), global3.x)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, global4[_wgslsmith_index_u32(4294967295u, 1u)], 1613f)), func_3(vec3<f32>(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], -856f), global1[_wgslsmith_index_u32(8107u, 16u)], vec3<i32>(1i, -2147483647i, -5499i), Struct_1(vec2<bool>(false, false), global3.x)), -vec3<i32>(-6112i, 27591i, u_input.a), Struct_1(vec2<bool>(false, false), global3.x)).c, vec3<u32>(_wgslsmith_mult_u32(global3.x, global3.x), global3.x, 0u)), u_input.a, ~(u_input.a ^ u_input.a), 2147483647i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a, var_0.b.a))) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3.x, global3.x), 1u)], _wgslsmith_f_op_f32(round(var_0.b.a)))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.a)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(483f, 1588f, _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(11160u, 1u)], _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(global3.x, 16u)], vec2<bool>(var_0.b.c.a.x, true), var_0, var_0).c.b, 1u)])))), -552f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(~(~1u), 1u)], -470f, var_0.b.a, global4[_wgslsmith_index_u32(~(~0u), 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yx, vec4<u32>(abs(func_2(global1[_wgslsmith_index_u32(var_0.b.c.b & var_0.b.c.b, 16u)]).b), var_0.b.c.b, _wgslsmith_sub_u32(var_0.b.c.b, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1178f, var_2.x, 1414f)), var_0.b, var_0.c.zyy, func_3(var_2.zwx, Struct_2(100f, u_input.a, var_0.b.c), var_0.c.xyz, Struct_1(var_0.b.c.a, var_0.a.x)).c).c.b), 43184u));
}

