struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_4,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> bool {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.x + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(select(arg_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.c.e.x, 6u)], 630f, global0[_wgslsmith_index_u32(arg_0.e, 6u)], arg_0.c.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(49822u, 6u)], -755f) + vec4<f32>(-850f, global0[_wgslsmith_index_u32(71726u, 6u)], 892f, global0[_wgslsmith_index_u32(58660u, 6u)]))) * vec4<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(34352u), 6u)], _wgslsmith_f_op_f32(sign(-298f)), _wgslsmith_f_op_f32(-arg_0.c.a.x), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 6u)])))), vec4<bool>(true, any(!vec4<bool>(true, arg_0.c.b.x, arg_0.c.b.x, arg_0.c.d.b.x)), true, all(!vec3<bool>(true, arg_0.c.d.b.x, false))))), !arg_0.c.c.b.zw, Struct_1(_wgslsmith_sub_i32(2147483647i, 41609i), arg_0.c.c.b), arg_0.c.c, (~arg_0.c.e << (vec4<u32>(74964u, _wgslsmith_sub_u32(4294967295u, 57389u), arg_0.c.e.x, ~arg_0.d.x) % vec4<u32>(32u))) << (vec4<u32>(0u, max(1u, arg_0.e), countOneBits(arg_0.b) ^ arg_0.d.x, 42462u) % vec4<u32>(32u)));
    let var_1 = arg_0.c.e.x | 1u;
    global0 = array<f32, 6>();
    let var_2 = arg_0;
    return !(var_2.c.d.a < _wgslsmith_mod_i32(~min(u_input.a, var_0.d.a), firstTrailingBit(_wgslsmith_add_i32(1593i, var_2.c.c.a))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1469f, global0[_wgslsmith_index_u32(max(9809u, 1u), 6u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34243u, 6u)] - global0[_wgslsmith_index_u32(1u, 6u)]))))), 4294967295u, Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(46543u, 6u)], global0[_wgslsmith_index_u32(28750u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], 1911f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1448f, -155f, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1375f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(27156u, 6u)], global0[_wgslsmith_index_u32(6333u, 6u)]), vec4<f32>(-857f, 393f, global0[_wgslsmith_index_u32(24935u, 6u)], 1927f))), vec4<bool>(true, true, true, true)))), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, false), u_input.a <= 2147483647i), Struct_1(1i, vec4<bool>(false, -22241i >= u_input.a, func_3(Struct_5(vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], -403f, global0[_wgslsmith_index_u32(30027u, 6u)]), 47158u, Struct_4(vec4<f32>(-365f, -212f, global0[_wgslsmith_index_u32(1u, 6u)], 1630f), vec2<bool>(false, false), Struct_1(u_input.a, vec4<bool>(true, false, false, false)), Struct_1(1i, vec4<bool>(true, false, false, true)), vec4<u32>(9106u, 16763u, 44286u, 27266u)), vec2<u32>(25882u, 30653u), 13589u)), any(vec3<bool>(false, true, false)))), Struct_1(~max(0i, u_input.a), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false))), vec4<u32>(0u, 1u, 1u >> (1u % 32u), 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~55794u, _wgslsmith_dot_vec3_u32(vec3<u32>(4711u, 55807u, 62665u), vec3<u32>(62455u, 17773u, 32392u))), max(~vec3<u32>(0u, 28005u, 4294967295u), ~vec3<u32>(4294967295u, 8748u, 6864u))), _wgslsmith_sub_u32(abs(8826u), 447u)), _wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(3536u, 1u), vec2<u32>(4294967295u, 15890u))), ~vec2<u32>(1u, 1u)));
    return vec2<bool>(any(var_0.c.d.b.yw), !var_0.c.d.b.x);
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1155f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-506f)), global0[_wgslsmith_index_u32(~1u, 6u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.c.x, 6u)] - global0[_wgslsmith_index_u32(23557u, 6u)])) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(3399u << (arg_0.c.x % 32u), 6u)], 106f)))));
    let var_0 = Struct_3(arg_0.d.x, ~(-firstTrailingBit(_wgslsmith_clamp_vec2_i32(arg_0.b, vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, arg_0.b.x)))), vec2<u32>(~(~arg_0.c.x), countOneBits(~arg_0.c.x)), select(arg_0.d, func_2(), vec2<bool>(func_3(Struct_5(vec3<f32>(-2187f, -2920f, -538f), 0u, Struct_4(vec4<f32>(-181f, -795f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(49056u, 6u)]), arg_0.d, Struct_1(arg_0.b.x, vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)), Struct_1(u_input.a, vec4<bool>(true, arg_0.d.x, arg_0.a, arg_0.a)), vec4<u32>(arg_0.c.x, 1u, arg_0.c.x, 22240u)), vec2<u32>(arg_0.c.x, 4294967295u), arg_0.c.x)), true)));
    let var_1 = -1258f;
    let var_2 = ~var_0.c.x;
    var var_3 = Struct_1(firstTrailingBit(-var_0.b.x), !select(select(select(vec4<bool>(arg_0.d.x, true, var_0.a, false), vec4<bool>(true, var_0.d.x, arg_0.a, true), vec4<bool>(var_0.a, false, arg_0.d.x, false)), vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x), vec4<bool>(var_0.a, arg_0.d.x, false, arg_0.a)), !select(vec4<bool>(arg_0.d.x, var_0.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.d.x, true), var_0.a), true != var_0.a));
    return Struct_3(true | (true != (global0[_wgslsmith_index_u32(var_0.c.x, 6u)] <= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45770u, 6u)] + var_1))), max(vec2<i32>(1i, var_3.a), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, u_input.a) | vec2<i32>(arg_0.b.x, -9904i), var_0.b), var_0.b)), var_0.c | ~vec2<u32>(~1u, 47446u), var_3.b.xz);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = !(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(20912u, arg_0.c.x, 9967u, arg_0.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, 0u, 4294967295u), vec4<u32>(1u, 53362u, arg_0.c.x, 0u))) >= _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(10280u, arg_0.c.x), 9805u, 44241u, _wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 0u), vec4<u32>(13603u, arg_0.c.x, 1u, arg_0.c.x))));
    global0 = array<f32, 6>();
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17616u, 6u)]), global0[_wgslsmith_index_u32(1u, 6u)])))), -149f);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, _wgslsmith_mod_i32(abs(-arg_1), _wgslsmith_sub_i32(arg_0.b.x, -65650i))), _wgslsmith_clamp_i32(2779i, -(-u_input.a >> (arg_0.c.x % 32u)), -31053i));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, arg_0.c.x), vec4<bool>(true, false, false, false)), select(vec4<u32>(arg_0.c.x, arg_0.c.x, 1u, 19425u), vec4<u32>(37868u, 1u, 4294967295u, arg_0.c.x), false)), 6u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1963f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.c.x, arg_0.c.x, 8906u), 6u)])), 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.c.x, 6u)], 318f, global0[_wgslsmith_index_u32(0u, 6u)]) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 6u)], 266f, global0[_wgslsmith_index_u32(29775u, 6u)]))))));
    return Struct_2(-17884i, vec4<bool>(_wgslsmith_f_op_f32(-787f * _wgslsmith_div_f32(-794f, global0[_wgslsmith_index_u32(4294967295u, 6u)])) == -210f, false, func_2().x, !(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(54165u, arg_0.c.x, arg_0.c.x)), 6u)] > _wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(771f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(arg_0.c.x, 6u)]))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1932f, -699f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(true, !all(vec4<bool>(false, true, true, true)), true);
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_1 = firstLeadingBit(u_input.a);
    var var_2 = func_4(func_1(Struct_3(_wgslsmith_f_op_f32(-534f * 1577f) <= global0[_wgslsmith_index_u32(1u, 6u)], ~(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a)), vec2<u32>(select(0u, 4294967295u, false), ~0u), !select(vec2<bool>(var_0, var_0), vec2<bool>(false, true), false))), 1i);
    let var_3 = abs(func_1(func_1(func_1(Struct_3(true, vec2<i32>(var_2.a, var_1), vec2<u32>(4294967295u, 1u), vec2<bool>(var_0, var_2.b.x))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 60149u, 1u, 4294967295u)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(39890u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(27930u, 28509u, 1u, 25027u), vec4<u32>(1u, 19433u, 16216u, 4294967295u)), 1u)), 6u)]), _wgslsmith_clamp_u32(func_1(Struct_3(var_0, -var_3, vec2<u32>(1u, 1u), vec2<bool>(var_0, true))).c.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, ~34542u), abs(90180u), 47197u), min(1043u, ~_wgslsmith_mod_u32(4294967295u, 1u))));
}

