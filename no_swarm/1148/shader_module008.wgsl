struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec2<u32>(~1u, ~(~1u)) & ~u_input.d.ww, abs(~vec3<i32>(countOneBits(-1i), abs(2147483647i), select(u_input.a, u_input.a, false))), ~(_wgslsmith_sub_vec3_u32(u_input.d.www, u_input.d.zxz) ^ (u_input.d.xyx ^ ~vec3<u32>(4294967295u, 10200u, u_input.d.x))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), select(true, false, true))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(694f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -1041f)));
    let var_2 = Struct_1(u_input.d.yw, vec3<i32>(max(0i, var_0.b.x), u_input.b, var_0.b.x), vec3<u32>(_wgslsmith_mult_u32(~u_input.e, ~var_0.c.x) ^ 0u, ~((1u ^ u_input.d.x) >> (0u % 32u)), u_input.e), vec4<bool>(var_0.d.x, !var_0.d.x, false, all(!var_0.d.yz)));
    var_0 = var_2;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), -461f);
    return ~max(_wgslsmith_dot_vec4_u32(min(u_input.d, ~u_input.d), _wgslsmith_mult_vec4_u32(reverseBits(u_input.d), ~u_input.d)), _wgslsmith_dot_vec2_u32(var_2.a, vec2<u32>(35754u, u_input.e >> (24542u % 32u))));
}

fn func_4(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_1(vec2<u32>(~u_input.c, arg_0.x), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-16291i, -1i, u_input.b), -6040i), 1i), u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, -24300i, u_input.a), min(vec4<i32>(-2147483647i, u_input.b, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b))), ~vec4<i32>(-20566i, -22538i, 29527i, 65284i) ^ (vec4<i32>(-2147483647i, -6867i, 25022i, -1609i) ^ vec4<i32>(u_input.a, u_input.b, u_input.b, -1i)))), min(countOneBits(arg_0 << (u_input.d.zyw % vec3<u32>(32u))), arg_0 >> (arg_0 % vec3<u32>(32u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), !all(vec3<bool>(true, false, true))));
    var var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.b.x, var_0.b.x, 31150i), reverseBits(_wgslsmith_mult_vec3_i32(~var_0.b, var_0.b))), ~var_0.b, vec3<i32>(var_0.b.x, 2147483647i, firstTrailingBit(u_input.b)));
    var var_2 = max(vec2<i32>(-(~_wgslsmith_div_i32(u_input.a, -44570i)), 1i), firstTrailingBit(select(~var_0.b.yz, vec2<i32>(u_input.a, var_0.b.x) >> (u_input.d.wx % vec2<u32>(32u)), vec2<bool>(true, true))) | ~vec2<i32>(var_0.b.x | u_input.a, _wgslsmith_add_i32(var_1.x, -1i)));
    var_2 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(-16869i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, -1i, -2147483647i), vec4<i32>(u_input.a, 0i, var_1.x, u_input.a)) << (4294967295u % 32u)), abs(var_0.b.xz) & abs(-vec2<i32>(u_input.b, -2147483647i))), ~firstLeadingBit(vec2<i32>(var_0.b.x | 44742i, -20881i)), !var_0.d.x);
    var_0 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(1u, 24548u)), vec2<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.e, u_input.d.x)), vec2<u32>(var_0.a.x << (u_input.c % 32u), 8424u)), min(vec2<u32>(arg_0.x, 48609u), vec2<u32>(u_input.c, 1u) >> (arg_0.zz % vec2<u32>(32u)))), _wgslsmith_mult_vec3_i32(var_0.b << (u_input.d.zyy % vec3<u32>(32u)), vec3<i32>(-var_2.x, 1i, var_1.x) << (vec3<u32>(min(var_0.a.x, arg_0.x), ~u_input.c, ~1u) % vec3<u32>(32u))), ~(vec3<u32>(abs(74814u), var_0.a.x, 1u) >> (vec3<u32>(1u, arg_0.x << (99687u % 32u), _wgslsmith_add_u32(u_input.d.x, 59151u)) % vec3<u32>(32u))), !vec4<bool>(false, false, !var_0.d.x || false, any(var_0.d.wy)));
    return u_input.d;
}

