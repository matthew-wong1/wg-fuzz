struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_div_i32(-70500i >> (_wgslsmith_mult_u32(17495u >> (_wgslsmith_mod_u32(u_input.a, 20049u) % 32u), _wgslsmith_clamp_u32(u_input.a, ~u_input.a, countOneBits(0u))) % 32u), firstTrailingBit(-18788i));
    global0 = select(1i, 2647i, true) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, u_input.a), 0u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 75364u), vec2<u32>(62991u, 4294967295u), vec2<bool>(true, false)), vec2<u32>(u_input.a, u_input.a))) >> (u_input.a % 32u)) % 32u);
    var var_0 = Struct_2(!(u_input.a >= select(34078u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 6833u), vec3<u32>(u_input.a, 0u, u_input.a)), false)), vec3<i32>(min(max(~27268i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 23633i), vec2<i32>(0i, -2147483647i))), ~2147483647i), 34206i, -2147483647i), vec4<i32>(reverseBits(-(~0i)), _wgslsmith_sub_i32(abs(2147483647i), 5216i), ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-1i, 1109i, -33130i)), vec3<i32>(-50720i, -15573i, 2147483647i)), ~(~6974i)));
    var var_1 = var_0.c.yx | vec2<i32>(select(44676i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -3710i), var_0.b), true), abs(-20374i));
    var_1 = vec2<i32>(-var_1.x, firstLeadingBit(_wgslsmith_sub_i32(~var_0.c.x, _wgslsmith_dot_vec3_i32(select(var_0.c.wwy, vec3<i32>(var_1.x, var_0.c.x, var_1.x), vec3<bool>(var_0.a, true, false)), -vec3<i32>(-20355i, var_0.c.x, -1i)))));
    return 255f;
}

fn func_2() -> i32 {
    var var_0 = 476f;
    var_0 = -784f;
    var_0 = _wgslsmith_f_op_f32(floor(190f));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-704f + -1246f), _wgslsmith_f_op_f32(-1641f - -370f)) * _wgslsmith_f_op_f32(func_3()))))));
    var var_1 = Struct_2(select(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, false))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec3<i32>(~firstTrailingBit(-43161i) & ~1i, _wgslsmith_add_i32(1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3049u, 37442u, 1u), vec4<u32>(u_input.a, 0u, 1u, 4294967295u)) % 32u), -32550i), select(~1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(19080i, 1i), vec2<i32>(-2147483647i, -29400i), vec2<bool>(true, true)), select(vec2<i32>(192i, -5773i), vec2<i32>(2147483647i, 16193i), vec2<bool>(true, false))), true)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, _wgslsmith_sub_i32(1i, -1i), 11617i, firstTrailingBit(1i))));
    return _wgslsmith_mult_i32(countOneBits(var_1.b.x), -(1i >> (min(reverseBits(u_input.a), ~u_input.a) % 32u)));
}

fn func_1() -> i32 {
    global0 = i32(-1i) * -_wgslsmith_add_i32(~func_2(), _wgslsmith_div_i32(~(-2147483647i), -46943i));
    global0 = abs(-(~(-43803i)));
    global0 = -2147483647i;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
    let var_1 = Struct_1(true, firstLeadingBit(-_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 74819i, 20815i, 1i), vec4<i32>(15740i, 46494i, -23896i, -2147483647i))), u_input.a, _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-1i, 8684i, 1i, 16893i)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, 13901i, -51016i, 1i), vec4<i32>(-446i, 8536i, -1i, 1i), false), abs(vec4<i32>(1i, 2147483647i, 0i, 1i)), select(vec4<i32>(-1i, -11861i, -2147483647i, 7705i), vec4<i32>(2147483647i, -34248i, 2147483647i, 21456i), vec4<bool>(true, true, false, true)))) > 3575i);
    return _wgslsmith_add_i32(_wgslsmith_add_i32(var_1.b, select(var_1.b, func_2(), !all(vec4<bool>(false, var_1.a, false, var_1.a)))), var_1.b);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(805f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(max(988f, -140f)))), -220f, -1474f);
    var var_1 = Struct_2((_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))) & 4294967295u) == u_input.a, -(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.b, arg_2.c.yyz), -vec3<i32>(arg_2.c.x, arg_2.b.x, arg_2.c.x)) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 42589u), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), arg_2.c);
    var var_2 = arg_2;
    let var_3 = reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, 1i), arg_2.b.x, arg_2.b.x, _wgslsmith_dot_vec4_i32(arg_2.c, vec4<i32>(var_2.c.x, var_2.c.x, -2147483647i, 2147483647i))), ~countOneBits(arg_2.c)) & vec4<i32>((0i ^ var_1.b.x) >> (~u_input.a % 32u), arg_2.b.x, 6483i, -1i));
    let var_4 = arg_2;
    return Struct_1(var_1.a, ~(-24852i), _wgslsmith_sub_u32(61213u, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 40879u, 36956u, u_input.a), vec4<u32>(u_input.a, 0u, 0u, u_input.a)), 24599u), ~u_input.a)), true || any(vec4<bool>(var_2.a, var_4.a, true, !arg_1)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_mod_i32(func_2(), -4569i);
    global0 = -12101i;
    var var_0 = Struct_2(~reverseBits(u_input.a) != arg_0.c, -_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.b, arg_0.b, -1i) | vec3<i32>(arg_0.b, 50383i, -4869i), ~vec3<i32>(arg_0.b, -1i, arg_0.b), vec3<bool>(true, true, arg_0.a)), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(5254i, arg_0.b, arg_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 50824i, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, 0i)))), -firstTrailingBit(-(~vec4<i32>(10791i, 5449i, arg_0.b, 0i))));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -arg_0.b ^ -abs(var_0.c.x)), -var_0.b.yy);
    let var_1 = func_4(var_0.a, false, Struct_2(arg_0.a, var_0.c.yxw, vec4<i32>(~var_0.c.x, arg_0.b | arg_0.b, _wgslsmith_mod_i32(20815i, _wgslsmith_clamp_i32(-1i, -40405i, var_0.b.x)), firstTrailingBit(var_0.c.x ^ 0i))));
    return Struct_2(var_0.a & arg_0.d, var_0.c.wzz, var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(true, false, Struct_2(false, -vec3<i32>(1i, 1i, 1i), vec4<i32>(func_1(), 56284i, _wgslsmith_clamp_i32(40518i, -2147483647i, 18734i), 65842i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1424f)) - 364f) * 394f), _wgslsmith_f_op_f32(1546f + 1191f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(1000f, -1667f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1552f * -978f) + _wgslsmith_f_op_f32(floor(544f)))))), -1009f, _wgslsmith_f_op_f32(step(-197f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(286f, -505f, var_0.a)), _wgslsmith_f_op_f32(sign(-346f)))))));
}

