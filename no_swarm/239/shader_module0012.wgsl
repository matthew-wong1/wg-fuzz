struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<i32, 10>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 16>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = Struct_1(arg_0.c.x, 177f, !(select(true, !global4.x, arg_0.d) | (arg_0.b.x & !arg_0.b.x)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(81821u, arg_0.c.x, arg_0.c.x, arg_0.c.x)), vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.c, vec2<u32>(27312u, 28175u))), min(arg_0.c.x, arg_0.c.x) & 49224u, 21283u, 36605u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1081f, -786f) * _wgslsmith_f_op_f32(-1887f - 1021f))), -709f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1117f, var_0.e.x, -1966f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1073f, var_0.b)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.e.x, var_0.e.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, -1000f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1589f, -193f, var_0.b), vec3<f32>(-1787f, var_0.b, var_0.b))))));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 4254u, 1u, ~var_0.d.x), firstLeadingBit(abs(~var_0.d)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.x, ~1u, arg_0.c.x >> (0u % 32u), _wgslsmith_mult_u32(arg_0.c.x, var_0.d.x)), vec4<u32>(var_0.d.x, var_0.d.x & arg_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.c.x, 0u), var_0.d.zzy), 1u)) % vec4<u32>(32u)));
    global2 = 15507i;
    global2 = 1i;
    return global4.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(arg_0.c.x, 16u)];
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(~1u, 1u), select(var_0.d.wx ^ var_0.d.yw, ~var_0.d.wx, !vec2<bool>(var_0.c, var_0.c)), any(arg_0.b)), ~(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(38484u, 7u)], vec2<u32>(var_0.a, arg_0.c.x), vec2<u32>(arg_0.c.x, arg_0.c.x)) & vec2<u32>(arg_0.c.x, var_0.a))), vec2<u32>(max(abs(~arg_0.c.x), ~(~arg_0.c.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.d.x, 285u), vec3<u32>(4294967295u, 21739u, arg_0.c.x), var_0.d.wwx), _wgslsmith_clamp_vec3_u32(var_0.d.wzw, vec3<u32>(0u, var_0.d.x, 14694u), vec3<u32>(arg_0.c.x, 16770u, 0u))) >> (5376u % 32u))), 16u)];
    let var_2 = firstTrailingBit(arg_0.a.x) < _wgslsmith_clamp_i32(u_input.c, 22043i, arg_0.a.x);
    global1 = array<i32, 10>();
    global0 = array<vec2<u32>, 7>();
    return 4294967295u;
}

