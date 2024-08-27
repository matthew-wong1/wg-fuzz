struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: array<bool, 28>;

var<private> global3: array<u32, 10> = array<u32, 10>(32012u, 62425u, 16492u, 4294967295u, 0u, 4294967295u, 41064u, 4294967295u, 5501u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - global0.a), -1405f)))), _wgslsmith_f_op_f32(floor(682f)), ~(1u ^ ~max(global0.c, global3[_wgslsmith_index_u32(u_input.a.x, 10u)])));
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = true;
    var var_3 = global0.a;
    return _wgslsmith_add_u32(arg_0.x, _wgslsmith_div_u32(~(~var_0.c), _wgslsmith_sub_u32(select(1u, var_1.d.x, false), _wgslsmith_dot_vec4_u32(vec4<u32>(67643u, arg_2.b, var_0.c, 1u), vec4<u32>(u_input.a.x, 1u, 26980u, u_input.a.x))) >> (global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x | var_0.c, 0u), 10u)] % 32u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true)));
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f - -165f)) - -827f)));
    global2 = array<bool, 28>();
    global1 = !any(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 28u)], true, false));
    let var_2 = !select(select(!select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.c, 28u)], false), global2[_wgslsmith_index_u32(13603u, 28u)]), vec2<bool>(true, true), select(!global2[_wgslsmith_index_u32(global0.c, 28u)], !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34676u, 10u)], 10u)], 10u)], 28u)], all(vec4<bool>(global2[_wgslsmith_index_u32(31816u, 28u)], true, true, global2[_wgslsmith_index_u32(101441u, 28u)])))), select(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(16172u, 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40800u, 10u)], 28u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], 28u)]), true), true), !(!vec2<bool>(global2[_wgslsmith_index_u32(global0.c, 28u)], false)), select(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(global0.c, 28u)], true), global2[_wgslsmith_index_u32(0u, 28u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 28u)])), !global2[_wgslsmith_index_u32(~0u, 28u)] & true);
    return _wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), global0.b))) * -1029f));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = false;
    let var_1 = select(!all(select(select(vec2<bool>(var_0, true), vec2<bool>(var_0, false), vec2<bool>(true, var_0)), !vec2<bool>(global2[_wgslsmith_index_u32(arg_0.x, 28u)], var_0), any(vec4<bool>(global2[_wgslsmith_index_u32(47321u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)], true, global2[_wgslsmith_index_u32(global0.c, 28u)])))), !any(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 27798u), 28u)], any(vec3<bool>(var_0, true, var_0)))), all(select(vec4<bool>(var_0, false, false, all(vec2<bool>(var_0, false))), select(!vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], true), !vec4<bool>(var_0, true, true, global2[_wgslsmith_index_u32(14121u, 28u)]), vec4<bool>(var_0, global2[_wgslsmith_index_u32(0u, 28u)], true, var_0)), all(vec3<bool>(var_0, var_0, false)))));
    var var_2 = select(select(!vec3<bool>(global2[_wgslsmith_index_u32(global0.c | 68433u, 28u)], true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false && global2[_wgslsmith_index_u32(20142u, 28u)], 325f >= arg_1.b), select(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.c, 28u)]), vec3<bool>(var_0, global2[_wgslsmith_index_u32(1u, 28u)], var_0), select(vec3<bool>(var_1, false, var_1), vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 28u)]), true)), select(select(vec3<bool>(true, true, var_0), vec3<bool>(var_1, var_1, var_1), var_0), !vec3<bool>(var_1, true, true), false)), var_1), select(vec3<bool>(true, !var_1, ~u_input.a.x != 1u), vec3<bool>(false, any(select(vec4<bool>(var_0, var_0, var_1, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec4<bool>(true, var_0, var_1, var_1), global2[_wgslsmith_index_u32(global0.c, 28u)])), any(select(vec3<bool>(false, var_1, true), vec3<bool>(false, var_0, var_1), false))), true), !(select(true, true, all(vec2<bool>(var_0, true))) | !(!var_1)));
    let var_3 = arg_1.c;
    var var_4 = Struct_1(select(vec4<bool>(~1u == arg_1.c, true, !(!var_2.x), var_1), select(vec4<bool>(true, all(var_2.yx), !var_1, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, global0.c), 28u)]), vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 28u)], var_1, true, global2[_wgslsmith_index_u32(var_3, 28u)]), false), vec4<bool>(false, select(var_1, false, var_1), true, true)), (var_3 ^ _wgslsmith_add_u32(abs(global3[_wgslsmith_index_u32(u_input.a.x, 10u)]), 4294967295u)) & var_3, vec2<i32>(_wgslsmith_mod_i32(1i, 20538i), 1i), _wgslsmith_mod_vec2_u32(vec2<u32>(23284u, ~(~1u)), countOneBits(vec2<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], 1u), 4294967295u))));
    return Struct_1(select(select(var_4.a, select(var_4.a, var_4.a, select(var_4.a, vec4<bool>(var_4.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)], false, false), true)), (var_4.c.x == var_4.c.x) && all(var_4.a)), !var_4.a, var_4.a), abs(var_4.d.x), countOneBits(-var_4.c), ~(~(~(vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(global0.c, arg_1.c)))));
}

