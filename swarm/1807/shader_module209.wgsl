struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = vec2<u32>(countOneBits(~1u), 1u);
    var var_1 = select(max(~((vec3<u32>(var_0.x, var_0.x, var_0.x) & vec3<u32>(var_0.x, var_0.x, var_0.x)) >> (~vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))), ~(~(~vec3<u32>(60356u, var_0.x, var_0.x)))), select(vec3<u32>(~56254u, reverseBits(64980u), _wgslsmith_mult_u32(select(5240u, var_0.x, true), countOneBits(var_0.x))), ~firstTrailingBit(min(vec3<u32>(24473u, 4294967295u, var_0.x), vec3<u32>(5060u, 1u, var_0.x))), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), vec3<bool>(!(!any(vec3<bool>(false, false, true))), true, !all(vec2<bool>(true, true))));
    var_1 = vec3<u32>(var_1.x, var_1.x, _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(6943u << (var_1.x % 32u), 63642u)), ~var_1.x));
    var var_2 = Struct_4(Struct_3(Struct_1(select(vec2<bool>(false, false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<i32>(-u_input.a, i32(-1i) * -2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -1i), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 9074i, -6071i), vec3<i32>(u_input.a, -1i, u_input.a))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 1u, var_0.x), vec3<u32>(12044u, var_1.x, var_0.x), vec3<u32>(var_1.x, 1u, 4635u))), 21561u, Struct_2(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_mult_i32(u_input.a ^ _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), abs(vec3<i32>(u_input.a, -1i, -14724i))), ~(i32(-1i) * -u_input.a)), Struct_3(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), reverseBits(vec2<i32>(u_input.a, -42414i)), u_input.a, abs(-vec3<i32>(u_input.a, -32568i, -11283i)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_1.x, 51097u), vec3<u32>(0u, var_1.x, var_1.x) << (vec3<u32>(var_0.x, var_1.x, 0u) % vec3<u32>(32u)))), var_1.x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f * -127f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1747f, 338f, -121f))))));
    let var_3 = 2147483647i << (var_1.x % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.c.a)) - -740f))), var_2.d.x)));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = ~4294967295u;
    let var_1 = firstTrailingBit(vec4<i32>(~_wgslsmith_sub_i32(-29678i, 11375i), -3520i, -36194i, -14047i));
    var_0 = max(7802u | ~arg_0, 4294967295u);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1144f, 1296f, true)))))));
    let var_3 = _wgslsmith_dot_vec3_i32(-countOneBits(var_1.zzw), (abs(countOneBits(vec3<i32>(0i, -2147483647i, 0i))) >> (vec3<u32>(arg_0, 34736u, firstTrailingBit(0u)) % vec3<u32>(32u))) ^ firstTrailingBit(var_1.zxw));
    return var_1.xxz;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = -(~func_2(~23693u) | _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-23152i, 1i, arg_0) >> (vec3<u32>(1u, 1u, 21110u) % vec3<u32>(32u))), select(~vec3<i32>(arg_0, arg_0, 2147483647i), vec3<i32>(u_input.a, -11193i, 10244i), vec3<bool>(false, true, false)), -vec3<i32>(-31709i, 1i, u_input.a)));
    let var_1 = !select(vec4<bool>(true, any(vec2<bool>(true, true)), false, true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), true)));
    let var_2 = vec2<i32>(~arg_0, -arg_0) << (abs(~vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1185f))));
    var var_4 = vec4<i32>(i32(-1i) * -57957i, var_0.x, -1i, u_input.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_3)) + -1921f)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 70959i;
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a) ^ vec3<i32>(-6483i, u_input.a, 43137i), -vec3<i32>(40409i, u_input.a, -31943i)))) + _wgslsmith_f_op_f32(f32(-1f) * -1141f)));
    let var_3 = false;
    var var_4 = _wgslsmith_add_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(29299u, 63160u, 2236u, 1u)) & (_wgslsmith_dot_vec2_u32(vec2<u32>(64756u, 1u), vec2<u32>(6304u, 4294967295u)) >> (967u % 32u)), _wgslsmith_add_u32(~103029u, min(_wgslsmith_sub_u32(4294967295u, 4294967295u), 1u)), var_3), ~(~1u));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

