struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(1u, 765f), Struct_5(4294967295u, -1000f), Struct_5(1u, -366f), Struct_5(26934u, 1000f), Struct_5(0u, -807f), Struct_5(60128u, -377f), Struct_5(1u, 1290f));

var<private> global4: Struct_3 = Struct_3(vec3<i32>(13520i, 1i, 23337i), true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = global4.a.x ^ -(i32(-1i) * -max(global2.d, global4.a.x));
    global0 = 1192f;
    var var_1 = global2.a ^ ~(~global1.x);
    let var_2 = !(!select(select(select(vec3<bool>(arg_1, global4.b, true), vec3<bool>(false, false, global4.b), vec3<bool>(global4.b, global4.b, true)), vec3<bool>(false, global4.b, true), -437f < arg_0), !vec3<bool>(arg_1, false, arg_1), vec3<bool>(global1.x >= global1.x, var_0 <= -42078i, true)));
    let var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec3<u32> {
    global4 = Struct_3(-(~(~vec3<i32>(-1i, u_input.a.x, -2147483647i)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.b.e, arg_0.b.e), 10722u, _wgslsmith_div_u32(arg_0.b.e.x, 18778u)) % vec3<u32>(32u))), true);
    global0 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.b.a))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c.x, all(!vec4<bool>(true, false, true, global4.b))))), 263f);
    let var_0 = global3[_wgslsmith_index_u32(arg_0.b.e.x | (global2.a >> (~arg_0.b.e.x % 32u)), 7u)];
    global3 = array<Struct_5, 7>();
    return ~global1.yzz;
}

fn func_2() -> vec4<f32> {
    var var_0 = vec3<i32>(-31519i, -2147483647i, 1i) << ((firstTrailingBit(~vec3<u32>(4294967295u, global2.a, 1u)) << (vec3<u32>(firstTrailingBit(114317u), global2.e.x, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(f32(-1f) * -2537f)), global2.c.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.x, -140f, -1140f, -101f), vec4<f32>(1372f, global2.b.a, 992f, -1480f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a, 262f, global2.c.x, global2.c.x) * vec4<f32>(-1000f, global2.c.x, 1295f, global2.c.x))))))), Struct_2(4294967295u, global2.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1059f, global2.b.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.b.a, global2.b.a))), _wgslsmith_div_vec2_f32(global2.c, vec2<f32>(global2.b.a, global2.c.x))))), firstTrailingBit(0i), vec3<u32>(_wgslsmith_add_u32(0u, ~51564u), firstTrailingBit(_wgslsmith_add_u32(global1.x, global2.e.x)), 17199u)), vec4<i32>(u_input.a.x, 5537i, 41906i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(13654i, var_0.x), ~(-12777i), global4.a.x >> (global2.e.x % 32u)), -min(global4.a, global4.a))));
    var var_2 = -879f;
    var var_3 = ~(~abs((vec3<u32>(global2.a, 0u, 54707u) >> (global2.e % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.b.e.x, global2.a), vec3<u32>(var_1.b.a, var_1.b.a, 12581u)) % vec3<u32>(32u))));
    let var_4 = Struct_2(~1u, Struct_1(var_1.b.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c.x, -108f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.b.c)))), 17276i, min(func_4(Struct_4(var_1.a, Struct_2(40719u, global2.b, vec2<f32>(1206f, var_1.a.x), 2147483647i, vec3<u32>(global2.a, 1u, 13184u)), ~var_1.c), !vec2<bool>(global4.b, global4.b), vec2<f32>(_wgslsmith_f_op_f32(func_3(1047f, true, var_1.b.b)), _wgslsmith_f_op_f32(945f + var_1.a.x))), vec3<u32>(abs(var_3.x), var_1.b.e.x, _wgslsmith_mult_u32(~var_3.x, var_3.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -307f), global2.c.x)), var_4.c.x, global2.b.a, _wgslsmith_f_op_f32(func_3(global2.b.a, global4.b, global2.b))))));
}

