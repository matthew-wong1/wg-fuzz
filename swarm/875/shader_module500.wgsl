struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.c.x | arg_3.a.x, -25717i, -1i, -31339i)), -select(~vec4<i32>(0i, 0i, -65102i, arg_3.a.x), vec4<i32>(2147483647i, -39558i, 1i, 22775i), false)) | vec4<i32>(19992i, -5684i, ~(~2147483647i & u_input.a), _wgslsmith_mod_i32(2147483647i, u_input.a));
    let var_1 = arg_1.c.x;
    var_0 = vec4<i32>(-1i) * -(abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, u_input.a, 2147483647i, var_1), vec4<i32>(var_1, -23353i, 1i, u_input.a))) >> ((vec4<u32>(arg_3.c.x, arg_3.c.x, arg_3.c.x, 0u) & (vec4<u32>(18110u, 7691u, 1u, arg_3.c.x) & vec4<u32>(0u, arg_1.e, 6970u, 43587u))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x * -1394f) - -1816f));
    var_0 = vec4<i32>(0i, _wgslsmith_clamp_i32(-4172i, _wgslsmith_sub_i32(-2147483647i, arg_1.c.x), i32(-1i) * -1i), select(-21582i, _wgslsmith_dot_vec3_i32(arg_3.a | select(vec3<i32>(-12016i, var_1, -1i), vec3<i32>(arg_1.c.x, u_input.a, 2421i), arg_1.d.x), (vec3<i32>(u_input.a, -20959i, var_1) | vec3<i32>(var_0.x, arg_3.a.x, 7333i)) & max(vec3<i32>(u_input.a, u_input.a, var_0.x), arg_3.a)), arg_1.d.x), ~46638i);
    return _wgslsmith_f_op_f32(-arg_1.a.x);
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = Struct_3(Struct_1(vec3<i32>(0i << (1u % 32u), abs(_wgslsmith_mod_i32(-1i, u_input.a)), 24794i), arg_0.b.b, _wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, arg_0.b.c.x, 124173u, 0u)), (vec4<u32>(arg_0.b.c.x, 45835u, arg_0.b.c.x, 67342u) | vec4<u32>(u_input.b.x, 13945u, u_input.b.x, 4294967295u)) >> (firstLeadingBit(vec4<u32>(4294967295u, 1u, arg_0.b.c.x, arg_0.b.c.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.e, 749f, -404f, 171f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.b.x, arg_0.b.e, 1324f, 126f), arg_0.b.d)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), Struct_4(vec2<f32>(arg_0.b.b.x, 317f), vec4<u32>(u_input.b.x, 42591u, 46102u, 0u), vec2<i32>(51212i, arg_0.a), vec2<bool>(false, false), 4294967295u), arg_0.b.d.x, arg_0.b)), _wgslsmith_div_f32(arg_0.b.e, 1814f)), -2049f, true))), 0u, _wgslsmith_div_vec2_u32(countOneBits(u_input.b.ww ^ arg_0.b.c.wz) | vec2<u32>(countOneBits(4294967295u), 36483u), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(20437u, u_input.b.x)), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(0u, 0u)), ~u_input.b.ww))));
    var var_1 = min(abs(var_0.a.c.xxy), ~(~vec3<u32>(u_input.b.x, 4294967295u, 10440u) | abs(_wgslsmith_clamp_vec3_u32(arg_0.b.c.wxw, arg_0.b.c.wzx, arg_0.b.c.wzz))));
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(471f, 755f), _wgslsmith_f_op_f32(ceil(arg_0.b.b.x)), arg_0.b.b.x, _wgslsmith_f_op_f32(1294f - -1156f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-130f, var_0.a.d.x, 1364f, var_0.a.e), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.b.x, 587f, var_0.a.d.x, -826f), vec4<f32>(2908f, -842f, arg_0.b.b.x, -524f)), true)))), _wgslsmith_div_vec4_u32(arg_0.b.c, ~vec4<u32>(arg_0.b.c.x, var_0.b, 12238u, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, 455f, -424f, var_0.a.e) - vec4<f32>(-1000f, -1000f, var_0.a.b.x, -663f))) - _wgslsmith_f_op_vec4_f32(arg_0.b.b - vec4<f32>(arg_0.b.e, -1562f, arg_0.b.d.x, 1318f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2486f * 1000f))))), reverseBits(var_0.c.x), var_1.zx);
    var var_2 = Struct_1(arg_0.b.a, var_0.a.d, arg_0.b.c, _wgslsmith_f_op_vec4_f32(ceil(var_0.a.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(261f + _wgslsmith_f_op_f32(step(-199f, arg_0.b.e))))));
    let var_3 = Struct_2(abs(_wgslsmith_div_i32(u_input.a ^ -2147483647i, _wgslsmith_mod_i32(var_2.a.x, var_2.a.x)) & 2147483647i), arg_0.b);
    return vec2<u32>(1u, u_input.b.x ^ ~3044u);
}

