struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_mod_i32(~u_input.d.x, 2147483647i), global0.x && (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1000f + arg_0))) <= -1000f), 6626u, vec3<i32>(-1i, reverseBits(1i), 0i), -abs(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, -2147483647i, u_input.d.x, 10771i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 51055i), vec4<bool>(false, global0.x, global0.x, false)), -vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x))));
    let var_1 = vec4<u32>(1u << (var_0.c % 32u), var_0.c, firstLeadingBit(select(_wgslsmith_div_u32(~21506u, u_input.a), ~(4294967295u ^ var_0.c), false)), _wgslsmith_add_u32(12855u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.c, u_input.a, var_0.c), firstTrailingBit(u_input.b))) << (1u % 32u));
    var var_2 = 4294967295u;
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1499i, _wgslsmith_sub_i32(2147483647i, 16233i), -var_0.e, -2147483647i >> (0u % 32u)), max(vec4<i32>(u_input.d.x, var_0.e, var_0.d.x, -19173i) >> (vec4<u32>(u_input.b.x, var_1.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(0i, -16224i, u_input.d.x, -7965i))) ^ 1i, global0.x, ~(~(~var_1.x)) << (_wgslsmith_clamp_u32(var_0.c, 88280u, 1u) % 32u), var_0.d, u_input.d.x);
    var_3 = Struct_1(-2147483647i, true, u_input.b.x, vec3<i32>(firstLeadingBit(1i), 6101i, _wgslsmith_dot_vec2_i32(var_0.d.zy, abs(var_3.d.yz)) & ((var_3.d.x ^ 0i) << (74142u % 32u))), u_input.d.x);
    return !select(select(!vec4<bool>(var_3.b, true, var_3.b, true), vec4<bool>(var_0.b, global0.x == true, !var_0.b, !var_0.b), true), !vec4<bool>(var_0.b, global0.x, var_0.b, true | global0.x), true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-197f, _wgslsmith_f_op_f32(f32(-1f) * -1857f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1228f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(select(439f, 635f, false)), _wgslsmith_f_op_f32(f32(-1f) * -143f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1831f, -1817f, 185f)))))))));
    var var_1 = arg_0.e;
    global0 = select(!(!vec4<bool>(!arg_0.b, !global0.x, !arg_0.b, !global0.x)), vec4<bool>(global0.x, false, true, arg_0.b), all(func_3(-1049f)));
    var var_2 = Struct_2(true, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-772f, 443f), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -779f)))), false | !all(vec3<bool>(false, arg_0.b, true)), vec2<bool>(all(!(!vec2<bool>(false, global0.x))), any(select(vec4<bool>(global0.x, true, true, true), vec4<bool>(true, global0.x, false, arg_0.b), vec4<bool>(true, false, true, false))) == true), -select(~_wgslsmith_div_i32(1i, 1i), u_input.d.x, any(vec2<bool>(global0.x, false))));
    var_2 = Struct_2(func_3(-1055f).x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, -1052f, _wgslsmith_f_op_f32(var_0.x + -508f)) - var_2.b)), arg_0.b, var_2.d, -42004i);
    return Struct_1(1i, global0.x, max(u_input.b.x ^ 4294967295u, 68707u), u_input.d, _wgslsmith_add_i32(max(~var_2.e << (u_input.c.x % 32u), firstTrailingBit(-17736i)), _wgslsmith_dot_vec3_i32(arg_0.d, -_wgslsmith_mult_vec3_i32(u_input.d, u_input.d))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(reverseBits(~max(vec3<u32>(arg_0.c.c, u_input.c.x, 82471u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a))), ~arg_0.e.d);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(319f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * _wgslsmith_f_op_f32(exp2(arg_0.a))))), -1292f, _wgslsmith_f_op_f32(f32(-1f) * -375f));
    var var_2 = arg_0.b;
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(1474i)), ~1i, var_2.d.x, _wgslsmith_mult_i32(0i, arg_0.e.b) ^ 2147483647i), firstTrailingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -1i, arg_0.c.d.x, 2147483647i), min(vec4<i32>(arg_0.c.e, arg_0.e.b, -2147483647i, u_input.d.x), vec4<i32>(-21305i, var_2.d.x, arg_0.e.b, 26697i))))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(49188i, 5601i, 1i), var_2.d, global0.x), _wgslsmith_mod_vec3_i32(u_input.d, arg_0.c.d)), select(39334i, var_2.a, global0.x) >> (u_input.c.x % 32u), 49731i), vec4<i32>(-max(67128i, arg_0.b.d.x), arg_0.c.d.x, -1i, var_2.e)));
    let var_4 = func_2(Struct_1(_wgslsmith_sub_i32(u_input.d.x, 1i ^ countOneBits(var_2.d.x)), any(func_3(275f).xy), 4294967295u, u_input.d, min(~_wgslsmith_dot_vec4_i32(var_3, vec4<i32>(-1i, -1i, 1i, 8918i)), _wgslsmith_mod_i32(-var_3.x, reverseBits(-1i))))).c;
    return arg_0.e;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(Struct_4(-210f, func_2(Struct_1(firstTrailingBit(u_input.d.x), all(global0.xyx), u_input.b.x ^ u_input.b.x, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -7800i, -1i), u_input.d), 2886i)), func_2(Struct_1(19357i, select(false, global0.x, false), 1u, u_input.d & u_input.d, abs(u_input.d.x))), all(vec4<bool>(!global0.x, any(global0.zzw), -2147483647i < u_input.d.x, true)), Struct_3(select(vec3<bool>(global0.x, false, false), func_3(-1135f).wxy, false), -1301i, select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false)), select(global0.wwx, global0.www, global0.x)), vec3<u32>(u_input.b.x, ~u_input.a, 0u), vec3<u32>(u_input.a, 19422u, ~u_input.c.x))));
    let var_1 = select(vec4<i32>(~48629i, -1i, -(~var_0.b), 1i), vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, var_0.b), var_0.b, -(~u_input.d.x), _wgslsmith_dot_vec4_i32(-select(vec4<i32>(-26746i, u_input.d.x, 21643i, -29233i), vec4<i32>(var_0.b, var_0.b, -1i, u_input.d.x), vec4<bool>(var_0.c.x, false, global0.x, var_0.c.x)), -vec4<i32>(var_0.b, var_0.b, u_input.d.x, 9203i))), var_0.a.x);
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(f32(-1f) * -794f))))));
    let var_2 = select(vec3<bool>(global0.x, true, !global0.x), global0.wwy, all(!func_4(Struct_4(-1000f, Struct_1(2147483647i, true, u_input.c.x, var_1.xww, var_1.x), Struct_1(var_0.b, false, u_input.b.x, u_input.d, var_0.b), true, Struct_3(vec3<bool>(var_0.a.x, false, global0.x), -2147483647i, global0.wwz, vec3<u32>(1u, u_input.a, 4294967295u), var_0.d))).c));
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, select(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 2147483647i, -1i, -41472i), vec4<i32>(var_1.x, 1i, 41027i, var_0.b)) ^ ~var_0.b, true)), _wgslsmith_sub_i32(~1i, min(u_input.d.x, u_input.d.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(min(var_1, var_1), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-26046i, 4876i, 1i, -18245i)), ~vec4<i32>(8336i, -2147483647i, 41069i, var_1.x))), select(~var_1, min(var_1, var_1) >> ((vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a) << (vec4<u32>(18666u, var_0.d.x, 82065u, var_0.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), !select(vec4<bool>(false, var_0.a.x, var_0.a.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(var_2.x, true, global0.x, var_2.x)))));
    return func_4(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1061f), func_2(func_2(Struct_1(2147483647i, global0.x, var_0.e.x, vec3<i32>(-36780i, u_input.d.x, 0i), var_0.b))), Struct_1(-u_input.d.x, global0.x | true, ~(~u_input.a), u_input.d, var_0.b), true, func_4(Struct_4(_wgslsmith_f_op_f32(-1691f + 1000f), Struct_1(u_input.d.x, false, 12530u, vec3<i32>(var_1.x, 12831i, 2147483647i), -40744i), func_2(Struct_1(var_0.b, false, var_0.e.x, var_1.wzx, 1i)), true, Struct_3(vec3<bool>(true, true, var_2.x), u_input.d.x, global0.zxy, var_0.d, var_0.d)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1959f + 177f) + _wgslsmith_f_op_f32(max(-1800f, 856f))) - _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-573f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(972f))))) + _wgslsmith_f_op_f32(ceil(1f)));
    let var_1 = Struct_2(func_4(Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1274f - -557f))), Struct_1(i32(-1i) * -8254i, global0.x, arg_0.x << (arg_1.e.x % 32u), u_input.d, _wgslsmith_add_i32(634i, u_input.d.x)), func_2(Struct_1(28696i, true, 0u, u_input.d, u_input.d.x)), false, func_4(Struct_4(1433f, Struct_1(arg_1.b, global0.x, arg_1.d.x, vec3<i32>(-19951i, u_input.d.x, 2147483647i), -1i), Struct_1(-20883i, true, 1u, u_input.d, -573i), false, arg_1)))).a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1139f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(820f, -269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2214f - _wgslsmith_f_op_f32(abs(1000f))))), true, !global0.wy, ~(-func_2(func_2(Struct_1(u_input.d.x, false, 4294967295u, u_input.d, u_input.d.x))).e));
    let var_2 = func_4(Struct_4(1f, func_2(Struct_1(-2147483647i, any(vec3<bool>(false, global0.x, true)), 4294967295u, u_input.d, 0i)), Struct_1(abs(-30438i), !select(true, arg_1.a.x, global0.x), firstLeadingBit(_wgslsmith_mod_u32(arg_1.e.x, u_input.a)), u_input.d, -8206i), var_1.a, Struct_3(vec3<bool>(arg_1.c.x, global0.x, all(vec4<bool>(true, var_1.c, arg_1.c.x, arg_1.c.x))), select(~arg_1.b, firstTrailingBit(1i), true), arg_1.a, ~u_input.c.xwz, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, arg_1.e.x, 56535u)), _wgslsmith_mult_vec3_u32(vec3<u32>(41653u, 1u, 0u), arg_1.e)))));
    var var_3 = func_2(Struct_1(2147483647i, !((0u == arg_0.x) & (false | arg_1.c.x)), _wgslsmith_sub_u32(arg_1.d.x, min(1u, var_2.e.x)), ~u_input.d, u_input.d.x));
    var_0 = -466f;
    return func_2(func_2(Struct_1(var_3.e, false, 88145u, ~(~vec3<i32>(-2147483647i, 9297i, -1i)), -14801i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<u32>(~(~select(48682u, 1u, global0.x)), u_input.b.x, ~(~(~u_input.a)), u_input.a), func_1());
    global0 = select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 261f)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2976f + _wgslsmith_f_op_f32(554f + -1777f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(137f + 1000f))))), true);
    global0 = !(!select(vec4<bool>(true, true, false, true), vec4<bool>(global0.x, global0.x, true, all(vec3<bool>(global0.x, global0.x, global0.x))), var_0.b));
    let var_1 = Struct_2(!(!(!(u_input.a >= u_input.b.x))), vec3<f32>(1f, 817f, _wgslsmith_f_op_f32(step(2090f, -819f))), !var_0.b, global0.yy, -5151i);
    var_0 = func_2(func_2(Struct_1(-1i, var_1.d.x, _wgslsmith_sub_u32(abs(37625u), ~var_0.c), select(firstTrailingBit(u_input.d), -u_input.d, global0.yxw), -_wgslsmith_mod_i32(var_1.e, var_1.e))));
    let var_2 = func_1();
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.x & u_input.a, ~var_1.e, _wgslsmith_sub_vec3_u32(~(~u_input.c.xyw), u_input.b.xxz), _wgslsmith_f_op_f32(var_1.b.x + -897f));
}

