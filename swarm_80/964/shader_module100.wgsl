struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(2147483647i, 43195i), vec2<i32>(1i, 1250i), vec2<i32>(-41129i, i32(-2147483648)), vec2<i32>(2147483647i, -14330i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 48936i), vec2<i32>(38455i, i32(-2147483648)), vec2<i32>(-45489i, 27117i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 17775i), vec2<i32>(-1i, -83772i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(36401i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-17704i, i32(-2147483648)), vec2<i32>(9329i, 0i));

var<private> global2: Struct_1 = Struct_1(0i, vec3<u32>(6960u, 4294967295u, 1u), 18761u, vec4<i32>(-42938i, 4456i, i32(-2147483648), 20664i), vec4<i32>(-4266i, -31898i, -48544i, 1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select(!all(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)) && !select(true, false, false), _wgslsmith_f_op_f32(f32(-1f) * -2165f) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1780f)), _wgslsmith_f_op_f32(sign(609f)), arg_0.a == global2.a)));
    global1 = array<vec2<i32>, 19>();
    global1 = array<vec2<i32>, 19>();
    global1 = array<vec2<i32>, 19>();
    global0 = var_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    return vec3<i32>(2147483647i, _wgslsmith_dot_vec2_i32(~((arg_1.e.ww ^ arg_1.e.xx) | arg_0.e.wz), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1.d.x, -1i), arg_1.a & 17841i), _wgslsmith_add_vec2_i32(~arg_0.d.xx, -global2.d.xx))), _wgslsmith_sub_i32(-836i, ~global2.a) & -21407i);
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = ~arg_0.e.zx;
    let var_1 = _wgslsmith_mod_i32(u_input.c, 32715i);
    var var_2 = _wgslsmith_add_i32(countOneBits(var_0.x), select(_wgslsmith_dot_vec3_i32(func_3(arg_0, Struct_1(u_input.c, vec3<u32>(arg_0.c, 1u, arg_0.c), 4294967295u, arg_0.e, arg_0.e), arg_0.b.x), global2.e.yzy), ~_wgslsmith_mult_i32(1i, 50812i), !all(vec4<bool>(true, false, true, true)))) >= -_wgslsmith_sub_i32(-arg_0.e.x, reverseBits(_wgslsmith_add_i32(-25172i, -5799i)));
    var var_3 = _wgslsmith_sub_u32(6429u, u_input.b.x);
    var var_4 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, false, all(vec3<bool>(true, true, false)), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), var_0.x < var_1), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return StorageBuffer(_wgslsmith_sub_u32(~arg_0.b.x, ~reverseBits(~0u)), select(countOneBits(-abs(var_0.x)), -var_1, arg_0.c >= (global2.c | 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1556f)), 1236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f * 184f))), _wgslsmith_div_f32(1000f, 1490f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(-2334i, vec3<u32>(~4294967295u, 1u, u_input.b.x), u_input.a, global2.e, -vec4<i32>(~7779i, global2.a, u_input.c, ~26862i)));
    let x = u_input.a;
    s_output = func_2(Struct_1(global2.e.x, vec3<u32>(abs(~var_0.c), ~countOneBits(0u), var_0.c), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b.x, ~global2.c, countOneBits(var_0.c)), ~_wgslsmith_mod_u32(u_input.b.x, 1u)), ~(-_wgslsmith_mod_vec4_i32(var_0.d, var_0.d)), ((global2.e << (u_input.b % vec4<u32>(32u))) >> (~u_input.b % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))));
}

