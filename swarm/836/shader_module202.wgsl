struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> vec4<bool> {
    global1 = Struct_1(firstTrailingBit(_wgslsmith_add_u32(~u_input.b ^ ~arg_0.x, u_input.e)), vec2<i32>(~abs(arg_1), 0i));
    global1 = Struct_1(~(~(~_wgslsmith_add_u32(arg_0.x, arg_0.x))), global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    global1 = Struct_1(69939u, countOneBits(_wgslsmith_clamp_vec2_i32(global1.b, abs(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(0u, 29u)], vec2<i32>(u_input.d, global1.b.x))), global1.b)));
    var var_0 = -_wgslsmith_mult_vec4_i32(reverseBits(~(-vec4<i32>(-2902i, -27573i, 1i, u_input.c))), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.c, u_input.d, global1.b.x, -1i) ^ vec4<i32>(-4567i, arg_1, 0i, arg_1)), vec4<i32>(0i, -14574i & u_input.d, global1.b.x, 1i), vec4<i32>(12706i ^ arg_1, global1.b.x, arg_1, -1i | u_input.d)));
    var var_1 = all(vec4<bool>(true != any(vec2<bool>(true, true)), _wgslsmith_add_u32(~arg_0.x, ~28523u) > 1u, false | all(vec2<bool>(true, true)), true));
    return select(vec4<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), !all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false))), (true & any(vec3<bool>(true, false, true))) || any(vec2<bool>(true, true))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), all(vec3<bool>(true, true, true)));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    global1 = Struct_1(u_input.b, global1.b);
    let var_0 = any(select(func_3(u_input.a, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, global1.b.x), u_input.c)), vec4<bool>(true, true, true, true), vec4<bool>((2147483647i ^ global1.b.x) < u_input.c, true, true, all(vec4<bool>(true, false, true, true)) != all(vec2<bool>(true, true)))));
    global0 = array<vec2<i32>, 29>();
    let var_1 = Struct_3(934f, vec2<i32>(_wgslsmith_add_i32(-1i, global1.b.x), (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, 1i), vec3<i32>(-1i, u_input.c, 13100i)) & global1.b.x) ^ _wgslsmith_div_i32(u_input.c, -20598i)));
    let var_2 = ~u_input.c | ~(20383i ^ _wgslsmith_div_i32(max(var_1.b.x, -6475i), ~1i));
    return var_1.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = Struct_5(!(_wgslsmith_div_f32(arg_1.a.x, -971f) > 1506f));
    var var_1 = -1032f;
    global0 = array<vec2<i32>, 29>();
    var var_2 = _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.c.a, arg_1.c.a, u_input.b) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.x, 43756u, 80207u, 1u), vec4<u32>(arg_0.c.a, 1u, global1.a, u_input.e)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.a, u_input.a.x, 4294967295u, global1.a), vec4<u32>(10119u, 45596u, u_input.a.x, u_input.e)) >> (~vec4<u32>(global1.a, arg_1.b.x, global1.a, u_input.a.x) % vec4<u32>(32u)))), vec4<u32>(~global1.a, 4294967295u, _wgslsmith_mod_u32(~u_input.e, global1.a) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global1.a, 22738u, 1u)), min(vec4<u32>(4294967295u, global1.a, arg_1.c.a, arg_0.c.a), vec4<u32>(15803u, arg_1.c.a, arg_0.c.a, 52103u))) % 32u), global1.a & 4294967295u));
    var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(13223u << (firstTrailingBit(arg_1.c.a) % 32u), (arg_1.b.x >> (39744u % 32u)) << ((global1.a >> (arg_1.c.a % 32u)) % 32u), u_input.a.x, 1u) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.a, arg_1.c.a, var_2.x, u_input.e) << (vec4<u32>(var_2.x, u_input.a.x, var_2.x, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(4294967295u, arg_1.c.a, arg_1.b.x, u_input.b))), ~max(min(select(vec4<u32>(arg_1.c.a, global1.a, 0u, 33867u), vec4<u32>(global1.a, u_input.e, 23691u, 4294967295u), false), countOneBits(vec4<u32>(global1.a, var_2.x, 4294967295u, 0u))), (vec4<u32>(var_2.x, arg_1.c.a, arg_0.b.x, arg_0.c.a) | vec4<u32>(1u, 4294967295u, arg_1.b.x, 42648u)) ^ countOneBits(vec4<u32>(4597u, u_input.b, arg_1.c.a, 4167u))));
    return 4294967295u;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> vec2<i32> {
    global1 = Struct_1(global1.a, vec2<i32>(abs(36463i), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, -58645i, u_input.d)), vec3<i32>(8757i, -11623i, u_input.c))));
    let var_0 = 1f;
    let var_1 = ~u_input.c;
    let var_2 = _wgslsmith_div_u32(func_4(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(func_2(vec4<u32>(global1.a, u_input.a.x, u_input.b, u_input.b))), _wgslsmith_f_op_f32(-var_0)), ~vec3<u32>(u_input.e, 1u, u_input.a.x), Struct_1(4294967295u, vec2<i32>(arg_0.x, global1.b.x)), false), Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, -399f, var_0), vec4<f32>(var_0, 230f, 232f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, 336f, var_0, var_0)), global1.a <= global1.a)), u_input.a, Struct_1(u_input.a.x & 4294967295u, global0[_wgslsmith_index_u32(71451u, 29u)]), arg_1 == -arg_1), any(func_3(u_input.a << (u_input.a % vec3<u32>(32u)), -global1.b.x).yyx)), ~1u);
    let var_3 = true;
    return ~vec2<i32>(-firstLeadingBit(-2147483647i), global1.b.x) | select(min(arg_0, -(~arg_0)), -(~_wgslsmith_mult_vec2_i32(arg_0, vec2<i32>(1i, 52331i))), select(vec2<bool>(var_3, true), vec2<bool>(var_3, !var_3), !(var_3 != true)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_5(!arg_1.a);
    let var_1 = select(select(!select(vec4<bool>(var_0.a, true, var_0.a, arg_1.a), vec4<bool>(true, arg_1.a, false, true), func_3(u_input.a, -1i)), func_3(u_input.a, _wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.x, global1.b.x), _wgslsmith_div_i32(arg_1.b, arg_1.b))), vec4<bool>(var_0.a, var_0.a && true, true, !(arg_3.b.x == arg_0.x))), func_3(vec3<u32>(_wgslsmith_sub_u32(global1.a, select(u_input.e, u_input.e, false)), 34691u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 64580u, global1.a), vec3<u32>(global1.a, global1.a, u_input.a.x))), ~(_wgslsmith_dot_vec3_i32(arg_0, arg_0) >> ((0u << (global1.a % 32u)) % 32u))), select(select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.a, arg_1.a, false, true), false), select(vec4<bool>(var_0.a, false, arg_1.a, var_0.a), vec4<bool>(false, false, true, var_0.a), arg_1.a), select(vec4<bool>(true, var_0.a, arg_1.a, true), vec4<bool>(true, var_0.a, arg_1.a, var_0.a), arg_1.a)), !vec4<bool>(false, arg_1.a, var_0.a, false), var_0.a), vec4<bool>(any(vec2<bool>(true, true)) || (var_0.a & var_0.a), all(vec4<bool>(var_0.a, arg_1.a, arg_1.a, var_0.a)), false, any(select(vec3<bool>(arg_1.a, true, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) <= 549f));
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    let var_2 = Struct_1(~global1.a, -(~_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, arg_3.b.x), abs(global1.b))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 29>();
    global0 = array<vec2<i32>, 29>();
    global1 = Struct_1(69888u << (~_wgslsmith_mult_u32(~global1.a, 1u) % 32u), vec2<i32>(u_input.c, 6171i));
    global1 = Struct_1(1668u, vec2<i32>(firstLeadingBit(1i), global1.b.x));
    let var_0 = vec2<f32>(-342f, 657f);
    let var_1 = func_5(-vec3<i32>(5715i, -1i | global1.b.x, 1i) & -firstTrailingBit(vec3<i32>(u_input.d, u_input.c, 2147483647i) ^ vec3<i32>(global1.b.x, global1.b.x, global1.b.x)), Struct_2(all(vec4<bool>(true, true, true, true)), global1.b.x >> (u_input.b % 32u)), -26498i, Struct_3(var_0.x, func_1(vec2<i32>(abs(global1.b.x), i32(-1i) * -41559i), -1i)));
    global0 = array<vec2<i32>, 29>();
    let var_2 = u_input.a.xx;
    var var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(24239u, 0u), global1.a >> (33337u % 32u), select(var_2.x, global1.a, false), u_input.e), ~vec4<u32>(0u, 40591u, var_2.x, 35487u), max(vec4<u32>(u_input.a.x, 64629u, var_2.x, 65839u), ~vec4<u32>(var_2.x, 0u, u_input.b, u_input.b))), vec4<u32>(0u, global1.a, global1.a, ~countOneBits(0u))), 4294967295u, var_0.x);
}

