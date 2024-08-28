struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    return 58694i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> u32 {
    global1 = select(any(!(!vec3<bool>(true, arg_0.d, true))), arg_3.d, (arg_0.c.x >= 15411u) || all(vec2<bool>(all(vec3<bool>(arg_1.d, true, arg_2)), arg_0.d)));
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(arg_1.a, abs(firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_1.a, arg_3.a)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_f_op_f32(min(-306f, 668f)), _wgslsmith_div_f32(-2205f, arg_1.b.x)), vec2<u32>(1u, _wgslsmith_clamp_u32(~countOneBits(arg_0.c.x), u_input.e.x, arg_0.c.x)), arg_1.d);
    global0 = array<vec4<i32>, 21>();
    var var_1 = false;
    var_1 = false | all(select(vec3<bool>(false, false, false), !(!vec3<bool>(arg_1.d, false, arg_0.d)), vec3<bool>(arg_0.d, all(vec2<bool>(true, var_0.d)), var_0.d)));
    return arg_3.c.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<vec4<i32>, 21>();
    var var_0 = vec2<u32>(u_input.b, u_input.b);
    global1 = !(!(1i > func_2(Struct_1(vec3<i32>(-2147483647i, u_input.c, 2113i), vec3<f32>(-1732f, 1000f, -658f), u_input.d, true))) && true);
    var_0 = vec2<u32>(_wgslsmith_clamp_u32(56876u, firstLeadingBit(var_0.x), func_3(Struct_1(firstTrailingBit(vec3<i32>(u_input.c, 18641i, -1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, 1000f, -109f) * vec3<f32>(350f, arg_0, arg_0)), u_input.d, arg_0 <= arg_0), Struct_1(vec3<i32>(-1i, u_input.c, -47083i), vec3<f32>(arg_0, arg_0, 327f), ~u_input.e.yw, 2147483647i <= u_input.c), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), Struct_1(abs(vec3<i32>(u_input.a.x, 2147483647i, 55904i)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-118f, arg_0, arg_0), vec3<f32>(arg_0, -338f, -200f))), select(vec2<u32>(25684u, 0u), vec2<u32>(84609u, u_input.d.x), vec2<bool>(true, true)), any(vec3<bool>(true, false, false))))), u_input.e.x);
    var_0 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~select(u_input.e.zw, u_input.e.wz, true), max(max(u_input.e.yw, u_input.e.wx), u_input.d >> (vec2<u32>(29023u, var_0.x) % vec2<u32>(32u)))), ~(vec2<u32>(12816u, var_0.x) ^ u_input.e.xw));
    return Struct_1(vec3<i32>(-u_input.a.x, reverseBits(func_2(Struct_1(vec3<i32>(83115i, u_input.c, u_input.a.x), vec3<f32>(665f, -453f, arg_0), vec2<u32>(4294967295u, 26417u), false))), min(~min(u_input.c, u_input.a.x), u_input.a.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-251f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2047f)))), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(abs(arg_0)))))), ~u_input.d, false);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: bool) -> StorageBuffer {
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    var var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -974f));
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.c, reverseBits(var_0.a.x)) ^ vec2<i32>(11332i, abs(arg_0.a.x)), -(~arg_0.a.zy)), abs(vec2<i32>(24158i, ~var_0.a.x)), select(~var_0.a.zx, var_0.a.yz, vec2<bool>(select(arg_3, func_1(arg_0.b.x).d, var_0.d), arg_3)));
    var var_2 = var_0.b.x;
    return StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1.x, _wgslsmith_mod_i32(-24944i, u_input.c)), -47763i) >> (_wgslsmith_mod_u32(1u, ~countOneBits(arg_2)) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1173f, var_0.b.x, -1077f, _wgslsmith_f_op_f32(sign(arg_1))) - vec4<f32>(arg_1, func_1(arg_0.b.x).b.x, arg_0.b.x, _wgslsmith_f_op_f32(-279f - arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(true && ((4294967295u | u_input.b) >= (_wgslsmith_dot_vec2_u32(vec2<u32>(9954u, 51570u), vec2<u32>(1u, u_input.e.x)) << (countOneBits(0u) % 32u))));
    global1 = all(vec4<bool>(true, true, true, true)) & true;
    global1 = true;
    global0 = array<vec4<i32>, 21>();
    let var_0 = ~(~u_input.b);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(f32(-1f) * -650f)))))));
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f - -588f)))), -322f, ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.e.x), select(u_input.e.xz, vec2<u32>(var_0, 34516u), false)), _wgslsmith_sub_u32(1u >> (u_input.b % 32u), u_input.d.x), all(vec3<bool>(false, true, false))), true);
}

