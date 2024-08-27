struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: bool) -> vec4<f32> {
    let var_0 = any(select(select(select(!vec4<bool>(true, true, arg_3, arg_3), !vec4<bool>(arg_3, arg_3, arg_3, false), vec4<bool>(true, arg_3, arg_3, true)), !vec4<bool>(false, true, arg_3, arg_3), true), vec4<bool>(false, true, _wgslsmith_clamp_u32(u_input.d, u_input.d, 17680u) < countOneBits(u_input.e), any(!vec4<bool>(arg_3, false, arg_3, false))), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(vec3<u32>(u_input.c.x, _wgslsmith_mod_u32(4294967295u, abs(~43554u)), countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 26043u), u_input.c))));
    var_1 = Struct_3(~reverseBits(~var_1.a));
    var_1 = Struct_3(_wgslsmith_div_vec3_u32(abs(min(var_1.a, vec3<u32>(var_1.a.x, var_1.a.x, 5400u) & vec3<u32>(u_input.c.x, var_1.a.x, 1638u))), max(var_1.a, ~select(vec3<u32>(u_input.c.x, 1u, 8969u), vec3<u32>(0u, 0u, 1u), false))));
    global0 = arg_3 || all(vec4<bool>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.a.x)) != ~(-1415i), false, false, arg_3));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_1, arg_1, arg_2), vec4<f32>(-2636f, 2351f, arg_2, -276f)))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_1), _wgslsmith_f_op_f32(-arg_0), arg_2, _wgslsmith_f_op_f32(arg_2 + -222f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-405f, -230f, 913f, -752f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1, -471f, -112f) + vec4<f32>(-764f, arg_2, -425f, arg_0))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -422f, arg_2))), select(vec4<bool>(false, arg_3, var_0, any(vec2<bool>(true, false))), vec4<bool>(true, -544f != arg_2, true, all(vec4<bool>(var_0, var_0, var_0, arg_3))), select(!vec4<bool>(true, false, arg_3, false), !vec4<bool>(var_0, var_0, false, true), select(vec4<bool>(arg_3, var_0, false, arg_3), vec4<bool>(false, arg_3, arg_3, arg_3), arg_3))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - 1349f) + -120f), -551f, 295f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(103f, _wgslsmith_f_op_f32(arg_0 + -1095f), -1037f, -236f), vec4<f32>(_wgslsmith_f_op_f32(954f - arg_2), _wgslsmith_f_op_f32(-arg_2), 1513f, arg_0)))), all(select(!(!vec3<bool>(arg_3, var_0, true)), vec3<bool>(var_0, arg_3, true || var_0), any(!vec2<bool>(arg_3, false))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1285f, -276f, -100f) * vec4<f32>(-1336f, -855f, 1000f, 1415f)) + _wgslsmith_f_op_vec4_f32(func_3(-295f, -260f, -1312f, false))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-681f + 1692f), _wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-405f * -1022f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-472f, -1000f) + -366f), _wgslsmith_f_op_f32(floor(-920f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 365f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -2131f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-440f, _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(floor(-1054f)), _wgslsmith_f_op_f32(min(-277f, -1103f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1341f, -1580f, 392f, -977f)))))));
    let var_1 = (u_input.a.x ^ max(-_wgslsmith_sub_i32(-1i, 2147483647i), min(firstLeadingBit(u_input.a.x), u_input.a.x))) << (~(~min(20302u, 1u)) % 32u);
    global0 = !(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = false;
    var var_2 = u_input.e;
    return !all(vec4<bool>(false, false, false, false));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = true;
    var var_0 = u_input.a;
    global0 = false;
    var var_1 = true & all(select(vec3<bool>(true, select(false, true, false), true), !vec3<bool>(arg_0, true, true), func_2()));
    return vec4<bool>(any(select(vec3<bool>(false, true, all(vec4<bool>(arg_0, true, arg_0, true))), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0), false), select(!vec3<bool>(arg_0, true, arg_0), select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, false)), true))), true, arg_0, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(sign(-777f)) == _wgslsmith_f_op_f32(ceil(1010f))), true, all(func_1(any(vec2<bool>(true, false)))));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-835f * -2336f))), _wgslsmith_div_f32(-891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -523f, _wgslsmith_f_op_vec4_f32(func_3(-483f, var_2.x, 566f, true)).x, _wgslsmith_f_op_f32(abs(-713f)))))), abs(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-5392i, 34925i), vec2<i32>(1i, -18555i)), vec2<i32>(u_input.b.x, 1i)) | firstLeadingBit(-vec2<i32>(u_input.b.x, -57968i))), true, u_input.a ^ _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.a.x, u_input.a.x, -11863i, 10523i)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(-35550i, u_input.a.x, u_input.b.x, 2147483647i), vec4<i32>(-40056i, -5110i, u_input.b.x, u_input.b.x)), countOneBits(u_input.a))), -724f);
    let var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x + var_3.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.x + 1f));
}

