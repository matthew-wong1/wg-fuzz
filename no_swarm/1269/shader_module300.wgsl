struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(3935u, 18243u), abs(vec2<u32>(4294967295u, 0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(5889u, 66023u), vec2<u32>(4294967295u, 40917u))), firstTrailingBit(vec2<u32>(1u, 0u))), 0u, firstTrailingBit(~reverseBits(31056u) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(39673u, 24256u, 39782u), vec3<u32>(30031u, 0u, 0u)), ~vec3<u32>(78308u, 4294967295u, 71273u)) % 32u)), ~1u);
    var var_1 = Struct_1(vec2<i32>(~1i, countOneBits(u_input.a)), select(select(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 47368u)), vec3<u32>(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(10781u, 4294967295u, 4294967295u, 0u)), var_0.x, var_0.x), true), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), var_0.xxz ^ var_0.xzz) | select(vec3<u32>(var_0.x, 1u, 35640u), vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), abs(-_wgslsmith_sub_i32(11759i, -13027i) & firstLeadingBit(select(u_input.a, 7822i, false))), !(!vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), ~(vec2<u32>(var_0.x, 0u) ^ var_0.yw) ^ vec2<u32>(~13005u, ~abs(1u)));
    var_1 = Struct_1(vec2<i32>(~(-2147483647i), -2147483647i), var_0.xww ^ (max(max(vec3<u32>(39798u, 48622u, 0u), var_1.b), var_0.xxz >> (var_1.b % vec3<u32>(32u))) << (select(select(vec3<u32>(4294967295u, var_1.b.x, 1u), vec3<u32>(var_1.e.x, 4294967295u, var_1.e.x), false), select(vec3<u32>(1u, var_0.x, var_1.e.x), vec3<u32>(28215u, var_1.b.x, var_1.e.x), var_1.d.yzw), true) % vec3<u32>(32u))), firstLeadingBit(var_1.a.x), vec4<bool>((var_0.x ^ 1u) == var_0.x, !any(var_1.d.zy), false, !var_1.d.x), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(firstLeadingBit(var_0.zw)), vec2<u32>(~1u, _wgslsmith_clamp_u32(60228u, 4294967295u, 0u))));
    var var_2 = Struct_1(var_1.a, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, var_0.x), var_0.x << (0u % 32u), 1u), vec3<u32>(_wgslsmith_clamp_u32(var_0.x, var_1.b.x, 0u), var_1.b.x, 1u)), ~vec3<u32>(~var_0.x, 68479u, var_1.b.x)), (-33400i << (~_wgslsmith_dot_vec3_u32(var_0.xwz, vec3<u32>(var_1.b.x, 47746u, 32452u)) % 32u)) | _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.a.x, 33001i), var_1.a.x), select(select(select(!vec4<bool>(false, var_1.d.x, true, true), vec4<bool>(var_1.d.x, false, var_1.d.x, var_1.d.x), var_1.a.x != var_1.c), vec4<bool>(var_1.d.x, true, select(var_1.d.x, var_1.d.x, var_1.d.x), true), false), !var_1.d, var_1.d.x && true), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.x & 0u, ~var_0.x), var_0.zx) & var_0.xx);
    var var_3 = _wgslsmith_sub_i32(0i << (var_2.e.x % 32u), u_input.a);
    return var_1.b;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = ~(~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e.x, 1u, arg_0.b.x, arg_0.b.x), vec4<u32>(arg_0.e.x, 4294967295u, arg_0.e.x, 56202u)), vec4<u32>(26420u, arg_0.e.x, 31749u, arg_0.b.x) & vec4<u32>(45593u, arg_0.b.x, 0u, 33895u)), ~arg_0.e.x));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(var_0.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 63115u), vec2<u32>(4294967295u, 21028u), arg_0.e))), arg_0.e << (_wgslsmith_mult_vec2_u32(~vec2<u32>(5112u, arg_0.e.x), _wgslsmith_div_vec2_u32(~arg_0.e, var_0.zz)) % vec2<u32>(32u)));
    let var_2 = Struct_1(vec2<i32>((19621i | (arg_0.a.x | arg_0.a.x)) & ~(-arg_0.a.x), arg_0.c), var_0, -firstTrailingBit(1i), arg_0.d, _wgslsmith_clamp_vec2_u32(arg_0.e, arg_0.e, ~var_0.zx));
    let var_3 = select(var_2.d.zzx, select(vec3<bool>(_wgslsmith_sub_u32(1u, var_1) != ~1u, var_2.d.x && !var_2.d.x, arg_0.d.x), arg_0.d.yzy, select(!arg_0.d.yyy, arg_0.d.xxw, !arg_0.d.zzy)), any(select(vec2<bool>(var_2.d.x, arg_0.d.x & false), !select(var_2.d.zz, arg_0.d.yy, arg_0.d.zw), arg_0.d.yz)));
    let var_4 = _wgslsmith_add_i32(~var_2.a.x, _wgslsmith_add_i32(abs(-select(arg_0.a.x, -1i, var_2.d.x)), ~(~arg_0.c & (u_input.a >> (var_0.x % 32u)))));
    return (min(abs(var_2.a.x) >> ((4294967295u >> (var_0.x % 32u)) % 32u), ~(~3510i)) ^ var_4) | countOneBits(1i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, abs(u_input.a), u_input.a, 2147483647i) << (((vec4<u32>(4294967295u, 16937u, 1u, 1u) ^ vec4<u32>(4294967295u, arg_0, 7589u, 70995u)) | ~vec4<u32>(arg_0, 17691u, arg_0, arg_0)) % vec4<u32>(32u)), vec4<i32>(countOneBits(-u_input.a | u_input.a), u_input.a, ~(~1i), _wgslsmith_mod_i32(-17313i, u_input.a)));
    let var_2 = -(func_4(Struct_1(vec2<i32>(2147483647i, var_1), func_3(), ~u_input.a, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(27897u, arg_0)))) ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1, u_input.a, 107747i, -55025i), vec4<i32>(u_input.a, 0i, 1i, var_1), vec4<bool>(false, true, true, false)), ~vec4<i32>(u_input.a, u_input.a, 34584i, 47824i)), ~(-1i)));
    var var_3 = firstTrailingBit(vec4<u32>(11415u, firstTrailingBit(45165u | arg_0), 1u, _wgslsmith_div_u32(79293u, ~arg_0))) << (~(min(~vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<u32>(0u, 4294967295u, arg_0, 1507u)) | ~(~vec4<u32>(4294967295u, arg_0, 14355u, arg_0))) % vec4<u32>(32u));
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, 2147483647i, var_2), vec3<i32>(var_2, var_1, 40897i))) | -vec2<i32>(var_2, -9104i), -(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1, 2147483647i), vec2<i32>(var_1, var_2)))), vec3<u32>(17616u, firstLeadingBit(var_3.x), ~_wgslsmith_mult_u32(~34110u, var_3.x & 12540u)), 31216i, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, false, false, true)), true, any(vec3<bool>(true, false, false))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true)), abs(-41115i) < var_2), select(-2147483647i >> (var_3.x % 32u), var_1, var_3.x <= arg_0) > var_1), abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), min(vec2<u32>(826u, 0u), vec2<u32>(72837u, 36875u)))));
    return Struct_1(var_4.a, ~(~var_3.wzz), 9771i, select(vec4<bool>(_wgslsmith_div_f32(153f, -441f) < _wgslsmith_f_op_f32(floor(-753f)), var_4.a.x >= (2147483647i << (var_4.e.x % 32u)), var_4.d.x, true != var_4.d.x), vec4<bool>(!any(var_4.d.xxx), true, true, true), !any(!vec4<bool>(true, var_4.d.x, var_4.d.x, true))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(func_3().zy << (vec2<u32>(var_4.e.x, 94884u) % vec2<u32>(32u)), vec2<u32>(arg_0, arg_0) & var_3.yy, (var_3.xy & var_4.b.zz) >> (min(vec2<u32>(arg_0, var_4.e.x), var_3.yy) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(90695u, 76138u), _wgslsmith_add_vec2_u32(~vec2<u32>(arg_0, var_3.x), min(var_4.e, var_3.xz)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3;
    var var_1 = var_0.d.d.x;
    var_0 = Struct_2(vec2<i32>(9008i, u_input.a), 536f, select(vec4<i32>(11914i, -27772i, _wgslsmith_mod_i32(~(-1i), arg_3.a.x), ~(~(-15435i))), arg_3.c, select(vec4<bool>(true, arg_3.d.d.x, true, arg_1.d.x & arg_0), !var_0.d.d, !arg_3.d.d)), Struct_1(vec2<i32>(-35298i, 0i) ^ -abs(var_0.d.a), ~select(vec3<u32>(arg_3.d.b.x, 22752u, 1u), arg_1.b, !vec3<bool>(arg_1.d.x, arg_0, arg_3.d.d.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -48258i, var_0.c.x, -2147483647i), ~vec4<i32>(35976i, u_input.a, 10564i, arg_3.a.x)), func_4(arg_3.d)), !vec4<bool>(arg_3.d.d.x, arg_1.d.x, !arg_3.d.d.x, any(arg_1.d)), var_0.d.e));
    var var_2 = Struct_2(min(vec2<i32>(-38994i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_3.c.x, arg_1.a.x), vec2<i32>(5697i, -2147483647i)) | _wgslsmith_mult_vec2_i32(select(vec2<i32>(var_0.c.x, -51303i), vec2<i32>(40620i, u_input.a), var_0.d.d.x), -vec2<i32>(var_0.c.x, var_0.d.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(arg_2.x + arg_2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1155f))), var_0.b)), vec4<i32>(_wgslsmith_mod_i32(var_0.a.x, 1i), 42375i, _wgslsmith_dot_vec4_i32(abs(var_0.c), ~(-vec4<i32>(2147483647i, arg_1.a.x, u_input.a, -2147483647i))), u_input.a), func_2(arg_1.e.x));
    var var_3 = ~arg_3.c >> (_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1.e.x, arg_3.d.e.x | 1u, 4294967295u, func_2(var_2.d.b.x).e.x) & select(vec4<u32>(4294967295u, arg_3.d.b.x, arg_1.b.x, var_2.d.e.x), vec4<u32>(1u, var_2.d.b.x, arg_1.e.x, var_0.d.b.x) << (vec4<u32>(arg_1.e.x, 4294967295u, arg_3.d.e.x, var_0.d.b.x) % vec4<u32>(32u)), select(var_0.d.d, vec4<bool>(true, var_0.d.d.x, true, false), var_2.d.d)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.d.e.x, 21803u, 20958u, 42671u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.e.x, 22848u, var_0.d.e.x, arg_1.e.x), vec4<u32>(567u, arg_1.b.x, var_0.d.e.x, 1u), vec4<u32>(13242u, 4294967295u, 157866u, var_0.d.b.x)), ~vec4<u32>(arg_3.d.b.x, arg_1.e.x, var_2.d.b.x, 36240u)) & ((vec4<u32>(34306u, var_0.d.e.x, var_2.d.e.x, arg_3.d.b.x) & vec4<u32>(var_0.d.e.x, var_2.d.b.x, arg_3.d.b.x, 21146u)) | ~vec4<u32>(0u, 1u, arg_3.d.e.x, 56605u))) % vec4<u32>(32u));
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    let var_0 = -vec2<i32>(min(u_input.a, i32(-1i) * -62940i), func_5(true, func_2(_wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 477f, -794f), vec3<f32>(1725f, -179f, -686f)))), Struct_2(vec2<i32>(-45668i, u_input.a), _wgslsmith_div_f32(276f, 455f), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<u32>(17974u, 1u, 42836u), -24950i, vec4<bool>(true, false, true, false), vec2<u32>(34790u, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-1354f));
    return Struct_2(~var_0, var_1, select(vec4<i32>(reverseBits(func_4(Struct_1(var_0, vec3<u32>(0u, 1u, 27035u), 6961i, vec4<bool>(false, true, false, false), vec2<u32>(1u, 0u)))), reverseBits(_wgslsmith_sub_i32(u_input.a, 2147483647i)), 12557i, ~u_input.a), vec4<i32>(1i, select(_wgslsmith_sub_i32(var_0.x, 0i), -10054i, select(false, false, false)), min(var_0.x, -17523i), -5328i), vec4<bool>(true, true, true, true)), func_2(~(~_wgslsmith_mult_u32(23340u, 1u))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    let var_0 = -(vec3<i32>(0i, arg_1.d.c & abs(-2147483647i), ~(-2147483647i & u_input.a)) | arg_1.c.xyy);
    let var_1 = !func_1().d.d.x && arg_1.d.d.x;
    let var_2 = arg_1.c.wwz;
    let var_3 = 0u;
    let var_4 = arg_1.b;
    return abs(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.d.e.x, 21634u, arg_1.d.e.x, 1u), vec4<u32>(44761u, arg_1.d.e.x, var_3, 55522u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.e.x, arg_1.d.e.x, 0u, var_3) | vec4<u32>(arg_1.d.b.x, var_3, arg_1.d.e.x, 74744u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d.b.x, 19366u, var_3, arg_1.d.e.x), vec4<u32>(0u, var_3, arg_1.d.b.x, arg_1.d.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = (max(~4294967295u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(14826u, 13217u, 42265u, 66045u)), vec4<u32>(1u, 1u, 1u, 1u))) <= 1u) & true;
    let var_1 = func_6(1i ^ u_input.a, func_1(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(376f, 177f, -1000f), vec3<f32>(160f, 1480f, -205f))) * vec3<f32>(-1000f, -729f, -1330f)) * vec3<f32>(1f, 1f, 1f)))), !(!vec2<bool>(true, all(vec4<bool>(false, false, true, true)))));
    var_0 = !(true & select(true, all(func_1().d.d.wy), _wgslsmith_f_op_f32(sign(-1458f)) > -1661f));
    var var_2 = false;
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(1i, u_input.a), reverseBits(u_input.a), ~u_input.a), vec3<i32>(-1i) * -vec3<i32>(-21765i, 1i, -1i)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a & -1i, _wgslsmith_mult_i32(u_input.a, u_input.a), firstLeadingBit(-1i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var_2 = any(vec2<bool>(!(true || (var_1.x != 1u)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~max(20592u, 4294967295u), 4294967295u, 56681u));
}

