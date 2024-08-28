struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    global0 = abs(~firstTrailingBit(_wgslsmith_mod_i32(-37840i, -57000i)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2278f, 1400f) + vec2<f32>(508f, -393f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(433f, -1772f)) * vec2<f32>(-632f, -2155f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(1104f - -178f))), select(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), false)))));
    var var_1 = u_input.a.x ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(29962u, 4294967295u, u_input.a.x, 69179u) >> (max(vec4<u32>(39541u, 43095u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 41744u, 80904u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(u_input.a.x | 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(70814u, u_input.a.x), u_input.a), countOneBits(0u), 1u)) & u_input.a.x);
    var_1 = ~1u;
    let var_2 = Struct_4(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(false, false), true), var_0.x, 18086i, var_0.x);
    return reverseBits(~u_input.a.x & reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, u_input.a.x), u_input.a.x)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_3 {
    let var_0 = ~vec2<u32>(~arg_1, arg_1);
    let var_1 = vec4<u32>(~countOneBits(func_3()), ~arg_1, reverseBits(14259u), _wgslsmith_sub_u32(firstTrailingBit(~12683u), u_input.a.x));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(22569i, 10049i, -41285i, -10521i), vec4<i32>(-9306i, 14266i, 2147483647i, 23770i)) >> (var_0.x % 32u), -2147483647i, -1i), 1i, -2147483647i);
    global0 = ~(-2147483647i);
    let var_2 = 86979u;
    return Struct_3(Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(47222i, 42574i), firstTrailingBit(vec2<i32>(-1i, 2147483647i))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1278f)), 567f))), Struct_1(!select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, true, arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, -767f, arg_0))), ~var_1 | ~var_1, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), false), all(vec3<bool>(arg_2, arg_2, arg_2))))), abs(~vec3<i32>(-103309i >> (u_input.a.x % 32u), 4127i, 50498i)), Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i) << (reverseBits(u_input.a) % vec2<u32>(32u)), select(vec2<i32>(0i, 35289i), _wgslsmith_add_vec2_i32(vec2<i32>(12612i, 33183i), vec2<i32>(1i, -1i)), select(vec2<bool>(true, false), vec2<bool>(arg_2, false), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(max(arg_0, 310f)), Struct_1(!(!vec3<bool>(true, arg_2, arg_2)), vec3<f32>(616f, 629f, 782f), vec4<u32>(var_1.x | 1u, arg_1 ^ 4294967295u, _wgslsmith_mod_u32(var_0.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_2, u_input.a.x, u_input.a.x), var_1)), vec2<bool>(false, !arg_2))), Struct_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(-32195i, -43509i), vec2<i32>(74236i, -1941i)), arg_0, Struct_1(vec3<bool>(false, false || arg_2, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_0, 1022f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -1211f, arg_0)))), vec4<u32>(~1162u, ~1u, countOneBits(10041u), var_1.x), select(select(vec2<bool>(true, false), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false)), !vec2<bool>(arg_2, false), select(vec2<bool>(false, false), vec2<bool>(arg_2, false), true)))), Struct_2(vec2<i32>(_wgslsmith_sub_i32(-19790i, -1i), -abs(-1i)), arg_0, Struct_1(!select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(390f, -571f, 1034f) * vec3<f32>(-256f, -1988f, -168f)), vec3<f32>(315f, 280f, arg_0))), var_1, vec2<bool>(true, !arg_2))));
}

fn func_1() -> vec2<f32> {
    let var_0 = countOneBits(-19141i);
    let var_1 = func_2(736f, ~36406u, !(!(any(vec4<bool>(false, false, true, false)) | true)));
    global0 = _wgslsmith_dot_vec2_i32(~min(-vec2<i32>(0i, -32525i), max(var_1.d.a, var_1.b.yy)), max(_wgslsmith_div_vec2_i32(select(var_1.d.a, vec2<i32>(var_1.a.a.x, -27659i), var_1.c.c.d.x), vec2<i32>(1i, 1i)) | var_1.b.xx, vec2<i32>(abs(_wgslsmith_mod_i32(-2147483647i, var_1.a.a.x)), var_1.a.a.x)));
    global0 = -20254i;
    var var_2 = select(var_1.c.c.a.yy, vec2<bool>(all(!var_1.e.c.d), !(!(!var_1.c.c.d.x))), !var_1.d.c.d);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d.c.b.yx)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(541f, -926f))))) * _wgslsmith_f_op_vec2_f32(exp2(var_1.c.c.b.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), u_input.a.x, firstTrailingBit(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 18249u), vec3<u32>(u_input.a.x, 49324u, 1822u)), vec3<u32>(_wgslsmith_add_u32(1u, 83944u), u_input.a.x, u_input.a.x ^ u_input.a.x))), func_2(_wgslsmith_div_f32(-420f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -2040f)))), 0u, true).d.c.b.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2166f), 1199f));
}

