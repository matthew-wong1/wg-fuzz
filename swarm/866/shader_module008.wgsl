struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<i32>(-4867i, -30677i, 0i, -1i), vec2<u32>(136797u, 1u), true, vec4<u32>(4294967295u, 116592u, 5699u, 0u), Struct_1(639f, 0u, vec3<bool>(false, true, true), vec4<bool>(false, true, true, true))));

var<private> global1: Struct_5;

var<private> global2: f32;

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = -_wgslsmith_clamp_i32(global1.b.a.x, u_input.b.x, firstLeadingBit(20768i));
    var var_1 = Struct_3(global0.a);
    global2 = global1.a.e.a;
    var var_2 = _wgslsmith_mult_i32((select(global0.a.a.x, ~1i, !global0.a.e.c.x) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global1.a.a.x), vec2<i32>(-2147483647i, 2147483647i)), -1202i)) | global0.a.a.x, _wgslsmith_dot_vec3_i32(global1.b.a.ywx, abs(~vec3<i32>(global0.a.a.x, -2147483647i, 2147483647i)) & vec3<i32>(select(var_1.a.a.x, 0i, false), u_input.b.x >> (var_1.a.b.x % 32u), global3.x)));
    let var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(0u, 19224u, 3679u)), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(global1.b.d.x, var_1.a.d.x, var_1.a.b.x) ^ var_1.a.d.wwy), vec3<u32>(global1.a.b.x, _wgslsmith_dot_vec3_u32(global1.a.d.zzw, vec3<u32>(53014u, global1.a.e.b, global1.b.d.x)), _wgslsmith_add_u32(75606u, 1u)))), ~firstLeadingBit(~vec3<u32>(u_input.c, var_1.a.e.b, global0.a.e.b)));
    return false;
}

