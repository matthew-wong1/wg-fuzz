struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = arg_2.a;
    var var_1 = firstLeadingBit(vec3<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_clamp_u32(~1u, _wgslsmith_clamp_u32(u_input.b, 20029u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 8000u, u_input.b), vec4<u32>(15095u, 1u, u_input.a, u_input.a))) >> (select(u_input.c.x, 67483u, any(vec2<bool>(true, true))) % 32u), ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u) >> (_wgslsmith_sub_u32(~u_input.a, u_input.c.x) % 32u)));
    var var_2 = false;
    let var_3 = -(~u_input.d);
    let var_4 = arg_2;
    return vec4<u32>(max(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.c.x, u_input.b, var_1.x, 65589u) | vec4<u32>(1685u, var_1.x, var_1.x, 93108u)) >> (vec4<u32>(var_1.x, u_input.c.x, var_1.x, u_input.b) % vec4<u32>(32u)), reverseBits(~vec4<u32>(0u, u_input.a, 45336u, var_1.x))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, 1u)), ~abs(vec4<u32>(var_1.x, u_input.c.x, 100062u, 1u)))), _wgslsmith_clamp_u32(u_input.b, _wgslsmith_mod_u32(u_input.c.x, ~_wgslsmith_mod_u32(u_input.b, u_input.a)), 19529u), 0u, u_input.a);
}

fn func_2() -> vec2<bool> {
    var var_0 = ~((~select(u_input.b, u_input.c.x, true) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(14801u, u_input.c.x, u_input.a, u_input.b), func_3(vec2<i32>(u_input.d, 1i), 1113f, Struct_1(vec2<i32>(u_input.d, u_input.d), vec4<f32>(-1000f, -765f, -845f, 2251f), vec3<i32>(2147483647i, -6181i, -36331i))))) & u_input.a);
    var_0 = u_input.c.x;
    var var_1 = Struct_1(abs(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(0i, u_input.d), vec2<i32>(0i, u_input.d) | vec2<i32>(u_input.d, u_input.d)), select(vec2<i32>(u_input.d, -1i), reverseBits(vec2<i32>(49400i, 0i)), true), -vec2<i32>(u_input.d, 1i) & max(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.d, 1i)))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-899f)))), 785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, 2147483647i, u_input.d), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, 15856i), vec3<i32>(u_input.d, -2147483647i, u_input.d)), min(vec3<i32>(u_input.d, 0i, u_input.d), vec3<i32>(u_input.d, 1i, u_input.d))), vec3<i32>(_wgslsmith_mod_i32(u_input.d, u_input.d), u_input.d, abs(-36463i)))));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(u_input.d << (33795u % 32u), -u_input.d)), abs(var_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 433f, 1306f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, 595f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) - vec4<f32>(-728f, var_1.b.x, 1269f, var_1.b.x))))), _wgslsmith_sub_vec3_i32(abs(var_1.c) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 0i, -45461i), var_1.c), var_1.c));
    var_0 = firstTrailingBit(firstLeadingBit(abs(u_input.b)));
    return !select(vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true), vec2<bool>(_wgslsmith_f_op_f32(sign(-381f)) < _wgslsmith_f_op_f32(trunc(var_2.b.x)), true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(min(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(2147483647i, u_input.d), vec2<bool>(var_0.x, var_0.x)), firstLeadingBit(-vec2<i32>(u_input.d, u_input.d))), vec2<i32>(~(-1i), 2147483647i & _wgslsmith_sub_i32(u_input.d, u_input.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -870f))), 146f, -761f, 1790f)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(39184i, u_input.d, u_input.d)), min(abs(vec3<i32>(u_input.d, u_input.d, 0i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, u_input.d), vec3<i32>(15181i, u_input.d, -46083i)))), vec3<i32>(-u_input.d ^ 9912i, 0i, u_input.d)));
    let var_2 = var_1;
    let var_3 = all(!vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), _wgslsmith_div_i32(var_1.c.x, var_2.a.x) > -1i, false, true));
    let var_4 = var_1.c.xz;
    return -(~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(max(vec2<i32>(0i, u_input.d), vec2<i32>(func_1(24550u), func_1(25211u)) ^ ~max(vec2<i32>(16738i, 10886i), vec2<i32>(u_input.d, 25075i))), vec2<i32>(countOneBits(31791i), u_input.d));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(step(-2909f, 230f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f - 837f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + 724f)));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3409f));
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(var_0.x, abs(firstTrailingBit(~0i)), ~(-2147483647i)), ~max(_wgslsmith_sub_i32(0i, -24435i), var_1 & (u_input.d << (0u % 32u))), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(-var_0.x, -2147483647i), _wgslsmith_mod_i32(-3551i, u_input.d)));
    let var_5 = 11399u;
    let var_6 = _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(abs(_wgslsmith_div_i32(var_1, var_4.x)), _wgslsmith_dot_vec3_i32(-var_4, var_4))), min(-1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-44528i, var_0.x)), vec2<i32>(~(-21693i), -var_4.x), vec2<bool>(true, true)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_6, 30946i), var_4.zx, vec2<i32>(var_4.x, -2147483647i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -1i), vec2<i32>(-5835i, -2147483647i), var_4.xz))), i32(-1i) * -1i);
}

