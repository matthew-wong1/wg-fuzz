struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: u32;

var<private> global1: f32 = -792f;

var<private> global2: Struct_5 = Struct_5(vec4<u32>(4294967295u, 6980u, 12861u, 4935u), vec2<u32>(30002u, 0u), Struct_4(vec4<f32>(399f, -156f, 1276f, 1417f), i32(-2147483648), Struct_1(335f, false, vec3<bool>(true, true, true)), vec2<f32>(-671f, -1111f)), Struct_3(Struct_1(1473f, false, vec3<bool>(true, true, false)), Struct_2(Struct_1(-886f, true, vec3<bool>(false, false, false)), 1i, Struct_1(629f, false, vec3<bool>(true, true, true)), false, vec4<u32>(17677u, 29441u, 2403u, 0u))));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -255f);
    global2 = Struct_5(abs(~vec4<u32>(_wgslsmith_div_u32(16384u, 7884u), min(global2.b.x, global2.d.b.e.x), 38928u, 4294967295u)), _wgslsmith_clamp_vec2_u32(global2.a.xy, ~(vec2<u32>(1u, global2.a.x) ^ (vec2<u32>(6018u, 0u) >> (global2.a.yz % vec2<u32>(32u)))), ~(~(~global2.a.xx))), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_f_op_f32(arg_0.x + 1004f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2337f))), arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-382f, 895f)), _wgslsmith_f_op_f32(f32(-1f) * -612f), true))), global2.c.b ^ firstLeadingBit(_wgslsmith_div_i32(1247i, -18642i)), global2.d.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.a.a, global2.c.d.x) - global2.c.a.wy) - global2.c.a.ww))), global2.d);
    global2 = Struct_5(min(vec4<u32>(~global2.d.b.e.x, abs(global2.a.x), ~1u, 1u ^ (global2.d.b.e.x << (0u % 32u))), vec4<u32>(firstLeadingBit(1u), 86320u, global2.d.b.e.x, 58687u)), firstTrailingBit(global2.b), Struct_4(vec4<f32>(arg_0.x, 329f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1468f), true)), global2.c.a.x), 1i, global2.c.c, _wgslsmith_div_vec2_f32(global2.c.d, vec2<f32>(_wgslsmith_f_op_f32(select(arg_2, -1270f, true)), -1497f))), Struct_3(Struct_1(arg_0.x, any(vec4<bool>(false, true, true, global2.d.b.d)), vec3<bool>(false, !global2.d.b.c.c.x, global2.c.c.c.x)), global2.d.b));
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(-abs(~vec3<i32>(-1i, -2147483647i, global2.c.b)), ~(~(-vec3<i32>(-11377i, -1291i, 0i)))));
    let var_1 = global2.c;
    return _wgslsmith_mod_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(53801u, 0u, global2.d.b.e.x) | _wgslsmith_mult_u32(21810u, global2.d.b.e.x), global2.d.b.e.x), 68207u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global1 = arg_2.a.a;
    let var_0 = ~arg_2.e.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c.a.x, 1165f, arg_2.a.c.x)))), 543f) * vec2<f32>(global2.c.d.x, 1406f));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.a.x * 463f) - 704f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -1000f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(660f)) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, arg_1.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-arg_0.a)))));
    var var_3 = abs(vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(global2.b.x), var_0), func_3(global2.c.d, ~vec2<i32>(-22828i, global2.c.b) | u_input.b, _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(max(-1122f, arg_0.a))))));
    return firstLeadingBit(u_input.b.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, ~(func_2(arg_1, arg_1, global2.d.b) | u_input.a)));
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, arg_1.c.x), true), vec2<bool>(arg_1.c.x, true), vec2<bool>(any(!(!vec4<bool>(global2.c.c.c.x, false, true, true))), !global2.d.b.c.c.x));
    global2 = Struct_5(min(global2.d.b.e, abs(global2.d.b.e)), ~(~vec2<u32>(3911u | global2.d.b.e.x, abs(global2.a.x))), global2.c, global2.d);
    let var_2 = _wgslsmith_f_op_f32(select(1136f, -529f, true && any(select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(global2.c.c.c.x, true, false, arg_1.c.x), vec4<bool>(var_1.x, true, global2.c.c.b, false))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.c.a.x, -738f)) - _wgslsmith_f_op_f32(arg_1.a * global2.c.c.a)), _wgslsmith_f_op_f32(-arg_1.a), arg_0.x)));
    var var_3 = -32514i;
    return -_wgslsmith_mod_vec4_i32(-(vec4<i32>(global2.c.b, 75304i, global2.d.b.b, var_0.x) << (global2.a % vec4<u32>(32u))) | abs(abs(vec4<i32>(global2.d.b.b, 40703i, 1i, var_0.x))), min(abs(vec4<i32>(2147483647i, u_input.b.x, var_0.x, u_input.b.x)), -vec4<i32>(global2.d.b.b, -52687i, global2.c.b, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-40113i, global2.d.b.b, global2.c.b, global2.d.b.b), func_1(global2.c.c.c.zx, Struct_1(607f, false, global2.d.a.c))));
    var var_1 = ~global2.a.x;
    let var_2 = Struct_5(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2.b.x, global2.b.x, global2.d.b.e.x, global2.b.x) >> (global2.d.b.e % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, global2.b.x, global2.d.b.e.x, global2.b.x)), select(vec4<bool>(global2.d.a.b, global2.d.a.c.x, false, false), vec4<bool>(true, false, global2.d.a.c.x, global2.c.c.b), vec4<bool>(global2.c.c.b, true, true, false))) << (_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.d.b.e.x, 1u, 11814u, 4294967295u), vec4<u32>(4183u, global2.b.x, 0u, 34721u)), global2.d.b.e << (vec4<u32>(0u, 4294967295u, 44819u, global2.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~global2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2.b.x, 0u, 67102u, global2.a.x), global2.d.b.e), _wgslsmith_clamp_vec4_u32(global2.d.b.e, vec4<u32>(global2.a.x, 37795u, global2.d.b.e.x, global2.a.x), global2.d.b.e)), 17461u | select(0u, 107047u, global2.d.a.b), global2.d.b.e.x), ~(~global2.a | vec4<u32>(global2.d.b.e.x, 0u, global2.d.b.e.x, 43137u))), max(_wgslsmith_clamp_vec2_u32(firstTrailingBit(global2.b), _wgslsmith_sub_vec2_u32(global2.d.b.e.zw, vec2<u32>(12830u, global2.d.b.e.x)), global2.b >> (vec2<u32>(1u, global2.b.x) % vec2<u32>(32u))) << (global2.b % vec2<u32>(32u)), ~(global2.b & global2.d.b.e.yw)), global2.c, Struct_3(global2.c.c, global2.d.b));
    var var_3 = var_2.c.c.c.x;
    let var_4 = !(!select(any(vec2<bool>(true, true)), any(select(vec2<bool>(var_2.c.c.c.x, false), global2.d.b.a.c.zy, var_2.c.c.c.yx)), true));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

