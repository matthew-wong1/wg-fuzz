struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec4<i32>(u_input.c.x ^ 1i, _wgslsmith_mult_i32(1i, abs(select(0i, 0i, false)) | 1i), u_input.c.x, -_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x << (u_input.b.x % 32u), u_input.c.x & 56396i), -1i));
    let var_1 = !(var_0.x == ~var_0.x);
    let var_2 = Struct_3(select(select(!(!vec2<bool>(false, var_1)), select(!vec2<bool>(false, var_1), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, var_1)), var_0.x >= _wgslsmith_sub_i32(-7101i, -10552i)), !vec2<bool>(false, var_1), var_1), _wgslsmith_clamp_u32(~1u, _wgslsmith_div_u32(~(~u_input.d.x), firstTrailingBit(u_input.a)), 49895u), !select(vec3<bool>(all(vec2<bool>(var_1, true)), false, false), vec3<bool>(var_1 & var_1, true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
    var var_3 = ~u_input.c.x ^ -2147483647i;
    var var_4 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-241f, _wgslsmith_f_op_f32(f32(-1f) * -1437f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-220f)))), -1000f)));
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(207f, 1233f, -1000f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -229f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(663f, 332f, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-502f, -364f, -371f))) * vec3<f32>(1101f, 1243f, -1207f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -1333f, _wgslsmith_div_f32(1254f, -1598f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(-3319f * 1983f), _wgslsmith_f_op_f32(min(-911f, 104f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, 1446f, -1686f) - vec3<f32>(761f, 1174f, -1507f)))))));
    let var_1 = _wgslsmith_add_vec4_i32(-select(~firstLeadingBit(vec4<i32>(u_input.c.x, -4211i, -19986i, u_input.c.x)), vec4<i32>(abs(u_input.c.x), -u_input.c.x, i32(-1i) * -546i, select(-2147483647i, -2147483647i, arg_0.a.x)), !vec4<bool>(arg_0.c.x, false, arg_0.a.x, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(u_input.c.x), 2147483647i), u_input.c.x, -34854i, 46120i), ~vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), -2147483647i, 480i << (arg_0.b % 32u), -2147483647i), -vec4<i32>(max(-1i, u_input.c.x), firstLeadingBit(u_input.c.x), abs(2147483647i), 26786i)));
    var_0 = vec3<f32>(1765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))) * -951f), var_0.x);
    var_0 = vec3<f32>(var_0.x, -874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2128f)))) * -107f) * _wgslsmith_div_f32(var_0.x, var_0.x)));
    let var_2 = arg_0.c.x;
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = 4294967295u;
    let var_1 = arg_3;
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 29016u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, arg_0.b, arg_0.b), vec4<u32>(arg_3.b, u_input.d.x, 1u, var_0))), ~vec3<u32>(19827u, u_input.d.x, arg_2.x) & u_input.b) >> (~(~(u_input.b ^ arg_2)) % vec3<u32>(32u)), ~(~(~_wgslsmith_clamp_vec3_u32(u_input.d, arg_2, arg_2))));
    var var_3 = _wgslsmith_clamp_vec3_i32(max(-select(vec3<i32>(arg_0.a, 1402i, arg_0.a), vec3<i32>(-24963i, -1913i, u_input.c.x), vec3<bool>(true, false, true)), vec3<i32>(6904i, 63509i, -2147483647i)), vec3<i32>(_wgslsmith_sub_i32(reverseBits(arg_3.a), -17854i), 1i, -(arg_3.a & 22494i)), vec3<i32>(-1i) * -vec3<i32>(-1i, var_1.a, arg_3.a)) >> (select(_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b), ~(u_input.d & vec3<u32>(var_0, arg_3.b, 35022u)), u_input.b), ~countOneBits(arg_2), vec3<bool>(true, true, true)) % vec3<u32>(32u));
    var var_4 = vec3<bool>(func_2(Struct_3(vec2<bool>(true, true), ~var_1.b, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), var_0 < arg_0.b))), select(true, true, func_2(Struct_3(vec2<bool>(true, false), u_input.a, vec3<bool>(true, true, false)))) || (-var_1.a <= var_1.a), func_2(Struct_3(vec2<bool>(true, true), 22770u, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))));
    return 1i >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_3.b, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_0.b, 4294967295u, 0u))) & firstTrailingBit(abs(0u)), ~firstTrailingBit(var_1.b >> (0u % 32u)), abs(_wgslsmith_div_u32(var_2.x, _wgslsmith_mod_u32(var_0, 42254u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(func_1(Struct_1(u_input.c.x, u_input.d.x), -1766f, u_input.d, Struct_1(u_input.c.x, u_input.b.x)), u_input.c.x, u_input.c.x >> (u_input.b.x % 32u), u_input.c.x), countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -976i)) ^ ~vec4<i32>(-2147483647i, 2147483647i, u_input.c.x, u_input.c.x)), u_input.a));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(-1i, ~_wgslsmith_clamp_u32(~u_input.d.x, ~var_0.a.b, 1u >> (u_input.b.x % 32u))));
    var var_1 = u_input.b.zz;
    var var_2 = Struct_1(-(~(-1i >> (select(var_0.a.b, 3789u, false) % 32u))), 0u);
    var var_3 = Struct_2(var_0.a);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1540f - -274f))) + -303f), -1183f, -2066f));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-select(vec4<i32>(2147483647i, u_input.c.x, var_0.a.a, -40872i), -vec4<i32>(var_0.a.a, -14624i, var_2.a, var_0.a.a), vec4<bool>(true, true, true, true))), vec2<u32>(13228u, 65284u), 0u, _wgslsmith_f_op_f32(-var_4.x));
}

