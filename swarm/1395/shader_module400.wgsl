struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-5144i, vec4<bool>(false, true, true, true), 49286i, 2147483647i), Struct_1(1i, vec4<bool>(false, true, true, true), -9493i, -1i), Struct_1(2147483647i, vec4<bool>(true, true, true, true), 47940i, 1i), Struct_1(-24160i, vec4<bool>(true, false, true, false), -11588i, -34776i), Struct_1(1i, vec4<bool>(true, false, false, false), -35111i, i32(-2147483648)), Struct_1(0i, vec4<bool>(false, false, true, true), -22052i, i32(-2147483648)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true), 0i, -25272i), Struct_1(i32(-2147483648), vec4<bool>(true, true, true, false), 7657i, 0i), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, false), 1i, 38088i), Struct_1(0i, vec4<bool>(false, false, false, false), -18930i, 0i), Struct_1(0i, vec4<bool>(false, false, true, true), 6564i, 29022i), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), 19871i, -15256i), Struct_1(-1i, vec4<bool>(false, false, false, false), -81647i, 44046i), Struct_1(20893i, vec4<bool>(true, false, false, false), 36817i, 15089i), Struct_1(5434i, vec4<bool>(false, false, true, true), i32(-2147483648), 1i), Struct_1(20641i, vec4<bool>(true, true, false, true), 2147483647i, -47533i), Struct_1(-15996i, vec4<bool>(true, false, true, false), 46019i, 1i), Struct_1(1i, vec4<bool>(false, true, false, false), 15746i, -1i), Struct_1(2286i, vec4<bool>(true, false, false, true), 96739i, 41823i), Struct_1(53852i, vec4<bool>(true, true, true, false), -1i, -11596i), Struct_1(-2929i, vec4<bool>(false, false, true, true), 14450i, -1i), Struct_1(38788i, vec4<bool>(true, false, true, false), 28901i, -18261i), Struct_1(-4439i, vec4<bool>(false, true, false, false), i32(-2147483648), -18444i), Struct_1(-13299i, vec4<bool>(false, true, true, false), 2147483647i, -9395i), Struct_1(-1i, vec4<bool>(false, false, true, true), 45645i, 0i), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true), 0i, 5446i), Struct_1(-1i, vec4<bool>(true, true, false, true), 1i, 5016i), Struct_1(-1i, vec4<bool>(true, false, true, false), 0i, 16959i));

