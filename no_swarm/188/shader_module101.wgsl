struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, true, true, true, true, false, true, false, false, true, true, false, false, true, true, false, false, false, true, false, false, true, true, true, true, true, false);

var<private> global1: u32 = 63761u;

var<private> global2: vec3<u32>;

var<private> global3: Struct_3;

var<private> global4: array<f32, 17> = array<f32, 17>(-665f, 357f, -558f, -1163f, 1114f, -2569f, -131f, 1858f, 1017f, -1830f, -1722f, -1251f, 566f, 2614f, -2985f, 881f, 268f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global4 = array<f32, 17>();
    var var_0 = _wgslsmith_sub_u32(0u, global2.x << (_wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(4294967295u, arg_2.a.x, 0u))), reverseBits(vec3<u32>(arg_2.b.x, arg_1.b.x, 0u))) % 32u));
    var_0 = ~u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global3.b.a.yy)) - global3.b.a.yz) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1738f - global4[_wgslsmith_index_u32(arg_1.b.x, 17u)])))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(~4294967295u), 17u)])));
    var var_2 = select(select(!select(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.a.x, 28u)], global3.e), select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(11246u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 28u)], global3.e, false), global3.e), all(vec4<bool>(true, false, global3.e, false))), !select(vec3<bool>(false, false, true), vec3<bool>(global3.e, false, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), global3.e), vec3<bool>(!global3.e, true, all(vec4<bool>(true, true, global3.e, true))), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)] <= global4[_wgslsmith_index_u32(4294967295u, 17u)], true, global3.e))), select(vec3<bool>(global0[_wgslsmith_index_u32(~arg_1.b.x, 28u)], all(!vec2<bool>(global3.e, true)), !(global0[_wgslsmith_index_u32(1u, 28u)] & global3.e)), select(vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, false)), global3.e), select(vec3<bool>(global3.e, false, global0[_wgslsmith_index_u32(global3.c, 28u)]), !vec3<bool>(global0[_wgslsmith_index_u32(21261u, 28u)], global3.e, false), !vec3<bool>(global3.e, global3.e, false)), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.x, 28u)], true), select(vec3<bool>(global0[_wgslsmith_index_u32(38161u, 28u)], false, false), vec3<bool>(global3.e, true, global0[_wgslsmith_index_u32(arg_1.a.x, 28u)]), true), global0[_wgslsmith_index_u32(u_input.a, 28u)])), !(!all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(29288u, 28u)], global0[_wgslsmith_index_u32(global3.c, 28u)], true)))), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], all(vec2<bool>(global3.e, !global0[_wgslsmith_index_u32(global2.x, 28u)])), !global0[_wgslsmith_index_u32(~arg_2.b.x, 28u)]));
    return 488f;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(1000f, arg_2, u_input.a, _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(i32(-1i) * -6296i, 1i, _wgslsmith_add_i32(arg_2.b, arg_2.b))), abs(global3.d)), all(!vec4<bool>(select(global3.e, false, arg_1.x), false, 1i > arg_2.b, all(vec2<bool>(false, true)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f - 1782f) * _wgslsmith_f_op_f32(trunc(1000f))), arg_2, 4294967295u | reverseBits(~0u | global3.c), reverseBits(~(-vec3<i32>(-5954i, global3.b.b, arg_2.b))), global3.a >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(52146u, 17u)]), 1037f)), _wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_div_f32(arg_2.c, -439f), true)))));
    var_0 = var_1;
    var var_2 = global3.b;
    var var_3 = 2063f;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + 236f))), _wgslsmith_f_op_f32(-1771f + _wgslsmith_div_f32(1685f, _wgslsmith_f_op_f32(abs(-158f)))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(292f, 325f, var_1.b.a.x, var_2.a.x), 2147483647i, 1000f), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, global2.x, var_0.c), vec3<u32>(1u, 46815u, var_0.c)), reverseBits(vec4<u32>(global2.x, var_1.c, global3.c, global2.x))), Struct_2(vec3<u32>(31042u, u_input.a, var_1.c) ^ vec3<u32>(u_input.a, global3.c, 1u), select(vec4<u32>(global3.c, 4294967295u, var_0.c, 2663u), vec4<u32>(global3.c, 4294967295u, 54831u, 34076u), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 28u)]))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))))), _wgslsmith_add_i32(firstLeadingBit(~(0i << (u_input.a % 32u))), 2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1073f, global4[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(arg_2.a.x - 913f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> Struct_2 {
    global1 = 72492u;
    return Struct_2((vec3<u32>(_wgslsmith_clamp_u32(u_input.a, global2.x, 58339u), 8638u, u_input.a) << (vec3<u32>(arg_2, ~arg_2, ~global3.c) % vec3<u32>(32u))) >> ((vec3<u32>(7945u, countOneBits(0u), 0u | arg_2) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(22796u, 57503u, 31561u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 12448u, u_input.a), vec3<u32>(1u, global3.c, 27536u), vec3<u32>(global3.c, 1u, 5352u)))) % vec3<u32>(32u)), vec4<u32>(~_wgslsmith_clamp_u32(1u, ~1u, 1u), ~(~(~arg_1)), 4294967295u, 1u));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~_wgslsmith_add_u32(4294967295u, global2.x)), 28u)], vec2<bool>(!(!global3.e), any(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(32067u, 28u)], global0[_wgslsmith_index_u32(37243u, 28u)]), false))), global3.b), _wgslsmith_sub_u32(global3.c, _wgslsmith_sub_u32(0u, ~global3.c & 28868u)), ~(477u & (global2.x >> (1u % 32u))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 17u)]), global3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1151f)) * -640f)))), func_2(select(any(vec2<bool>(true, true)), !(!global0[_wgslsmith_index_u32(u_input.a, 28u)]), true), select(vec2<bool>(all(vec2<bool>(false, false)), true), select(vec2<bool>(false, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(33477u, 28u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(32323u, 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(57621u, 28u)], false), false)), any(vec4<bool>(global0[_wgslsmith_index_u32(35265u, 28u)], global3.e, global0[_wgslsmith_index_u32(u_input.a, 28u)], false))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a, -1569f, global3.b.c, -2214f), global3.b.a, vec4<bool>(true, false, global3.e, false)))), global3.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1912f) + _wgslsmith_f_op_f32(step(-600f, global4[_wgslsmith_index_u32(19258u, 17u)]))))), global2.x, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, global3.b.b, -35249i) ^ _wgslsmith_clamp_vec3_i32(global3.d, global3.d, global3.d), vec3<i32>(abs(-5005i), global3.b.b, -59336i >> (u_input.a % 32u))), -_wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, 1i, global3.d.x), vec3<i32>(global3.d.x, global3.d.x, 21154i), vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, global3.d.x), vec3<i32>(2147483647i, -16812i, 2147483647i)))), global0[_wgslsmith_index_u32(global3.c, 28u)]);
    var_0 = Struct_2(~var_0.b.yxx, vec4<u32>(reverseBits(~16071u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 17488u, 101512u), vec3<u32>(var_0.a.x, 56808u, 2482u)), ((var_1.c ^ 85193u) >> (select(var_1.c, 1587u, true) % 32u)) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, 69610u, global2.x), var_0.b.yxy), global3.c));
    global1 = var_0.b.x;
    var var_2 = Struct_2(max(vec3<u32>(min(~global2.x, ~16707u), global2.x, var_1.c), ~var_0.a), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, var_0.a.x, 5419u, 74679u), var_0.b) & var_0.b, var_0.b, select(select(vec4<bool>(global3.e, false, var_1.e, false), vec4<bool>(var_1.e, true, false, global0[_wgslsmith_index_u32(var_0.b.x, 28u)]), vec4<bool>(false, true, false, var_1.e)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 28u)], true, false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], true), var_1.e), all(vec3<bool>(global3.e, global3.e, global3.e)))));
    return func_2(!all(!vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], true)), select(vec2<bool>(global3.e, all(!vec3<bool>(true, false, global3.e))), vec2<bool>(true, all(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 28u)], global3.e), vec3<bool>(true, true, var_1.e), global3.e))), !vec2<bool>(global3.e, 8935u != global2.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b.a)), _wgslsmith_mult_i32(1i, 0i), global4[_wgslsmith_index_u32(44186u, 17u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(3925i, _wgslsmith_mult_i32(-22439i, 0i));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(var_0.b, global3.d.x >> (0u % 32u), ~select(2147483647i, var_0.b, false), -1i);
    var var_2 = var_0.a.xxy;
    global0 = array<bool, 28>();
    let var_3 = 195f;
    global3 = Struct_3(_wgslsmith_f_op_f32(959f * var_3), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global3.b.a - global3.b.a))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.a)))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1777f + _wgslsmith_f_op_f32(var_2.x + var_3)))), _wgslsmith_dot_vec4_u32(vec4<u32>(36423u, _wgslsmith_div_u32(reverseBits(1u), 4294967295u), _wgslsmith_add_u32(1u, global2.x), abs(min(0u, 4294967295u))), vec4<u32>(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(0u, 35900u, 0u)), ~(37292u | u_input.a), global3.c, func_4(Struct_1(global3.b.a, -21064i, var_2.x), ~u_input.a, global2.x).b.x)), abs(min(global3.d, -global3.d)), true);
    let var_4 = Struct_3(-1402f, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(var_0, Struct_2(vec3<u32>(1u, global3.c, 4294967295u), vec4<u32>(global2.x, global3.c, 0u, 40948u)), Struct_2(vec3<u32>(global2.x, 1u, u_input.a), vec4<u32>(59165u, 1u, global3.c, global3.c)))), func_1(1i, 7510i).a.x, _wgslsmith_div_f32(var_2.x, global3.a), -672f), _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, global4[_wgslsmith_index_u32(1u, 17u)], 964f, -478f)))), _wgslsmith_add_i32(var_1.x, global3.b.b), -352f), _wgslsmith_sub_u32(countOneBits(4505u), (119003u | u_input.a) >> (~_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u)), global3.d >> (~vec3<u32>(1u, u_input.a ^ global2.x, u_input.a) % vec3<u32>(32u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(vec3<i32>(var_4.d.x, var_4.b.b, var_1.x) & vec3<i32>(var_0.b, 1i, -11898i))));
}

