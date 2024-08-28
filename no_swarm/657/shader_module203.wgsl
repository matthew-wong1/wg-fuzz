struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> vec2<u32> {
    var var_0 = Struct_1(!vec3<bool>(!(arg_2 < arg_1.x), ~u_input.a.x <= -2147483647i, true & (u_input.b > arg_0)), max(~(~(~vec2<u32>(arg_0, 0u))), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, ~57427u))));
    var_0 = Struct_1(vec3<bool>(var_0.a.x && any(select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, false, var_0.a.x))), true, var_0.a.x), vec2<u32>(var_0.b.x, _wgslsmith_clamp_u32(9009u, 46453u, arg_0)));
    var var_1 = vec2<i32>(u_input.a.x, 36220i);
    var var_2 = var_0.a.x;
    var var_3 = Struct_3(arg_1, 1770i, select(var_0.a, !var_0.a, var_0.a.x));
    return vec2<u32>(1u, 1u);
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_3(arg_0.zyz, min(_wgslsmith_div_i32(u_input.a.x, countOneBits(firstTrailingBit(u_input.a.x))), u_input.a.x), select(vec3<bool>(~0i <= _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), false && all(vec2<bool>(true, false)), (u_input.b & u_input.b) < _wgslsmith_dot_vec3_u32(vec3<u32>(35878u, 13181u, 80583u), vec3<u32>(u_input.b, 0u, u_input.b))), !vec3<bool>(all(vec4<bool>(false, true, true, true)), false, u_input.a.x < -43184i), true));
    var var_1 = Struct_1(vec3<bool>(var_0.c.x, all(select(vec4<bool>(var_0.c.x, false, false, true), vec4<bool>(true, false, var_0.c.x, true), true)), false), func_3(_wgslsmith_mult_u32(~u_input.b, firstTrailingBit(~u_input.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(228f, var_0.a.x, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.a.x), -331f))), _wgslsmith_f_op_f32(-var_0.a.x)));
    var_1 = Struct_1(!select(var_0.c, vec3<bool>(false, var_0.c.x, var_1.a.x), false), ~(countOneBits(var_1.b) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))));
    var var_2 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~var_1.b, reverseBits(vec2<u32>(10971u, 101258u))), u_input.b), var_1.b.x, firstTrailingBit(u_input.b), firstLeadingBit(var_1.b.x)) | _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, 126760u, u_input.b, 74489u), ~vec4<u32>(var_1.b.x, 0u, 1u, 29363u)), vec4<u32>(select(85490u, 4294967295u, false), u_input.b, 0u, abs(0u)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.b.x, 1u, 13260u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_1.b.x, var_1.b.x, 4294967295u), vec4<u32>(0u, 101858u, 2009u, var_1.b.x))) % vec4<u32>(32u)));
    let var_3 = var_0;
    return Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - arg_0.yzz))), vec3<f32>(1030f, var_3.a.x, 1192f), vec3<bool>(any(vec3<bool>(var_3.c.x, true, var_1.a.x)), !var_0.c.x, true))), 2147483647i, !vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(42324i, var_3.b), vec2<i32>(-47542i, 2147483647i)) >= reverseBits(var_3.b), _wgslsmith_f_op_f32(round(1000f)) <= _wgslsmith_f_op_f32(exp2(var_0.a.x)), var_1.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> vec3<i32> {
    var var_0 = arg_2.b;
    var_0 = u_input.a.x;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, arg_2.a.x) - _wgslsmith_f_op_f32(trunc(1000f)))), arg_2.a.x), -1i, !(!select(!arg_2.c, !vec3<bool>(false, arg_2.c.x, arg_2.c.x), func_2(vec4<f32>(251f, 605f, -660f, arg_2.a.x)).c)));
    var var_2 = vec2<u32>(u_input.b, _wgslsmith_div_u32(arg_1.a, func_3(23860u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, arg_2.a.x, 1901f) + vec3<f32>(arg_0.a.x, -2105f, -1153f)), _wgslsmith_div_f32(var_1.a.x, arg_0.a.x)).x & arg_1.a));
    let var_3 = Struct_1(arg_2.c, firstLeadingBit(func_3(var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) - _wgslsmith_f_op_vec3_f32(min(arg_0.a, vec3<f32>(var_1.a.x, -773f, 744f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(544f, 217f))))));
    return min(vec3<i32>(-1i) * -(select(vec3<i32>(u_input.a.x, var_1.b, -2147483647i), vec3<i32>(-1i, -1i, var_1.b), arg_3) & vec3<i32>(var_1.b, var_1.b, arg_2.b)), ~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b, arg_2.b, u_input.a.x), firstLeadingBit(vec3<i32>(17942i, var_1.b, arg_2.b)))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3, -15044i | arg_3, -29088i), -func_4(Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -569f, -1000f))), 2147483647i, !vec3<bool>(arg_0.c.x, true, true)), Struct_2(countOneBits(4294967295u)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1218f, arg_0.a.x, -304f, arg_1))), all(!vec4<bool>(arg_2, arg_2, true, arg_0.c.x))));
    var var_1 = abs(vec4<u32>(~_wgslsmith_mod_u32(u_input.b, 1u), _wgslsmith_sub_u32(1u, 1u), 5766u, ~0u)) << (~vec4<u32>(max(select(u_input.b, u_input.b, arg_2), ~u_input.b), 4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b | 67804u), reverseBits(u_input.b << (1u % 32u))) % vec4<u32>(32u));
    var var_2 = !(!(!vec2<bool>(false, true && arg_2)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_0.a.x), -598f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-126f, arg_1)), -1361f)))) == -834f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(max((~u_input.b ^ _wgslsmith_sub_u32(4294967295u, u_input.b)) | _wgslsmith_add_u32(u_input.b, u_input.b ^ 1u), max(~22853u, u_input.b)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1239f)) + _wgslsmith_f_op_f32(floor(-1027f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1501f)) - -147f), _wgslsmith_f_op_f32(f32(-1f) * -335f)), _wgslsmith_f_op_f32(func_1(Struct_3(vec3<f32>(214f, -1175f, 1688f), _wgslsmith_div_i32(22562i, u_input.a.x), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) + _wgslsmith_f_op_f32(select(-1084f, 412f, false))), true, ~1i))), u_input.a.x, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(vec4<f32>(625f, 641f, 409f, 1896f)).c), vec3<bool>(true, true, true), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) > _wgslsmith_mod_i32(37810i, u_input.a.x)));
    var var_2 = 880f;
    var_2 = var_1.a.x;
    var_2 = 1000f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1199f);
    let var_3 = ~var_0.a;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.a.x, -19210i) ^ u_input.a.x, _wgslsmith_f_op_f32(floor(-1293f)));
}

