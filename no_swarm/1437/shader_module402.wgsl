struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, -1i, i32(-2147483648), 2147483647i, 65616i, -1i, 2147483647i, 1i, i32(-2147483648), 2147483647i, 2147483647i, 3397i, 0i, 0i, 49312i, 1i, 42331i, -18817i, 77864i, 0i, -35725i, i32(-2147483648), i32(-2147483648), -14355i);

var<private> global1: i32;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(false, 1262f), Struct_2(false, 558f), Struct_2(true, 918f), Struct_2(false, -1407f), Struct_2(true, 721f), Struct_2(false, 564f), Struct_2(false, 1299f), Struct_2(true, 629f), Struct_2(true, -1000f), Struct_2(false, 670f), Struct_2(false, 1000f), Struct_2(false, -1189f), Struct_2(true, -411f), Struct_2(true, -841f), Struct_2(false, 106f), Struct_2(true, -2287f), Struct_2(false, -413f), Struct_2(false, -647f), Struct_2(false, -1839f), Struct_2(true, -1574f), Struct_2(false, -1000f), Struct_2(true, -1738f), Struct_2(true, -366f), Struct_2(false, 805f), Struct_2(true, 1643f), Struct_2(true, 766f), Struct_2(true, -102f), Struct_2(true, 191f));

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    global3 = Struct_1(abs(max(abs(0u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(13679u, 0u), vec2<u32>(global3.a, global3.a)), 7554u))), !global3.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-307f, 192f)))), -883f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(509f, global3.c) - -215f) + -369f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(978f))), select(vec4<bool>(_wgslsmith_f_op_f32(exp2(global3.d)) <= _wgslsmith_div_f32(-2135f, global3.d), true, global3.b, false), vec4<bool>(true, !any(global3.e), false | global3.e.x, !select(global3.e.x, global3.e.x, global3.b)), all(vec3<bool>(!global3.e.x, true, !global3.e.x))));
    let var_0 = Struct_2(true || !any(global3.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.c)))));
    global3 = Struct_1(_wgslsmith_mod_u32(global3.a, abs(_wgslsmith_add_u32(~global3.a, 43364u))), any(global3.e.wy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), _wgslsmith_f_op_f32(floor(var_0.b)), vec4<bool>(global3.b, (u_input.a.x ^ -44900i) > _wgslsmith_mod_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1i), 1i), var_0.a, global3.b));
    var var_1 = -select(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -8560i, u_input.a.x), u_input.a.xxw, u_input.a.wxy), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, global0[_wgslsmith_index_u32(global3.a, 24u)]), 2147483647i, ~global0[_wgslsmith_index_u32(22303u, 24u)])), vec3<i32>(global0[_wgslsmith_index_u32(~global3.a, 24u)] & -13059i, _wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(3808u, 24u)]), global0[_wgslsmith_index_u32(1u, 24u)]), 0i), !any(!global3.e.xxw));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(621f, _wgslsmith_f_op_f32(-global3.c)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-864f, -1111f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = u_input.a.wzy << (~vec3<u32>(global3.a, ~31369u ^ global3.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a, 4294967295u, arg_2.a), vec3<u32>(1u, arg_2.a, global3.a)), ~global3.a)) % vec3<u32>(32u));
    var var_1 = !any(select(!(!vec2<bool>(arg_2.e.x, false)), select(global3.e.zy, arg_2.e.xy, true), arg_2.e.yz));
    var_1 = true;
    var_0 = abs(vec3<i32>(global0[_wgslsmith_index_u32(arg_2.a, 24u)], _wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(u_input.a.x, var_0.x, var_0.x)) << (1u % 32u), reverseBits(global0[_wgslsmith_index_u32(arg_2.a << (global3.a % 32u), 24u)])) >> (_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(56941u, 39390u, 44429u)), select(vec3<u32>(11895u, global3.a, 54953u), vec3<u32>(26440u, arg_2.a, 7450u), vec3<bool>(true, arg_2.b, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.a, 1u, 29404u), select(vec3<u32>(global3.a, arg_2.a, global3.a), vec3<u32>(7272u, 0u, global3.a), false))) % vec3<u32>(32u)));
    global2 = array<Struct_2, 28>();
    return true;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = !arg_0.e.x;
    return abs(1u);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    global2 = array<Struct_2, 28>();
    var var_0 = all(!select(!select(vec2<bool>(global3.b, true), global3.e.xw, global3.e.yy), !vec2<bool>(true, arg_1.a), arg_1.a | all(global3.e)));
    var_0 = arg_1.a;
    let var_1 = ~_wgslsmith_mod_u32(4294967295u, select(9839u, reverseBits(global3.a) ^ _wgslsmith_div_u32(global3.a, global3.a), false));
    var var_2 = u_input.a.zyw;
    return func_5(Struct_1(6432u, true || any(vec2<bool>(arg_1.a, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) + arg_1.b), vec4<bool>(arg_1.a, func_4(Struct_2(arg_1.a, 1000f), Struct_2(true, arg_1.b), Struct_1(var_1, true, 565f, arg_0, global3.e), _wgslsmith_f_op_vec2_f32(func_3())), true, all(!global3.e.xwx))), select(global3.e.xy, vec2<bool>(false, true), false));
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = ~vec2<u32>(global3.a, 7826u);
    global0 = array<i32, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.c, 2113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c + -616f))) * _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-arg_2.x))))));
    global0 = array<i32, 24>();
    global3 = Struct_1(_wgslsmith_mult_u32(var_0.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 81260u, 48363u, global3.a) | vec4<u32>(11966u, global3.a, global3.a, var_0.x), abs(vec4<u32>(17839u, var_0.x, global3.a, 4294967295u))), 90572u, all(!global3.e.wzz))), true, 1000f, -1372f, !(!(!global3.e)));
    return Struct_2(false || all(global3.e.yx), -592f);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(arg_3, _wgslsmith_mult_u32(arg_3, arg_1), _wgslsmith_mult_u32(arg_3, arg_3), ~_wgslsmith_dot_vec3_u32(vec3<u32>(2628u, 0u, 4294967295u), vec3<u32>(1u, arg_3, 1u))), ~(~(~(vec4<u32>(4106u, arg_1, arg_1, arg_3) >> (vec4<u32>(4294967295u, 6436u, 57881u, arg_3) % vec4<u32>(32u))))));
    global2 = array<Struct_2, 28>();
    var var_1 = func_6(abs(-434i), (arg_0.x ^ -42330i) >> (func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(all(vec2<bool>(global3.b, global3.e.x)), -227f)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.c, -879f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, 187f) * vec2<f32>(276f, 427f)))) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global3.c)))), global3.d)));
    return func_6(arg_0.x, -max(-u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(2964u, 24u)], 1i)), vec4<i32>(arg_2, 1i, -41804i, 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(1053f)), var_1.b)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-994f, global3.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.d, 648f))))))));
}

