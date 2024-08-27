struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(25643i, -42428i, i32(-2147483648), 35916i, -1i, -1i, 28734i, -73584i, 2147483647i, 1i, 1i, 2147483647i, 71533i, 30244i, 19851i, -17951i, 1i, 1i, -75294i, -1i, -1154i);

var<private> global1: array<u32, 28>;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 2> = array<u32, 2>(69797u, 56578u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<i32, 21>();
    let var_0 = global2.x;
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))), true)));
    let var_3 = select(arg_3.a, arg_3.a, select(!vec4<bool>(!arg_1.x, 1449f < arg_0.x, arg_1.x | true, true), vec4<bool>(any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x), arg_1.ywx)), !all(vec2<bool>(arg_1.x, arg_1.x)), true, ~global3[_wgslsmith_index_u32(4287u, 2u)] == ~3618u), vec4<bool>(!all(arg_1.yxy), arg_1.x, _wgslsmith_f_op_f32(-1368f * 456f) == _wgslsmith_f_op_f32(-arg_0.x), any(arg_1.zxz))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(1925f, _wgslsmith_f_op_f32(sign(arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(193f - _wgslsmith_f_op_f32(arg_3.b.x - 469f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> f32 {
    global2 = -vec4<i32>(firstTrailingBit(77968i), ~countOneBits(_wgslsmith_div_i32(global2.x, global0[_wgslsmith_index_u32(52897u, 21u)])), min(_wgslsmith_mult_i32(0i, 0i) | global2.x, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(45030u, 2u)], global3[_wgslsmith_index_u32(~24604u, 2u)]), 28u)], 21u)]), u_input.b);
    let var_0 = Struct_1(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27630i, -2147483647i, u_input.b, global2.x), vec4<i32>(u_input.b, 29112i, 40044i, global0[_wgslsmith_index_u32(0u, 21u)])), vec4<i32>(global0[_wgslsmith_index_u32(26518u, 21u)], 1i, u_input.b, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 21u)]), ~vec4<i32>(global0[_wgslsmith_index_u32(65564u, 21u)], 55073i, global0[_wgslsmith_index_u32(0u, 21u)], 41865i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.x, arg_0.x))) * arg_0.zy)));
    var var_1 = -firstTrailingBit(select(_wgslsmith_div_i32(var_0.a.x, 2147483647i) >> (~6264u % 32u), abs(countOneBits(global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), !(2317f >= var_0.b.x)));
    let var_2 = arg_0.x >= _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.wy)))), vec4<bool>(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(floor(1407f)) <= _wgslsmith_f_op_f32(step(arg_0.x, -526f))), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(22980u, 2u)], 11538u), vec4<u32>(44399u, u_input.c.x, u_input.a.x, u_input.c.x)), vec4<u32>(global3[_wgslsmith_index_u32(109276u, 2u)], u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26288u, 2u)], 2u)], 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 116252u, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), abs(vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global3[_wgslsmith_index_u32(24308u, 2u)], u_input.a.x)))), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))))).x;
    var var_3 = vec2<f32>(-516f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(exp2(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-1000f, 859f), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, true, arg_1), vec4<bool>(arg_1, var_2, true, arg_1)), global3[_wgslsmith_index_u32(29581u, 2u)], Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 2u)], 21u)], var_0.a.x, 1i, 2147483647i), vec2<f32>(516f, var_0.b.x)))).x)));
    return -1057f;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(2308f, 345f), vec4<bool>(true, arg_2.b.e.x, arg_1, arg_1), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], arg_2.b.a)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, -166f)), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_2.b.e.x, arg_2.b.c.x, arg_1), vec4<bool>(true, false, false, arg_1)), countOneBits(global3[_wgslsmith_index_u32(0u, 2u)]), arg_0.a)).x + 134f), all(select(!vec4<bool>(arg_2.b.c.x, true, false, arg_1), select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_0.c.x, true, arg_2.b.c.x, arg_1), false), true)))), 856f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.b.x + arg_2.b.b.b.x))));
    global1 = array<u32, 28>();
    var var_1 = arg_2;
    global2 = var_1.b.b.a;
    let var_2 = reverseBits(firstLeadingBit(vec2<u32>(abs(1u), u_input.c.x)));
    return _wgslsmith_add_i32(firstLeadingBit(arg_0.a.a.x), arg_2.d);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    global1 = array<u32, 28>();
    global3 = array<u32, 2>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-537f, _wgslsmith_f_op_f32(f32(-1f) * -1671f)), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f)) + 1000f));
    global2 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(45750i, 3282i, global2.x, 16800i), vec4<i32>(-20216i, -2147483647i, -13357i, -1i)) >> (reverseBits(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58537u, 28u)], 28u)]) % 32u), 0i, global2.x, _wgslsmith_mod_i32(firstLeadingBit(arg_0) >> (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)]) % 32u), countOneBits(func_2(Struct_2(Struct_1(vec4<i32>(23171i, -1i, 1i, 3757i), vec2<f32>(-1713f, -1563f)), Struct_1(vec4<i32>(arg_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11200u, 28u)], 21u)], arg_0, arg_0), vec2<f32>(-337f, 255f)), arg_1, arg_0, vec4<bool>(false, arg_1.x, false, true)), arg_1.x, Struct_3(-36052i, Struct_2(Struct_1(vec4<i32>(0i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29786u, 28u)], 28u)], 21u)], 61786i, global2.x), vec2<f32>(1251f, 1061f)), Struct_1(vec4<i32>(7665i, -84619i, global2.x, -6658i), vec2<f32>(-352f, -987f)), arg_1, u_input.b, vec4<bool>(true, false, false, true)), vec4<u32>(1u, u_input.c.x, 0u, 51394u), global2.x, global2.x)))));
    var_0 = -609f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(559f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f * -679f) - -2108f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(779f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(0i, vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-100f, 810f), vec2<f32>(-119f, -510f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, -1097f)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), 10106u, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -8397i, global2.x, -14534i), vec4<i32>(-32596i, 1i, -1i, -1i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-143f, -1171f)))))).x), firstTrailingBit(countOneBits(abs(vec4<u32>(48402u, 24860u, global1[_wgslsmith_index_u32(21258u, 28u)], 0u)) | vec4<u32>(1u, global3[_wgslsmith_index_u32(37971u, 2u)], u_input.c.x, 1u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-684f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -430f))))));
}

