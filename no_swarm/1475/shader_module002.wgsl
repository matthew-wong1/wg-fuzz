struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: Struct_4;

var<private> global1: Struct_5;

var<private> global2: bool = true;

var<private> global3: array<vec2<bool>, 2>;

var<private> global4: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(44022i, 1i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(-36653i, i32(-2147483648)), vec2<i32>(-20316i, 1i), vec2<i32>(-16460i, 0i), vec2<i32>(21409i, i32(-2147483648)), vec2<i32>(-37912i, 1261i), vec2<i32>(-35336i, 41231i), vec2<i32>(1i, 22921i), vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, -38022i), vec2<i32>(-10103i, 16222i), vec2<i32>(2147483647i, 29001i), vec2<i32>(0i, 71038i), vec2<i32>(-1i, 6971i), vec2<i32>(0i, -53410i), vec2<i32>(2147483647i, -51531i), vec2<i32>(-63168i, 0i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), -96315i), vec2<i32>(-15320i, 42537i), vec2<i32>(19936i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(-55778i, -79750i), vec2<i32>(-1i, 1i), vec2<i32>(-14697i, -1i), vec2<i32>(0i, 1i), vec2<i32>(-11533i, 69379i), vec2<i32>(34659i, 48326i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global0.b.b.x;
    global2 = arg_0.d;
    let var_1 = firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(global0.c.b.x, u_input.a.x, global1.e, u_input.a.x)), vec4<i32>(0i, 0i << (arg_0.e % 32u), firstLeadingBit(1i), global1.b.b.b.x)), 1i));
    return global1.b.a;
}

fn func_2(arg_0: u32) -> f32 {
    global4 = array<vec2<i32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, true, arg_0, false, 4294967295u)))) - global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(step(-530f, global1.b.a)))))) * vec2<f32>(global1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1008f - _wgslsmith_f_op_f32(global0.a * -1517f)))));
    let var_1 = vec3<f32>(728f, var_0.x, -368f);
    let var_2 = _wgslsmith_f_op_f32(631f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(456f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, true, 1u, global0.d.x, 1u))) + -469f)));
    let var_3 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0 << (firstTrailingBit(0u) % 32u), min(1u, global1.b.b.a)), ~global1.d.x ^ 4294967295u), select(arg_0, 69762u, false), arg_0);
    return var_0.x;
}

fn func_4(arg_0: f32) -> Struct_3 {
    global4 = array<vec2<i32>, 31>();
    global1 = Struct_5(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(32283i, 82051i, 33460i), global1.a.xxy), -global0.c.b.x, 48607i, select(firstLeadingBit(1i), 1i, false | !global1.b.d.x)), global1.b, ~(~_wgslsmith_mod_vec2_u32(global1.d, global1.c)), firstLeadingBit(global1.d) & _wgslsmith_mod_vec2_u32(abs(~vec2<u32>(global1.d.x, global0.b.a)), vec2<u32>(global0.b.a, ~global1.d.x)), ~global0.c.b.x);
    global4 = array<vec2<i32>, 31>();
    global3 = array<vec2<bool>, 2>();
    let var_0 = true;
    return global1.b.b;
}

fn func_1() -> vec2<u32> {
    let var_0 = firstTrailingBit(global1.c.x);
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_u32(global1.c.x, 41837u, var_0))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global1.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(852f * global1.b.a)) + global1.b.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(true, true, global1.b.c.a, global0.d.x, var_1.a)))))), global1.b.a)), _wgslsmith_f_op_f32(global0.a * global0.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.a)) - -207f);
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 2>();
    global4 = array<vec2<i32>, 31>();
    let var_0 = Struct_3(0u, _wgslsmith_div_vec3_i32(vec3<i32>(-12041i, ~u_input.b ^ 0i, 69776i), countOneBits(vec3<i32>(_wgslsmith_add_i32(global1.b.b.b.x, global0.b.b.x), 1719i, _wgslsmith_div_i32(-55358i, -51960i)))));
    global2 = all(!(!vec4<bool>(global0.d.x, !global0.d.x, global1.b.a <= global0.a, all(vec3<bool>(true, false, true)))));
    global1 = Struct_5(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -168i), -(~var_0.b.x)), firstTrailingBit(_wgslsmith_sub_i32(global0.c.b.x >> (84218u % 32u), var_0.b.x ^ 2147483647i)), ~2147483647i, global0.b.b.x), global1.b, func_1(), vec2<u32>(~var_0.a, 59443u & _wgslsmith_mult_u32(global1.d.x, 6405u)), -17595i);
    let var_1 = Struct_2(Struct_1(global0.d.x, global0.d.x, 1u, all(vec4<bool>(global0.d.x, global1.b.d.x, global0.d.x, global1.b.d.x)) & !global0.d.x, var_0.a << ((global1.b.c.a >> (_wgslsmith_div_u32(var_0.a, global1.c.x) % 32u)) % 32u)), _wgslsmith_mod_u32(~51509u, 4294967295u), -((var_0.b | select(global1.a.zyx, global0.b.b, vec3<bool>(global1.b.d.x, true, global1.b.d.x))) | global1.b.c.b), -2147483647i, Struct_1(all(vec3<bool>(global1.b.d.x, global0.d.x, false)) || !global1.b.d.x, 188f < _wgslsmith_f_op_f32(select(392f, _wgslsmith_f_op_f32(global0.a - global1.b.a), !global1.b.d.x)), _wgslsmith_add_u32(~global0.c.a, 4294967295u), any(!select(vec3<bool>(false, true, global0.d.x), vec3<bool>(global1.b.d.x, true, true), global0.d.x)), global1.c.x));
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(-33972i >> (_wgslsmith_div_u32(~1u, var_0.a | 4294967295u) % 32u), abs(~20969i) >> (global0.c.a % 32u)));
    var var_3 = any(vec2<bool>(false, var_1.e.d));
    var var_4 = ~vec2<u32>(min(~65724u, var_1.e.c), var_1.e.c);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a);
}

