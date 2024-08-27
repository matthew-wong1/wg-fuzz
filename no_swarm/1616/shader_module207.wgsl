struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> vec2<bool> {
    global0 = array<Struct_2, 25>();
    let var_0 = -922f;
    var var_1 = ~u_input.d;
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return arg_0.yx;
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = any(select(!func_2(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true, arg_0.x, ~vec3<u32>(u_input.c, u_input.c, u_input.c)), select(func_2(vec4<bool>(true, true, false, true), true, arg_0.x, firstTrailingBit(vec3<u32>(u_input.c, u_input.d, u_input.d))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), !any(vec3<bool>(true, false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)));
    let var_1 = Struct_1(u_input.a, u_input.e.x << (u_input.c % 32u));
    let var_2 = global0[_wgslsmith_index_u32(min(53278u, 13538u), 25u)];
    var var_3 = vec3<i32>(max(var_1.b, max(2147483647i, -11016i)), _wgslsmith_add_i32(~(-2024i), abs(8677i) ^ _wgslsmith_dot_vec2_i32(var_1.a, u_input.e.xy)), u_input.e.x);
    var_3 = ~min(-u_input.e ^ (select(u_input.e, u_input.e, vec3<bool>(false, false, false)) << (~vec3<u32>(31556u, var_2.c, u_input.d) % vec3<u32>(32u))), ~(-(~u_input.e)));
    return -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(var_1.a.x, 0i, 15229i, u_input.e.x)) ^ -vec4<i32>(1i, 8674i, 21772i, var_3.x), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, 13198i, u_input.a.x, var_1.a.x), vec4<i32>(0i, var_3.x, u_input.b, 1i)))), max(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -14004i, var_3.x, 0i), vec4<i32>(var_1.b, 19718i, 0i, -371i)), -vec4<i32>(u_input.a.x, u_input.a.x, 0i, var_3.x)), -vec4<i32>(-2147483647i, var_1.b, var_1.b, -31564i)));
}

fn func_4(arg_0: i32, arg_1: bool) -> vec2<bool> {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(select(460f, 1300f, !(u_input.d <= 22946u) && arg_1));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -803f)))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -577f), -1295f));
    let var_3 = Struct_2(~min(1u, _wgslsmith_clamp_u32(u_input.d, _wgslsmith_div_u32(5370u, u_input.c), _wgslsmith_mod_u32(u_input.c, 0u))), ~abs(~46879u & ~u_input.c), u_input.c);
    return vec2<bool>(arg_1, arg_1 & (!arg_1 | true));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_1(select(~u_input.a, ~(-vec2<i32>(u_input.b, 2147483647i)) >> (_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_1, arg_0.b)), ~vec2<u32>(4294967295u, arg_0.c)) % vec2<u32>(32u)), vec2<bool>(!any(vec2<bool>(false, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)))), ~1i);
    let var_1 = select(select(select(func_2(vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)), -1060f, ~vec3<u32>(1u, arg_1, arg_1)), vec2<bool>(true, true), func_2(vec4<bool>(true, true, true, true), true, 1220f, ~vec3<u32>(49118u, arg_0.b, arg_0.a)).x), func_4(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, arg_2, -1370f, 615f) * vec4<f32>(arg_2, arg_2, -372f, 1422f))), arg_2 == 240f), !vec2<bool>(var_0.b == u_input.a.x, true)), func_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true)), 561f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1996f)) + _wgslsmith_div_f32(-748f, arg_2)), -884f, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d, 32267u), ~vec3<u32>(arg_1, 0u, arg_1), vec3<u32>(4294967295u, 0u, 35760u) ^ vec3<u32>(arg_1, 47927u, 4294967295u)), abs(vec3<u32>(arg_1, 0u, u_input.c)))), func_2(vec4<bool>(any(vec3<bool>(true, true, true)), true, false, true), all(func_2(vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_f32(arg_2 - arg_2), vec3<u32>(u_input.d, 0u, 6996u))), arg_2, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, arg_0.b, 629u)) ^ ~vec3<u32>(0u, 0u, 1u), ~(vec3<u32>(arg_0.c, 2696u, arg_1) | vec3<u32>(91872u, 0u, 54385u)))));
    let var_2 = select(select(!(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, true, !var_1.x && func_4(arg_3.x, true).x), any(vec3<bool>(true, var_1.x, true))), vec3<bool>(all(vec4<bool>(select(true, false, true), false, u_input.e.x > var_0.b, true)), all(var_1), var_0.a.x != var_0.b), vec3<bool>(func_2(!(!vec4<bool>(false, true, var_1.x, var_1.x)), u_input.c <= (u_input.d & arg_1), -2304f, vec3<u32>(0u, 4294967295u, u_input.d & 33520u)).x, func_2(vec4<bool>(arg_1 > arg_1, var_1.x, all(vec3<bool>(false, var_1.x, var_1.x)), true), !func_2(vec4<bool>(true, true, var_1.x, var_1.x), true, 1000f, vec3<u32>(u_input.d, arg_0.a, arg_1)).x, _wgslsmith_f_op_f32(sign(arg_2)), vec3<u32>(arg_1, ~7499u, arg_0.b)).x, var_1.x));
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_i32(max(-2147483647i, -u_input.b | -1965i), min(arg_3.x >> (~u_input.c % 32u), i32(-1i) * -62128i)));
    var var_4 = _wgslsmith_dot_vec2_u32(~max(~max(vec2<u32>(arg_1, 53885u), vec2<u32>(arg_0.a, 1u)), firstTrailingBit(~vec2<u32>(u_input.d, arg_1))), min(~(~(vec2<u32>(64389u, arg_0.a) << (vec2<u32>(17224u, arg_0.c) % vec2<u32>(32u)))), abs(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, arg_0.c), vec2<u32>(15364u, u_input.c))))));
    return Struct_2(27574u, abs(min(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.b, arg_1), vec3<u32>(arg_1, u_input.c, u_input.c)), 4294967295u)), ~_wgslsmith_clamp_u32(~arg_0.a, ~1u, firstTrailingBit(min(u_input.d, arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, true, !(!select(true, true, false)));
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-877f, 1582f)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -281f) - _wgslsmith_f_op_f32(3224f - -389f)), -559f) + _wgslsmith_f_op_f32(floor(-243f))));
    var var_3 = func_1(Struct_2(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(32018u, 1u)), select(17218u, u_input.c, var_0.x)), 29499u, 0u & (0u << (firstTrailingBit(u_input.d) % 32u))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, 0u, 34097u)), vec3<u32>(u_input.c, abs(u_input.c), _wgslsmith_add_u32(u_input.d, 1u)) << (vec3<u32>(0u, u_input.d, ~33281u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -548f), vec2<i32>(-16233i, select(u_input.a.x, firstTrailingBit(u_input.b) & ~u_input.b, true)));
    var_3 = Struct_2(var_3.a, _wgslsmith_div_u32(u_input.c, var_3.a), 1u & var_3.c);
    let var_4 = 65397u != (~36780u | var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1u, 34214u), vec4<u32>(0u, var_3.b, var_3.b, 1u), reverseBits(vec4<u32>(var_3.a, 32005u, 0u, 0u)))), vec4<u32>(_wgslsmith_mod_u32(71336u, ~17250u), 20725u, ~(var_3.b | 0u), u_input.d), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.c, 22594u, u_input.c)), vec4<u32>(4294967295u, 1u, var_3.a, 63501u)), ~(vec4<u32>(9377u, 4294967295u, 0u, var_3.c) & vec4<u32>(u_input.d, 77480u, u_input.c, u_input.c)))), -firstTrailingBit(-23566i));
}

