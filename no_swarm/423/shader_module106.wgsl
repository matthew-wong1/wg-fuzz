struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(598f, 298f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(442f, -465f) + vec2<f32>(1732f, 1515f)))), Struct_1(u_input.b.zz, 7996u, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(11256i, 1i, 5132i), vec3<i32>(-1i, u_input.a.x, -2147483647i)), 1i)), ~u_input.a, ~max(u_input.a, u_input.a)), _wgslsmith_dot_vec3_i32(u_input.a.yzx, vec3<i32>(-2147483647i, abs(_wgslsmith_dot_vec3_i32(u_input.a.wyz, u_input.a.zwz)), -_wgslsmith_add_i32(u_input.a.x, u_input.a.x))));
    let var_1 = !select(select(all(vec2<bool>(true, true)), (14095i != var_0.b) && true, true), false, !(!any(vec4<bool>(true, false, false, false))));
    var var_2 = var_0.a.b;
    var_0 = Struct_5(var_0.a, 2147483647i);
    let var_3 = Struct_2(var_0.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1576f, var_0.a.a.x) * var_0.a.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a.x, var_0.a.a.x), var_0.a.a)))))), Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a | var_0.a.b.a, u_input.b.xy), ~(~vec2<u32>(arg_0, var_0.a.b.b)), vec2<u32>(arg_0, var_2.b) << (min(var_0.a.b.a, vec2<u32>(21053u, 0u)) % vec2<u32>(32u))), firstTrailingBit(~1u), ~(-countOneBits(var_2.c))), vec4<i32>(_wgslsmith_dot_vec3_i32(-u_input.a.wxy, firstTrailingBit(vec3<i32>(var_2.c, -19601i, u_input.a.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, var_2.c), vec3<i32>(u_input.a.x, 0i, var_2.c)), max(i32(-1i) * -44259i, select(0i, var_0.b, true)), -2147483647i) >> (~firstLeadingBit(vec4<u32>(arg_0, 4294967295u, 1u, 1u)) % vec4<u32>(32u)));
    return var_2.c;
}

fn func_2() -> i32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(737f, 933f), vec2<f32>(-1443f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1677f, 1735f)))))), vec2<bool>(_wgslsmith_f_op_f32(1695f * 384f) > _wgslsmith_f_op_f32(ceil(289f)), true))), Struct_1(u_input.d.xy, ~(~_wgslsmith_sub_u32(u_input.e, 0u)), ~2147483647i), vec4<i32>(u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.d.yz ^ u_input.b.yy, u_input.d.yz ^ vec2<u32>(1u, 4294967295u)) % 32u), func_3(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), _wgslsmith_div_u32(0u, u_input.c))), -1i, _wgslsmith_sub_i32(~(~1i), u_input.a.x & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a.xyw))), reverseBits((u_input.a << (firstLeadingBit(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.e)) % vec4<u32>(32u))) >> (vec4<u32>(1u, min(4500u, 4294967295u), abs(0u), u_input.d.x) % vec4<u32>(32u))));
    let var_1 = Struct_2(Struct_1(vec2<u32>(~1u, 27032u), ~1u, -(-1i << (var_0.b.a.x % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.a)) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -362f)))), var_0.b, vec4<i32>(_wgslsmith_mult_i32(-6248i, _wgslsmith_add_i32(-2613i, u_input.a.x & -28539i)), firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, var_0.d.x), u_input.a.zw)), (-u_input.a.x << (13767u % 32u)) >> ((~var_0.b.b ^ select(var_0.b.a.x, 42288u, true)) % 32u), -_wgslsmith_mult_i32(u_input.a.x, 17474i)));
    var var_2 = false;
    var_2 = all(select(select(vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var_2 = !any(vec4<bool>(all(vec2<bool>(true, true)), false, true, any(vec2<bool>(true, false)) || false));
    return -(0i << (0u % 32u)) >> (var_1.a.a.x % 32u);
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, abs(-30911i)), func_2());
    var_0 = vec2<i32>(~min(-1i << (u_input.d.x % 32u), reverseBits(var_0.x)), -24219i);
    var var_1 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -844f) + _wgslsmith_f_op_vec2_f32(arg_0.xw * vec2<f32>(-745f, arg_0.x))), Struct_1(~(~u_input.d.xz), u_input.d.x, -(var_0.x | 0i)), min(~vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 2147483647i), vec4<i32>(var_0.x | 18340i, _wgslsmith_mod_i32(u_input.a.x, -46855i), 14749i | var_0.x, ~(-37041i))), select(u_input.a, vec4<i32>(var_0.x, -1i, u_input.a.x >> (0u % 32u), abs(u_input.a.x)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)))), 2147483647i);
    var var_2 = arg_0.x > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), !(u_input.b.x > var_1.a.b.b))));
    var_1 = Struct_5(var_1.a, var_0.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, select(!select(false, true, false), false, true), func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, 1000f, 513f, 841f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2497f, 646f, 136f, -964f), vec4<f32>(-694f, -1283f, -830f, 1209f)), all(vec2<bool>(false, true))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-407f)), _wgslsmith_f_op_f32(-817f - 1309f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(426f))), _wgslsmith_f_op_f32(abs(369f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(151f - 945f), _wgslsmith_f_op_f32(select(-212f, 872f, var_0.x)), _wgslsmith_div_f32(707f, 2350f), _wgslsmith_div_f32(-541f, 471f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, -1516f, _wgslsmith_f_op_f32(-1007f - 918f), -2174f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, -314f, 216f, -343f))))))));
    let var_2 = vec3<u32>(0u, ~u_input.e, ~_wgslsmith_div_u32(min(u_input.b.x ^ 13186u, _wgslsmith_dot_vec2_u32(u_input.d.yz, u_input.b.yy)), countOneBits(0u)));
    var var_3 = select(-(~u_input.a.xz), vec2<i32>(-1i, u_input.a.x), !var_0.x);
    var_3 = u_input.a.wy;
    var_3 = reverseBits(u_input.a.xw);
    let var_4 = Struct_1(vec2<u32>(min(var_2.x, min(u_input.c, 0u)), _wgslsmith_mult_u32(~u_input.c, min(1u, 34173u & u_input.c))), u_input.e, 10662i);
    let var_5 = Struct_5(Struct_4(_wgslsmith_f_op_vec2_f32(sign(var_1.xw)), var_4, vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x) >> ((var_2.x << (59642u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_3.x, var_3.x), vec2<i32>(u_input.a.x, var_4.c)), abs(vec2<i32>(-70412i, -7147i))), 25187i & u_input.a.x, 67i), -vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~7861i, min(u_input.a.x, var_3.x), -5546i)), select(_wgslsmith_dot_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(29501i, var_4.c, -1i, 2147483647i), u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_4.c, var_3.x, -10182i, u_input.a.x), u_input.a), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, false))), reverseBits(abs(vec4<i32>(-25885i, var_4.c, var_3.x, var_3.x)))), countOneBits(var_4.c), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.a.x, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -771f), -1841f, true)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, _wgslsmith_add_i32(2147483647i >> (var_2.x % 32u), -22045i), abs(_wgslsmith_sub_i32(0i, var_5.b)), -16641i), _wgslsmith_add_vec4_i32(var_5.a.d, -abs(var_5.a.c))), 4294967295u, 2042f);
}

