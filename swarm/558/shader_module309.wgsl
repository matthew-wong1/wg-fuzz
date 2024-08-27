struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec4<bool>(true, false, true, false), true, 609f);

var<private> global3: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(60916u, 22378u, 45612u, 22707u), vec4<u32>(23722u, 55698u, 8036u, 0u), vec4<u32>(99669u, 1u, 89701u, 44905u), vec4<u32>(46618u, 33344u, 16898u, 1u), vec4<u32>(4294967295u, 38231u, 111045u, 1u), vec4<u32>(4936u, 16176u, 0u, 4294967295u), vec4<u32>(4294967295u, 9797u, 42497u, 18206u), vec4<u32>(41414u, 37204u, 1932u, 4294967295u), vec4<u32>(58433u, 4294967295u, 4294967295u, 0u), vec4<u32>(47462u, 90623u, 27065u, 15845u), vec4<u32>(19031u, 0u, 49327u, 44722u), vec4<u32>(4294967295u, 45097u, 51936u, 0u), vec4<u32>(4294967295u, 39664u, 0u, 1u), vec4<u32>(0u, 23836u, 50754u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 16545u, 1u), vec4<u32>(10222u, 21583u, 46876u, 1u), vec4<u32>(4294967295u, 7920u, 1u, 1u), vec4<u32>(76239u, 1u, 21136u, 33913u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(20132u, 21223u, 4294967295u, 4294967295u), vec4<u32>(1u, 4294967295u, 24400u, 4294967295u), vec4<u32>(4294967295u, 62051u, 1u, 25363u), vec4<u32>(25427u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(13586u, 35295u, 62279u, 5792u), vec4<u32>(22848u, 16222u, 4294967295u, 47993u), vec4<u32>(54884u, 0u, 83421u, 5046u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    let var_0 = Struct_1(~(~_wgslsmith_mult_u32(~28244u, min(u_input.b, 1u))), !global2.b, global2.b.x, arg_2);
    global3 = array<vec4<u32>, 27>();
    var var_1 = Struct_1(~_wgslsmith_clamp_u32(48007u, ~var_0.a, 0u), select(vec4<bool>(_wgslsmith_mod_u32(3233u, u_input.e) <= u_input.b, global2.c, abs(global2.a) == ~u_input.b, global2.c & all(global2.b.wz)), global2.b, vec4<bool>(all(global2.b.yxx), !all(global2.b.xxz), all(select(vec2<bool>(global2.c, global2.c), global2.b.xx, false)), true)), true, 1444f);
    global2 = Struct_1(4294967295u, !select(vec4<bool>(var_1.b.x && global2.c, !global2.c, !global2.b.x, !global2.b.x), vec4<bool>(any(var_1.b.zz), global2.c, !var_0.b.x, all(vec3<bool>(false, global2.c, var_0.c))), false), u_input.b >= var_1.a, 1000f);
    let var_2 = countOneBits(vec4<i32>(-1247i & max(_wgslsmith_add_i32(u_input.a.x, 13691i), u_input.a.x), u_input.a.x, select(-global0.x & _wgslsmith_mod_i32(-1i, 18894i), -19482i, ~global2.a <= var_1.a), firstTrailingBit(-global0.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1252f, _wgslsmith_f_op_f32(step(1408f, arg_0)))))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(global2.a, global2.b, arg_1.x, _wgslsmith_f_op_f32(func_3(-1362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-919f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(733f, arg_2))), global1.xz))), arg_1.x);
    global3 = array<vec4<u32>, 27>();
    global0 = -vec2<i32>(firstLeadingBit(-27867i), ~(~_wgslsmith_div_i32(global0.x, u_input.a.x)));
    global0 = _wgslsmith_add_vec2_i32(~(~min(u_input.a, u_input.c.xx) >> (select(~arg_3, countOneBits(arg_3), false) % vec2<u32>(32u))), ((vec2<i32>(u_input.c.x, u_input.c.x) & u_input.a) << (~vec2<u32>(0u, 39835u) % vec2<u32>(32u))) & (_wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 59387i), u_input.a), ~u_input.c.xz) | -(~u_input.c.xz)));
    global2 = Struct_1(0u, select(vec4<bool>(~u_input.d >= (global0.x << (global2.a % 32u)), true, global2.d < _wgslsmith_f_op_f32(-1000f + global1.x), arg_0), !select(select(var_0.a.b, global2.b, vec4<bool>(global2.c, arg_1.x, var_0.a.b.x, arg_0)), global2.b, select(vec4<bool>(global2.c, arg_0, true, arg_0), vec4<bool>(true, arg_0, true, true), var_0.a.b)), !(true && (global2.a <= 0u))), !(!global2.c), 1000f);
    return Struct_1(26915u, select(vec4<bool>(false, any(!vec3<bool>(false, arg_1.x, arg_0)), !arg_0, true && (arg_1.x == false)), select(!var_0.a.b, var_0.a.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, 50713u, 84796u, 0u), vec4<u32>(arg_3.x, 4294967295u, u_input.b, 22897u)) <= global2.a), vec4<bool>(true, false, all(!arg_1), false)), !var_0.b, _wgslsmith_f_op_f32(max(arg_2, -1545f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_2(func_2(true, global2.b.yzw, -391f, ~vec2<u32>(59139u, _wgslsmith_add_u32(u_input.e, 2000u))), global2.c);
    let var_1 = 4294967295u;
    var var_2 = Struct_1(u_input.b, global2.b, !(global1.x >= -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + -1000f)));
    let var_3 = countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, u_input.d, 2147483647i), vec3<i32>(32587i, u_input.d, global0.x)) << (vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a) % vec3<u32>(32u)), ~u_input.c)) & global0.x;
    global2 = Struct_1(10000u, func_2(var_2.c, global2.b.wyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.d - -2233f), func_2(global2.c, var_2.b.yyw, -384f, vec2<u32>(6862u, 0u)).d)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(457f * arg_1.x)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(global2.a, u_input.e) >> (vec2<u32>(86681u, 42322u) % vec2<u32>(32u)), ~(vec2<u32>(global2.a, 0u) & vec2<u32>(27805u, 41713u)))).b, !(!var_2.c), _wgslsmith_f_op_f32(-global1.x));
    return ~(~_wgslsmith_dot_vec2_u32((vec2<u32>(global2.a, 4294967295u) << (vec2<u32>(89537u, global2.a) % vec2<u32>(32u))) | (vec2<u32>(var_2.a, global2.a) ^ vec2<u32>(var_2.a, global2.a)), firstLeadingBit(~vec2<u32>(u_input.e, var_0.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(738f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, global1.x, global2.d) * vec3<f32>(global2.d, -676f, -1000f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1960f, 1786f, 523f), vec3<f32>(global2.d, global2.d, global1.x), global2.b.xww))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, 1861f, 1675f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d, 1384f, 181f) + vec3<f32>(-484f, global2.d, global1.x))))), max(vec3<u32>(_wgslsmith_div_u32(24861u, u_input.e), 4294967295u, _wgslsmith_mult_u32(4294967295u, global2.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(96145u, global2.a), func_1(vec4<f32>(-1154f, -1405f, 445f, 455f), global1.yy), select(global2.a, u_input.e, global2.b.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, global2.a), vec3<u32>(20359u, u_input.b, global2.a)), firstLeadingBit(vec3<u32>(89u, u_input.e, 4294967295u)), global2.b.xzy), ~(vec3<u32>(52090u, 65810u, u_input.b) & vec3<u32>(u_input.e, u_input.b, 73977u)))), -2147483647i);
}