fn func_7(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    var var_0 = vec2<i32>(((i32(-1i) * -1i) >> (0u % 32u)) << (countOneBits(0u) % 32u), _wgslsmith_div_i32(~global0[_wgslsmith_index_u32(~38631u, 24u)] >> (_wgslsmith_mod_u32(~7127u, ~arg_3.a) % 32u), ~(-(2166i | global0[_wgslsmith_index_u32(4294967295u, 24u)]))));
    var var_1 = -(~_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(1i, 1i, -2147483647i)), u_input.a.wyx ^ arg_0.wzy), _wgslsmith_mult_vec3_i32(u_input.a.wxx, _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_3.a, 24u)], 2147483647i, -8625i), u_input.a.zyw, vec3<i32>(-2147483647i, arg_0.x, -37114i)))));
    var var_2 = func_6(_wgslsmith_mod_i32(1i, (global0[_wgslsmith_index_u32(~arg_3.a, 24u)] << (~arg_3.a % 32u)) >> (~1u % 32u)), -3193i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1190f, arg_3.d))))));
    var_2 = Struct_2(!arg_3.b, -1700f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b));
    return func_1(u_input.a.xwy, _wgslsmith_sub_u32(~countOneBits(global3.a) & _wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_mult_u32(global3.a, arg_3.a)), ~89537u), -17968i, 60180u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.a.x, select(-1i, _wgslsmith_sub_i32(~global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global3.a >> (global3.a % 32u), 24u)]) & (u_input.a.x ^ -26822i), all(global3.e.wwz)));
    var var_1 = func_7(u_input.a, global3.b, func_1(vec3<i32>(max(var_0 | 18672i, global0[_wgslsmith_index_u32(global3.a, 24u)] & 41695i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(global0[_wgslsmith_index_u32(global3.a, 24u)], 32791i)), 0i), var_0), global3.a, var_0, _wgslsmith_sub_u32(global3.a, global3.a)), Struct_1(0u, _wgslsmith_f_op_f32(-global3.d) <= _wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d * -626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.d))) - 979f), global3.e));
    let var_2 = global0[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) * _wgslsmith_f_op_f32(f32(-1f) * -377f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1153f, global3.d))), Struct_2(abs(global3.a) == 46569u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(833f, var_1.b))))), 24u)];
    var var_3 = func_7(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, ~u_input.a), global3.b, Struct_2(true && global3.e.x, -443f), Struct_1(71483u, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(global3.c + 240f)))), _wgslsmith_f_op_f32(select(func_1(vec3<i32>(-1i, -19255i, var_0), 70088u, -var_0, global3.a).b, 1000f, global3.b)), !vec4<bool>(!var_1.a, any(vec4<bool>(true, false, var_1.a, true)), false || var_1.a, true)));
    let var_4 = Struct_1(_wgslsmith_mult_u32(~(~global3.a) >> (max(11682u, global3.a) % 32u), global3.a), false, _wgslsmith_div_f32(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -18604i, -2147483647i), ~u_input.a.wyx), 58246u, var_0, func_2(-2152f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(62925u, 0u), 28u)])).b, 489f), _wgslsmith_f_op_f32(max(var_1.b, -895f)), !select(global3.e, vec4<bool>(true, func_7(vec4<i32>(u_input.a.x, 0i, -37549i, var_0), global3.e.x, Struct_2(true, -1279f), Struct_1(global3.a, true, 2176f, global3.c, vec4<bool>(var_3.a, true, var_3.a, false))).a, var_1.a, var_3.a), global3.e));
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_div_i32(-2147483647i, reverseBits(1i)) << (var_4.a % 32u)), _wgslsmith_f_op_f32(ceil(-854f)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(var_4.a, global3.a, var_4.a, global3.a) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.a, 4294967295u, global3.a, 28642u), vec4<u32>(var_4.a, 1257u, global3.a, global3.a)), (vec4<u32>(global3.a, var_4.a, 4294967295u, var_4.a) | vec4<u32>(global3.a, var_4.a, 1u, var_4.a)) << (~vec4<u32>(var_4.a, global3.a, var_4.a, var_4.a) % vec4<u32>(32u))));
}

