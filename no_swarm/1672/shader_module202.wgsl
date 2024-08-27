struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = vec3<bool>(all(select(vec3<bool>(true, true | arg_0.b.b.b.d, 1000f >= arg_0.a), select(select(vec3<bool>(arg_0.b.b.a.b.x, arg_0.b.c.d, arg_0.c.a.b.x), vec3<bool>(false, arg_0.c.a.b.x, arg_0.b.c.d), arg_0.c.a.d), vec3<bool>(false, false, true), !vec3<bool>(arg_0.c.b.d, arg_0.b.c.d, arg_0.c.b.b.x)), select(!vec3<bool>(arg_0.c.a.d, true, false), vec3<bool>(true, false, false), true))), !(true & any(arg_0.b.b.b.b)), select(false, 1i == reverseBits(arg_0.c.b.c.x), true));
    var_0 = vec3<bool>(u_input.d.x >= u_input.a, false, true);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 531f)))))), arg_0.b.b.c.yx));
    global0 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1672f))))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f)));
    return true;
}

fn func_2() -> Struct_2 {
    global0 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)));
    let var_0 = vec2<bool>(!all(vec2<bool>(true, true)) == true, !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global0 = !(var_0.x | func_3(Struct_4(_wgslsmith_div_f32(274f, 556f), Struct_3(111f, Struct_2(Struct_1(1830f, vec2<bool>(true, var_0.x), u_input.b.www, var_0.x), Struct_1(-660f, var_0, u_input.b.zwz, true), vec3<f32>(636f, -737f, -225f), 1871u, vec4<i32>(u_input.c, u_input.b.x, 2147483647i, u_input.b.x)), Struct_1(-1921f, vec2<bool>(var_0.x, var_0.x), u_input.b.wyy, var_0.x), u_input.d, 137f), Struct_2(Struct_1(675f, vec2<bool>(true, var_0.x), vec3<i32>(u_input.c, 1i, u_input.b.x), false), Struct_1(1924f, vec2<bool>(var_0.x, var_0.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i), var_0.x), vec3<f32>(127f, -789f, -833f), 80175u, vec4<i32>(-92224i, 1i, 10248i, -101240i)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.e, u_input.e)))));
    global0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-985f * 1127f)))))), select(select(!select(var_0, var_0, false), select(select(var_0, var_0, var_0), select(var_0, vec2<bool>(var_0.x, var_0.x), var_0.x), !var_0.x), false), var_0, select(true, var_0.x, false)), u_input.b.zwy, 1348u < u_input.d.x);
    return Struct_2(Struct_1(1666f, var_1.b, -var_1.c, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -1103f) + _wgslsmith_f_op_f32(f32(-1f) * -434f))), var_0, select(min(var_1.c << (vec3<u32>(u_input.d.x, 52009u, u_input.a) % vec3<u32>(32u)), select(u_input.b.wwx, var_1.c, vec3<bool>(false, var_1.b.x, var_1.b.x))), vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -68787i, -8170i), true || all(vec3<bool>(false, var_0.x, var_1.d))), true), vec3<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(678f + 2657f), _wgslsmith_f_op_f32(min(var_1.a, 1735f))))), 2314f, -1313f), u_input.a, vec4<i32>(max(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.c.x, u_input.c), vec3<i32>(0i, 4608i, u_input.b.x))) ^ countOneBits(reverseBits(var_1.c.x)), -1i, _wgslsmith_sub_i32(u_input.c >> (u_input.d.x % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, var_1.c.x, 22473i, var_1.c.x), ~vec4<i32>(u_input.b.x, u_input.c, 1i, u_input.b.x))), min(~_wgslsmith_clamp_i32(-13460i, u_input.b.x, var_1.c.x), 27625i)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_4 {
    global0 = any(!(!(!(!arg_0.c.b))));
    global0 = any(vec2<bool>(all(select(select(vec4<bool>(arg_0.c.d, true, arg_0.c.d, arg_0.c.d), vec4<bool>(false, arg_0.b.b.d, arg_0.c.b.x, arg_0.b.b.d), arg_0.c.d), !vec4<bool>(true, arg_0.c.d, true, arg_0.b.b.d), vec4<bool>(arg_0.b.a.b.x, true, false, arg_0.b.b.d))), arg_0.b.b.d));
    global0 = true;
    var var_0 = 20446u;
    let var_1 = u_input.d & _wgslsmith_mod_vec2_u32(vec2<u32>(~(1u & u_input.d.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(67279u, arg_0.b.d, 0u), select(0u, arg_1.x, arg_0.b.a.b.x))), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(arg_0.d.x, 0u)), vec2<u32>(0u, arg_1.x)));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c.x - _wgslsmith_f_op_f32(sign(692f))) - arg_0.b.c.x), arg_0, func_2(), max(u_input.d, vec2<u32>(19395u, ~var_1.x)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_4) -> vec3<f32> {
    var var_0 = reverseBits(-2147483647i);
    let var_1 = func_4(Struct_3(-410f, func_2(), func_2().a, ~(~reverseBits(vec2<u32>(u_input.e, arg_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(round(-985f)))))), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_0.d, 4294967295u, u_input.d.x) | vec4<u32>(14761u, arg_0.d, 4294967295u, 0u), vec4<u32>(25020u, 1u, arg_0.d, arg_3.b.d.x))));
    var var_2 = var_1.c.a;
    var_0 = u_input.b.x;
    let var_3 = all(vec3<bool>(false, true, true));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.b.a.a, arg_2.a, arg_1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, -288f, var_2.a))), _wgslsmith_f_op_vec3_f32(-arg_3.c.c), !(!vec3<bool>(arg_3.c.a.b.x, false, false))))), arg_0.c, vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * arg_1.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a + -934f) - -306f), var_1.b.b.b.b.x, false)));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    global0 = (0i ^ _wgslsmith_div_i32(_wgslsmith_add_i32(arg_2.c.e.x, arg_2.b.b.a.c.x), -_wgslsmith_div_i32(arg_2.c.e.x, arg_2.b.b.e.x))) < -arg_2.c.b.c.x;
    global0 = func_3(Struct_4(_wgslsmith_f_op_f32(-arg_0.x), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.a, 728f)), Struct_2(arg_2.c.b, arg_2.c.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -700f)), ~4294967295u, abs(u_input.b)), func_2().b, _wgslsmith_clamp_vec2_u32(vec2<u32>(42933u, arg_2.d.x), ~u_input.d, vec2<u32>(24964u, 33201u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -306f))), Struct_2(func_4(arg_2.b, ~vec4<u32>(u_input.a, arg_2.c.d, u_input.a, 0u)).c.a, Struct_1(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(arg_2.b.c, arg_2.b.c, vec3<f32>(2707f, 619f, arg_2.c.c.x), u_input.d.x, vec4<i32>(0i, u_input.c, -2147483647i, -2147483647i)), vec2<f32>(739f, -1438f), arg_2.c.a, arg_2)).x, arg_2.c.a.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-28437i, u_input.b.x, -13052i), vec3<i32>(13056i, 19681i, -1i)), arg_2.b.b.b.b.x), arg_2.b.b.c, arg_2.c.d, arg_2.b.b.e << ((vec4<u32>(u_input.e, arg_2.c.d, 85611u, arg_2.d.x) & vec4<u32>(arg_2.d.x, 1u, arg_2.d.x, 33962u)) % vec4<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(13u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 162972u), vec3<u32>(u_input.e, 4294967295u, 0u))), firstTrailingBit(u_input.d))));
    let var_0 = Struct_4(-1334f, func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -562f)), arg_2.b.b, arg_2.c.a, reverseBits(firstTrailingBit(arg_2.b.d)), -1000f), ~abs(vec4<u32>(u_input.d.x, arg_2.b.d.x, 0u, u_input.a)) | reverseBits(vec4<u32>(41188u, u_input.d.x, arg_2.c.d, arg_2.b.d.x) | vec4<u32>(0u, 1u, 38023u, 47702u))).b, arg_2.b.b, u_input.d);
    var var_1 = -vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_2.c.a.c.x, arg_2.c.b.c.x, var_0.c.a.c.x, -2147483647i), vec4<i32>(-1i, -2147483647i, 5728i, u_input.c)) | (u_input.b ^ var_0.b.b.e), vec4<i32>(0i, 47300i, ~0i, _wgslsmith_mod_i32(0i, 24528i))), -(var_0.b.c.c.x & _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.a.c.x, var_0.b.b.a.c.x, var_0.c.b.c.x), arg_2.c.b.c)), arg_2.b.b.b.c.x);
    return Struct_2(func_2().a, func_2().b, _wgslsmith_f_op_vec3_f32(round(arg_2.b.b.c)), u_input.d.x, arg_2.b.b.e);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec3<f32> {
    var var_0 = arg_0.a;
    var_0 = arg_0.a;
    global0 = !func_3(func_4(arg_3, firstTrailingBit(select(vec4<u32>(11900u, 0u, 7457u, 14490u), vec4<u32>(u_input.e, 4294967295u, 59644u, 1u), vec4<bool>(arg_3.b.b.d, false, arg_0.a.b.x, true)))));
    var var_1 = arg_3;
    let var_2 = Struct_3(756f, Struct_2(func_5(vec3<f32>(_wgslsmith_f_op_f32(arg_3.e * -560f), 1767f, _wgslsmith_f_op_f32(-var_0.a)), true, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -990f), func_4(arg_3, vec4<u32>(arg_2.d, arg_3.d.x, arg_2.d, arg_0.d)).b, Struct_2(Struct_1(-1363f, vec2<bool>(arg_2.b.d, arg_0.a.d), var_0.c, false), arg_3.b.b, vec3<f32>(var_0.a, -1275f, arg_3.e), 34092u, vec4<i32>(2147483647i, 2147483647i, 1i, 0i)), select(vec2<u32>(arg_2.d, 56294u), u_input.d, vec2<bool>(arg_3.c.b.x, var_0.b.x)))).a, Struct_1(arg_3.c.a, vec2<bool>(true, true), select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, arg_3.b.e.x, 22926i), vec3<i32>(-1308i, -1i, var_0.c.x)), ~var_1.c.c, vec3<bool>(arg_2.a.b.x, true, arg_0.b.d)), true), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1273f, -379f, -973f) * vec3<f32>(-163f, arg_0.c.x, 1068f)), var_1.b.c))), 1u, reverseBits(reverseBits(min(vec4<i32>(1i, -1i, -25157i, u_input.c), vec4<i32>(1i, var_0.c.x, -1i, arg_2.e.x))))), arg_0.a, _wgslsmith_mult_vec2_u32(select(firstTrailingBit(vec2<u32>(arg_2.d, 16084u)), arg_3.d, !select(arg_0.a.b, arg_3.b.a.b, var_0.d)), ~firstTrailingBit(var_1.d)), var_0.a);
    return vec3<f32>(arg_0.a.a, -1165f, var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(128f, -855f, -135f), vec3<f32>(-608f, 779f, -1742f), true))))), _wgslsmith_f_op_vec3_f32(func_6(func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(-239f, vec2<bool>(false, false), u_input.b.yxx, false), Struct_1(694f, vec2<bool>(false, false), u_input.b.ywz, false), vec3<f32>(724f, 1505f, 442f), 1u, vec4<i32>(-10540i, 1i, 64615i, 2147483647i)), vec2<f32>(-243f, 1328f), Struct_1(-1648f, vec2<bool>(true, false), vec3<i32>(28795i, u_input.b.x, u_input.b.x), false), Struct_4(-970f, Struct_3(546f, Struct_2(Struct_1(494f, vec2<bool>(true, true), u_input.b.wyw, false), Struct_1(-1255f, vec2<bool>(true, true), u_input.b.zzz, true), vec3<f32>(670f, -1313f, -698f), u_input.a, u_input.b), Struct_1(1120f, vec2<bool>(false, true), u_input.b.zyx, false), u_input.d, 732f), Struct_2(Struct_1(-1522f, vec2<bool>(false, false), vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), false), Struct_1(418f, vec2<bool>(false, false), u_input.b.zww, true), vec3<f32>(-969f, 1000f, 546f), u_input.a, vec4<i32>(15902i, u_input.b.x, u_input.b.x, 0i)), u_input.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-698f, 1000f, 1539f)))), func_4(Struct_3(361f, Struct_2(Struct_1(701f, vec2<bool>(true, true), u_input.b.ywz, false), Struct_1(1577f, vec2<bool>(false, false), vec3<i32>(4136i, u_input.c, -2147483647i), true), vec3<f32>(1220f, -797f, 140f), u_input.d.x, u_input.b), Struct_1(-803f, vec2<bool>(true, false), vec3<i32>(2147483647i, u_input.b.x, -1i), false), u_input.d, -322f), ~vec4<u32>(u_input.a, u_input.e, u_input.e, 41790u)).c.b.d, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -129f), func_4(Struct_3(-1208f, Struct_2(Struct_1(-601f, vec2<bool>(true, true), vec3<i32>(u_input.c, u_input.c, u_input.c), true), Struct_1(679f, vec2<bool>(true, true), u_input.b.yyz, false), vec3<f32>(768f, 1772f, -327f), u_input.e, vec4<i32>(2147483647i, 1i, 42193i, 2147483647i)), Struct_1(588f, vec2<bool>(false, false), u_input.b.wzy, false), u_input.d, 261f), vec4<u32>(4294967295u, 16324u, u_input.e, 1u)).b, func_2(), u_input.d)), u_input.b.zy, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(Struct_1(-1256f, vec2<bool>(true, true), vec3<i32>(-20309i, -2147483647i, -1i), true), Struct_1(214f, vec2<bool>(false, true), u_input.b.zxz, true), vec3<f32>(-485f, -899f, 269f), 15497u, vec4<i32>(u_input.c, u_input.c, 31925i, -306i)), vec2<f32>(-956f, 300f), Struct_1(-1785f, vec2<bool>(false, true), vec3<i32>(u_input.b.x, -2147483647i, -1i), true), Struct_4(1591f, Struct_3(-199f, Struct_2(Struct_1(1824f, vec2<bool>(true, true), vec3<i32>(-1i, u_input.b.x, u_input.b.x), true), Struct_1(624f, vec2<bool>(true, true), u_input.b.xyw, true), vec3<f32>(-319f, -712f, 647f), 1u, vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, u_input.b.x)), Struct_1(-2003f, vec2<bool>(true, true), vec3<i32>(u_input.b.x, 25529i, -1i), true), vec2<u32>(u_input.a, u_input.d.x), 300f), Struct_2(Struct_1(-1774f, vec2<bool>(false, true), u_input.b.yzw, false), Struct_1(1167f, vec2<bool>(false, true), u_input.b.yxw, false), vec3<f32>(-690f, -136f, 779f), 0u, u_input.b), vec2<u32>(u_input.d.x, 0u)))).x, vec2<bool>(true, true), u_input.b.ywz, func_4(Struct_3(1000f, Struct_2(Struct_1(-802f, vec2<bool>(true, true), vec3<i32>(u_input.c, -1i, u_input.b.x), false), Struct_1(-535f, vec2<bool>(true, false), vec3<i32>(-17509i, -52787i, u_input.c), false), vec3<f32>(614f, -1360f, -1494f), u_input.a, vec4<i32>(2147483647i, 59826i, u_input.c, u_input.c)), Struct_1(-1299f, vec2<bool>(false, false), vec3<i32>(u_input.b.x, 22345i, -35900i), true), vec2<u32>(u_input.a, 85031u), -249f), vec4<u32>(85129u, u_input.e, u_input.d.x, u_input.a)).b.c.d), func_5(vec3<f32>(242f, -1000f, 1516f), true, func_4(Struct_3(-1464f, Struct_2(Struct_1(548f, vec2<bool>(true, false), vec3<i32>(-2147483647i, 43540i, u_input.c), false), Struct_1(-197f, vec2<bool>(false, false), vec3<i32>(u_input.b.x, u_input.c, -1i), true), vec3<f32>(495f, 1802f, 854f), 62806u, vec4<i32>(-19651i, u_input.b.x, u_input.b.x, 0i)), Struct_1(691f, vec2<bool>(true, true), vec3<i32>(u_input.b.x, u_input.b.x, 52453i), true), vec2<u32>(u_input.e, u_input.d.x), -1574f), vec4<u32>(56866u, u_input.d.x, u_input.a, 56294u))).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-174f, -268f, 1436f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, 454f, -1351f))), 0u, func_2().e), func_4(Struct_3(func_4(Struct_3(335f, Struct_2(Struct_1(-1523f, vec2<bool>(false, true), vec3<i32>(2147483647i, 2091i, 2147483647i), true), Struct_1(-924f, vec2<bool>(true, true), u_input.b.xyz, false), vec3<f32>(1526f, -459f, 843f), u_input.a, vec4<i32>(u_input.c, 43093i, u_input.c, u_input.b.x)), Struct_1(-807f, vec2<bool>(false, true), vec3<i32>(u_input.c, 6511i, u_input.c), false), vec2<u32>(u_input.e, 4294967295u), 944f), vec4<u32>(4294967295u, 27512u, 16854u, 1u)).c.b.a, Struct_2(Struct_1(340f, vec2<bool>(false, true), u_input.b.zzw, false), Struct_1(-1041f, vec2<bool>(true, true), vec3<i32>(u_input.b.x, u_input.c, u_input.b.x), false), vec3<f32>(1238f, 501f, 196f), 4294967295u, vec4<i32>(0i, 6514i, u_input.c, u_input.b.x)), Struct_1(-598f, vec2<bool>(true, true), vec3<i32>(u_input.b.x, u_input.c, -119661i), false), ~vec2<u32>(24054u, u_input.a), -2459f), ~(vec4<u32>(66068u, u_input.d.x, u_input.e, u_input.e) | vec4<u32>(1u, u_input.a, u_input.e, u_input.e))).b)));
    var var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -850f), Struct_2(func_2().b, Struct_1(var_0.x, vec2<bool>(true, true), vec3<i32>(-17995i, 2147483647i, u_input.b.x), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1299f, var_0.x, var_0.x) * vec3<f32>(-197f, 459f, var_0.x)) + vec3<f32>(553f, -327f, 1765f)), u_input.d.x, u_input.b), func_4(Struct_3(var_0.x, Struct_2(Struct_1(-1553f, vec2<bool>(false, true), vec3<i32>(-1i, -10977i, 6550i), true), Struct_1(1699f, vec2<bool>(false, false), u_input.b.zyx, true), vec3<f32>(-881f, var_0.x, var_0.x), 16216u, u_input.b), func_2().b, vec2<u32>(u_input.d.x, 0u), _wgslsmith_div_f32(var_0.x, -486f)), vec4<u32>(80305u, 85352u & u_input.d.x, u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.d.x))).b.b.b, ~u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -1349f)), vec4<u32>(~u_input.d.x, min(112974u, 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 27116u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, u_input.d.x), vec3<u32>(87655u, 4294967295u, u_input.d.x))), abs(~vec3<u32>(0u, 1u, 7103u))), u_input.e));
    var_0 = var_1.b.b.c;
    global0 = !all(var_1.c.a.b);
    global0 = ~(-45037i) > _wgslsmith_add_i32(i32(-1i) * -1i, -u_input.b.x | 2147483647i);
    var_1 = func_4(func_4(var_1.b, select(~vec4<u32>(18662u, var_1.d.x, var_1.d.x, var_1.c.d) | vec4<u32>(u_input.d.x, 70144u, var_1.b.b.d, 61617u), select(~vec4<u32>(u_input.d.x, u_input.a, var_1.d.x, var_1.b.b.d), ~vec4<u32>(u_input.d.x, var_1.b.b.d, u_input.d.x, u_input.e), true), select(vec4<bool>(var_1.b.c.b.x, false, true, var_1.b.c.d), !vec4<bool>(true, true, var_1.b.c.b.x, var_1.b.c.d), all(vec3<bool>(true, var_1.b.b.a.d, true))))).b, ~countOneBits(vec4<u32>(u_input.a, 1u, u_input.e, u_input.d.x) & vec4<u32>(var_1.d.x, u_input.e, var_1.b.b.d, var_1.d.x)) << (vec4<u32>(~_wgslsmith_mult_u32(var_1.c.d, u_input.e), firstLeadingBit(abs(var_1.b.d.x)), ~(0u | u_input.d.x), ~reverseBits(u_input.d.x)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_1.c.c.x)));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(-u_input.c, func_2().a.c.x), u_input.b.x, 23894i, -_wgslsmith_add_i32(-2147483647i, var_1.b.b.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.a)), func_4(func_4(func_4(Struct_3(385f, var_1.b.b, var_1.c.b, vec2<u32>(0u, 30258u), -241f), vec4<u32>(u_input.d.x, 26656u, 80813u, 4294967295u)).b, min(vec4<u32>(31381u, 13067u, u_input.a, 6236u), vec4<u32>(8096u, 45395u, var_1.b.d.x, 77232u))).b, vec4<u32>(var_1.b.b.d, 62674u, 1u, 1u)).a), ~vec2<u32>(~(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 70613u), max(vec2<u32>(var_1.b.d.x, var_1.d.x), vec2<u32>(u_input.e, 41337u)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-913f + var_0.x), _wgslsmith_f_op_f32(min(var_1.c.b.a, var_0.x)))), var_1.c.a.a, _wgslsmith_f_op_f32(trunc(-382f))))), var_2.x, var_1.c.a.a);
}

