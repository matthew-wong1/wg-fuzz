struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 82251u), vec2<u32>(1u, 4294967295u), vec2<u32>(2376u, 0u), vec2<u32>(1u, 56276u), vec2<u32>(1u, 0u), vec2<u32>(23970u, 4294967295u), vec2<u32>(50240u, 4294967295u), vec2<u32>(67422u, 32595u), vec2<u32>(4772u, 60876u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 25649u), vec2<u32>(16610u, 38321u), vec2<u32>(89578u, 8019u), vec2<u32>(15749u, 0u), vec2<u32>(27112u, 76088u), vec2<u32>(15836u, 0u), vec2<u32>(19816u, 4046u));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<Struct_1, 30>;

var<private> global3: Struct_2;

var<private> global4: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(global3.b, countOneBits(-arg_2.b)), 2147483647i, global3.b);
    global0 = array<vec2<u32>, 21>();
    global2 = array<Struct_1, 30>();
    global3 = arg_2;
    var var_1 = arg_2.c;
    return abs(arg_2.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global4 = select(firstTrailingBit(-arg_2.zy >> (select(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a.x, 23152u), vec2<bool>(global3.c.c, global3.d.c)) % vec2<u32>(32u))) >> (~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47264u, 4294967295u), global0[_wgslsmith_index_u32(1u, 21u)]), u_input.a.wz) % vec2<u32>(32u)), arg_2.zz, any(vec4<bool>(global3.e.c, all(!vec2<bool>(true, global3.e.c)), all(vec2<bool>(true, global3.e.c)), true | (global3.c.a > -1125f))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global3.e.b.x + _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-295f + global3.a.x), global3.e.a, -362f))), func_3(Struct_1(_wgslsmith_f_op_f32(step(global3.c.b.x, global3.d.a)), vec2<f32>(-1236f, _wgslsmith_f_op_f32(max(-766f, 632f))), false), global3.d.a >= _wgslsmith_f_op_f32(-global3.d.b.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -541f, global3.e.b.x, -1015f), global3.a))), -2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 0u), 30u)], Struct_1(_wgslsmith_f_op_f32(-global3.c.a), _wgslsmith_div_vec2_f32(global3.d.b, global3.e.b), any(vec4<bool>(false, global3.c.c, true, true))), Struct_1(-2234f, global3.e.b, 1054f > global3.a.x))), global3.c, Struct_1(948f, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1352f, 2111f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.a.x, global3.e.a), vec2<f32>(940f, 1220f), vec2<bool>(global3.d.c, true)))) - global3.c.b), global3.e.c), global3.e);
    global0 = array<vec2<u32>, 21>();
    let var_1 = all(vec4<bool>(all(select(select(vec3<bool>(global3.e.c, var_0.d.c, global3.d.c), vec3<bool>(var_0.e.c, true, var_0.e.c), false), !vec3<bool>(var_0.d.c, var_0.d.c, var_0.e.c), true)), false, ~_wgslsmith_mod_u32(16251u, u_input.a.x) > select(~u_input.a.x, 34482u, true), !any(vec4<bool>(true, true, true, true))));
    global0 = array<vec2<u32>, 21>();
    return global3.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    global1 = arg_1.b;
    var var_0 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(11143i, arg_1.b)), abs(vec2<i32>(23315i, -2147483647i))), select(_wgslsmith_add_i32(~0i, i32(-1i) * -9207i), global4.x, !all(vec2<bool>(false, arg_1.d.c)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-781f, _wgslsmith_f_op_f32(floor(571f))), 731f, -464f, _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a.x, u_input.a.x, 12406u, arg_0.x), global3.b, vec4<i32>(global4.x, 40134i, arg_1.b, 2147483647i)).a + arg_1.d.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -942f, global3.c.b.x, 613f)) - _wgslsmith_f_op_vec4_f32(-global3.a))))));
    var var_2 = arg_1;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_2.e.a))))), _wgslsmith_f_op_f32(floor(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f + 356f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(651f, -185f))));
    return all(vec4<bool>(!all(vec2<bool>(var_2.e.c, arg_1.c.c)), global3.e.c, true, false || var_2.e.c)) || all(!(!vec2<bool>(arg_1.d.c, arg_1.d.c)));
}

