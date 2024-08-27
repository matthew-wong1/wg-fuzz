struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = arg_0;
    let var_1 = countOneBits(~vec2<u32>(1u, u_input.d) >> (_wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.d, u_input.e), vec2<u32>(u_input.d, u_input.c)), vec2<u32>(u_input.c, u_input.d)) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_u32(vec2<u32>(~41776u ^ ~u_input.d, _wgslsmith_mult_u32(45550u, 0u) | u_input.c), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.e, 0u)), ~vec2<u32>(u_input.e, 15440u)) >> (~(vec2<u32>(u_input.e, u_input.d) | vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)));
    let var_2 = vec4<i32>(arg_1, arg_1, arg_1, 2147483647i);
    let var_3 = u_input.e;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(round(-1004f)), _wgslsmith_f_op_f32(f32(-1f) * -411f), -228f, _wgslsmith_f_op_f32(f32(-1f) * -1546f));
    return Struct_4(Struct_2(Struct_1(vec3<i32>(27339i, arg_1, arg_1)), arg_2));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(-640f, 483f, arg_1.b));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1651f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(171f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * -140f)), 1000f)))));
    let var_1 = max(arg_0, _wgslsmith_mult_u32(reverseBits(arg_0), arg_0));
    return vec3<bool>(arg_1.b, false, false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = func_1(arg_1.b | any(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, arg_1.b, true)), !vec3<bool>(arg_1.b, arg_1.b, arg_1.b), func_3(1u, Struct_2(arg_1.a, true)))), u_input.b, any(select(!vec4<bool>(arg_1.b, arg_1.b, true, false), !vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), false)) & arg_1.b).a.a;
    let var_1 = Struct_3(arg_1.b, -2147483647i >> ((u_input.d << (u_input.e % 32u)) % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1559f * _wgslsmith_f_op_f32(-496f + 270f))), -1169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1085f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(356f, -2080f, arg_1.b)), 806f, any(vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b)))) - -397f)), arg_1.a, 66756u);
    return _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, reverseBits(29804i), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))) * 232f);
    var_1 = _wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -437f, !var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(904f * -1000f))))));
    let var_2 = var_0.a;
    let var_3 = Struct_3(false, abs(-u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-648f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1404f)), -2865f, func_1(var_2.b, var_0.a.a.a.x, var_0.a.b).a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-413f * _wgslsmith_f_op_f32(floor(-522f))), -1471f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) * _wgslsmith_f_op_f32(-217f - -1176f))), _wgslsmith_f_op_f32(func_2(var_0.a.a, var_0.a))), var_2.a, 78788u);
    var_1 = var_3.c.x;
    var var_4 = Struct_2(var_3.d, var_2.b);
    let var_5 = func_1(var_3.c.x >= var_3.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, 41293i, var_3.d.a.x, 2147483647i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.e, 657u, 38681u), vec4<u32>(u_input.e, u_input.e, u_input.d, u_input.c), vec4<u32>(u_input.c, u_input.c, 3123u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(u_input.b, _wgslsmith_mod_i32(var_2.a.a.x, -2147483647i), ~var_0.a.a.a.x, 40037i)) ^ var_3.d.a.x, true).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.c + _wgslsmith_f_op_vec4_f32(select(var_3.c, vec4<f32>(var_3.c.x, -1883f, -948f, 1328f), var_3.a))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c.x, var_3.c.x, var_3.c.x, var_3.c.x) - _wgslsmith_f_op_vec4_f32(var_3.c * vec4<f32>(var_3.c.x, -1122f, var_3.c.x, var_3.c.x)))), vec4<f32>(1310f, -144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.c.zzy, _wgslsmith_f_op_vec3_f32(var_3.c.yyw * vec3<f32>(var_3.c.x, -910f, 520f)))))), 854f);
}

