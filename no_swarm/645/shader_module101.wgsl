struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec2<f32> {
    var var_0 = countOneBits(~select(-vec3<i32>(-2147483647i, u_input.b, u_input.b), abs(vec3<i32>(u_input.b, u_input.b, 28595i)), arg_0.xyx) << (u_input.d % vec3<u32>(32u)));
    var var_1 = !(!vec4<bool>(!all(vec4<bool>(true, false, false, arg_1.x)), true, true, true));
    var_0 = _wgslsmith_clamp_vec3_i32(select(abs(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -1i, -27489i), vec3<i32>(var_0.x, -50499i, u_input.b)))), abs(vec3<i32>(1i, u_input.b, abs(u_input.b))), true), firstLeadingBit(vec3<i32>(firstTrailingBit(-40173i), ~min(u_input.b, 2147483647i), var_0.x)), _wgslsmith_mod_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x, var_0.x), vec3<i32>(-1i, 27331i, var_0.x)), -vec3<i32>(u_input.b, u_input.b, u_input.b)), select(~vec3<i32>(u_input.b, var_0.x, u_input.b) << (_wgslsmith_clamp_vec3_u32(u_input.a.yzy, vec3<u32>(47203u, u_input.c.x, 1018u), u_input.e) % vec3<u32>(32u)), vec3<i32>(~0i, ~(-33448i), u_input.b), arg_0.x)));
    var var_2 = u_input.b;
    var_0 = abs(-(~vec3<i32>(~48912i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, 785i, 0i), vec4<i32>(u_input.b, -13524i, 1i, var_0.x)), ~var_0.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(-880f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(353f)) * 374f)))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false))) + vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))), vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -782f), true))))), arg_2, !vec2<bool>(true, any(vec3<bool>(false, false, true)) && true)));
    var var_1 = Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1846f, -108f)));
    return var_1.b.zy;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = vec3<f32>(-281f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.x))), 567f);
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(-194f)), _wgslsmith_f_op_f32(min(-346f, arg_3.x)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(u_input.d, arg_0, 0u), 34985i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.xy * arg_3.zx), _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(arg_2, arg_2, true, false)))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-851f, _wgslsmith_f_op_f32(-arg_3.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(-1178f, 1403f), _wgslsmith_f_op_f32(f32(-1f) * -1274f)))));
    var_1 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_4(vec3<u32>(56366u, 9822u, u_input.d.x), arg_0, 16409u), max(arg_0, u_input.b), vec2<f32>(-1389f, 1332f))).x))));
    return firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -1i, _wgslsmith_mod_i32(-1i, 2147483647i)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    var var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -1i, -_wgslsmith_add_i32(36327i, u_input.b)), ~(-vec2<i32>(2147483647i, -40566i)) ^ func_2(-u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, 1443f, -719f) * vec3<f32>(-1025f, arg_0.a.a, -1249f)), arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.x, arg_0.a.a, -1282f) - vec3<f32>(729f, 980f, -453f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.b.x, arg_0.a.b.x, -1284f))) + arg_0.a.b))), _wgslsmith_f_op_vec3_f32(-arg_0.a.b)));
    var_0 = vec2<i32>(-_wgslsmith_sub_i32(_wgslsmith_add_i32(~(-2147483647i), u_input.b), _wgslsmith_mod_i32(2147483647i, u_input.b)), -1i >> (_wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(u_input.a)) % 32u));
    var_0 = abs(firstTrailingBit(vec2<i32>(firstTrailingBit(1591i), ~(-30711i)))) | (vec2<i32>(-var_0.x | -var_0.x, var_0.x) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), -reverseBits(vec2<i32>(-2147483647i, var_0.x))));
    let var_2 = firstTrailingBit(select(-(vec3<i32>(u_input.b, var_0.x, -84766i) | -vec3<i32>(var_0.x, 14825i, u_input.b)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-88554i, -2147483647i, var_0.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, 2147483647i), vec3<i32>(var_0.x, u_input.b, var_0.x)), 13779i, 637i)), arg_1));
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))).x, -1000f), Struct_1(358f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, arg_0.b.x, 645f)))))))), all(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))));
    let var_1 = var_0;
    let var_2 = !var_0.c || select(var_0.c, var_0.c, all(!vec4<bool>(true, false, var_0.c, false)));
    var var_3 = Struct_4(arg_3, -1i, _wgslsmith_dot_vec3_u32(arg_3, ~_wgslsmith_mod_vec3_u32(u_input.d ^ vec3<u32>(1u, arg_3.x, u_input.e.x), arg_3 ^ vec3<u32>(61588u, u_input.d.x, arg_3.x))));
    var_3 = Struct_4(arg_3, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_add_i32(arg_1, 0i), u_input.b >> (4294967295u % 32u), firstTrailingBit(u_input.b)), -vec4<i32>(u_input.b, u_input.b, 25603i, -1i)), ~20495u);
    return !(!select(!(!vec4<bool>(var_2, var_0.c, var_2, true)), !vec4<bool>(true, true, var_0.c, true), !all(vec3<bool>(var_2, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !((_wgslsmith_f_op_f32(-273f + -470f) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(916f - 179f), _wgslsmith_f_op_f32(-1217f * -435f)))) & any(vec3<bool>(true, true, true)));
    let var_1 = select(select(vec4<bool>(false == all(vec3<bool>(true, false, var_0)), true, var_0, any(!vec2<bool>(var_0, var_0))), select(vec4<bool>(var_0, var_0 & var_0, !var_0, !var_0), !select(vec4<bool>(false, var_0, false, true), vec4<bool>(var_0, false, var_0, true), vec4<bool>(true, true, true, true)), func_5(func_1(Struct_3(Struct_1(335f, vec3<f32>(-802f, 426f, -1793f)), vec2<u32>(0u, u_input.e.x)), true), -16736i, func_1(Struct_3(Struct_1(441f, vec3<f32>(565f, 211f, 513f)), u_input.c), var_0), select(u_input.e, vec3<u32>(27407u, 57702u, 0u), true))), false), select(!(!(!vec4<bool>(false, true, var_0, var_0))), vec4<bool>(var_0, u_input.b == u_input.b, any(vec4<bool>(var_0, false, var_0, false)), var_0), true), any(!vec4<bool>(true, true, var_0, true)));
    let var_2 = vec3<u32>(4294967295u, u_input.e.x, ~(~4294967295u));
    let var_3 = max(vec4<i32>(u_input.b, (u_input.b << (~u_input.d.x % 32u)) >> (u_input.a.x % 32u), u_input.b, -35263i), -(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 41858i) ^ vec4<i32>(1i, 0i, u_input.b, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -33937i, u_input.b), vec4<i32>(5338i, -1i, u_input.b, -2147483647i))) << (~u_input.a % vec4<u32>(32u))));
    let var_4 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.d) | max(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, 99301u, var_2.x), vec3<u32>(u_input.e.x, var_2.x, 4294967295u)), vec3<u32>(var_2.x, 28807u, u_input.d.x)), vec3<u32>(max(~u_input.e.x, var_2.x | 4294967295u), ~countOneBits(4503u), var_2.x)), u_input.c.x);
    var var_5 = var_3.xz;
    var_5 = -vec2<i32>(-(1i ^ u_input.b), _wgslsmith_clamp_i32(-33541i, u_input.b, -3814i));
    var var_6 = Struct_5(-_wgslsmith_div_vec2_i32(var_3.zx, func_2(var_3.x, vec3<f32>(530f, 866f, 834f), select(var_1.x, false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(315f, 219f, -279f) - vec3<f32>(-372f, -466f, 516f)))), 1i, vec3<i32>(-6196i << ((_wgslsmith_sub_u32(var_4, u_input.e.x) & ~var_4) % 32u), -61i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(var_3.xxy, var_3.zyw), -var_3.xwz), vec3<i32>(_wgslsmith_mult_i32(var_5.x, -2147483647i), 1i, i32(-1i) * -1i))));
    let var_7 = !select(var_1, var_1, all(!vec4<bool>(true, var_1.x, var_0, true)) && var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec3<u32>(27833u, var_4, 78943u))) | reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(8389u, 63582u, 1u), vec3<u32>(var_2.x, 0u, 61519u))), var_5.x, ~min(~25269u, ~_wgslsmith_add_u32(u_input.e.x, var_4)), -1i);
}

