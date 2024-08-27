struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(349f, vec2<u32>(24849u, 0u), vec3<bool>(true, false, false), vec4<i32>(2147483647i, -8469i, 9989i, 42785i), false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> vec3<bool> {
    return select(global0.c, vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -3089i, u_input.a.x) >> (vec3<u32>(global0.b.x, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-83495i, 0i, u_input.a.x)) < max(u_input.a.x, min(u_input.a.x, u_input.a.x)), true, global0.e), !global0.e);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = global0.c;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, global0.a), 1456f), -200f);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(705f * global0.a), -994f), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(arg_0, global0.b)), _wgslsmith_dot_vec2_u32(select(arg_0, vec2<u32>(45755u, 4294967295u), var_0.x), u_input.c.xy)), vec2<u32>(firstLeadingBit(arg_0.x | 12552u), _wgslsmith_div_u32(~global0.b.x, min(108489u, arg_0.x)))), func_3(!(_wgslsmith_clamp_u32(u_input.b.x, arg_0.x, arg_0.x) >= global0.b.x), vec2<u32>(~28414u ^ (global0.b.x & 0u), global0.b.x), u_input.a.x, 1u), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32((global0.d ^ global0.d) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.d.x, u_input.d.x), vec4<u32>(global0.b.x, 30084u, arg_0.x, 34317u)) % vec4<u32>(32u)), global0.d), _wgslsmith_mult_vec4_i32(~(~global0.d), -(~global0.d))), any(!select(!vec4<bool>(global0.c.x, global0.e, var_0.x, false), vec4<bool>(false, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, global0.e, true, global0.c.x), false))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a));
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_2.a) * _wgslsmith_f_op_f32(global0.a - -1317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1084f, var_2.a)))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, arg_0.x, 1u) & vec4<u32>(arg_0.x, var_2.b.x, arg_0.x, 8527u), vec4<u32>(u_input.c.x, var_2.b.x, 4240u, 0u)), ~(~3148u)), select(func_3(all(vec4<bool>(false, global0.c.x, var_2.c.x, var_2.c.x)), _wgslsmith_sub_vec2_u32(abs(global0.b), global0.b), var_2.d.x, 1u), global0.c, ~_wgslsmith_sub_u32(u_input.b.x, arg_0.x) >= 1u), ~_wgslsmith_sub_vec4_i32(var_2.d, var_2.d), all(!(!(!vec2<bool>(var_2.c.x, global0.c.x)))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * var_2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.a) + -419f))), select(global0.b << (u_input.d % vec2<u32>(32u)), var_2.b, true), vec3<bool>(!any(!global0.c.yx), !var_0.x, var_2.e), min(select(global0.d, ~var_2.d, all(vec3<bool>(false, false, false)) && true), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, 1i) & vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), ~var_2.d))), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global0 = Struct_1(global0.a, min(vec2<u32>(max(~global0.b.x, 1u), 204u), vec2<u32>(31197u, ~arg_0.b.x)), arg_0.c, _wgslsmith_mod_vec4_i32(-(firstLeadingBit(vec4<i32>(arg_1.x, -63028i, -40817i, arg_1.x)) ^ arg_0.d), global0.d), global0.c.x || global0.c.x);
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + arg_0.a)), _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(max(-1083f, global0.a)))))), vec2<i32>(~abs(-1i), -2147483647i), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.a)))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 77892u, arg_0.b.x, global0.b.x), vec4<u32>(22295u, global0.b.x, arg_0.b.x, 359u)) >> (~u_input.d.x % 32u), func_2(~vec2<u32>(arg_0.b.x, 1u), u_input.a.x >> (1u % 32u)).b.x), select(vec3<bool>(func_2(global0.b, -31133i).e, arg_0.e, arg_0.e), vec3<bool>(arg_0.e, !arg_0.e, arg_0.e | true), arg_0.c.x), _wgslsmith_add_vec4_i32(~select(arg_0.d, arg_0.d, vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 20801i, 2147483647i, global0.d.x), arg_0.d) | arg_0.d), false), vec3<i32>(-global0.d.x, _wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global0.d.x, arg_0.d.x), global0.d.x)), -2147483647i));
    let var_1 = var_0.c.b;
    global0 = arg_0;
    let var_2 = arg_0;
    return u_input.c.x;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a)));
    var var_1 = vec4<u32>(4953u | _wgslsmith_sub_u32(1u, ~_wgslsmith_mult_u32(global0.b.x, 51656u)), 1u ^ func_4(func_2(~vec2<u32>(global0.b.x, 30939u), u_input.a.x), global0.d), ~(_wgslsmith_div_u32(countOneBits(global0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d.x, 0u), vec3<u32>(u_input.c.x, u_input.b.x, 0u))) & 1u), 14170u);
    var var_2 = all(global0.c.zz);
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(~105184u), _wgslsmith_div_u32(u_input.c.x, 4294967295u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.b.x, var_1.x, global0.b.x), vec4<u32>(16197u, 27938u, global0.b.x, 51881u)) ^ 4294967295u, u_input.c.x)), vec2<u32>(abs(max(global0.b.x, 4294967295u)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 14485u), vec2<u32>(65324u, 44918u)))) ^ var_1.wx);
    var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(14432u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(57312u, var_1.x, var_3.x, var_1.x)), vec4<u32>(39974u, 8621u, 4294967295u, 13492u)), ~var_3.x, _wgslsmith_mod_u32(80645u, ~u_input.b.x)), ~vec4<u32>(_wgslsmith_sub_u32(1u, var_1.x), 3053u, 69341u, 0u));
    return var_3.x | u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(1f, ~vec2<u32>(_wgslsmith_dot_vec2_u32(~global0.b, vec2<u32>(global0.b.x, global0.b.x)), func_1()), !vec3<bool>(all(select(vec4<bool>(false, true, global0.c.x, global0.e), vec4<bool>(true, global0.c.x, true, false), vec4<bool>(global0.c.x, false, true, false))), global0.e, func_3(true, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global0.b.x), global0.b, vec2<u32>(11589u, 25497u)), u_input.a.x, 1u).x), select(~func_2(~global0.b, 1i).d, _wgslsmith_div_vec4_i32(global0.d, vec4<i32>(min(-4262i, u_input.a.x), global0.d.x, 0i, u_input.a.x & 2147483647i)), global0.c.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

