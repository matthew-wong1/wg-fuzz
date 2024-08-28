struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec2<i32> {
    return u_input.e;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = abs(u_input.d.x);
    let var_1 = Struct_2(Struct_1(~(~max(u_input.b, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, 415f, -1097f)))))), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1199f, -1590f, -818f), vec3<f32>(-315f, -825f, 824f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(3574f, -593f, -241f) + vec3<f32>(-228f, 870f, 599f)))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1059f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.a.b.x)))), var_1.b.b.x, var_1.b.b.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1265f, -224f, 208f, var_1.a.b.x)))));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(var_1.a.a, vec2<u32>(select(firstLeadingBit(var_0), var_1.b.a.x, false), var_1.b.a.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-847f, _wgslsmith_f_op_f32(var_2.a.x - var_1.a.b.x), _wgslsmith_f_op_f32(floor(-1486f))))));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -397f)) * -1865f)))), 1000f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1499f)) + -272f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + var_1.a.b.x) + var_2.a.x));
    return ~_wgslsmith_mod_u32(var_1.b.a.x, firstTrailingBit(var_3.a.x << (arg_2 % 32u)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(-(_wgslsmith_sub_i32(arg_0.x, -2147483647i) & _wgslsmith_div_i32(-1i, 26916i)), 23215i), arg_0.x);
    var_0 = func_2();
    let var_1 = reverseBits(~u_input.b) & u_input.d;
    var_0 = -countOneBits(arg_0.zz);
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, func_3(true, vec3<i32>(-2147483647i, u_input.a, -1i), u_input.d.x)), abs(min(u_input.d, var_1)), vec2<u32>(var_1.x, 19214u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -985f, 122f))), Struct_1(vec2<u32>(~abs(u_input.b.x), (1u ^ var_1.x) ^ u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1832f, 156f, -1185f), vec3<f32>(747f, 1040f, 596f)), vec3<f32>(-358f, 2520f, 2087f))))));
    return ~countOneBits(func_3(true, arg_0.wzy, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, 9989i, u_input.a), vec4<i32>(34610i, -8894i, u_input.a, -21247i))));
    let var_1 = reverseBits(countOneBits(reverseBits(vec2<i32>(u_input.e.x & 29319i, ~u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(ceil(1f));
    var var_3 = ~(-(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -14403i, u_input.c.x), vec3<i32>(u_input.a, u_input.e.x, -21534i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e.x, u_input.c.x, u_input.a), -vec3<i32>(0i, var_1.x, -1444i))));
    var var_4 = Struct_2(Struct_1(vec2<u32>(var_0 << (1u % 32u), func_3(false, vec3<i32>(var_3.x, var_3.x, var_1.x), 0u) | _wgslsmith_div_u32(4294967295u, u_input.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(-958f, 2045f)), 495f, var_2), vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(-252f)), -370f), any(vec2<bool>(false, true))))), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), -875f, _wgslsmith_f_op_f32(f32(-1f) * -1400f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2, 963f, -491f))))));
    let var_5 = select(vec4<bool>(true, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true)), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-732f - var_4.b.b.x), _wgslsmith_f_op_f32(-var_4.b.b.x)) <= 861f), !vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(u_input.b.x >= var_0, any(vec2<bool>(true, false)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    var var_6 = Struct_3(_wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(36381u, 60288u), vec2<u32>(4294967295u, var_0))), min(firstTrailingBit(~u_input.b), ~reverseBits(u_input.b))), !var_5);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, u_input.c.x, var_3.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, 27360i, var_3.x), vec3<i32>(-1i, 43633i, 3922i), vec3<i32>(-42169i, var_1.x, u_input.c.x))), vec3<i32>(var_3.x, -var_1.x, var_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, -478f, 1022f, -367f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 568f, var_2, var_4.a.b.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, var_2, var_4.b.b.x, -1118f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1476f, var_4.b.b.x, var_2, var_4.a.b.x)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(125f, -395f, 1254f, var_2), vec4<f32>(-901f, -380f, -1358f, 1000f), vec4<bool>(false, true, var_5.x, var_6.b.x))))))), vec2<u32>(4294967295u, 12051u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_4.b.b.yx, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_4.b.b.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a.b.x, 829f) - vec2<f32>(357f, var_2)), all(var_5.zxx))), true)), _wgslsmith_f_op_vec2_f32(-var_4.b.b.yx))), _wgslsmith_sub_i32(0i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_3.x, var_3.x), vec3<i32>(1i, var_1.x, -1813i)))));
}