var<private> global1: f32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(vec2<i32>(u_input.a | ~arg_2.d, i32(-1i) * -2147483647i), select(min(vec4<i32>(-17949i, 37541i, 2147483647i, 0i), vec4<i32>(arg_3, 2147483647i, -2147483647i, arg_2.a) | vec4<i32>(arg_3, arg_2.c, -1i, 18493i)), (vec4<i32>(arg_3, arg_2.c, u_input.a, arg_2.d) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 65097u) % vec4<u32>(32u))) | select(vec4<i32>(arg_2.c, u_input.a, arg_2.c, 23080i), vec4<i32>(-1847i, u_input.a, 8928i, 9173i), vec4<bool>(arg_2.b.x, false, true, false)), arg_2.b.x), vec4<u32>(arg_0.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x) << (abs(u_input.c.x) % 32u), 80026u, abs(~arg_0.x)), true), arg_2.b.x);
    let var_1 = arg_2.b;
    let var_2 = var_0.a.b;
    var var_3 = arg_1.x == arg_1.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f));
    return vec4<i32>(max(var_2.x, max(~2147483647i, firstTrailingBit(var_0.a.a.x ^ arg_3))), var_2.x, -2147483647i, _wgslsmith_sub_i32(arg_2.d, -2069i));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    global1 = 1000f;
    var var_0 = Struct_3(Struct_2(vec2<i32>(reverseBits(2147483647i), -1i), -_wgslsmith_mod_vec4_i32(func_3(vec3<u32>(u_input.c.x, 4294967295u, 0u), vec4<f32>(480f, 909f, -219f, -908f), Struct_1(arg_0, vec4<bool>(true, false, true, true), arg_0, -1i), 35523i), _wgslsmith_div_vec4_i32(vec4<i32>(63701i, u_input.a, -5439i, arg_0), vec4<i32>(arg_0, arg_0, u_input.a, arg_0))), ~(vec4<u32>(44484u, u_input.c.x, 1u, u_input.c.x) | vec4<u32>(43126u, 0u, u_input.c.x, 1u)), true), !select(!any(vec3<bool>(false, false, false)), true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)))));
    global1 = 284f;
    let var_1 = vec2<bool>(all(select(vec3<bool>(var_0.a.d, var_0.a.d, var_0.a.d), vec3<bool>(var_0.a.d, var_0.b, var_0.b), vec3<bool>(false, var_0.b, false))) || (min(~u_input.c.x, ~4294967295u) != var_0.a.c.x), ~abs(~u_input.c.x) < ~(~(~3397u)));
    return var_0.a.b;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = u_input.c.yx;
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_2(vec2<i32>(min(-2147483647i, arg_0 ^ u_input.a) >> (4294967295u % 32u), arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_0, arg_0, arg_0, arg_0) & countOneBits(func_2(u_input.a)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -30255i, 0i, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, -4569i, 73979i, arg_0))) >> ((vec4<u32>(u_input.b, u_input.b, 1u, 0u) ^ vec4<u32>(0u, var_0.x, var_0.x, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, arg_0, arg_0, arg_0), ~vec4<i32>(68656i, 25640i, -2147483647i, -1726i)), vec4<i32>(1i, 91657i, -1757i, u_input.a) ^ -vec4<i32>(-10700i, arg_0, -1i, -2147483647i))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 86560u, u_input.c.x), vec4<u32>(0u, var_0.x, var_0.x, var_0.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 5958u, u_input.b, 4294967295u), ~vec4<u32>(1u, var_0.x, var_0.x, 4294967295u))), any(select(vec3<bool>(true, false, select(true, false, false)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true), true && any(vec3<bool>(true, false, true)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1902f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(852f)))), _wgslsmith_f_op_f32(-1000f - -676f)));
    global0 = array<Struct_1, 28>();
    return Struct_1(-2147483647i, vec4<bool>(all(!(!vec4<bool>(false, true, true, var_1.d))), var_1.d, var_1.d, false), _wgslsmith_div_i32(arg_0 << ((u_input.b ^ 18429u) % 32u), 2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(47770i, 14500i), ~func_3(var_1.c.xzy, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 740f, 2057f, 1055f))), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], arg_0 & -11501i).x));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1270f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * 808f) * _wgslsmith_f_op_f32(max(arg_3.x, arg_1))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(890f, _wgslsmith_f_op_f32(f32(-1f) * -696f), arg_3.x) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-715f, _wgslsmith_f_op_f32(sign(937f)), _wgslsmith_div_f32(arg_3.x, 215f))))));
    var var_1 = firstTrailingBit(2147483647i) == _wgslsmith_mult_i32(~u_input.a | arg_0.c, arg_2.d);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1619f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + -628f), arg_3.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)));
    let var_2 = _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-arg_3.x)) + _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(step(arg_3.x, -642f)))));
    let var_3 = Struct_2(vec2<i32>(max(arg_2.d, _wgslsmith_sub_i32(26637i, ~0i)), 8411i & u_input.a), _wgslsmith_div_vec4_i32(~(-min(vec4<i32>(arg_2.c, u_input.a, 28215i, 34003i), vec4<i32>(2147483647i, 1i, arg_2.d, 0i))), -_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, arg_0.d, u_input.a, arg_2.c), vec4<i32>(58169i, 1i, 2147483647i, -25105i))), ((~vec4<u32>(0u, u_input.c.x, 1u, 49543u) & ~vec4<u32>(62579u, 0u, u_input.b, 39044u)) ^ ~abs(vec4<u32>(94255u, 77843u, 4294967295u, u_input.c.x))) << (_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.c.x), vec4<u32>(u_input.b, u_input.c.x, 26748u, u_input.b), !vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), vec4<u32>(~u_input.b, ~u_input.b, ~u_input.b, _wgslsmith_add_u32(u_input.c.x, 40898u))) % vec4<u32>(32u)), !(select(min(u_input.b, 20920u), u_input.b << (u_input.b % 32u), true) <= 4294967295u));
    return Struct_4(arg_2, Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.a, -48277i), arg_2.a), select(vec4<bool>(!arg_0.b.x, true, var_3.b.x < u_input.a, any(arg_0.b)), vec4<bool>(true, true, true, true), select(arg_2.b, vec4<bool>(false, arg_0.b.x, arg_2.b.x, arg_2.b.x), select(arg_2.b, vec4<bool>(var_3.d, arg_2.b.x, true, false), var_3.d))), arg_0.a, -1i), Struct_3(Struct_2(vec2<i32>(_wgslsmith_mult_i32(arg_0.d, arg_0.c), _wgslsmith_sub_i32(u_input.a, 1555i)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(-10669i, u_input.a), _wgslsmith_add_i32(-1i, -1i), u_input.a), firstLeadingBit(vec4<u32>(13206u, var_3.c.x, 1u, 106947u)), any(!arg_0.b.wy)), arg_2.b.x), var_3);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3.a.b.zzz;
    global0 = array<Struct_1, 28>();
    let var_1 = arg_3.a;
    var var_2 = func_4(Struct_1(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_1.a.d), var_0.xx), arg_3.a.b.x), _wgslsmith_mod_i32(i32(-1i) * -1i, func_3(u_input.c, arg_0, global0[_wgslsmith_index_u32(50377u, 28u)], arg_3.a.a.x).x)), select(arg_1.b.b, vec4<bool>(arg_1.b.b.x, all(vec4<bool>(arg_2, arg_1.d.d, true, arg_2)), true, arg_2), true), -_wgslsmith_mult_i32(-1i, 19608i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, -2147483647i), arg_3.a.a.x ^ arg_1.b.d), ~(~(-13173i)))), arg_0.x, func_1(i32(-1i) * -104780i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 435f) - arg_0.xxy))), arg_0.wwz, false))).a;
    let var_3 = ~(~(~_wgslsmith_clamp_u32(~0u, ~arg_1.d.c.x, 19919u ^ u_input.b)));
    return _wgslsmith_clamp_i32(-13018i, -7481i, var_1.b.x) | (func_1(var_0.x).c >> (~(~arg_1.d.c.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i ^ func_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(754f, 1000f, 2011f, -1655f))), func_4(Struct_1(u_input.a, vec4<bool>(true, false, true, false), 0i, u_input.a), _wgslsmith_f_op_f32(1000f + 865f), func_1(u_input.a), vec3<f32>(1111f, 2221f, 1690f)), !any(vec2<bool>(true, false)), func_4(Struct_1(11041i, vec4<bool>(false, false, true, false), 13393i, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -697f), global0[_wgslsmith_index_u32(~u_input.c.x, 28u)], _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-652f, 116f, 235f)))).c), vec4<bool>(true, true, true, !all(vec4<bool>(true, true, true, true))), -21659i, u_input.a);
    let var_1 = vec4<u32>(~(u_input.c.x ^ func_4(func_1(19838i), -253f, Struct_1(-50460i, var_0.b, u_input.a, 54917i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-711f, -1139f, -1202f) + vec3<f32>(1482f, 403f, 338f))).c.a.c.x), ~u_input.c.x, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, 4294967295u, u_input.b)), 3931u, 23872u >> ((u_input.c.x << (u_input.c.x % 32u)) % 32u)), ~(~max(vec3<u32>(u_input.b, 5833u, u_input.b), u_input.c))));
    var var_2 = func_4(func_4(global0[_wgslsmith_index_u32(select(func_4(global0[_wgslsmith_index_u32(var_1.x, 28u)], 518f, Struct_1(639i, vec4<bool>(var_0.b.x, var_0.b.x, false, false), 2147483647i, 1i), vec3<f32>(-442f, 568f, -562f)).c.a.c.x ^ 1u, max(u_input.b, u_input.b), select(func_1(-2147483647i).b.x, any(vec2<bool>(var_0.b.x, true)), var_0.b.x)), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1726f), _wgslsmith_f_op_f32(-1000f * 495f)))), Struct_1(var_0.a, func_1(u_input.a).b, _wgslsmith_sub_i32(1i, u_input.a), func_2(1082i).x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(trunc(-243f)), _wgslsmith_f_op_f32(ceil(-2296f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(477f, 1000f, 1000f)))))).a, -652f, func_1(max(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, var_0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-40205i, u_input.a), vec2<i32>(var_0.c, 129973i), vec2<i32>(u_input.a, u_input.a))), ~select(var_0.d, 2147483647i, false))), vec3<f32>(1249f, 1f, -1000f)).d;
    global1 = -2288f;
    var var_3 = _wgslsmith_dot_vec4_i32((vec4<i32>(-970i | var_0.c, _wgslsmith_mult_i32(21931i, -1i), _wgslsmith_mult_i32(-53448i, var_2.b.x), u_input.a ^ var_0.a) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, -38761i, var_2.a.x), vec4<i32>(u_input.a, var_0.c, u_input.a, var_2.a.x), var_2.b)) << (var_2.c % vec4<u32>(32u)), var_2.b << (vec4<u32>(var_2.c.x, var_1.x >> (4294967295u % 32u), 4294967295u, 120399u) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(sign(-437f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.a & _wgslsmith_mult_i32(max(var_2.a.x, u_input.a), -28646i), -61205i), func_2(~(firstTrailingBit(0i) ^ (i32(-1i) * -480i))).zyy, var_1);
}

