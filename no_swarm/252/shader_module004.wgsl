struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = vec4<u32>(countOneBits(abs(~13204u)), _wgslsmith_add_u32(_wgslsmith_add_u32(~(~0u), _wgslsmith_mult_u32(1u, select(60787u, 35421u, false))), ~110231u), _wgslsmith_mult_u32(~firstLeadingBit(1u), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(98657u, 31277u, 1u), vec3<u32>(24509u, 4294967295u, 1u)) | 1u, 1u)), ~_wgslsmith_div_u32(~abs(53977u), _wgslsmith_div_u32(4294967295u, ~35643u)));
    var_0 = ~(~(~select(countOneBits(vec4<u32>(9090u, var_0.x, 87180u, 99753u)), vec4<u32>(36537u, var_0.x, var_0.x, 18657u), true)));
    var_0 = ~(abs(select(min(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(1u, var_0.x, 4294967295u, 11813u)), vec4<u32>(0u, var_0.x, 1u, 0u), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)))) ^ ~(~min(vec4<u32>(var_0.x, var_0.x, 17173u, 1u), vec4<u32>(var_0.x, 4294967295u, 18711u, 21814u))));
    var_0 = reverseBits(vec4<u32>(var_0.x, ~(4294967295u << (var_0.x % 32u)), ~0u, var_0.x) & vec4<u32>(var_0.x, ~1u, var_0.x, var_0.x));
    var_0 = abs(abs(vec4<u32>(max(var_0.x, 1u), select(var_0.x, var_0.x, false), ~var_0.x, var_0.x >> (42874u % 32u)))) | ~(abs(reverseBits(vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x))) ^ (vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) >> (~vec4<u32>(1u, var_0.x, var_0.x, 31012u) % vec4<u32>(32u))));
    return -vec3<i32>(u_input.c.x, ~(-u_input.d >> (~var_0.x % 32u)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1609i, -23150i), u_input.a.xwy), ~u_input.a.xzw, u_input.c.x < 9859i), abs(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(func_3(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1841f, -859f)))), -vec3<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -1i), !(arg_1 == any(arg_0)));
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, all(vec3<bool>(true, true, false)), arg_1)), !arg_1, true, !all(!vec3<bool>(arg_0.x, arg_1, false))), select(!(!vec4<bool>(var_0.d, arg_0.x, true, arg_0.x)), !(!select(vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, var_0.d, true, true), vec4<bool>(arg_1, var_0.d, arg_0.x, false))), vec4<bool>(true || !arg_0.x, true, true, false)), vec4<bool>(false, false, var_0.b.x < -1922f, !any(!arg_0.yx)));
    var var_2 = _wgslsmith_sub_u32(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 1u, 119599u), 46153u), firstTrailingBit(abs(1u))) | (_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, firstLeadingBit(0u))) ^ reverseBits(5257u));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(step(623f, -2864f)), _wgslsmith_f_op_f32(-1236f * var_0.b.x)) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), -1130f, var_0.b.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1471f, -1988f, var_0.b.x, var_0.b.x), vec4<f32>(-1053f, var_0.b.x, var_0.b.x, var_0.b.x)))))));
    var_2 = 1u;
    return var_0.c.x >> (~(~reverseBits(~1u)) % 32u);
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(~u_input.a.x, 1i) | func_2(select(arg_0.yxw, arg_0.wzy, arg_0.ywy), true), func_2(select(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.xzz, arg_0.x), arg_0.x || false) << ((firstTrailingBit(1u) & ~4294967295u) % 32u), firstTrailingBit(-64428i)) ^ min(vec3<i32>(u_input.b, -11523i, 1i), ~u_input.a.zwz);
    var_0 = vec3<i32>(var_0.x | ~(~_wgslsmith_sub_i32(-2147483647i, var_0.x)), 1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-41121i, u_input.d, _wgslsmith_mod_i32(u_input.e.x, 16670i)), var_0.x, 13092i), ~(-u_input.c.x ^ _wgslsmith_mult_i32(-24443i, var_0.x))));
    var_0 = u_input.a.yyy;
    let var_1 = Struct_3(-1835f, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(464f, 480f)), -1028f), _wgslsmith_f_op_f32(round(-1670f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-278f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-693f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - -596f))));
    var_0 = u_input.a.wyw;
    return select(vec2<bool>(!arg_0.x, arg_0.x), select(select(select(vec2<bool>(false, arg_0.x), vec2<bool>(true, arg_0.x), true), vec2<bool>(!arg_0.x, arg_0.x), vec2<bool>(all(vec2<bool>(arg_0.x, true)), arg_0.x)), !arg_0.wz, !select(true, false, true)), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), select(arg_0.zz, !select(vec2<bool>(arg_0.x, false), vec2<bool>(false, arg_0.x), arg_0.x), !arg_0.x & true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_4(true, true, vec2<bool>(true, true)));
    let var_1 = ~(~vec2<u32>(~(1u << (0u % 32u)), 1u));
    let var_2 = select(func_1(!(!vec4<bool>(var_0.a.a, true, var_0.a.c.x, true))), vec2<bool>(true, true), false);
    var var_3 = Struct_1(~vec3<i32>(u_input.a.x, 0i, _wgslsmith_sub_i32(u_input.e.x, -27660i)), vec3<f32>(_wgslsmith_f_op_f32(758f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, -438f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-762f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1372f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(954f, 647f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-701f, -564f)))), select(~vec3<i32>(u_input.a.x, u_input.e.x, u_input.c.x), ~max(vec3<i32>(u_input.a.x, -17093i, u_input.a.x), vec3<i32>(2147483647i, -46866i, u_input.b)), !(!select(vec3<bool>(false, var_0.a.a, true), vec3<bool>(false, true, var_2.x), vec3<bool>(true, var_2.x, true)))), var_2.x);
    let var_4 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(min(~var_1.x, abs(var_1.x >> (var_1.x % 32u))) << ((countOneBits(1u) >> (var_1.x % 32u)) % 32u), vec2<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(30017u, 43u, 12949u), vec3<u32>(11268u, 1u, 0u))));
}

