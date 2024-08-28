struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, -2030f, -285f, 603f), vec4<f32>(1212f, arg_0.x, -1505f, 219f), false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, 275f, arg_0.x), vec4<f32>(-334f, -1631f, arg_0.x, -1586f)))))) - vec4<f32>(1050f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1110f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), -956f)));
    let var_1 = vec2<u32>(83616u, ~4294967295u);
    var var_2 = var_1;
    var var_3 = max(select(vec4<i32>(2147483647i, _wgslsmith_sub_i32(-arg_2, arg_2), arg_2, arg_2), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_2, arg_2, arg_2), _wgslsmith_div_i32(25783i, arg_2), 0i, -15567i & arg_2), (vec4<i32>(arg_2, -2147483647i, 0i, arg_2) >> (u_input.a % vec4<u32>(32u))) >> (max(vec4<u32>(arg_1.b.x, u_input.a.x, 1u, 97324u), u_input.a) % vec4<u32>(32u))), true), ~vec4<i32>(~(~arg_2), arg_2, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(arg_2, 1i))));
    var_3 = -(vec4<i32>(arg_2, arg_2, firstLeadingBit(firstLeadingBit(0i)), ~arg_2) >> (vec4<u32>(u_input.a.x ^ 47875u, ~26016u, u_input.a.x, ~(~4769u)) % vec4<u32>(32u)));
    return true & (_wgslsmith_div_i32(-1i, ~arg_2) < arg_2);
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = -_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(firstTrailingBit(-vec2<i32>(-2147483647i, -1i)), vec2<i32>(-1i) * -vec2<i32>(-24857i, 0i), vec2<i32>(1i, -1989i)), ~vec2<i32>(1i, 7056i << (0u % 32u)));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x)), ~(~max(u_input.a.zx, vec2<u32>(u_input.a.x, 0u)))) & 11432u;
    let var_2 = vec3<bool>(arg_0, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-779f, -585f, -871f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1488f, 1283f, -337f) * vec3<f32>(621f, 1000f, -656f)))), Struct_4(all(vec3<bool>(arg_0, false, true)), vec2<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x), ~13609u), var_1), _wgslsmith_mod_i32(-var_0.x, var_0.x), u_input.a.x), !func_3(vec3<f32>(_wgslsmith_f_op_f32(step(739f, -1056f)), _wgslsmith_f_op_f32(1021f * -498f), 1000f), Struct_4(arg_0, _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_1), u_input.a.zx), 670u), -var_0.x, ~1u ^ ~u_input.a.x));
    let var_3 = select(vec4<bool>(false || (51064u == _wgslsmith_sub_u32(u_input.a.x, 10309u)), true, true, select(true, ~4294967295u < (var_1 ^ var_1), true)), vec4<bool>(!any(vec3<bool>(var_2.x, arg_0, true)), any(select(select(vec4<bool>(arg_0, var_2.x, false, true), vec4<bool>(false, true, arg_0, true), true), !vec4<bool>(arg_0, true, arg_0, true), false)), select(min(var_1, 39118u), ~16596u, var_2.x) <= abs(4294967295u), !(!arg_0)), select(select(!(!vec4<bool>(true, false, var_2.x, var_2.x)), !select(vec4<bool>(arg_0, var_2.x, var_2.x, arg_0), vec4<bool>(false, arg_0, var_2.x, var_2.x), vec4<bool>(arg_0, true, arg_0, arg_0)), true), select(select(vec4<bool>(arg_0, false, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(false, false, true, var_2.x)), !select(vec4<bool>(var_2.x, arg_0, true, false), vec4<bool>(true, false, true, var_2.x), true), false), !(!arg_0)));
    let var_4 = Struct_3(vec4<bool>(var_2.x, false, var_2.x, !var_2.x), abs(i32(-1i) * -1i));
    return var_0.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = ~(~_wgslsmith_sub_vec2_u32((vec2<u32>(u_input.a.x, u_input.a.x) << (vec2<u32>(4294967295u, 5968u) % vec2<u32>(32u))) << (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), u_input.a.zz));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1116f, 1095f), vec2<f32>(-1193f, -369f), arg_1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1298f, -1698f), vec2<f32>(-1499f, -807f), arg_1.x)), arg_1)))));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, min(1u, 61888u)), vec3<u32>(var_0.x >> (82714u % 32u), 53964u, min(var_0.x, var_0.x))), _wgslsmith_mult_u32(~26914u, 0u)), u_input.a.xz);
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1733f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(var_1.x, -1376f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-777f, -185f)), _wgslsmith_f_op_f32(trunc(var_1.x)))))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2 * vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(639f - var_2.x), select(arg_1.x, true, arg_1.x))), var_2.x)), _wgslsmith_f_op_vec2_f32(var_2 - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-367f + _wgslsmith_f_op_f32(sign(1317f))))));
    return false;
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    var var_0 = !func_4(vec2<i32>(1i, func_2(true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(true, true, true, false)))));
    var var_1 = Struct_2(~reverseBits(vec3<u32>(~39979u, _wgslsmith_sub_u32(u_input.a.x, 0u), 1u)), _wgslsmith_f_op_f32(floor(299f)));
    var_0 = !func_4(select(firstTrailingBit(-vec2<i32>(6055i, 26121i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(-3507i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i)), vec2<bool>(true, true)), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true));
    var_1 = Struct_2(~(~(~firstTrailingBit(var_1.a))), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(sign(514f)))));
    var_1 = Struct_2(u_input.a.yzw, var_1.b);
    return StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), ~u_input.a) >> (~18696u % 32u), _wgslsmith_add_vec2_u32(var_1.a.xx, (_wgslsmith_mult_vec2_u32(var_1.a.zy, var_1.a.zz) >> ((var_1.a.xy & var_1.a.xx) % vec2<u32>(32u))) & ~(~vec2<u32>(u_input.a.x, var_1.a.x))), u_input.a.x, var_1.b, _wgslsmith_mult_i32(max(1i, ~0i), countOneBits(43379i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = abs(728u);
    var_0 = ~u_input.a.x;
    let var_2 = -429f;
    var var_3 = ~abs(countOneBits(vec2<i32>(~72674i, -9341i)));
    var var_4 = _wgslsmith_f_op_f32(exp2(var_2));
    let x = u_input.a;
    s_output = func_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-107f)) * _wgslsmith_f_op_f32(round(var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(684f * _wgslsmith_f_op_f32(var_2 * var_2))), -953f));
}

