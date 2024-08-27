struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    var var_0 = 0u;
    let var_1 = _wgslsmith_mult_vec2_i32(select(~(-vec2<i32>(-2147483647i, u_input.a)), min(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(42210i, u_input.a) | vec2<i32>(2147483647i, u_input.a), min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i)))), !vec2<bool>(false, 69821i == u_input.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, -1i) ^ vec2<i32>(u_input.a, 35090i), vec2<i32>(u_input.a, -8080i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -14364i))), i32(-1i) * -47083i));
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_2 = !(!(!vec2<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(60409u, 24u)])))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1221f, -300f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * 440f)))))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = min(u_input.a, -u_input.a);
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(-1i, -2147483647i, 6086i)), vec3<i32>(21554i, -39962i, -2147483647i) | vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), i32(-1i) * -1i, 77805i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(196f, 1139f, 409f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(715f, -1314f, -1625f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -1403f, 164f) - vec3<f32>(1000f, -331f, -1583f)))), 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-567f)), -1384f, _wgslsmith_f_op_f32(round(-389f)), -1922f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-167f, 725f, 485f, -644f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-765f, -582f, 1253f, -965f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1251f, 647f, -520f, 3745f) * vec4<f32>(-898f, 729f, -643f, 791f)))), 627f, _wgslsmith_div_vec2_i32(max(select(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, -8611i), vec2<bool>(global0[_wgslsmith_index_u32(28770u, 24u)], false)), firstTrailingBit(vec2<i32>(2147483647i, 1i))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, -15448i) | vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), !vec2<bool>(global0[_wgslsmith_index_u32(24661u, 24u)], true)), -vec2<i32>(u_input.a, u_input.a))), 1208f);
    var_0 = u_input.a;
    var_1 = Struct_2(Struct_1(vec3<i32>(~u_input.a, var_1.a.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1312f * -1315f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(686f)), _wgslsmith_div_f32(var_1.c, var_1.b.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-1000f, 1480f), _wgslsmith_f_op_f32(exp2(var_1.a.b.x)), _wgslsmith_f_op_f32(-var_1.c)))), vec3<f32>(var_1.a.b.x, -629f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x * 204f)))), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), ~(-_wgslsmith_clamp_vec2_i32(var_1.d, var_1.a.a.yy, vec2<i32>(1i, 1i)) << (firstTrailingBit(select(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 0u), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)]))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(abs(-1000f)));
    var var_2 = Struct_5(Struct_2(Struct_1(max(-var_1.a.a, var_1.a.a), var_1.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.e, 1496f, var_1.e))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-981f, var_1.c, var_1.b.x) - var_1.b.xyx)), vec3<f32>(var_1.c, _wgslsmith_f_op_f32(func_3()), 1596f), _wgslsmith_f_op_f32(1f * var_1.b.x)), var_1.b, -519f, max(-_wgslsmith_add_vec2_i32(var_1.a.a.yy, var_1.d), var_1.a.a.yz ^ (vec2<i32>(55248i, 1i) & vec2<i32>(var_1.a.a.x, -2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), var_1.a.c.x, false))))), Struct_3(var_1.a), 35416i);
    return Struct_3(var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = vec3<u32>(0u, 78661u, 0u);
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~var_0.x, ~0u), reverseBits(_wgslsmith_div_u32(var_0.x, var_0.x)), _wgslsmith_div_u32(var_0.x, abs(817u))), vec3<u32>(_wgslsmith_mult_u32(934u, select(18481u, 0u, false)), ~8126u, var_0.x));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(abs(var_0.x), 57477u), countOneBits(var_0.x), var_0.x);
    return reverseBits(~(~vec2<i32>(33639i | arg_3.d.x, -arg_0.a.a.x)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = i32(-1i) * -42635i;
    var var_1 = Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(-arg_1.e)), func_4(Struct_3(Struct_1(arg_1.a.a, arg_1.a.c.zz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-656f, 557f, 1458f))), arg_1.b.xzy, _wgslsmith_f_op_f32(min(arg_1.c, -290f)))), select(arg_0, !arg_0, arg_0), func_2(max(~1u, 72038u)), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c)) - arg_1.c))));
    let var_2 = Struct_2(Struct_1(vec3<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(3026i, u_input.a), -9452i), -u_input.a), vec2<f32>(_wgslsmith_f_op_f32(802f + _wgslsmith_f_op_f32(-var_1.e)), var_1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_1.b.xww, var_1.a.d))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.a.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_2(1u).a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, 1000f) - -1302f) * 808f)), _wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_f32(-923f * -404f), arg_1.d, _wgslsmith_div_f32(var_1.b.x, 174f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1244f));
    var var_4 = _wgslsmith_f_op_f32(sign(arg_1.a.e));
    return Struct_3(Struct_1(var_1.a.a, arg_1.a.d.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_3, var_2.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_1.a.d))), 844f));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(arg_0.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.c.zz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.d.x, arg_0.a.b.x))), _wgslsmith_f_op_vec2_f32(select(arg_0.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, arg_0.a.d.x)), !vec2<bool>(global0[_wgslsmith_index_u32(23351u, 24u)], false)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-874f * arg_0.a.d.x)), -384f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a.c.x, 647f))), arg_0.a.d.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, arg_0.a.c.x, arg_0.a.c.x, _wgslsmith_f_op_f32(arg_0.a.b.x * -1023f))))), 1055f, ~_wgslsmith_add_vec2_i32(~(arg_0.a.a.zy << (vec2<u32>(42775u, 74402u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(-79355i, arg_1) ^ arg_0.a.a.yz, arg_0.a.a.yy)), _wgslsmith_div_f32(-764f, _wgslsmith_div_f32(arg_0.a.e, 654f)));
    var var_1 = vec4<i32>(arg_1 & -_wgslsmith_mult_i32(2147483647i, func_4(arg_0, vec2<bool>(false, global0[_wgslsmith_index_u32(18301u, 24u)]), Struct_3(arg_0.a), Struct_2(Struct_1(vec3<i32>(19154i, -49235i, var_0.d.x), vec2<f32>(arg_0.a.e, -392f), vec3<f32>(var_0.e, arg_0.a.e, var_0.c), var_0.b.zxy, -277f), var_0.b, var_0.e, arg_0.a.a.xy, arg_0.a.e)).x), 2147483647i, -1i, -7404i);
    var_1 = vec4<i32>(reverseBits(u_input.a), _wgslsmith_add_i32(arg_1, -(~arg_0.a.a.x)), _wgslsmith_sub_i32(1i, var_1.x), ~max(23244i, arg_0.a.a.x) | 0i) ^ ~select(abs(-vec4<i32>(var_1.x, arg_1, -1i, arg_0.a.a.x)), vec4<i32>(i32(-1i) * -19508i, ~var_1.x, -1i, u_input.a), !select(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)], true, true), global0[_wgslsmith_index_u32(0u, 24u)]));
    let var_2 = max(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(countOneBits(~1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(97509u, 31043u, 1u, 64615u)), ~vec4<u32>(1u, 1u, 1u, 1u)), min(117843u, firstTrailingBit(~0u)), min(_wgslsmith_add_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(67515u, 54176u, 1u), vec3<u32>(9982u, 1u, 3021u))), 1u)));
    var_1 = (vec4<i32>(_wgslsmith_sub_i32(arg_0.a.a.x, func_4(arg_0, vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 24u)], true), Struct_3(var_0.a), Struct_2(arg_0.a, var_0.b, -757f, vec2<i32>(arg_1, var_0.d.x), arg_0.a.b.x)).x), 32578i, _wgslsmith_mod_i32(-43479i, -2147483647i), -4025i) | ~vec4<i32>(1i, arg_1, 0i, select(-13747i, var_0.a.a.x, true))) ^ (-_wgslsmith_div_vec4_i32(vec4<i32>(11594i, arg_1, arg_1, -2147483647i), countOneBits(vec4<i32>(var_0.d.x, var_0.a.a.x, -2147483647i, 49912i))) >> (abs(var_2 << (~vec4<u32>(28841u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return Struct_2(Struct_1(vec3<i32>(33145i, func_1(!vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 24u)], false), Struct_2(Struct_1(vec3<i32>(var_1.x, 14069i, arg_1), vec2<f32>(811f, 111f), vec3<f32>(-1796f, 1000f, var_0.a.b.x), vec3<f32>(-1452f, -482f, 892f), -490f), var_0.b, 523f, vec2<i32>(-17822i, 41578i), -880f)).a.a.x, 1i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1083f) + 1920f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e - -551f))), vec3<f32>(arg_0.a.e, var_0.b.x, arg_0.a.e), vec3<f32>(var_0.e, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.c - var_0.b.x)), _wgslsmith_f_op_f32(arg_0.a.b.x + arg_0.a.e)), var_0.b, var_0.e, vec2<i32>(-abs(-1i), abs(_wgslsmith_clamp_i32(-1i, var_1.x, 2147483647i)) & (var_1.x << (~var_2.x % 32u))), var_0.e);
}

