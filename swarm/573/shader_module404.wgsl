struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> bool {
    return false;
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(-1034f, -1269f)), 546f, _wgslsmith_f_op_f32(-334f * 1654f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_0))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x)) + -1212f), -141f, var_0.x, _wgslsmith_f_op_f32(trunc(1273f)))));
    global0 = select(any(vec2<bool>(true, any(vec2<bool>(false, false)))), true, true) & any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec3<bool>(true, true, false))), vec3<bool>(true, true, true)));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -784f, var_1.x, -1256f)))))));
    var var_2 = Struct_1(1i, !(!any(vec3<bool>(false, true, false)) && true), !any(vec4<bool>(true, true, var_0.x == -1178f, all(vec2<bool>(false, true)))));
    return max(1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, var_2.a), vec2<i32>(var_2.a, var_2.a))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> bool {
    global1 = _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(17772u | global1.x, 0u, 1u)), vec3<u32>(_wgslsmith_div_u32(1u, countOneBits(global1.x >> (global1.x % 32u))), ~4294967295u ^ (~16515u >> (max(global1.x, global1.x) % 32u)), ~4294967295u));
    var var_0 = ~vec2<u32>(abs(global1.x), global1.x);
    global1 = countOneBits(select(vec3<u32>(6194u, global1.x, ~1u), ~max(vec3<u32>(1u, var_0.x, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.x, 4294967295u), vec3<u32>(var_0.x, global1.x, var_0.x))), select(vec3<bool>(false, !arg_3.c, true), select(vec3<bool>(true, arg_3.b, true), vec3<bool>(arg_3.b, arg_3.b, arg_3.b), !vec3<bool>(arg_3.c, false, false)), false)));
    let var_1 = Struct_1(arg_3.a, true, -45060i <= arg_0.a);
    var var_2 = -_wgslsmith_mod_vec4_i32(select(~vec4<i32>(var_1.a, 2147483647i, 25233i, -4190i), ~(-vec4<i32>(arg_3.a, u_input.a, 0i, arg_0.a)), !select(vec4<bool>(false, false, arg_0.c, arg_0.b), vec4<bool>(false, var_1.c, arg_0.b, var_1.c), vec4<bool>(var_1.b, arg_0.c, arg_3.c, var_1.b))), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, u_input.a, arg_0.a, 1i), vec4<i32>(arg_3.a, -20326i, arg_0.a, u_input.c.x)) | abs(max(vec4<i32>(-2147483647i, 8581i, var_1.a, 1i), vec4<i32>(arg_0.a, arg_0.a, u_input.d, 57892i))));
    return var_1.c;
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a, func_4(Struct_1(firstLeadingBit(u_input.b.x), all(vec3<bool>(false, true, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-100f)) - 528f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(189f, -1396f)), _wgslsmith_f_op_f32(step(-118f, -215f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)))), Struct_1(func_3(~20838u), firstLeadingBit(2147483647i) >= firstLeadingBit(u_input.c.x), !any(vec3<bool>(false, false, false)))), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), true), true & (84141u == global1.x))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = arg_0.x != reverseBits(-2043i);
    let var_1 = ~reverseBits(_wgslsmith_mult_i32(max(1i, -arg_1.a), -2147483647i));
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = arg_1;
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_clamp_i32(func_3(~_wgslsmith_mult_u32(global1.x, global1.x)), countOneBits(_wgslsmith_dot_vec3_i32(-u_input.b, u_input.b)), 24237i), true, ~(~reverseBits(global1.x)) >= _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(global1.x, 0u, ~8672u)));
    let var_2 = vec4<u32>(global1.x, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(1u, ~global1.x), global1.x), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global1.x, global1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(32383u, global1.x, 22022u), vec3<u32>(45677u, global1.x, 0u))) << (global1.x % 32u), global1.x);
    var var_3 = true;
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = firstLeadingBit(~(~max(vec4<i32>(u_input.d, -11846i, 2147483647i, 28533i), vec4<i32>(arg_0.a, u_input.b.x, 2147483647i, u_input.a))) | vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(arg_0.a), ~u_input.c.x), 54990i, ~1i, -2147483647i));
    let var_1 = vec3<u32>(global1.x, arg_2, _wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(4294967295u, 61881u, arg_2, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 4294967295u, 1u, global1.x), ~vec4<u32>(9734u, 4294967295u, global1.x, 51093u)), ~firstTrailingBit(vec4<u32>(0u, global1.x, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 22532u, arg_2, global1.x), vec4<u32>(1745u, arg_2, 0u, global1.x)), vec4<u32>(global1.x, global1.x, global1.x, arg_2)))));
    global0 = arg_0.b;
    var var_2 = !vec2<bool>(any(!vec2<bool>(true, arg_0.c)), false);
    global1 = ~max(~((vec3<u32>(var_1.x, 0u, 30068u) ^ vec3<u32>(0u, 0u, arg_2)) ^ max(var_1, vec3<u32>(global1.x, var_1.x, global1.x))), vec3<u32>(firstLeadingBit(global1.x), var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global1.x, 4294967295u, arg_2) >> (vec4<u32>(global1.x, 56343u, arg_2, global1.x) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, global1.x, 4294967295u, arg_2)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1245f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-431f)) + -316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-542f))))), _wgslsmith_f_op_f32(1294f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(1095f, -263f)))))));
    global0 = func_1(Struct_1(_wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), _wgslsmith_sub_vec3_i32(u_input.b, u_input.b)), vec3<i32>(firstLeadingBit(u_input.b.x), ~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 27520i, -1i), vec3<i32>(u_input.d, u_input.a, 0i)))), false, !(12170u < global1.x) | all(vec2<bool>(true, true))));
    var var_1 = 1f;
    var var_2 = func_7(func_6(func_5(~vec2<i32>(u_input.b.x, 1i) & _wgslsmith_mod_vec2_i32(u_input.b.zy, u_input.b.yx), func_2()), Struct_1(firstTrailingBit(2325i), true, !any(vec2<bool>(false, true))), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !func_1(Struct_1(2147483647i, true, false)))), false, global1.x);
    var var_3 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(global1.x) ^ 48621u, global1.x, 1216f);
}

