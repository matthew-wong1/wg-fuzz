struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global0 = vec4<u32>(_wgslsmith_sub_u32(49490u, ~(~38016u)), u_input.b.x, reverseBits(u_input.b.x | ~global0.x), _wgslsmith_div_u32(969u, select(_wgslsmith_dot_vec2_u32(global0.xz, ~vec2<u32>(global0.x, 0u)), 1u >> (0u % 32u), all(vec3<bool>(false, true, false)))));
    var var_0 = min(~u_input.e, vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global0.wz ^ vec2<u32>(u_input.b.x, 1u), ~u_input.e.xz), global0.zz), _wgslsmith_clamp_u32(1u, min(13155u, 4294967295u) << ((global0.x | 59534u) % 32u), u_input.e.x), 49060u, 0u));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, 4294967295u, _wgslsmith_add_u32(35690u, u_input.b.x)), u_input.e), ~abs(_wgslsmith_div_vec4_u32(~u_input.e, ~u_input.e)));
    global0 = ~(~max(vec4<u32>(u_input.b.x, 12908u >> (var_0.x % 32u), 87365u, ~u_input.e.x), u_input.e));
    let var_1 = u_input.e;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(39452u, _wgslsmith_div_u32(~var_0.x, ~(u_input.e.x << (var_1.x % 32u))), _wgslsmith_dot_vec4_u32(max(u_input.e, abs(u_input.e)), max(_wgslsmith_mod_vec4_u32(u_input.e, var_1), vec4<u32>(var_0.x, 3982u, 17077u, global0.x))), 4294967295u), _wgslsmith_mod_vec4_u32(u_input.e, ~(~vec4<u32>(u_input.b.x, u_input.e.x, u_input.b.x, var_1.x))) ^ u_input.e);
}

fn func_2() -> f32 {
    global0 = abs(abs(~u_input.e ^ vec4<u32>(global0.x, 0u, 33431u, u_input.b.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(func_3(), global0.x, firstLeadingBit(1u), ~u_input.b.x), _wgslsmith_mod_vec4_u32(u_input.e, ~u_input.e)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-190f, 343f), -396f, _wgslsmith_f_op_f32(804f * 1212f)))))), 25339u, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_f_op_f32(abs(487f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1702f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-855f * 660f), _wgslsmith_f_op_f32(802f - -215f))) - vec4<f32>(-1202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1655f)) - -911f), _wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-182f, -1285f) + _wgslsmith_f_op_f32(f32(-1f) * -1402f)))));
    let var_1 = abs(u_input.c);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d.wyy - vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(exp2(var_0.a.x)))), u_input.b.x, var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) + var_0.d));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.d.yxw)) * _wgslsmith_f_op_vec3_f32(select(var_0.a, vec3<f32>(-469f, 1146f, _wgslsmith_f_op_f32(exp2(var_0.d.x))), !vec3<bool>(false, true, var_0.c)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, -1100f));
}

fn func_4(arg_0: f32, arg_1: bool) -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))), u_input.e.x, any(select(!select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, true, true, arg_1), arg_1), select(!vec4<bool>(false, true, true, arg_1), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_1, arg_1, arg_1), arg_1), !vec4<bool>(arg_1, arg_1, true, true)), !(!vec4<bool>(true, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1082f)), arg_0, -909f, _wgslsmith_div_f32(-1103f, -1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1526f, arg_0, arg_0) - vec4<f32>(-1000f, arg_0, arg_0, arg_0))))));
    let var_1 = vec2<u32>(~u_input.b.x, ~4294967295u);
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b, u_input.b.x), abs(_wgslsmith_div_vec2_u32(max(u_input.e.zw, var_1), ~u_input.b))) << (var_1.x % 32u);
    let var_3 = _wgslsmith_dot_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(u_input.c.x, u_input.a)), -35145i, u_input.d.x), u_input.d) << (global0.yyz % vec3<u32>(32u)), firstTrailingBit(u_input.d));
    let var_4 = 1u != global0.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1473f, -526f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(var_0.d.xwz * vec3<f32>(587f, var_0.a.x, 275f))))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(arg_0 * var_0.d.x), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_0.d.x))), vec3<bool>(!select(true, var_4, var_0.c), false, arg_1 || all(vec3<bool>(var_4, false, var_0.c))))));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = abs(vec2<i32>(-min(_wgslsmith_mult_i32(-2147483647i, arg_0.x), u_input.a), arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1708f))) + -1703f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(func_2()), (u_input.d.x <= -2147483647i) || true)), vec3<f32>(_wgslsmith_f_op_f32(729f - var_1), var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1761f, var_1))), false)), global0.x, all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), var_1, 1037f))));
    var var_3 = Struct_1(var_2.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.x, reverseBits(1u) & u_input.b.x, 33678u), select(56954u << (_wgslsmith_mult_u32(global0.x, 2220u) % 32u), firstLeadingBit(global0.x), var_2.c)), select(any(!(!vec4<bool>(true, true, var_2.c, true))), all(select(vec3<bool>(var_2.c, true, false), !vec3<bool>(var_2.c, var_2.c, false), any(vec2<bool>(var_2.c, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1108f * var_1) - 934f) >= -276f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(select(-2278f, _wgslsmith_f_op_f32(trunc(var_2.a.x)), !var_2.c)), 1f, _wgslsmith_f_op_f32(855f - 245f))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-678f, 113f, -262f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a - vec3<f32>(-164f, -116f, -133f))))), var_2.b, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_3.d.x, -1333f, 224f)), vec4<f32>(-544f, var_2.a.x, 416f, var_1))))));
    return _wgslsmith_dot_vec3_i32(-firstLeadingBit(u_input.d) ^ -u_input.d, -_wgslsmith_mult_vec3_i32(vec3<i32>(-43554i, 1i, -17751i) ^ u_input.c.wwx, vec3<i32>(var_0.x, 2147483647i, 0i))) <= arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(countOneBits(1u << (~(u_input.b.x & 0u) % 32u)), _wgslsmith_add_u32(1u, abs(~select(u_input.e.x, global0.x, false))), 506u, abs(u_input.b.x));
    global0 = u_input.e;
    var var_1 = min(u_input.d, _wgslsmith_add_vec3_i32(-u_input.d, u_input.d));
    var var_2 = ~var_0.x;
    var_1 = abs(vec3<i32>(-2147483647i, u_input.d.x, _wgslsmith_div_i32(-26044i, u_input.d.x)));
    var var_3 = func_1(var_1.zx);
    var var_4 = Struct_1(vec3<f32>(1036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(215f + -637f), _wgslsmith_f_op_f32(max(434f, -685f))))), -858f), (firstTrailingBit(global0.x << (u_input.e.x % 32u)) | select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global0.x, u_input.e.x, 54030u), vec4<u32>(u_input.b.x, global0.x, global0.x, 2288u)), 1u, true)) >> (global0.x % 32u), firstTrailingBit(_wgslsmith_sub_i32(var_1.x, firstTrailingBit(u_input.c.x))) >= _wgslsmith_clamp_i32(10801i, _wgslsmith_clamp_i32(-1i, ~u_input.c.x, -1i), var_1.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2114f, 1f, _wgslsmith_f_op_f32(select(1797f, 960f, true)), -311f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1067f, -1951f, -1000f, 214f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-128f, 1015f, 513f, -1143f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(var_4.a.x - -1000f));
}

