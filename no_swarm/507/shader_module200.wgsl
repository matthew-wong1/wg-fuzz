struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = -1008f;
    var var_1 = Struct_1(max(vec2<i32>(~1i, _wgslsmith_mod_i32(42704i >> (arg_0 % 32u), ~16530i)), vec2<i32>(1i, 1i)), -455f);
    var var_2 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, -25828i), -vec2<i32>(var_1.a.x, 2147483647i)) & firstLeadingBit(~vec2<i32>(var_1.a.x, 7006i)), vec2<i32>(-var_1.a.x, _wgslsmith_add_i32(4409i, _wgslsmith_mult_i32(-23434i, var_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) * _wgslsmith_f_op_f32(-var_2.b)), -2328f, 199f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1091f, 943f, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(880f, 1392f, -691f, var_1.b) * vec4<f32>(-266f, var_1.b, var_1.b, 1118f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(234f, -126f, var_2.b, -869f) + vec4<f32>(-155f, var_0, var_0, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.b, var_1.b, 763f) + vec4<f32>(var_2.b, 2330f, var_0, -419f))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * var_2.b), var_0, -546f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 966f, 1000f, 401f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -1169f, 652f, var_1.b)))))));
    var var_4 = false;
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec4_u32(abs(u_input.a), u_input.a);
    var_0 = vec4<u32>(~func_3(~0u >> (arg_0 % 32u)), 20908u, ~var_0.x, firstTrailingBit(70865u));
    let var_1 = Struct_1(vec2<i32>(-(10478i << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 35121u, 4294967295u, 4294967295u), vec4<u32>(0u, arg_0, 62115u, arg_0)) % 32u)), ~countOneBits(1i)), _wgslsmith_f_op_f32(f32(-1f) * -142f));
    var var_2 = -1098f;
    var var_3 = false;
    return ~select(u_input.a.wxx, ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 27175u, u_input.a.x), vec3<u32>(var_0.x, 1u, 4294967295u))), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(abs(2147483647i), -1i), vec2<i32>(abs(select(arg_2.a.x, -19127i, true)), arg_2.a.x)), _wgslsmith_f_op_f32(arg_0.b + arg_3.b));
    var var_1 = Struct_1(arg_3.a, _wgslsmith_f_op_f32(-var_0.b));
    var_1 = arg_3;
    var_0 = Struct_1(var_1.a, 812f);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1809f, arg_0.b) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, 1407f)))))));
    return Struct_1(var_1.a, -154f);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = func_4(arg_0, _wgslsmith_mod_vec3_u32(func_2(_wgslsmith_div_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) - _wgslsmith_f_op_f32(-arg_1))), select(vec3<u32>(~u_input.a.x, ~0u, 1u), vec3<u32>(u_input.a.x, 37556u, select(u_input.a.x, 1u, arg_2)), !select(vec3<bool>(arg_2, true, false), vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, false, arg_2)))), arg_0, Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))), arg_0.b, arg_2))));
    let var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(func_4(Struct_1(var_1.a, 368f), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(14703u, 12469u, u_input.a.x)), var_1, func_4(Struct_1(vec2<i32>(0i, var_0.a.x), -470f), u_input.a.yyy, Struct_1(var_1.a, 2435f), var_1)).a, var_1.a), select(vec2<i32>(firstLeadingBit(1i), ~var_1.a.x), arg_0.a, vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(round(-1291f))), _wgslsmith_f_op_f32(round(var_0.b)), !(383f > var_0.b)))), _wgslsmith_f_op_f32(-arg_0.b)));
    let var_3 = 0u;
    return _wgslsmith_f_op_f32(-var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~57953u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<i32>(2147483647i, 1i), 455f), -1094f, true)), _wgslsmith_f_op_f32(-1263f - 988f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(469f + 1495f))))), _wgslsmith_f_op_f32(floor(-1205f)))), -365f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.x) * vec2<f32>(-818f, -1097f)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))) + vec2<f32>(681f, 1435f)) + vec2<f32>(var_1.x, 1000f)));
    var var_2 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.x <= -755f, any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, true)), vec3<bool>(true, select(select(true, true, false), any(vec2<bool>(true, false)), all(vec2<bool>(true, true))), all(vec4<bool>(false, true, false, false)) & true), false));
    var var_3 = true;
    var var_4 = 1u;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 540f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 1054f, var_1.x, 289f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(867f, 1032f, 119f, -623f) - vec4<f32>(-1301f, -1000f, 1855f, -415f))))))));
    var var_6 = Struct_1(~vec2<i32>(12642i, -69528i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-271f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(sign(-1612f)))), u_input.a.xzy);
}

