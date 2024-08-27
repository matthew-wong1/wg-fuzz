struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = global0.b.x;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 4u)], Struct_1(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, global0.b.x, global0.a)))) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -197f, global0.b.x), _wgslsmith_f_op_vec3_f32(-global0.b))), -34284i), firstLeadingBit(min(_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 2147483647i)), global0.c)));
    var_0 = global0.a;
    var_0 = _wgslsmith_div_f32(147f, _wgslsmith_f_op_f32(-global0.a));
    var_1 = Struct_2(-_wgslsmith_mult_i32(global0.c, 2147483647i ^ var_1.b.c) >= ~(~arg_0), var_1.b, -(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-51141i, var_1.b.c), u_input.a.zy))));
    return ~abs(43173u);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, global0.b.x)), global0.b.x)), global0.b, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(5455i, -1i)), 0i, (arg_0.x | global0.c) ^ u_input.a.x, 2147483647i)));
    global1 = array<bool, 4>();
    let var_0 = global0.b.zz;
    global1 = array<bool, 4>();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(-var_0.x)), global0.b, _wgslsmith_mod_i32(1i, -global0.c));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + global0.b.x))), _wgslsmith_f_op_f32(trunc(901f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec4_i32(-countOneBits(u_input.a), u_input.a), ~vec4<u32>(~0u, func_3(-32808i), _wgslsmith_sub_u32(arg_2.x, arg_2.x), _wgslsmith_div_u32(arg_2.x, arg_2.x)))), _wgslsmith_dot_vec3_i32(-u_input.a.yzw, u_input.a.xyz));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a);
    global1 = array<bool, 4>();
    let var_2 = true;
    global1 = array<bool, 4>();
    return arg_2.x;
}

fn func_1() -> u32 {
    global0 = Struct_1(765f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global0.a, 123f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, global0.a, 456f))) + vec3<f32>(1465f, _wgslsmith_f_op_f32(global0.b.x * 137f), _wgslsmith_div_f32(global0.b.x, -1039f))), global0.b), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.a.x, 5840i, global0.c, 27657i), u_input.a, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], true, true))) & -(~vec4<i32>(-2147483647i, -24813i, u_input.a.x, 30004i)), u_input.a));
    global1 = array<bool, 4>();
    let var_0 = countOneBits(countOneBits(~firstLeadingBit(1u)));
    var var_1 = Struct_2(select(true, true, ~(-global0.c) >= _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.a.x, 1i, global0.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(585f, -1571f)))), _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(231f, -222f, 801f)) * _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(2247f, global0.b.x, -648f)))), _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_add_i32(-2147483647i, u_input.a.x)), 12773i)), 1i);
    var var_2 = var_1.b;
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0 & abs(32839u), 0u) ^ _wgslsmith_clamp_u32(1u, var_0, select(func_2(var_1.b, var_1.b.b.xx, vec4<u32>(27558u, var_0, 0u, 5879u)), func_3(1i), true)), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(1u << (1u % 32u), 1u, ~1u | func_1(), 1u) ^ ~(~vec4<u32>(0u, 74420u, 1u, 107978u)), ~reverseBits(max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(5888u, 1u, 0u, 37215u))));
    var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, ~countOneBits(~var_0.x), 31105u, 4294967295u), vec4<u32>(0u, func_3(min(u_input.a.x, -38918i)), ~countOneBits(var_0.x), func_2(Struct_1(-1369f, global0.b, global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(u_input.a.x, global0.c, 0i, u_input.a.x), vec4<u32>(11689u, var_0.x, 4294967295u, 0u))).xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(136f, -1487f) * vec2<f32>(-898f, 199f))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 27974u)), vec4<u32>(43258u, 0u, 70510u, 7646u), vec4<u32>(4294967295u, 4294967295u, 62950u, 4294967295u) ^ vec4<u32>(var_0.x, 15357u, 1u, var_0.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(493f)) - 359f);
    global1 = array<bool, 4>();
    var_0 = ~(_wgslsmith_sub_vec4_u32(vec4<u32>(45191u, firstTrailingBit(4294967295u), 4294967295u, var_0.x), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, var_0.x, 0u, 103112u), vec4<u32>(var_0.x, 47406u, 12425u, 66509u), false), vec4<u32>(var_0.x, 0u, var_0.x, 36461u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~32498u, reverseBits(var_0.x), 4294967295u, _wgslsmith_add_u32(var_0.x, var_0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 3689u, var_0.x, 0u), vec4<u32>(1u, var_0.x, 54634u, 33526u))) % vec4<u32>(32u)));
    var var_2 = Struct_2(true, Struct_1(1001f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + -1234f) - global0.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a), 904f)), -644f), 2147483647i), ~abs(1i));
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_0.zy, _wgslsmith_add_i32(u_input.a.x << (0u % 32u), -1i), select(var_0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.x, var_0.x, var_0.x)), ~var_0.wyz), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, 62969u), var_0.x ^ 4294967295u), 4u)]));
}

