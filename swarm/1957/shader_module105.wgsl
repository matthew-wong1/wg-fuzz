struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: i32;

var<private> global2: vec4<i32>;

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(true, false, true), i32(-2147483648), vec3<i32>(9782i, 1i, i32(-2147483648)), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<f32> {
    return vec4<f32>(-794f, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(290f, -1527f)), arg_0.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(true, select(global3.b, select(vec3<bool>(false, global3.a, false), vec3<bool>(!global3.e.x, global3.a & true, !arg_2.b.x), select(select(global3.b, vec3<bool>(false, arg_2.b.x, true), arg_2.e.x), !global3.b, 355f >= arg_1.b)), arg_2.a), ~_wgslsmith_div_i32(-(i32(-1i) * -20550i), u_input.a.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c, u_input.a.x, -1i), vec3<i32>(2147483647i, 45449i, -1i)), select(-global3.d, -vec3<i32>(14306i, 51065i, 0i), arg_2.e.x) | ((global3.d & vec3<i32>(u_input.a.x, global2.x, 2147483647i)) | ~arg_2.d), -global2.xxz), global3.b);
    global3 = Struct_1(global3.a, var_0.e, ~countOneBits(1i), min(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(-21993i, arg_2.c, var_0.c)), ~(-global2.x), global2.x ^ -var_0.d.x), arg_2.d), select(!(!global3.b), !select(!global3.e, !arg_2.b, arg_2.e.x), arg_2.e.x));
    let var_1 = any(!(!select(!vec4<bool>(false, global3.a, arg_2.b.x, true), select(vec4<bool>(global3.a, global3.b.x, true, var_0.b.x), vec4<bool>(global3.e.x, global3.e.x, true, false), var_0.a), select(vec4<bool>(true, var_0.b.x, true, false), vec4<bool>(var_0.a, global3.b.x, arg_2.e.x, arg_2.a), vec4<bool>(true, false, global3.a, global3.b.x)))));
    var_0 = arg_2;
    global0 = array<u32, 12>();
    return select(!global3.e, vec3<bool>(global3.a, false, global3.b.x), !(!select(var_0.e, !vec3<bool>(var_0.e.x, global3.e.x, var_0.b.x), vec3<bool>(var_1, global3.e.x, global3.a))));
}

