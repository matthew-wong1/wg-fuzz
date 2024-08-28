struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(-789i, -40619i, arg_0.x, 61164i), vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(i32(-1i) * -10605i), -arg_3.c << (1u % 32u)), _wgslsmith_sub_i32(arg_1.c, _wgslsmith_add_i32(-6639i ^ arg_1.c, u_input.a.x ^ 45165i)), ~(-9041i), ~arg_0.x));
    var_0 = -(~(u_input.a << (vec4<u32>(arg_3.b, 15916u, abs(arg_3.b), 16759u) % vec4<u32>(32u))));
    let var_1 = -arg_0.x;
    var var_2 = true && (any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) || select(true, true, true));
    var_0 = u_input.a & (vec4<i32>(abs(arg_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c, 6629i, -10071i), _wgslsmith_div_vec3_i32(u_input.a.zwx, vec3<i32>(var_1, var_0.x, 2147483647i))), 0i, var_1) << (select(vec4<u32>(countOneBits(arg_3.d.x), select(arg_1.d.x, 76466u, false), ~0u, arg_1.b), select(~vec4<u32>(35499u, 4294967295u, 6526u, 82754u), ~vec4<u32>(34232u, 41746u, 0u, 58388u), vec4<bool>(true, true, true, true)), (u_input.d <= u_input.d) | true) % vec4<u32>(32u)));
    return -var_1 >> (select(arg_1.d.x << (min(arg_1.b, 1910u) % 32u), 30538u, true) % 32u);
}

fn func_2() -> bool {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1803f), -246f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-616f, 1311f))) - _wgslsmith_div_vec2_f32(vec2<f32>(226f, 1036f), vec2<f32>(-126f, 1000f))))), 12580u, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i & u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, u_input.e.x), ~u_input.a.x, select(u_input.a.x, u_input.a.x, false))), -47366i, _wgslsmith_div_i32(u_input.e.x, ~u_input.e.x)), firstLeadingBit(vec3<u32>(4294967295u, u_input.d, ~_wgslsmith_div_u32(u_input.d, 1u))));
    var var_2 = -max(max(func_3(reverseBits(vec2<i32>(var_1.c, var_1.c)), Struct_1(vec2<f32>(-866f, 1213f), 32747u, -50260i, var_1.d), _wgslsmith_f_op_f32(-var_1.a.x), Struct_1(var_1.a, 1u, u_input.e.x, vec3<u32>(4294967295u, u_input.c, u_input.c))), u_input.e.x), ~_wgslsmith_clamp_i32(var_1.c, var_1.c, ~76446i));
    let var_3 = select(~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(countOneBits(var_1.b), ~4294967295u)), 33244u, u_input.b <= firstLeadingBit(-1i));
    var_2 = _wgslsmith_dot_vec2_i32(u_input.e.xx, select(-vec2<i32>(1i, i32(-1i) * -18015i), vec2<i32>(select(abs(-22097i), firstTrailingBit(u_input.e.x), true), -_wgslsmith_clamp_i32(var_1.c, -32246i, 1i)), var_0));
    return !all(select(!vec4<bool>(false, false, var_0.x, var_0.x), !(!vec4<bool>(false, var_0.x, var_0.x, true)), vec4<bool>(var_3 <= var_1.b, all(var_0), false, var_1.a.x != 500f)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> bool {
    var var_0 = select(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), true), select(vec2<bool>(!func_2(), func_2()), select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(u_input.c != u_input.d, all(vec2<bool>(false, true))), any(vec3<bool>(false, false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(1f, 883f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1217f)))), 0u, u_input.e.x, _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(28715u, arg_0, u_input.d)), ~vec3<u32>(arg_0, u_input.d, arg_0)), reverseBits(reverseBits(vec3<u32>(u_input.d, arg_0, 4294967295u)))));
    var_0 = vec2<bool>(all(vec2<bool>(func_2(), any(vec3<bool>(true, true, true)))), func_2());
    var_0 = vec2<bool>(!(!any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true)))), !any(vec4<bool>(var_0.x, true, false, -36497i > var_1.c)));
    var var_2 = var_0.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = select(u_input.a.x, -1585i, true && all(vec3<bool>(true, true, true))) != _wgslsmith_sub_i32(~_wgslsmith_mult_i32(min(5352i, u_input.b), _wgslsmith_clamp_i32(u_input.b, -1i, 30188i)), u_input.b);
    var_0 = func_1(min(~_wgslsmith_div_u32(10099u, u_input.d), 0u) >> (~9885u % 32u), vec3<i32>(0i, select(u_input.e.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(0i, u_input.e.x), -9118i), any(vec3<bool>(true, true, true))), u_input.a.x));
    var_0 = any(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(func_2() | (57595i != u_input.b), false, any(vec4<bool>(false, true, true, true)), true), true));
    var_0 = !select(-6622i != _wgslsmith_clamp_i32(-16230i ^ u_input.a.x, -1i, 1i), true, false);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f * -561f)), 1f), countOneBits(select(33493u, 1u, select(false, true, false))), u_input.e.x, vec3<u32>(~max(547u, _wgslsmith_dot_vec2_u32(vec2<u32>(15292u, 6324u), vec2<u32>(u_input.c, u_input.d))), ~abs(u_input.c | u_input.d), (u_input.d >> (~1u % 32u)) >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) % 32u)));
    let var_2 = var_1.d.x;
    var var_3 = ~(~(~vec3<u32>(u_input.d, 0u, u_input.c)));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.x), ~(~(vec3<u32>(u_input.c, 0u, var_3.x) << (var_1.d % vec3<u32>(32u)))), var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.a.x, -2034f), _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

