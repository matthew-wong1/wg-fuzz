struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = reverseBits(firstTrailingBit(vec3<u32>(~4294967295u, _wgslsmith_div_u32(0u, 22435u), _wgslsmith_dot_vec3_u32(arg_2.b.wxy, vec3<u32>(4294967295u, u_input.c, 13964u)))) >> (min(abs(vec3<u32>(0u, u_input.b.x, 48134u)), vec3<u32>(arg_2.b.x, arg_2.b.x, select(u_input.b.x, arg_3.c, arg_3.b))) % vec3<u32>(32u)));
    var_0 = ~_wgslsmith_mod_vec3_u32(u_input.b.wzw, arg_2.b.xwy);
    var_0 = arg_2.b.ywx | abs(vec3<u32>(arg_3.c, firstTrailingBit(arg_2.b.x) << (arg_2.c.c % 32u), _wgslsmith_add_u32(36866u, 1u)));
    var_0 = ~max(arg_2.b.wwz, u_input.b.wwy);
    var_0 = arg_2.b.xxy;
    return u_input.a | -vec2<i32>(1i, 1i);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> f32 {
    var var_0 = -_wgslsmith_add_i32(_wgslsmith_div_i32(-54307i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.a.x), 1i)), -_wgslsmith_mult_i32(abs(arg_1.x), ~(-1i)));
    var_0 = 2147483647i;
    let var_1 = true;
    var var_2 = vec3<u32>(arg_0.x, _wgslsmith_clamp_u32(90461u, ~(~(u_input.b.x & arg_0.x)), u_input.c), firstTrailingBit(~firstTrailingBit(_wgslsmith_mod_u32(arg_0.x, 55655u))));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f + 174f)) + 968f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = ~vec3<i32>(min(-1i, -1i) >> (u_input.c % 32u), ~_wgslsmith_add_i32(_wgslsmith_add_i32(1i, u_input.a.x), 2147483647i), _wgslsmith_sub_i32(26040i & _wgslsmith_div_i32(43214i, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 886f) + _wgslsmith_div_f32(arg_1.x, arg_1.x)) * arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f + 934f)), arg_1.x, 861f);
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_mod_vec2_i32(func_3(vec4<i32>(u_input.a.x, 1i, u_input.a.x, var_0.x), arg_1.x, Struct_3(vec4<f32>(-452f, var_1.x, 369f, 286f), u_input.b, Struct_1(var_1.x, true, 0u, vec3<f32>(arg_1.x, var_1.x, 476f))), Struct_1(arg_1.x, true, arg_0.x, vec3<f32>(-932f, 746f, -1256f))), var_0.yz >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1479f))))));
    return arg_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-1074f, 1038f)), _wgslsmith_f_op_f32(1328f - -344f), 2028f)))), -1025f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(vec3<u32>(arg_0.x, 22230u, 0u), u_input.a))))))));
    let var_2 = countOneBits(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), ~arg_0.x) >> ((4294967295u ^ _wgslsmith_mod_u32(25195u, arg_0.x)) % 32u)) ^ _wgslsmith_div_u32(u_input.b.x, countOneBits(firstLeadingBit(u_input.c)));
    let var_3 = Struct_1(var_1, true, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-334f, var_1, -794f), vec3<f32>(var_0.x, var_1, -882f))))) - vec3<f32>(var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1, -349f)))), var_0.x)));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    var var_0 = max(vec4<i32>(i32(-1i) * -32253i, 1i, -(i32(-1i) * -4870i), select(-(~u_input.a.x), u_input.a.x, arg_0)), _wgslsmith_sub_vec4_i32(firstLeadingBit(max(-vec4<i32>(5145i, u_input.a.x, -12880i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -18994i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-3326i, 22178i, u_input.a.x, u_input.a.x)))), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, select(u_input.a.x, 2147483647i, true) << ((u_input.c >> (0u % 32u)) % 32u))));
    var_0 = vec4<i32>(min(72578i, var_0.x), ~(0i >> (0u % 32u)), var_0.x, _wgslsmith_mod_i32(-5972i, 71405i));
    var var_1 = Struct_2(Struct_1(215f, any(select(select(vec3<bool>(true, false, arg_1.x), arg_1.wxy, true), select(arg_1.wyz, arg_1.xyy, vec3<bool>(false, arg_1.x, arg_1.x)), vec3<bool>(true, true, arg_0))), _wgslsmith_dot_vec3_u32(u_input.b.yyw, vec3<u32>(u_input.c, 39431u, 4294967295u)) ^ u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-921f, -291f, 501f) - vec3<f32>(1160f, -471f, 623f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(675f))), any(select(vec4<bool>(arg_0, true, false, arg_0), select(arg_1, arg_1, true), !arg_1)), ~max(u_input.b.x | 33973u, ~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1792f, -1095f, 294f))))), arg_0, !(arg_0 && (arg_1.x || arg_1.x)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(-1696f - 530f), false)), -552f), any(arg_1.wwx), ~countOneBits(u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-470f, -335f, -1249f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(221f, 1244f, 183f) - vec3<f32>(589f, -505f, -255f)), true)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))))));
    var var_2 = _wgslsmith_mod_i32(~(-u_input.a.x), -2147483647i);
    var var_3 = !arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))));
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_3.zww, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -146f, arg_0) - vec3<f32>(-281f, 1010f, 353f)))) + -359f), arg_1.x, ~(1u | countOneBits(arg_3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1080f, 1000f), vec3<f32>(arg_0, 834f, arg_0)), vec3<f32>(arg_0, -1707f, 650f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, -1000f, 874f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, -586f, arg_0) - vec3<f32>(arg_0, -2047f, arg_0))))), Struct_1(-1000f, arg_1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, arg_3.yw), 52281u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 959f, 328f) + vec3<f32>(arg_0, 653f, -1555f))))), !all(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x)), false, Struct_1(_wgslsmith_f_op_f32(func_2(vec3<u32>(arg_3.x << (arg_3.x % 32u), 1u, abs(arg_3.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(976f, arg_0, -2692f), vec3<f32>(1658f, arg_0, 695f)))))), true, reverseBits(~u_input.b.x ^ (u_input.c ^ 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -798f, -710f)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(trunc(597f)), -1222f), !arg_1.zwz))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, var_0.a.a, var_0.b.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -1036f, arg_0) * vec4<f32>(arg_0, -1719f, 2205f, var_0.b.a))))) * vec4<f32>(var_0.b.d.x, 228f, _wgslsmith_f_op_f32(f32(-1f) * -465f), arg_0));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.e.a, var_0.a.d.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(abs(-138f)), var_0.e.d.x), vec4<f32>(var_0.b.a, var_0.b.a, _wgslsmith_f_op_f32(ceil(var_0.e.d.x)), _wgslsmith_f_op_f32(exp2(arg_0))))), ~vec4<u32>(~u_input.b.x, 1u, u_input.c, _wgslsmith_add_u32(firstTrailingBit(4294967295u), select(50006u, 4294967295u, true))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.d.x + arg_0)))), false, u_input.c, var_1.xxw));
    let var_3 = -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a), arg_2, ~arg_2) | vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~(-47158i), ~(-21560i)), firstLeadingBit(_wgslsmith_add_vec3_i32(-vec3<i32>(arg_2, arg_2, 0i), -vec3<i32>(u_input.a.x, -20081i, u_input.a.x))));
    var var_4 = -min(abs(var_3 << (arg_3.wyw % vec3<u32>(32u))), max(~vec3<i32>(arg_2, var_3.x, 56848i), vec3<i32>(var_3.x, var_3.x, var_3.x))) << (select(var_2.b.zyy, firstTrailingBit(var_2.b.wwx), select(vec3<bool>(40982u >= arg_3.x, -109f > var_0.e.a, var_2.c.b), arg_1.wzw, var_0.d)) % vec3<u32>(32u));
    return Struct_2(var_0.b, var_2.c, true, arg_1.x, Struct_1(_wgslsmith_f_op_f32(-347f * -1101f), var_2.c.b, var_2.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.e.a)), _wgslsmith_f_op_f32(arg_0 * -1074f), _wgslsmith_f_op_f32(arg_0 * -1533f)))));
}

