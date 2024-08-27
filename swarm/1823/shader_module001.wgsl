struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> i32 {
    let var_0 = select(select(vec2<bool>(false, true), vec2<bool>(arg_0.b, (arg_0.c | arg_0.c) && true), vec2<bool>(all(vec2<bool>(true, arg_0.b)), any(!vec4<bool>(arg_0.b, false, false, false)))), select(select(!(!vec2<bool>(false, arg_0.b)), vec2<bool>(all(vec3<bool>(false, arg_0.b, true)), !arg_0.c), select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, true), vec2<bool>(arg_0.c, arg_0.c)), vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.c, true))), !vec2<bool>(true, arg_0.c), true), select(!(!select(vec2<bool>(false, false), vec2<bool>(arg_0.c, arg_0.c), arg_0.c)), select(select(!vec2<bool>(arg_0.b, false), select(vec2<bool>(arg_0.b, arg_0.c), vec2<bool>(true, false), vec2<bool>(arg_0.c, false)), !vec2<bool>(arg_0.c, arg_0.b)), vec2<bool>(!arg_0.b, all(vec2<bool>(false, arg_0.b))), vec2<bool>(!arg_0.c, 4294967295u <= arg_1.x)), !(!arg_0.b)));
    let var_1 = arg_0.e;
    let var_2 = arg_0.d << (arg_0.d % vec4<u32>(32u));
    let var_3 = countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(var_2), arg_0.d), ~(~var_2.x), 16711u, _wgslsmith_dot_vec3_u32(~(~arg_0.d.yyx), vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.wyz, vec3<u32>(arg_0.d.x, arg_1.x, var_2.x)), 1u, 0u))));
    let var_4 = Struct_1(select(vec3<bool>(arg_0.a.x < arg_0.a.x, true, _wgslsmith_clamp_i32(-13865i, 35141i, 2147483647i) >= -arg_0.a.x), select(!select(vec3<bool>(arg_0.c, var_0.x, var_0.x), vec3<bool>(false, false, false), arg_0.c), !select(vec3<bool>(arg_0.c, true, arg_0.c), vec3<bool>(var_0.x, true, true), var_0.x), !(!vec3<bool>(false, var_0.x, var_0.x))), select(vec3<bool>(any(var_0), arg_0.b, any(var_0)), !vec3<bool>(var_0.x, arg_0.b, false), !vec3<bool>(arg_0.b, false, var_0.x))), var_2.x, firstLeadingBit(var_3.x), reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c.x, -43938i, u_input.c.x, arg_0.a.x), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-57922i, 2147483647i, 41813i, arg_0.a.x), vec4<i32>(1i, u_input.c.x, arg_0.a.x, 16512i))))), !vec3<bool>((false && var_0.x) | false, true, _wgslsmith_sub_i32(-1i, arg_0.a.x) >= arg_0.a.x));
    return _wgslsmith_sub_i32(-u_input.c.x, select(-_wgslsmith_div_i32(-10818i, 1i), 1i, all(vec4<bool>(!var_0.x, var_4.c != var_3.x, 0i != var_4.d.x, false && arg_0.b))));
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -_wgslsmith_mult_i32(abs(func_3(Struct_4(vec3<i32>(arg_0, arg_0, arg_0), true, true, vec4<u32>(0u, 0u, u_input.b, u_input.b), 269f), select(vec2<u32>(u_input.b, 108914u), vec2<u32>(48892u, 91217u), vec2<bool>(false, false)))), max(arg_0, -firstTrailingBit(arg_0)));
    let var_1 = select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec3<bool>(false, false, false))), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), !any(vec4<bool>(false, true, false, true)) | true), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)) & select(any(vec3<bool>(true, true, false)) & true, _wgslsmith_f_op_f32(f32(-1f) * -1561f) == _wgslsmith_f_op_f32(sign(-1912f)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    let var_2 = Struct_1(select(vec3<bool>(false & !var_1.x, _wgslsmith_f_op_f32(round(358f)) == _wgslsmith_f_op_f32(-285f + 448f), var_1.x), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), any(vec3<bool>(var_1.x, false, false))), vec3<bool>(true, var_0 <= arg_0, var_1.x), true), !vec3<bool>(true, !var_1.x, true)), 63332u, u_input.a, _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(0i, arg_0, arg_0, var_0)), vec4<i32>(firstLeadingBit(u_input.c.x), min(-var_0, -2147483647i), -_wgslsmith_div_i32(arg_0, -21202i), firstTrailingBit(12517i)), _wgslsmith_mult_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, arg_0, u_input.c.x), vec4<i32>(var_0, 0i, arg_0, arg_0)), ~vec4<i32>(u_input.c.x, -1i, 0i, u_input.c.x), !var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -46595i, arg_0, 0i), vec4<i32>(9403i, -2147483647i, arg_0, arg_0)))), !vec3<bool>(true, true, !(!var_1.x)));
    var var_3 = Struct_4(var_2.d.wyx, select(all(select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, var_2.e.x, var_2.a.x), vec3<bool>(true, true, var_1.x)), vec3<bool>(false, var_2.e.x, var_1.x), var_2.e)), var_2.e.x, false), all(vec4<bool>(true, var_1.x, u_input.c.x <= u_input.c.x, var_2.a.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, var_2.b, var_2.b, 4294967295u)), ~(vec4<u32>(u_input.b, 922u, u_input.a, 58154u) >> (vec4<u32>(var_2.c, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)))), ~select(~vec4<u32>(var_2.b, var_2.b, var_2.c, 1u), vec4<u32>(u_input.a, 0u, 1u, 4294967295u) << (vec4<u32>(var_2.c, var_2.b, var_2.b, 5238u) % vec4<u32>(32u)), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), 105f);
    var var_4 = any(vec2<bool>(var_1.x, true));
    return _wgslsmith_f_op_f32(floor(-1887f));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = true;
    let var_1 = arg_1.a;
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1000f, var_1.x, 1677f), vec4<f32>(var_2.a.x, -809f, 1891f, 132f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_1.a.x, var_2.a.x, arg_1.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(445f, 251f)) - _wgslsmith_f_op_f32(func_2(u_input.c.x))), _wgslsmith_f_op_f32(-var_2.a.x), -2220f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-767f, var_2.a.x, arg_1.a.x, 1000f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1238f)) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_f_op_f32(arg_1.a.x * var_1.x)), arg_1.a.x)));
    var var_4 = var_2.b;
    return vec2<i32>(-2147483647i, firstLeadingBit(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (firstTrailingBit(abs(func_1(vec3<i32>(0i, u_input.c.x, u_input.c.x), Struct_2(vec3<f32>(-1318f, -326f, 1115f), 4294967295u)))) ^ max(min(u_input.c, u_input.c), vec2<i32>(-1i, 1i))) >> (~(~abs(firstTrailingBit(vec2<u32>(u_input.b, 51988u)))) % vec2<u32>(32u));
    let var_1 = Struct_5(min(49405u, min(1u >> (min(u_input.a, 4294967295u) % 32u), select(~u_input.b, _wgslsmith_add_u32(0u, u_input.b), true))), Struct_4(vec3<i32>(countOneBits(u_input.c.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), var_0), firstLeadingBit(0i), u_input.c.x), !(true | all(vec4<bool>(true, false, true, true))), min(-15880i, u_input.c.x) > _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, 23103i), vec3<i32>(-1i, 2147483647i, 1i))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(u_input.b, 2488u), 1u, u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(1u, 3586u, u_input.b, 25283u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1444f + -616f) + _wgslsmith_f_op_f32(f32(-1f) * -1105f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(553f))))), ~(-2147483647i));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_1.b.e - -331f), _wgslsmith_f_op_f32(686f - _wgslsmith_f_op_f32(trunc(var_1.b.e))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1603f, _wgslsmith_f_op_f32(f32(-1f) * -1749f), -259f, -1460f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1595f, var_1.b.e, 414f, var_1.b.e), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1362f, var_2.x)), _wgslsmith_div_f32(-418f, 1064f), var_2.x, var_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.b.e, 238f, 1476f) + vec4<f32>(787f, var_1.b.e, var_1.b.e, 1273f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, -201f, var_2.x, -105f))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.e, 1108f, var_1.b.e, -476f) - vec4<f32>(var_1.b.e, var_1.b.e, var_1.b.e, 446f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(min(var_3.yx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.xw, vec2<f32>(var_2.x, 130f), var_1.b.c)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(501f, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.e, var_3.x) - var_3.xy) + var_3.xw))) + vec2<f32>(var_3.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(~abs(vec4<u32>(u_input.a, u_input.a, 24838u, 32470u)), vec4<u32>(abs(~12800u), u_input.b, ~1986u, 4294967295u), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.b.b, var_1.b.b, true, var_1.b.b), true))), _wgslsmith_add_vec2_i32(u_input.c, ~(-u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.e * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-307f)), _wgslsmith_f_op_f32(1815f * 1000f))) * var_3.x)), var_2.x);
}

