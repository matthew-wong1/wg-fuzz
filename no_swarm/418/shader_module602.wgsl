struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = vec4<i32>(global0.c.c, select(2147483647i, i32(-1i) * -15625i, true), global1.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0.c.c, -58357i, global0.c.c) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(1i, 2147483647i, -1i, global1.x)), -abs(vec4<i32>(-68646i, global0.c.b.x, global0.c.b.x, 0i) ^ vec4<i32>(28107i, global0.c.c, global0.c.c, -4288i))));
    let var_1 = Struct_2(global0.a, false, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f - -252f)), -358f)));
    global1 = vec2<i32>(-(~(i32(-1i) * -10638i)), global1.x ^ arg_1.b.x);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, -2213f, global0.a, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.a, -962f, -881f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_1.d, 393f, var_1.d) + vec4<f32>(451f, var_1.a, -1086f, 1000f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a, global0.a, 278f, 204f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, global0.a, 687f, var_1.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, 511f, -1694f, -575f) - vec4<f32>(-485f, global0.a, global0.d, -234f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_f32(select(-846f, var_1.a, var_1.c.e)), _wgslsmith_f_op_f32(f32(-1f) * -852f)), vec4<f32>(1521f, global0.d, _wgslsmith_div_f32(global0.d, 1000f), _wgslsmith_f_op_f32(825f - var_1.d)))));
    var var_3 = firstTrailingBit(min(~(~(~global0.c.a)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.a.x | 22895u, 0u, global0.c.a.x), global0.c.a)));
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = global0.a;
    let var_1 = true;
    var var_2 = select(vec4<bool>(false, true, false, true == (false || var_1)), vec4<bool>(!(_wgslsmith_f_op_f32(ceil(global0.a)) >= 250f), arg_0.a.x == ~59773u, arg_1.d.x, 108615u <= ~arg_1.a.x), var_1);
    global1 = global0.c.b;
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(select(arg_1.a.x >> (arg_0.a.x % 32u), func_3(false, Struct_1(arg_0.a, vec2<i32>(arg_0.b.x, global1.x), global1.x, vec2<bool>(false, var_1), var_1)) << (_wgslsmith_add_u32(0u, arg_1.a.x) % 32u), true), ~(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, arg_1.a.x, global0.c.a.x, 0u)) << (min(18856u, 14286u) % 32u)), ~22014u, _wgslsmith_clamp_u32(60391u, _wgslsmith_add_u32(~u_input.c, ~arg_0.a.x), _wgslsmith_add_u32(_wgslsmith_add_u32(4681u, 35367u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)))), u_input.b);
    return -651f;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = global0.c.c;
    let var_1 = -237f;
    global1 = _wgslsmith_sub_vec2_i32(arg_1.c.b, arg_1.c.b) >> (global0.c.a.xx % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(arg_1.c, Struct_1(u_input.b.yxw, vec2<i32>(11351i, -17002i), arg_1.c.c, vec2<bool>(arg_1.c.e, true), false))))), var_1)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1600f, -338f) + vec2<f32>(179f, var_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), global0.d))));
    return _wgslsmith_clamp_vec4_i32(-vec4<i32>(max(0i, ~7683i), 1i, arg_1.c.c, global1.x), abs(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1i, 10634i, 1i, 19795i)) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_1.c.c, -1i, global0.c.b.x), vec4<i32>(global0.c.b.x, 2147483647i, global0.c.b.x, 28522i)))), _wgslsmith_mult_vec4_i32((~vec4<i32>(-23831i, global1.x, -42973i, 0i) & vec4<i32>(2124i, global1.x, global0.c.b.x, 1i)) ^ vec4<i32>(28331i, _wgslsmith_mod_i32(24747i, 2147483647i), -29570i, arg_1.c.b.x ^ arg_1.c.b.x), vec4<i32>(-2147483647i, global1.x, 1i | arg_1.c.b.x, -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u & ~u_input.c;
    var var_1 = _wgslsmith_sub_vec3_i32(~(~(_wgslsmith_add_vec3_i32(vec3<i32>(-26988i, global0.c.b.x, 1i), vec3<i32>(-15709i, -29995i, 1882i)) & select(vec3<i32>(-1i, global1.x, 0i), vec3<i32>(global0.c.b.x, global0.c.b.x, 30079i), global0.c.e))), vec3<i32>(_wgslsmith_add_i32(max(global0.c.c, abs(1i)), _wgslsmith_mod_i32(global0.c.c, 44066i)), -2147483647i, -1i));
    var var_2 = -1023f;
    let var_3 = vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-58635i, global0.c.b.x & -1i, -2147483647i, var_1.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, global0.c.b.x, -2147483647i, -15550i), vec4<i32>(-25348i, -1i, var_1.x, -18237i)), func_1(false, Struct_2(global0.d, false, Struct_1(global0.c.a, global0.c.b, global1.x, global0.c.d, global0.b), global0.d)), abs(vec4<i32>(global1.x, 1i, var_1.x, -2147483647i)))), min(-(global0.c.c >> (1u % 32u)), 0i));
    let var_4 = 9255u;
    let var_5 = Struct_4(max(var_3.x, var_3.x), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_f32(-1020f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a)))), 1u != func_3(true, global0.c), Struct_1(global0.c.a, var_3, select(-36508i, global1.x, true), global0.c.d, global0.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d * global0.a)))))), Struct_3(Struct_1(~u_input.b.zyy, min(vec2<i32>(-3421i, var_1.x) & vec2<i32>(-1258i, var_1.x), firstTrailingBit(vec2<i32>(-19815i, 41331i))), -global1.x, select(!vec2<bool>(global0.b, false), vec2<bool>(global0.c.e, true), vec2<bool>(false, true)), global0.b != all(vec4<bool>(false, global0.c.d.x, false, false)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + global0.a))) - global0.d), any(!select(vec3<bool>(true, false, global0.c.d.x), vec3<bool>(false, false, true), vec3<bool>(true, global0.c.e, global0.b))), Struct_1(vec3<u32>(var_4, global0.c.a.x | 0u, _wgslsmith_mod_u32(65212u, 4294967295u)), global0.c.b << ((vec2<u32>(0u, 0u) << (vec2<u32>(global0.c.a.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), -18817i, select(!global0.c.d, global0.c.d, select(vec2<bool>(true, global0.b), vec2<bool>(false, true), global0.b)), !global0.c.e | !global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(global0.d * -1428f)), global0.d)));
    let var_6 = global0.c.d;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4, _wgslsmith_sub_u32(~51748u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, var_0, var_0), _wgslsmith_mult_vec3_u32(var_5.e.c.a, u_input.d)))), 162f, ~vec4<i32>(_wgslsmith_add_i32(global1.x, 0i) | ~global0.c.c, _wgslsmith_div_i32(firstTrailingBit(global1.x), min(1i, var_1.x)), var_3.x, (i32(-1i) * -2164i) >> (var_4 % 32u)));
}