fn func_1() -> u32 {
    let var_0 = ~u_input.a < countOneBits(abs(1i));
    let var_1 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), _wgslsmith_mult_vec2_u32(abs(_wgslsmith_mod_vec2_u32(u_input.b.xw, _wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x)))), vec2<u32>(4294967295u, 0u)));
    let var_2 = ~min(~(-min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, u_input.a))), ~(-max(vec2<i32>(-9446i, -1i), vec2<i32>(u_input.a, -42365i))));
    let var_3 = Struct_3(Struct_1(-vec3<i32>(var_2.x, abs(-10094i), _wgslsmith_add_i32(u_input.a, 21815i)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(237f * -812f), _wgslsmith_f_op_f32(func_2(vec2<bool>(var_0, var_0), Struct_4(vec2<f32>(1152f, -543f), u_input.b, var_2, vec2<bool>(false, var_0), 4294967295u), -122f, Struct_1(vec3<i32>(u_input.a, var_2.x, -1i), vec4<f32>(-1199f, 882f, 167f, -1000f), vec4<u32>(4294967295u, var_1.x, 0u, u_input.b.x), vec4<f32>(-681f, -652f, 199f, -533f), -750f))), _wgslsmith_f_op_f32(1000f * -924f), _wgslsmith_f_op_f32(1571f - -662f)), false)), _wgslsmith_mult_vec4_u32(u_input.b, firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(955f, -415f, 129f, 1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1054f, 1955f, 1164f, -450f) + vec4<f32>(-1509f, 1162f, -773f, 584f))))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-793f, -485f))))), 1u, ~func_3(Struct_2(_wgslsmith_add_i32(var_2.x, u_input.a), Struct_1(vec3<i32>(var_2.x, 0i, 64325i), vec4<f32>(494f, -1000f, 973f, -1006f), u_input.b, vec4<f32>(513f, 855f, -1217f, 547f), -714f))));
    let var_4 = var_3.a.c.yxy;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 693f;
    let var_1 = !vec4<bool>(all(vec2<bool>(false, true)), false, !(!select(true, false, true)), false);
    var var_2 = firstTrailingBit(~func_1());
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -248f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(-261f * var_0)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-316f, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, 1179f)))))), vec4<u32>(func_1(), u_input.b.x, ~_wgslsmith_mult_u32(u_input.b.x, firstLeadingBit(u_input.b.x)), ~(~1u)), ~_wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(0i, u_input.a)), abs(~vec2<i32>(u_input.a, 35751i))), var_1.yx, ~firstLeadingBit(~4294967295u));
    var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_3.a.x, var_3.a.x), _wgslsmith_f_op_f32(min(var_0, -1817f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_3.a, var_3.a, true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(175f, 2038f))))), vec4<u32>(abs(var_3.b.x), _wgslsmith_mod_u32(1u << (_wgslsmith_div_u32(31069u, u_input.b.x) % 32u), _wgslsmith_dot_vec4_u32(var_3.b, u_input.b) ^ (var_3.e | 0u)), ~(70109u << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)), ~u_input.b.x), vec2<i32>(-28374i, var_3.c.x), vec2<bool>(var_3.d.x, !var_3.d.x), ~select(min(78538u, _wgslsmith_mult_u32(9892u, 1u)), ~(1u & var_3.b.x), any(select(var_3.d, var_1.zw, true))));
    let var_4 = Struct_2(abs(max(countOneBits(1i), abs(i32(-1i) * -20664i))), Struct_1(countOneBits(vec3<i32>(var_3.c.x, 3067i, reverseBits(var_3.c.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, var_3.a.x, -1006f, var_0) * vec4<f32>(-1004f, var_0, var_3.a.x, 1000f))))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_3.e, 4294967295u, var_3.b.x, 4294967295u)), vec4<u32>(func_3(Struct_2(-1i, Struct_1(vec3<i32>(-1i, -28724i, u_input.a), vec4<f32>(var_3.a.x, 1000f, -1000f, 759f), vec4<u32>(var_3.b.x, 31528u, 39749u, var_3.b.x), vec4<f32>(var_0, 679f, var_0, 167f), var_3.a.x))).x, countOneBits(8443u), u_input.b.x & var_3.e, u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-377f, -291f, 422f, var_0) + vec4<f32>(var_3.a.x, _wgslsmith_f_op_f32(-1264f * 555f), _wgslsmith_f_op_f32(func_2(var_3.d, Struct_4(vec2<f32>(-436f, var_0), vec4<u32>(u_input.b.x, 1u, 1u, 1u), var_3.c, vec2<bool>(var_3.d.x, true), 2592u), 1444f, Struct_1(vec3<i32>(7993i, var_3.c.x, -28287i), vec4<f32>(-1418f, 293f, var_3.a.x, -1435f), var_3.b, vec4<f32>(764f, 344f, var_3.a.x, -1198f), 518f))), _wgslsmith_f_op_f32(step(var_3.a.x, var_0)))), var_3.a.x));
    var var_5 = var_4.b.c.wzz;
    let var_6 = Struct_2(9951i, Struct_1(vec3<i32>(_wgslsmith_div_i32(min(var_3.c.x, -63756i), 1i), ~(~u_input.a), _wgslsmith_add_i32(-1i >> (u_input.b.x % 32u), -13636i)), vec4<f32>(-327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f)), -539f, var_4.b.e), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_5.x, var_3.e, 66516u, 0u) >> (vec4<u32>(var_5.x, 0u, 9583u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(var_3.b, _wgslsmith_mult_vec4_u32(var_4.b.c, vec4<u32>(u_input.b.x, 0u, 44056u, 14988u)))), vec4<f32>(516f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -1012f), 1376f));
    let var_7 = 224f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1843f * var_6.b.d.x)))), vec4<f32>(var_4.b.b.x, var_4.b.e, _wgslsmith_f_op_f32(step(-1082f, _wgslsmith_f_op_f32(-var_3.a.x))), var_4.b.d.x), _wgslsmith_mult_i32(var_6.a, var_3.c.x), _wgslsmith_sub_u32(20488u, abs(~max(1u, var_5.x))));
}

