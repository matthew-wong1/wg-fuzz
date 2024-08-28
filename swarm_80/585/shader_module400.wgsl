struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 55481i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = ~arg_0.c.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b, arg_0.b, arg_0.b))))))));
    let var_1 = ~(~(~(~vec2<u32>(4294967295u, 21053u))));
    global0 = arg_0.c.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1123f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, arg_0.b, 1070f))))))))));
    return abs(_wgslsmith_clamp_i32(arg_0.c.x << (_wgslsmith_dot_vec2_u32(var_1 | var_1, abs(vec2<u32>(u_input.a, var_1.x))) % 32u), firstLeadingBit(select(arg_0.c.x & arg_0.c.x, 25732i, true)), ~(-2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec2_i32(~vec2<i32>(min(min(var_0.c.c.x, var_0.d.x), _wgslsmith_dot_vec3_i32(arg_0.c.c.yyy, arg_0.c.c.xyz)), -(i32(-1i) * -2147483647i)), vec2<i32>(func_3(Struct_1(arg_0.c.a, _wgslsmith_div_f32(arg_0.c.b, 280f), _wgslsmith_sub_vec4_i32(var_0.c.c, arg_1.c.c))), _wgslsmith_dot_vec4_i32(arg_0.c.c, var_0.a)));
    let var_2 = arg_1.c.b;
    global0 = -31756i;
    let var_3 = _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(arg_1.c.b + arg_1.c.b));
    return arg_2.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_3.c | _wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_3.c.x, -26196i, 43541i, arg_3.c.x) ^ arg_3.c), ~vec4<i32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, -1i)), -3391i, arg_3, ~firstTrailingBit(vec3<i32>(arg_3.c.x, firstTrailingBit(30152i), 2147483647i)));
    var var_1 = ~arg_3.c.yww;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(724f - -911f)) * _wgslsmith_f_op_f32(-var_0.c.b)))));
    var var_3 = all(arg_2);
    var var_4 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(2147483647i, i32(-1i) * -1i), var_1.x, firstLeadingBit(50254i) << ((4294967295u | arg_3.a) % 32u), reverseBits(arg_3.c.x)), var_0.c.c, countOneBits(vec4<i32>(50656i, _wgslsmith_div_i32(var_0.d.x, arg_3.c.x), arg_3.c.x, _wgslsmith_mod_i32(var_0.c.c.x, 0i)))), 1i, arg_3, max(arg_3.c.yzw, -reverseBits(vec3<i32>(arg_3.c.x, 2147483647i, arg_3.c.x))));
    return -1i;
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-694f * _wgslsmith_f_op_f32(-1315f + _wgslsmith_f_op_f32(ceil(-588f))));
    return func_4(_wgslsmith_f_op_f32(431f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(816f, 1511f))) * 124f)), select(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, all(vec2<bool>(false, false))), vec2<bool>(any(vec2<bool>(arg_0, true)), 1u <= u_input.b)), vec2<bool>(all(vec2<bool>(true, arg_0)), !arg_0), !(!any(vec4<bool>(true, arg_0, arg_0, arg_0)))), !vec3<bool>(arg_0, !func_2(Struct_2(vec4<i32>(-2147483647i, 2147483647i, 0i, 2147483647i), 1i, Struct_1(84655u, -700f, vec4<i32>(-31434i, 0i, 2147483647i, 2147483647i)), vec3<i32>(41677i, 9778i, -23926i)), Struct_2(vec4<i32>(-1i, 20889i, -45153i, -2147483647i), -29017i, Struct_1(0u, 422f, vec4<i32>(1i, 2147483647i, 11975i, -4446i)), vec3<i32>(-2147483647i, 0i, 1i)), vec2<bool>(arg_0, arg_0)), func_2(Struct_2(vec4<i32>(-51427i, -2147483647i, 1i, -2147483647i), -2147483647i, Struct_1(0u, -1427f, vec4<i32>(0i, 1i, 0i, 28139i)), vec3<i32>(-1i, 2147483647i, 15993i)), Struct_2(vec4<i32>(22768i, -1i, -49693i, 34586i), 2147483647i, Struct_1(u_input.b, -958f, vec4<i32>(-1i, -56546i, 22784i, -20786i)), vec3<i32>(-11898i, 88353i, 70112i)), vec2<bool>(arg_0, false))), Struct_1(_wgslsmith_mod_u32(u_input.b, 17644u), -169f, abs(vec4<i32>(1i, 1i, 1i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f)))))), vec4<i32>(0i, _wgslsmith_add_i32(-11102i, _wgslsmith_add_i32(func_1(true), -46300i)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 0i, 2147483647i), reverseBits(-2147483647i)) & _wgslsmith_div_i32(-2147483647i, -2147483647i), abs(~(-1i))));
    let var_1 = Struct_2(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-7915i, -8703i, var_0.c.x, 0i), vec4<i32>(var_0.c.x, -27008i, var_0.c.x, 2147483647i)), -13278i, var_0.c.x | var_0.c.x, 15755i) >> (vec4<u32>(abs(1u), ~(~var_0.a), 18210u, 0u) % vec4<u32>(32u)), ~2147483647i, Struct_1(select(_wgslsmith_div_u32(1u, u_input.b), u_input.b, all(vec4<bool>(true, true, false, true))) | _wgslsmith_clamp_u32(reverseBits(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(4294967295u, var_0.a)), u_input.a ^ 43671u), _wgslsmith_div_f32(-1393f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b * 985f), _wgslsmith_f_op_f32(656f - -498f))), var_0.c), firstLeadingBit(vec3<i32>(-var_0.c.x, var_0.c.x | -var_0.c.x, firstTrailingBit(-1i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.c.b)), 1000f, -381f, _wgslsmith_f_op_f32(select(1000f, 1051f, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1108f, 442f, var_0.b, var_0.b))))))));
    var var_3 = vec4<bool>(false, (true & all(vec3<bool>(false, true, false))) & any(vec2<bool>(true, true)), false, true);
    let var_4 = _wgslsmith_div_vec2_u32(~vec2<u32>(var_1.c.a << (_wgslsmith_mult_u32(var_0.a, 1u) % 32u), _wgslsmith_add_u32(25923u, countOneBits(var_0.a))), ~vec2<u32>(select(var_1.c.a, var_1.c.a, false), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 32304u)), vec2<u32>(35627u, var_0.a) | vec2<u32>(var_0.a, var_0.a))));
    let var_5 = ~(~var_4);
    let var_6 = !select(select(!vec4<bool>(var_3.x, false, false, true), select(vec4<bool>(var_3.x, false, var_3.x, true), select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(false, true, var_3.x, var_3.x), var_3.x), true), !select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, false, false, var_3.x), var_3.x)), vec4<bool>(~0u < var_4.x, var_3.x, true, true), true);
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 0u, 0u), firstLeadingBit(vec3<u32>(7829u, u_input.a, 63705u))), ~select(vec3<u32>(var_1.c.a, var_0.a, 1u), vec3<u32>(1u, 4294967295u, var_0.a), true)), reverseBits(vec3<u32>(u_input.b, 7933u, max(33646u, u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-226f, var_0.b, var_6.x)) + _wgslsmith_f_op_f32(var_2.x + 1127f)))), -vec4<i32>(i32(-1i) * -1990i, firstLeadingBit(_wgslsmith_clamp_i32(var_0.c.x, -755i, var_0.c.x)), ~(22552i >> (var_4.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.x, 2147483647i, -27712i), vec3<i32>(var_0.c.x, var_0.c.x, var_1.d.x)))));
    var_3 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_1.d.x, vec3<f32>(var_0.b, var_0.b, -229f));
}

