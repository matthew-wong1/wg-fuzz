struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(-24968i, 11025i)), Struct_2(vec2<i32>(27346i, -1i)), Struct_2(vec2<i32>(1i, -1i)), Struct_2(vec2<i32>(-23073i, 0i)), Struct_2(vec2<i32>(1i, -467i)), Struct_2(vec2<i32>(i32(-2147483648), -58049i)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(vec2<i32>(-1i, -16324i)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<i32>(-1i, -17135i)), Struct_2(vec2<i32>(2147483647i, 2147483647i)), Struct_2(vec2<i32>(1i, 0i)), Struct_2(vec2<i32>(25091i, -1i)), Struct_2(vec2<i32>(-11429i, 2147483647i)), Struct_2(vec2<i32>(0i, 35299i)), Struct_2(vec2<i32>(12614i, 2147483647i)), Struct_2(vec2<i32>(-20641i, -31864i)), Struct_2(vec2<i32>(-8545i, -18761i)), Struct_2(vec2<i32>(1i, 2147483647i)), Struct_2(vec2<i32>(7486i, 52377i)), Struct_2(vec2<i32>(-25270i, 38809i)), Struct_2(vec2<i32>(0i, -6941i)), Struct_2(vec2<i32>(48846i, -42580i)), Struct_2(vec2<i32>(27983i, -8115i)), Struct_2(vec2<i32>(1i, 13573i)), Struct_2(vec2<i32>(-4387i, 30636i)), Struct_2(vec2<i32>(-54159i, 1i)));

var<private> global2: Struct_3 = Struct_3(Struct_2(vec2<i32>(-1i, -30753i)), vec4<f32>(171f, -291f, 1585f, 571f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    let var_0 = vec4<bool>(global0.x, !(~firstLeadingBit(arg_0.x) != ~(~75214u)), !(!(false & global0.x)), global0.x);
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    var var_1 = ~select(vec2<i32>(~_wgslsmith_add_i32(0i, arg_1.a.a.x), 22437i), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(-1i, 2147483647i)), ~global2.a.a & (vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)))), any(select(select(var_0, vec4<bool>(global0.x, false, false, false), var_0.x), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, global0.x), var_0), false)));
    let var_2 = Struct_4(max(~u_input.a.x, 1u) ^ _wgslsmith_mod_u32(min(1u, 1u), ~61143u), global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, _wgslsmith_f_op_f32(f32(-1f) * -883f), -493f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-904f, global2.b.x, global2.b.x)))))), Struct_1(arg_1.a.a.x, 1i));
    return global0.x;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~abs(u_input.a)), _wgslsmith_add_vec4_u32(u_input.a, ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 27907u, 9827u, 0u), vec4<u32>(4294967295u, u_input.a.x, 30121u, 33894u)))));
    global0 = vec2<bool>(!global0.x, all(vec3<bool>(true, ~42044u != var_0.x, !(true && global0.x))));
    var var_1 = all(vec3<bool>(true, u_input.b.x >= ~1u, !(all(vec2<bool>(global0.x, false)) || (global0.x & global0.x))));
    let var_2 = !any(!vec3<bool>(global0.x, false, select(global0.x, false, global0.x)));
    var_1 = func_3(vec2<u32>(select(select(28351u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.x, 89661u, 4294967295u, var_0.x)), true), ~(u_input.a.x & 29240u), true), var_0.x), Struct_3(Struct_2(vec2<i32>(_wgslsmith_mod_i32(1457i, 77193i), _wgslsmith_mod_i32(u_input.c, global2.a.a.x))), global2.b));
    return 19561i;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> Struct_4 {
    let var_0 = ~(~min(vec2<i32>(max(global2.a.a.x, u_input.c), ~global2.a.a.x), vec2<i32>(-81052i, ~(-2147483647i))));
    return Struct_4(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(30735u, 4294967295u), u_input.a.xy) ^ ~38008u), Struct_2(select(~_wgslsmith_add_vec2_i32(global2.a.a, global2.a.a), -vec2<i32>(var_0.x, arg_0.x), global0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, _wgslsmith_f_op_f32(max(global2.b.x, -480f)), global2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(abs(global2.b.x)), -1182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x))))), Struct_1(arg_0.x, ~(-37613i)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(global2.a.a.x, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-88719i, 1i, global2.a.a.x)), vec3<i32>(~(i32(-1i) * -2147483647i), (u_input.c >> (u_input.a.x % 32u)) ^ 2147483647i, ~(global2.a.a.x << (0u % 32u)))));
    let var_1 = ~1i;
    var var_2 = -731i;
    var var_3 = 51270i;
    let var_4 = func_4(~(~_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, global2.a.a.x, -69780i), vec3<i32>(u_input.c, 1i, global2.a.a.x)), vec3<i32>(global2.a.a.x, u_input.c, var_1))), _wgslsmith_dot_vec4_i32(vec4<i32>(select(-global2.a.a.x, u_input.c, any(vec4<bool>(false, true, global0.x, global0.x))), func_2(), abs(-31920i), -2147483647i), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, global2.a.a.x, global2.a.a.x), vec3<i32>(u_input.c, var_1, global2.a.a.x)), reverseBits(1i)), firstLeadingBit(-global2.a.a.x), reverseBits(var_1) ^ firstLeadingBit(12749i), ~u_input.c)), !any(vec3<bool>(global0.x, !global0.x, select(global0.x, false, true))));
    return Struct_3(func_4(vec3<i32>(var_4.d.b, func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_4.b.a.x, var_4.d.a, var_1), vec3<i32>(var_4.d.b, 1i, u_input.c)), -global2.a.a.x, true).b.a.x, -1i), 1i, any(!vec4<bool>(false, true, true, global0.x)) && true).b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) * vec4<f32>(var_4.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1671f), 399f, global2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = Struct_3(Struct_2(vec2<i32>(-9456i & (global2.a.a.x & global2.a.a.x), global2.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global2.b, global2.b)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1377f, -199f, global2.b.x, global2.b.x) * vec4<f32>(363f, global2.b.x, -667f, global2.b.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(359f, global2.b.x, 993f, -586f), global2.b)), vec4<f32>(_wgslsmith_f_op_f32(sign(global2.b.x)), global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -965f), global2.b.x), !select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, false, global0.x, global0.x), true)))));
    let var_0 = countOneBits(_wgslsmith_mod_u32(u_input.b.x, countOneBits(~(~4729u))));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(7397u, max(var_0, 2485u)), ~reverseBits(0u), 20413u, _wgslsmith_mult_u32(1u, u_input.a.x) & _wgslsmith_sub_u32(u_input.b.x, var_0 ^ var_0)), u_input.a);
    var var_2 = vec3<i32>(-15481i, 0i, -2147483647i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b.x - global2.b.x))))) * 1259f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, func_1().b.x)), var_1.x, _wgslsmith_f_op_vec4_f32(max(global2.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -1846f, global2.b.x, 836f)), _wgslsmith_f_op_vec4_f32(-global2.b), !(!global0.x))))));
}

