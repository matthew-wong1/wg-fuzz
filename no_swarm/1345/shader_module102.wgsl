struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: array<Struct_1, 25>;

var<private> global3: vec4<i32>;

var<private> global4: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = vec4<u32>(countOneBits(~(~(~26104u))), 1u, abs(~1u), ~_wgslsmith_add_u32(~1u, firstTrailingBit(reverseBits(4294967295u))));
    global0 = global2[_wgslsmith_index_u32(63576u, 25u)];
    global3 = vec4<i32>(18212i << (((var_0.x & firstLeadingBit(66628u)) << (reverseBits(~var_0.x) % 32u)) % 32u), -abs((2147483647i & global0.b) >> (1u % 32u)), 1i, global3.x ^ global0.b);
    global3 = u_input.c;
    return 52816u;
}

fn func_2() -> Struct_2 {
    let var_0 = 592f;
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(~func_3()), 25u)];
    return Struct_2(0i, -49844i, _wgslsmith_mult_i32(global3.x, var_1.b), firstTrailingBit(vec4<i32>(~max(global0.b, 11562i), _wgslsmith_div_i32(0i, -22396i), var_1.b, -var_1.b & _wgslsmith_mult_i32(var_1.b, global3.x))), select(select(global4[_wgslsmith_index_u32(~0u, 27u)], vec3<bool>(true, any(vec4<bool>(true, true, false, true)), true), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), true)), !global4[_wgslsmith_index_u32(max(~1u, min(28388u, 1u)), 27u)], true));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, abs(abs(~14093u)), firstTrailingBit(~1u)), arg_0);
    global0 = global2[_wgslsmith_index_u32(arg_2.x, 25u)];
    global4 = array<vec3<bool>, 27>();
    var var_1 = -(~vec3<i32>(firstTrailingBit(-2147483647i) & -u_input.c.x, 1921i, arg_1.c));
    let var_2 = ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2.x, ~65348u), vec2<u32>(37204u >> (var_0.x % 32u), 4294967295u)));
    return 85034u;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(31972u, 4294967295u, 94124u, 4294967295u), vec4<u32>(0u, 16549u, 4294967295u, 60276u), vec4<u32>(4294967295u, 0u, 1u, 12510u))), func_4(vec3<u32>(30065u, 77981u, 17824u), func_2(), countOneBits(global1[_wgslsmith_index_u32(47005u, 18u)]), !vec2<bool>(arg_3.e.x, true)), 1u), vec4<u32>(~(~88046u), ~(~4294967295u), ~func_4(vec3<u32>(17477u, 57960u, 39751u), Struct_2(2147483647i, -2147483647i, -2147483647i, arg_3.d, vec3<bool>(arg_3.e.x, arg_3.e.x, true)), vec3<u32>(0u, 0u, 4224u), arg_3.e.zy), _wgslsmith_div_u32(~1u, abs(4294967295u)))) << (vec4<u32>(~(~abs(62867u)), ~32432u, ~(~1u), _wgslsmith_add_u32(1u, 1u << (select(0u, 0u, true) % 32u))) % vec4<u32>(32u));
    var var_2 = max(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, _wgslsmith_mod_i32(11647i, global3.x)), firstLeadingBit(global3.wz), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.c.x, arg_2), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.b))), _wgslsmith_mult_vec2_i32(abs(select(_wgslsmith_add_vec2_i32(global3.xx, global3.yx), vec2<i32>(arg_1.b, 1i), true)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b, arg_1.b ^ -2147483647i), -u_input.c.yy ^ vec2<i32>(arg_3.c, 1i))));
    let var_3 = Struct_2(-1i, ~2147483647i, global0.b, u_input.c, vec3<bool>(global0.a > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(sign(-915f))), true, true));
    var_1 = vec4<u32>(abs(~0u), var_1.x, ~var_1.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(9831u, _wgslsmith_mult_u32(var_1.x, var_1.x), ~97662u, 30644u), vec4<u32>(var_1.x, var_1.x, 1945u, 22636u) << (abs(vec4<u32>(var_1.x, 0u, 14950u, var_1.x)) % vec4<u32>(32u)))));
    return Struct_1(_wgslsmith_f_op_f32(arg_0 - -913f), firstTrailingBit(arg_2));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    let var_1 = 2147483647i;
    var var_2 = select(~func_2().d.xy, min(global3.xy, ~(vec2<i32>(global3.x, 1i) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), true) << (reverseBits(vec2<u32>(22258u, 12339u)) % vec2<u32>(32u));
    let var_3 = Struct_2(~arg_2.b, ~(select(~u_input.a, arg_3.c, true) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(38402u, 65396u), vec2<u32>(4294967295u, 80336u)) % 32u)), -10418i, select(vec4<i32>(-2147483647i, func_1(_wgslsmith_f_op_f32(min(arg_1.x, -452f)), func_1(arg_2.a, arg_2, -2147483647i, var_0), var_1, arg_3).b, -_wgslsmith_dot_vec4_i32(var_0.d, vec4<i32>(var_2.x, arg_3.a, var_1, var_0.c)), ~var_1), _wgslsmith_add_vec4_i32(vec4<i32>(var_1, abs(global0.b), ~2147483647i, func_1(global0.a, global2[_wgslsmith_index_u32(3810u, 25u)], 35669i, arg_3).b), func_2().d), !select(vec4<bool>(var_0.e.x, false, arg_3.e.x, var_0.e.x), select(vec4<bool>(var_0.e.x, var_0.e.x, arg_3.e.x, var_0.e.x), vec4<bool>(false, true, true, var_0.e.x), vec4<bool>(true, arg_3.e.x, var_0.e.x, arg_3.e.x)), !arg_3.e.x)), func_2().e);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + global0.a))))), _wgslsmith_f_op_f32(exp2(global0.a)));
    return 14089u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = global2[_wgslsmith_index_u32(min(~4294967295u, ~(~func_5(global2[_wgslsmith_index_u32(reverseBits(1u), 25u)], vec2<f32>(1989f, 1000f), func_1(944f, global2[_wgslsmith_index_u32(4294967295u, 25u)], 2147483647i, Struct_2(u_input.b.x, 1i, global3.x, vec4<i32>(global3.x, global3.x, global3.x, 0i), vec3<bool>(false, false, false))), Struct_2(8963i, 2147483647i, 1i, u_input.c, vec3<bool>(false, false, true))))), 25u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(abs(global0.a)))))), -1128f, global0.a, global0.a);
    var var_2 = countOneBits(max(vec2<u32>(1u, 1u), vec2<u32>(~(~4294967295u), ~26858u)));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~(~var_2.x), max(var_2.x, ~reverseBits(var_2.x))), _wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(var_2.x, var_2.x, var_2.x)), _wgslsmith_sub_u32(var_2.x, 66279u))), 25u)];
    let var_4 = reverseBits(abs(global3.wwx));
    let x = u_input.a;
    s_output = StorageBuffer(-(global0.b >> (47038u % 32u)));
}

