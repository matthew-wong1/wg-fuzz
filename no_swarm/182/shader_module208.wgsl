struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(~reverseBits(4294967295u), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1229f, -269f))), Struct_1(vec2<bool>(true, select(true, all(vec2<bool>(true, true)), true)), select(true, !any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, false, true))), vec4<f32>(-111f, _wgslsmith_div_f32(-741f, 1633f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1426f + 232f), _wgslsmith_f_op_f32(f32(-1f) * -559f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -1000f));
    let var_1 = _wgslsmith_f_op_f32(969f - var_0.c.c.x);
    var var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.c.c.yyw);
    var var_4 = var_0;
    return !vec3<bool>(all(select(vec2<bool>(true, var_0.c.a.x), vec2<bool>(var_2.b, true), vec2<bool>(false, true))), true, true);
}

fn func_2(arg_0: f32, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = false;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(786f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, arg_0) + vec2<f32>(var_1.a, 1865f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1706f, 1261f)))) - vec2<f32>(-351f, arg_1.a)));
    let var_3 = ~arg_2.x | 2147483647i;
    var var_4 = Struct_4(_wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(select(arg_2.zx, arg_2.zz, vec2<bool>(var_1.b, false)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3, var_3), arg_2.zx, vec2<i32>(var_3, var_3))), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.x, arg_2.x) & arg_2.xz, -arg_2.yz << (u_input.a % vec2<u32>(32u)))), 40138i, !select(vec3<bool>(arg_1.b, true, false), func_3(), vec3<bool>(var_1.b, any(vec4<bool>(false, var_1.b, var_1.b, true)), true)));
    return arg_3;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(0u, func_2(arg_2.x, Struct_5(arg_2.x, true), vec3<i32>(-18100i, 0i, -1i), u_input.b)) & u_input.a));
    var_0 = vec2<u32>(1u, u_input.c);
    var_0 = u_input.a;
    var_0 = max(vec2<u32>(u_input.c, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 74003u), vec3<u32>(66846u, u_input.c, u_input.a.x)))), vec2<u32>(~var_0.x, 72568u));
    var var_1 = _wgslsmith_f_op_f32(sign(1000f));
    return vec3<i32>(~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(2463i, -1i), vec2<i32>(26664i, -73397i)))), ~(i32(-1i) * -87498i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x & var_0.x, 57788u, 1u), vec4<u32>(firstTrailingBit(u_input.c), u_input.b, min(0u, var_0.x), var_0.x << (56788u % 32u))) % 32u), _wgslsmith_add_i32(20417i, 57503i));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_2.x, -_wgslsmith_mult_i32(1i, -18946i)), _wgslsmith_sub_i32(arg_2.x << (min(u_input.c, _wgslsmith_mult_u32(u_input.c, 4274u)) % 32u), arg_2.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -17855i, -1i, -1i) << (vec4<u32>(arg_1, 1u, arg_1, arg_1) % vec4<u32>(32u)), select(vec4<i32>(arg_2.x, 2147483647i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, -7545i, arg_2.x), false))));
    var var_1 = reverseBits(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-21928i, 2773i), arg_2.zx)), arg_2.zz) >> (_wgslsmith_add_vec2_u32(firstLeadingBit(~vec2<u32>(arg_1, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), u_input.a) & (vec2<u32>(arg_1, 92136u) | u_input.a)) % vec2<u32>(32u)));
    var_1 = arg_2.xy;
    var_1 = arg_2.zy;
    return Struct_1(vec2<bool>(false, true), true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, -366f))), arg_0))), arg_0);
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = 285f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.yy));
    return arg_0.c.xxy;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-965f, 908f, 2129f, -653f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 170f, 1454f, 867f) + vec4<f32>(155f, 933f, 214f, -966f)))), vec3<u32>(u_input.b, u_input.b, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1238f))))))), -1574f, _wgslsmith_f_op_vec3_f32(func_5(func_4(-844f, _wgslsmith_sub_u32(1u, u_input.c) >> (u_input.b % 32u), func_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(557f, 477f))))))));
}

