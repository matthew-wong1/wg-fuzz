struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_add_u32(reverseBits(~0u), ~min(arg_3.x, ~(~arg_3.x)));
    var_1 = ~1u;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, arg_3.x, ~(~firstTrailingBit(arg_3.x)), ~0u), vec4<u32>(abs(~4294967295u), ~(~(~33635u)), ~arg_3.x, 0u));
    var_1 = arg_3.x | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 18536u, ~arg_3.x, ~arg_3.x), firstLeadingBit(vec4<u32>(1u, 11180u, 1u, arg_3.x)) >> (~vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x) % vec4<u32>(32u)));
    return u_input.b;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = false;
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(func_3(Struct_2(arg_0.a.x, arg_0.a.x, vec4<i32>(u_input.b, u_input.b, u_input.b, -66569i), 10048i, vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1017f, arg_0.a.x, -1000f)), arg_0, firstTrailingBit(vec2<u32>(1u, 0u))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.b, u_input.a), ~1i)), -select(vec2<i32>(u_input.c, u_input.b) & vec2<i32>(u_input.c, u_input.b), ~vec2<i32>(u_input.c, -1i), all(vec4<bool>(false, false, var_0, true)))), _wgslsmith_mult_vec2_i32(~vec2<i32>(60535i, u_input.a) | firstTrailingBit(vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(42230i, u_input.b))) & vec2<i32>(1i, 1i));
    let var_2 = _wgslsmith_clamp_u32(1261u << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(21516u, 14506u, 18146u), vec3<u32>(0u, 20693u, 1u)) ^ ~0u) % 32u), _wgslsmith_div_u32(0u, countOneBits(max(select(4294967295u, 27307u, var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 21124u, 0u), vec3<u32>(18179u, 4294967295u, 0u))))), ~reverseBits(2599u));
    let var_3 = _wgslsmith_mult_vec3_u32(select(firstTrailingBit(vec3<u32>(~4599u, ~61878u, var_2)), reverseBits(vec3<u32>(select(var_2, 0u, var_0), _wgslsmith_mult_u32(171021u, var_2), ~1u)), any(vec4<bool>(true, true, var_0 || false, true))), countOneBits(vec3<u32>(_wgslsmith_mult_u32(abs(4294967295u), abs(var_2)), _wgslsmith_add_u32(24600u >> (var_2 % 32u), _wgslsmith_mod_u32(var_2, var_2)), _wgslsmith_mult_u32(4294967295u, ~var_2))));
    var var_4 = var_0;
    return _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2, 16557u, 0u), var_3), vec3<u32>(firstLeadingBit(7597u), abs(var_2), _wgslsmith_clamp_u32(var_2, var_2, 4294967295u))), var_3 << (vec3<u32>(_wgslsmith_div_u32(var_2, reverseBits(var_3.x)), min(~24612u, _wgslsmith_clamp_u32(86523u, var_3.x, var_3.x)), ~(~var_2)) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    let var_0 = ~(~countOneBits(vec3<u32>(4294967295u, arg_0, 26600u))) | ~(_wgslsmith_add_vec3_u32(~arg_1, _wgslsmith_mult_vec3_u32(vec3<u32>(4876u, 17945u, arg_0), vec3<u32>(21671u, 4294967295u, 13017u))) & (countOneBits(vec3<u32>(0u, arg_0, arg_0)) << (select(arg_1, vec3<u32>(arg_1.x, 4294967295u, 1u), vec3<bool>(true, false, false)) % vec3<u32>(32u))));
    let var_1 = Struct_2(1981f, _wgslsmith_f_op_f32(select(-461f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(664f, _wgslsmith_f_op_f32(ceil(405f)))), (abs(u_input.a) <= 0i) | any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))), (vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2063i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.c)), _wgslsmith_clamp_i32(u_input.a, u_input.a, 20616i)) >> (((vec4<u32>(2628u, 1u, 0u, arg_1.x) ^ vec4<u32>(72447u, arg_1.x, 19337u, arg_1.x)) ^ abs(vec4<u32>(0u, arg_0, 1u, arg_0))) % vec4<u32>(32u))) ^ select(vec4<i32>(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, u_input.a, 1i), vec4<i32>(-57588i, u_input.a, u_input.a, 1i)), i32(-1i) * -35022i, -7066i), countOneBits(vec4<i32>(37927i, u_input.c, -69074i, -32928i)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), u_input.b, select(vec2<bool>(true, all(vec3<bool>(false, false, true))), !vec2<bool>(select(false, true, false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(all(vec2<bool>(true, false)), true, all(vec2<bool>(false, true))))));
    var var_2 = vec3<i32>(u_input.c, firstLeadingBit(_wgslsmith_add_i32(u_input.a, ~1i | ~u_input.c)), ~(-(var_1.d ^ -u_input.c)));
    var_2 = vec3<i32>(u_input.c, firstTrailingBit(~(i32(-1i) * -var_2.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-8061i, -u_input.b), 27782i));
    var_2 = vec3<i32>(_wgslsmith_mult_i32(func_3(Struct_2(var_1.a, _wgslsmith_div_f32(-1556f, -381f), vec4<i32>(u_input.c, -38432i, var_1.c.x, 2147483647i) | vec4<i32>(25073i, -2147483647i, u_input.b, 0i), -2147483647i, !vec2<bool>(true, var_1.e.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(556f, 424f, 2681f) * vec3<f32>(var_1.b, var_1.b, var_1.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-664f, var_1.b, -1495f), vec3<f32>(-573f, var_1.a, var_1.b), var_1.e.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -2251f))), ~(~vec2<u32>(1u, 23122u))), var_2.x), i32(-1i) * -2147483647i, _wgslsmith_sub_i32(-_wgslsmith_mod_i32(abs(0i), abs(u_input.a)), ~var_1.d));
    return ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -13723i, 19598i, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(7953u, 5608u, 47967u, var_0.x), vec4<u32>(arg_0, arg_0, 74590u, arg_1.x)) % vec4<u32>(32u)), var_1.c));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f))))));
    var var_1 = arg_1.x;
    var_1 = arg_1.x;
    var_1 = arg_1.x;
    let var_2 = -_wgslsmith_div_i32(26617i, u_input.c);
    return vec3<i32>(_wgslsmith_mult_i32(func_4(4294967295u, func_2(Struct_1(vec2<f32>(var_0, var_0)))), _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2, 0i, 1i), vec3<i32>(var_2, 0i, u_input.c), vec3<i32>(-48726i, 7827i, -2147483647i)), -vec3<i32>(8737i, u_input.c, 1i))), _wgslsmith_sub_i32(31563i, 0i), ~(-(-2147483647i >> (0u % 32u)) ^ min(_wgslsmith_mod_i32(var_2, u_input.a), 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_vec3_i32(select(func_1(vec2<bool>(false, false), vec2<u32>(21944u, 11877u)) & abs(vec3<i32>(2147483647i, 2147483647i, -46988i)), ~select(vec3<i32>(0i, 5478i, -16666i), vec3<i32>(9335i, u_input.c, u_input.a), vec3<bool>(true, true, true)), vec3<bool>(true, false, true)), firstTrailingBit(vec3<i32>(~u_input.b, u_input.c << (4294967295u % 32u), ~(-1i))));
    var var_1 = reverseBits(firstTrailingBit(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = ~reverseBits(vec3<u32>(1u, ~firstTrailingBit(0u), 0u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(743f - -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1242f)) - _wgslsmith_div_f32(1366f, 353f)))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3)))), var_3, ~(-select(-vec4<i32>(u_input.b, -2147483647i, -3882i, 2147483647i), vec4<i32>(32829i, var_0.x, u_input.b, -13477i), vec4<bool>(true, true, false, true))), abs(u_input.b), vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)) || (min(var_2.x, 43112u) <= (4294967295u << (var_2.x % 32u))), any(vec4<bool>(true, true, true, true))));
    var var_5 = ~(~_wgslsmith_div_u32(11376u, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)), _wgslsmith_f_op_f32(var_4.a - _wgslsmith_f_op_f32(2777f - var_4.b)), var_4.b)), _wgslsmith_clamp_vec3_u32(var_1.xxw, ~(~func_2(Struct_1(vec2<f32>(var_3, -108f)))), vec3<u32>(0u, firstLeadingBit(855u), _wgslsmith_clamp_u32(var_2.x, 1u, 0u)) << ((vec3<u32>(4140u, var_2.x, var_2.x) >> (max(var_1.xwz, vec3<u32>(50987u, 74167u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

