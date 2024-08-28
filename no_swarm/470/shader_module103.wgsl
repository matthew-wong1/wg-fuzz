struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = select(~10270u, ~arg_0.b, arg_0.a.a != abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.b, arg_0.c.c.x, u_input.b.x), _wgslsmith_add_u32(arg_0.a.a, 4294967295u))));
    var_0 = arg_0.b;
    let var_1 = !any(select(!vec4<bool>(false, arg_0.d.x, true, false), vec4<bool>(true, true, true, arg_0.d.x), arg_0.d.x & arg_0.d.x)) & false;
    global0 = array<vec4<u32>, 13>();
    var var_2 = _wgslsmith_mult_vec3_u32(max(u_input.b.ywx, ~(~u_input.b.yyw)), vec3<u32>(0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.a, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)) >> (~u_input.b.x % 32u), ~38506u), 89369u));
    return -1000f;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    let var_0 = !(true != arg_1.x);
    let var_1 = false;
    var var_2 = (vec3<i32>(-1i) * -(~vec3<i32>(arg_0.a.d, u_input.d, u_input.d))) & vec3<i32>(u_input.d, -firstLeadingBit(-12329i), u_input.c.x);
    let var_3 = Struct_1(u_input.b.x, -725i, vec3<u32>(arg_0.a.c.x, arg_0.c.a, ~(~firstTrailingBit(1u))), arg_0.a.b);
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(-544f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f - -1352f), _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.c, 4294967295u, arg_0.a, vec2<bool>(arg_0.d.x, arg_0.d.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f + -246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f - -812f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, 266f, -1479f)))));
    return reverseBits(~reverseBits(var_3.d));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_1 {
    global0 = array<vec4<u32>, 13>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_u32(arg_0.e.b, 4294967295u, ~1u), abs(~(i32(-1i) * -2625i)), select(~vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.a.a), ~abs(vec3<u32>(1u, arg_0.c.x, u_input.a)), false), arg_0.d), 4294967295u, arg_0.a, select(!arg_0.e.d, !(!vec2<bool>(arg_0.b, arg_1.x)), arg_1.yz));
    var var_1 = Struct_1(4294967295u, ~(func_2(Struct_2(Struct_1(1u, var_0.c.d, vec3<u32>(28499u, 22056u, 4294967295u), -54661i), var_0.a.a, Struct_1(arg_0.a.a, 2147483647i, vec3<u32>(1u, 84139u, u_input.a), -30655i), vec2<bool>(arg_1.x, arg_0.e.d.x)), vec3<bool>(false, true, var_0.d.x)) & _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, var_0.a.d)), max(vec2<i32>(u_input.d, arg_0.a.b), u_input.c))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, var_0.b), var_0.a.c), 48913i);
    var var_2 = Struct_1(var_0.b, _wgslsmith_div_i32(-_wgslsmith_add_i32(u_input.c.x, arg_0.e.c.b), _wgslsmith_div_i32(0i, 54186i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 2192u), var_0.a.c.yx) % 32u)) >> (var_1.a % 32u), ~(countOneBits(~vec3<u32>(var_1.c.x, 30008u, var_0.c.a)) << (_wgslsmith_div_vec3_u32(~var_1.c, vec3<u32>(81166u, u_input.b.x, 0u) & arg_0.c) % vec3<u32>(32u))), 1i);
    var_1 = Struct_1(firstLeadingBit(~_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(var_2.c.x, 1u))), countOneBits(36713i), arg_0.c, abs(firstLeadingBit(2147483647i)));
    return Struct_1(83233u >> (~var_0.b % 32u), -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c.d, var_1.d), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.d, var_1.b), u_input.c)), vec2<i32>(-arg_0.e.c.b, abs(var_1.b))), select(var_0.a.c, select(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.xzw, vec3<u32>(u_input.a, var_1.a, 1u)), vec3<u32>(u_input.b.x, var_2.a, arg_0.c.x), vec3<u32>(24413u, var_0.b, var_0.c.a)), max(var_0.a.c, vec3<u32>(arg_0.c.x, 0u, 78385u)) | ~vec3<u32>(var_1.c.x, 7907u, var_2.c.x), vec3<bool>(u_input.a <= 4294967295u, true, !var_0.d.x)), arg_1), u_input.d);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 13>();
    let var_0 = Struct_3(Struct_1(~(~u_input.b.x), -1i, ~u_input.b.yzw, -2147483647i), func_1(arg_0, vec3<bool>(70120u <= func_1(Struct_4(arg_0.e.a, arg_0.e.d.x, u_input.b.xxx, arg_1.x, Struct_2(arg_0.a, u_input.a, arg_0.a, arg_0.e.d)), vec3<bool>(arg_0.e.d.x, false, false), vec4<f32>(1180f, 1000f, -680f, -425f)).a, true, any(select(arg_0.e.d, arg_0.e.d, arg_0.e.d))), vec4<f32>(-2432f, -1000f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(64460u, arg_1.x, arg_0.c, arg_0.a.b), 87953u, arg_0.e.c, arg_0.e.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2167f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.e)), _wgslsmith_div_f32(369f, 2138f), _wgslsmith_div_f32(348f, 866f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * 1013f), 1319f, _wgslsmith_f_op_f32(min(231f, -1810f))))));
    var var_2 = _wgslsmith_div_vec4_u32(~global0[_wgslsmith_index_u32(106516u, 13u)], global0[_wgslsmith_index_u32(arg_0.e.c.c.x, 13u)]);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1818f)))))), _wgslsmith_div_vec2_f32(var_1.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_1.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, 1648f)))));
    return func_1(Struct_4(Struct_1(_wgslsmith_clamp_u32(arg_0.a.c.x, var_2.x, var_2.x) & (arg_0.c.x << (arg_0.c.x % 32u)), ~arg_1.x, vec3<u32>(var_0.b.c.x, 1u, 4294967295u), 0i), arg_0.e.d.x, ~vec3<u32>(~1u, firstLeadingBit(18776u), var_2.x), 57095i, Struct_2(arg_0.e.c, 1u >> (0u % 32u), func_1(Struct_4(Struct_1(15684u, var_0.a.d, arg_0.e.a.c, -1i), arg_0.b, vec3<u32>(var_0.b.c.x, 1u, arg_0.e.a.a), 8385i, arg_0.e), vec3<bool>(true, arg_0.b, false), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1364f, -260f, var_3.x, var_1.x)))), arg_0.e.d)), !select(select(!vec3<bool>(arg_0.b, arg_0.e.d.x, arg_0.b), select(vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.e.d.x, arg_0.b), true), all(vec2<bool>(arg_0.e.d.x, false))), !vec3<bool>(arg_0.e.d.x, arg_0.e.d.x, true), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 342f, var_1.x))))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_4(func_4(Struct_4(arg_0.a, arg_1, vec3<u32>(arg_0.a.c.x, 1u, 30803u), _wgslsmith_mult_i32(i32(-1i) * -1i, func_1(Struct_4(arg_0.a, arg_1, vec3<u32>(7027u, 35707u, 29257u), u_input.d, Struct_2(Struct_1(u_input.b.x, 34597i, vec3<u32>(u_input.a, arg_3.x, arg_3.x), -1977i), arg_3.x, arg_0.b, vec2<bool>(arg_2.x, true))), arg_2, vec4<f32>(1443f, 1446f, -157f, -614f)).b), Struct_2(Struct_1(9839u, 0i, vec3<u32>(0u, arg_3.x, 53179u), -3828i), ~arg_0.a.a, Struct_1(arg_3.x, arg_0.a.b, vec3<u32>(u_input.a, 92471u, 35008u), u_input.c.x), vec2<bool>(true, arg_1))), min(vec3<i32>(-55859i, func_4(Struct_4(arg_0.a, arg_1, u_input.b.wxy, -6340i, Struct_2(Struct_1(25607u, 1i, vec3<u32>(arg_3.x, 44978u, 4294967295u), arg_0.a.b), 0u, Struct_1(u_input.a, -28539i, vec3<u32>(125546u, arg_0.b.c.x, 1591u), arg_0.b.d), arg_2.yy)), vec3<i32>(-18886i, 1i, 2147483647i)).b, -1i), max(vec3<i32>(2147483647i, u_input.c.x, arg_0.a.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.b, arg_0.b.b, 61548i), vec3<i32>(arg_0.a.b, u_input.d, 1i), vec3<i32>(arg_0.b.b, 0i, 75309i))))), true, max(u_input.b.zxw, u_input.b.wyx), 10419i, Struct_2(arg_0.b, 76808u, Struct_1(u_input.b.x, ~u_input.d, vec3<u32>(6719u, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, arg_0.b.a)), reverseBits(arg_0.b.d) << (_wgslsmith_sub_u32(16635u, arg_3.x) % 32u)), vec2<bool>(!all(vec2<bool>(arg_2.x, arg_2.x)), false)));
    var var_1 = ~(firstTrailingBit(~var_0.e.c.a >> (~0u % 32u)) | 0u);
    var var_2 = vec4<u32>(~arg_3.x, _wgslsmith_add_u32(var_0.e.b, _wgslsmith_div_u32(firstLeadingBit(var_0.a.a), ~var_0.e.b)) & firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(0u, 12973u, 1u))), _wgslsmith_div_u32(select(1u, ~11616u, arg_2.x), _wgslsmith_sub_u32(4294967295u, u_input.a) ^ 0u), 4294967295u);
    let var_3 = 1u;
    var var_4 = var_0.a.d;
    return firstTrailingBit(vec2<i32>(abs(arg_0.b.b) & 43316i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(~u_input.c, _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(arg_0.b.b, -2147483647i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!any(vec2<bool>(false, true)) || all(vec2<bool>(true, true)), true, false);
    let var_1 = func_5(Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.wy, vec2<u32>(4294967295u, 54164u)), _wgslsmith_sub_vec2_u32(u_input.b.zx, u_input.b.xx)), min(~(-2147483647i), firstTrailingBit(u_input.c.x)), ~min(u_input.b.zxz, u_input.b.wwy), ~u_input.c.x), func_4(Struct_4(func_1(Struct_4(Struct_1(u_input.a, 1i, vec3<u32>(21031u, 24582u, 43215u), u_input.c.x), false, vec3<u32>(u_input.b.x, u_input.a, u_input.a), u_input.c.x, Struct_2(Struct_1(u_input.b.x, -34368i, vec3<u32>(u_input.a, u_input.b.x, 0u), 2147483647i), 51684u, Struct_1(u_input.b.x, 27001i, u_input.b.ywz, -15768i), var_0.yx)), vec3<bool>(var_0.x, var_0.x, true), vec4<f32>(-880f, -877f, 811f, -1376f)), true, ~u_input.b.zxz, 4274i, Struct_2(Struct_1(u_input.b.x, u_input.d, vec3<u32>(45126u, u_input.a, u_input.b.x), u_input.d), u_input.b.x, Struct_1(u_input.a, u_input.c.x, u_input.b.wwx, u_input.d), var_0.zx)), firstLeadingBit(vec3<i32>(u_input.d, -2147483647i, -6369i)))), true, !(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, true, var_0.x), true)), ~((_wgslsmith_sub_vec3_u32(u_input.b.zww, u_input.b.yyy) ^ (vec3<u32>(u_input.b.x, 4294967295u, 0u) & u_input.b.xxy)) ^ ((vec3<u32>(u_input.b.x, u_input.a, u_input.a) << (u_input.b.wwz % vec3<u32>(32u))) & u_input.b.ywz)));
    var var_2 = Struct_2(func_1(Struct_4(func_4(Struct_4(Struct_1(1u, -78292i, u_input.b.yzy, -1i), false, u_input.b.zwy, var_1.x, Struct_2(Struct_1(24959u, -28505i, vec3<u32>(u_input.a, 14066u, 0u), -65010i), 45981u, Struct_1(u_input.b.x, u_input.c.x, vec3<u32>(u_input.b.x, 1u, 4294967295u), u_input.c.x), var_0.zz)), ~vec3<i32>(-50671i, 2147483647i, 5155i)), (var_0.x == true) || true, abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), -_wgslsmith_mult_i32(-22278i, -15582i), Struct_2(Struct_1(u_input.a, u_input.d, u_input.b.wwy, u_input.d), _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.xw), Struct_1(u_input.a, var_1.x, u_input.b.yxz, var_1.x), vec2<bool>(true, false))), select(!select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(var_0.x, true, true), vec3<bool>(select(var_0.x, false, false), select(var_0.x, true, var_0.x), u_input.a < u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-923f, 2225f, 1585f, 1007f), vec4<f32>(-946f, 1110f, -1290f, 239f), vec4<bool>(var_0.x, true, var_0.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(438f, 1459f, 1000f, 965f))))), 0u, func_4(Struct_4(func_1(Struct_4(Struct_1(u_input.a, 36528i, vec3<u32>(u_input.b.x, 6156u, 0u), 16737i), true, vec3<u32>(u_input.b.x, u_input.a, 0u), -44408i, Struct_2(Struct_1(u_input.a, u_input.c.x, u_input.b.yxy, -14691i), u_input.a, Struct_1(u_input.a, 1i, u_input.b.yzz, 16459i), vec2<bool>(var_0.x, var_0.x))), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(194f, 1116f, 484f, 1000f))), var_0.x, firstLeadingBit(vec3<u32>(u_input.b.x, 0u, 0u)), ~23983i, Struct_2(func_1(Struct_4(Struct_1(7567u, var_1.x, vec3<u32>(u_input.b.x, 0u, 2177u), var_1.x), var_0.x, vec3<u32>(u_input.b.x, u_input.b.x, 35932u), 1i, Struct_2(Struct_1(u_input.b.x, var_1.x, u_input.b.ywy, u_input.c.x), 9605u, Struct_1(14062u, -1i, vec3<u32>(u_input.b.x, u_input.a, 1u), u_input.d), vec2<bool>(var_0.x, var_0.x))), vec3<bool>(var_0.x, false, false), vec4<f32>(-202f, -1261f, 473f, -1131f)), u_input.a, Struct_1(0u, -47464i, u_input.b.xzy, 39545i), select(var_0.zy, vec2<bool>(false, true), vec2<bool>(false, false)))), -select(vec3<i32>(-11798i, 1038i, u_input.d), min(vec3<i32>(u_input.c.x, -2147483647i, var_1.x), vec3<i32>(24452i, -68535i, var_1.x)), !vec3<bool>(var_0.x, var_0.x, false))), !select(!var_0.xy, !(!var_0.xx), false));
    let var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(35136i, u_input.c.x, var_1.x, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(36795i, 1i, u_input.d, 0i), -vec4<i32>(var_1.x, var_2.a.d, 1i, var_2.a.b))), vec4<i32>(u_input.c.x, firstLeadingBit(var_2.a.b), -max(var_1.x, var_2.c.b), ~var_2.a.d)), -_wgslsmith_div_vec4_i32(max(vec4<i32>(-1i, var_2.a.b, 28942i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(2187i, 0i, -8321i, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_2.a.d))), vec4<i32>(var_1.x, 18428i, func_5(Struct_3(var_2.a, Struct_1(0u, 0i, var_2.a.c, u_input.c.x)), var_0.x, vec3<bool>(true, var_0.x, var_2.d.x), var_2.a.c).x, _wgslsmith_dot_vec2_i32(vec2<i32>(7530i, 2147483647i), var_1))));
    var var_4 = vec4<bool>(false, any(var_2.d), var_0.x & var_0.x, var_0.x);
    let var_5 = Struct_3(var_2.c, Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 4294967295u, 0u, var_2.c.c.x)), min(~var_2.a.a, var_2.b | 49768u)), var_2.c.b, u_input.b.zzz, 0i));
    let var_6 = Struct_4(var_5.a, !(!(!var_4.x)), var_5.b.c, u_input.c.x, Struct_2(func_4(Struct_4(Struct_1(1u, -2147483647i, vec3<u32>(u_input.b.x, 1u, 47914u), var_1.x), true, vec3<u32>(u_input.b.x, 4294967295u, var_5.b.c.x) ^ u_input.b.xxx, var_1.x, Struct_2(var_2.a, 0u, var_5.a, vec2<bool>(var_0.x, var_0.x))), _wgslsmith_add_vec3_i32(var_3.wwy, _wgslsmith_add_vec3_i32(var_3.zwx, vec3<i32>(-19524i, var_3.x, var_1.x)))), min(u_input.a, countOneBits(var_5.b.c.x)) << (var_2.b % 32u), var_5.a, !(!vec2<bool>(var_4.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, max(-var_3 << (~vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_6.c.x) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(~13907i, var_3.x, var_5.a.d, _wgslsmith_dot_vec3_i32(var_3.yxz, vec3<i32>(2147483647i, var_2.c.b, 0i))))));
}