fn func_6(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> i32 {
    global0 = array<bool, 24>();
    return _wgslsmith_add_i32(arg_0.b.a.a.x << ((~3558u | firstTrailingBit(0u)) % 32u), _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -47595i, arg_3.a.a.x & arg_3.a.a.x), 22322i)) ^ abs(31966i);
}

fn func_7(arg_0: i32, arg_1: i32, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_1(select(_wgslsmith_mod_vec3_i32(vec3<i32>(~arg_1, _wgslsmith_mult_i32(0i, 17582i), 31012i ^ arg_1), reverseBits(~vec3<i32>(u_input.a, arg_0, arg_0))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8694i, arg_0, u_input.a), vec3<i32>(u_input.a, -46377i, arg_0)) | vec3<i32>(arg_1, u_input.a, arg_0), ~func_2(1u).a.a), vec3<bool>(global0[_wgslsmith_index_u32(19752u, 24u)], global0[_wgslsmith_index_u32(firstLeadingBit(arg_2 << (4294967295u % 32u)), 24u)], -arg_1 < ~(-1i))), func_5(Struct_3(Struct_1(abs(vec3<i32>(3549i, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, -117f)), vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-936f, -713f, -239f))), -1149f)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_0), vec2<i32>(-17353i, 10148i)) & countOneBits(~arg_1)).b.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), Struct_2(Struct_1(vec3<i32>(arg_0, 2147483647i, arg_0), vec2<f32>(1101f, -1311f), vec3<f32>(-294f, 416f, 506f), vec3<f32>(1151f, 1145f, 1831f), 1030f), vec4<f32>(484f, 337f, 1048f, -873f), 1000f, vec2<i32>(1i, arg_0), -472f)).a.c.x, 309f, 707f)), vec3<f32>(_wgslsmith_f_op_f32(-450f - 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1171f))))), -613f), _wgslsmith_f_op_f32(round(-717f)));
    let var_1 = max(_wgslsmith_add_vec2_u32(select(~vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, arg_2) & vec2<u32>(arg_2, arg_2), global0[_wgslsmith_index_u32(arg_2, 24u)] & global0[_wgslsmith_index_u32(arg_2, 24u)]), min(firstTrailingBit(vec2<u32>(arg_2, arg_2)), vec2<u32>(arg_2, arg_2))), vec2<u32>(arg_2, min(arg_2, _wgslsmith_div_u32(arg_2, arg_2)))) | ((_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_2, 0u)), vec2<u32>(13450u, arg_2), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, arg_2))) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, arg_2)), ~vec2<u32>(arg_2, 4294967295u)) % vec2<u32>(32u))) | firstTrailingBit(~reverseBits(vec2<u32>(arg_2, 0u))));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.d)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * var_0.e) * _wgslsmith_f_op_f32(-var_0.c.x)) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f * var_0.d.x)) + _wgslsmith_f_op_f32(-585f * -1251f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3256f + 362f)))));
    let var_2 = reverseBits(vec4<u32>(var_1.x, arg_2 << (96089u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, var_1.x, 4294967295u, var_1.x), vec4<u32>(var_1.x, 0u, arg_2, var_1.x)), vec4<u32>(1u, 27909u, arg_2, arg_2)), firstLeadingBit(vec4<u32>(arg_2, 22462u, 26170u, 76822u) >> (vec4<u32>(var_1.x, 2092u, arg_2, 22593u) % vec4<u32>(32u)))), 4294967295u));
    var var_3 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 24u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)])), global0[_wgslsmith_index_u32(arg_2, 24u)] | false)));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.e, 1466f, 1899f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, 328f, var_0.d.x) * vec4<f32>(-923f, 1000f, 1433f, 476f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_7(func_6(Struct_5(Struct_2(Struct_1(vec3<i32>(-1i, -1i, -27179i), vec2<f32>(726f, -1289f), vec3<f32>(1509f, -263f, -232f), vec3<f32>(-1028f, -337f, -211f), 105f), vec4<f32>(-671f, -1000f, -408f, 859f), -406f, vec2<i32>(2147483647i, u_input.a), 1377f), Struct_3(Struct_1(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec2<f32>(-367f, 898f), vec3<f32>(-607f, 749f, -3078f), vec3<f32>(1516f, 606f, 693f), 486f)), ~u_input.a), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 24u)], true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1549f, -381f)))), func_5(func_1(vec2<bool>(false, false), Struct_2(Struct_1(vec3<i32>(u_input.a, -29719i, u_input.a), vec2<f32>(1017f, -389f), vec3<f32>(-1688f, -279f, 839f), vec3<f32>(179f, -419f, -1481f), -1069f), vec4<f32>(104f, -474f, -205f, 245f), 1078f, vec2<i32>(u_input.a, u_input.a), -200f)), u_input.a)), u_input.a, 1u))));
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(1i, 23901i), u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.a, -6533i, u_input.a, -2147483647i), vec4<i32>(u_input.a, 12949i, u_input.a, 1i), global0[_wgslsmith_index_u32(102521u, 24u)])), max(select(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), global0[_wgslsmith_index_u32(26406u, 24u)]), vec4<i32>(-77480i, u_input.a, u_input.a, u_input.a))), select(vec4<i32>(1i, func_5(Struct_3(Struct_1(vec3<i32>(-29179i, 2147483647i, u_input.a), vec2<f32>(var_0.x, var_0.x), var_0.ywy, var_0.xzz, -1250f)), 0i).d.x, u_input.a, ~(-17894i)), min(vec4<i32>(u_input.a, -8476i, 43802i, 41076i), vec4<i32>(-25486i, u_input.a, -49675i, u_input.a)), all(select(vec4<bool>(global0[_wgslsmith_index_u32(7239u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(44470u, 24u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(89355u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], true)))), -(~vec4<i32>(10983i, 2147483647i, u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(156f + _wgslsmith_f_op_f32(f32(-1f) * -1749f)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + 199f), _wgslsmith_f_op_f32(-var_0.x))))) - func_2(1u).a.d.x);
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, 518f, var_3, -1000f))))), min(vec4<u32>(1u, 1u, 1u, 1u), ~(~(~vec4<u32>(17409u, 24702u, 4294967295u, 1u)))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-2147483647i, -u_input.a, 1i), vec3<i32>(firstLeadingBit(~(-9150i)), firstTrailingBit(_wgslsmith_clamp_i32(26477i, -6407i, 19039i)), -2147483647i), vec3<i32>(u_input.a, var_1, func_4(func_1(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(86686u, 24u)]), Struct_2(Struct_1(vec3<i32>(var_1, var_1, 2147483647i), vec2<f32>(var_0.x, -816f), vec3<f32>(var_3, -1000f, 138f), var_0.xyz, var_2), vec4<f32>(738f, var_3, -812f, var_3), 283f, vec2<i32>(var_1, u_input.a), 425f)), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false), func_1(vec2<bool>(global0[_wgslsmith_index_u32(47113u, 24u)], global0[_wgslsmith_index_u32(48591u, 24u)]), Struct_2(Struct_1(vec3<i32>(u_input.a, -2147483647i, -38503i), vec2<f32>(440f, var_0.x), var_0.yzz, vec3<f32>(var_3, -1784f, var_0.x), var_2), vec4<f32>(156f, 1065f, var_3, var_2), -1185f, vec2<i32>(-2147483647i, -19518i), var_2)), func_5(Struct_3(Struct_1(vec3<i32>(1i, 26526i, 78870i), var_0.wy, vec3<f32>(var_3, var_2, 123f), vec3<f32>(-891f, var_3, var_2), -1000f)), var_1)).x)), ~_wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_div_u32(159386u, 4294967295u), ~166u)));
}

