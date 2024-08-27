struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = 53656u > u_input.d;
    return -2147483647i;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)));
    var var_1 = u_input.d;
    var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(u_input.e, 4294967295u, 148484u))), firstLeadingBit(_wgslsmith_mult_u32(u_input.e, 0u) | u_input.e), u_input.e | 9803u), ~(~countOneBits(13307u)) | ~u_input.e);
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    return vec3<bool>(true, func_2(min(u_input.e ^ u_input.e, 1u)) <= _wgslsmith_mult_i32(~(i32(-1i) * -17001i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -69860i, 0i, arg_1), vec4<i32>(arg_0, arg_0, -5727i, arg_0)), vec4<i32>(u_input.a, u_input.b, 1578i, -20393i))), true);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = (-vec2<i32>(firstLeadingBit(-27422i), ~(-32230i)) & reverseBits(max(firstTrailingBit(vec2<i32>(1i, -1i)), vec2<i32>(17993i, u_input.c)))) >> (countOneBits(min(vec2<u32>(~100490u, 4294967295u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 12778u), vec2<u32>(u_input.d, 15677u)))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(332f + 681f)), _wgslsmith_f_op_f32(1000f * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(699f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(979f, 1000f)), _wgslsmith_f_op_f32(trunc(1342f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1298f, -115f, 319f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(var_1.x)), arg_0, true || arg_0, select(_wgslsmith_div_vec4_i32(select(vec4<i32>(0i, 1i, var_0.x, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(-7645i, u_input.b, u_input.a, var_0.x), vec4<i32>(u_input.c, 2147483647i, -1i, -1992i)), !vec4<bool>(arg_0, arg_0, true, arg_0)), -vec4<i32>(0i, u_input.c, 23051i, -13920i) ^ -vec4<i32>(u_input.a, 2147483647i, u_input.b, u_input.b)), vec4<i32>(-78053i, _wgslsmith_dot_vec3_i32(vec3<i32>(1562i, -5630i, u_input.b), vec3<i32>(var_0.x, -2147483647i, -2147483647i)), _wgslsmith_add_i32(u_input.c, u_input.b), reverseBits(var_0.x)) >> ((max(vec4<u32>(1u, u_input.d, 4294967295u, 50437u), vec4<u32>(4294967295u, 0u, u_input.d, u_input.d)) | vec4<u32>(1567u, u_input.d, u_input.d, u_input.d)) % vec4<u32>(32u)), !select(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, false, false, arg_0)), !vec4<bool>(true, arg_0, arg_0, arg_0), any(vec2<bool>(false, true)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-723f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(413f)) + _wgslsmith_f_op_f32(-var_1.x)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(abs(-615f)))) + var_1.x);
    return vec3<bool>(true, all(select(vec2<bool>(arg_0 & false, 29886u < u_input.d), !vec2<bool>(arg_0, true), vec2<bool>(false, any(vec2<bool>(true, arg_0))))), -59627i > var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -236f), true, true, ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -15757i, u_input.c, 39519i) >> (vec4<u32>(63481u, u_input.e, u_input.d, u_input.d) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 27307i, u_input.a, -18959i), vec4<i32>(-24279i, u_input.a, -2147483647i, 1i), vec4<i32>(-52362i, u_input.b, u_input.b, u_input.c)))));
    var var_1 = !all(select(vec3<bool>(var_0.c, var_0.b, any(vec3<bool>(false, true, var_0.c))), func_1(~var_0.d.x, -65921i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-945f, 1875f) - vec2<f32>(var_0.a, var_0.a))), select(true, all(vec3<bool>(var_0.b, var_0.c, var_0.b)), !var_0.c)));
    var var_2 = !(!func_1(var_0.d.x, u_input.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 438f) - vec2<f32>(var_0.a, -159f))))));
    var_2 = vec3<bool>(!all(!(!var_2.zy)), any(func_3(true)), true);
    var var_3 = Struct_2(~u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-387f * var_0.a)))), var_0, var_0);
    var_3 = Struct_2(_wgslsmith_sub_u32(reverseBits(var_3.a), countOneBits(_wgslsmith_sub_u32(var_3.a, var_3.a))) << (~abs(35071u) % 32u), _wgslsmith_f_op_f32(-var_0.a), Struct_1(var_0.a, func_3(var_0.b).x, all(vec2<bool>(any(vec3<bool>(var_0.b, var_2.x, false)), true)), vec4<i32>(_wgslsmith_div_i32(var_0.d.x, -var_0.d.x), 2147483647i, -2147483647i << (~u_input.d % 32u), -countOneBits(3542i))), var_3.d);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1992f), var_3.a >= 1u, var_3.d.c, select(vec4<i32>(countOneBits(35675i), select(var_3.d.d.x, 2147483647i, var_3.c.c), var_0.d.x, _wgslsmith_sub_i32(var_0.d.x, var_0.d.x)), max(max(vec4<i32>(var_0.d.x, 2147483647i, 1i, var_3.d.d.x), vec4<i32>(1i, var_3.c.d.x, -29666i, -849i)), _wgslsmith_div_vec4_i32(var_3.c.d, vec4<i32>(-2147483647i, u_input.b, 2147483647i, 26560i))), -266f <= _wgslsmith_f_op_f32(select(var_0.a, var_3.b, var_2.x))) >> (vec4<u32>(firstTrailingBit(countOneBits(var_3.a)), _wgslsmith_mult_u32(1u, 4350u), u_input.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 42184u), vec2<u32>(36390u, u_input.e)), ~4294967295u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(max(~u_input.d, u_input.d), 1u, _wgslsmith_div_u32(128700u & u_input.d, ~0u)), -reverseBits(_wgslsmith_sub_i32(i32(-1i) * -2956i, _wgslsmith_dot_vec2_i32(var_3.c.d.xw, var_3.c.d.xx))), abs(5484i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, var_4.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(191f, 973f), vec2<f32>(1224f, var_3.d.a))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.a, 590f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, var_0.a))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(874f, 1116f), vec2<f32>(-1136f, 1170f), true))))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.a, max(4294967295u, 49929u), 1u), 72360u));
}

