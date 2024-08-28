struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_5) -> i32 {
    global0 = Struct_2(Struct_1(arg_0.a.ww, vec4<i32>(-(-5801i >> (1u % 32u)), 49771i, ~_wgslsmith_div_i32(global0.b.b.x, global0.a.b.x), -(u_input.a.x ^ arg_0.a.x)), !arg_0.b.c, ~(-(vec4<i32>(1i, 3156i, -23800i, 16298i) << (arg_0.d % vec4<u32>(32u))))), global0.b, _wgslsmith_mult_u32(~max(firstLeadingBit(3204u), 1u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(min(19887u, 17691u), 4294967295u & global0.c), global0.c)));
    var var_0 = !(!(!select(select(vec4<bool>(global0.b.c.x, global0.a.c.x, true, false), vec4<bool>(false, global0.a.c.x, true, global0.b.c.x), global0.b.c.x), !vec4<bool>(arg_0.b.c.x, true, false, false), true)));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~arg_0.d.xwz), vec3<u32>(1u, ~arg_0.d.x, ~50512u)), _wgslsmith_add_vec3_u32(arg_0.d.yxz, ~(vec3<u32>(0u, 0u, 74034u) | vec3<u32>(global0.c, 0u, arg_0.d.x)))), ~_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(arg_0.d.x, global0.c >> (arg_0.d.x % 32u))));
    global0 = Struct_2(Struct_1(arg_0.a.zz, abs((arg_0.a ^ global0.a.b) & firstTrailingBit(vec4<i32>(global0.b.d.x, 1i, 857i, -1i))), !select(global0.a.c, !arg_0.b.c, true | var_0.x), _wgslsmith_mult_vec4_i32(-global0.a.d, reverseBits(_wgslsmith_mod_vec4_i32(global0.b.b, arg_0.a)))), Struct_1(-(vec2<i32>(-1i) * -vec2<i32>(global0.a.b.x, u_input.a.x)), max(vec4<i32>(u_input.a.x, 1i, _wgslsmith_sub_i32(-2147483647i, global0.b.a.x), -2147483647i), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, 2274i, 2147483647i), arg_0.a), ~arg_0.a)), global0.a.c, _wgslsmith_sub_vec4_i32(-global0.a.d, (arg_0.b.b ^ arg_0.b.d) >> (_wgslsmith_mod_vec4_u32(arg_0.d, vec4<u32>(var_1, 6161u, arg_0.d.x, arg_0.d.x)) % vec4<u32>(32u)))), _wgslsmith_mod_u32(82661u, arg_0.d.x));
    var_0 = select(select(select(select(select(vec4<bool>(true, true, true, global0.a.c.x), vec4<bool>(false, false, global0.b.c.x, true), vec4<bool>(global0.a.c.x, false, arg_0.b.c.x, arg_0.b.c.x)), !vec4<bool>(true, true, false, arg_0.b.c.x), vec4<bool>(true, var_0.x, arg_0.b.c.x, false)), vec4<bool>(global0.b.c.x, true, arg_0.b.c.x, true), true), vec4<bool>(true, any(arg_0.b.c.xy), var_0.x, -u_input.a.x != -71882i), all(!(!vec4<bool>(true, var_0.x, false, false)))), select(select(!(!vec4<bool>(arg_0.b.c.x, true, false, arg_0.b.c.x)), !(!vec4<bool>(var_0.x, global0.a.c.x, false, var_0.x)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, ~global0.c == firstLeadingBit(arg_0.d.x), arg_0.b.c.x, all(!vec4<bool>(false, global0.a.c.x, var_0.x, arg_0.b.c.x)))), !select(!vec4<bool>(false, global0.b.c.x, arg_0.b.c.x, var_0.x), select(select(vec4<bool>(arg_0.b.c.x, false, arg_0.b.c.x, false), vec4<bool>(true, arg_0.b.c.x, false, false), global0.a.c.x), select(vec4<bool>(arg_0.b.c.x, false, var_0.x, true), vec4<bool>(true, false, false, true), false), false), select(select(vec4<bool>(global0.b.c.x, true, false, true), vec4<bool>(true, false, arg_0.b.c.x, var_0.x), vec4<bool>(global0.a.c.x, var_0.x, arg_0.b.c.x, global0.a.c.x)), select(vec4<bool>(false, arg_0.b.c.x, false, true), vec4<bool>(arg_0.b.c.x, true, global0.b.c.x, global0.a.c.x), vec4<bool>(false, true, false, arg_0.b.c.x)), select(vec4<bool>(true, global0.a.c.x, false, arg_0.b.c.x), vec4<bool>(true, false, global0.a.c.x, true), vec4<bool>(global0.a.c.x, false, global0.b.c.x, global0.a.c.x)))));
    return ~(_wgslsmith_clamp_i32(arg_0.a.x, _wgslsmith_add_i32(arg_0.c, -1i), -2147483647i) << (1u % 32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: bool) -> bool {
    global0 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(5423i, 2147483647i), u_input.a)), vec2<i32>(56168i, reverseBits(-46947i))), _wgslsmith_div_vec4_i32(global0.a.d, global0.a.d), select(vec3<bool>(global0.a.c.x, arg_1.x, any(vec4<bool>(global0.b.c.x, true, global0.a.c.x, arg_1.x))), vec3<bool>(!arg_2, !global0.b.c.x, true), arg_2), firstLeadingBit(vec4<i32>(global0.a.b.x, u_input.a.x ^ u_input.a.x, max(global0.b.b.x, -10675i), 21888i))), global0.a, ~(22221u | (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.c, global0.c)) & 0u)));
    let var_0 = (38301i <= u_input.a.x) & (global0.c < min(4294967295u, reverseBits(global0.c) >> (~7727u % 32u)));
    global0 = Struct_2(Struct_1(~(~global0.b.a) >> (~firstLeadingBit(vec2<u32>(global0.c, global0.c)) % vec2<u32>(32u)), vec4<i32>(global0.a.a.x, -2634i, func_3(Struct_5(global0.a.b, global0.a, -5209i, vec4<u32>(global0.c, global0.c, 0u, global0.c))), _wgslsmith_div_i32(~global0.b.d.x, 57829i)), select(vec3<bool>(global0.a.c.x | var_0, all(vec2<bool>(false, false)), arg_2), vec3<bool>(false, false, !var_0), true | select(true, false, arg_1.x)), max(vec4<i32>(-19902i, u_input.a.x, global0.a.b.x, global0.a.a.x) | ~global0.b.d, global0.a.b)), Struct_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, -1i)), vec2<i32>(global0.a.d.x, -4824i)) << (~reverseBits(vec2<u32>(1u, global0.c)) % vec2<u32>(32u)), select(countOneBits(global0.a.d) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 8576i, 2147483647i, 1i), global0.b.b), max(vec4<i32>(global0.a.d.x, 1i, 2147483647i, u_input.a.x), global0.a.b), arg_1), select(select(!global0.a.c, !global0.b.c, select(arg_1.ywy, arg_1.wxw, arg_1.wyx)), global0.a.c, vec3<bool>(arg_2, select(var_0, var_0, true), all(arg_1))), _wgslsmith_mod_vec4_i32(reverseBits(global0.a.b), global0.a.b)), 0u);
    global0 = Struct_2(Struct_1(~vec2<i32>(u_input.a.x, global0.a.b.x | u_input.a.x), -select(-global0.b.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, -18946i, 0i), vec4<i32>(0i, global0.b.b.x, 2147483647i, -11053i)), arg_1), !(!(!vec3<bool>(arg_2, global0.a.c.x, false))), ~global0.b.d), global0.a, firstTrailingBit(global0.c ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(67824u, 34385u, global0.c), vec3<u32>(global0.c, global0.c, global0.c)), ~10818u, true)));
    let var_1 = 949f;
    return var_1 < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(max(-1000f, var_1)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_div_vec3_i32(select(max(global0.a.b.wwz, vec3<i32>(u_input.a.x, u_input.a.x, 27224i)), global0.b.d.wwx, select(arg_0.x, true, false)), global0.a.d.zyz), abs(vec3<i32>(i32(-1i) * -2147483647i, -17037i, global0.b.a.x) & -global0.a.d.zxx), global0.a.d.zzx);
    let var_1 = global0.b.d;
    global0 = Struct_2(Struct_1(select(-(~var_0.xz), vec2<i32>(global0.a.a.x >> (global0.c % 32u), abs(1i)), !global0.b.c.x | (79270u <= global0.c)), select(firstTrailingBit(vec4<i32>(u_input.a.x, var_1.x, 46294i, u_input.a.x)) & ~vec4<i32>(-10908i, -1i, 1i, -2147483647i), global0.a.d, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1023f, 341f, -1194f)), !vec4<bool>(global0.a.c.x, global0.b.c.x, false, true), any(arg_0))), arg_0.yww, global0.b.d), Struct_1(_wgslsmith_clamp_vec2_i32(-var_1.wy, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.x, var_0.x), ~vec2<i32>(global0.b.a.x, global0.a.d.x)), countOneBits(vec2<i32>(5716i, var_1.x)) << (vec2<u32>(9493u, 1u) % vec2<u32>(32u))), -(~vec4<i32>(0i, u_input.a.x, var_1.x, var_1.x)), !global0.b.c, abs(select(vec4<i32>(u_input.a.x, var_0.x, 1i, u_input.a.x), -vec4<i32>(var_1.x, -1i, var_0.x, var_0.x), select(arg_0, arg_0, vec4<bool>(false, false, global0.b.c.x, global0.b.c.x))))), firstLeadingBit(global0.c));
    var var_2 = true;
    let var_3 = Struct_1(-var_0.zy, countOneBits(global0.a.d), !(!vec3<bool>(false, true, false & arg_0.x)), global0.a.d);
    return Struct_3(Struct_1(min(-countOneBits(vec2<i32>(-26832i, var_0.x)), _wgslsmith_clamp_vec2_i32(global0.a.a, abs(vec2<i32>(2147483647i, 0i)), var_3.d.xw & vec2<i32>(global0.a.a.x, var_0.x))), vec4<i32>(var_0.x, -1i, _wgslsmith_add_i32(var_3.a.x ^ 2147483647i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d.x, var_3.d.x, var_0.x), max(vec3<i32>(global0.b.a.x, u_input.a.x, 0i), vec3<i32>(2147483647i, 1i, 742i)))), arg_0.zzw, vec4<i32>(_wgslsmith_add_i32(~var_3.b.x, func_3(Struct_5(global0.b.d, global0.a, 77722i, vec4<u32>(4294967295u, global0.c, global0.c, 0u)))), _wgslsmith_dot_vec3_i32(global0.a.d.xyy, var_3.d.yyz << (vec3<u32>(3592u, global0.c, 1u) % vec3<u32>(32u))), _wgslsmith_clamp_i32(var_1.x, var_0.x, global0.b.a.x) & -80544i, -_wgslsmith_mult_i32(0i, 41632i))), Struct_2(var_3, global0.a, _wgslsmith_add_u32(1u, global0.c)), Struct_1(reverseBits(min(vec2<i32>(-48206i, global0.b.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(2147483647i, global0.a.a.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, global0.a.a.x, -8098i, 24296i), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(var_3.d.x, global0.a.a.x, var_3.b.x, -1i)), var_3.d)), vec3<bool>(!arg_0.x, true != global0.b.c.x, !any(arg_0.yz)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, global0.b.a.x, -2147483647i, 33655i), -vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, var_1.x), vec4<i32>(-2147483647i, var_0.x, u_input.a.x, -27573i) ^ var_3.b)), var_3.c.yy, ~_wgslsmith_mult_vec3_u32(select(~vec3<u32>(42832u, global0.c, 0u), ~vec3<u32>(21977u, global0.c, global0.c), select(vec3<bool>(true, true, false), var_3.c, var_3.c)), ~firstTrailingBit(vec3<u32>(global0.c, 4294967295u, 53776u))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global0 = func_4(!vec4<bool>(true, any(!vec2<bool>(global0.b.c.x, arg_0.c.c.x)), !global0.a.c.x, arg_0.b.b.c.x)).b;
    global0 = arg_0.b;
    global0 = Struct_2(func_4(vec4<bool>(any(vec2<bool>(arg_0.a.c.x, global0.a.c.x)), !arg_0.c.c.x, true, arg_0.c.c.x)).b.a, Struct_1(~abs(~u_input.a), arg_0.a.d, global0.a.c, _wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(arg_0.a.d.x), func_4(vec4<bool>(global0.a.c.x, global0.b.c.x, global0.a.c.x, arg_0.d.x)).b.b.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -59377i), global0.b.b.xy), _wgslsmith_mod_i32(-13173i, u_input.a.x)), -(~global0.b.b))), countOneBits(~_wgslsmith_mult_u32(_wgslsmith_div_u32(global0.c, 0u), min(0u, arg_0.e.x))));
    let var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(-(~arg_0.a.b), _wgslsmith_div_vec4_i32(global0.a.d, reverseBits(vec4<i32>(global0.b.b.x, u_input.a.x, 62266i, u_input.a.x))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.b.a.b.x, -2147483647i)), _wgslsmith_div_vec4_i32(global0.a.b, vec4<i32>(arg_1, u_input.a.x, -32558i, -2147483647i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-28620i, -_wgslsmith_clamp_i32(-21118i, arg_0.b.a.d.x, 0i), arg_0.a.d.x >> (_wgslsmith_add_u32(40705u, 0u) % 32u), _wgslsmith_dot_vec3_i32(~arg_0.c.d.zwx, vec3<i32>(u_input.a.x, -1i, -2147483647i))), global0.b.d << (countOneBits(arg_2) % vec4<u32>(32u))));
    global0 = func_4(vec4<bool>(false, true, all(!func_4(vec4<bool>(false, false, arg_0.c.c.x, true)).a.c), false)).b;
    return func_4(vec4<bool>(false, any(global0.b.c.yy) && true, true, true)).b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> bool {
    global0 = func_5(func_4(vec4<bool>(true, global0.b.c.x, true, !func_2(arg_1, vec4<bool>(true, global0.a.c.x, global0.a.c.x, false), false))), firstTrailingBit(countOneBits(-55978i)), vec4<u32>(~1u, abs(_wgslsmith_mult_u32(~55666u, _wgslsmith_clamp_u32(65096u, global0.c, arg_0.x))), ~(~max(9847u, global0.c)), 23583u));
    var var_0 = func_4(vec4<bool>(true, false, !all(vec3<bool>(false, global0.b.c.x, true)), false)).b;
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_0.b.a.x, -2147483647i)), vec2<i32>(-1i) * -vec2<i32>(var_0.b.d.x, global0.a.d.x)), -(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, 0i, 2147483647i), var_0.a.b)), vec3<bool>(~14538u != ~global0.c, func_2(arg_1, select(vec4<bool>(false, var_0.b.c.x, false, false), vec4<bool>(false, true, global0.b.c.x, var_0.a.c.x), vec4<bool>(true, false, var_0.a.c.x, false)), false), false), max(global0.b.b, vec4<i32>(0i, 1i, var_0.a.d.x, -1i) | reverseBits(global0.a.b))), 23306u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))) + vec2<f32>(arg_1.x, -1255f));
    var_0 = func_4(vec4<bool>(!global0.b.c.x, global0.b.c.x, (true && (global0.a.c.x | true)) & any(func_4(vec4<bool>(false, false, var_0.b.c.x, var_0.a.c.x)).c.c.zx), true)).b;
    return all(!(!func_5(Struct_3(Struct_1(vec2<i32>(global0.b.b.x, var_0.a.d.x), var_0.a.b, global0.a.c, global0.b.d), Struct_2(Struct_1(vec2<i32>(39707i, -60531i), vec4<i32>(var_0.a.d.x, global0.b.a.x, -95814i, u_input.a.x), vec3<bool>(var_0.b.c.x, var_0.a.c.x, true), vec4<i32>(-975i, 0i, 20399i, 4577i)), Struct_1(global0.a.b.zz, global0.a.b, vec3<bool>(global0.b.c.x, global0.a.c.x, global0.b.c.x), vec4<i32>(0i, 3258i, global0.b.a.x, var_0.a.b.x)), var_0.c), var_0.b, vec2<bool>(global0.b.c.x, var_0.a.c.x), vec3<u32>(var_0.c, 0u, 68514u)), abs(var_0.a.b.x), countOneBits(vec4<u32>(arg_0.x, global0.c, 25972u, arg_0.x))).b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, Struct_1(vec2<i32>((global0.a.b.x >> (68629u % 32u)) ^ (1i & global0.b.b.x), firstLeadingBit(u_input.a.x)), select(-global0.b.d, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 8687i) >> (vec4<u32>(global0.c, 2765u, global0.c, global0.c) % vec4<u32>(32u)), vec4<bool>(func_1(vec2<u32>(100573u, global0.c), vec3<f32>(2511f, 1226f, 1201f)), global0.a.c.x || global0.b.c.x, func_1(vec2<u32>(78853u, 36985u), vec3<f32>(-649f, 709f, -2232f)), !global0.b.c.x)), !(!global0.b.c), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, global0.b.b.x, -1i, u_input.a.x), -global0.a.d)), global0.c);
    global0 = Struct_2(Struct_1(-u_input.a, _wgslsmith_mult_vec4_i32(global0.b.b, vec4<i32>(-2874i, -35140i >> (global0.c % 32u), 1i & global0.a.d.x, global0.b.b.x)), select(vec3<bool>(!global0.b.c.x, !global0.b.c.x, true), !global0.b.c, false), reverseBits(_wgslsmith_sub_vec4_i32(global0.a.b, vec4<i32>(22190i, u_input.a.x, u_input.a.x, u_input.a.x)))), func_5(func_4(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, global0.b.c.x, false, global0.a.c.x), true)), -_wgslsmith_div_i32(global0.a.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-56185i, u_input.a.x))), vec4<u32>(global0.c, ~(global0.c >> (13663u % 32u)), 4294967295u, abs(4294967295u << (global0.c % 32u)))).a, _wgslsmith_dot_vec2_u32(firstLeadingBit(reverseBits(~vec2<u32>(1u, global0.c))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, reverseBits(42574u)), vec2<u32>(abs(56031u), 1u))));
    var var_0 = vec2<i32>(global0.a.d.x, u_input.a.x);
    let var_1 = var_0.x;
    let var_2 = Struct_1(~u_input.a, global0.a.b, func_5(Struct_3(global0.a, func_4(select(vec4<bool>(true, global0.b.c.x, global0.b.c.x, false), vec4<bool>(global0.b.c.x, global0.a.c.x, false, global0.b.c.x), global0.a.c.x)).b, Struct_1(u_input.a ^ vec2<i32>(var_0.x, global0.a.a.x), firstTrailingBit(vec4<i32>(-1i, global0.b.a.x, -3582i, 55183i)), global0.a.c, global0.b.b), func_4(vec4<bool>(global0.b.c.x, global0.a.c.x, global0.a.c.x, false)).d, min(vec3<u32>(0u, 56674u, global0.c), vec3<u32>(global0.c, 32731u, 0u))), 15560i, _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(32131u, 4294967295u, global0.c, global0.c), vec4<u32>(31156u, global0.c, 0u, global0.c))), max(vec4<u32>(1u, global0.c, 18424u, global0.c), vec4<u32>(27918u, global0.c, global0.c, global0.c) << (vec4<u32>(40217u, 0u, 9752u, global0.c) % vec4<u32>(32u))), ~(~vec4<u32>(1u, global0.c, 28945u, 4294967295u)))).b.c, vec4<i32>(-1i, var_0.x, func_5(Struct_3(global0.b, Struct_2(global0.a, global0.a, global0.c), Struct_1(global0.b.d.yx, global0.b.d, global0.a.c, global0.a.b), global0.a.c.xx, vec3<u32>(global0.c, global0.c, global0.c)), firstTrailingBit(global0.b.a.x), ~vec4<u32>(1u, global0.c, global0.c, 0u)).a.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(25282i, -28103i, -1i, 2147483647i), vec4<i32>(-13765i, 1i, -2147483647i, var_0.x)), u_input.a.x)) ^ vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -74725i, -17856i), global0.b.d.zwz), _wgslsmith_sub_i32(global0.b.d.x, var_0.x), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, 117f, 933f) * vec3<f32>(1215f, 938f, -456f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, -1424f, 395f) + vec3<f32>(850f, -1338f, -781f)))))));
}

