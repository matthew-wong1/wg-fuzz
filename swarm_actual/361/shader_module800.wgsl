struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    return Struct_1(~_wgslsmith_mod_u32(select(abs(u_input.c.x), ~u_input.c.x, true), u_input.c.x), 800f, _wgslsmith_f_op_f32(floor(470f)), 49559u);
}

fn func_3() -> bool {
    var var_0 = select(u_input.c.x, u_input.a, !(!(!all(vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + _wgslsmith_div_f32(226f, -472f))), _wgslsmith_f_op_f32(555f + _wgslsmith_f_op_f32(f32(-1f) * -1380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2041f + 1558f)) * _wgslsmith_f_op_f32(min(-956f, _wgslsmith_f_op_f32(select(455f, 428f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-568f, 1338f))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1676f)))), _wgslsmith_f_op_f32(trunc(-1000f)), -1000f), vec4<f32>(func_1(u_input.b.x).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1125f - 177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-388f, 2220f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(609f)), _wgslsmith_f_op_f32(-1287f + 562f)))))));
    let var_2 = Struct_2(9346u, Struct_1(u_input.a, var_1.x, 1017f, u_input.a), func_1(abs(u_input.b.x)));
    let var_3 = Struct_2(u_input.a, Struct_1(~u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1526f, true))), var_1.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f - var_1.x))), 1u), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -34840i) & vec4<i32>(u_input.b.x, u_input.b.x, 10277i, 6684i), vec4<i32>(43285i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -12239i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 1i)), abs(-2147483647i), u_input.b.x))));
    let var_4 = func_1(countOneBits(firstLeadingBit(-46592i)));
    return abs(-select(-39057i, u_input.b.x, false)) <= -u_input.b.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = 64467i;
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a | 51328u, max(11490u, 4294967295u)), _wgslsmith_mod_u32(14308u, _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(77142u, 4294967295u, 1u))))), func_1(-13741i), func_1(u_input.b.x));
    var var_2 = u_input.b;
    var var_3 = abs(abs(_wgslsmith_mult_vec3_u32(u_input.c, reverseBits(u_input.c)) >> (min(u_input.c >> (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c)) % vec3<u32>(32u))));
    var_1 = Struct_2(abs(select(reverseBits(var_1.c.a), arg_2.d, true)) >> (31056u % 32u), Struct_1(4294967295u, arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), 620f)), min(~1u, _wgslsmith_mult_u32(min(var_3.x, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, arg_2.a, 62267u), vec4<u32>(0u, 60454u, var_3.x, arg_2.a))))), var_1.c);
    return arg_1.wy;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = func_1(-42137i);
    var var_1 = u_input.b.x << (62434u % 32u);
    var var_2 = vec4<bool>(!all(func_4(func_3(), vec4<bool>(false, false, true, false), arg_1, any(vec4<bool>(true, false, true, false)))), true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), false);
    let var_3 = Struct_1(65296u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1235f)))), -223f, _wgslsmith_mod_u32(3110u, 39477u));
    var_1 = -arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-264f * _wgslsmith_f_op_f32(floor(var_0.c))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, u_input.b.x, -13245i), -vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), firstLeadingBit(-vec3<i32>(-2147483647i, 16576i, u_input.b.x))));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_u32(~(~max(u_input.c, u_input.c)), u_input.c), Struct_1(~88065u, _wgslsmith_f_op_f32(ceil(-1662f)), _wgslsmith_f_op_f32(func_2(-(u_input.b.x << (u_input.a % 32u)), func_1(i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, var_0.b, var_0.c, 1000f))))), 4294967295u), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1328f, var_0.c)) * _wgslsmith_f_op_f32(round(var_0.b)))), _wgslsmith_f_op_f32(floor(var_0.c)), ~u_input.c.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.c.c, var_0.b), vec2<f32>(var_1.c.b, -782f))), vec2<f32>(var_1.c.b, -619f), func_4(false, vec4<bool>(false, true, false, true), var_1.c, false).x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, 2795f)), vec2<f32>(var_0.b, var_1.c.c)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-821f, _wgslsmith_div_f32(-1551f, 1333f)))) * vec2<f32>(-993f, var_1.b.b));
    let var_3 = func_1(_wgslsmith_mod_i32(_wgslsmith_div_i32((i32(-1i) * -2147483647i) >> (u_input.a % 32u), _wgslsmith_div_i32(u_input.b.x, ~2147483647i)), -25519i));
    let var_4 = firstLeadingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i) * -u_input.b, u_input.b >> ((vec4<u32>(u_input.c.x, 66022u, var_0.d, var_0.d) & vec4<u32>(var_0.d, 27409u, var_1.b.d, 10119u)) % vec4<u32>(32u)), func_4(true, vec4<bool>(false, false, false, false), Struct_1(22140u, -762f, 494f, var_1.a), false).x), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 0i, 67680i, 2147483647i), vec4<i32>(2147483647i, -29342i, u_input.b.x, u_input.b.x)) >> (~vec4<u32>(0u, 1u, var_0.a, 52212u) % vec4<u32>(32u)), firstLeadingBit(~u_input.b))));
    let var_5 = vec3<i32>(-1i) * -select(abs(var_4.zyw), ~(-vec3<i32>(u_input.b.x, 46172i, u_input.b.x)), false);
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.b), vec2<f32>(var_0.b, -313f), !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))))));
    var var_6 = var_1.b;
    var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(180f))), -673f, ~var_1.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_6.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(-var_1.c.b), _wgslsmith_f_op_f32(var_2.x * var_2.x)));
}