fn func_1() -> Struct_1 {
    var var_0 = min(firstLeadingBit(~min(vec3<i32>(-36384i, 2147483647i, -10219i), vec3<i32>(-2147483647i, -2147483647i, 12355i))), firstTrailingBit(~vec3<i32>(-1577i, -34579i, -1i)) >> (vec3<u32>(5900u, 4294967295u, global0.c) % vec3<u32>(32u))) | -abs(vec3<i32>(-3589i, min(2147483647i, -66313i), 1i));
    let var_1 = (vec2<i32>(min(min(var_0.x, 0i), select(0i, var_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)])), var_0.x) ^ -(vec2<i32>(var_0.x, 1i) & -vec2<i32>(-10576i, -23835i))) & vec2<i32>(abs(1i) >> (_wgslsmith_div_u32(min(69336u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 22406u, 56378u, u_input.a.x), vec4<u32>(4294967295u, global0.c, global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)]))) % 32u), _wgslsmith_clamp_i32(2147483647i, var_0.x, var_0.x));
    var var_2 = 2147483647i;
    let var_3 = func_4(vec2<u32>(~_wgslsmith_clamp_u32(~global0.c, countOneBits(1866u), global0.c), func_2(vec3<u32>(4294967295u, ~global0.c, 1u), ~global0.c, Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56513u, 10u)], 28u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 28u)], true, global2[_wgslsmith_index_u32(28505u, 28u)]), global3[_wgslsmith_index_u32(~1u, 10u)], -vec2<i32>(-2147483647i, -35285i), ~vec2<u32>(global0.c, global3[_wgslsmith_index_u32(global0.c, 10u)])), !select(vec3<bool>(global2[_wgslsmith_index_u32(16382u, 28u)], global2[_wgslsmith_index_u32(global0.c, 28u)], false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(65623u, 28u)]), vec3<bool>(global2[_wgslsmith_index_u32(26460u, 28u)], true, true)))), Struct_2(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1898f)), 20217u));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.b, 1277f, -1166f), vec4<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1404f)), -185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -266f), 2561f, var_3.a.x & var_3.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b, global0.a)) + global0.a), global0.b))), false));
    return Struct_1(!var_3.a, 4294967295u, var_1, var_3.d);
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -15825i, 1i), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.x, arg_0.c.x, -1i), abs(vec3<i32>(1i, arg_0.c.x, arg_0.c.x))), vec3<i32>(arg_0.c.x, ~(-2147483647i), arg_0.c.x))), -47287i);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), global0.a, 1150f, global0.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), 100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, global0.a)))))));
    global2 = array<bool, 28>();
    var var_2 = !select(!arg_0.a.yxx, arg_0.a.zww, true);
    var var_3 = arg_0.c & vec2<i32>(select(_wgslsmith_mult_i32(~61145i, 52418i << (u_input.a.x % 32u)), arg_0.c.x, global2[_wgslsmith_index_u32(1u, 28u)]), -2147483647i >> (~u_input.a.x % 32u));
    return Struct_1(func_4(vec2<u32>(arg_1, firstLeadingBit(max(0u, global3[_wgslsmith_index_u32(0u, 10u)]))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), var_1.x, ~1u)).a, 1u, arg_0.c, abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29843u, 10u)], 10u)], 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 28>();
    var var_0 = func_5(func_1(), 1u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_3()), -522f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, min(max(1u, 45708u), ~select(0u, var_0.b, global2[_wgslsmith_index_u32(var_0.b, 28u)]))), 10u)]);
    global0 = var_1;
    var var_2 = !func_5(func_5(Struct_1(var_0.a, u_input.a.x, ~var_0.c, var_0.d), firstTrailingBit(global0.c)), func_4(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.d.x), var_0.d) | (u_input.a << (u_input.a % vec2<u32>(32u))), var_1).b).a.yyw;
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(min(abs(vec3<u32>(var_0.d.x, 20704u, global0.c)), ~(vec3<u32>(55415u, global0.c, 65018u) ^ vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(var_0.d.x, 10u)], 21844u))), firstTrailingBit(vec3<u32>(u_input.a.x, 0u, var_0.d.x) & firstLeadingBit(vec3<u32>(u_input.a.x, var_0.b, global0.c)))), ~vec3<u32>(1u, func_5(func_1(), abs(u_input.a.x)).b, u_input.a.x), var_1.c, 1i);
}

