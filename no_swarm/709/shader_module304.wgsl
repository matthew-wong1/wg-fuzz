struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = ~abs(arg_0.x);
    let var_1 = Struct_5(~(~reverseBits(u_input.c >> (vec3<u32>(var_0, 29223u, arg_0.x) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-255f))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b.a, -1000f), var_1.b.a))))), var_1.b.a);
    let var_3 = var_1.a;
    var var_4 = var_1.b;
    return vec2<u32>(1u, ~4294967295u);
}

fn func_3() -> i32 {
    var var_0 = u_input.c.yz;
    var_0 = u_input.c.yz;
    var var_1 = true;
    var_0 = select(vec2<i32>(_wgslsmith_div_i32(countOneBits(9599i << (0u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), abs(vec2<i32>(u_input.b, var_0.x)))), min(reverseBits(var_0.x & var_0.x), -_wgslsmith_div_i32(u_input.b, -2147483647i))), abs(u_input.c.zz), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), true)));
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c) ^ u_input.c, ~u_input.c);
}

fn func_2() -> Struct_4 {
    var var_0 = -_wgslsmith_mult_i32(-2147483647i, func_3());
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(1590f)));
    var var_2 = vec3<i32>(-1i, 10744i, 35888i);
    var var_3 = u_input.a & ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 27344u), vec2<u32>(0u, u_input.a)) >> (~4294967295u % 32u)));
    let var_4 = Struct_5(vec3<i32>(~func_3(), var_2.x, -_wgslsmith_mult_i32(-u_input.c.x, u_input.c.x)), var_1);
    return Struct_4(max(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(var_2.x, 2147483647i, 0i, -1i), vec4<i32>(var_4.a.x, var_4.a.x, u_input.b, 1i)), vec4<i32>(var_4.a.x, var_4.a.x, 687i, -1i)), -(vec4<i32>(0i, 17590i, var_2.x, var_2.x) ^ vec4<i32>(-2147483647i, -1i, 1i, -1i)) & (-vec4<i32>(2147483647i, var_4.a.x, var_4.a.x, var_4.a.x) | vec4<i32>(0i, u_input.b, -20418i, var_4.a.x))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = select(vec4<bool>(!all(vec3<bool>(false, true, true)), !(all(vec4<bool>(true, true, true, false)) | true), true, any(vec4<bool>(true, true, true, true))), vec4<bool>(_wgslsmith_f_op_f32(-arg_2.a) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)), 1425f), all(vec3<bool>(true, true, false)) && (_wgslsmith_f_op_f32(min(1633f, -1000f)) <= _wgslsmith_f_op_f32(abs(arg_2.a))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), true)), all(vec2<bool>(true, true)) || (any(vec4<bool>(false, true, true, false)) & false)), true);
    var var_1 = select(select(select(var_0.wyy, !var_0.xww, true), var_0.xxy, all(var_0)), !select(var_0.xww, var_0.yxx, var_0.zzx), !(true | all(vec4<bool>(var_0.x, false, true, false))));
    let var_2 = Struct_3(-1105f, vec2<i32>(_wgslsmith_add_i32(u_input.b, ~arg_3.a.x), u_input.b));
    var_1 = vec3<bool>(false, !all(var_0.xz) | (func_3() < -6122i), !(!var_0.x) || (any(var_0) || true));
    var_1 = !vec3<bool>(u_input.c.x < _wgslsmith_mult_i32(0i, arg_3.a.x << (u_input.a % 32u)), !var_1.x, !any(!vec4<bool>(var_0.x, false, var_0.x, false)));
    return ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 27375u, arg_0.x, 26477u) | vec4<u32>(u_input.a, arg_0.x, u_input.a, arg_0.x), ~vec4<u32>(u_input.a, 1u, 33255u, 70652u)) | (~vec4<u32>(0u, 0u, u_input.a, 1u) | ~vec4<u32>(53346u, u_input.a, 25900u, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), abs(vec4<u32>(u_input.a, 0u, 0u, 0u)))), func_4((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 6451u)) | vec2<u32>(26494u, 27101u)) ^ func_1(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(~u_input.c.zy | _wgslsmith_clamp_vec2_i32(u_input.c.zx, vec2<i32>(u_input.c.x, -13389i), vec2<i32>(u_input.b, u_input.b)), u_input.c.yz), Struct_2(_wgslsmith_f_op_f32(2031f - -325f)), func_2()), all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = 21769u;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-405f, _wgslsmith_f_op_f32(1408f + 190f), _wgslsmith_f_op_f32(-1901f * 622f), _wgslsmith_f_op_f32(step(2072f, 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-782f, 2240f, 560f, -638f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, 964f, 1000f, 1452f)), _wgslsmith_div_vec4_f32(vec4<f32>(-407f, 1110f, -1486f, 1120f), vec4<f32>(170f, -1058f, 1852f, 181f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1529f), 724f, _wgslsmith_f_op_f32(f32(-1f) * -148f), -857f)))));
    let var_3 = !select(!vec4<bool>(true, true, false, any(vec3<bool>(false, false, false))), vec4<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true, select(-876f > var_2.x, true, select(false, true, false)), ~var_1 == countOneBits(u_input.a)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, true, false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)));
    var var_4 = Struct_2(var_2.x);
    var var_5 = var_0.yyw;
    let var_6 = -12994i;
    let var_7 = -988f;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_4.a)), _wgslsmith_f_op_f32(select(-1382f, -377f, var_3.x)), _wgslsmith_div_f32(var_7, var_4.a), _wgslsmith_f_op_f32(321f + -2163f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(130f, -1321f, -704f, 1607f) + vec4<f32>(-413f, 820f, var_4.a, 328f)) * vec4<f32>(var_4.a, var_7, -231f, 822f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec3_i32(u_input.c, u_input.c), ~_wgslsmith_mult_i32(u_input.b, -(u_input.b | u_input.c.x)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(exp2(var_2.x))));
}

