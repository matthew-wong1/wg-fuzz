struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(166f));
    var_0 = arg_0.b.a;
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), var_1.b.a) * 478f) + arg_0.b.b);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1969f, 849f), _wgslsmith_div_f32(-357f, arg_1))), arg_0.b.c), var_1.b.c.x, vec3<u32>(_wgslsmith_clamp_u32(1u & arg_0.a, 0u, 4294967295u), firstTrailingBit(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(var_1.a, arg_0.a)))), var_1.a), true);
    return true;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    var var_0 = Struct_2(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 7511u, 32693u), vec3<u32>(1u, 58353u, 76871u)), ~_wgslsmith_mult_u32(1u, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f * 2391f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f), -482f))));
    let var_1 = Struct_2(~(var_0.a ^ select(7408u, 1u, arg_1)), var_0.b);
    var_0 = Struct_2(var_0.a | 1u, var_0.b);
    var var_2 = abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4064u, _wgslsmith_dot_vec4_u32(vec4<u32>(103189u, 0u, 58068u, 65092u), vec4<u32>(var_1.a, var_1.a, 5519u, 1u))), countOneBits(~vec2<u32>(4294967295u, var_0.a))), 24215u, 16916u));
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.a - -1329f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.c.x, 966f)) * -375f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-348f, var_1.b.a)), _wgslsmith_f_op_f32(var_1.b.b * var_0.b.c.x), arg_1)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-339f * -533f) + _wgslsmith_f_op_f32(f32(-1f) * -1168f)))))), (~(~vec3<u32>(70264u, var_1.a, var_1.a)) << (min(vec3<u32>(55132u, var_1.a, 1u), ~vec3<u32>(0u, var_1.a, 61760u)) % vec3<u32>(32u))) >> (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u)), arg_1);
    return var_3.a.c.x;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(146f, -1098f, -911f, _wgslsmith_f_op_f32(func_4(-vec2<i32>(14084i, -6453i) & u_input.b.zy, func_3(Struct_2(59775u, Struct_1(-724f, 712f, vec2<f32>(871f, 151f))), 753f)))));
    var var_1 = Struct_2(min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(31416u, 33359u, 75823u, 44889u), vec4<u32>(90732u, 34008u, 94043u, 1u))), vec2<u32>(~7440u, _wgslsmith_add_u32(37761u, 24800u)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-531f)) - _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.b.zy, true)) - var_0.x))), _wgslsmith_f_op_f32(sign(373f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-504f, var_0.x) - vec2<f32>(var_0.x, var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = 0u;
    var var_3 = var_0.yxy;
    var var_4 = Struct_2(var_1.a, var_1.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(-_wgslsmith_sub_vec2_i32(max(u_input.b.yx, vec2<i32>(-46066i, 10576i)), vec2<i32>(-1i, u_input.a)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -225f)), 293f));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(635f, -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(597f + -394f))), _wgslsmith_f_op_f32(select(-1717f, -144f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -930f) + -1548f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1353f, 405f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -107f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(220f, 847f) - vec2<f32>(-1064f, -991f))))))));
    var var_1 = Struct_1(-879f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.c))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.b.zy, false)) + _wgslsmith_f_op_f32(-var_1.a))), var_0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a + 426f), _wgslsmith_f_op_f32(floor(117f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) - _wgslsmith_f_op_vec2_f32(exp2(var_0.c)))) - var_0.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), var_2.c.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1497f * _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-var_0.c.x)))), -1071f, _wgslsmith_f_op_vec2_f32(min(var_0.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(var_2.b * var_1.b), -1362f), vec2<f32>(_wgslsmith_div_f32(var_1.b, 1904f), _wgslsmith_f_op_f32(var_2.b + 198f)))))));
    return min(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, -1i, u_input.b.x)), u_input.b) >> (48921u % 32u), reverseBits(12617i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(1u, abs(firstTrailingBit(37673u)));
    let var_1 = _wgslsmith_mult_i32(5805i, min(func_1(0u) >> (var_0 % 32u), u_input.b.x << (var_0 % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 820f) + 1000f) * _wgslsmith_f_op_f32(func_4(vec2<i32>(i32(-1i) * -11830i, var_1), false))));
    let var_3 = !all(vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true)) & (var_2 >= -697f)));
    let var_4 = _wgslsmith_mult_vec2_u32(~countOneBits(~(vec2<u32>(0u, var_0) ^ vec2<u32>(var_0, var_0))), ~abs((vec2<u32>(1u, var_0) & vec2<u32>(var_0, 96402u)) ^ firstLeadingBit(vec2<u32>(var_0, 4889u))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 22662u, abs(_wgslsmith_mult_vec2_u32(var_4, select(~var_4, ~vec2<u32>(var_4.x, var_0), any(vec3<bool>(var_3, false, var_3))))), -2147483647i);
}

