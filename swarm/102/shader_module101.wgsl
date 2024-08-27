struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = -u_input.c;
    var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(12043i) ^ min(reverseBits(55809i), min(u_input.c, -1762i)), ~countOneBits(_wgslsmith_add_i32(64329i, -1i)), ~u_input.c), select(-vec3<i32>(_wgslsmith_clamp_i32(u_input.c, -7987i, -4104i), 0i, min(u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.c, u_input.c, 58544i)), vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.c, -1i)), vec3<bool>(arg_3 | true, u_input.d != _wgslsmith_sub_u32(u_input.a.x, 26912u), arg_3)));
    var_0 = _wgslsmith_mult_i32(-31017i, ~u_input.c);
    var var_1 = arg_3;
    var var_2 = !(!select(!(!vec2<bool>(arg_3, false)), !vec2<bool>(true, arg_3), !(!vec2<bool>(false, arg_3))));
    return -853f;
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1371f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-950f - -2080f), -1101f))), 4294967295u | u_input.d);
    let var_1 = !all(vec3<bool>(_wgslsmith_f_op_f32(step(var_0.a, -805f)) > -1000f, true, _wgslsmith_f_op_f32(f32(-1f) * -1566f) >= _wgslsmith_f_op_f32(-813f - var_0.a)));
    let var_2 = !(u_input.c != -_wgslsmith_add_i32(u_input.c, u_input.c & u_input.c));
    let var_3 = ~u_input.a;
    let var_4 = vec4<bool>(true, !var_1, any(!select(!vec3<bool>(var_1, false, var_1), !vec3<bool>(false, var_2, true), all(vec2<bool>(true, false)))), !select(false, !(u_input.c < 2147483647i), all(vec3<bool>(true, var_2, var_2))));
    return max(abs(-(~vec4<i32>(-1i, -2147483647i, 13664i, -14837i))) & ~(~vec4<i32>(-2147483647i, -33297i, -58772i, u_input.c) & -vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), min(vec4<i32>(min(-51518i, u_input.c), ~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c), vec4<i32>(23859i, 45098i, u_input.c, u_input.c)), ~u_input.c) << (vec4<u32>(_wgslsmith_div_u32(var_0.b, var_0.b), ~0u, firstTrailingBit(var_3.x), u_input.d) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.c), 1i, u_input.c, u_input.c)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(22598u, _wgslsmith_mult_vec3_i32(vec3<i32>(16558i, arg_1.x, u_input.c), vec3<i32>(1i, ~(~u_input.c), 23999i)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(arg_1, arg_1), -(arg_1 << (vec4<u32>(1u, 0u, 950u, 65155u) % vec4<u32>(32u))) << (~(vec4<u32>(arg_0.a.b, arg_0.a.b, 0u, arg_0.a.b) & vec4<u32>(19076u, 4294967295u, 20907u, 4294967295u)) % vec4<u32>(32u)), min(reverseBits(func_3()), -firstLeadingBit(vec4<i32>(-1i, 67026i, 3828i, 0i)))));
    let var_1 = Struct_3(1u, vec3<i32>(~1881i, ~firstTrailingBit(var_0.b.x) & ~(-34699i), var_0.c.x), vec4<i32>(~(-(arg_1.x ^ -29916i)), _wgslsmith_mod_i32(max(_wgslsmith_clamp_i32(var_0.b.x, 7402i, 1i), arg_1.x), 0i), -arg_1.x, _wgslsmith_mod_i32(arg_1.x, -30903i)));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.b.x & 4294967295u), ~(var_0.a | arg_0.a.b), arg_0.a.b, ~52679u), _wgslsmith_clamp_vec4_u32(vec4<u32>(33896u, var_1.a, 41995u, var_0.a), vec4<u32>(var_0.a, var_0.a, arg_0.a.b, var_0.a), ~vec4<u32>(var_0.a, var_1.a, var_1.a, 1u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(9154u, var_0.a, 4294967295u, 43772u), vec4<u32>(4294967295u, 1u, 1u, 41664u) >> (vec4<u32>(var_0.a, arg_0.a.b, 1u, var_0.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 1u, u_input.a.x, arg_0.a.b), vec4<u32>(1u, 1u, 1u, u_input.b.x))) % vec4<u32>(32u))) ^ ~_wgslsmith_mult_vec4_u32((vec4<u32>(27461u, 0u, var_1.a, var_1.a) << (vec4<u32>(7891u, var_1.a, u_input.d, u_input.b.x) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 69103u, var_1.a, var_0.a), vec4<u32>(arg_0.a.b, arg_0.a.b, u_input.a.x, 74534u)), ~vec4<u32>(4294967295u, var_1.a, 58802u, 1u));
    var_0 = Struct_3(~(~(0u >> (var_1.a % 32u))), -var_1.b, ~(~var_0.c << (firstTrailingBit(abs(vec4<u32>(var_1.a, 1u, 0u, var_1.a))) % vec4<u32>(32u))));
    let var_3 = u_input.c;
    return Struct_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(true, any(vec4<bool>(true, true, true, true)));
    let var_1 = func_2(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-456f, vec4<f32>(-559f, 979f, -1060f, -1198f), Struct_2(Struct_1(555f, 28459u)), var_0.x)), -435f), u_input.a.x)), vec4<i32>(u_input.c, u_input.c, 1i, 1i) & ~max(-vec4<i32>(-2211i, 0i, -58309i, -1i), -vec4<i32>(u_input.c, u_input.c, u_input.c, -17466i)));
    var var_2 = ~(~vec4<u32>(var_1.a.b, var_1.a.b, 1u, ~(~var_1.a.b)));
    let var_3 = ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.b, 4294967295u, min(u_input.a.x, 1u), ~70194u), vec4<u32>(var_2.x, u_input.b.x, 0u, var_2.x) >> (countOneBits(vec4<u32>(0u, 10289u, var_1.a.b, var_2.x)) % vec4<u32>(32u))) & reverseBits(~(~(~vec4<u32>(1u, var_1.a.b, 28075u, 38551u))));
    let var_4 = Struct_3(1u, reverseBits(max(func_3().yyy, vec3<i32>(-2147483647i, u_input.c, u_input.c))) ^ vec3<i32>(u_input.c, u_input.c, _wgslsmith_add_i32(~1i, 1i)), vec4<i32>(~(-19663i), u_input.c, 1i, ~(~0i) ^ (u_input.c >> (max(var_3.x, u_input.d) % 32u))));
    let var_5 = _wgslsmith_mult_vec2_i32(~var_4.b.yx, vec2<i32>(_wgslsmith_dot_vec3_i32(select(var_4.c.wwx, vec3<i32>(var_4.b.x, u_input.c, var_4.c.x), vec3<bool>(var_0.x, var_0.x, var_0.x)) >> (var_3.xzx % vec3<u32>(32u)), select(vec3<i32>(var_4.c.x, 2147483647i, 0i), var_4.c.wzw, select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, var_0.x), var_0.x))), firstLeadingBit(-1892i)));
    var_2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~(4294967295u & var_4.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 28378u, 39917u), var_2.www)), u_input.b.x), _wgslsmith_mult_u32(~(~_wgslsmith_add_u32(41330u, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(32899u, 1u)), vec2<u32>(7940u, 47693u)), vec2<u32>(1u, 4294967295u | var_4.a))), min(4294967295u, 4294967295u ^ var_2.x), ~min(_wgslsmith_dot_vec4_u32(var_3, var_3) & _wgslsmith_sub_u32(66811u, var_4.a), var_3.x));
    var_2 = vec4<u32>(~var_2.x, var_4.a, var_2.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(select(firstTrailingBit(vec4<u32>(var_3.x, u_input.b.x, var_4.a, var_4.a)), ~vec4<u32>(var_3.x, 4294967295u, var_4.a, u_input.b.x), var_0.x)), select(select(_wgslsmith_clamp_vec4_u32(var_3, vec4<u32>(4294967295u, 1u, 22818u, u_input.d), vec4<u32>(1u, var_4.a, var_4.a, var_3.x)), _wgslsmith_div_vec4_u32(var_3, vec4<u32>(28796u, 4294967295u, 1u, var_4.a)), var_0.x != var_0.x), var_3, !var_0.x || !var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yyx, -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.a.a, -584f))))), vec2<f32>(-539f, _wgslsmith_f_op_f32(abs(var_1.a.a))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1182f, -1142f)), vec2<f32>(-1856f, -1376f), vec2<bool>(false, true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, -1074f) - vec2<f32>(var_1.a.a, var_1.a.a))))), vec3<f32>(var_1.a.a, var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(776f)))));
}

