struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1079f)) + _wgslsmith_f_op_f32(trunc(1046f))), arg_2, arg_2 < _wgslsmith_f_op_f32(852f - -563f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(ceil(arg_2)), arg_3.x))))), _wgslsmith_sub_u32(19265u, arg_1.x), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(24060i, -14534i, u_input.a) >> (~arg_1.x % 32u)), _wgslsmith_add_i32(arg_0.b.x, -3147i), abs(~509i ^ (arg_0.b.x & 22971i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 225f)), var_0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -1000f) * _wgslsmith_f_op_vec2_f32(round(var_0.a))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f)) + _wgslsmith_f_op_f32(ceil(var_1.x)))), 292f);
    let var_2 = _wgslsmith_div_i32(reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.c.x, arg_0.b.x, 22832i), vec4<i32>(-1i, 0i, 2147483647i, 59729i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, arg_0.b.x, 1i), vec4<i32>(30754i, 9532i, 70456i, -39812i), vec4<i32>(u_input.a, 1i, 71944i, -2147483647i))), _wgslsmith_sub_i32(-arg_0.b.x, -2978i), arg_0.b.x, arg_0.b.x), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -82380i, u_input.a, var_0.c.x), vec4<i32>(-1i, var_0.c.x, -1i, 21509i)), reverseBits(vec4<i32>(var_0.c.x, var_0.c.x, -2147483647i, 46518i))) & max(vec4<i32>(u_input.a, 2147483647i, -3203i, 13895i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, 2147483647i, 13677i, arg_0.b.x), vec4<i32>(u_input.a, u_input.a, 0i, 11171i)))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a, var_0.a) - var_0.a))), var_0.a), vec2<f32>(_wgslsmith_f_op_f32(1154f - _wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(step(var_1.x, -794f))));
    return -reverseBits(firstLeadingBit(vec2<i32>(var_0.c.x & arg_0.b.x, 2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec3<u32> {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))), -302f);
    let var_2 = arg_0;
    let var_3 = Struct_1(var_0, firstTrailingBit(-func_3(Struct_1(vec3<bool>(var_0.x, true, false), arg_0.c.yx), vec4<u32>(1u, 1u, 25499u, arg_1), _wgslsmith_f_op_f32(var_1.x * var_1.x), vec2<bool>(true, var_0.x))));
    var var_4 = var_3;
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_2.b, _wgslsmith_mult_u32(arg_1, var_2.b | arg_0.b)), firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(13033u, 0u, 4294967295u), vec3<u32>(15102u, 22040u, var_2.b)))), 90407u), ~(~(~(~vec3<u32>(arg_1, 26515u, arg_1)))), vec3<u32>(max(35235u, 118027u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32598u, 4294967295u, 0u) & vec3<u32>(1u, var_2.b, arg_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(73012u, arg_0.b, 2851u), vec3<u32>(4294967295u, arg_1, var_2.b))), 74182u), firstTrailingBit(19912u)));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>((u_input.a <= 1i) | true, all(vec4<bool>(false, true, false, true)), false), abs(vec2<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(-23531i, u_input.a), 0i))));
    let var_1 = vec3<u32>(~(~arg_0.x), _wgslsmith_mult_u32(firstLeadingBit(58558u), ~_wgslsmith_dot_vec2_u32(select(arg_0.yy, vec2<u32>(0u, arg_0.x), vec2<bool>(false, var_0.a.x)), arg_0.xy)), 1903u);
    return Struct_1(vec3<bool>(any(vec3<bool>(!var_0.a.x, var_0.a.x, select(false, true, false))), var_0.a.x, !all(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))), -var_0.b);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_4(func_2(Struct_2(vec2<f32>(-119f, _wgslsmith_f_op_f32(-411f - 811f)), 5718u, ~(vec3<i32>(67320i, u_input.a, 0i) | vec3<i32>(40357i, -14455i, arg_0))), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(17835u, 25854u), ~14627u)));
    let var_1 = Struct_1(var_0.a, vec2<i32>(-u_input.a, var_0.b.x));
    var var_2 = max(select(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 0u, 1u), ~vec4<u32>(1u, 2642u, 0u, 87853u)), 20929u, false), countOneBits(1u));
    var_2 = 1u;
    let var_3 = func_4(vec3<u32>(38602u, ~(~42239u), min(firstLeadingBit(0u), ~6419u) | ~firstTrailingBit(32546u)));
    return var_1.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<u32>(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, arg_1, 39202u), min(vec3<u32>(arg_1, 27593u, arg_1), vec3<u32>(33484u, arg_1, 16911u))), ~26701u, arg_2), countOneBits(arg_1)) ^ abs(~vec2<u32>(arg_1, 15651u));
    let var_1 = _wgslsmith_clamp_u32((_wgslsmith_clamp_u32(firstTrailingBit(1u), ~0u, _wgslsmith_mod_u32(28361u, 4294967295u)) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1), vec2<u32>(0u, arg_1))) >> ((var_0.x | ~(~1u)) % 32u), arg_1, var_0.x);
    return 40653u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-846f))), -1000f)));
    let var_1 = Struct_1(vec3<bool>(true, true, true), -max(vec2<i32>(i32(-1i) * -18833i, -1i), vec2<i32>(u_input.a, _wgslsmith_mult_i32(1i, u_input.a))));
    var var_2 = ~(~0u);
    var_2 = func_5(var_1, 0u, func_1(0i), func_4(select(~vec3<u32>(1u, 1u, 1u), abs(abs(vec3<u32>(4294967295u, 43498u, 0u))), false)));
    var var_3 = Struct_1(!var_1.a, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.b, -var_1.b >> (firstTrailingBit(vec2<u32>(5508u, 4294967295u)) % vec2<u32>(32u))), var_1.b));
    let var_4 = select(select(!select(select(vec4<bool>(var_3.a.x, true, true, true), vec4<bool>(var_1.a.x, var_3.a.x, var_3.a.x, var_1.a.x), true), select(vec4<bool>(false, var_3.a.x, var_1.a.x, var_3.a.x), vec4<bool>(true, true, true, var_1.a.x), vec4<bool>(var_3.a.x, true, var_3.a.x, false)), true), vec4<bool>(var_1.a.x, any(vec4<bool>(true, var_1.a.x, true, false)), select(true, any(vec4<bool>(var_1.a.x, var_3.a.x, var_3.a.x, var_3.a.x)), true), false), select(!vec4<bool>(true, true, false, var_3.a.x), !select(vec4<bool>(false, var_3.a.x, true, var_3.a.x), vec4<bool>(false, var_3.a.x, var_1.a.x, var_1.a.x), true), true)), vec4<bool>(func_1(12056i), true, var_3.a.x, -447f > var_0.x), select(!vec4<bool>(true, var_3.a.x, func_1(var_3.b.x), true), vec4<bool>(false, var_1.a.x, var_1.b.x > countOneBits(u_input.a), any(vec4<bool>(false, var_3.a.x, var_1.a.x, var_3.a.x))), var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -1318f, vec2<i32>(-1i) * -vec2<i32>(1i, ~(-2147483647i)), firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(87238u, 45506u)), vec2<u32>(1u, 0u)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 25479u), vec2<u32>(4294967295u, 84120u)), ~vec2<u32>(10876u, 0u)))));
}

