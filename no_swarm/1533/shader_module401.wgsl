struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16464u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global0 = _wgslsmith_sub_u32(u_input.a, u_input.a);
    return select(23116u, max(~u_input.a, ~1u), false);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = ~u_input.a;
    var var_0 = func_3();
    var var_1 = false;
    let var_2 = arg_1;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + 1248f)), arg_1, -u_input.b >= max(-_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b), Struct_1(4294967295u));
    return _wgslsmith_div_i32(-2147483647i, min(u_input.b, 18361i));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = ~vec3<u32>(4294967295u ^ u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_2.a, arg_2.a, arg_1)), firstTrailingBit(vec3<u32>(1u, u_input.a, 77195u))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, u_input.a, 43422u), vec3<u32>(arg_1, 76489u, 4294967295u)), vec3<u32>(56323u, arg_2.a, arg_2.a) ^ vec3<u32>(u_input.a, 32498u, arg_1))), arg_1);
    let var_1 = arg_2.a;
    var var_2 = select(~_wgslsmith_add_vec2_i32(arg_3.yy, ~arg_3.xy) >> (abs(vec2<u32>(_wgslsmith_mult_u32(arg_1, 4294967295u), countOneBits(var_0.x))) % vec2<u32>(32u)), -arg_3.zz, vec2<bool>(any(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), select(true, false, false))), all(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, false))))));
    var var_3 = 611f;
    var_3 = 902f;
    return Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, abs(0u), _wgslsmith_mod_u32(arg_2.a, var_0.x)), ~(vec3<u32>(4442u, 1u, 4294967295u) >> (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(-arg_2.a);
    var var_3 = true;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_1))))), Struct_1(3297u), true, arg_2.b);
    return Struct_1(_wgslsmith_clamp_u32(var_1.b.a, abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 51935u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(var_1.b.a, 14579u))), ~u_input.a));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    let var_1 = func_5(func_4(_wgslsmith_mult_i32(func_2(~80409u, Struct_1(u_input.a)), 0i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, -58261i, u_input.b, u_input.b))), var_0.a, Struct_1(var_0.a), vec3<i32>(~(~2147483647i), u_input.b, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.b, u_input.b))))), _wgslsmith_f_op_f32(-1f), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(402f, 299f)))))), func_4(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 21582u, 75743u, 1u), vec4<u32>(1u, 43367u, 4294967295u, u_input.a)) ^ abs(4294967295u), func_4(u_input.b, ~1u, Struct_1(1u), -vec3<i32>(2147483647i, u_input.b, -1i)), vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b, 1i)), 45284u != var_0.a, func_4(abs(u_input.b), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, var_0.a), var_0.a), func_4(-2147483647i, 14815u, func_4(-1i, 0u, Struct_1(var_0.a), vec3<i32>(u_input.b, u_input.b, u_input.b)), min(vec3<i32>(u_input.b, -26789i, 0i), vec3<i32>(u_input.b, 10019i, 38792i))), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, u_input.b), vec3<i32>(u_input.b, 2147483647i, -1i)) ^ ~vec3<i32>(1i, 0i, 0i))));
    let var_2 = 65470i;
    var_0 = func_5(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1359f, -191f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f + -336f) + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -952f)))), Struct_2(1000f, var_1, false, func_5(Struct_1(var_1.a), -342f, Struct_2(_wgslsmith_div_f32(1581f, 2260f), func_4(var_2, 1u, var_1, vec3<i32>(-5092i, var_2, 0i)), true, func_5(Struct_1(26811u), -401f, Struct_2(-641f, var_1, false, var_1))))));
    var var_3 = firstTrailingBit(var_0.a);
    return func_4(20819i, _wgslsmith_clamp_u32(func_5(Struct_1(var_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1318f)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(u_input.a), true, Struct_1(4294967295u))).a, var_1.a, var_0.a), func_4(0i, var_0.a, Struct_1(func_3()), vec3<i32>(_wgslsmith_div_i32(var_2, -var_2), u_input.b, func_2(~4294967295u, var_1))), -countOneBits(select(abs(vec3<i32>(2147483647i, var_2, u_input.b)), -vec3<i32>(12279i, 4180i, 3739i), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = select(vec2<i32>(_wgslsmith_sub_i32(u_input.b ^ u_input.b, -u_input.b) & ~u_input.b, -(2551i ^ u_input.b)), _wgslsmith_add_vec2_i32(firstTrailingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(-20813i, -2147483647i), vec2<i32>(1i, -2147483647i))), abs(-vec2<i32>(-33049i, 35154i))), select(vec2<bool>(!any(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(false, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(all(vec3<bool>(true, true, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    let var_2 = ~countOneBits(firstTrailingBit(~43873u)) == var_0.a;
    var var_3 = func_5(func_5(Struct_1(~func_5(Struct_1(43923u), 390f, Struct_2(-978f, Struct_1(63021u), true, Struct_1(u_input.a))).a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-270f)) * _wgslsmith_f_op_f32(315f * 193f)))), Struct_2(_wgslsmith_f_op_f32(406f - _wgslsmith_div_f32(-1952f, -1140f)), func_1(), true, Struct_1(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-533f))))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1373f * -2022f)))), func_1(), ((u_input.b << (u_input.a % 32u)) == var_1.x) | false, Struct_1(u_input.a)));
    let var_4 = vec4<bool>(false, true, _wgslsmith_f_op_f32(f32(-1f) * -1011f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(1607f - 474f)), all(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_2, var_2, var_2)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_2, true, var_2), var_2), vec3<bool>(var_2, var_2, var_2), var_2))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-854f))))), -298f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-596f, 676f))))));
    var var_6 = Struct_1(var_0.a);
    global0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(min(~_wgslsmith_mult_vec2_u32(vec2<u32>(8325u, var_0.a), vec2<u32>(45356u, var_0.a)), vec2<u32>(var_6.a, var_6.a | var_6.a))), firstTrailingBit(vec2<u32>(u_input.a, var_3.a)));
    var var_7 = Struct_1(_wgslsmith_sub_u32(var_6.a >> (_wgslsmith_mod_u32(18431u, 4294967295u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 32356u), vec3<u32>(5649u, var_3.a, 42837u)), ~vec3<u32>(1u, 19094u, 38455u))) << (abs(2256u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 0i, var_1.x, var_1.x), vec4<i32>(30010i, u_input.b, u_input.b, 2147483647i))) << (firstTrailingBit(~vec4<u32>(var_6.a, 35348u, 4294967295u, 51295u) & vec4<u32>(var_7.a, var_6.a, var_3.a, var_0.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, func_5(Struct_1(949u), -1076f, Struct_2(-677f, Struct_1(u_input.a), var_2, Struct_1(var_6.a))).a, 4294967295u, ~61208u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_6.a, 16714u, 0u), abs(vec3<u32>(var_7.a, 26589u, 9647u))), var_7.a, u_input.a, u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_5.zy)))), vec2<f32>(_wgslsmith_f_op_f32(-var_5.x), -533f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2539f + 739f) * _wgslsmith_f_op_f32(-223f + var_5.x)), var_5.x, _wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(step(-227f, _wgslsmith_f_op_f32(floor(var_5.x))))), _wgslsmith_f_op_f32(-var_5.x)));
}

