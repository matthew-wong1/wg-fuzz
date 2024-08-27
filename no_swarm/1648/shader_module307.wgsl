struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_1(-1i);
    let var_1 = Struct_5(u_input.a, Struct_1(var_0.a));
    let var_2 = var_1.b.a >> (~661u % 32u);
    var var_3 = Struct_4(~45493u, -(~countOneBits(var_2) >> (u_input.b.x % 32u)), _wgslsmith_mod_u32(u_input.b.x, 33382u));
    var var_4 = arg_0;
    return 1f;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -210f), _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_div_f32(arg_0, arg_0)) * vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 511f), _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_1, arg_1))), _wgslsmith_f_op_f32(arg_0 * arg_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1219f, 128f, arg_0))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(350f, -160f, -428f), vec3<f32>(1461f, 1000f, arg_0), false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-702f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -637f, 1760f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(686f, -1000f, -1315f), vec3<bool>(arg_1, false, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(715f, arg_0, arg_0) - vec3<f32>(arg_0, 361f, arg_0))))));
    return _wgslsmith_mod_u32(abs(4093u), countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 13629u) & firstLeadingBit(u_input.b.x), ~0u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = ~u_input.b.zz;
    var_0 = firstLeadingBit(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(4140u, u_input.b.x)), u_input.b.zy));
    var_0 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 4294967295u), u_input.b.zz) >> (vec2<u32>(_wgslsmith_div_u32(var_0.x, 0u), u_input.b.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(73335u, 0u), u_input.b.zx), (vec2<u32>(var_0.x, 1u) >> (u_input.b.zz % vec2<u32>(32u))) | vec2<u32>(u_input.b.x, 0u)), func_2(_wgslsmith_f_op_f32(arg_1.a * -1708f), true, vec4<i32>(1i, max(u_input.a, arg_0.x), u_input.a, u_input.c.x), _wgslsmith_sub_i32(-2147483647i, 0i))), ~countOneBits(u_input.b.yz) >> (~vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)));
    let var_1 = Struct_4(var_0.x, 0i, var_0.x);
    var var_2 = u_input.b.xx ^ u_input.b.xz;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(1935f, -1000f, 849f) - vec3<f32>(425f, 578f, -290f)))) * arg_2)));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(~2147483647i);
    let var_1 = Struct_2(arg_0.x, vec4<bool>(any(vec2<bool>(var_0.a > 39885i, 5647u <= u_input.b.x)), true, 1000f < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), !all(vec2<bool>(true, false)) && true));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zy))));
    var_2 = _wgslsmith_f_op_vec3_f32(func_1(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.a, u_input.c.x, 2147483647i, u_input.c.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a, -65802i, -1i, u_input.c.x), vec4<i32>(u_input.c.x, var_0.a, u_input.a, var_0.a))), i32(-1i) * -(~var_0.a), reverseBits(var_0.a)), var_1, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, !any(vec4<bool>(var_1.b.x, var_1.b.x, false, false)))), var_1.a, arg_0.x))).zx;
    var_0 = Struct_1(_wgslsmith_mod_i32(~1i, u_input.c.x));
    return Struct_1(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(742f * -934f) + _wgslsmith_f_op_f32(521f - 379f)))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(u_input.c, Struct_2(100f, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-966f, 1000f, -1118f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 536f, var_0.x)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1650f, 2021f, -514f), vec3<f32>(var_0.x, -1438f, 646f), false))))))));
    var var_2 = ~firstLeadingBit(var_1.a);
    var var_3 = Struct_3(abs(34119i));
    var var_4 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(abs(u_input.b), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b))), u_input.b);
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1436f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-907f - var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), -818f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-939f, -1572f)))), vec2<f32>(_wgslsmith_f_op_f32(-1268f * 1868f), 2079f), select(var_0.x <= var_0.x, true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -387f), vec2<f32>(279f, 720f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))));
    var_3 = Struct_3(~25504i);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1758f)), _wgslsmith_f_op_f32(102f + 1478f))), _wgslsmith_f_op_f32(select(-2002f, _wgslsmith_f_op_f32(min(-2310f, _wgslsmith_f_op_f32(-982f - 959f))), false))));
    let x = u_input.a;
    s_output = StorageBuffer(471f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1613f, _wgslsmith_div_f32(var_0.x, var_0.x), -515f) + vec3<f32>(-743f, 1233f, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1632f, -721f, var_0.x, 1595f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -497f, var_0.x, -1112f)))), false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1287f, var_0.x, 187f, 517f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1201f, var_0.x) - vec4<f32>(-646f, var_0.x, var_0.x, 2253f))))))), var_0.x, ~var_1.a);
}

