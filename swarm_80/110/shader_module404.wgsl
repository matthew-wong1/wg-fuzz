struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, false, true)), Struct_4(vec3<bool>(false, true, true)), Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, true)), Struct_4(vec3<bool>(true, true, false)));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    let var_0 = !vec2<bool>(!(reverseBits(0u) < ~arg_0.x), false);
    let var_1 = -vec2<i32>(arg_2, arg_2);
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(-9354i, _wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, -2147483647i, var_1.x, arg_1.x)), max(select(vec4<i32>(arg_1.x, 1i, 37672i, arg_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, -2147483647i), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<i32>(arg_2, 9658i, -36581i, 53819i) | vec4<i32>(var_1.x, 47082i, 28378i, arg_2)))), _wgslsmith_add_i32(var_1.x >> (arg_0.x % 32u), -48573i));
}

fn func_3() -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1159f + -1727f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-892f + 783f), _wgslsmith_f_op_f32(trunc(-244f)), true)))), 458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1337f)) * _wgslsmith_f_op_f32(trunc(-941f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f))));
    var var_1 = ~((reverseBits(vec3<i32>(0i, -1i, 0i)) << (reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(14522u, u_input.a, u_input.a))) % vec3<u32>(32u))) ^ ~(-vec3<i32>(1i, 1i, 1i)));
    var_1 = reverseBits(abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, -1i, -2147483647i) << (vec3<u32>(17066u, 4294967295u, 10237u) % vec3<u32>(32u)), vec3<i32>(var_1.x, -15799i, var_1.x), countOneBits(vec3<i32>(var_1.x, var_1.x, var_1.x)))));
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    return ~(min(u_input.a, ~13947u) & _wgslsmith_add_u32(u_input.a, u_input.a));
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(-vec4<i32>(1i, 61721i, -(~2147483647i), func_2(arg_0.xy, ~vec2<i32>(-11701i, 1i), _wgslsmith_div_i32(62538i, -18182i))), max(abs(~(~u_input.a)), ~func_3()), Struct_1(~arg_0.x), _wgslsmith_f_op_f32(-143f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1332f, -725f)), _wgslsmith_div_f32(-217f, _wgslsmith_f_op_f32(floor(-1485f)))))));
    var var_1 = any(select(vec4<bool>(true, false, false, (29080u & u_input.a) > ~u_input.a), vec4<bool>(false, false, true, any(vec2<bool>(true, true)) || false), true));
    var var_2 = arg_0.zz;
    var_1 = _wgslsmith_div_u32(reverseBits(arg_0.x), _wgslsmith_sub_u32(4294967295u, 1u)) >= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~arg_0.xz), _wgslsmith_add_vec2_u32((vec2<u32>(var_2.x, 33423u) ^ arg_0.zy) & arg_0.yy, ~vec2<u32>(4294967295u, arg_0.x)));
    let var_3 = ~3836u;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(func_1(~vec3<u32>(u_input.a, u_input.a, 43508u))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(177f, -572f)))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false)))), true);
    global0 = array<Struct_4, 13>();
    var var_1 = -1i;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, ~(-50358i)), _wgslsmith_div_i32(-1i, firstTrailingBit(1i)) >> (func_3() % 32u));
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i >> (u_input.a % 32u), -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -1i), vec2<i32>(1i, 1i))), abs(select(vec2<i32>(-41170i, -2147483647i) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), -vec2<i32>(1i, -48408i), true)) ^ select(-vec2<i32>(-4935i, 1i), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-40506i, 0i)), vec2<i32>(36611i, 30414i)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-4191i, 1i)), vec2<i32>(1i, 1i)) >> (max(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 29042u)) % vec2<u32>(32u))) ^ vec2<i32>((-18796i >> (u_input.a % 32u)) & -33675i, 17662i), _wgslsmith_div_i32(firstLeadingBit(-max(-2147483647i, 1i)), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1208i), vec2<i32>(25284i, 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(171f)) + -512f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, u_input.a, 4294967295u))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - 1749f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1483f + -1616f))))), -2147483647i);
}

