struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = ~u_input.b.ww;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -853f))))) > 1f;
    var var_2 = Struct_1(select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, true), vec3<bool>(true, !all(vec2<bool>(false, false)), !all(vec3<bool>(false, false, false))), true), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0.x, ~arg_2, _wgslsmith_mult_u32(arg_2, 0u), ~arg_0.x), ~vec4<u32>(arg_0.x, arg_1.x, u_input.d.x, 1u))), -158f);
    return ~(~_wgslsmith_clamp_u32(61713u, countOneBits(arg_2) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 0u, arg_1.x), vec4<u32>(4294967295u, arg_0.x, var_2.b.x, var_2.b.x)), u_input.d.x | countOneBits(64387u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, firstTrailingBit(~23621u | arg_2.b.x), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_2.b, vec4<u32>(arg_0.b.x, arg_3.x, 4294967295u, arg_3.x)), ~arg_0.b.x)), ~53966u), abs(~arg_2.b));
    var var_1 = Struct_2(~((arg_3.x >> (func_3(vec2<u32>(u_input.d.x, u_input.a.x), vec3<u32>(arg_3.x, arg_2.b.x, arg_3.x), 4294967295u) % 32u)) ^ (_wgslsmith_mod_u32(u_input.a.x, arg_3.x) << (var_0.x % 32u))), Struct_1(arg_2.a, reverseBits(arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))), !(!select(!vec4<bool>(false, false, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, false, false), vec4<bool>(arg_2.a.x, arg_0.a.x, true, arg_2.a.x))), _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.c, u_input.c, -1i, u_input.b.x), max(vec4<i32>(1i, u_input.b.x, -21556i, -14617i), vec4<i32>(16189i, u_input.c, 0i, u_input.c))), vec4<i32>(u_input.b.x, ~u_input.b.x, -1i, -u_input.c)) << (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 57434u, arg_0.b.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(37017u, 0u, 0u, 30217u), arg_2.b)), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(1u, 7226u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(arg_3, vec4<u32>(5640u, arg_3.x, 1u, var_0.x)), ~arg_3)) % vec4<u32>(32u)));
    var var_2 = Struct_3(arg_2, Struct_2(~arg_0.b.x, var_1.b, var_1.c, var_1.d));
    let var_3 = 18551i;
    var_2 = Struct_3(arg_2, Struct_2(0u, var_2.a, select(vec4<bool>(arg_2.a.x | arg_0.a.x, var_2.b.d.x == -22700i, 716f > arg_2.c, true), !select(var_1.c, var_2.b.c, var_2.b.c.x), !(var_2.b.d.x < 0i)), vec4<i32>(var_2.b.d.x, -1i, -2147483647i << ((var_1.a | 0u) % 32u), ~abs(60580i))));
    return arg_0.b.x;
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    let var_0 = Struct_1(select(vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), true, true), select(vec3<bool>(any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec3<bool>(false, all(vec2<bool>(false, true)), true), true || any(vec4<bool>(true, false, false, true))), false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, func_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(u_input.d.x, 3152u, u_input.d.x, u_input.d.x), -1729f), _wgslsmith_f_op_f32(-248f * 2556f), Struct_1(vec3<bool>(true, false, false), vec4<u32>(15899u, 4294967295u, u_input.a.x, 66435u), -191f), ~vec4<u32>(u_input.a.x, u_input.d.x, 0u, u_input.a.x)), 4294967295u, 32565u), ~vec4<u32>(max(0u, u_input.d.x), max(u_input.d.x, u_input.a.x), u_input.a.x, countOneBits(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(353f - 346f))))));
    let var_1 = max(abs(~(~countOneBits(u_input.a.x))), var_0.b.x);
    let var_2 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(max(0u, u_input.d.x), 0u, 13878u, 41537u), select(~vec4<u32>(var_0.b.x, var_1, 4294967295u, 0u), _wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(10593u, u_input.d.x, u_input.d.x, 0u)), select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, true), true))), var_0, !select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), !vec4<bool>(false, var_0.a.x, false, false), !vec4<bool>(var_0.a.x, var_0.a.x, false, true)), vec4<bool>(var_0.a.x, var_0.a.x, all(vec3<bool>(false, true, var_0.a.x)), true), !vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)), ~(~u_input.b));
    let var_3 = u_input.d.x & 4294967295u;
    let var_4 = var_2;
    return abs(var_2.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = arg_0.xw;
    var var_1 = abs(func_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.zxz, vec3<i32>(62465i, u_input.b.x, 0i)), _wgslsmith_mult_vec3_i32(max(u_input.b.yww, u_input.b.wyw), vec3<i32>(3041i, -54959i, u_input.b.x) << (vec3<u32>(84523u, u_input.a.x, arg_1) % vec3<u32>(32u))))).yww);
    let var_2 = Struct_3(Struct_1(select(vec3<bool>(true, all(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), vec3<bool>(11951i >= var_1.x, true, 0u == u_input.d.x)), ~(~vec4<u32>(u_input.d.x, 50328u, arg_1, 68713u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-445f, 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -798f)))), Struct_2(~_wgslsmith_mult_u32(u_input.d.x, max(22610u, 12056u)), Struct_1(vec3<bool>(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(true, false))), select(vec4<u32>(25053u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, 30618u, u_input.a.x, 1u), vec4<u32>(100840u, arg_1, 4294967295u, 4294967295u)), all(vec2<bool>(true, true))), 1661f), vec4<bool>(true, false, any(vec4<bool>(false, false, false, true)), select(true, true, true)), arg_0));
    var_1 = _wgslsmith_div_vec3_i32(-arg_0.xxx, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(abs(u_input.b.wyz), ~(-vec3<i32>(-17037i, -13760i, arg_0.x))), firstTrailingBit(~(~vec3<i32>(48940i, var_0.x, 1520i)))));
    var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i << (_wgslsmith_mult_u32(85353u, u_input.a.x) % 32u), _wgslsmith_sub_i32(firstTrailingBit(var_2.b.d.x), -2147483647i)), reverseBits(vec2<i32>(_wgslsmith_mod_i32(-1i, arg_0.x), abs(var_2.b.d.x)))), var_0.x, _wgslsmith_mult_i32(-64820i >> (abs(var_2.b.a) % 32u), -56788i) ^ arg_0.x);
    return select(!vec3<bool>(true, var_2.a.a.x, var_2.b.b.a.x), vec3<bool>(~func_2(var_2.b.b, -193f, var_2.b.b, vec4<u32>(68873u, u_input.d.x, arg_1, 23723u)) == 53518u, var_2.b.b.a.x, var_2.a.a.x), ~firstLeadingBit(~var_2.b.a) <= _wgslsmith_dot_vec4_u32(var_2.a.b, vec4<u32>(arg_1, 0u, 4294967295u, 62080u) | firstTrailingBit(vec4<u32>(2084u, var_2.a.b.x, var_2.b.b.b.x, 44546u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 18279u;
    var var_1 = Struct_1(select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), func_4(func_1(u_input.b.zzw), ~var_0), func_4(min(u_input.b, u_input.b), ~u_input.d.x)), func_4(vec4<i32>(abs(-3309i), 2147483647i, ~u_input.b.x, abs(u_input.c)), abs(~77725u)), vec3<bool>(true, true, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 0u, 14567u, 0u) >> (vec4<u32>(u_input.d.x, 106709u, var_0, var_0) % vec4<u32>(32u)), select(vec4<u32>(u_input.d.x, 7845u, var_0, var_0), vec4<u32>(u_input.a.x, var_0, 0u, 1u), true)) << (66761u % 32u), ~u_input.a.x, _wgslsmith_mod_u32(~var_0, var_0), u_input.a.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0) ^ u_input.d, ~vec2<u32>(var_0, 119746u))), _wgslsmith_f_op_f32(590f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1678f - _wgslsmith_f_op_f32(f32(-1f) * -2425f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1672f, 405f))))));
    var var_2 = vec2<u32>(var_1.b.x, ~29749u);
    var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(max(var_0, u_input.d.x), countOneBits(var_1.b.x), u_input.d.x, 89358u), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_2.x, u_input.a.x, 0u), ~vec4<u32>(u_input.d.x, 21674u, var_2.x, 16596u))), ~9523u);
    let var_3 = abs(1i);
    var_2 = select(var_1.b.zw, var_1.b.zw >> (~var_1.b.wz % vec2<u32>(32u)), vec2<bool>(var_1.a.x, !var_1.a.x));
    var var_4 = Struct_3(Struct_1(var_1.a, vec4<u32>(_wgslsmith_clamp_u32(var_1.b.x, var_2.x, ~5474u), ~4294967295u ^ ~var_1.b.x, var_2.x, var_2.x), var_1.c), Struct_2(~49038u >> ((~0u ^ ~var_1.b.x) % 32u), Struct_1(!select(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.a, false), _wgslsmith_sub_vec4_u32(firstTrailingBit(var_1.b), ~var_1.b), 1148f), select(!select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, true, false, true), true), vec4<bool>(true, true, true, true), true), select(~(-vec4<i32>(0i, u_input.c, u_input.c, 0i)), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(0i, var_3, var_3, 20643i)) | vec4<i32>(var_3, u_input.b.x, 14422i, 3522i), select(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(false, false, var_1.a.x, var_1.a.x)))));
    let var_5 = ((-1834i & max(-1i, u_input.b.x)) & _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.wx, var_4.b.d.yy), 2147483647i)) | (-2147483647i << (var_1.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(883f, ~(var_4.b.b.b & reverseBits(var_4.a.b)) << (firstLeadingBit(select(vec4<u32>(var_2.x, u_input.a.x, 0u, var_0), vec4<u32>(1u, 4294967295u, 0u, 22285u), !var_4.b.c)) % vec4<u32>(32u)), firstLeadingBit(var_4.b.d), select(abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(var_4.a.b.xx, var_1.b.xw))), var_4.a.b.yy, func_4(~u_input.b, min(_wgslsmith_mult_u32(u_input.a.x, u_input.d.x), 1u)).zx), vec2<f32>(-769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * var_1.c)))));
}

