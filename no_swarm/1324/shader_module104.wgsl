struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(countOneBits(~vec3<u32>(1u, 4294967295u, max(1u, arg_0))));
    let var_1 = !vec4<bool>(true, !arg_1.x, arg_2.x, any(arg_2));
    var var_2 = -vec2<i32>(i32(-1i) * -1i, 1i);
    var_2 = vec2<i32>(var_2.x, u_input.b);
    var var_3 = Struct_2(var_0, 504f);
    return Struct_1(select(vec3<u32>(arg_0, var_3.a.a.x, select(_wgslsmith_div_u32(arg_0, 7829u), 10579u, false)), vec3<u32>(~(39091u & var_3.a.a.x), 62214u, var_3.a.a.x), false));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(func_2(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 33642u, 19689u)), arg_0.a.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, u_input.b == 2147483647i, true)), vec2<bool>(false, true)), _wgslsmith_f_op_f32(141f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = Struct_2(func_2(var_0.a.a.x, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false))), vec2<bool>(true, true)), 1266f);
    var_0 = Struct_2(Struct_1(arg_0.a.a), -510f);
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, u_input.b, 2147483647i) << (vec3<u32>(arg_2.a.a.x, arg_3.a.x, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(u_input.b, -1i, 2147483647i)) >> (reverseBits(u_input.a.x) % 32u), reverseBits(abs(~0i))));
    var var_1 = Struct_3(_wgslsmith_mod_u32(arg_2.a.a.x, _wgslsmith_clamp_u32(firstLeadingBit(arg_3.a.x), arg_3.a.x ^ 11138u, ~41579u) >> (arg_0.a.x % 32u)), any(!vec4<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, false, true, false)), true, true)), (vec3<i32>(arg_1, -2147483647i, _wgslsmith_div_i32(-2147483647i, u_input.b)) << (u_input.a % vec3<u32>(32u))) | firstTrailingBit(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, u_input.b, u_input.b), vec3<i32>(arg_1, 53796i, var_0), vec3<i32>(-7205i, var_0, -2147483647i)), vec3<i32>(17513i, var_0, var_0), vec3<bool>(true, true, true))), Struct_2(func_2(4294967295u, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), select(false, true, false))), -156f), Struct_2(Struct_1(arg_3.a), -1861f));
    var_1 = Struct_3(57162u, !var_1.b, reverseBits(_wgslsmith_sub_vec3_i32(var_1.c, ~var_1.c)), Struct_2(func_3(arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))), Struct_2(Struct_1((vec3<u32>(0u, 0u, arg_2.a.a.x) ^ vec3<u32>(arg_3.a.x, 44073u, arg_2.a.a.x)) >> (_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(1u, 52420u, arg_3.a.x)) % vec3<u32>(32u))), _wgslsmith_div_f32(arg_2.b, -201f)));
    var var_2 = vec2<u32>(~0u & u_input.a.x, countOneBits(_wgslsmith_mult_u32(55275u ^ ~arg_2.a.a.x, ~4294967295u)));
    let var_3 = vec3<f32>(var_1.e.b, arg_2.b, arg_2.b);
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = Struct_2(func_4(func_3(Struct_2(func_2(4294967295u, vec3<bool>(true, arg_0, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -651f))), firstTrailingBit(~(u_input.b << (u_input.a.x % 32u))), Struct_2(Struct_1(u_input.a), _wgslsmith_f_op_f32(ceil(-240f))), func_2(~u_input.a.x, !(!vec3<bool>(true, arg_0, arg_0)), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(false, true), vec2<bool>(false, arg_0)), false))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f))));
    var var_1 = ~u_input.a.x;
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(1u, u_input.a.x), 0u), vec2<u32>(countOneBits(_wgslsmith_sub_u32(46391u, 28200u)), 47442u)), abs(var_0.a.a.xy), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a & vec3<u32>(u_input.a.x, 63369u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 30489u), var_0.a.a)) | var_0.a.a.x, reverseBits(u_input.a.x)));
    var_1 = u_input.a.x;
    var_1 = 4294967295u;
    return ~func_3(Struct_2(Struct_1(vec3<u32>(1u, var_0.a.a.x, 4294967295u)), -1777f)).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_div_u32(~u_input.a.x, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, u_input.a.x << (1u % 32u))), u_input.a.x), vec3<u32>(u_input.a.x, ~(~_wgslsmith_mult_u32(u_input.a.x, 33623u)), 4294967295u));
    let var_1 = Struct_1(max(vec3<u32>(34896u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.xx), vec2<u32>(var_0.x, var_0.x) | vec2<u32>(var_0.x, u_input.a.x)), 1u), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_clamp_u32(1u, 20121u, 9672u), 1u, var_0.x))));
    var_0 = _wgslsmith_sub_vec3_u32(~(_wgslsmith_sub_vec3_u32(var_1.a, vec3<u32>(var_1.a.x, var_1.a.x, 0u)) << (u_input.a % vec3<u32>(32u))), u_input.a) ^ ~(~(vec3<u32>(var_0.x, 25436u, u_input.a.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), vec3<u32>(39060u, 1u, u_input.a.x))));
    var var_2 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), _wgslsmith_sub_i32(u_input.b, -2147483647i) <= 2147483647i));
    var_0 = vec3<u32>(var_0.x, firstTrailingBit(~abs(func_1(var_2.x))), 9084u);
    var_0 = u_input.a;
    var_0 = ~(u_input.a ^ vec3<u32>(var_1.a.x, 26571u, var_0.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_1.a.x, var_1.a.x ^ 1u), select(var_1.a, _wgslsmith_clamp_vec3_u32(var_1.a, func_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, var_1.a.x)), 1525f)).a, countOneBits(vec3<u32>(var_1.a.x, var_1.a.x, u_input.a.x))), select(!vec3<bool>(false, var_2.x, false), !vec3<bool>(true, var_2.x, var_2.x), !vec3<bool>(var_2.x, var_2.x, true)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(countOneBits(-31646i), 25024i, abs(u_input.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, min(vec3<u32>(var_1.a.x, 67914u, var_0.x), var_1.a) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 14073u), vec3<u32>(var_0.x, var_1.a.x, u_input.a.x), u_input.a) % vec3<u32>(32u))), ~func_3(Struct_2(var_1, 550f)).a, ((var_1.a >> (vec3<u32>(0u, u_input.a.x, var_1.a.x) % vec3<u32>(32u))) & _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, 14204u, var_0.x), vec3<u32>(1u, 29917u, 14733u))) | vec3<u32>(abs(u_input.a.x), 1u, var_0.x)));
}

