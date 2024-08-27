struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = Struct_2(any(vec4<bool>(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), true)), abs(max(firstTrailingBit(-vec3<i32>(arg_0, arg_0, u_input.b.x)), vec3<i32>(-76838i, select(20589i, u_input.a.x, false), ~arg_0))), 50222u, u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f))))));
    var_0 = Struct_2(!all(!(!vec4<bool>(false, var_0.a, false, false))), vec3<i32>(arg_0 << (1u % 32u), u_input.b.x, _wgslsmith_clamp_i32(-1i, ~reverseBits(arg_0), 1i ^ u_input.a.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~var_0.c, var_0.c), firstLeadingBit(~vec3<u32>(4294967295u, var_0.c, 27938u))), -1i, var_0.e);
    var var_1 = Struct_3(countOneBits(~(-1i)), Struct_1(-464f, vec2<f32>(_wgslsmith_f_op_f32(step(var_0.e, _wgslsmith_f_op_f32(var_0.e - var_0.e))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.e)))), Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, var_0.e)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(784f, var_0.e))), vec2<f32>(-382f, -360f), !vec2<bool>(true, var_0.a))))));
    let var_2 = var_1.b;
    var_0 = Struct_2(false, vec3<i32>(_wgslsmith_div_i32(var_1.a, abs(-1i)), -(~3785i), firstLeadingBit(0i)) ^ vec3<i32>(u_input.a.x, reverseBits(1i), 7750i), ~4294967295u, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1549f)) * var_0.e));
    return -(vec4<i32>(-1i) * -(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -38236i, u_input.a.x, u_input.a.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c, var_0.c, 4294967295u, 4294967295u), vec4<u32>(var_0.c, 4294967295u, 40072u, 50448u)) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~arg_0.x) | min(u_input.a.x, 98i), ~(~arg_0.x) ^ arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.x, 14258i, u_input.b.x), u_input.a) >> (countOneBits(~4294967295u) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1334i, 33689i), -(u_input.b.yx | vec2<i32>(-2147483647i, arg_0.x)))), -max(func_3(u_input.b.x & arg_0.x), -(~vec4<i32>(arg_0.x, -1i, 2310i, 2147483647i))));
    let var_1 = !select(select(!vec2<bool>(false, arg_1), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(arg_1, true)), vec2<bool>(arg_1, arg_1), true), !any(vec3<bool>(false, true, false))), !select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(true, true)), select(vec2<bool>(true, arg_1), !(!vec2<bool>(arg_1, arg_1)), any(vec4<bool>(false, false, true, arg_1))));
    let var_2 = Struct_3((_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_div_i32(u_input.b.x, u_input.a.x)) & -firstTrailingBit(-5306i)) >> (1u % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-472f)) * -955f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1054f, -985f)))), Struct_1(-1494f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-319f, -1209f)))), vec2<f32>(-298f, _wgslsmith_f_op_f32(-1338f + 294f))))));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, 0i), arg_0.xy, false), -vec2<i32>(-59297i, -2147483647i))) < arg_0.x, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, arg_0.x, 1i), min(u_input.a.ywx, arg_0)), 1u, var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(858f)), _wgslsmith_f_op_f32(-var_2.c.a), false)));
    var var_4 = 2147483647i;
    return ~var_3.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_0.c;
    var_0 = ~max(_wgslsmith_clamp_u32(~func_2(u_input.a.xxz, arg_0.a), abs(1u), 1u), _wgslsmith_div_u32(_wgslsmith_div_u32(~arg_0.c, _wgslsmith_mod_u32(4294967295u, arg_0.c)), firstLeadingBit(arg_0.c) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, 1u, arg_0.c), vec3<u32>(arg_0.c, 77694u, 23013u)) % 32u)));
    var var_1 = Struct_3(abs(u_input.a.x), Struct_1(_wgslsmith_f_op_f32(abs(109f)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.e * 1000f), _wgslsmith_div_f32(arg_0.e, -1385f))), arg_0.e)), Struct_1(_wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e, _wgslsmith_f_op_f32(-arg_0.e)))));
    var var_2 = Struct_3(max(_wgslsmith_clamp_i32(~min(9995i, u_input.a.x), -1i ^ -arg_1.x, 1i), select(arg_1.x, u_input.a.x ^ firstLeadingBit(arg_0.b.x), all(vec4<bool>(false, false, true, true)))), var_1.c, Struct_1(var_1.c.a, vec2<f32>(-591f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f + arg_0.e) + _wgslsmith_f_op_f32(f32(-1f) * -1252f)))));
    var var_3 = vec2<u32>(~(~4294967295u), ~(_wgslsmith_mod_u32(~arg_0.c, func_2(u_input.b, false)) << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, 1u, 0u), vec4<u32>(7573u, arg_0.c, arg_0.c, arg_0.c))) % 32u)));
    return reverseBits(min(~(~vec2<u32>(arg_0.c, 42324u)), ~firstTrailingBit(~vec2<u32>(9776u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~68143u, ~89259u) | _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), func_1(Struct_2(false, u_input.a.zwx, 0u, 48967i, 1771f), u_input.b.xx) ^ vec2<u32>(1u, 1u)), ~abs(func_1(Struct_2(true, vec3<i32>(-7745i, -1497i, -117i), 0u, -2147483647i, 888f), firstTrailingBit(vec2<i32>(u_input.b.x, -2147483647i)))));
    var var_1 = i32(-1i) * -9051i;
    var_1 = _wgslsmith_add_i32(22258i, firstLeadingBit(u_input.b.x >> (_wgslsmith_sub_u32(var_0.x, var_0.x) % 32u)) & ~u_input.b.x);
    var_1 = 0i;
    var var_2 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false))));
    var_1 = 18695i << (_wgslsmith_sub_u32(min(var_0.x, var_0.x & var_0.x), var_0.x) % 32u);
    let var_3 = -19594i;
    let var_4 = var_2.xy;
    var var_5 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(-42152i));
}

