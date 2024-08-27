struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = vec3<f32>(arg_0, 782f, arg_0);
    global1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(1i, u_input.d.x) << (u_input.b % 32u)), -35737i), 60794i);
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.wz, u_input.d.xy), -vec2<i32>(-select(u_input.d.x, 10410i, false), -2147483647i));
    var var_1 = Struct_1(1i, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_1.x, 85798u), countOneBits(vec4<u32>(arg_1.x, arg_1.x, u_input.c, 1u))), ~(~vec4<u32>(arg_1.x, 18799u, u_input.b, arg_1.x))) > ~firstLeadingBit(_wgslsmith_clamp_u32(arg_1.x, 1u, 42822u)), !(!any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(177f, _wgslsmith_f_op_f32(arg_0 + -930f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.yx)), _wgslsmith_f_op_vec2_f32(var_0.xz * vec2<f32>(-862f, var_0.x))))))), reverseBits(abs(_wgslsmith_sub_u32(0u, arg_1.x) << (_wgslsmith_sub_u32(1664u, arg_1.x) % 32u))));
    global0 = !select(var_1.c, _wgslsmith_f_op_f32(select(arg_0, var_0.x, true)) < -1091f, var_1.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -229f);
}

fn func_3(arg_0: f32, arg_1: u32) -> Struct_2 {
    global1 = countOneBits(0i);
    let var_0 = select(vec2<i32>(25350i, min(~max(u_input.a.x, -23976i), _wgslsmith_mult_i32(u_input.d.x, 27627i) & (u_input.a.x ^ 1i))), _wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.a.x, -10833i) >> (u_input.e % vec2<u32>(32u))), u_input.d.wy), vec2<bool>(true, true));
    global1 = -2322i;
    let var_1 = true;
    global1 = ~min(-(~u_input.d.x), u_input.a.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2174f, arg_0, 447f, -722f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -533f, arg_0) + vec4<f32>(arg_0, 401f, arg_0, arg_0))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1216f, 608f)), _wgslsmith_f_op_f32(ceil(-1110f)), arg_0, arg_0))), select(vec4<bool>(var_1, false, false, !all(vec2<bool>(var_1, true))), vec4<bool>(u_input.e.x > u_input.c, var_1, true, any(vec3<bool>(true, var_1, false))), !(!select(vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(false, true, false, var_1)))), Struct_1(var_0.x, true, false, vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -170f), ~vec2<u32>(64375u, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_0))), 0u));
}

fn func_1() -> Struct_2 {
    global0 = !(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(35584u, 87622u, u_input.c, u_input.e.x)), ~(vec4<u32>(u_input.b, 1u, u_input.e.x, u_input.b) | vec4<u32>(4294967295u, u_input.e.x, 4294967295u, u_input.b))) >= ~u_input.e.x);
    let var_0 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f * -518f) + 2137f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-940f, vec2<u32>(0u, 129679u))), -832f))), 23135u);
    var var_1 = var_0.b.wyw;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = arg_0.c;
    let var_1 = Struct_1(abs(32090i), true, !var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * -883f) + _wgslsmith_f_op_f32(arg_2.x - arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)))), var_0.e);
    let var_2 = func_1().c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + -1268f));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_2), _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(160f, var_2.d.x, var_0.d.x, -757f))))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.a), arg_0.a, var_0.c)) + vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.d.x)), _wgslsmith_div_f32(-884f, var_0.d.x), -1000f, arg_0.c.d.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_2)) + _wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_0.a, false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(arg_0.a, vec4<f32>(638f, arg_2.x, var_0.d.x, var_2.d.x))))))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_3))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.x;
    var var_0 = -vec3<i32>(_wgslsmith_sub_i32(min(9097i, 0i), u_input.d.x), u_input.d.x, firstLeadingBit(u_input.a.x));
    global1 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(func_4(func_1(), -vec4<i32>(var_0.x, 35846i, -1i, var_0.x) | -vec4<i32>(-2147483647i, 1i, u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1192f, 1086f, 398f, 522f) + vec4<f32>(-1000f, 812f, -659f, 1267f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, 533f, -1400f, -1008f) + vec4<f32>(-266f, -1058f, -174f, -1327f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * 141f)))), -320f, -1475f) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * _wgslsmith_f_op_f32(abs(1000f)))), -396f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(2053f * -222f), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.e.x, 40820u), false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-992f, -2083f)), _wgslsmith_f_op_f32(min(-291f, 2014f))))), -1308f));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1943f - 941f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1048f + 1742f), u_input.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x);
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, 1208f, var_1.x, var_2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -143f, var_2.x, var_1.x), vec4<f32>(-276f, var_1.x, var_1.x, -549f))))), !vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !(u_input.a.x >= 3743i), !(var_1.x <= var_1.x)), func_1().c);
    let var_4 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(-899f, countOneBits(u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) + func_1().a.x)), var_3.a), func_3(var_3.c.d.x, 4294967295u).b, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-24670i, u_input.a.x, ~3927i), _wgslsmith_dot_vec4_i32(u_input.d, u_input.a), var_3.a.x, var_0.x, var_4.c.a);
}