fn func_2() -> f32 {
    global0 = array<u32, 12>();
    let var_0 = Struct_1(false, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], -1000f), !vec2<bool>(global3.e.x, false)))), Struct_2(~firstLeadingBit(4294967295u), -1883f), Struct_1(1i == abs(global3.d.x), vec3<bool>(all(vec4<bool>(true, false, global3.e.x, true)), global3.b.x, global3.a), _wgslsmith_mod_i32(global3.d.x, _wgslsmith_mod_i32(u_input.a.x, global3.d.x)), ~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-6715i, 20700i, u_input.a.x), vec3<i32>(global3.c, u_input.a.x, global2.x)), !global3.b), Struct_2(~firstLeadingBit(17131u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(613f, -1479f)))), countOneBits(global2.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global3.c, global2.x, u_input.a.x) ^ vec4<i32>(0i, global2.x, 2147483647i, global2.x), vec4<i32>(-13224i, global2.x, global3.d.x, global2.x) >> (vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)]) % vec4<u32>(32u))), _wgslsmith_add_i32(-1i, global3.d.x), _wgslsmith_div_i32(u_input.a.x, 2147483647i)) >> (abs(vec3<u32>(0u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(91557u, 12u)], 12u)]), _wgslsmith_sub_u32(3617u, global0[_wgslsmith_index_u32(1u, 12u)]))) % vec3<u32>(32u)), vec3<bool>(global3.a, !(!global3.a), global3.e.x));
    let var_1 = var_0;
    let var_2 = all(select(vec4<bool>(true, all(var_0.b), all(vec3<bool>(var_1.b.x, false, false)), global3.e.x && any(vec4<bool>(global3.b.x, var_1.e.x, var_1.e.x, true))), vec4<bool>(any(global3.b.yz), true, false, !any(var_1.b)), select(vec4<bool>(global3.b.x || var_1.b.x, false, any(var_0.e), global3.e.x && global3.b.x), !(!vec4<bool>(true, var_1.b.x, global3.b.x, false)), !var_0.a)));
    var var_3 = ~(reverseBits(-1i) << (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53084u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55210u, 12u)], 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)]), vec4<u32>(10966u, 75855u, 0u, global0[_wgslsmith_index_u32(40673u, 12u)]))) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-180f))), 207f)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(all(global3.e.zx), !vec3<bool>(!(true & global3.a), all(select(vec4<bool>(true, false, false, global3.b.x), vec4<bool>(true, global3.a, global3.b.x, global3.a), global3.a)), global3.e.x), global3.c, vec3<i32>(_wgslsmith_mult_i32(24564i, u_input.a.x), global2.x, global2.x), global3.b);
    let var_1 = arg_0.b;
    let var_2 = vec3<u32>(~global0[_wgslsmith_index_u32(19281u, 12u)], ~global0[_wgslsmith_index_u32(44503u, 12u)], _wgslsmith_add_u32(1u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.a, 4294967295u), arg_0.a)));
    var_0 = Struct_1(!(true & (!var_0.a || (1000f >= var_1))), var_0.e, _wgslsmith_sub_i32(var_0.c, u_input.a.x), vec3<i32>(-20438i, -29474i, global3.d.x), var_0.e);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_2()), arg_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-605f * 243f), _wgslsmith_f_op_f32(func_2())))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-340f)) - var_1))), -1112f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    return -55566i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~func_1(Struct_2(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52772u, 12u)], 12u)]), _wgslsmith_f_op_f32(556f * 1000f))));
    var var_1 = Struct_1(true == (0i < global2.x), !(!vec3<bool>(all(global3.b.yz), all(global3.b), any(vec2<bool>(true, false)))), 1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-global3.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, global3.c), global2.zzx), global3.c << (8251u % 32u), global3.c), ~(-vec4<i32>(global3.d.x, global2.x, -16841i, -25483i))), vec3<i32>(-50161i, -func_1(Struct_2(0u, 170f)) | global3.d.x, (select(39047i, -44646i, global3.a) | _wgslsmith_mult_i32(2147483647i, global2.x)) ^ _wgslsmith_div_i32(i32(-1i) * -3824i, global3.c & -2147483647i)), select(global3.e, !select(select(global3.b, vec3<bool>(false, true, true), global3.e.x), global3.b, true), select(!global3.b.x, all(func_4(vec4<f32>(-235f, 614f, 1000f, 1887f), Struct_2(0u, 1550f), Struct_1(global3.b.x, vec3<bool>(global3.b.x, global3.b.x, true), 11555i, vec3<i32>(2147483647i, global3.c, -1i), global3.b), Struct_2(1u, 274f))), all(!vec4<bool>(true, true, global3.b.x, global3.a)))));
    let var_2 = Struct_1(!global3.b.x, select(!(!(!vec3<bool>(var_1.b.x, true, true))), var_1.b, global3.b.x), 2147483647i, vec3<i32>(-67864i, -30355i, firstLeadingBit(~(-10597i))), vec3<bool>(false, !(var_1.b.x && true) == !var_1.e.x, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, 1066f, 2095f, 796f)), Struct_2(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], global0[_wgslsmith_index_u32(21207u, 12u)]), _wgslsmith_f_op_f32(abs(-121f))), Struct_1(global3.a, !var_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 37930i), vec2<i32>(var_1.d.x, -1i)), vec3<i32>(2147483647i, var_1.d.x, 15807i), select(var_1.e, vec3<bool>(false, true, var_1.e.x), false)), Struct_2(1u, _wgslsmith_f_op_f32(-1000f - 440f))).x));
    global0 = array<u32, 12>();
    let var_3 = var_2;
    let var_4 = false;
    var var_5 = _wgslsmith_add_u32(min(abs(5113u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(8731u, 12u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 3199u, global0[_wgslsmith_index_u32(4294967295u, 12u)], 62879u), firstTrailingBit(vec4<u32>(4294967295u, 1u, 51421u, global0[_wgslsmith_index_u32(0u, 12u)]))), global0[_wgslsmith_index_u32(52297u, 12u)]), 12u)]), ~18697u);
    global3 = Struct_1(var_4, vec3<bool>(true, true, true), firstLeadingBit(~global3.d.x), _wgslsmith_mod_vec3_i32(var_2.d, global3.d), vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(31309u, 12u)]) & vec3<u32>(0u, 3696u, 53143u), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 1u, 0u)) != reverseBits(abs(0u)), _wgslsmith_mod_i32(0i, abs(var_2.c)) < _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.d.x, 592i, -92659i, var_2.c), vec4<i32>(var_1.c, -1i, -1i, var_3.d.x) >> (vec4<u32>(19197u, global0[_wgslsmith_index_u32(4294967295u, 12u)], 38071u, 77045u) % vec4<u32>(32u))), !select(false, true, !global3.b.x)));
    let var_6 = vec2<i32>(-var_3.c, abs(global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 12u)] | ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(26377u, 12u)]), 12u)]);
}

