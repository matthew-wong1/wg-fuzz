struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    global1 = u_input.a;
    global0 = min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, (global0.x >> (global0.x % 32u)) | ~0u), _wgslsmith_sub_vec2_u32(max(vec2<u32>(0u, 0u), ~vec2<u32>(38687u, 0u)), ~(vec2<u32>(global0.x, 61914u) | vec2<u32>(u_input.a, 0u)))), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(19235u, u_input.a, 4294967295u) << (vec3<u32>(u_input.a, 5083u, 82184u) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 82713u, 0u)))) | _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 35370u) >> (vec2<u32>(82024u, global0.x) % vec2<u32>(32u)), vec2<u32>(5286u, global0.x)), ~firstTrailingBit(vec2<u32>(43216u, 4294967295u))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(181f, _wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(f32(-1f) * -275f))))), -25498i << ((~4294967295u & _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 46648u, 4294967295u), vec3<u32>(global0.x, 940u, 0u))) % 32u), _wgslsmith_mult_i32(u_input.b.x, firstTrailingBit(reverseBits(1i))) >= ~_wgslsmith_mult_i32(select(u_input.b.x, 17426i, false), i32(-1i) * -49927i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(round(704f))), _wgslsmith_f_op_vec2_f32(-var_0.a)))), u_input.b.x, all(!(!vec4<bool>(var_0.c, false, var_0.c, true))) == true);
    let var_2 = abs(u_input.b.x);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, -2147483647i, u_input.b.x, var_1.b), vec4<i32>(var_2, var_0.b, -2147483647i, -66448i))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, var_0.b >> (33211u % 32u)), 20388i | var_1.b, _wgslsmith_clamp_i32(var_1.b, -1i, var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(11118i, var_1.b, var_2), vec3<i32>(-1i, var_1.b, var_0.b)) << (global0.x % 32u))), -vec4<i32>(_wgslsmith_add_i32(-u_input.b.x, u_input.b.x), var_1.b, -var_0.b, 0i));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = ~vec4<i32>(func_3(), ~u_input.b.x, -(~abs(0i)), max(-2147483647i, ~(~(-13239i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(3016f, 612f) * vec2<f32>(655f, -1228f))))))), max(-1i, u_input.b.x), all(vec2<bool>(true, true)));
    var var_2 = var_0.xy;
    global1 = _wgslsmith_mult_u32(max(firstLeadingBit(~max(53800u, 1u)), global0.x), ~min(abs(0u) >> (arg_0.x % 32u), ~986u));
    var_2 = vec2<i32>(var_2.x, var_1.b);
    return select(vec3<bool>(var_1.c, true, false), vec3<bool>(any(vec2<bool>(true, any(vec2<bool>(false, var_1.c)))), var_1.c, all(vec4<bool>(true, all(vec3<bool>(false, var_1.c, true)), true, any(vec4<bool>(var_1.c, var_1.c, false, var_1.c))))), vec3<bool>(var_1.a.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, 401f)) * 1888f), !(61131u != countOneBits(global0.x)), var_1.c));
}

fn func_1(arg_0: f32) -> vec3<bool> {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-370f + -555f))) - 1000f)), reverseBits(_wgslsmith_mult_i32(-u_input.b.x, ~u_input.b.x)) ^ ((~2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 58364u, 56121u, 38040u), vec4<u32>(2800u, 81879u, u_input.a, 1u)) % 32u)) ^ (_wgslsmith_dot_vec2_i32(u_input.b, u_input.b) ^ u_input.b.x)), true);
    let var_1 = any(func_2(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, 0u, global0.x, u_input.a)), firstTrailingBit(~vec4<u32>(19671u, u_input.a, global0.x, global0.x)))));
    global0 = vec2<u32>(57153u, select(1u, _wgslsmith_mod_u32(1u, global0.x), select(var_1, var_0.c, var_0.a.x >= 1494f)));
    global1 = u_input.a;
    global1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global0.x, 4294967295u, 0u, 22043u), vec4<u32>(global0.x, 1u, 20726u, 36921u)), vec4<u32>(min(u_input.a, u_input.a), ~1u, global0.x, u_input.a)), min(~(~reverseBits(vec4<u32>(0u, 1u, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 0u, u_input.a) >> ((vec4<u32>(1u, u_input.a, 10726u, u_input.a) | vec4<u32>(34616u, global0.x, 27888u, u_input.a)) % vec4<u32>(32u)), max(vec4<u32>(105124u, global0.x, global0.x, global0.x), vec4<u32>(0u, global0.x, 39561u, 71602u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(5895u, u_input.a, global0.x, global0.x), vec4<u32>(global0.x, 38294u, 1u, global0.x)), ~vec4<u32>(1u, u_input.a, 4294967295u, 0u))));
    return !select(select(vec3<bool>(func_2(vec4<u32>(4294967295u, global0.x, 56367u, 19483u)).x, true, true), !(!vec3<bool>(false, false, var_1)), func_2(vec4<u32>(u_input.a, u_input.a, 51347u, 0u))), !(!select(vec3<bool>(true, var_0.c, var_0.c), vec3<bool>(true, false, true), vec3<bool>(var_0.c, true, var_0.c))), select(vec3<bool>(all(vec2<bool>(var_0.c, var_0.c)), false, var_1), !(!vec3<bool>(true, false, var_0.c)), all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = u_input.a;
    global1 = select(~select((u_input.a ^ 44319u) << (firstTrailingBit(global0.x) % 32u), global0.x, all(vec4<bool>(arg_0.x, true, arg_1, arg_0.x))), 54300u, false);
    var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, 688f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1322f, 968f) - vec2<f32>(-1009f, -897f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, -781f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(328f, 1000f) + vec2<f32>(-106f, 2541f))))))), firstTrailingBit(max(20541i, -14608i)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-330f, var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-285f, var_1.a.x, var_1.a.x) + vec3<f32>(-1601f, var_1.a.x, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, var_1.a.x, 491f))))))));
    return global0.x << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-1020f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1287f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1257f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1977f), _wgslsmith_f_op_f32(abs(-405f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - -1000f)), _wgslsmith_f_op_f32(-1491f - -1458f)))));
    var var_1 = -1000f;
    global1 = func_4(select(select(select(func_1(241f), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), var_0.x < -1000f), vec3<bool>(true, true, true), func_1(var_0.x)), vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_div_f32(-936f, -525f)), true), !func_2(~vec4<u32>(u_input.a, global0.x, 1u, u_input.a)).x);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(48653u ^ _wgslsmith_mod_u32(~41502u, func_4(vec3<bool>(false, true, false), true)), abs(_wgslsmith_mod_u32(max(global0.x, global0.x), var_2)), firstLeadingBit(var_2) & _wgslsmith_add_u32(~7797u, ~4294967295u)), -_wgslsmith_div_i32(~1i, -2147483647i) ^ -u_input.b.x);
}