fn func_5(arg_0: bool, arg_1: u32) -> Struct_1 {
    return func_2(select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, u_input.a.x, arg_1, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, 6377u, 45729u) % vec4<u32>(32u)), ~vec4<u32>(67762u, 1u, arg_1, 0u), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, false, false), vec4<bool>(arg_0, false, false, false))), u_input.a), u_input.a, _wgslsmith_f_op_f32(global3.e.b.x + global3.e.b.x) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1168f), -149f, true & global3.d.c))), -2147483647i, countOneBits(~(-vec4<i32>(2147483647i, global4.x, global3.b, 38849i))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = func_5(!func_4(_wgslsmith_mod_vec4_u32(max(u_input.a, vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), ~u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1692f, global3.c.a, -163f, arg_1)), _wgslsmith_mod_i32(global4.x, global3.b), func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), 68734i, vec4<i32>(-53496i, global3.b, global4.x, global4.x)), func_2(u_input.a, arg_2.x, vec4<i32>(global3.b, arg_2.x, 0i, 7364i)), func_2(u_input.a, arg_2.x, vec4<i32>(15996i, -8457i, -2147483647i, var_0))), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), ~(~_wgslsmith_dot_vec2_u32(u_input.a.yx ^ global0[_wgslsmith_index_u32(35653u, 21u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 19385u), 21u)])));
    var var_2 = Struct_2(global3.a, global4.x ^ 2147483647i, func_2(~u_input.a, global3.b, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-17679i, 0i, global4.x, -18725i), select(vec4<i32>(var_0, 2147483647i, arg_2.x, 24040i), vec4<i32>(arg_2.x, 25130i, global3.b, arg_2.x), global3.e.c)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-2147483647i, arg_2.x, var_0, var_0)), vec4<i32>(var_0, var_0, 1i, -63267i) << (vec4<u32>(84991u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))))), func_5(!(!all(vec3<bool>(global3.d.c, true, var_1.c))), u_input.a.x), func_5(true, _wgslsmith_add_u32(reverseBits(1u), 1u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_vec2_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f * -579f))) <= global3.a.x);
    let var_4 = true;
    return Struct_1(var_2.d.b.x, _wgslsmith_f_op_vec2_f32(trunc(global3.e.b)), var_0 < select(-2147483647i, var_2.b, var_0 > _wgslsmith_add_i32(4494i, global3.b)));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2.e.c;
    let var_1 = vec2<f32>(global3.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = Struct_2(arg_2.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global3.b), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-42288i, 48082i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -44165i)))), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global4.x, arg_2.b), vec2<i32>(56332i, global3.b)), -vec2<i32>(arg_2.b, 45921i))), Struct_1(_wgslsmith_f_op_f32(func_5(true, arg_1).b.x + 1221f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(-arg_0.b)), global3.c.b), all(!vec3<bool>(arg_0.c, global3.d.c, global3.d.c)) & all(vec4<bool>(arg_2.d.c, true, true, arg_2.d.c))), arg_0, global3.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_1);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(global3.a.x, _wgslsmith_f_op_vec2_f32(-global3.d.b), true), _wgslsmith_div_u32(u_input.a.x << (abs(u_input.a.x) % 32u), 1u), Struct_2(_wgslsmith_f_op_vec4_f32(-global3.a), 2147483647i, func_1(!vec3<bool>(global3.e.c, global3.d.c, global3.e.c), global3.e.b.x, ~_wgslsmith_mod_vec2_i32(vec2<i32>(global3.b, -1i), vec2<i32>(-2147483647i, global4.x))), global3.e, func_1(select(!vec3<bool>(global3.c.c, global3.d.c, true), select(vec3<bool>(false, false, global3.d.c), vec3<bool>(global3.d.c, global3.d.c, global3.e.c), true), func_4(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(global3.a, global4.x, global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-1903f * _wgslsmith_f_op_f32(-global3.a.x)), vec2<i32>(min(global3.b, 2147483647i), _wgslsmith_div_i32(14039i, global4.x)))));
    var var_1 = Struct_2(vec4<f32>(138f, func_2(select(u_input.a, u_input.a, all(vec4<bool>(true, true, var_0.e.c, global3.c.c))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-3076i, var_0.b, var_0.b), vec3<i32>(global4.x, global3.b, 2147483647i)), 1i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 23644i, global3.b, 51067i)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b.x) * -1000f) + -1808f), 115f), global3.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e.a, -937f)), global3.d.b, any(vec2<bool>(true, true))), func_6(func_2(vec4<u32>(29993u, ~3571u, ~u_input.a.x, u_input.a.x), -16409i, -select(vec4<i32>(var_0.b, -43833i, -35923i, global4.x), vec4<i32>(-2147483647i, 0i, -6066i, global3.b), vec4<bool>(false, true, var_0.e.c, false))), ~4294967295u, Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), global3.b, Struct_1(-344f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, 335f)), true), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x) ^ ~0u, 30u)], global3.c)).d, func_6(global3.e, ~(~(~4294967295u)), func_6(func_5(!global3.d.c, 45141u), (u_input.a.x >> (u_input.a.x % 32u)) & ~u_input.a.x, var_0)).c);
    global1 = ~var_1.b;
    var_1 = var_0;
    let var_2 = vec3<f32>(var_1.a.x, global3.c.b.x, _wgslsmith_f_op_f32(-1000f - var_1.d.a));
    var var_3 = u_input.a.xyx;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.a)) * _wgslsmith_f_op_vec4_f32(-var_0.a)), global3.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_6(var_0.c, max(var_3.x, var_3.x), Struct_2(vec4<f32>(var_0.c.a, global3.e.b.x, -1500f, 1063f), global3.b, Struct_1(var_0.e.b.x, vec2<f32>(-575f, -860f), var_1.c.c), global2[_wgslsmith_index_u32(54174u, 30u)], Struct_1(global3.e.b.x, vec2<f32>(-562f, -1332f), false))).a.x, var_0.d.b.x, 435f, -864f)));
    let var_5 = -976f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(!vec3<bool>(true, !var_0.d.c, !global3.d.c), var_1.a.x, countOneBits(~vec2<i32>(global3.b, 18254i))).b, ~4294967295u, ~min(~4294967295u, u_input.a.x & (u_input.a.x >> (28615u % 32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x))), 1000f, var_0.c.b.x, _wgslsmith_f_op_f32(-global3.e.b.x)));
}

