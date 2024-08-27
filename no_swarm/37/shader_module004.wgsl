struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x ^ arg_0.x, u_input.b, arg_0.x), arg_0.xxw, -arg_0.wxy)) << (~(firstTrailingBit(max(vec3<u32>(75096u, 4294967295u, 39520u), vec3<u32>(48292u, 3825u, 56127u))) | firstLeadingBit(vec3<u32>(1u, 96794u, 44983u))) % vec3<u32>(32u));
    var var_1 = vec4<bool>(false, (true && (false && arg_2)) || arg_2, true & all(vec4<bool>(true, !arg_2, !arg_2, arg_2)), any(vec4<bool>(select(any(vec3<bool>(true, true, arg_2)), any(vec4<bool>(true, arg_2, false, true)), any(vec2<bool>(false, true))), arg_2, var_0.x <= ~2147483647i, false)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f + -1144f))));
    var var_3 = firstLeadingBit(abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(86500u, 0u, 20333u, 54448u)), vec4<u32>(~34496u, 22914u, 1u, 4294967295u))));
    var var_4 = ~(_wgslsmith_add_i32(~(~var_0.x), 0i) << ((76948u << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 74501u, 124533u, 44506u)), vec4<u32>(53928u, 18746u, 100388u, 1u)) % 32u)) % 32u));
    return vec2<bool>(any(var_1.yy), false);
}

fn func_2() -> Struct_1 {
    var var_0 = select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), all(select(vec2<bool>(true, true), func_3(vec4<i32>(0i, u_input.b, -1i, u_input.a), vec4<f32>(870f, -1000f, 767f, -1176f), false, vec2<f32>(108f, -1537f)), select(true, true, false))), true, true), !vec4<bool>(true, !all(vec4<bool>(true, true, false, false)), true, true), ~_wgslsmith_add_i32(u_input.a & u_input.b, u_input.a) < firstTrailingBit(i32(-1i) * -u_input.a));
    var_0 = vec4<bool>(!any(select(!vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, true, true, true), var_0.x), u_input.a != u_input.a)), _wgslsmith_f_op_f32(-348f * _wgslsmith_f_op_f32(ceil(-282f))) <= _wgslsmith_f_op_f32(select(334f, 822f, false)), var_0.x, var_0.x);
    var_0 = select(!vec4<bool>(var_0.x, var_0.x, !var_0.x && func_3(vec4<i32>(-2147483647i, u_input.a, -54284i, u_input.a), vec4<f32>(-642f, -511f, 259f, -966f), var_0.x, vec2<f32>(-108f, -616f)).x, true), vec4<bool>(any(vec4<bool>(var_0.x || false, false || var_0.x, true, all(vec2<bool>(var_0.x, var_0.x)))), any(vec2<bool>(var_0.x, var_0.x)) || any(!var_0.yxw), false, false), any(!var_0.wxy));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1111f));
    var var_2 = firstTrailingBit(firstTrailingBit(~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 26172u), vec2<u32>(1u, 0u)))));
    return Struct_1(~_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(8514i, u_input.a)), min(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.a, -1i))) | vec2<i32>(u_input.b, _wgslsmith_mult_i32(reverseBits(-2147483647i), ~u_input.b)), 0i, var_0.zz);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1437f)))), -428f)));
    var var_1 = true;
    var var_2 = _wgslsmith_mod_i32(reverseBits(25519i), u_input.a);
    let var_3 = vec3<u32>(abs(_wgslsmith_div_u32(~(~1u), ~_wgslsmith_clamp_u32(70264u, 1u, 4294967295u))), 10319u, _wgslsmith_dot_vec4_u32(~reverseBits(select(vec4<u32>(49643u, 0u, 20496u, 0u), vec4<u32>(0u, 1u, 58755u, 22604u), vec4<bool>(false, false, false, false))), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_4 = func_2();
    return reverseBits(var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, u_input.b, -2147483647i), -vec3<i32>(u_input.a, 25429i, -11235i), ~vec3<i32>(-1i, u_input.b, -1i)) >> (vec3<u32>(~0u, func_1(), ~(~4260u)) % vec3<u32>(32u)), vec3<i32>(func_2().b, 19924i, _wgslsmith_mod_i32(~0i >> (1u % 32u), u_input.b)));
    var_0 = -vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(var_0.x), u_input.b << (0u % 32u)), _wgslsmith_div_i32(1i, -u_input.b), var_0.x) | vec3<i32>(var_0.x, u_input.a, -(i32(-1i) * -9131i) | u_input.b);
    let var_1 = all(select(vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec2<bool>(false, false)), func_3(firstTrailingBit(vec4<i32>(23165i, var_0.x, 28411i, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-312f, 1593f, -1910f, -1536f))), all(vec2<bool>(false, true)), vec2<f32>(1f, 1f)).x), vec2<bool>(select(true, select(false, true, true), true), true)));
    var var_2 = func_2();
    var_0 = min((vec3<i32>(-21283i & var_0.x, _wgslsmith_add_i32(1i, -9711i), var_0.x) | _wgslsmith_mod_vec3_i32(-vec3<i32>(4982i, u_input.a, -1i), reverseBits(vec3<i32>(u_input.a, var_0.x, -18938i)))) ^ ~(~(vec3<i32>(var_0.x, -1i, u_input.a) & vec3<i32>(-15751i, 23124i, var_2.a.x))), vec3<i32>(_wgslsmith_clamp_i32(reverseBits(~u_input.a), _wgslsmith_div_i32(var_0.x, -26480i) & ~13540i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 27590i, var_2.b), vec3<i32>(-13376i, 5376i, var_0.x)) ^ ~2147483647i), -(~(var_0.x & var_2.b)), countOneBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(33791i, var_0.x), countOneBits(var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(20385i, 1i, var_2.b), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, 14814i, var_2.b) & vec3<i32>(var_0.x, var_0.x, var_2.b), ~max(vec3<i32>(u_input.a, -1i, -1i), vec3<i32>(u_input.a, var_2.b, 0i))), !vec3<bool>(func_3(vec4<i32>(var_2.b, -1i, 0i, var_0.x), vec4<f32>(-1753f, 614f, -921f, -164f), var_1, vec2<f32>(3039f, 1000f)).x, true, var_2.c.x)), 1u, vec4<f32>(-1789f, -767f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -824f))), _wgslsmith_div_f32(1178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1741f - -179f)))), 1u, vec2<i32>(u_input.b, (u_input.b << (_wgslsmith_div_u32(73906u, 65912u) % 32u)) | ~_wgslsmith_mod_i32(-2147483647i, 2147483647i)));
}

