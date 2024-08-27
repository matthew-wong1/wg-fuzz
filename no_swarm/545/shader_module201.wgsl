struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(abs(abs(u_input.b)), ~_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(0i, 2147483647i, 1i), u_input.c)), (~u_input.a >> (u_input.a % 32u)) ^ 1u, max(u_input.a, _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), false), vec4<u32>(22240u, u_input.a, 56551u, 39097u), true), vec4<u32>(u_input.a, 4294967295u, 76201u, u_input.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 66778u, 0u, u_input.a)) % vec4<u32>(32u)))), abs(~_wgslsmith_clamp_u32(1u, max(7302u, 25562u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 38368u)))), -(vec3<i32>(-1i) * -vec3<i32>(1i, -34465i, -21580i)));
    var_0 = Struct_1(u_input.c.x, ~40369u, _wgslsmith_sub_u32(1u, u_input.a), _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(81498u, var_0.d), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_0.c, var_0.c, var_0.b), ~vec4<u32>(70638u, var_0.c, 11692u, 0u)), 39813u)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i, var_0.a, var_0.e.x), ~(~(-1i))), u_input.b.x, u_input.c.x));
    var_0 = Struct_1(firstTrailingBit(max(_wgslsmith_add_i32(var_0.a, var_0.a), -max(0i, var_0.e.x))), _wgslsmith_dot_vec3_u32(firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_0.b, u_input.a), vec3<u32>(u_input.a, 4294967295u, var_0.c), vec3<u32>(var_0.b, var_0.d, 4294967295u))), ~vec3<u32>(~4294967295u, u_input.a >> (28282u % 32u), _wgslsmith_div_u32(1u, 4294967295u))), 4294967295u, var_0.d, abs(_wgslsmith_div_vec3_i32(vec3<i32>(13773i | var_0.a, var_0.a << (1u % 32u), var_0.e.x << (1u % 32u)), var_0.e)));
    var_0 = Struct_1(var_0.a >> (~var_0.b % 32u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(5196u, u_input.a, 1u, 136996u) & vec4<u32>(var_0.d, 45456u, 25433u, 4294967295u)) >> (~vec4<u32>(0u, u_input.a, var_0.c, var_0.c) % vec4<u32>(32u)), vec4<u32>(var_0.d, 1u, _wgslsmith_clamp_u32(16698u, ~4294967295u, abs(var_0.b)), select(min(u_input.a, u_input.a), abs(1u), true))), _wgslsmith_clamp_u32(u_input.a, ~(var_0.c ^ var_0.d), _wgslsmith_mult_u32(38678u, _wgslsmith_mod_u32(45559u, 33752u))) ^ u_input.a, ~var_0.d, -u_input.c);
    var var_1 = true;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-398f)) - arg_0.x), arg_0.x));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-352f * _wgslsmith_f_op_f32(func_3(vec2<f32>(-1703f, -620f)))), _wgslsmith_f_op_f32(trunc(-2113f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) - 1f), _wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(f32(-1f) * -478f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(186f, 1575f, -1204f, 1748f), vec4<f32>(-418f, 516f, -1054f, 741f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(265f, -644f, 250f, 683f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(155f, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(543f, var_1.x, var_1.x, var_1.x) * var_1)))) * vec4<f32>(-751f, var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-var_1.x)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)) + _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1043f) + _wgslsmith_f_op_f32(max(var_1.x, -1685f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -862f) + _wgslsmith_f_op_f32(906f - 2028f))), -533f));
    return Struct_1(1i, u_input.a, ~0u, ~_wgslsmith_sub_u32(select(arg_2.x, 11783u, true) & ~4294967295u, ~(~6030u)), -vec3<i32>(reverseBits(u_input.d.x), _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(u_input.d.x, arg_1.a)), 1i));
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(72585u, ~u_input.a);
    var var_1 = func_2(2147483647i << (~(~firstLeadingBit(u_input.a)) % 32u), Struct_1(arg_0.x, 4294967295u, u_input.a, 1u, _wgslsmith_div_vec3_i32(min(vec3<i32>(arg_0.x, 22268i, 0i), ~vec3<i32>(25093i, -2147483647i, 18222i)), vec3<i32>(max(u_input.d.x, -2147483647i), i32(-1i) * -19534i, _wgslsmith_div_i32(arg_0.x, u_input.c.x)))), countOneBits(~(~vec4<u32>(u_input.a, 1u, 1u, 65533u)) & (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 85476u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)) & ~vec4<u32>(24892u, 1u, 27118u, u_input.a))));
    var var_2 = ~max(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c, 57292u) | vec2<u32>(u_input.a, 34104u), vec2<u32>(var_1.d, var_1.c)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_1.d, u_input.a))));
    var_2 = vec2<u32>(u_input.a & 1u, u_input.a);
    let var_3 = Struct_1(~u_input.c.x, ~(~14026u), ~44034u, var_2.x, var_1.e);
    return !vec2<bool>(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.b.x, 4294967295u, 73549u, 4294967295u, ~_wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.c.x, -16816i), u_input.c)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-66153i, 1i, u_input.b.x), u_input.c), vec3<i32>(u_input.b.x, 11479i, u_input.b.x))));
    let var_1 = _wgslsmith_clamp_i32(max(28543i, var_0.e.x), -u_input.b.x, -2147483647i);
    let var_2 = ~(~(~4294967295u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, -1033f, 683f, -1207f) + vec4<f32>(-681f, 442f, 261f, -431f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 442f, 1000f, 721f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1387f, 242f, 383f, 339f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, -1020f, 851f, -1637f) + vec4<f32>(-404f, -134f, 2262f, 700f)))), false)));
    var var_4 = vec4<bool>(true, any(vec3<bool>(true != (var_3.x <= var_3.x), !all(vec3<bool>(true, true, true)), ~15625u == (var_0.d >> (2922u % 32u)))), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec2<bool>(false, true)), false), any(func_1(vec2<i32>(var_0.a, var_1))))), true);
    var var_5 = _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.d.x, var_0.e.x, 12387i) << (_wgslsmith_div_u32(var_0.b, 4294967295u) % 32u)), u_input.b.x, abs(-2147483647i)), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, vec2<u32>(select(0u, ~_wgslsmith_mult_u32(var_0.b, 1u), false), var_0.d), 0i);
}

