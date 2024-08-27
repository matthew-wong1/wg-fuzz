struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec2<f32> {
    var var_0 = ~abs(abs(vec2<u32>(_wgslsmith_clamp_u32(42556u, u_input.a, 0u), u_input.a)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-808f, 130f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(!vec3<bool>(arg_0, true, false), 683f)), vec2<f32>(-1127f, 357f))), select(arg_1, select(!arg_1, vec2<bool>(arg_1.x, u_input.b.x <= -6505i), arg_1.x), arg_1), ~(~(-1i)), select(vec2<bool>(!all(vec4<bool>(false, arg_1.x, arg_0, arg_1.x)), !arg_1.x), select(arg_1, vec2<bool>(arg_0, true), any(vec4<bool>(arg_0, arg_1.x, arg_1.x, arg_1.x))), vec2<bool>(!arg_1.x, select(arg_1.x, arg_1.x, all(vec3<bool>(false, false, arg_0))))), !any(!(!vec4<bool>(false, arg_1.x, arg_1.x, true))));
    let var_1 = Struct_3(Struct_2(Struct_1(!(!var_0.b), vec4<u32>(~u_input.a, select(42885u, u_input.a, var_0.b.x), _wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25549u, u_input.a, u_input.a), vec4<u32>(43708u, 8359u, u_input.a, 37203u))), vec2<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(51671u, 75424u, u_input.a))), (u_input.a >= u_input.a) | any(vec4<bool>(var_0.b.x, false, arg_0, false)), vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), u_input.b.x, var_0.c))), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(21657u, 1u, u_input.a)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(25185u, u_input.a, 0u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 69249u) & vec3<u32>(17102u, 11941u, 4294967295u), max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 15676u)))), ~(~reverseBits(u_input.a)), _wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)) >> (abs(0u) % 32u))), Struct_1(!vec2<bool>(true, !arg_1.x), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(1u, u_input.a, u_input.a, 1u) & vec4<u32>(57099u, u_input.a, u_input.a, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 28592u, 1u, u_input.a))), countOneBits(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), ~min(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 46051u))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(~u_input.a, u_input.a), ~(~vec2<u32>(u_input.a, u_input.a))), true, u_input.b), Struct_2(Struct_1(vec2<bool>(select(var_0.e, var_0.e, true), all(vec3<bool>(arg_0, var_0.b.x, false))), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, 106094u, 0u), ~0u, ~u_input.a), ~countOneBits(vec2<u32>(u_input.a, 4294967295u)), var_0.c >= select(u_input.b.x, -29644i, false), firstLeadingBit(u_input.b) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_div_f32(var_0.a.x, var_0.a.x), !(true || var_0.e))));
    let var_2 = 1i;
    var var_3 = Struct_3(Struct_2(var_1.c), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u)), var_1.c.b), var_1.c.b), var_1.d.a, Struct_2(var_1.a.a), -368f);
    let var_4 = var_0;
    return var_1.c;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_5(select(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, true)))), !(false && any(vec4<bool>(false, false, false, false)))), func_2(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)) | true, vec2<bool>(true, true)), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1280f, 1336f), vec2<f32>(1733f, -572f), vec2<bool>(false, false)))), vec2<f32>(1f, 1f)), !vec2<bool>(u_input.a >= 20244u, all(vec3<bool>(false, false, false))), 0i, vec2<bool>(true, true), all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false))), ~1u);
    var var_1 = var_0.c;
    let var_2 = var_0.b;
    let var_3 = vec4<i32>(-2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11947i, var_2.e.x, -2147483647i, var_2.e.x), vec4<i32>(var_0.c.c, var_1.c, var_1.c, -1i)), abs(vec4<i32>(var_2.e.x, 2147483647i, 2147483647i, var_1.c))), min(vec4<i32>(-7636i, var_0.c.c, -7550i, var_2.e.x), select(vec4<i32>(var_0.c.c, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, var_0.c.c, -2147483647i, 6662i), vec4<bool>(var_2.a.x, var_0.a, var_1.e, var_2.a.x))))), firstLeadingBit(var_0.c.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, abs(var_2.e.x) ^ u_input.b.x), var_2.e.x));
    var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.a.x, -1295f) - _wgslsmith_f_op_f32(exp2(var_0.c.a.x)))), var_0.c.a.x), var_2.a, -var_2.e.x & ((i32(-1i) * -2147483647i) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(1u, u_input.a), _wgslsmith_mult_u32(1u, 4294967295u)) % 32u)), var_1.b, false);
    return Struct_2(var_0.b);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = 16730u;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(firstLeadingBit(func_1().a.c.x), firstTrailingBit(38964u | arg_1.a.b.x) | max(50218u & var_0, firstLeadingBit(u_input.a))), 0u);
    let var_2 = Struct_5(true, func_1().a, Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1132f, -877f))))), !func_2(0i <= arg_2.x, arg_1.a.a).a, abs(abs(-34403i ^ arg_1.a.e.x)), select(!vec2<bool>(arg_1.a.d, true), !(!vec2<bool>(arg_1.a.a.x, false)), arg_1.a.a), arg_1.a.d), _wgslsmith_add_u32(var_0, countOneBits(arg_1.a.b.x)));
    return Struct_2(func_2(var_2.c.e, arg_1.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-19821i, func_1(), select(func_2(true, !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))).e, vec3<i32>(~(u_input.b.x << (u_input.a % 32u)), u_input.b.x, 1i), func_2(true, vec2<bool>(true, true)).a.x && true), func_1().a.e.x);
    let var_1 = !vec4<bool>(var_0.a.d, var_0.a.d, var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1304f))) <= _wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(false, false, false), 131f)).x);
    let var_2 = vec3<f32>(-2180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-122f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f * -406f)))), -650f);
    var_0 = Struct_2(func_1().a);
    let var_3 = func_1().a.e;
    var var_4 = (var_0.a.b.wzx >> (_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.a.b.x, u_input.a, 1u), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u))) << (var_0.a.b.wxw % vec3<u32>(32u));
    var_0 = Struct_2(Struct_1(var_1.wx, select(~(~var_0.a.b), _wgslsmith_mult_vec4_u32(func_2(var_1.x, vec2<bool>(false, var_0.a.d)).b, firstLeadingBit(var_0.a.b)), all(vec4<bool>(false, var_0.a.a.x, true, true))), var_4.zx, !any(vec4<bool>(var_1.x, false, var_1.x, false)), var_3));
    var_0 = func_4(11482i, func_4(-2147483647i, Struct_2(func_4(-9265i, Struct_2(Struct_1(var_1.ww, vec4<u32>(u_input.a, u_input.a, u_input.a, var_4.x), var_0.a.c, var_1.x, var_3)), ~vec3<i32>(var_0.a.e.x, u_input.b.x, var_3.x), u_input.b.x).a), var_3, _wgslsmith_mult_i32(u_input.b.x, max(_wgslsmith_mod_i32(1i, u_input.b.x), u_input.b.x))), var_0.a.e, var_0.a.e.x);
    let var_5 = func_4((i32(-1i) * -1i) | _wgslsmith_mult_i32(var_3.x, select(_wgslsmith_add_i32(var_3.x, var_0.a.e.x), -1i, !var_1.x)), func_1(), u_input.b, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 31178i, -1i, var_5.a.e.x), vec4<i32>(var_3.x, u_input.b.x, 31068i, 0i))), max(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, var_3.x, -68104i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_5.a.e.x, -2147483647i, 5283i), vec4<i32>(var_0.a.e.x, 0i, -2147483647i, -1i))))));
}

