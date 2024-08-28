struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = select(~_wgslsmith_div_i32(_wgslsmith_clamp_i32(-4279i, 37868i, 2489i), abs(853i)), 16039i, false || any(vec3<bool>(false, true, false))) << (u_input.a % 32u);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(~0i, _wgslsmith_clamp_i32(1i, 2147483647i, 60080i)), 1i, abs(~(-1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -17721i, ~2147483647i, _wgslsmith_mod_i32(0i, 17709i)), vec4<i32>(-1i, ~(-3121i), _wgslsmith_mult_i32(6454i, 0i), 1i), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-10717i, 0i, 2649i, -2147483647i), vec4<i32>(-81217i, 9362i, -1i, -63976i), vec4<i32>(-26629i, 32623i, -33778i, 30459i)))), max(min(-1i, _wgslsmith_sub_i32(select(22703i, 0i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(32994i, 0i, -30895i, -2147483647i), vec4<i32>(2147483647i, -2147483647i, 51490i, 0i)))), -(~(-59251i))));
    var var_2 = _wgslsmith_mod_i32(1i, ~reverseBits(-2147483647i));
    var var_3 = arg_1;
    let var_4 = Struct_1(select(abs(arg_1.a), vec3<u32>(~var_3.a.x, ~(~arg_1.a.x), 1u), any(select(vec2<bool>(true, false), vec2<bool>(true, true), 1u <= u_input.a))));
    return true | any(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(any(vec3<bool>(false, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_3(arg_0, Struct_1(vec3<u32>(40726u, u_input.a, u_input.a)), -1109f)), vec2<bool>(false, all(vec2<bool>(true, true))));
    var var_1 = select(!(!select(!vec4<bool>(true, var_0.x, var_0.x, true), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true), true), true)), select(vec4<bool>(false, any(!vec3<bool>(var_0.x, var_0.x, false)), var_0.x, true), select(select(!vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, false, true, var_0.x), var_0.x), !(!vec4<bool>(var_0.x, true, false, false)), select(!vec4<bool>(var_0.x, false, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false), !vec4<bool>(var_0.x, false, false, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -26218i), ~vec2<i32>(-1i, -13698i)) != -31821i), vec4<bool>(var_0.x, (!var_0.x || false) || (_wgslsmith_clamp_i32(22881i, 1i, 13705i) != 1i), var_0.x && var_0.x, false | var_0.x));
    var var_2 = Struct_1(~(~vec3<u32>(~19464u, 35088u, 1u)));
    var_2 = Struct_1(vec3<u32>(var_2.a.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), var_2.a.zz)), 35285u));
    var_1 = vec4<bool>(true, (-504f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-185f * 263f) - _wgslsmith_f_op_f32(-arg_0.x))) && !var_0.x, false, true);
    return -2147483647i;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = -max(vec4<i32>(arg_2.x, -1i, 5389i, arg_2.x) | ~vec4<i32>(2147483647i, arg_2.x, arg_2.x, 13483i), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, -2147483647i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, arg_2.x, arg_2.x, -10715i) & vec4<i32>(arg_2.x, -2147483647i, -22350i, arg_2.x))) >> (abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a, u_input.a & 4294967295u, u_input.a)) % vec4<u32>(32u));
    var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.xwy, -var_0.yzw), ~2147483647i << (u_input.a % 32u), arg_2.x, 0i)) & firstTrailingBit(firstLeadingBit(vec4<i32>(arg_2.x, arg_2.x, min(2147483647i, -1i), -31673i)));
    var var_1 = vec4<u32>(~(~_wgslsmith_mult_u32(u_input.a, u_input.a)), ~(((u_input.a ^ u_input.a) >> (firstTrailingBit(u_input.a) % 32u)) & u_input.a), 33301u, ~101438u);
    var var_2 = _wgslsmith_f_op_f32(trunc(174f));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(abs(46001u), _wgslsmith_clamp_u32(0u, 0u, var_1.x)), _wgslsmith_clamp_u32(4294967295u, 35062u, var_1.x) & (var_1.x << (var_1.x % 32u))), (u_input.a >> (u_input.a % 32u)) >> (1u % 32u), ~var_1.x));
    return _wgslsmith_div_vec4_u32(vec4<u32>(abs(22995u), abs(u_input.a), firstTrailingBit(reverseBits(var_1.x)), var_1.x) ^ vec4<u32>(35973u, _wgslsmith_dot_vec2_u32(var_1.zz, var_1.zz) ^ 1u, 15654u, _wgslsmith_dot_vec3_u32(var_1.xzz | var_3.a, ~vec3<u32>(1u, u_input.a, u_input.a))), ~max(~vec4<u32>(30615u, 53240u, 1u, var_3.a.x) >> (vec4<u32>(1u, 1u, 52372u, 36029u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(23543u, var_1.x, 1u, var_1.x)), ~vec4<u32>(u_input.a, 4496u, u_input.a, var_3.a.x))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = ~reverseBits(func_4(_wgslsmith_f_op_f32(max(arg_0, -1000f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -976f, -726f) - vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec4<f32>(arg_0, arg_0, -334f, 369f))), vec2<i32>(2147483647i << (arg_2.a.x % 32u), func_2(vec3<f32>(-1425f, arg_0, 1973f)))));
    var var_1 = arg_2;
    var_1 = arg_2;
    var_1 = Struct_1(var_1.a);
    let var_2 = arg_0;
    return -abs(-abs(21177i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<i32>(-34842i, 1i), vec2<i32>(-_wgslsmith_div_i32(firstLeadingBit(0i), ~(-4206i)), -_wgslsmith_add_i32(func_1(1000f, false, Struct_1(vec3<u32>(u_input.a, 31665u, u_input.a))), ~14259i)), select(true, false, true));
    let var_1 = Struct_1(vec3<u32>(20984u, 32672u, u_input.a));
    var var_2 = ~var_1.a.x ^ u_input.a;
    var var_3 = Struct_1(~_wgslsmith_mult_vec3_u32(var_1.a, select(var_1.a << (vec3<u32>(0u, var_1.a.x, 0u) % vec3<u32>(32u)), ~var_1.a, vec3<bool>(true, true, true))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(60970i, var_3.a, _wgslsmith_div_vec3_f32(vec3<f32>(-423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(158f, -1143f))), 1868f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))));
}

