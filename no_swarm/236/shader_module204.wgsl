struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global0 = _wgslsmith_mod_i32(-29932i, max(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), min(-vec2<i32>(2147483647i, -29640i), -vec2<i32>(-2147483647i, 77737i))), 22866i));
    let var_0 = _wgslsmith_div_u32(~u_input.a.x, u_input.a.x ^ 75546u);
    global0 = ~(-3359i);
    var var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(90046u, 4749u), 0u & _wgslsmith_clamp_u32(firstTrailingBit(u_input.a.x), _wgslsmith_add_u32(0u, u_input.a.x), 66888u)), vec3<bool>(!all(vec2<bool>(true, false)) && true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1646f, 478f)))) <= 314f, any(vec2<bool>(true, true))), vec4<u32>(countOneBits(1u), u_input.a.x, reverseBits(1u), var_0) ^ ~((vec4<u32>(u_input.a.x, 4889u, var_0, 74470u) ^ vec4<u32>(1u, 5670u, 10243u, var_0)) << (max(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 51531u), vec4<u32>(var_0, var_0, 1u, 19307u)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec3_i32(countOneBits(~select(vec3<i32>(75689i, -1i, 48717i), -vec3<i32>(2147483647i, 1i, 1i), var_1.b.x)), vec3<i32>(-1i, max(abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, -1i))) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 16289i), vec3<i32>(2147483647i, 4110i, 2147483647i)), _wgslsmith_dot_vec4_i32(max(vec4<i32>(19607i, -2147483647i, -1i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, 19959i), vec4<i32>(0i, 31006i, 14448i, 28603i))), vec4<i32>(3253i, 1i, 1i, ~22810i))));
    return true;
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(u_input.a.x, select(vec3<bool>(true || !arg_0, !(99870u < u_input.a.x), !func_3()), select(select(!vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false)), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, arg_0)), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, false)), vec3<bool>(true, true, arg_0), u_input.a.x < u_input.a.x)), countOneBits(~u_input.a.x) == 49714u), reverseBits(vec4<u32>(~1u, ~8716u, u_input.a.x, 1u) >> (vec4<u32>(~0u, ~2301u, ~2474u, u_input.a.x >> (u_input.a.x % 32u)) % vec4<u32>(32u))));
    let var_1 = var_0.a << (1u % 32u);
    var var_2 = var_0.b;
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1009f, -335f)))))))), !arg_0, select(select(var_2.zz, select(var_0.b.xy, !var_0.b.xy, select(var_2.xz, vec2<bool>(true, var_0.b.x), var_2.zy)), var_0.b.x), !vec2<bool>(true, var_0.b.x | true), select(var_2.yz, select(!var_2.xx, select(vec2<bool>(var_0.b.x, true), var_0.b.yx, var_2.x), !vec2<bool>(arg_0, true)), var_2.xz)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1312f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1223f, -273f)))), _wgslsmith_f_op_f32(step(2012f, _wgslsmith_f_op_f32(ceil(1964f)))), _wgslsmith_f_op_f32(min(-905f, 1000f))), vec4<f32>(1f, 1f, 1f, 1f)), var_0.a);
    global0 = abs(6494i);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(412f, -740f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1862f))))), any(select(vec4<bool>(arg_0, func_3(), select(var_3.b, false, var_2.x), true), vec4<bool>(!var_3.b, arg_0, var_2.x, true), arg_0)), vec2<bool>(arg_0, all(select(vec3<bool>(false, true, false), !var_0.b, select(var_0.b, vec3<bool>(var_3.b, var_2.x, false), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.d.x, -335f, var_3.d.x, -1239f)))))) + var_3.d), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 98513u), _wgslsmith_clamp_vec2_u32(~var_0.c.yy, vec2<u32>(89553u, var_0.c.x), min(vec2<u32>(var_3.e, var_1), u_input.a))), 67763u, arg_0));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = func_2(1u > arg_2);
    var var_1 = countOneBits(abs(arg_1.c.zzw));
    let var_2 = func_2(arg_1.b.x);
    let var_3 = !arg_1.b.x;
    let var_4 = arg_1;
    return !(_wgslsmith_mod_i32(_wgslsmith_add_i32(arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, 0i), vec3<i32>(-42512i, -13620i, arg_3))), arg_3) <= _wgslsmith_add_i32(~abs(-9000i), ~arg_3 | countOneBits(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-523f, 321f, -1206f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(-446f)), _wgslsmith_f_op_f32(round(-2408f)), _wgslsmith_f_op_f32(step(775f, 1413f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1284f, _wgslsmith_f_op_f32(-502f * -1106f), _wgslsmith_f_op_f32(-525f * -693f)))))));
    let var_1 = !select(vec4<bool>(!func_1(44984u, Struct_1(u_input.a.x, vec3<bool>(true, false, false), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), 0u, 2147483647i), true || (92977u != u_input.a.x), true, true), vec4<bool>(all(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)), false, func_3()), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)));
    var var_2 = -36463i;
    let var_3 = func_3();
    var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-1i & (-1i << (u_input.a.x % 32u)))), -_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 2147483647i, -25539i), select(~vec3<i32>(54592i, 442i, 0i), vec3<i32>(-1i, 2147483647i, 50070i), any(var_1.xxy))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -542f, var_0.x)), vec3<f32>(var_0.x, -1344f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, var_0.x, var_0.x)))))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), abs(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) >> (vec3<u32>(74516u, 0u, 4294967295u) % vec3<u32>(32u))), ~(~vec3<u32>(1u, 92764u, u_input.a.x))), vec2<u32>(17831u ^ (u_input.a.x >> (~u_input.a.x % 32u)), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(17318u, u_input.a.x), 0u)));
}