fn func_7(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(func_5(!arg_1.c, !(!vec4<bool>(true, true, arg_1.e.b, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-741f, 198f), arg_0))), _wgslsmith_f_op_f32(func_2((vec3<u32>(7866u, arg_1.b.c, 4294967295u) >> (vec3<u32>(u_input.b.x, u_input.c, 1u) % vec3<u32>(32u))) | reverseBits(vec3<u32>(4294967295u, 4294967295u, u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e.d), vec3<f32>(-2318f, arg_0, arg_0)))), arg_1.b.a), vec4<u32>(0u, 9823u, ~(~countOneBits(1u)), u_input.b.x), func_6(arg_1.a.d.x, vec4<bool>(!arg_1.b.b, arg_1.d, !arg_1.c, true), u_input.a.x, select(vec4<u32>(u_input.b.x, ~34237u, 1u, 0u), u_input.b, false)).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(-2363f, func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(true, func_1(vec3<u32>(u_input.b.x, 0u, 0u), vec4<bool>(true, false, true, false)))), -1452f), vec4<bool>(true, true, true, true), i32(-1i) * -abs(u_input.a.x), vec4<u32>(24153u, ~min(14516u, 4294967295u), u_input.b.x, ~(1556u << (u_input.b.x % 32u)))));
    var var_1 = min(vec2<i32>(1186i, u_input.a.x), -func_3(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, 4229i, u_input.a.x, u_input.a.x) << (vec4<u32>(var_0.c.c, var_0.c.c, u_input.c, u_input.b.x) % vec4<u32>(32u))), var_0.c.a, func_7(var_0.a.x, Struct_2(var_0.c, Struct_1(var_0.a.x, var_0.c.b, 1915u, vec3<f32>(var_0.a.x, var_0.c.a, 523f)), var_0.c.b, false, var_0.c)), Struct_1(_wgslsmith_div_f32(994f, var_0.a.x), true, _wgslsmith_dot_vec4_u32(var_0.b, u_input.b), var_0.a.xzz)));
    var_0 = func_7(_wgslsmith_f_op_f32(func_5(!(!(1u > var_0.b.x)), func_1(vec3<u32>(var_0.c.c >> (1u % 32u), 0u, firstTrailingBit(43845u)), vec4<bool>(true, func_6(var_0.a.x, vec4<bool>(false, true, false, true), u_input.a.x, var_0.b).e.b, any(vec2<bool>(true, false)), !var_0.c.b)))), Struct_2(Struct_1(var_0.a.x, true, u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a, var_0.c.d.x, 621f) - vec3<f32>(var_0.c.d.x, var_0.c.d.x, 639f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, var_0.c.a, 1254f)))), var_0.c, true, var_0.c.b, Struct_1(var_0.c.d.x, true, ~_wgslsmith_sub_u32(4294967295u, var_0.c.c), _wgslsmith_f_op_vec3_f32(var_0.c.d * _wgslsmith_f_op_vec3_f32(select(var_0.c.d, vec3<f32>(var_0.c.a, var_0.a.x, -1294f), var_0.c.b))))));
    let var_2 = var_0.c.b;
    var_0 = func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~vec3<u32>(42181u, 1u, var_0.b.x), vec3<f32>(_wgslsmith_f_op_f32(1988f * -1805f), -140f, _wgslsmith_f_op_f32(min(226f, -1000f))))) + var_0.a.x), Struct_2(Struct_1(1000f, true, abs(_wgslsmith_add_u32(var_0.c.c, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x + -596f), _wgslsmith_f_op_f32(var_0.c.a + var_0.a.x), 145f)), func_6(_wgslsmith_div_f32(-1003f, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), select(vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, var_0.c.b), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, var_0.c.b, var_0.c.b), var_0.c.b), !vec4<bool>(true, var_0.c.b, var_0.c.b, false)), i32(-1i) * -u_input.a.x, var_0.b).b, true, !(var_1.x < _wgslsmith_sub_i32(-8536i, -8627i)), var_0.c));
    var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(u_input.a.x ^ -1i, 1i), 1i), ~(func_3(-vec4<i32>(0i, 2147483647i, u_input.a.x, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -702f), func_7(-423f, Struct_2(var_0.c, Struct_1(var_0.a.x, var_0.c.b, u_input.c, vec3<f32>(var_0.c.d.x, var_0.c.d.x, var_0.c.d.x)), false, false, var_0.c)), func_6(-828f, vec4<bool>(false, var_0.c.b, var_0.c.b, var_0.c.b), -16269i, vec4<u32>(u_input.c, 1u, 96469u, var_0.b.x)).a) & abs(abs(vec2<i32>(u_input.a.x, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec3<u32>(abs(41602u), 33027u, 0u ^ var_0.c.c), _wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b.xw, u_input.b.ww), _wgslsmith_mult_vec2_u32(u_input.b.xw, vec2<u32>(var_0.c.c, var_0.c.c)))), var_0.b.x << (0u % 32u)));
}

