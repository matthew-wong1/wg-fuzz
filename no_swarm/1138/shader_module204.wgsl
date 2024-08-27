struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> u32 {
    return 15597u;
}

fn func_3() -> u32 {
    let var_0 = Struct_2(firstTrailingBit(~(-(2147483647i << (u_input.a % 32u)))));
    var var_1 = -(~vec2<i32>(~_wgslsmith_div_i32(var_0.a, 0i), -firstLeadingBit(var_0.a)));
    var_1 = vec2<i32>(-2263i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(var_0.a, 2147483647i), ~vec2<i32>(var_0.a, var_0.a), vec2<bool>(true, true)), vec2<i32>(~_wgslsmith_sub_i32(0i, -2147483647i), 39742i)));
    var var_2 = Struct_3(1i);
    return 1u;
}

fn func_1(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = Struct_3(0i);
    let var_1 = abs(~min(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 24380u), vec2<u32>(u_input.a, u_input.a)), ~(~vec2<u32>(30452u, u_input.a))));
    var var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -441f) + 883f)), _wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2172f) + -879f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2181f))))), -801f));
    var_2 = -(~_wgslsmith_mult_i32(firstLeadingBit(arg_0.a), var_0.a)) & ~(var_0.a | firstLeadingBit(firstLeadingBit(-66247i)));
    return vec4<u32>(~min(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, 60650u), u_input.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 27617u), func_2(vec3<bool>(false, false, true), vec4<i32>(var_0.a, arg_0.a, arg_0.a, -560i)))), ~u_input.a, 0u, abs(~func_3() << (var_1.x % 32u)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = arg_2.a.a | 25065i;
    let var_1 = _wgslsmith_dot_vec3_i32(-arg_2.c.xyx, arg_2.c.wzx) == min(arg_2.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(abs(arg_2.c.zw), _wgslsmith_clamp_vec2_i32(arg_2.c.zz, arg_2.c.wx, vec2<i32>(arg_2.a.a, -1i))), select(-vec2<i32>(arg_2.a.a, -57505i), abs(arg_2.c.yz), true)));
    var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(~11579i | (arg_2.a.a ^ arg_2.c.x), _wgslsmith_add_i32(arg_2.a.a, arg_2.c.x) >> (1u % 32u)), abs(vec2<i32>(-1i, _wgslsmith_clamp_i32(arg_2.a.a, -2147483647i, -15001i)))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.c.yw, firstLeadingBit(vec2<i32>(arg_2.a.a, arg_2.a.a))), arg_2.c.zw ^ arg_2.c.zz, -max(arg_2.c.xy, arg_2.c.zw))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.x, arg_2.e.x, var_1)) * arg_2.b.x) + -1122f))));
    var var_3 = vec4<f32>(arg_2.e.x, arg_2.e.x, arg_2.e.x, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(select(arg_2.e.x, 314f, _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x) >= arg_2.b.x))));
    return ~min(vec3<u32>(func_3(), 7549u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_1.x, ~0u, ~arg_2.d), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_3.x), arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(~4294967295u, 32176u), 1u, u_input.a);
    var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(max(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_0.x, u_input.a), vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(1u, countOneBits(u_input.a), _wgslsmith_div_u32(0u, 39046u))), min(~firstTrailingBit(vec3<u32>(var_0.x, var_0.x, 4294967295u)), func_4(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), func_1(Struct_3(0i)), Struct_4(Struct_3(-2147483647i), vec2<f32>(622f, -1649f), vec4<i32>(-2147483647i, -28024i, -839i, -8578i), 1u, vec4<f32>(-771f, 896f, 1270f, -1738f)), vec3<u32>(1u, 1u, 2049u) | vec3<u32>(40419u, u_input.a, 74860u)))), ~select(~vec3<u32>(var_0.x, 21261u, var_0.x), ~vec3<u32>(13181u, 26411u, 0u), true) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 58717u, var_0.x) & reverseBits(vec3<u32>(24029u, var_0.x, u_input.a)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, 44155u), vec3<u32>(53119u, u_input.a, u_input.a))));
    var_0 = countOneBits(~vec3<u32>(func_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec4<i32>(0i, 27480i, 16674i, 1i)), var_0.x, ~u_input.a & ~var_0.x));
    var_0 = ~max(vec3<u32>(~(~var_0.x), 1u, var_0.x), firstTrailingBit(~(~vec3<u32>(var_0.x, 24806u, 1u))));
    var_0 = _wgslsmith_sub_vec3_u32(func_4(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, false))), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, true, false))), true), reverseBits(vec4<u32>(1u, var_0.x, reverseBits(u_input.a), min(43231u, 8805u))), Struct_4(Struct_3(0i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1418f, -154f)), _wgslsmith_sub_vec4_i32(vec4<i32>(25605i, 1632i, -26248i, -20989i), ~vec4<i32>(0i, -41442i, -27283i, 2147483647i)), max(~40305u, _wgslsmith_clamp_u32(var_0.x, var_0.x, u_input.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1046f, 109f, -690f, 1343f) + vec4<f32>(882f, -1526f, -1612f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-334f, -374f, -657f, -1550f)))), ~(~(~vec3<u32>(u_input.a, 4294967295u, u_input.a)))), ~select(select(countOneBits(vec3<u32>(46067u, var_0.x, 1882u)), vec3<u32>(u_input.a, 1u, var_0.x) ^ vec3<u32>(1u, var_0.x, u_input.a), true), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 61258u, 0u), vec3<u32>(0u, u_input.a, 82329u)), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)))), min(func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, max(u_input.a, u_input.a), ~0u), countOneBits(vec3<u32>(64144u, 0u, u_input.a)))), 0i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f * -324f)))))));
}

