struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, 55907i, 0i, -43944i), -913f);

var<private> global2: array<f32, 16>;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, global0.x, 1u, 7897u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, 22912u, 1u), vec4<u32>(global0.x, 35545u, global0.x, 29513u)), vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c))), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0.x, u_input.b | u_input.c, 4294967295u, ~u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), countOneBits(vec4<u32>(u_input.b, global0.x, 25966u, global0.x)))), ~u_input.c) & min(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.c, 0u))), _wgslsmith_mult_u32(global0.x ^ global0.x, ~global0.x)));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(-global1.a, _wgslsmith_sub_vec4_i32(global1.a, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(24200i, arg_1.x, 2147483647i, 0i), global1.a)))), _wgslsmith_f_op_f32(select(global3.b, _wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0, 16u)]) >= global1.b)));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(~4421i, var_1.a.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(0i, arg_1.x), u_input.d.x), ~min(_wgslsmith_div_i32(var_1.a.x, global3.a.x), -7006i)), u_input.d.x, countOneBits(_wgslsmith_clamp_i32(2147483647i, arg_1.x & u_input.d.x, 1i | global1.a.x)));
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<u32>(~select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 85705u, 9381u, 0u), vec4<u32>(4294967295u, 4294967295u, 9258u, global0.x)), global0.x >> (u_input.c % 32u), ~52977u == ~u_input.b), ~_wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(78436u, global0.x, global0.x, u_input.b)), vec4<u32>(4294967295u, 1u, 0u, u_input.c)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, global0.x, 3289u), vec4<u32>(u_input.b, 2254u, 11452u, 0u), vec4<u32>(26335u, u_input.b, u_input.c, u_input.b)))), 1u, 4294967295u);
    global0 = ~abs(~var_0.xy);
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(all(vec3<bool>(false, true, true)), true, true)), vec4<bool>(true, false, select(true, true, true), _wgslsmith_f_op_f32(trunc(1000f)) == _wgslsmith_f_op_f32(arg_0.b - arg_0.b)), all(vec2<bool>(all(vec2<bool>(true, true)), true))), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, all(vec2<bool>(true, true)), true, true), vec4<bool>(true, true, false, all(vec3<bool>(false, true, true)))), false);
    let var_2 = arg_0;
    var var_3 = !var_1.x || !(!var_1.x);
    return 0i;
}

fn func_1() -> Struct_1 {
    let var_0 = ~5735u;
    let var_1 = ~((u_input.b >> (_wgslsmith_sub_u32(62859u, u_input.b) % 32u)) ^ _wgslsmith_add_u32(u_input.b, reverseBits(15986u))) & ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, 0u))));
    global2 = array<f32, 16>();
    var var_2 = ~vec4<u32>(_wgslsmith_sub_u32(global0.x, 58301u), 0u, ~_wgslsmith_add_u32(~u_input.c, reverseBits(4294967295u)), firstLeadingBit(global0.x));
    var var_3 = _wgslsmith_sub_vec4_u32(abs(select(vec4<u32>(1u, var_1, 41564u, var_2.x), vec4<u32>(global0.x, 76902u, var_2.x, var_2.x), true)) ^ vec4<u32>(~36471u, u_input.b, _wgslsmith_div_u32(0u, 39773u), ~var_0), vec4<u32>(abs(~var_2.x), 34267u, 43899u, func_2(true, -vec2<i32>(u_input.d.x, 1i)))) << (reverseBits(vec4<u32>(firstLeadingBit(4294967295u), var_1 << (48870u % 32u), 0u, _wgslsmith_clamp_u32(abs(1u), 28835u, firstLeadingBit(18374u)))) % vec4<u32>(32u));
    return Struct_1(vec4<i32>(~global1.a.x, func_3(Struct_1(global3.a, 1160f)), min(_wgslsmith_add_i32(45615i, u_input.a), max(-1i, global3.a.x)), -global3.a.x) & -(abs(global3.a) & -vec4<i32>(global3.a.x, 15578i, -24963i, -14050i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(abs(u_input.b) == ~global0.x));
    let var_1 = func_1();
    global2 = array<f32, 16>();
    var_0 = false;
    global0 = ~_wgslsmith_div_vec2_u32(~select(vec2<u32>(14934u, u_input.c), vec2<u32>(global0.x, global0.x), vec2<bool>(false, false)), vec2<u32>(1u, select(global0.x, 1u, false))) | (vec2<u32>(4294967295u, u_input.b) >> (abs(~countOneBits(vec2<u32>(80487u, 0u))) % vec2<u32>(32u)));
    var var_2 = !vec3<bool>(false, false, all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b, -119f, 1517f, -797f), vec4<f32>(global1.b, global3.b, global1.b, -701f)))) * vec4<f32>(global2[_wgslsmith_index_u32(max(1u, u_input.b), 16u)], _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(abs(global3.b)), _wgslsmith_f_op_f32(f32(-1f) * -854f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(global1.b + global2[_wgslsmith_index_u32(1u, 16u)]), global3.b, global3.b) * vec4<f32>(global1.b, _wgslsmith_div_f32(global3.b, -1200f), -118f, -711f))), u_input.c, -firstLeadingBit(-vec3<i32>(global1.a.x, global1.a.x, 37616i)));
}

