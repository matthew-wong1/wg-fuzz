struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(0u, 1u, 1u, 0u), Struct_2(Struct_1(1425f, vec2<i32>(1i, -1i), vec4<f32>(940f, 817f, 666f, 1186f), vec2<u32>(12377u, 91205u)), Struct_1(417f, vec2<i32>(-1i, -2175i), vec4<f32>(1266f, 489f, -904f, 607f), vec2<u32>(67954u, 41438u))), vec3<f32>(-383f, 140f, -511f));

var<private> global1: Struct_5;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> u32 {
    global1 = Struct_5(global1.a, Struct_4(global1.a.a, vec2<i32>(-1i) * -(vec2<i32>(arg_0.e.b.x, 0i) | global1.d.yx), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.e.a + arg_0.a.b.a.c.x))), -min(vec2<i32>(u_input.a, 1i), vec2<i32>(global1.a.c.b.x, global1.e)), vec4<f32>(global0.b.a.a, global1.a.a.b.a.a, 1000f, _wgslsmith_f_op_f32(-206f - 414f)), arg_0.e.d), global1.a.d, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1006f, 316f)), _wgslsmith_f_op_f32(-962f + -661f)), vec2<i32>(_wgslsmith_add_i32(-1i, global1.e), global1.d.x & global0.b.b.b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2480f, -1161f, global0.c.x, 290f)))), ~(vec2<u32>(7552u, 81332u) ^ global0.b.a.d))), true, abs(reverseBits(arg_0.d)), u_input.a);
    return _wgslsmith_sub_u32(max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 1u, 4294967295u), arg_0.a.a.x), _wgslsmith_div_u32(69u, 4294967295u) << (abs(global1.a.a.a.x) % 32u)), ~global0.b.a.d.x) | ~1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> vec3<u32> {
    let var_0 = arg_3.a.b.a.a;
    var var_1 = arg_3.a.b;
    global1 = Struct_5(Struct_4(Struct_3(vec4<u32>(abs(global1.b.a.a.x), func_3(Struct_4(global1.b.a, vec2<i32>(arg_3.b.x, global1.a.e.b.x), global1.b.e, vec3<i32>(-2147483647i, -77674i, global1.a.c.b.x), arg_3.a.b.b), vec4<f32>(var_0, 953f, var_1.b.c.x, var_0)), _wgslsmith_dot_vec4_u32(global1.a.a.a, vec4<u32>(12960u, arg_2, arg_3.e.d.x, var_1.a.d.x)), 113426u), global1.a.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.b.a.c.xxw, arg_3.e.c.zwz)) + vec3<f32>(var_0, var_1.a.c.x, arg_3.c.c.x))), abs(var_1.a.b), Struct_1(-727f, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.e.b.x, arg_3.e.b.x, u_input.a, -86991i), vec4<i32>(9552i, 31959i, 2147483647i, u_input.a)), reverseBits(0i)), vec4<f32>(var_0, _wgslsmith_f_op_f32(311f + var_1.a.c.x), _wgslsmith_f_op_f32(round(-436f)), -467f), ~global1.b.c.d >> ((vec2<u32>(global0.a.x, global0.b.a.d.x) >> (vec2<u32>(4294967295u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_add_vec3_i32(global1.d, global1.a.d), Struct_1(_wgslsmith_f_op_f32(-global0.c.x), firstLeadingBit(max(vec2<i32>(-21831i, -1i), vec2<i32>(var_1.a.b.x, global0.b.b.b.x))), var_1.b.c, _wgslsmith_add_vec2_u32(vec2<u32>(var_1.b.d.x, arg_2), vec2<u32>(2160u, global0.a.x)))), Struct_4(Struct_3(global0.a, global1.a.a.b, _wgslsmith_f_op_vec3_f32(-arg_3.e.c.wzw)), global1.d.yx, global1.b.a.b.b, vec3<i32>(global0.b.a.b.x, 2147483647i, _wgslsmith_clamp_i32(select(53035i, 2147483647i, true), _wgslsmith_mod_i32(33179i, var_1.a.b.x), global1.d.x)), arg_3.e), all(!vec4<bool>(false, all(arg_0), true, global1.c)), arg_3.d, -1i);
    global0 = arg_3.a;
    var var_2 = Struct_2(Struct_1(-456f, -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(29056i, -1i, -1i, 1i), vec4<i32>(var_1.a.b.x, 0i, 2147483647i, global0.b.b.b.x)), _wgslsmith_div_i32(-1i, global0.b.b.b.x)), vec4<f32>(arg_3.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_div_f32(_wgslsmith_div_f32(973f, var_1.a.a), _wgslsmith_f_op_f32(-global1.a.e.a)), _wgslsmith_f_op_f32(global1.a.e.c.x * global0.b.a.c.x)), ~arg_3.e.d), var_1.a);
    return ~firstLeadingBit(~global1.b.a.a.xzz);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b.e.c)));
    let var_1 = global1.b.b.x;
    var var_2 = true;
    global1 = Struct_5(Struct_4(Struct_3(~vec4<u32>(1u, global0.b.b.d.x, arg_0, global1.b.e.d.x), global1.b.a.b, vec3<f32>(-424f, _wgslsmith_f_op_f32(sign(global0.b.b.a)), _wgslsmith_f_op_f32(select(324f, -1166f, global1.c)))), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-5269i, u_input.a), global0.b.b.b, vec2<i32>(0i, -1i)) | global0.b.a.b), Struct_1(global1.b.c.a, ~max(global1.a.b, global0.b.a.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1328f, global0.b.b.a, global0.b.a.a, global1.a.e.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, 787f, 733f, global0.c.x))), ~(~vec2<u32>(40861u, arg_0))), _wgslsmith_add_vec3_i32(vec3<i32>(global0.b.b.b.x, global1.e, global0.b.a.b.x) >> (func_2(vec2<bool>(global1.c, global1.c), arg_0, 1923u, global1.b) % vec3<u32>(32u)), vec3<i32>(1i, global1.d.x >> (42121u % 32u), min(-1i, 1i))), global0.b.a), Struct_4(global1.b.a, min(_wgslsmith_div_vec2_i32(global1.a.b, global0.b.b.b), -vec2<i32>(global1.b.e.b.x, global1.d.x)) ^ global1.d.yz, Struct_1(global0.b.b.a, ~global1.a.c.b ^ vec2<i32>(u_input.a, global0.b.a.b.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(global1.b.e.c, vec4<f32>(global1.a.c.c.x, -230f, var_0.x, var_0.x))))), ~global1.b.c.d), global1.b.d, global1.b.c), global1.c, min(max(min(select(global1.a.d, global1.a.d, vec3<bool>(global1.c, true, global1.c)), -vec3<i32>(u_input.a, 1i, u_input.a)), abs(-vec3<i32>(-8389i, 58751i, -31257i))), global1.d), -min(select(_wgslsmith_mod_i32(581i, u_input.a), global0.b.a.b.x, true), u_input.a));
    let var_3 = global1.d.x;
    return all(select(!select(vec3<bool>(global1.c, false, true), vec3<bool>(global1.c, global1.c, global1.c), select(vec3<bool>(false, global1.c, global1.c), vec3<bool>(global1.c, global1.c, global1.c), false)), select(vec3<bool>(all(vec3<bool>(false, false, true)), global1.c, false), vec3<bool>(all(vec4<bool>(false, global1.c, false, true)), false, global1.c), select(select(vec3<bool>(false, global1.c, true), vec3<bool>(false, true, true), vec3<bool>(global1.c, false, false)), !vec3<bool>(global1.c, false, false), select(global1.c, global1.c, false))), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = 17412i << (((~global1.a.a.b.b.d.x | 1u) | ~global0.b.b.d.x) % 32u);
    var var_2 = vec2<bool>(global1.c, !(true || all(vec4<bool>(true, false, var_0.x, true))));
    var var_3 = global1.b.a.b;
    var var_4 = func_1(global1.b.e.d.x);
    var_1 = global0.b.b.b.x;
    var_3 = global1.a.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_i32(reverseBits(52771i), -1i)), ~(~vec3<i32>(global1.d.x, 76524i, -8971i)), ~(-_wgslsmith_mult_i32(global0.b.b.b.x | global0.b.b.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 42096i), vec3<i32>(global0.b.b.b.x, global0.b.a.b.x, -7570i)))), ~(max(global0.b.b.b, global0.b.a.b) ^ reverseBits(_wgslsmith_clamp_vec2_i32(global0.b.b.b, var_3.b.b, global0.b.b.b))));
}

