struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec4<i32>(0i, -28089i, -35014i, -7748i)), Struct_4(vec4<i32>(29800i, 4719i, -1i, 60240i)), Struct_4(vec4<i32>(-21113i, 14371i, 1i, 1i)), Struct_4(vec4<i32>(-34979i, -1i, -7915i, i32(-2147483648))), Struct_4(vec4<i32>(0i, 0i, 2147483647i, 2147483647i)), Struct_4(vec4<i32>(15362i, i32(-2147483648), 26873i, -75339i)), Struct_4(vec4<i32>(-1i, -4782i, i32(-2147483648), -19684i)), Struct_4(vec4<i32>(22863i, -32322i, 0i, 18604i)), Struct_4(vec4<i32>(-17476i, -54463i, -21909i, 2147483647i)), Struct_4(vec4<i32>(-1i, i32(-2147483648), 5984i, i32(-2147483648))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = !(!(!vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, true)));
    var var_1 = 0u;
    let var_2 = (-20566i >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b & 0u, 4294967295u), reverseBits(~21872u)) % 32u)) << (~(~u_input.b) % 32u);
    let var_3 = 1u;
    var var_4 = ~(~vec2<u32>(abs(abs(22061u)), ~1u));
    return ~select(_wgslsmith_sub_vec4_i32(select(reverseBits(vec4<i32>(u_input.a.x, 0i, var_2, 2147483647i)), abs(vec4<i32>(u_input.a.x, 7497i, u_input.a.x, 26901i)), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<i32>(2104i, 6799i, -1i >> (var_4.x % 32u), var_2)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_2, -1i, var_2, var_2) ^ vec4<i32>(u_input.a.x, -39901i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, var_2, -1i, u_input.a.x)), select(!(!vec4<bool>(var_0.x, false, var_0.x, true)), select(!vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), !vec4<bool>(var_0.x, true, true, var_0.x)), any(!var_0.xw)));
}

fn func_2() -> i32 {
    global0 = array<Struct_4, 10>();
    var var_0 = Struct_4(func_3());
    let var_1 = ~(-2147483647i);
    var var_2 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 13657u, 4809u, 1u), vec4<u32>(55530u, 88942u, 0u, 1u)) | _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(vec4<u32>(30227u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 95672u, 58439u), false)), select(~(vec4<u32>(u_input.b, 1u, 1u, 18660u) << (vec4<u32>(4294967295u, 12070u, 1u, u_input.b) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.b, 1568u, u_input.b, u_input.b)), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true))), u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, _wgslsmith_div_u32(52605u, u_input.b), u_input.b), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 13903u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 17509u)) >> (vec3<u32>(0u, ~4294967295u, ~u_input.b) % vec3<u32>(32u))));
    var var_3 = Struct_1(~abs(var_2.a), ~(~firstLeadingBit(~var_2.b)), ~_wgslsmith_mod_u32(~(u_input.b & var_2.a.x), u_input.b));
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    global0 = array<Struct_4, 10>();
    var var_0 = vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(func_2(), 1i << (arg_1.x % 32u), 2147483647i), firstLeadingBit(~func_2()), 0i);
    var_0 = ~vec4<i32>(((u_input.a.x | 17103i) >> (arg_1.x % 32u)) << (u_input.b % 32u), 0i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2889i, arg_0, var_0.x), _wgslsmith_add_i32(arg_0, -2147483647i)), _wgslsmith_mult_i32(var_0.x, var_0.x)), 23934i | arg_0);
    var var_1 = -1224i;
    let var_2 = _wgslsmith_add_u32(abs(min(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_1, arg_1), arg_1.x & 93192u), ~u_input.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, ~arg_1.x, 7295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 3690u, u_input.b), arg_1)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    let var_0 = true;
    var var_1 = -412f;
    let var_2 = !(!vec2<bool>(abs(u_input.a.x) == 5423i, true));
    global0 = array<Struct_4, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), -2147483647i, _wgslsmith_add_vec2_u32((firstLeadingBit(vec2<u32>(0u, u_input.b)) ^ vec2<u32>(1u, u_input.b)) | ~(~vec2<u32>(13595u, 1u)), ~(~vec2<u32>(u_input.b, 45244u)) & vec2<u32>(abs(u_input.b), _wgslsmith_mod_u32(34243u, u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), 675f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(873f)) * _wgslsmith_f_op_f32(func_1(2147483647i, vec3<u32>(4294967295u, u_input.b, 1u), vec2<i32>(u_input.a.x, 11327i), 465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(896f + -161f) * _wgslsmith_f_op_f32(func_1(24350i, vec3<u32>(u_input.b, u_input.b, u_input.b), vec2<i32>(u_input.a.x, -2147483647i), 158f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), -369f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1351f)), _wgslsmith_f_op_f32(ceil(2002f)))))));
}

