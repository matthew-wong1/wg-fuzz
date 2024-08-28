struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = 0i;

var<private> global2: array<f32, 9> = array<f32, 9>(1247f, -1300f, -1649f, 860f, -972f, -1074f, 208f, 434f, -119f);

var<private> global3: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true));

var<private> global4: array<f32, 13> = array<f32, 13>(-1697f, 1393f, 1215f, 837f, -632f, -597f, -321f, -283f, 2075f, 180f, 1698f, 1000f, 1311f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_2(arg_1, arg_1.b, vec4<bool>(!select(arg_1.c, false, true), (_wgslsmith_sub_u32(36874u, u_input.a) > u_input.a) & true, true, all(!vec3<bool>(arg_1.c, arg_1.a.x, arg_1.a.x))), arg_1.a.x);
    var var_1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~(arg_1.b.x >> (35947u % 32u))) & 11866u, 9u)]);
    let var_2 = !(~(~arg_0.x) < 0i);
    let var_3 = select(~(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, var_0.b.x, 4294967295u, 19608u)), vec4<u32>(var_0.b.x, 19772u, 43539u, arg_1.b.x))), ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(7187u, 20147u, 74598u, var_0.a.b.x)), ~(~vec4<u32>(var_0.b.x, u_input.a, 25605u, 1u))), !global3[_wgslsmith_index_u32(~(~var_0.b.x), 9u)]);
    let var_4 = _wgslsmith_div_f32(1001f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(arg_1.b.x, 9u)], -1000f)), _wgslsmith_f_op_f32(max(1660f, -1519f)))) * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, -1300f), global4[_wgslsmith_index_u32(~14166u, 13u)]))));
    return !(!arg_1.c);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(494u, 9u)])))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f + global2[_wgslsmith_index_u32(0u, 9u)]) - global4[_wgslsmith_index_u32(0u, 13u)]), -1513f)))), -608f, 753f);
    let var_1 = !select(vec2<bool>(func_3(firstTrailingBit(vec2<i32>(global0.x, 44122i)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 83787u, u_input.a), true), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(107804u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], 1908f, -564f))), (-428i != global0.x) & true), vec2<bool>(true, true), !select(true, any(vec4<bool>(false, false, false, false)), global2[_wgslsmith_index_u32(22797u, 9u)] > var_0.x));
    var var_2 = Struct_1(select(select(var_1, vec2<bool>(true, !var_1.x), vec2<bool>(var_1.x, true)), select(select(vec2<bool>(var_1.x, var_1.x), !var_1, select(var_1, var_1, vec2<bool>(false, false))), var_1, !var_1), true), vec3<u32>(u_input.a | _wgslsmith_dot_vec2_u32(~vec2<u32>(73432u, 21144u), min(vec2<u32>(u_input.a, 24296u), vec2<u32>(u_input.a, u_input.a))), u_input.a, 4294967295u), all(!global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 9u)]));
    global4 = array<f32, 13>();
    global4 = array<f32, 13>();
    return Struct_1(var_1, vec3<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47210u, 0u), var_2.b)), 4294967295u, var_2.b.x), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(u_input.a, 13u)], arg_2.x, -2776f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], 546f, -1000f) - vec4<f32>(global2[_wgslsmith_index_u32(var_0.b.x, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], 2023f, 1835f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, 332f, 848f, global2[_wgslsmith_index_u32(39349u, 9u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(var_0.b.x, 13u)], 1065f, global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.x))))));
    global4 = array<f32, 13>();
    global1 = u_input.b.x & -8040i;
    let var_2 = !vec3<bool>(select(_wgslsmith_mult_u32(0u, u_input.a), 1u, var_0.a.x) == ~29033u, select(true, var_0.a.x, var_0.c), !(!(!var_0.a.x)));
    return func_2();
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_1.x;
    global0 = _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, u_input.b.x, u_input.b.x, global0.x)) >> (_wgslsmith_div_u32(arg_0.x, 1u) % 32u), (u_input.b.x ^ u_input.b.x) >> (~59711u % 32u), abs(-u_input.b.x))), select(vec3<i32>(~1319i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(u_input.b.x, global0.x, -8208i)), u_input.b.x), _wgslsmith_mult_vec3_i32(u_input.b >> (arg_0.xwx % vec3<u32>(32u)), select(vec3<i32>(u_input.b.x, 1i, u_input.b.x) << (arg_2.b % vec3<u32>(32u)), vec3<i32>(0i, -63630i, global0.x), arg_2.c.ywx)), !(reverseBits(u_input.b.x) >= _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_1 = vec2<i32>(u_input.b.x, -1i);
    let var_2 = Struct_2(arg_2.a, arg_0.yyx, arg_2.c, all(vec4<bool>(func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 18333i), vec2<i32>(global0.x, global0.x)), Struct_1(vec2<bool>(true, arg_2.a.a.x), arg_2.b, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 13u)], global2[_wgslsmith_index_u32(arg_2.a.b.x, 9u)], 200f))), false, false, !any(global3[_wgslsmith_index_u32(1u, 9u)]))));
    let var_3 = -1068f;
    return arg_2;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global4 = array<f32, 13>();
    let var_0 = (1u & _wgslsmith_clamp_u32(20014u, u_input.a, _wgslsmith_div_u32(0u, ~0u))) & u_input.a;
    var var_1 = Struct_2(func_2(), vec3<u32>(var_0, 1u, min(var_0, arg_0.a.b.x | 0u) | u_input.a), vec4<bool>(!(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(91907u, 13u)])) < _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 9u)] + global4[_wgslsmith_index_u32(1u, 13u)])), true, arg_0.c.x, !(global2[_wgslsmith_index_u32(0u, 9u)] == global4[_wgslsmith_index_u32(u_input.a, 13u)])), all(arg_0.a.a) && (global2[_wgslsmith_index_u32(var_0, 9u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 9u)] - 969f) * global2[_wgslsmith_index_u32(var_0 >> (1u % 32u), 9u)])));
    global0 = vec3<i32>(~(-1i), _wgslsmith_sub_i32(25126i, ~global0.x), firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, global0.x)));
    var var_2 = func_4(~firstLeadingBit(~vec4<u32>(arg_0.b.x, 59219u, 4294967295u, var_0)) >> (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.a.b.x, arg_0.b.x, var_1.a.b.x), vec4<u32>(u_input.a, 2622u, var_0, 0u))) % vec4<u32>(32u)), func_2().a, func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(48511u, var_0, 1u, 58779u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.a.b.x, var_1.a.b.x, 25418u), vec4<u32>(var_1.a.b.x, var_1.a.b.x, var_1.b.x, arg_0.a.b.x))), !(!vec2<bool>(false, arg_0.c.x)), arg_0)).a;
    return func_4(vec4<u32>(~1u, ~13715u, ~(~0u), u_input.a), !(!(!(!arg_0.c.xy))), Struct_2(func_4(vec4<u32>(~var_1.a.b.x, ~var_1.b.x, arg_0.b.x, ~34947u), func_1(~vec3<u32>(91134u, 1u, var_2.b.x), ~u_input.b, vec2<f32>(global2[_wgslsmith_index_u32(0u, 9u)], -1535f)).a, arg_0).a, var_2.b, select(func_4(vec4<u32>(var_1.a.b.x, 11930u, 29769u, arg_0.a.b.x), var_1.a.a, func_4(vec4<u32>(var_0, 18594u, 8603u, arg_0.a.b.x), vec2<bool>(var_2.c, arg_0.d), arg_0)).c, vec4<bool>(func_3(global0.yx, var_1.a, vec3<f32>(630f, 1913f, -1509f)), true, true, -510f <= global2[_wgslsmith_index_u32(var_0, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.b.x, 4294967295u), abs(var_1.a.b.x), _wgslsmith_mult_u32(var_1.b.x, 0u)), 9u)]), func_4(vec4<u32>(0u, u_input.a, var_0, ~var_0), !vec2<bool>(var_1.c.x, false), func_4(~vec4<u32>(0u, u_input.a, var_0, 9782u), !vec2<bool>(true, var_2.c), Struct_2(arg_0.a, vec3<u32>(1u, var_1.a.b.x, var_0), var_1.c, arg_0.c.x))).c.x));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global3 = array<vec4<bool>, 9>();
    let var_0 = func_2();
    return Struct_2(func_2(), vec3<u32>(_wgslsmith_sub_u32(func_5(Struct_2(Struct_1(arg_1.a.a, vec3<u32>(4294967295u, arg_1.a.b.x, var_0.b.x), true), arg_1.b, arg_1.c, true)).a.b.x, arg_0), 1u, u_input.a), !(!global3[_wgslsmith_index_u32(min(u_input.a, func_2().b.x), 9u)]), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.a, func_5(func_4(vec4<u32>(~u_input.a, ~1u, u_input.a, u_input.a ^ 12068u), vec2<bool>(true, true), Struct_2(func_1(vec3<u32>(u_input.a, 48874u, u_input.a), u_input.b, vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(u_input.a, 13u)])), ~vec3<u32>(4294967295u, u_input.a, 105372u), vec4<bool>(true, true, true, true), all(global3[_wgslsmith_index_u32(0u, 9u)])))));
    let var_1 = func_5(var_0).a;
    var var_2 = func_5(var_0);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(max(reverseBits(var_1.b.x), ~61910u), 13u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.b.x, 9u)]))))) > _wgslsmith_f_op_f32(f32(-1f) * -610f);
    var_2 = var_0;
    var var_4 = _wgslsmith_clamp_u32(func_2().b.x, u_input.a, _wgslsmith_add_u32(4294967295u, ~var_0.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(u_input.a, min(u_input.a, u_input.a), var_0.b.x) << (countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, var_2.a.b.x, 21421u), vec3<u32>(4294967295u, 85033u, 4294967295u))) % vec3<u32>(32u))) >> (vec3<u32>(~(var_1.b.x | 43989u), ~(0u | u_input.a), firstLeadingBit(max(u_input.a, var_2.b.x))) % vec3<u32>(32u)), var_0.a.b.x, var_0.a.b.x);
}

