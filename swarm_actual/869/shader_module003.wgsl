struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(18996i, 59951u, 0i, vec4<i32>(2147483647i, 12367i, -2952i, -1i))), Struct_2(Struct_1(1i, 3829u, 15366i, vec4<i32>(-1i, -8419i, 5458i, 44889i))), Struct_2(Struct_1(1i, 13561u, -18765i, vec4<i32>(0i, 2147483647i, -57886i, -1i))), Struct_2(Struct_1(10533i, 1u, -7310i, vec4<i32>(i32(-2147483648), 19938i, -16898i, i32(-2147483648)))), Struct_2(Struct_1(-33522i, 0u, 2147483647i, vec4<i32>(0i, -1i, 26437i, 2147483647i))), Struct_2(Struct_1(-4000i, 0u, 2147483647i, vec4<i32>(2147483647i, i32(-2147483648), 1i, 1i))), Struct_2(Struct_1(2147483647i, 4294967295u, -1i, vec4<i32>(-34174i, -31552i, -41963i, 1i))), Struct_2(Struct_1(6887i, 4294967295u, 0i, vec4<i32>(-36160i, 47040i, 29758i, 0i))), Struct_2(Struct_1(0i, 4294967295u, 31566i, vec4<i32>(118845i, -53659i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(-59711i, 1u, 1i, vec4<i32>(21395i, 2147483647i, -1i, 27911i))), Struct_2(Struct_1(1i, 2623u, 2147483647i, vec4<i32>(i32(-2147483648), 31219i, -1i, 10180i))), Struct_2(Struct_1(0i, 0u, -77123i, vec4<i32>(27929i, 1i, -1i, 7732i))), Struct_2(Struct_1(-51390i, 4294967295u, 2147483647i, vec4<i32>(1i, 27434i, i32(-2147483648), 1i))), Struct_2(Struct_1(1i, 4294967295u, 19300i, vec4<i32>(0i, 1i, i32(-2147483648), 0i))), Struct_2(Struct_1(2147483647i, 14559u, 1i, vec4<i32>(-15095i, -16138i, 2038i, 1i))));

var<private> global1: array<i32, 30> = array<i32, 30>(9403i, 20314i, 5112i, -1i, 16029i, -61700i, 1i, 0i, 14918i, i32(-2147483648), -1i, -30939i, -34250i, 1754i, 2737i, 41755i, 2147483647i, 1i, -2230i, -44593i, 2147483647i, -1i, -1i, 14733i, 5030i, i32(-2147483648), 1i, 0i, 1i, -51061i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_4(Struct_2(Struct_1(global1[_wgslsmith_index_u32(arg_1.x, 30u)], _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x, 4294967295u), _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(41855u, 25273u, 1u, u_input.a.x))), arg_2.x << (~arg_1.x % 32u), arg_2)), arg_2.yww, _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(37181u, 4294967295u), arg_1.xw)), (vec2<u32>(u_input.a.x, 4294967295u) & vec2<u32>(8529u, u_input.a.x)) >> (max(u_input.a.zz, vec2<u32>(0u, 14718u)) % vec2<u32>(32u))), 1u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(437f, 1542f)) - 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(369f)), -195f)), -141f), !arg_0)), Struct_3(!select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0), !arg_0)));
    var var_1 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_0.b.x, arg_2.x, -28903i, var_0.a.a.c)), ~var_0.a.a.d) << (vec4<u32>(var_0.a.a.b ^ var_0.c, ~_wgslsmith_clamp_u32(arg_1.x, var_0.c, arg_1.x), 1u, 0u) % vec4<u32>(32u)), max(var_0.a.a.d, firstTrailingBit(~vec4<i32>(1i, arg_2.x, -1i, 20144i) >> (vec4<u32>(var_0.c, u_input.a.x, arg_1.x, arg_1.x) % vec4<u32>(32u)))));
    let var_2 = global0[_wgslsmith_index_u32(36415u, 15u)];
    let var_3 = select(vec2<bool>(select(true, any(select(vec2<bool>(var_0.e.a.x, var_0.e.a.x), vec2<bool>(var_0.e.a.x, false), arg_0)), -33579i <= _wgslsmith_mult_i32(var_2.a.d.x, var_2.a.a)), true), vec2<bool>(var_0.e.a.x, any(!(!vec3<bool>(var_0.e.a.x, true, false)))), vec2<bool>(!all(!vec2<bool>(arg_0, arg_0)), var_0.e.a.x));
    var var_4 = Struct_1(max(~(~(-1677i)), 1i), ~_wgslsmith_sub_u32(var_2.a.b, _wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (31927u % 32u)), ~_wgslsmith_sub_i32(-(~var_1.x), global1[_wgslsmith_index_u32(select(30479u, _wgslsmith_mult_u32(10017u, 0u), !arg_0), 30u)]), ~vec4<i32>(-var_2.a.a, i32(-1i) * -1i, 32548i, 10092i));
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_4(Struct_2(Struct_1(-global1[_wgslsmith_index_u32(func_3(true, vec4<u32>(arg_1, 11834u, 4294967295u, 12029u), vec4<i32>(51524i, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)])), 30u)], min(arg_1, arg_1), global1[_wgslsmith_index_u32(4294967295u, 30u)], select(select(vec4<i32>(0i, global1[_wgslsmith_index_u32(arg_1, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)]), vec4<i32>(global1[_wgslsmith_index_u32(51370u, 30u)], 1i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)]), arg_0), vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 30u)], global1[_wgslsmith_index_u32(arg_1, 30u)], 8248i, global1[_wgslsmith_index_u32(arg_1, 30u)]) >> (vec4<u32>(1u, arg_1, arg_1, arg_1) % vec4<u32>(32u)), !arg_0))), vec3<i32>(i32(-1i) * -24198i, 5925i, -(abs(global1[_wgslsmith_index_u32(1u, 30u)]) >> (countOneBits(11050u) % 32u))), (max(max(12238u, 1u), ~u_input.a.x) << (_wgslsmith_div_u32(arg_1, ~u_input.a.x) % 32u)) & _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, 13466u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 12348u, u_input.a.x)) << (arg_1 % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_1), u_input.a.xx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, 1029f, 361f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1369f, -502f, -204f), vec3<f32>(-856f, 890f, -480f)))), all(vec4<bool>(arg_0, arg_0, true, arg_0))))), Struct_3(vec2<bool>(arg_0, false)));
    global1 = array<i32, 30>();
    let var_1 = ~(countOneBits(var_0.a.a.d) << (select(~_wgslsmith_mod_vec4_u32(vec4<u32>(44380u, arg_1, var_0.a.a.b, 68726u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 69146u)), ~(vec4<u32>(4666u, u_input.a.x, u_input.a.x, var_0.c) >> (vec4<u32>(18287u, u_input.a.x, 4294967295u, arg_1) % vec4<u32>(32u))), arg_1 == _wgslsmith_mult_u32(1u, 4294967295u)) % vec4<u32>(32u)));
    global1 = array<i32, 30>();
    return var_0.a.a;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = Struct_4(Struct_2(arg_2), (_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a, 0i, 47586i) & vec3<i32>(10223i, global1[_wgslsmith_index_u32(arg_2.b, 30u)], global1[_wgslsmith_index_u32(36171u, 30u)]), vec3<i32>(arg_2.c, 59505i, 31376i)) << (max(abs(u_input.a), vec3<u32>(35677u, 1u, 1u)) % vec3<u32>(32u))) >> (firstTrailingBit((u_input.a >> (u_input.a % vec3<u32>(32u))) << (vec3<u32>(arg_2.b, arg_2.b, 33425u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~reverseBits(u_input.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-624f, 142f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-816f, -804f)), _wgslsmith_f_op_f32(-1142f + -866f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1872f, -202f, -484f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -131f, 897f))))))), Struct_3(vec2<bool>(true, true)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 15u)];
    global0 = array<Struct_2, 15>();
    global1 = array<i32, 30>();
    var var_2 = Struct_1(min(arg_3.x, 0i), ~(~(arg_2.b << (4294967295u % 32u))) ^ 1u, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 20520u), arg_2.b), 30u)], ~vec4<i32>(~(~59900i), ~(-4457i), arg_3.x, -70062i));
    return ~vec4<u32>(0u, u_input.a.x, func_3(var_0.e.a.x, ~firstTrailingBit(vec4<u32>(var_0.a.a.b, u_input.a.x, var_1.a.b, var_0.c)), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a, -2147483647i, var_2.d.x, var_0.b.x), var_2.d)), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> StorageBuffer {
    global1 = array<i32, 30>();
    var var_0 = Struct_3(vec2<bool>(true, true));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(~(~_wgslsmith_div_i32(-50204i, 1i)), max(select(global1[_wgslsmith_index_u32(~54172u, 30u)], -13388i, select(var_0.a.x, var_0.a.x, var_0.a.x)), global1[_wgslsmith_index_u32(max(0u, u_input.a.x), 30u)] | (-105159i ^ global1[_wgslsmith_index_u32(9322u, 30u)])), -5421i, global1[_wgslsmith_index_u32(~4294967295u, 30u)]), ~((~vec4<i32>(global1[_wgslsmith_index_u32(37536u, 30u)], 2147483647i, global1[_wgslsmith_index_u32(0u, 30u)], -1i) << (vec4<u32>(16674u, 33003u, 1u, 3128u) % vec4<u32>(32u))) << (func_4(!var_0.a.x, !vec4<bool>(true, var_0.a.x, var_0.a.x, true), func_2(false, 2703u), reverseBits(vec3<i32>(41522i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(38454u, 30u)]))) % vec4<u32>(32u))));
    var var_2 = 603f;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, arg_1.x, -724f))))), _wgslsmith_f_op_vec3_f32(-arg_1.yyx))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1016f)), arg_0, var_0.a.x)), _wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.zyw))), _wgslsmith_f_op_vec3_f32(ceil(arg_1.xzy)), select(var_0.a.x, all(vec4<bool>(false, var_0.a.x, true, var_0.a.x)), false))))));
    return StorageBuffer(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_3)), _wgslsmith_f_op_vec3_f32(-arg_1.xxy)), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(-(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 0i, global1[_wgslsmith_index_u32(4294967295u, 30u)], -50927i), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(30676u, 30u)])) & -1i)) > abs(global1[_wgslsmith_index_u32(21147u, 30u)]);
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    var_1 = -27944i;
    let var_2 = reverseBits(76909u);
    var var_3 = vec2<u32>(~var_2, 4294967295u);
    var var_4 = Struct_3(vec2<bool>(false, select(var_0, var_0, true)));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(max(-749f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -245f), -376f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, -662f, _wgslsmith_f_op_f32(trunc(-1364f)), _wgslsmith_f_op_f32(764f * -742f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-968f)), _wgslsmith_div_f32(-1082f, -508f), _wgslsmith_f_op_f32(-379f + -662f), _wgslsmith_f_op_f32(-1040f * 502f)))));
}

