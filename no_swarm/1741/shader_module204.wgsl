struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-407f, 2090f, -494f), vec3<f32>(1943f, -1965f, 516f), vec3<f32>(465f, 1000f, -600f), vec3<f32>(-1712f, -310f, -1436f), vec3<f32>(-697f, 407f, -603f), vec3<f32>(887f, -493f, -1000f), vec3<f32>(-1197f, -142f, 1000f), vec3<f32>(712f, -340f, 1160f), vec3<f32>(352f, -331f, 1000f), vec3<f32>(2448f, 405f, -964f), vec3<f32>(-738f, 309f, 1125f), vec3<f32>(-1386f, 837f, 872f), vec3<f32>(-642f, 1334f, -2730f), vec3<f32>(-1495f, 442f, -223f), vec3<f32>(-210f, -1689f, 609f), vec3<f32>(1678f, -1548f, -1484f), vec3<f32>(-849f, 324f, -1554f), vec3<f32>(-572f, 1000f, 254f), vec3<f32>(148f, -225f, -1656f), vec3<f32>(957f, 973f, -1320f));

var<private> global2: u32 = 25653u;

var<private> global3: array<vec2<bool>, 8>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = array<vec3<f32>, 20>();
    global0 = arg_0;
    global2 = _wgslsmith_mult_u32(u_input.c, 1u);
    var var_0 = abs(abs(vec4<u32>(u_input.c, 656u, u_input.c, u_input.c)) >> (select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1264u, u_input.c, 4294967295u, 73981u)), vec4<u32>(32163u, u_input.c, 4294967295u, 48599u), vec4<bool>(true, arg_0.b.x, arg_0.b.x, global0.b.x)) % vec4<u32>(32u))) & vec4<u32>(~(~abs(u_input.c)), 4294967295u, 23051u, 0u);
    var var_1 = arg_0;
    return var_1.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a)) * -505f), global0.b);
    var var_1 = Struct_1(var_0.a, select(vec3<bool>(!func_3(Struct_1(arg_1, global0.b)), true, !global0.b.x), !vec3<bool>(true, global0.b.x, !var_0.b.x), vec3<bool>(all(select(vec4<bool>(var_0.b.x, global0.b.x, true, global0.b.x), vec4<bool>(global0.b.x, false, false, var_0.b.x), vec4<bool>(var_0.b.x, true, var_0.b.x, true))), false, var_0.b.x)));
    var var_2 = ~reverseBits(min(abs(vec4<i32>(u_input.b.x, u_input.b.x, -34026i, -2147483647i)), -vec4<i32>(arg_2, arg_2, arg_2, -1i)) >> (vec4<u32>(46097u, u_input.a.x | 35824u, 4294967295u & u_input.a.x, ~4294967295u) % vec4<u32>(32u)));
    global3 = array<vec2<bool>, 8>();
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(542f - 457f) + 2561f)), vec3<bool>(!var_0.b.x && !all(vec4<bool>(global0.b.x, false, var_1.b.x, false)), global0.b.x, global0.b.x && true));
    return Struct_1(-509f, var_0.b);
}

fn func_4(arg_0: Struct_1) -> f32 {
    return func_2(u_input.a, _wgslsmith_f_op_f32(sign(-156f)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-select(878i, -2147483647i, false), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 2147483647i, 5625i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -44492i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -16937i, u_input.b.x, 8366i)))), abs(u_input.b.x))).a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = ~min(-select(select(vec3<i32>(u_input.b.x, 19527i, -1i), arg_0, vec3<bool>(true, arg_1.b.x, true)), vec3<i32>(u_input.b.x, arg_0.x, -1i) >> (vec3<u32>(0u, u_input.a.x, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(false, arg_1.b.x, true), vec3<bool>(arg_1.b.x, arg_1.b.x, global0.b.x), global0.b.x)), select(vec3<i32>(u_input.b.x, _wgslsmith_div_i32(1i, u_input.b.x), min(arg_0.x, arg_0.x)), vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), i32(-1i) * -2147483647i, u_input.b.x >> (64632u % 32u)), any(arg_1.b) && !arg_1.b.x));
    var var_1 = ~vec2<u32>(u_input.a.x | u_input.c, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 71618u, 0u, u_input.c), vec4<u32>(9204u, 39054u, 1u, u_input.c))));
    let var_2 = func_2(vec2<u32>(1u, _wgslsmith_div_u32(1u, u_input.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(1228f - 890f))))), _wgslsmith_add_i32(~1i >> (firstTrailingBit(firstTrailingBit(u_input.a.x)) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, u_input.b.x, 43574i), ~(-vec3<i32>(arg_0.x, var_0.x, arg_0.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(260f, 233f, arg_1.a, -864f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a, 1339f, global0.a, 1647f)))))))));
    var var_4 = ~(~(~vec3<u32>(90653u, 71426u, var_1.x))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, firstTrailingBit(var_1.x & 23227u), var_1.x), _wgslsmith_div_vec3_u32(vec3<u32>(max(var_1.x, u_input.c), 14708u, u_input.c >> (26270u % 32u)), firstLeadingBit(~vec3<u32>(0u, 104022u, 0u))));
    return _wgslsmith_sub_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), -1i, arg_0.x), arg_0)), _wgslsmith_div_i32(-61449i, var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = func_5(firstTrailingBit(max(select(select(vec3<i32>(3051i, u_input.b.x, 3515i), vec3<i32>(29910i, 2147483647i, arg_1), vec3<bool>(false, true, true)), min(vec3<i32>(arg_1, -39141i, arg_1), vec3<i32>(u_input.b.x, arg_1, 18283i)), all(global0.b.yy)), min(vec3<i32>(0i, u_input.b.x, 1i), -vec3<i32>(u_input.b.x, arg_1, 2147483647i)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_2(u_input.a, 526f, u_input.b.x))))), vec3<bool>(func_3(Struct_1(152f, vec3<bool>(true, true, false))), true, arg_0.b.x)));
    let var_2 = vec4<bool>(true, false, true, all(!vec4<bool>(arg_0.b.x, func_2(u_input.a, global0.a, -77422i).b.x, arg_0.b.x, arg_0.b.x)));
    var var_3 = abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(15808u, var_0), 38700u), u_input.a, vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 4294967295u, 112349u), vec4<u32>(0u, u_input.c, 4294967295u, u_input.a.x)), 9550u, false), ~(~u_input.a.x))));
    global2 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-851f))), arg_0.a)), vec3<bool>(global0.b.x, arg_0.b.x, ~var_3.x == 25616u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(abs(u_input.c), ~(~4294967295u));
    let var_0 = -select(-u_input.b & u_input.b, vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, firstLeadingBit(u_input.b.x))), vec2<bool>(!global0.b.x, global0.b.x));
    let var_1 = func_1(Struct_1(global0.a, global0.b), 2147483647i & reverseBits(var_0.x));
    var var_2 = vec3<bool>(global0.b.x, false, true);
    global0 = var_1;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * global0.a)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_div_f32(-585f, global0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), vec3<bool>(global0.b.x, false, false));
    let var_3 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, -1i, -1i)), 0u, select(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, true) ^ u_input.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(17519u, u_input.c, ~u_input.a.x), select(firstTrailingBit(vec3<u32>(50001u, 4294967295u, 4294967295u) >> (vec3<u32>(0u, u_input.c, u_input.a.x) % vec3<u32>(32u))), ~vec3<u32>(u_input.a.x, 48684u, u_input.a.x), vec3<bool>(select(var_1.b.x, global0.b.x, var_3), all(var_1.b.zy), false))));
}