fn func_2() -> Struct_2 {
    return Struct_2(-vec4<i32>(~countOneBits(global3.x), _wgslsmith_add_i32(~u_input.b.x, 1i), -(2147483647i & global3.x), i32(-1i) * -1i), max(~(~(vec2<u32>(206u, 0u) << (vec2<u32>(global0.a.d.x, global0.a.b.x) % vec2<u32>(32u)))), ~vec2<u32>(1u, 1u)), !(all(vec4<bool>(global0.a.c, global0.a.e.d.x, global0.a.c, global1.b.e.d.x)) || select(func_3(vec2<bool>(global0.a.e.d.x, global0.a.c)), !global1.a.c, global1.b.e.d.x && global0.a.e.c.x)), ~select(global1.a.d, (global1.b.d ^ global0.a.d) << (global1.a.d % vec4<u32>(32u)), true), global1.b.e);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_4(global0.a, select(arg_0.b.e.d, vec4<bool>(false, true, false, true), true), -1759f, vec2<f32>(global1.b.e.a, -117f), abs(firstLeadingBit(_wgslsmith_div_u32(1u, 18873u) ^ _wgslsmith_dot_vec3_u32(arg_0.b.d.xwy, vec3<u32>(global1.b.b.x, global0.a.e.b, 31424u)))));
    var var_1 = arg_0;
    let var_2 = -2147483647i;
    global3 = -(~(global0.a.a | ~var_0.a.a));
    var_1 = Struct_5(global1.a, func_2());
    return Struct_3(func_2());
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(-1i, -2147483647i, 35048i, global3.x)), _wgslsmith_sub_vec4_i32(global0.a.a, func_2().a)), ~(arg_2.a.b | vec2<u32>(78777u, arg_3.a.e.b)) | vec2<u32>(~4294967295u, _wgslsmith_add_u32(arg_2.a.d.x, 4294967295u)), all(vec4<bool>(true, global0.a.c, any(global1.b.e.d.yx), all(arg_2.a.e.d))), vec4<u32>(select(39144u, 7970u, func_3(global0.a.e.c.yy)), arg_3.b.d.x, max(74016u, 1u), 4294967295u), arg_3.b.e), !(!arg_2.a.e.d), -1335f, vec2<f32>(_wgslsmith_f_op_f32(min(-349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.e.a - arg_2.a.e.a) - global0.a.e.a))), arg_2.a.e.a), _wgslsmith_mult_u32(arg_3.b.e.b, 1186u));
    var var_1 = func_2().e.d;
    global2 = -1079f;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3.b.e.a))), 555f, _wgslsmith_f_op_f32(-global0.a.e.a), var_0.d.x) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(100f - -1326f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.e.a - global0.a.e.a) + _wgslsmith_f_op_f32(abs(802f))), global1.b.e.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(global1.a.e.a)), -1000f, -549f, _wgslsmith_f_op_f32(global0.a.e.a - -781f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(338f, var_0.a.e.a, _wgslsmith_f_op_f32(-global1.b.e.a), _wgslsmith_f_op_f32(1089f + -1514f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1911f) - 1722f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.e.a))), -1081f, var_2.x)));
    return Struct_3(Struct_2(select(reverseBits(global0.a.a) << (_wgslsmith_div_vec4_u32(global0.a.d, var_0.a.d) % vec4<u32>(32u)), countOneBits(~arg_3.b.a), vec4<bool>(true, global1.a.c, false, all(vec2<bool>(arg_3.b.c, true)))), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_2.a.d.wzx, var_0.a.d.wyw), global0.a.d.x) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(36085u, 16400u, 4294967295u)), 0u) % vec2<u32>(32u)), false, var_0.a.d, Struct_1(_wgslsmith_f_op_f32(673f - arg_2.a.e.a), ~global0.a.d.x & _wgslsmith_dot_vec3_u32(arg_3.b.d.yzz, arg_3.b.d.yzy), !(!global1.b.e.d.yxz), !func_1(arg_3, var_0.a, -1000f).a.e.d)));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = global0.a.d.x <= ~_wgslsmith_sub_u32(~(~1u), reverseBits(_wgslsmith_dot_vec2_u32(arg_1.a.d.xw, global0.a.b)));
    let var_1 = vec4<i32>(func_4(select(~u_input.c, func_2().b.x, global1.a.c) >> (4294967295u % 32u), _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.a.x, arg_0) | func_2().a.yy, arg_1.a.a.xx), Struct_3(global0.a), Struct_5(Struct_2(vec4<i32>(u_input.b.x, global3.x, global1.b.a.x, -54136i), select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(40386u, global0.a.e.b), global0.a.e.d.wy), 36759i > global1.a.a.x, vec4<u32>(global1.a.b.x, 7840u, u_input.a, 4294967295u), global1.a.e), global1.a)).a.a.x, ~func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, arg_1.a.e.b, u_input.a), global1.a.d.xwx, global0.a.d.xyz), vec3<u32>(u_input.c, 7152u, 0u)), global0.a.a.wy, func_4(global1.a.e.b, vec2<i32>(54616i, -41099i), func_1(Struct_5(Struct_2(vec4<i32>(u_input.b.x, 81973i, -10059i, global0.a.a.x), global1.a.d.yx, false, vec4<u32>(12559u, 4294967295u, global1.a.d.x, 56025u), global0.a.e), global1.a), global1.a, arg_1.a.e.a), Struct_5(Struct_2(vec4<i32>(2147483647i, -11034i, -2147483647i, -1i), global0.a.d.ww, global1.b.e.d.x, vec4<u32>(1u, 5791u, 0u, global0.a.b.x), Struct_1(-1217f, arg_1.a.d.x, vec3<bool>(global0.a.e.c.x, false, var_0), vec4<bool>(arg_1.a.e.d.x, false, arg_1.a.c, global0.a.e.d.x))), global0.a)), Struct_5(func_1(Struct_5(global1.a, global1.b), global1.a, -1110f).a, global0.a)).a.a.x, ~4239i, ~u_input.b.x);
    global3 = _wgslsmith_mult_vec4_i32(~(-vec4<i32>(-u_input.b.x, arg_0, _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(global3.x, global3.x, 7447i, -2147483647i)), -69177i)), select(firstLeadingBit(vec4<i32>(-38779i << (global0.a.b.x % 32u), -1i, _wgslsmith_clamp_i32(2147483647i, -19222i, 0i), -1i)), ~min(-vec4<i32>(1i, -29074i, 0i, arg_1.a.a.x), arg_1.a.a), arg_1.a.e.d));
    let var_2 = func_1(Struct_5(arg_1.a, Struct_2((arg_1.a.a >> (global0.a.d % vec4<u32>(32u))) >> (global1.b.d % vec4<u32>(32u)), ~(~vec2<u32>(4294967295u, 0u)), func_1(Struct_5(Struct_2(arg_1.a.a, vec2<u32>(u_input.a, global1.b.b.x), false, global1.b.d, global0.a.e), global1.a), Struct_2(vec4<i32>(1623i, 2147483647i, global0.a.a.x, u_input.b.x), vec2<u32>(49389u, global0.a.d.x), false, vec4<u32>(14876u, 0u, global0.a.b.x, 4281u), Struct_1(global0.a.e.a, global1.b.b.x, vec3<bool>(global0.a.c, global1.b.e.d.x, false), global0.a.e.d)), _wgslsmith_div_f32(global0.a.e.a, 943f)).a.e.d.x, max(vec4<u32>(30110u, global0.a.b.x, 35217u, 4294967295u), global0.a.d), Struct_1(global0.a.e.a, ~1u, vec3<bool>(false, global0.a.c, true), func_4(0u, vec2<i32>(2147483647i, u_input.b.x), Struct_3(arg_1.a), Struct_5(global0.a, arg_1.a)).a.e.d))), func_2(), _wgslsmith_f_op_f32(exp2(global0.a.e.a))).a;
    var var_3 = arg_1;
    return Struct_3(func_1(Struct_5(func_1(Struct_5(Struct_2(var_1, var_2.b, var_0, vec4<u32>(1u, global0.a.b.x, arg_1.a.b.x, var_2.e.b), Struct_1(-697f, var_3.a.b.x, vec3<bool>(var_2.e.d.x, true, true), vec4<bool>(true, false, true, var_2.c))), Struct_2(vec4<i32>(arg_0, arg_1.a.a.x, var_3.a.a.x, 17206i), global0.a.b, false, global0.a.d, global1.a.e)), Struct_2(var_2.a, vec2<u32>(27482u, 33014u), true, vec4<u32>(var_2.e.b, 0u, 11302u, u_input.c), Struct_1(var_3.a.e.a, 76594u, vec3<bool>(false, var_2.e.c.x, var_2.c), global0.a.e.d)), global0.a.e.a).a, var_2), func_4(u_input.c, -var_3.a.a.wy, func_1(Struct_5(Struct_2(global0.a.a, global0.a.d.yz, global1.b.c, vec4<u32>(var_2.e.b, 47536u, arg_1.a.e.b, 53655u), global1.a.e), Struct_2(vec4<i32>(var_1.x, var_2.a.x, -1i, 1i), vec2<u32>(u_input.a, 4294967295u), global1.a.c, arg_1.a.d, var_2.e)), Struct_2(vec4<i32>(1i, -13366i, arg_1.a.a.x, -1i), global0.a.d.yw, global0.a.e.d.x, vec4<u32>(31744u, 4294967295u, 80446u, 15724u), var_3.a.e), -1592f), Struct_5(var_3.a, func_1(Struct_5(var_3.a, arg_1.a), Struct_2(vec4<i32>(33078i, -12096i, 2147483647i, -51574i), vec2<u32>(4294967295u, 25203u), true, vec4<u32>(4294967295u, var_3.a.b.x, global0.a.e.b, global0.a.e.b), var_2.e), 1000f).a)).a, _wgslsmith_f_op_f32(-var_2.e.a)).a);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0.a.e.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.e.a, 440f)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.a.e.a, global0.a.e.a))))))));
    let var_2 = firstTrailingBit(~func_5(-28105i, Struct_3(global1.b)).a.a.zz);
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, 1330f) + vec2<f32>(-1125f, 823f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1177f, 334f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.e.a, var_1.x) - vec2<f32>(global1.a.e.a, -1260f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.e.a, 1315f))))))));
    var var_3 = global0.a.c;
    return Struct_3(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(global3.x, func_4(0u, -global3.yz, func_1(Struct_5(global0.a, global0.a), global0.a, -1170f), Struct_5(func_1(Struct_5(global0.a, Struct_2(global0.a.a, vec2<u32>(0u, global1.a.e.b), global0.a.e.d.x, global1.b.d, global1.a.e)), global1.a, global0.a.e.a).a, global0.a))));
    let var_1 = true && (_wgslsmith_f_op_f32(var_0.a.e.a - func_2().e.a) != -1405f);
    let var_2 = var_0.a.e.b;
    global1 = Struct_5(func_4(~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.d.x, var_0.a.b.x), global1.b.b.x), abs(max(~vec2<i32>(global1.b.a.x, 1i), u_input.b.zx ^ u_input.b.yy)), func_6(Struct_3(func_5(-1i, Struct_3(var_0.a)).a)), Struct_5(Struct_2(-global1.a.a, global1.b.b >> (vec2<u32>(1u, 55861u) % vec2<u32>(32u)), true, firstTrailingBit(vec4<u32>(36172u, global1.a.b.x, 83115u, 140813u)), var_0.a.e), func_1(Struct_5(Struct_2(global0.a.a, var_0.a.b, true, global1.b.d, global1.a.e), global0.a), func_1(Struct_5(var_0.a, Struct_2(global1.a.a, vec2<u32>(global1.b.e.b, 4294967295u), false, var_0.a.d, Struct_1(global1.b.e.a, var_0.a.b.x, var_0.a.e.c, vec4<bool>(false, true, global0.a.e.d.x, var_0.a.c)))), global0.a, 1119f).a, _wgslsmith_f_op_f32(-837f * -889f)).a)).a, Struct_2(select(firstTrailingBit(global1.b.a), ~vec4<i32>(global1.b.a.x, global0.a.a.x, 29118i, 0i), all(global0.a.e.d)), ~abs(var_0.a.b), func_3(global1.a.e.d.zw), countOneBits(global0.a.d), global0.a.e));
    global2 = var_0.a.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(max(func_1(Struct_5(global1.a, Struct_2(vec4<i32>(global3.x, 36006i, var_0.a.a.x, -1i), global0.a.b, false, vec4<u32>(1u, var_0.a.e.b, 4294967295u, u_input.a), Struct_1(939f, global1.a.b.x, vec3<bool>(true, false, var_0.a.c), var_0.a.e.d))), global0.a, 917f).a.a.yz, global1.a.a.xy ^ vec2<i32>(-13025i, -41798i)), min(-global1.b.a.yx, global3.wy)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.b.x) >> (vec2<u32>(var_0.a.d.x, 0u) % vec2<u32>(32u)), ~vec2<i32>(global1.a.a.x, 0i)))));
}

