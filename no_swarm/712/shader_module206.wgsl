struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(971f, 262f);

var<private> global1: u32 = 1u;

var<private> global2: array<vec4<bool>, 21>;

var<private> global3: array<u32, 19> = array<u32, 19>(43651u, 0u, 4294967295u, 1u, 28584u, 35042u, 13793u, 20282u, 1u, 0u, 17485u, 21332u, 40867u, 0u, 24995u, 11780u, 7836u, 4294967295u, 1u);

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = all(vec3<bool>(true, true, true));
    global4 = Struct_1(0i, ~firstLeadingBit(~global4.b));
    global0 = array<f32, 2>();
    var var_1 = Struct_2(!(_wgslsmith_div_f32(2597f, _wgslsmith_f_op_f32(-arg_0)) >= _wgslsmith_f_op_f32(-633f - 1450f)), Struct_1(1i, countOneBits(vec4<u32>(u_input.b, u_input.b, ~u_input.a.x, 0u ^ global4.b.x))), global4.b.x, 4294967295u <= abs(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(1u, u_input.b)), 19u)]), vec4<u32>(8513u ^ abs(abs(global4.b.x)), 4294967295u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)] >> (global4.b.x % 32u), ~_wgslsmith_mult_u32(0u, abs(9234u))));
    var var_2 = true;
    return 0i;
}

fn func_2() -> i32 {
    var var_0 = -countOneBits(vec2<i32>(_wgslsmith_clamp_i32(-global4.a, func_3(-1718f), min(-2220i, -1i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-39524i, -8349i), global4.a)));
    let var_1 = Struct_3(vec2<u32>(u_input.a.x & _wgslsmith_mult_u32(u_input.a.x, 13015u << (global4.b.x % 32u)), _wgslsmith_clamp_u32(abs(1u), u_input.a.x, min(~u_input.b, select(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(53609u, 19u)], true)))), Struct_1(_wgslsmith_dot_vec4_i32((vec4<i32>(0i, var_0.x, 12716i, -3791i) ^ vec4<i32>(-63753i, global4.a, 9998i, var_0.x)) << (global4.b % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(-39924i), 0i, -29106i, 12190i)), vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(1u, 19u)], 0u), 19u)], 6268u, abs(_wgslsmith_mult_u32(30725u, global4.b.x)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 2u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-954f, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38475u, 19u)], 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec4<f32>(-356f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 19u)], 2u)], 1206f, global0[_wgslsmith_index_u32(1u, 2u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 2u)], 1597f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.b.x, 19u)], 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], -869f), vec4<f32>(619f, global0[_wgslsmith_index_u32(52432u, 2u)], global0[_wgslsmith_index_u32(3626u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])))), select(select(vec4<bool>(false, false, true, true), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83093u, 19u)], 21u)], vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), all(vec2<bool>(false, false)))))), Struct_1(var_0.x, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 30715u), ~u_input.a.x, ~global4.b.x, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.b.x, 19u)], 19u)]), _wgslsmith_mod_vec4_u32(global4.b, ~vec4<u32>(1u, global4.b.x, 0u, 76742u)))));
    var var_2 = Struct_2(false, var_1.e, ~4165u, !(false | any(vec3<bool>(true, true, false))), var_1.e.b);
    let var_3 = var_1;
    var var_4 = Struct_2(var_2.a, var_3.e, var_3.a.x, true, vec4<u32>(firstLeadingBit(var_2.b.b.x), 99795u, ~_wgslsmith_mod_u32(global4.b.x, u_input.b), global4.b.x));
    return abs(var_2.b.a);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<bool>, 21>();
    var var_0 = func_2();
    global3 = array<u32, 19>();
    var var_1 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(any(vec3<bool>(true, false, true)), true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false)))), false);
    let var_2 = Struct_2(all(vec3<bool>(false, (i32(-1i) * -19658i) > arg_0, -1921f == _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -874f)))), arg_1, 4294967295u, var_1.x, vec4<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(4294967295u, 38997u) & vec2<u32>(1u, global3[_wgslsmith_index_u32(544u, 19u)])), reverseBits(~vec2<u32>(42799u, 1u))), u_input.a.x >> (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)])) % 32u), _wgslsmith_dot_vec4_u32(~arg_1.b << (select(vec4<u32>(1u, u_input.b, 59450u, 40450u), global4.b, var_1.x) % vec4<u32>(32u)), arg_1.b), 21848u));
    return _wgslsmith_sub_u32(global4.b.x, ~74973u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(vec3<bool>(true, true, true)), true);
    global1 = 0u;
    var_0 = vec2<bool>(true, select(select(var_0.x && var_0.x, true, true), var_0.x, true));
    global4 = Struct_1(firstTrailingBit(~max(u_input.c.x, max(u_input.c.x, -56328i))), ~global4.b);
    global1 = ~firstLeadingBit(1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(16516u, 2u)], 532f), global0[_wgslsmith_index_u32(func_1(-1i, Struct_1(-2147483647i, global4.b)), 2u)], _wgslsmith_f_op_f32(step(-154f, 722f)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(31743u, 2u)], global0[_wgslsmith_index_u32(global4.b.x, 2u)])))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -217f), global0[_wgslsmith_index_u32(472u, 2u)], _wgslsmith_f_op_f32(max(247f, 850f)), global0[_wgslsmith_index_u32(32620u, 2u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(6915u, 2u)], -548f, global0[_wgslsmith_index_u32(8054u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]) * vec4<f32>(global0[_wgslsmith_index_u32(5740u, 2u)], 2250f, -1176f, global0[_wgslsmith_index_u32(83438u, 2u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(240f, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], 2u)], global0[_wgslsmith_index_u32(global4.b.x, 2u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.b.x, 19u)], 2u)]))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1079f, 952f, global0[_wgslsmith_index_u32(31923u, 2u)], global0[_wgslsmith_index_u32(18609u, 2u)]), vec4<f32>(343f, global0[_wgslsmith_index_u32(0u, 2u)], -804f, global0[_wgslsmith_index_u32(69861u, 2u)])))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global4.b.x, 2u)], 381f)), -1009f)), -583f, -910f, _wgslsmith_f_op_f32(min(-1160f, -319f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.a, ~32235u, var_1.x, _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global4.a), vec2<i32>(u_input.c.x, 2147483647i))), -(~u_input.c.yy)) << (vec2<u32>(u_input.b & ~4294967295u, global4.b.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-var_1.x));
}