fn func_2() -> i32 {
    let var_0 = select(-(~(~vec3<i32>(global1[_wgslsmith_index_u32(1u, 10u)], 1i, -1i)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(21894u, 4294967295u, 1u)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(u_input.c, abs(global1[_wgslsmith_index_u32(0u, 10u)]) | countOneBits(36184i)), _wgslsmith_add_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(41525u, 10u)], u_input.b), i32(-1i) * -35277i) & ~_wgslsmith_add_i32(global1[_wgslsmith_index_u32(17914u, 10u)], -1i), -24233i), true);
    var var_1 = global3[_wgslsmith_index_u32(89548u, 16u)];
    var var_2 = global3[_wgslsmith_index_u32(func_4(Struct_2(select(select(countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(var_1.d.x, 10u)], -1i, global1[_wgslsmith_index_u32(var_1.d.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), firstLeadingBit(vec4<i32>(-4289i, 18174i, var_0.x, var_0.x)), vec4<bool>(false, false, true, false)), ~(~vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(var_1.a, 10u)], var_0.x, u_input.c)), vec4<bool>(false, true, false | var_1.c, any(global4.wy))), vec2<bool>(func_3(Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(1u, 10u)], -2147483647i, var_0.x, var_0.x), global4.wy, vec2<u32>(var_1.d.x, var_1.a), var_1.c), all(vec4<bool>(true, global4.x, false, true))), func_3(Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(41402u, 10u)], 41831i, global1[_wgslsmith_index_u32(var_1.a, 10u)], u_input.b), global4.yx, vec2<u32>(73649u, 4294967295u), true), true)), vec2<u32>(~_wgslsmith_mod_u32(44871u, var_1.d.x), ~4294967295u), all(global4.wyz)), var_0), 16u)];
    let var_3 = vec4<u32>(0u, 61028u, ~var_1.a, 13414u);
    global1 = array<i32, 10>();
    return -27137i;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = -2147483647i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(exp2(arg_0.x))) * _wgslsmith_f_op_f32(ceil(653f))) + _wgslsmith_f_op_f32(1051f * arg_0.x)), arg_0.x, -708f);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.x)))), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_2.x, -213f, 330f), vec4<f32>(-1150f, arg_0.x, 1840f, -352f)) * vec4<f32>(-1640f, 213f, 1556f, 923f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-214f + 2442f), var_2.x, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(1486f - arg_0.x)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, var_2.x)))))));
    var var_4 = Struct_1(~(_wgslsmith_clamp_u32(0u, ~33676u, _wgslsmith_dot_vec4_u32(vec4<u32>(33743u, 3273u, 30342u, 0u), vec4<u32>(20612u, 0u, 4294967295u, 1u))) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(11456u, 42870u, 7941u), vec3<u32>(4294967295u, 4294967295u, 34363u)) >> (~0u % 32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), var_0 <= var_0, ~(vec4<u32>(1u, 1u, 1u, 1u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(20553u, 50505u, 50275u, 49026u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))), var_3.yw);
    return Struct_1(var_4.d.x, _wgslsmith_f_op_f32(-974f - -874f), false, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~32041u, var_4.d.x, var_4.a << (var_4.a % 32u), var_4.a << (0u % 32u)), var_4.d, min(vec4<u32>(1u, var_4.a, var_4.a, var_4.a), var_4.d) >> (var_4.d % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-169f - _wgslsmith_div_f32(var_2.x, var_4.b)), -1572f))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = -firstTrailingBit(-22489i >> (1u % 32u));
    let var_1 = vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -2089f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-904f, -827f, func_1(_wgslsmith_f_op_vec2_f32(round(arg_1.e))).c)) - _wgslsmith_f_op_f32(arg_1.e.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f + -611f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.e.x, 290f), -700f)));
    let var_2 = _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, reverseBits(7384i), -30716i, -u_input.b), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(28689i, u_input.c, u_input.c, -10714i)) << (vec4<u32>(arg_0, arg_1.d.x, 55545u, 25385u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(arg_2.x, 10u)], u_input.a, global1[_wgslsmith_index_u32(arg_0, 10u)]), vec4<i32>(u_input.a, u_input.c, global1[_wgslsmith_index_u32(arg_1.a, 10u)], global1[_wgslsmith_index_u32(arg_2.x, 10u)])), min(u_input.c, u_input.b), -1i, -20754i))) << (select(~(~1u), 1u, true) % 32u);
    var var_3 = global3[_wgslsmith_index_u32(select(17318u, _wgslsmith_mod_u32(~0u, _wgslsmith_div_u32(arg_2.x, 1118u)), !func_1(arg_1.e).c), 16u)];
    let var_4 = Struct_1(1470u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1732f + _wgslsmith_div_f32(1000f, arg_1.b)) - arg_1.b)), !all(select(!vec4<bool>(var_3.c, true, false, global4.x), select(vec4<bool>(false, false, false, global4.x), vec4<bool>(global4.x, var_3.c, false, global4.x), vec4<bool>(arg_1.c, true, arg_1.c, global4.x)), global4.x)), min(vec4<u32>(~func_4(Struct_2(vec4<i32>(global1[_wgslsmith_index_u32(0u, 10u)], -2147483647i, var_2, u_input.c), vec2<bool>(global4.x, arg_1.c), arg_1.d.xy, false), vec3<i32>(u_input.b, u_input.a, u_input.b)), ~arg_2.x >> (countOneBits(arg_0) % 32u), ~arg_2.x, arg_1.d.x), ~(~var_3.d ^ firstTrailingBit(vec4<u32>(arg_1.d.x, 23493u, 0u, 77177u)))), _wgslsmith_f_op_vec2_f32(-var_1.yx));
    return Struct_2(~(-(~vec4<i32>(48806i, 83876i, 0i, -15828i))) ^ min(firstLeadingBit(vec4<i32>(-1i, var_2, 2147483647i, var_2)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(20613i, -7001i, global1[_wgslsmith_index_u32(0u, 10u)], 27581i), vec4<i32>(0i, u_input.c, u_input.c, u_input.b)), vec4<i32>(global1[_wgslsmith_index_u32(arg_2.x, 10u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 10u)], -2147483647i))), !select(select(!vec2<bool>(var_3.c, var_4.c), vec2<bool>(arg_1.c, var_3.c), select(vec2<bool>(var_3.c, var_4.c), vec2<bool>(false, global4.x), false)), vec2<bool>(true, any(vec4<bool>(true, true, true, global4.x))), !(!global4.ww)), vec2<u32>(~1u >> (~var_3.d.x % 32u), 13407u), func_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_1.e.x - var_1.x), _wgslsmith_f_op_f32(229f - var_3.e.x))))).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, 9493u), 32923u)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -433f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(687f, 485f), vec2<f32>(1000f, -306f)) - vec2<f32>(900f, -1000f)))), select(global0[_wgslsmith_index_u32(~12916u, 7u)], _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), countOneBits(global0[_wgslsmith_index_u32(30941u, 7u)])), vec2<bool>(all(global4.xy), false)));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(-(~var_0.a >> (~vec4<u32>(4294967295u, 4294967295u, var_0.c.x, var_0.c.x) % vec4<u32>(32u))), max(vec4<i32>(-65012i, 0i, global1[_wgslsmith_index_u32(35781u, 10u)], var_0.a.x) | reverseBits(var_0.a), var_0.a)), vec2<bool>(func_3(var_0, false), global4.x), ~_wgslsmith_div_vec2_u32(~vec2<u32>(31840u, 0u), ~var_0.c) & vec2<u32>(1u, 96639u), !(var_0.b.x & !any(vec4<bool>(true, var_0.d, true, false))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-348f))) != 1f;
    var var_3 = func_1(vec2<f32>(1f, 1f));
    var_2 = global4.x;
    let var_4 = false;
    var var_5 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1716f)), _wgslsmith_f_op_f32(-846f * _wgslsmith_f_op_f32(f32(-1f) * -1297f)), var_3.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) + _wgslsmith_f_op_f32(sign(var_3.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f + _wgslsmith_f_op_f32(-var_3.e.x)) - -1347f))));
    let var_6 = global3[_wgslsmith_index_u32((var_0.c.x & 1u) & var_3.d.x, 16u)];
    let var_7 = _wgslsmith_sub_u32(var_3.d.x, abs(77697u));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(u_input.a, u_input.a, _wgslsmith_div_i32(u_input.c, var_1.a.x))), min(~(~var_0.c), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(755f, var_5.x) * vec2<f32>(var_3.e.x, var_6.e.x))).d.wz), 689f, vec4<u32>(4294967295u, 40616u, ~countOneBits(var_3.d.x), abs(47866u)));
}