fn func_5(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = global2.b;
    var var_1 = Struct_3(vec3<i32>(-1i, ~global4.a.x, 49231i), !global4.b);
    global3 = array<Struct_5, 7>();
    var var_2 = global2.e.yx;
    global4 = Struct_3(vec3<i32>(-1i) * -(~var_1.a << (~vec3<u32>(global1.x, global1.x, var_2.x) % vec3<u32>(32u))), !var_1.b);
    return Struct_4(vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(arg_0.x, 1052f, global4.b))) + 449f), 522f, arg_0.x), Struct_2(4294967295u, Struct_1(var_0.a), arg_0.wy, 1i, ~select(_wgslsmith_add_vec3_u32(vec3<u32>(global2.a, 46252u, global2.a), vec3<u32>(1u, var_2.x, 0u)), ~global2.e, true)), max(_wgslsmith_mod_vec4_i32(abs(reverseBits(vec4<i32>(global2.d, u_input.a.x, global4.a.x, global2.d))), vec4<i32>(-12127i, var_1.a.x, -var_1.a.x, 0i ^ global2.d)), vec4<i32>(-507i, max(global2.d, -2147483647i), 50038i, ~(-1i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec2<f32>) -> u32 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())));
    global2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))).b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-729f * var_0.a.x), 1436f);
    global0 = arg_2.b;
    global4 = Struct_3(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, -77878i, 1i)) | global4.a, u_input.a >> (vec3<u32>(_wgslsmith_div_u32(1u, 92710u), ~arg_2.a, _wgslsmith_mod_u32(1u, global1.x)) % vec3<u32>(32u))), true);
    return 0u;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> vec2<u32> {
    return ~_wgslsmith_sub_vec2_u32(~global1.yw, ~reverseBits(global1.wx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(14023i, global4.a.x, ~global2.d), vec3<i32>(-2147483647i, ~global4.a.x, -global2.d) & (global4.a >> (vec3<u32>(global1.x, 30627u, 4294967295u) % vec3<u32>(32u))), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-4483i, 2147483647i, global4.a.x), u_input.a))), true);
    let var_1 = Struct_5(countOneBits(~global2.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)));
    let var_2 = func_6(var_0.b, _wgslsmith_div_u32(32193u, _wgslsmith_div_u32(global2.e.x, firstTrailingBit(60098u) ^ func_1(global2.b, Struct_1(-1166f), Struct_5(72365u, var_1.b), vec2<f32>(433f, -1000f)))), Struct_4(vec4<f32>(global2.c.x, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-562f, global2.c.x, var_1.b, -1000f) + vec4<f32>(1132f, global2.b.a, 653f, global2.b.a))).a.x, _wgslsmith_f_op_f32(func_3(var_1.b, -2147483647i >= u_input.a.x, global2.b)), _wgslsmith_f_op_f32(step(-620f, -1145f))), func_5(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2()).x, -1754f, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.b))).b, -(~select(vec4<i32>(global2.d, var_0.a.x, u_input.a.x, 2147483647i), vec4<i32>(17999i, 2147483647i, -1i, -2147483647i), false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, _wgslsmith_f_op_f32(floor(-430f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(round(190f)))));
    let var_4 = min(abs(~min(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x), vec4<u32>(var_1.a, 43402u, global2.e.x, var_1.a) | vec4<u32>(4294967295u, var_2.x, 35470u, 0u))), firstLeadingBit(~(~firstTrailingBit(vec4<u32>(4294967295u, global1.x, 40400u, var_2.x)))));
    global0 = _wgslsmith_f_op_f32(-1193f + 982f);
    global3 = array<Struct_5, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(-max(1i, -1i), global2.d, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, u_input.a.x), global4.a.x), abs(_wgslsmith_add_i32(-17733i, u_input.a.x))), (~vec4<i32>(-11614i, -19363i, -2147483647i, global4.a.x) << (vec4<u32>(global2.a, 16366u, var_2.x, 4294967295u) % vec4<u32>(32u))) & (_wgslsmith_mod_vec4_i32(vec4<i32>(global4.a.x, 2147483647i, global2.d, global2.d), vec4<i32>(global4.a.x, global2.d, -2147483647i, global2.d)) >> (var_4 % vec4<u32>(32u)))), -1047f, var_4, _wgslsmith_add_i32(u_input.a.x, -2147483647i), vec3<f32>(var_3.x, -787f, -660f));
}