fn func_2() -> bool {
    let var_0 = Struct_4(Struct_3(abs(select(vec3<u32>(1u, 0u, u_input.d.x), ~vec3<u32>(0u, u_input.e, 4294967295u), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f - _wgslsmith_f_op_f32(sign(470f))))), Struct_2(func_4(vec3<u32>(func_3(), _wgslsmith_sub_u32(4294967295u, 0u), u_input.e)), vec2<f32>(303f, 826f), u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(449f, -183f), vec2<f32>(-164f, -1074f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1998f, 1244f), vec2<f32>(-1626f, -563f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -472f)), -1368f, -615f, -385f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, 981f, false)), -194f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-631f + -2386f)))), _wgslsmith_f_op_f32(f32(-1f) * -387f)));
    let var_1 = min(vec3<i32>(u_input.a, u_input.a, i32(-1i) * -19795i), firstLeadingBit(firstLeadingBit(vec3<i32>(1515i, -u_input.a, u_input.a))));
    let var_2 = 10177u;
    var var_3 = _wgslsmith_add_vec3_i32(var_1, ((vec3<i32>(-1i) * -var_1) & var_1) >> (u_input.d.xxy % vec3<u32>(32u)));
    var var_4 = Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.d.zx, u_input.d.yw), var_0.a.a.yz), ~min(reverseBits(max(var_1, var_1)), var_1), var_0.a.a, vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2, var_2), 4294967295u) >= ~19363u, (firstLeadingBit(58911u) > _wgslsmith_add_u32(0u, u_input.c)) && true, all(vec4<bool>(true, true, true, true)), true || !select(false, true, true)));
    return any(select(!(!vec4<bool>(var_4.d.x, true, true, false)), var_4.d, !(_wgslsmith_f_op_f32(floor(-124f)) < _wgslsmith_f_op_f32(var_0.a.b - 1118f))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: bool) -> vec4<bool> {
    var var_0 = ~(~(~vec2<u32>(~11363u, 38042u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f * arg_0)), _wgslsmith_div_f32(arg_0, 1087f))))) * -641f);
    var_0 = u_input.d.wz;
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a >> (var_0.x % 32u), u_input.a, 1i), abs(firstLeadingBit(firstTrailingBit(u_input.a))) << (~var_0.x % 32u));
    var var_3 = -_wgslsmith_mult_i32(~(-1i), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(23374i, -23107i, u_input.b), vec3<i32>(var_2, -2147483647i, 1i)) >> (u_input.c % 32u)));
    return !(!vec4<bool>(arg_2, true, true, _wgslsmith_f_op_f32(max(arg_0, arg_0)) == arg_0));
}

fn func_6(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, 33859i));
    var_0 = 1i;
    let var_1 = 52982u;
    var_0 = _wgslsmith_add_i32(reverseBits(0i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(1i, u_input.b, -1i, -2147483647i) ^ vec4<i32>(u_input.b, 0i, u_input.a, -1i), vec4<i32>(2147483647i, u_input.b, select(1i, 1i, arg_0.x), u_input.b)), ~(vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.a) ^ vec4<i32>(u_input.a, -15496i, u_input.a, u_input.a)) ^ (abs(vec4<i32>(u_input.b, u_input.a, 2147483647i, u_input.b)) | vec4<i32>(u_input.a, 0i, -26584i, u_input.a))));
    var_0 = _wgslsmith_add_i32(-13287i, u_input.a);
    return Struct_3(vec3<u32>(firstTrailingBit(~(~u_input.e)), var_1, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f * _wgslsmith_f_op_f32(round(-399f)))));
}

