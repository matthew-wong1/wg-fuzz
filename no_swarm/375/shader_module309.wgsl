struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(1i, arg_1.x, ~arg_1, true), select(~vec4<u32>(11615u, u_input.b.x, 36538u, u_input.b.x) & vec4<u32>(u_input.b.x, select(arg_1.x, 1u, true), 4294967295u, arg_1.x), vec4<u32>(abs(~arg_2), _wgslsmith_mod_u32(countOneBits(u_input.b.x), 1u), _wgslsmith_div_u32(arg_1.x, arg_1.x >> (1u % 32u)), u_input.b.x), select(any(vec2<bool>(true, true)), !any(vec2<bool>(true, false)), !select(true, true, false))), u_input.a, abs(_wgslsmith_add_vec2_u32(~(vec2<u32>(u_input.b.x, 1u) ^ vec2<u32>(arg_2, 4294967295u)), vec2<u32>(_wgslsmith_add_u32(arg_1.x, u_input.b.x), countOneBits(1u)))));
    var_0 = Struct_2(var_0.a, firstTrailingBit(~vec4<u32>(u_input.b.x << (arg_2 % 32u), arg_1.x, 4294967295u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), _wgslsmith_clamp_i32(i32(-1i) * -29197i, var_0.a.a, u_input.c), vec2<u32>(min(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, arg_1.ww), arg_1.yw), var_0.b.x), 1u));
    var var_1 = Struct_4(firstLeadingBit(_wgslsmith_mod_u32(~3219u << ((arg_1.x >> (50024u % 32u)) % 32u), 14984u)), ~vec2<i32>(~_wgslsmith_mult_i32(u_input.c, 22943i), u_input.a), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))))), Struct_3(~countOneBits(vec3<i32>(u_input.a, u_input.c, var_0.a.a)), Struct_1(~(-1i >> (var_0.b.x % 32u)), 49581u, var_0.a.c, !var_0.a.d)));
    var var_2 = Struct_2(var_0.a, vec4<u32>(3396u, ~(~(var_0.a.b << (u_input.b.x % 32u))), arg_1.x, 4294967295u), _wgslsmith_dot_vec2_i32(-(~countOneBits(var_1.d.a.yx)), _wgslsmith_mult_vec2_i32(min(var_1.d.a.xz, vec2<i32>(-38729i, 0i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(52229i, var_0.c), var_1.d.a.xy), abs(~vec2<i32>(var_0.a.a, u_input.a)))), ~vec2<u32>(var_1.a ^ countOneBits(var_1.a), ~114333u));
    var_2 = Struct_2(var_1.d.b, vec4<u32>(4294967295u, _wgslsmith_div_u32(var_0.b.x, abs(~1u)), _wgslsmith_mod_u32(56655u, _wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(var_0.b, var_2.b))), var_0.a.c.x), var_1.b.x, ~firstLeadingBit(var_2.a.c.xy));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) * var_1.c))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = !(!(arg_1.x != -631f));
    var var_1 = arg_1;
    let var_2 = Struct_4(arg_2.b.x, arg_0.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(-1384f, ~arg_2.b, 36959u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_1.x) + var_1.yy) + _wgslsmith_f_op_vec2_f32(-arg_1.yy)), select(!vec2<bool>(arg_2.a.d, true), !vec2<bool>(arg_2.a.d, arg_2.a.d), !vec2<bool>(var_0, var_0))))), Struct_3(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.yxy, vec3<i32>(u_input.c, arg_2.a.a, 5348i)), select(vec3<i32>(arg_2.c, arg_0.x, u_input.c), vec3<i32>(arg_2.c, arg_2.c, arg_0.x), vec3<bool>(true, false, true))), arg_2.a));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_f_op_f32(-1993f - 491f), _wgslsmith_f_op_f32(ceil(-921f)))))));
    var var_3 = vec4<bool>(var_0 && true, var_0, 4294967295u == ~u_input.b.x, false);
    return _wgslsmith_f_op_f32(trunc(arg_1.x));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, u_input.c, 30292i, 2040i), vec3<f32>(-764f, -531f, -741f), Struct_2(Struct_1(u_input.c, u_input.b.x, vec4<u32>(u_input.b.x, 4294967295u, 19036u, u_input.b.x), true), vec4<u32>(4294967295u, 7122u, 4294967295u, 35022u), u_input.c, u_input.b))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-906f, -227f)) + _wgslsmith_f_op_f32(trunc(1094f)))), _wgslsmith_f_op_f32(-955f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(719f)))))));
    let var_1 = ~22847i;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1402f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-vec4<i32>(var_1, -2147483647i, var_1, 34749i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), Struct_2(Struct_1(u_input.a, 1471u, vec4<u32>(4294967295u, u_input.b.x, 24806u, u_input.b.x), true), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), var_1, vec2<u32>(4294967295u, 47468u)))))), _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(func_2(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.a, u_input.a) | vec4<i32>(var_1, 0i, u_input.c, u_input.c), abs(vec4<i32>(var_1, u_input.c, u_input.c, 1i)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))), Struct_2(Struct_1(-1i, u_input.b.x, vec4<u32>(~u_input.b.x, abs(4294967295u), u_input.b.x, 56886u), _wgslsmith_f_op_f32(var_0.x * 187f) < _wgslsmith_f_op_f32(round(var_0.x))), firstLeadingBit(vec4<u32>(abs(u_input.b.x), u_input.b.x, 7881u, u_input.b.x)), var_1, ~_wgslsmith_div_vec2_u32(u_input.b, u_input.b))));
    var var_3 = Struct_4(u_input.b.x, (reverseBits(-vec2<i32>(var_1, -2147483647i)) | ~(~vec2<i32>(-40749i, -27696i))) << (((vec2<u32>(1u, 18876u) << (_wgslsmith_div_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u))) >> ((max(vec2<u32>(63234u, u_input.b.x), u_input.b) ^ _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(497f, 1332f))), var_0.yz)))), Struct_3(max(abs(abs(vec3<i32>(-2147483647i, -45971i, 2147483647i))), vec3<i32>(0i, var_1, var_1) ^ _wgslsmith_div_vec3_i32(vec3<i32>(2002i, u_input.c, u_input.c), vec3<i32>(2147483647i, var_1, u_input.a))), Struct_1(var_1, u_input.b.x, ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), !all(vec2<bool>(true, true)))));
    return var_3.d.b.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(-678f + arg_3.a);
    let var_1 = vec3<bool>(arg_0.d, ~arg_3.c.x == _wgslsmith_dot_vec4_i32(vec4<i32>(1i, max(-1i, u_input.c), 35983i, arg_0.a ^ arg_0.a), vec4<i32>(_wgslsmith_sub_i32(0i, arg_1.b.a), u_input.c, 12907i, min(u_input.a, -38327i))), !arg_0.d);
    var var_2 = firstLeadingBit(_wgslsmith_add_u32(33999u, 1u));
    var_2 = 85381u;
    let var_3 = Struct_2(Struct_1(-u_input.c | -4595i, ~37285u, arg_0.c, any(vec2<bool>(arg_3.b.x <= 55549u, var_1.x))), vec4<u32>(~(~0u), arg_2.x, func_1().x ^ min(u_input.b.x, firstTrailingBit(1u)), 33347u), arg_3.c.x, abs(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1.b.c.x), arg_3.b.zz) & vec2<u32>(u_input.b.x, 26519u))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_add_i32(-reverseBits(u_input.c), ~(-u_input.a)), _wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mult_u32(~61122u, ~u_input.b.x), min(1u, u_input.b.x)), vec4<u32>(~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 1u, 639u >> (u_input.b.x % 32u)) << (select(func_1(), vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), !select(true, false, true)), Struct_3(vec3<i32>(u_input.c, firstLeadingBit(~u_input.c), reverseBits(2147483647i)), Struct_1(min(u_input.c, 1i), u_input.b.x, ~max(vec4<u32>(u_input.b.x, 4294967295u, 23242u, 19310u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u)), any(vec2<bool>(false, true)))), _wgslsmith_add_vec2_u32(abs(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b.x, 61900u), u_input.b)), ~(~abs(u_input.b))), Struct_5(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(-1034f + -108f), false)), ~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(0u, 0u, 30122u, u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))).x, firstLeadingBit(abs(vec4<u32>(0u, u_input.b.x, u_input.b.x, 2292u))) ^ (vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) << (~vec4<u32>(u_input.b.x, u_input.b.x, 6115u, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.a, u_input.c, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 0i), vec3<i32>(-2147483647i, 2147483647i, u_input.c))), -vec3<i32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = vec4<u32>(~var_0.b.x, u_input.b.x, ~(~(var_0.b.x | var_0.b.x)), countOneBits(~0u));
    let var_2 = Struct_4(37785u, _wgslsmith_add_vec2_i32(vec2<i32>(42871i, ~17977i), var_0.c.zz) << (firstLeadingBit(~u_input.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, var_0.a)))))), Struct_3(abs(var_0.c), Struct_1(func_4(Struct_1(u_input.a, var_0.b.x, var_1, false), Struct_3(vec3<i32>(-2147483647i, 22615i, u_input.c), Struct_1(-1i, 4294967295u, vec4<u32>(var_1.x, 0u, var_1.x, var_1.x), false)), _wgslsmith_mult_vec2_u32(vec2<u32>(26181u, 0u), u_input.b), Struct_5(var_0.a, vec4<u32>(var_0.b.x, u_input.b.x, 4294967295u, var_1.x), var_0.c)).c.x, ~u_input.b.x | var_0.b.x, var_0.b, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)))));
    var var_3 = vec3<bool>(any(select(vec2<bool>(var_2.d.b.d, false), !vec2<bool>(false, var_2.d.b.d), vec2<bool>(true, var_2.d.b.d))) & !var_2.d.b.d, 4294967295u <= ~var_2.a, false | var_2.d.b.d);
    var var_4 = ~(-1i);
    let var_5 = _wgslsmith_f_op_f32(-var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_5 - 1746f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), var_2.c.x)), var_3.x)));
}

