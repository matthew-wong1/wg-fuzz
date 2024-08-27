struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1;
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(var_0.d.a))) - _wgslsmith_div_f32(-635f, var_0.c.x)), arg_1.d.c, false, min(57846i, arg_1.d.e | countOneBits(u_input.a.x)), 1i), _wgslsmith_div_vec2_u32(arg_1.b, reverseBits(~arg_1.b)) & min(min(~vec2<u32>(52840u, 40732u), var_0.b), vec2<u32>(abs(u_input.b), 0u)), arg_1.c, var_0.a);
    var var_1 = vec3<i32>(arg_1.d.e, -1i, ~(-44701i) ^ (i32(-1i) * -var_0.d.d));
    var var_2 = abs(firstTrailingBit(_wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(arg_1.b, vec2<u32>(var_0.b.x, var_0.b.x)), min(~var_0.b, ~vec2<u32>(1u, 4294967295u)))));
    let var_3 = var_0.d.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * -1000f);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(!vec4<bool>(any(!vec3<bool>(arg_1.x, arg_0.c, arg_0.c)), true, false, true), vec4<bool>(true, 7470u <= u_input.b, arg_0.c, false), arg_0.b);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) - arg_0.a) - 209f)), -1037f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) - _wgslsmith_f_op_f32(func_3(vec4<f32>(arg_0.a, -2495f, arg_0.a, -107f), Struct_2(Struct_1(1762f, arg_0.b, arg_1.x, arg_0.e, u_input.d), vec2<u32>(4294967295u, u_input.b), vec3<f32>(arg_0.a, -1759f, arg_0.a), arg_0))))));
    let var_2 = Struct_2(Struct_1(var_1.x, arg_0.b, var_0.x, ~(firstTrailingBit(-29110i) | ~arg_0.e), u_input.a.x), ~select(select(~vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b), arg_0.a <= var_1.x), ~vec2<u32>(1u, u_input.c), all(vec3<bool>(arg_0.b, true, arg_0.c))), vec3<f32>(1385f, -536f, 202f), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f - 1052f)))), false, any(vec4<bool>(arg_0.c, false, arg_1.x, true)) | arg_0.b, ~_wgslsmith_add_i32(arg_0.e, min(arg_0.d, arg_0.e)), select((i32(-1i) * -2147483647i) | select(arg_0.d, -2147483647i, true), max(u_input.a.x, -18767i >> (1u % 32u)), ~u_input.b > (u_input.b >> (u_input.b % 32u)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(trunc(-1717f)));
    var var_4 = var_2.d.e;
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.a * arg_1.a.a)))), arg_1.d.b, true, arg_1.a.d, _wgslsmith_sub_i32(select(u_input.d >> (func_2(arg_1.d, vec2<bool>(false, arg_1.d.b)) % 32u), u_input.d, any(select(vec3<bool>(arg_1.a.b, true, false), vec3<bool>(false, true, arg_1.a.c), true))), -select(arg_1.d.d, ~(-2147483647i), all(vec2<bool>(arg_1.a.b, false)))));
    let var_1 = arg_1.b;
    var var_2 = Struct_1(var_0.a, func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -413f), all(vec2<bool>(var_0.b, false)), true, arg_1.d.d << (var_1.x % 32u), 57748i | var_0.d), !(!vec2<bool>(arg_1.a.c, true))) == func_2(arg_1.a, vec2<bool>(var_0.c, false)), !(!(1u <= arg_1.b.x)), 14484i, -1i);
    var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) * var_2.a) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_2.a))))))), false, !(1u > _wgslsmith_add_u32(arg_0, func_2(Struct_1(-1430f, arg_1.a.c, false, 2147483647i, 18997i), vec2<bool>(var_0.b, false)))), -1i, -(arg_1.a.e >> (firstTrailingBit(41125u << (arg_0 % 32u)) % 32u)));
    return select(vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, var_0.d), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.e, u_input.d, arg_1.d.d), vec3<i32>(var_0.d, arg_1.d.d, arg_1.d.e))) >= 18684i, true, arg_1.a.b), vec3<bool>(any(vec4<bool>(!var_2.b, false, false, true)), !arg_1.d.c, var_2.b), any(select(vec2<bool>(var_0.b, var_0.c), vec2<bool>(true, false), 1000f != _wgslsmith_f_op_f32(round(-249f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = vec3<bool>(arg_2.c, _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.c, 1u), 72819u) >= _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.c) >> (vec2<u32>(4905u, u_input.b) % vec2<u32>(32u))), firstLeadingBit(~vec2<u32>(u_input.b, u_input.b))), arg_0.x);
    var var_1 = ~vec3<u32>(u_input.c >> ((~19800u | _wgslsmith_sub_u32(u_input.b, 1u)) % 32u), ~min(~u_input.c, u_input.c | 12518u), countOneBits(u_input.b));
    var_0 = arg_0.xzy;
    var var_2 = ~vec3<u32>(_wgslsmith_div_u32(~firstLeadingBit(var_1.x), 0u), reverseBits(abs(u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(u_input.c, var_1.x, 35550u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 61499u, 4294967295u), vec3<u32>(41656u, u_input.c, 18893u)), vec3<u32>(0u, 4671u, u_input.c) >> (vec3<u32>(var_1.x, var_1.x, u_input.c) % vec3<u32>(32u))));
    let var_3 = vec2<bool>(arg_1.x, false);
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(~(~u_input.a.x), ~(-14490i), min(_wgslsmith_div_i32(arg_2.e, -2147483647i), -2147483647i)), max((vec3<i32>(arg_2.e, u_input.a.x, u_input.d) << ((vec3<u32>(4294967295u, 4294967295u, 27151u) ^ vec3<u32>(var_2.x, 4294967295u, var_2.x)) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(19658i, 4266i, arg_2.e)), vec3<i32>(u_input.d, arg_2.e, u_input.d)), -firstLeadingBit(vec3<i32>(u_input.a.x, -1380i, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -54327i, u_input.a.x, 0i), vec4<i32>(1i, u_input.a.x, 0i, u_input.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -25621i), vec4<i32>(0i, -2098i, u_input.a.x, -36090i) | vec4<i32>(u_input.d, 2147483647i, u_input.a.x, u_input.d)), func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), func_1(u_input.b, Struct_2(Struct_1(-767f, false, false, 6367i, -73869i), vec2<u32>(var_0, 12027u), vec3<f32>(-1000f, -1638f, 989f), Struct_1(123f, false, false, u_input.d, -2147483647i))), Struct_1(1519f, true, true, 0i, u_input.a.x), 1f)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.a.x, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -4814i, 1i, u_input.a.x)))), func_4(!vec4<bool>(true, -21936i >= u_input.a.x, true, all(vec3<bool>(true, false, true))), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -312f))), true, false, countOneBits(-34246i), ~u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -2432f)), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1314f, 961f, -1473f)), vec3<f32>(-584f, -657f, -854f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-220f, 386f, -1626f) * vec3<f32>(237f, 813f, -1344f)), vec3<f32>(596f, 1387f, -1329f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -139f) - _wgslsmith_f_op_f32(835f * 865f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))))), ~(~(max(1u, 4294967295u) | (u_input.b & 32488u))), vec3<f32>(787f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, -1000f, -965f, 1040f)) * vec4<f32>(1076f, -1087f, -273f, 181f)), Struct_2(Struct_1(-2124f, false, true, u_input.d, u_input.d), ~vec2<u32>(62457u, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, -1125f, -203f)), Struct_1(1201f, false, false, -1i, 26348i)))), -324f), _wgslsmith_div_i32(u_input.a.x | -1i, u_input.a.x) | _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, 8778i)) ^ (vec2<i32>(1i, u_input.d) >> (vec2<u32>(44612u, 1u) % vec2<u32>(32u))), -(~vec2<i32>(7594i, u_input.a.x))));
}

