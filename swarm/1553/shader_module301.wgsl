struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<u32>, 32>;

var<private> global3: array<i32, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<i32> {
    global3 = array<i32, 6>();
    let var_0 = Struct_3(_wgslsmith_add_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(16554u, 2326u, u_input.d), 0u ^ u_input.b.x), 6u)], ~u_input.c), -(abs(arg_0) >> (4479u % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)), _wgslsmith_f_op_f32(min(-705f, _wgslsmith_f_op_f32(sign(-624f))))), vec2<bool>(global1.x, global1.x), ~(~(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b) >> (u_input.b % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_add_u32(var_0.d.x, 1u), u_input.a, reverseBits(_wgslsmith_mod_u32(~1u, reverseBits(_wgslsmith_sub_u32(4294967295u, 1u)))));
    let var_2 = var_0.a;
    let var_3 = abs(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(14649u, var_0.d.x, 9350u) | vec3<u32>(var_1, var_0.d.x, 31436u), ~vec3<u32>(66037u, u_input.a, 1u)), 32u)], vec4<u32>(4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(23755u, 7438u, var_0.d.x), vec3<u32>(0u, 0u, var_1)), ~abs(u_input.d), ~(~var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(148067u, 21707u, var_0.d.x, 4638u), global2[_wgslsmith_index_u32(~u_input.a, 32u)])), vec4<bool>(var_0.c.x, false, true, true)));
    return ~(vec3<i32>(_wgslsmith_add_i32(abs(var_0.a), select(var_0.a, arg_0, false)), _wgslsmith_add_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.d, 6u)], 1i), i32(-1i) * -2147483647i), var_2) & ~vec3<i32>(arg_0 ^ var_0.a, var_0.a, max(var_2, global3[_wgslsmith_index_u32(var_0.d.x, 6u)])));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = arg_1.b;
    let var_1 = Struct_3(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~(arg_1.d.x << (1u % 32u)), 6u)], u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))), arg_1.c, arg_3);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -298f);
    let var_3 = Struct_2(Struct_1(!vec2<bool>(global1.x, var_1.b <= arg_1.b), vec4<u32>(~0u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)), 1u, 54212u)), arg_1.d.x, arg_1.c.x, func_3(arg_1.a), Struct_1(!vec2<bool>(true, global1.x | var_1.c.x), ~global2[_wgslsmith_index_u32(~0u, 32u)]));
    var var_4 = var_3.d.x;
    return Struct_2(var_3.a, ~(~_wgslsmith_clamp_u32(u_input.a, 26058u, 1u)), arg_2 <= _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_2 ^ u_input.d, 7832u), arg_2), firstLeadingBit(~_wgslsmith_add_vec3_i32(var_3.d, var_3.d) & _wgslsmith_mod_vec3_i32(-vec3<i32>(-12890i, var_1.a, var_1.a), _wgslsmith_sub_vec3_i32(var_3.d, var_3.d))), Struct_1(arg_1.c, var_3.a.b));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = ~vec4<u32>(arg_1.a.b.x, abs(u_input.d), ~_wgslsmith_add_u32(~64293u, _wgslsmith_clamp_u32(13165u, 4294967295u, 4294967295u)), 4294967295u);
    var_0 = global2[_wgslsmith_index_u32(0u, 32u)];
    global1 = vec4<bool>(global1.x, (_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.d.x, 1u), ~u_input.b.x) << (u_input.b.x % 32u)) >= firstLeadingBit(abs(_wgslsmith_sub_u32(78069u, 54109u))), arg_0.c.x, true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.b)) + arg_0.b) + arg_0.b), _wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2144f)))))));
    global2 = array<vec4<u32>, 32>();
    return Struct_1(vec2<bool>(arg_0.c.x, select(!arg_0.c.x, !arg_1.c, false) & (true || arg_1.e.a.x)), arg_1.e.b >> (~_wgslsmith_clamp_vec4_u32(func_2(arg_0.c.x, Struct_3(-58821i, 377f, global1.wy, vec2<u32>(arg_1.e.b.x, arg_0.d.x)), u_input.d, arg_1.e.b.yy).e.b, _wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_0.d.x, arg_1.a.b.x, 22136u), vec4<u32>(24283u, 1u, u_input.b.x, var_0.x)), min(vec4<u32>(17542u, 8122u, 4049u, arg_1.a.b.x), vec4<u32>(0u, var_0.x, arg_1.e.b.x, 4294967295u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = min(vec3<u32>(arg_2.b.x, ~_wgslsmith_div_u32(25532u, ~arg_3.b.x), reverseBits(arg_3.b.x)), min(arg_3.b.wzx, ~abs(firstTrailingBit(arg_2.b.xwz))));
    global1 = vec4<bool>(false, all(vec3<bool>(all(arg_0.xz) || arg_0.x, arg_2.a.x, true)), !arg_0.x, !arg_0.x || (-11614i >= ((arg_1.x << (2865u % 32u)) << (~60769u % 32u))));
    global2 = array<vec4<u32>, 32>();
    let var_1 = any(func_4(global0[_wgslsmith_index_u32(countOneBits(~(~u_input.a)), 30u)], Struct_2(arg_3, ~(~var_0.x), select(all(arg_0.zy), select(false, arg_0.x, true), arg_2.a.x && arg_3.a.x), (arg_1 | vec3<i32>(0i, 0i, u_input.c)) | _wgslsmith_div_vec3_i32(arg_1, vec3<i32>(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c)), func_2(func_2(arg_3.a.x, Struct_3(global3[_wgslsmith_index_u32(u_input.b.x, 6u)], -1105f, vec2<bool>(arg_2.a.x, true), vec2<u32>(4294967295u, arg_2.b.x)), u_input.a, arg_3.b.zx).e.a.x, Struct_3(-59294i, -251f, vec2<bool>(arg_2.a.x, arg_2.a.x), vec2<u32>(0u, 87628u)), 20026u, abs(vec2<u32>(arg_3.b.x, arg_2.b.x))).e), firstTrailingBit(-countOneBits(arg_1.x))).a);
    global1 = vec4<bool>(34763u != ~arg_2.b.x, arg_2.a.x, all(vec4<bool>(true, !(false || arg_0.x), arg_2.a.x, all(select(arg_0.xz, arg_0.yy, arg_0.xx)))), var_1);
    return arg_3.a;
}

fn func_1() -> bool {
    global0 = array<Struct_3, 30>();
    var var_0 = 1i;
    let var_1 = func_5(vec3<bool>(true, false, false), min(abs(~vec3<i32>(u_input.c, 17264i, -23162i)), firstLeadingBit(abs(vec3<i32>(-13641i, -30813i, -1i)))) & countOneBits(vec3<i32>(u_input.c, -global3[_wgslsmith_index_u32(42835u, 6u)], u_input.c)), func_4(Struct_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(57089u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], u_input.c, -38255i), -vec4<i32>(-9335i, u_input.c, 22180i, 2147483647i)), _wgslsmith_f_op_f32(-709f + _wgslsmith_div_f32(567f, -1847f)), vec2<bool>(!global1.x, all(vec2<bool>(false, global1.x))), abs(_wgslsmith_div_vec2_u32(u_input.b, u_input.b))), func_2(select(true, !global1.x, u_input.c <= 35604i), Struct_3(_wgslsmith_add_i32(0i, u_input.c), -288f, select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), global1.x), vec2<u32>(4294967295u, u_input.d)), 0u, ~countOneBits(vec2<u32>(u_input.b.x, u_input.d))), _wgslsmith_mult_i32(min(global3[_wgslsmith_index_u32(57220u, 6u)], u_input.c) >> (u_input.d % 32u), global3[_wgslsmith_index_u32(u_input.b.x, 6u)])), func_2(~(~u_input.a) >= ~_wgslsmith_sub_u32(0u, u_input.a), Struct_3(global3[_wgslsmith_index_u32(u_input.d, 6u)] << (_wgslsmith_add_u32(18923u, u_input.b.x) % 32u), _wgslsmith_f_op_f32(605f - -1000f), !global1.wz, _wgslsmith_div_vec2_u32(abs(u_input.b), vec2<u32>(8144u, u_input.d))), ~(~(~u_input.a)), vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57859u, 1u, 14703u), vec4<u32>(u_input.d, 45617u, 8833u, 4294967295u))), max(57722u, 23957u))).a);
    var var_2 = func_2(false, Struct_3(-(u_input.c ^ global3[_wgslsmith_index_u32(_wgslsmith_div_u32(77915u, 10701u), 6u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1439f - _wgslsmith_f_op_f32(f32(-1f) * -563f)), _wgslsmith_f_op_f32(sign(-913f)))), !vec2<bool>(any(global1.wxy), !global1.x), vec2<u32>(~_wgslsmith_div_u32(75772u, 4294967295u), 4294967295u)), _wgslsmith_add_u32(10484u, countOneBits(_wgslsmith_div_u32(u_input.d, u_input.b.x))) ^ u_input.b.x, vec2<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.a, u_input.b.x)), u_input.b.x)));
    global3 = array<i32, 6>();
    return !var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 6>();
    global0 = array<Struct_3, 30>();
    var var_0 = select(vec4<bool>(all(select(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, false), global1.ywz), select(global1.xww, global1.xyx, true), global1.x && true)), global1.x, func_1(), true), vec4<bool>(global1.x, global1.x, false, !global1.x), !vec4<bool>(true, !any(vec2<bool>(true, global1.x)), all(vec2<bool>(global1.x, true)), !global1.x | false));
    let var_1 = u_input.c;
    var_0 = select(select(!select(vec4<bool>(true, true, global1.x, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), false), select(select(select(vec4<bool>(false, var_0.x, false, global1.x), vec4<bool>(var_0.x, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true)), !vec4<bool>(true, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, global1.x, true, false)), vec4<bool>(global1.x || global1.x, true, func_2(true, Struct_3(global3[_wgslsmith_index_u32(u_input.a, 6u)], -461f, vec2<bool>(true, var_0.x), vec2<u32>(4294967295u, u_input.a)), 20804u, u_input.b).c, true), !vec4<bool>(true, true, global1.x, global1.x)), !vec4<bool>(any(var_0.xw), true, var_0.x, !global1.x)), select(vec4<bool>(true, !any(vec4<bool>(true, global1.x, false, var_0.x)), global1.x, var_0.x), vec4<bool>(func_4(Struct_3(-1i, -115f, var_0.yy, vec2<u32>(56358u, 39842u)), Struct_2(Struct_1(vec2<bool>(false, var_0.x), global2[_wgslsmith_index_u32(u_input.d, 32u)]), 23812u, var_0.x, vec3<i32>(1i, -1i, var_1), Struct_1(vec2<bool>(false, global1.x), vec4<u32>(u_input.a, 33003u, u_input.a, u_input.d))), u_input.c).a.x && false, true, true, global3[_wgslsmith_index_u32(4294967295u, 6u)] <= 0i), vec4<bool>(_wgslsmith_clamp_u32(u_input.a, 0u, u_input.d) < ~79421u, true, true, true)), all(vec4<bool>(func_2(true, global0[_wgslsmith_index_u32(func_2(false, Struct_3(global3[_wgslsmith_index_u32(0u, 6u)], -1000f, global1.yy, u_input.b), u_input.d, vec2<u32>(u_input.b.x, u_input.d)).b, 30u)], 0u, u_input.b & vec2<u32>(13732u, 0u)).a.a.x, true, true, true)));
    global2 = array<vec4<u32>, 32>();
    global2 = array<vec4<u32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1 >> (39678u % 32u), var_1), max(~_wgslsmith_mult_i32(select(-27195i, -2147483647i, var_0.x), -1i), -reverseBits(global3[_wgslsmith_index_u32(16573u, 6u)] ^ -2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, -101f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(610f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f + 1070f) * _wgslsmith_f_op_f32(807f - 610f))), _wgslsmith_f_op_f32(-1712f + _wgslsmith_f_op_f32(trunc(-585f))))));
}

