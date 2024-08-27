struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0u, vec4<f32>(-1265f, 462f, 198f, 1145f), vec3<f32>(1000f, 424f, -286f), 12548u);

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(27480u, 1u, 9482u, 17971u), vec4<u32>(15036u, 15986u, 10514u, 44553u), vec4<u32>(1u, 1u, 4405u, 76795u), vec4<u32>(711u, 1u, 0u, 29510u), vec4<u32>(4294967295u, 1357u, 4294967295u, 79766u), vec4<u32>(65637u, 13637u, 31120u, 1u), vec4<u32>(0u, 84087u, 1u, 4294967295u), vec4<u32>(0u, 1u, 63968u, 46219u), vec4<u32>(1u, 4294967295u, 1u, 2117u), vec4<u32>(5179u, 0u, 4294967295u, 6762u), vec4<u32>(4294967295u, 35752u, 4294967295u, 5977u), vec4<u32>(0u, 58235u, 73826u, 0u), vec4<u32>(14847u, 1u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(1u, 11119u, 59383u, 79008u), vec4<u32>(4294967295u, 1u, 20060u, 24041u), vec4<u32>(47701u, 23033u, 1u, 4394u), vec4<u32>(17772u, 26577u, 1u, 0u), vec4<u32>(7769u, 1u, 0u, 0u), vec4<u32>(498u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 37193u, 63044u, 0u), vec4<u32>(56552u, 9796u, 70645u, 4294967295u), vec4<u32>(57768u, 17641u, 1u, 4294967295u), vec4<u32>(4244u, 4294967295u, 0u, 1u), vec4<u32>(1u, 0u, 60606u, 4294967295u), vec4<u32>(0u, 4294967295u, 35867u, 8747u), vec4<u32>(7035u, 47274u, 1u, 17540u), vec4<u32>(37996u, 90024u, 4294967295u, 8231u), vec4<u32>(4294967295u, 37451u, 3214u, 1u), vec4<u32>(6197u, 39903u, 4294967295u, 22450u), vec4<u32>(0u, 0u, 116542u, 0u));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_4, 17>;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_5(global0.a, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, 11038i, arg_0.x)), ~vec4<i32>(arg_0.x, arg_0.x, u_input.d.x, -49974i)), min(min(vec4<i32>(21857i, 0i, 0i, 75889i), vec4<i32>(arg_0.x, arg_0.x, u_input.d.x, arg_0.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -1i, arg_0.x, 26859i), vec4<i32>(16190i, 19886i, arg_0.x, -13073i)))), arg_0.x), Struct_3(vec4<bool>(global0.a, global0.a, ~13626u > u_input.c.x, ~0u == _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.b, 56568u), vec3<u32>(1u, 4294967295u, global0.b))), _wgslsmith_dot_vec3_u32(min(reverseBits(vec3<u32>(4294967295u, global0.b, 1u)), firstTrailingBit(vec3<u32>(u_input.a, 13017u, global0.b))), min(vec3<u32>(1u, 12266u, global0.b) & vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(global0.b, global0.e, 1u))), select(vec4<bool>(global0.a, !global0.a, global0.a, global0.a), vec4<bool>(any(vec3<bool>(global0.a, global0.a, global0.a)), true, global0.a, true), !select(vec4<bool>(global0.a, false, true, false), vec4<bool>(global0.a, global0.a, true, true), vec4<bool>(false, false, true, global0.a))), abs(_wgslsmith_sub_i32(-2561i, u_input.d.x)), global4[_wgslsmith_index_u32(~1u, 27u)]), global4[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(53287u, ~global0.e)), 27u)]);
    var var_1 = -vec3<i32>(u_input.d.x, arg_0.x, -2147483647i);
    var var_2 = _wgslsmith_f_op_vec2_f32(-global2.yx);
    let var_3 = _wgslsmith_add_vec4_i32(abs(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.d, arg_0.x, 15207i, var_0.c.d), vec4<i32>(var_0.b, var_1.x, arg_0.x, u_input.d.x)), vec4<i32>(u_input.d.x, 34826i, -2147483647i, u_input.d.x)))), vec4<i32>(_wgslsmith_div_i32(-5221i, -firstTrailingBit(u_input.d.x)), _wgslsmith_mod_i32(var_1.x << (u_input.b % 32u), ~var_0.c.d) & var_1.x, 1i ^ _wgslsmith_sub_i32(var_1.x, var_1.x & 52522i), -11592i));
    let var_4 = ~(u_input.c ^ select(abs(u_input.c), vec2<u32>(global0.b << (global0.e % 32u), min(var_0.c.e.a, global0.e)), all(var_0.c.a)));
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    let var_0 = false;
    global1 = array<vec4<u32>, 31>();
    global4 = array<Struct_2, 27>();
    var var_1 = Struct_1(!(any(vec4<bool>(true, var_0, var_0, var_0)) & (u_input.c.x <= 11926u)), select(max(~_wgslsmith_div_u32(global0.e, 23587u), global0.b), reverseBits(global0.e), false), global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d) - global2.wyw), ~(~func_3(~vec3<i32>(u_input.d.x, -2147483647i, -13846i), global0.c)));
    var_1 = Struct_1(true, ~8429u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -279f, var_1.d.x, -934f), vec4<f32>(-1000f, var_1.d.x, -1000f, 601f))) + _wgslsmith_f_op_vec4_f32(round(global0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.wzx) * vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(min(-382f, global0.d.x)), 1936f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -984f, var_1.c.x), vec3<f32>(global0.c.x, global2.x, var_1.c.x), vec3<bool>(var_1.a, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -343f, 730f)))), 19784u);
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.e, global0.b, var_1.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.e, global0.b, var_1.e), vec3<u32>(global0.e, 6646u, 4294967295u), vec3<u32>(global0.b, 4294967295u, 4294967295u))), vec3<u32>(_wgslsmith_mult_u32(8607u, 1u), var_1.e & var_1.e, arg_0.x & u_input.b)));
}

fn func_1() -> vec2<u32> {
    global1 = array<vec4<u32>, 31>();
    let var_0 = ~u_input.c;
    global2 = global0.c;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>((~global0.b >> (func_2(vec2<u32>(54321u, 1u)) % 32u)) << (~(~0u) % 32u), ~_wgslsmith_add_u32(var_0.x, var_0.x) | (14744u & firstLeadingBit(u_input.b))), abs(u_input.c), vec2<u32>(var_0.x, 1u >> (0u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, global0.c.x)) - -1031f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, -453f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(701f, -1454f, global0.d.x)))), global2.wwy))));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(315f)), 733f, global0.c.x, var_0.x) - global0.c), global0.c);
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32((select(countOneBits(4294967295u), u_input.a << (72279u % 32u), !global0.a) & u_input.a) | 42722u, _wgslsmith_add_u32(_wgslsmith_sub_u32(~0u, ~_wgslsmith_div_u32(20886u, 4294967295u)), global0.b)), 27u)];
    var var_3 = vec3<u32>(~global0.b, ~(~1u), u_input.b);
    global1 = array<vec4<u32>, 31>();
    var var_4 = true;
    let var_5 = -46432i;
    var_2 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(max(2767u, _wgslsmith_dot_vec2_u32(func_1(), countOneBits(u_input.c))), 0u), 27u)];
    global3 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.xxw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1000f, 403f)) + vec3<f32>(var_0.x, var_1.x, global2.x)))));
}