fn func_7(arg_0: Struct_3) -> Struct_5 {
    var var_0 = Struct_5(Struct_4(Struct_3(~arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1482f * arg_0.b) - -1652f)), Struct_2(~u_input.d, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(874f, arg_0.b))), ~10019u ^ _wgslsmith_div_u32(1u, arg_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) + vec2<f32>(1257f, 401f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, arg_0.b, 1541f, 220f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-680f, 1000f) * vec2<f32>(arg_0.b, 872f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(2448f, -1786f))))), reverseBits(-u_input.a));
    var var_1 = Struct_1(u_input.d.xw, firstTrailingBit(-(~(-vec3<i32>(var_0.b, 30029i, u_input.b)))), vec3<u32>(_wgslsmith_clamp_u32(76521u, var_0.a.a.a.x, ~8647u), reverseBits(_wgslsmith_div_u32(39396u, 4294967295u)), ~var_0.a.b.c), vec4<bool>(!select(1u != arg_0.a.x, all(vec2<bool>(false, true)), func_2()), true, true, true));
    var var_2 = reverseBits(var_1.c.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-372f, 1513f, var_1.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, -399f, false)) + _wgslsmith_f_op_f32(-arg_0.b))), 1123f)));
    var var_4 = ~73290u;
    return Struct_5(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-18393i), _wgslsmith_add_i32(-var_0.b, 48132i), _wgslsmith_div_i32(select(var_1.b.x, -85447i, true), var_1.b.x), min(~(-32709i), ~(-60453i))), vec4<i32>(-1i, u_input.a, ~(-53738i), -56496i)));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<i32> {
    var var_0 = func_7(func_6(func_5(arg_1, select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), func_2())));
    var var_1 = min(var_0.b, min(41291i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -1i)) & (vec2<i32>(1i, var_0.b) ^ vec2<i32>(u_input.a, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, 27725i), vec2<i32>(u_input.a, 36525i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.a, var_0.b)))));
    var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -1084f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x - arg_1) * _wgslsmith_f_op_f32(-var_0.a.a.b)))))));
    var var_3 = u_input.a;
    return vec3<i32>(min(~(-u_input.b >> (~35455u % 32u)), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, var_0.b), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(var_0.b, -37799i))))), _wgslsmith_clamp_i32(-var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(var_0.b, -1i)), select(vec2<i32>(46760i, -23574i), vec2<i32>(u_input.b, var_0.b), vec2<bool>(true, false))), vec2<i32>(0i, 26809i)), select(35778i, _wgslsmith_add_i32(~(-2147483647i), -2147483647i), true)), (12146i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(var_0.b, 1i)), vec2<i32>(-52869i, 1i))) | u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = any(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_div_u32(~min(4294967295u, 61029u), u_input.c)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_1(u_input.d.x, 324f), -vec3<i32>(u_input.b, 38980i, 2147483647i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-22356i, u_input.b, 2147483647i), vec3<i32>(-2147483647i, u_input.a, u_input.b))), -34221i, -(~u_input.a & 32977i)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, reverseBits(_wgslsmith_add_u32(0u, 0u)), ~max(u_input.e, 57651u)), ~vec3<u32>(0u, max(u_input.d.x, u_input.e), u_input.e)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -2019f), select(vec3<bool>(true, true, true), !func_5(-979f, vec3<bool>(false, false, false), true).wwx, all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    var_1 = Struct_1(~(~abs(_wgslsmith_add_vec2_u32(var_1.a, u_input.d.xy))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_1.b, var_1.b), vec3<i32>(-37998i, 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2294i, u_input.a, var_1.b.x), vec4<i32>(-25196i, var_1.b.x, var_1.b.x, 31895i)))), vec3<u32>(~(_wgslsmith_mod_u32(1u, var_1.a.x) << (_wgslsmith_div_u32(0u, var_1.c.x) % 32u)), ~(u_input.c ^ var_1.c.x) << (~47906u % 32u), ~21719u), !select(!select(vec4<bool>(false, var_1.d.x, false, var_1.d.x), var_1.d, true), vec4<bool>(any(var_1.d.xzy), all(vec3<bool>(false, true, var_1.d.x)), !var_1.d.x, all(var_1.d.zzy)), true));
    var var_2 = Struct_3(reverseBits(abs(~u_input.d.zwy)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-230f - -215f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1213f)) * _wgslsmith_f_op_f32(ceil(509f)))), _wgslsmith_f_op_f32(max(654f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-470f)))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, 432f) * _wgslsmith_f_op_f32(min(var_2.b, -2027f))), -253f)));
    let var_4 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 39068i, 1i, var_1.b.x) >> (vec4<u32>(u_input.e, var_2.a.x, 36756u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.b, 21261i, -2147483647i, u_input.a)), _wgslsmith_add_vec4_i32(select(vec4<i32>(-61578i, 1i, u_input.b, var_1.b.x), vec4<i32>(2147483647i, var_1.b.x, 1i, u_input.b), var_1.d), vec4<i32>(var_1.b.x, -1i, u_input.b, 2147483647i) >> (u_input.d % vec4<u32>(32u))), ~(-vec4<i32>(-2147483647i, var_1.b.x, 1i, -15611i))) | _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, _wgslsmith_clamp_i32(var_1.b.x, 0i, u_input.b), abs(-27065i)), ~reverseBits(-vec4<i32>(u_input.a, u_input.a, 4056i, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.b, var_2.b), 20510u);
}

