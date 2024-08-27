struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -26558i;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(~abs(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.a), ~u_input.a)));
    global0 = -1i;
    global0 = 0i;
    var var_1 = Struct_5(vec4<u32>(~abs(var_0.a << (4294967295u % 32u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 2919u), abs(vec2<u32>(u_input.a, u_input.a)))), ~(~_wgslsmith_mult_u32(1u, var_0.a)), 61688u | _wgslsmith_mult_u32(var_0.a, var_0.a << (56795u % 32u))), !any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1113f, 2068f)))))));
    return vec3<u32>(49141u, ~(~_wgslsmith_add_u32(var_0.a, var_1.a.x)) & var_0.a, ~4294967295u);
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(min(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 20355u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a))), func_3()), vec3<u32>(u_input.a, 5911u, max(u_input.a, u_input.a) & (4294967295u | u_input.a))), u_input.a & 289u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a & 0u, _wgslsmith_div_u32(36064u, u_input.a), 12150u << (u_input.a % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 0u) >> (vec3<u32>(14278u, 1u, 0u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a, u_input.a, 61521u)))), vec3<u32>(u_input.a >> (u_input.a % 32u), ~11305u, u_input.a)), ~(~vec3<u32>(u_input.a, ~12836u, 57452u >> (u_input.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(228f * -1143f), _wgslsmith_f_op_f32(274f + global1.x)) - -1000f)));
    var var_1 = Struct_2(Struct_1(~var_0.d << (var_0.d % vec3<u32>(32u)), 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, u_input.a), var_0.a.yx, vec2<bool>(true, true)), reverseBits(vec2<u32>(var_0.a.x, var_0.c))), u_input.a, reverseBits(~1u)), ~max(vec3<u32>(1u, var_0.d.x, var_0.a.x), vec3<u32>(u_input.a, var_0.b, u_input.a) | var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + -2370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f + var_0.e))))), 11836i, Struct_1(countOneBits(~vec3<u32>(var_0.c, u_input.a, 19005u)), max(firstLeadingBit(u_input.a), 1u), min(u_input.a, var_0.d.x), vec3<u32>(var_0.c, var_0.c, ~var_0.c), -649f), vec2<f32>(1000f, -196f), ~(~(~countOneBits(var_0.a.yy))));
    let var_2 = Struct_5(firstTrailingBit(select(vec4<u32>(75940u, 86469u, u_input.a, 82321u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, 0u, 6002u, 9634u), vec4<u32>(10128u, u_input.a, 28789u, 4294967295u)), ~vec4<u32>(u_input.a, 1u, 0u, 5051u), !any(vec3<bool>(false, true, true)))), arg_0.x > arg_0.x);
    return vec4<i32>(abs(reverseBits(_wgslsmith_sub_i32(i32(-1i) * -5241i, arg_0.x))), _wgslsmith_dot_vec3_i32(select(~arg_0.wwx | min(vec3<i32>(-2147483647i, -1i, var_1.b), vec3<i32>(22183i, -18737i, -2147483647i)), _wgslsmith_mod_vec3_i32(arg_0.zyw, -vec3<i32>(-49596i, arg_0.x, 0i)), select(!vec3<bool>(true, var_2.b, var_2.b), !vec3<bool>(true, var_2.b, false), all(vec3<bool>(false, var_2.b, true)))), arg_0.xzw), -min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 1i, var_1.b), arg_0.yyw, vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), arg_0.xzy), var_1.b), 0i);
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_i32(-arg_0.d.b, _wgslsmith_dot_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 22580i, 23916i, 37216i), vec4<i32>(19945i, 12880i, arg_0.d.b, 1i))), ~reverseBits(func_2(vec4<i32>(arg_0.d.b, 54060i, arg_0.d.b, arg_0.d.b)))));
    let var_1 = global1.x;
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_add_u32(arg_1.x, 4294967295u), 0u), _wgslsmith_div_vec3_u32(max(arg_0.d.a.d, arg_0.d.a.a), vec3<u32>(7525u, arg_1.x, arg_0.c.x))));
    var_2 = 1u;
    let var_3 = Struct_1(arg_0.d.c.a, func_3().x, ~(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, arg_1.x), u_input.a) | (~arg_1.x << (_wgslsmith_mod_u32(0u, 1u) % 32u))), reverseBits(arg_0.d.c.a << (firstTrailingBit(vec3<u32>(u_input.a, 1u, 34044u)) % vec3<u32>(32u))), -145f);
    return arg_0.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(0u, u_input.a, (~25411u >> (u_input.a % 32u)) | u_input.a, firstTrailingBit(_wgslsmith_mod_u32(u_input.a, u_input.a)));
    var_0 = ~(_wgslsmith_add_vec4_u32(vec4<u32>(abs(u_input.a), var_0.x, 48835u, u_input.a >> (41284u % 32u)), firstLeadingBit(reverseBits(vec4<u32>(1u, u_input.a, var_0.x, var_0.x)))) ^ firstLeadingBit(~(vec4<u32>(64286u, var_0.x, var_0.x, var_0.x) ^ vec4<u32>(var_0.x, 37056u, 35866u, 39031u))));
    var var_1 = min(~vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(var_0.x), var_0.x), ~(~1u), _wgslsmith_div_u32(1u, 0u >> (var_0.x % 32u)), var_0.x), ~max(~vec4<u32>(82426u, 83331u, 1u, 29712u) | ~vec4<u32>(u_input.a, var_0.x, 1u, 1u), vec4<u32>(var_0.x, ~var_0.x, abs(u_input.a), u_input.a)));
    var var_2 = _wgslsmith_sub_u32(1u, select(_wgslsmith_mult_u32(1u, ~2627u), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), var_1.yz), var_1.x), false));
    var var_3 = Struct_4(vec3<bool>(!select(15422u <= var_1.x, true, true), false, all(vec4<bool>(true, true, all(vec2<bool>(true, true)), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * global1.xz)))), select(vec2<u32>(u_input.a << (1u % 32u), _wgslsmith_div_u32(51518u, var_1.x)), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_0.x, 1u)), _wgslsmith_mult_u32(reverseBits(var_1.x), ~4294967295u)), !(!func_1(Struct_4(vec3<bool>(false, false, false), vec2<f32>(746f, -724f), vec2<u32>(var_0.x, var_0.x), Struct_2(Struct_1(vec3<u32>(var_0.x, u_input.a, var_1.x), 0u, var_1.x, var_0.ywx, global1.x), -10635i, Struct_1(var_0.xyw, var_1.x, 45936u, vec3<u32>(12025u, u_input.a, 1u), global1.x), global1.zy, var_0.yz)), vec4<u32>(var_0.x, 16788u, 1u, 14566u), false, vec3<f32>(-401f, -202f, global1.x)))), Struct_2(Struct_1(var_1.yxz, reverseBits(~var_0.x), var_1.x, abs(var_0.xyw), _wgslsmith_div_f32(-1055f, _wgslsmith_f_op_f32(-global1.x))), 0i, Struct_1(var_0.wyz, var_1.x, var_1.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, u_input.a, 0u), var_0.wyw), _wgslsmith_f_op_f32(-674f - -561f)), vec2<f32>(-1000f, -1249f), max(~(~var_0.zz), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(19965u, var_0.x)), _wgslsmith_add_vec2_u32(var_1.wy, vec2<u32>(23703u, var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.d.d.x)) - var_3.b.x), vec4<i32>(~func_2(max(vec4<i32>(var_3.d.b, var_3.d.b, var_3.d.b, -2147483647i), vec4<i32>(var_3.d.b, var_3.d.b, var_3.d.b, var_3.d.b))).x, var_3.d.b, var_3.d.b, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(24700i, var_3.d.b), vec2<i32>(var_3.d.b, var_3.d.b)) | var_3.d.b)));
}

