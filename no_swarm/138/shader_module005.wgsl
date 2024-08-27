struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 2>;

var<private> global2: i32 = 31995i;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    global2 = arg_1.c.a;
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    let var_0 = vec3<bool>(true, (abs(~arg_1.c.a) ^ arg_1.c.a) <= (_wgslsmith_mod_i32(arg_0, _wgslsmith_clamp_i32(arg_1.c.a, u_input.d, u_input.d)) << (~_wgslsmith_sub_u32(u_input.c, u_input.b.x) % 32u)), true);
    global1 = array<Struct_3, 2>();
    return Struct_1(~reverseBits(arg_1.c.a), var_0.x, 1u, var_0, var_0);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_1.e), vec2<i32>(arg_1.d.a, ~_wgslsmith_mult_i32(~arg_0.a, i32(-1i) * -40750i)), true, Struct_1(11163i, false, 0u, func_2(-29376i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, arg_1.d.c), u_input.a.yz), u_input.a.zy), 2u)]).e, select(arg_1.d.d, !func_2(arg_0.a, Struct_3(vec2<f32>(1339f, 1322f), arg_1.e, arg_0)).d, func_2(1i, Struct_3(vec2<f32>(arg_1.e, arg_1.e), arg_1.a, arg_0)).e)), _wgslsmith_f_op_f32(ceil(-443f)));
    let var_1 = 29110u;
    var var_2 = -20925i;
    var var_3 = _wgslsmith_div_u32(abs(max(_wgslsmith_div_u32(u_input.b.x | 4294967295u, 41570u), ~var_1)), _wgslsmith_clamp_u32(~(28508u << (var_0.d.c % 32u)) | min(arg_0.c, 1u), arg_1.d.c | max(~30532u, 0u << (arg_0.c % 32u)), ~(~u_input.c)));
    global0 = !any(vec4<bool>(!(!arg_0.e.x), !any(vec3<bool>(true, arg_0.d.x, arg_0.b)), arg_1.c, false));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1004f, arg_1.a)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, arg_1.e)))))), -509f, arg_1.d);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(abs(-1001f));
    var var_0 = select(arg_0.c.a, ~(-25934i), true);
    var var_1 = select(!(!(!arg_2.d.e)), arg_2.d.e, func_3(Struct_1(func_3(arg_0.c, Struct_2(arg_2.a, vec2<i32>(-30362i, u_input.d), arg_2.c, Struct_1(u_input.d, true, 0u, vec3<bool>(true, arg_0.c.b, false), arg_2.d.e), -1029f)).c.a, !any(vec4<bool>(arg_0.c.e.x, arg_2.d.b, true, false)), ~abs(arg_0.c.c), vec3<bool>(func_2(24643i, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]).e.x, func_3(Struct_1(0i, arg_2.c, 19800u, arg_2.d.d, vec3<bool>(arg_0.c.b, arg_2.d.d.x, true)), arg_2).c.d.x, u_input.d >= arg_0.c.a), !vec3<bool>(true, arg_2.d.b, arg_2.c)), arg_2).c.d);
    global0 = true;
    let var_2 = arg_2.d;
    return Struct_1(-arg_2.d.a << (~(_wgslsmith_add_u32(22497u, arg_2.d.c) << (arg_2.d.c % 32u)) % 32u), !select(arg_2.d.b, !any(vec4<bool>(false, false, var_2.d.x, var_2.b)), func_2(min(-40600i, u_input.d), func_3(arg_0.c, arg_2)).b), _wgslsmith_dot_vec4_u32(u_input.b, ~(u_input.a >> (~u_input.a % vec4<u32>(32u)))), !func_3(func_2(abs(1i), Struct_3(arg_0.a, -1000f, Struct_1(-11523i, true, arg_0.c.c, vec3<bool>(false, true, arg_2.d.b), vec3<bool>(arg_0.c.d.x, true, var_2.e.x)))), Struct_2(func_3(Struct_1(var_2.a, true, 56707u, var_2.d, arg_2.d.e), Struct_2(893f, vec2<i32>(arg_0.c.a, -36352i), arg_0.c.d.x, Struct_1(17077i, true, 23960u, var_2.e, vec3<bool>(false, arg_0.c.e.x, false)), -516f)).a.x, vec2<i32>(var_2.a, arg_2.b.x), true, var_2, -932f)).c.e, !(!arg_0.c.d));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = select(!vec3<bool>(!arg_0.c.e.x, !(arg_0.c.c <= 1u), all(arg_0.c.e)), !vec3<bool>(false, false, all(!vec2<bool>(arg_0.c.d.x, false))), arg_0.c.e.x && all(func_4(arg_0, _wgslsmith_f_op_vec3_f32(-arg_1.www), Struct_2(arg_1.x, vec2<i32>(-6387i, arg_0.c.a), arg_0.c.e.x, Struct_1(u_input.d, arg_0.c.b, u_input.b.x, arg_0.c.d, vec3<bool>(arg_0.c.d.x, arg_0.c.d.x, true)), arg_1.x)).e));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.x, arg_0.a.x))) - arg_1.ww), arg_0.a, !vec2<bool>(true, var_0.x))))), vec2<f32>(-1158f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(step(-394f, arg_0.b)))))));
    global2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, arg_0.c.a, arg_0.c.a), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 6792i, arg_0.c.a), vec3<i32>(u_input.d, arg_0.c.a, arg_0.c.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(-27187i, -51261i ^ u_input.d, _wgslsmith_mod_i32(1i, 1i)), vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-51626i, -1i, u_input.d, -42018i), vec4<i32>(arg_0.c.a, 12549i, arg_0.c.a, 0i)), arg_0.c.a))) & _wgslsmith_mult_i32((_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.a, -1i, u_input.d), vec3<i32>(-5639i, -2147483647i, u_input.d)) ^ _wgslsmith_div_i32(u_input.d, 1i)) & _wgslsmith_clamp_i32(u_input.d, arg_0.c.a, u_input.d), -(~(i32(-1i) * -2147483647i)));
    global1 = array<Struct_3, 2>();
    let var_2 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(350f - arg_1.x), var_1.x, -922f);
    return func_3(arg_0.c, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), var_2.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(28274i, arg_0.c.a), vec2<i32>(1i, _wgslsmith_div_i32(arg_0.c.a, u_input.d)), vec2<i32>(u_input.d, u_input.d)), true, arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 2152f))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global3 = arg_0.b;
    global0 = any(arg_0.c.e);
    global2 = -reverseBits(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, 32710i, arg_1.x, 0i), vec4<i32>(u_input.d, -42198i, 15758i, u_input.d)), ~vec4<i32>(-2147483647i, u_input.d, -1i, arg_1.x))) >> (min(~41477u, abs(firstLeadingBit(arg_0.c.c))) % 32u);
    var var_0 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 19995i, u_input.d, -2147483647i), vec4<i32>(arg_1.x, -1i, 2147483647i, 7517i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -2147483647i, arg_1.x, arg_1.x), vec4<i32>(15483i, 2147483647i, arg_1.x, -9296i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_0.c.c, 95418u, 0u), vec4<u32>(arg_0.c.c, 0u, u_input.c, 0u)) % vec4<u32>(32u))), firstTrailingBit(~vec4<i32>(26311i, -862i, -2147483647i, -15206i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.c, u_input.a.x, 74236u, arg_0.c.c) & u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 18989u, u_input.a.x, arg_0.c.c), u_input.a)) % vec4<u32>(32u))));
    var var_1 = func_5(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(abs(-294f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(245f))))), -282f, func_4(func_3(func_2(arg_0.c.a, Struct_3(arg_0.a, arg_0.b, arg_0.c)), Struct_2(arg_0.b, var_0.wx, arg_0.c.d.x, arg_0.c, -819f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1748f, arg_0.a.x, -1008f) * vec3<f32>(arg_0.a.x, -1025f, 666f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(841f, arg_0.a.x, -1092f)))), Struct_2(_wgslsmith_f_op_f32(round(arg_0.a.x)), firstLeadingBit(vec2<i32>(var_0.x, arg_0.c.a)), true, arg_0.c, 252f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.x, _wgslsmith_f_op_f32(max(arg_0.b, arg_0.a.x))))), _wgslsmith_f_op_f32(-arg_0.b), arg_0.a.x, arg_0.b));
    return Struct_1(_wgslsmith_dot_vec2_i32(arg_1, var_0.wz), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x))) == var_1.a.x, ~_wgslsmith_add_u32(func_3(var_1.c, Struct_2(arg_0.a.x, vec2<i32>(-1i, arg_1.x), var_1.c.e.x, arg_0.c, arg_0.b)).c.c, max(_wgslsmith_add_u32(var_1.c.c, 1u), reverseBits(arg_0.c.c))), arg_0.c.d, !vec3<bool>(true, var_1.c.b, func_3(func_3(arg_0.c, Struct_2(-1637f, vec2<i32>(arg_0.c.a, 29910i), arg_0.c.d.x, arg_0.c, -585f)).c, Struct_2(var_1.b, var_0.ww, var_1.c.d.x, Struct_1(var_1.c.a, var_1.c.b, 6854u, var_1.c.d, var_1.c.e), var_1.a.x)).c.d.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    global2 = min(1i, -(~arg_0.a) | _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, arg_2.c.a) >> (vec2<u32>(33361u, arg_2.c.c) % vec2<u32>(32u))), min(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.c.a, 15012i), vec2<i32>(arg_0.a, arg_0.a)), abs(vec2<i32>(0i, arg_1.a)))));
    global3 = -1382f;
    let var_0 = vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-64924i, arg_0.a, 11795i) | vec3<i32>(-2147483647i, 3288i, 13303i), vec3<i32>(arg_2.c.a, -20560i, 43659i) >> (u_input.b.zzw % vec3<u32>(32u)))) << (~arg_2.c.c % 32u), ~u_input.d ^ abs(23376i), reverseBits(func_1(global1[_wgslsmith_index_u32(arg_2.c.c, 2u)], select(-vec2<i32>(arg_2.c.a, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(arg_0.a, arg_2.c.a)), !arg_2.c.e.xy)).a), -u_input.d >> (arg_0.c % 32u));
    let var_1 = vec4<f32>(-980f, _wgslsmith_f_op_f32(abs(arg_2.b)), -1464f, _wgslsmith_f_op_f32(-165f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_2.a.x, -659f)))), _wgslsmith_f_op_f32(-arg_2.a.x))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(347f * var_1.x), -195f))), 1660f, func_1(arg_2, var_0.yw));
    return ~vec4<i32>(-(~var_2.c.a) << (~(~u_input.b.x) % 32u), ~(~var_0.x << (20968u % 32u)), -(var_2.c.a << (arg_0.c % 32u)) & ~(-arg_1.a), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~u_input.d ^ u_input.d;
    var var_0 = true;
    let var_1 = -vec4<i32>(_wgslsmith_mod_i32(-u_input.d, 11087i), -10832i, 2147483647i, u_input.d) & (_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i), func_6(func_1(global1[_wgslsmith_index_u32(31783u, 2u)], vec2<i32>(u_input.d, -8131i)), Struct_1(u_input.d, true, 4621u, vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_3(vec2<f32>(-1150f, 381f), -1347f, Struct_1(3303i, true, 103835u, vec3<bool>(false, true, true), vec3<bool>(false, true, true))))) & ~(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 30787i), vec4<i32>(u_input.d, u_input.d, u_input.d, 20291i))));
    let var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-847f, -1017f, 1603f, 1000f) + vec4<f32>(-1296f, -1345f, -672f, -987f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(107f, 1000f, 1694f, 756f) + vec4<f32>(-1251f, -307f, -1104f, 990f)))))));
}

