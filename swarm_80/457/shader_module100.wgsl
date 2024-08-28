struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 819f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<f32> {
    global0 = 128f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)) * _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = _wgslsmith_div_f32(arg_1.x, arg_1.x);
    let var_0 = Struct_2(-(~0i), arg_1.yx, _wgslsmith_f_op_vec3_f32(round(arg_2)));
    var var_1 = Struct_1(arg_3.ww, countOneBits(firstTrailingBit(~(-vec2<i32>(19621i, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_2.x, _wgslsmith_div_f32(1355f, var_0.b.x)))), arg_3.x, abs(arg_3));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_2.x, 1140f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.c.x, -1000f)), _wgslsmith_f_op_f32(var_1.c.x + 101f), 109f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -404f, arg_2.x) + arg_2)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1131f)) + _wgslsmith_f_op_f32(arg_1.x - var_1.c.x))), -1000f, arg_1.x), !arg_0.x));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - arg_0))))) + _wgslsmith_f_op_f32(max(429f, 2166f)))));
    var var_0 = min(abs(vec2<i32>(72071i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(arg_1, arg_1, u_input.a) & vec3<i32>(u_input.a, 2147483647i, -41548i)))), vec2<i32>(-2147483647i, 2888i));
    var var_1 = ~(~(~vec2<i32>(arg_1, _wgslsmith_mult_i32(1i, 30692i))));
    let var_2 = ~reverseBits(8704u);
    var var_3 = vec3<i32>(min(var_1.x, 0i), -2147483647i, -21179i | (i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, 2147483647i), vec3<i32>(18920i, 0i, -45850i))));
    return Struct_1(countOneBits(vec2<u32>(1u, 18910u)), var_3.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1223f, arg_0, arg_0), vec3<f32>(297f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -537f, arg_0))), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 0u, 124053u, var_2), vec4<u32>(var_2, 9675u, 0u, 0u)) ^ (vec4<u32>(0u, 4294967295u, 45358u, var_2) >> (vec4<u32>(7029u, 22229u, 4718u, var_2) % vec4<u32>(32u)))))), ~firstTrailingBit(1u), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_2, 1u, var_2, _wgslsmith_div_u32(4294967295u, ~var_2)), abs(reverseBits(firstLeadingBit(vec4<u32>(var_2, var_2, 50626u, var_2))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(trunc(arg_1.c.x));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(func_2(_wgslsmith_f_op_f32(sign(-704f)), 2147483647i).e.xz), _wgslsmith_add_vec2_i32((firstLeadingBit(arg_2.zy) ^ _wgslsmith_mod_vec2_i32(arg_2.zz, arg_2.yx)) ^ arg_2.xz, arg_2.xz), _wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(all(vec3<bool>(true, true, arg_0)), true), select(vec2<bool>(arg_1, false), vec2<bool>(true, true), -12751i != u_input.a), vec2<bool>(arg_1, false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(func_4(arg_1, Struct_1(vec2<u32>(4294967295u, 49883u), vec2<i32>(u_input.a, -6035i), arg_3.wzy, 1u, vec4<u32>(1u, 59672u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, 23287u, 4294967295u, 0u), Struct_1(vec2<u32>(29176u, 4294967295u), arg_2.zy, arg_3.yzy, 4294967295u, vec4<u32>(0u, 1u, 0u, 57681u)))), _wgslsmith_f_op_f32(-arg_3.x), arg_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.yxy)), vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(33862u, 4294967295u)), firstLeadingBit(vec2<u32>(20642u, 1444u))), ~27917u, 0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(29572u, 2403u, 0u, 4294967295u), vec4<u32>(4294967295u, 17541u, 0u, 0u)), 5049u))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 1u, min(4294967295u, 82579u)), 0u), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(u_input.a, -23842i), ~(-1i), ~var_0.b.x), ~arg_2), arg_3.zw, arg_3.yyz);
    var var_2 = Struct_2(abs(0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c.zy, arg_3.wx))), _wgslsmith_div_vec3_f32(vec3<f32>(-1522f, _wgslsmith_f_op_f32(floor(2289f)), _wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_f_op_vec3_f32(-arg_3.wyz)));
    var var_3 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(arg_0, true), vec2<bool>(arg_1, arg_0), arg_0), vec2<bool>(arg_0, false), any(vec3<bool>(false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !arg_1), vec2<bool>(false, _wgslsmith_mult_i32(-1i, var_0.b.x) == (var_0.b.x | 1i)));
    var var_4 = !vec3<bool>(_wgslsmith_mult_i32(~12175i, var_2.a >> (42938u % 32u)) < 5749i, var_3.x, any(select(select(vec2<bool>(var_3.x, arg_0), vec2<bool>(false, arg_1), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, var_3.x), select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~countOneBits(arg_0.e.ywx >> (_wgslsmith_mult_vec3_u32(arg_0.e.wxx >> (vec3<u32>(0u, 30115u, 41472u) % vec3<u32>(32u)), ~arg_0.e.wyx) % vec3<u32>(32u)));
    let var_1 = func_5(!(!(arg_0.b.x < 1i)), !all(vec3<bool>(true, true, true)) || (_wgslsmith_mod_u32(79263u, _wgslsmith_clamp_u32(1u, 61778u, arg_2.d)) < _wgslsmith_mult_u32(~var_0.x, 82450u)), ~reverseBits(vec3<i32>(1i, arg_2.b.x, -u_input.a)), vec4<f32>(arg_0.c.x, -216f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2614f) * arg_2.c.x))), _wgslsmith_f_op_f32(func_4(true, arg_0, select(_wgslsmith_mult_vec4_u32(vec4<u32>(27516u, var_0.x, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, arg_2.e.x, var_0.x)), firstLeadingBit(vec4<u32>(var_0.x, 10431u, 4294967295u, 18612u)), vec4<bool>(true, false, true, false)), func_2(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x)), arg_2.b.x)))));
    var var_2 = vec4<i32>(arg_0.b.x, func_5(all(vec3<bool>(var_1.b.x > var_1.b.x, true, 43197u <= var_0.x)), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true)), select(abs(reverseBits(vec3<i32>(u_input.a, 1i, 11956i))), vec3<i32>(var_1.b.x, 4748i, 17137i) >> (vec3<u32>(1u, 0u, 28869u) % vec3<u32>(32u)), arg_2.d >= firstTrailingBit(46340u)), vec4<f32>(-1070f, arg_2.c.x, arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1409f))))).b.x, arg_0.b.x ^ min(_wgslsmith_mult_i32(arg_0.b.x, -26660i), func_5(all(vec2<bool>(true, false)), false, vec3<i32>(arg_0.b.x, -1i, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, arg_2.c.x, -127f, arg_2.c.x))).b.x), -11794i);
    var var_3 = 1i;
    var var_4 = Struct_2(_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.b.x, 1i, 1i, arg_1.x), vec4<i32>(-2147483647i, 13135i, arg_1.x, u_input.a) ^ vec4<i32>(-2147483647i, arg_2.b.x, arg_2.b.x, 2183i)), ~reverseBits(_wgslsmith_div_i32(10868i, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + arg_2.c.x)) * arg_0.c.xz)), _wgslsmith_f_op_vec3_f32(func_3(!vec2<bool>(select(false, true, false), any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, -1252f, arg_0.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(arg_2.c)), var_1.e)));
    return ~_wgslsmith_mult_u32(~var_0.x, 1u);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> f32 {
    global0 = arg_2.b.x;
    global0 = _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(-arg_2.c.x));
    var var_0 = Struct_2(1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(arg_2.b, vec2<f32>(-1304f, arg_2.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -465f);
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) * _wgslsmith_div_f32(-1833f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * -125f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(534f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -853f)))), _wgslsmith_f_op_f32(func_6(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a)), ~func_1(Struct_1(vec2<u32>(5233u, 4294967295u), vec2<i32>(u_input.a, -67386i), vec3<f32>(1016f, -1274f, -712f), 1u, vec4<u32>(0u, 8455u, 16728u, 0u)), vec2<i32>(-1i, -1i), Struct_1(vec2<u32>(54043u, 53671u), vec2<i32>(u_input.a, 2147483647i), vec3<f32>(-1000f, 538f, 1492f), 27032u, vec4<u32>(16599u, 0u, 42490u, 4294967295u))), Struct_2(-u_input.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-153f, -424f))), vec3<f32>(-1000f, -408f, 2074f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)) - _wgslsmith_f_op_f32(f32(-1f) * -1174f)));
    var var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 2749u, 66860u, 38651u)), vec4<u32>(1u, 1u, 1u, 1u)) << (~countOneBits(vec4<u32>(4294967295u, 4294967295u, 4732u, 4294967295u)) % vec4<u32>(32u)), ~min(~vec4<u32>(4294967295u, 4294967295u, 2840u, 1u), vec4<u32>(~4140u, ~4294967295u, 1u, _wgslsmith_mult_u32(1u, 4294967295u))));
    var var_2 = ~(~_wgslsmith_mod_vec3_u32(var_1.yxy, min(var_1.ywy, var_1.xzz) | vec3<u32>(var_1.x, var_1.x, 83081u)));
    var var_3 = func_2(_wgslsmith_f_op_f32(904f * var_0.x), 1i);
    var var_4 = -788f;
    var_2 = firstLeadingBit(~(func_5(false, false, _wgslsmith_mod_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, var_3.b.x), vec3<i32>(var_3.b.x, u_input.a, 0i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, var_0.x, var_0.x, -797f))).e.zzz | _wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_1.x, 1u), vec3<u32>(4294967295u, 0u, 1u) ^ var_1.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(func_4(true, Struct_1(vec2<u32>(1u, 74711u), vec2<i32>(-1i, var_3.b.x), vec3<f32>(var_3.c.x, -1094f, -1667f), var_3.d, var_3.e), vec4<u32>(24799u, 101050u, 14371u, 4294967295u), Struct_1(var_2.zy, vec2<i32>(var_3.b.x, -46103i), vec3<f32>(var_0.x, 120f, -526f), 1u, vec4<u32>(1u, var_3.d, var_1.x, var_3.e.x)))), var_3.c.x, 758f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, _wgslsmith_f_op_f32(step(var_3.c.x, var_3.c.x)), func_2(var_0.x, u_input.a).c.x, 1483f))));
}

