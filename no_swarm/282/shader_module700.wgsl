struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    global1 = array<vec3<bool>, 20>();
    let var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(72490u, u_input.d.x), u_input.d.x, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 9823u, ~u_input.d.x), vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), ~71281u, ~u_input.d.x))));
    let var_1 = ((-(u_input.b ^ 2147483647i) << (var_0.x % 32u)) | 0i) | 26992i;
    global0 = array<Struct_2, 23>();
    let var_2 = ~(~vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 52237u), vec4<u32>(var_0.x, var_0.x, var_0.x, 13556u)), _wgslsmith_sub_u32(1u, u_input.d.x), countOneBits(u_input.d.x))) ^ vec4<u32>(9974u, var_0.x, ~var_0.x, 1u >> ((~4294967295u >> (var_0.x % 32u)) % 32u));
    return true;
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 23>();
    let var_0 = !vec2<bool>(!(func_3() | func_3()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1118f, 842f) * -1019f) > _wgslsmith_f_op_f32(select(-626f, 628f, false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1269f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(670f))))), _wgslsmith_f_op_f32(-1999f * -1997f), -1380f, _wgslsmith_f_op_f32(-1186f * 841f))));
    let var_2 = 0u;
    global1 = array<vec3<bool>, 20>();
    return Struct_1(vec2<bool>(true & all(vec3<bool>(var_0.x, var_0.x, true)), u_input.b == max(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.c), vec2<i32>(0i, u_input.a)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-706f * -267f), _wgslsmith_f_op_f32(round(-462f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-904f, 1624f))), _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_2, 23>();
    return Struct_1(vec2<bool>(arg_0.a.x, 775f >= _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, _wgslsmith_f_op_f32(950f + -682f), arg_0.c.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c.wwz * _wgslsmith_f_op_vec3_f32(-arg_0.c.wyy)) - vec3<f32>(1280f, _wgslsmith_f_op_f32(-1093f + 588f), -847f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(step(687f, _wgslsmith_f_op_f32(arg_0.c.x + -872f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(arg_0.c.x, -728f)), arg_0.c));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(all(!vec4<bool>(arg_1.a.x, true, true, arg_0)), true, arg_0, (-2147483647i | u_input.c) >= -20900i), !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, true, true, arg_0), select(false, arg_0, arg_0)), (u_input.a < _wgslsmith_mod_i32(u_input.e, 5820i)) || arg_0), select(!(!vec4<bool>(true, arg_1.a.x, arg_0, false)), vec4<bool>(false, any(!vec4<bool>(false, arg_1.a.x, false, false)), arg_0, any(vec3<bool>(arg_1.a.x, true, false))), select(select(select(vec4<bool>(arg_0, arg_0, arg_1.a.x, arg_0), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_1.a.x, arg_0, arg_1.a.x, false)), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, arg_1.a.x), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, arg_1.a.x, arg_0, arg_0), vec4<bool>(arg_1.a.x, true, false, arg_0), vec4<bool>(true, false, true, true))), vec4<bool>(arg_0, arg_1.a.x, false, u_input.d.x == 0u), !vec4<bool>(arg_0, arg_0, arg_1.a.x, arg_0))), true);
    var var_1 = !(!(!(!var_0.wx)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-func_4(arg_1, reverseBits(u_input.d.x)).c.yw);
    global1 = array<vec3<bool>, 20>();
    var var_3 = !arg_0;
    return Struct_2(var_1.x, arg_1.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> vec4<u32> {
    var var_0 = firstLeadingBit(arg_0.zx);
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_f32(floor(arg_2.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + func_4(Struct_1(func_4(Struct_1(arg_1.b, vec3<f32>(var_2, arg_2.x, var_1), vec4<f32>(var_2, 2099f, -994f, -130f)), arg_3).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-889f, -1000f, -1018f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_1, var_2))), 1u).c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1110f)), -142f), var_2);
    var var_4 = func_2();
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3, 35554u, u_input.d.x), vec4<u32>(arg_3, 1u, 22497u, u_input.d.x)), firstTrailingBit(arg_3), 1u, arg_3)), select(reverseBits(vec4<u32>(21823u, 38252u, u_input.d.x, 0u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(20637u, u_input.d.x, 63428u, arg_3), vec4<u32>(arg_3, 34116u, u_input.d.x, 1u)), ~(~vec4<u32>(u_input.d.x, u_input.d.x, arg_3, 0u)), (2475u | arg_3) >= 0u)), ~countOneBits(firstTrailingBit(vec4<u32>(arg_3, u_input.d.x, 4294967295u, 1u)) ^ firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, 31571u, 9739u))));
}

fn func_7(arg_0: vec4<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = select(_wgslsmith_sub_vec4_i32(max(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a, 1i, 10160i, u_input.b), vec4<i32>(u_input.b, -1i, -1i, u_input.e), false), vec4<i32>(u_input.e, u_input.b, -43496i, u_input.b)), vec4<i32>(u_input.a, 1i, u_input.b, -19071i) | _wgslsmith_div_vec4_i32(vec4<i32>(6261i, u_input.e, -2147483647i, 1i), vec4<i32>(u_input.b, -50366i, u_input.a, u_input.c))), vec4<i32>(abs(u_input.b), u_input.b, ~u_input.e, u_input.a) << (vec4<u32>(~23870u, 5113u, ~6552u, ~36550u) % vec4<u32>(32u))), -select(abs(-vec4<i32>(2147483647i, u_input.e, u_input.e, -30393i)), vec4<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.e, -15770i), _wgslsmith_div_i32(u_input.a, 2147483647i), u_input.a, 0i), !select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true))), vec4<bool>(-abs(u_input.c) != u_input.b, false, false, arg_1));
    var var_1 = func_5(!arg_1, Struct_1(vec2<bool>(!(!arg_1), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, -1000f, 696f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -646f), -2364f, _wgslsmith_f_op_f32(-801f - -191f), -1817f) * vec4<f32>(_wgslsmith_div_f32(-759f, -277f), -277f, -1624f, _wgslsmith_div_f32(426f, -348f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(657f, _wgslsmith_f_op_f32(992f + 1000f), _wgslsmith_f_op_f32(1000f - 807f))), vec3<f32>(_wgslsmith_f_op_f32(-1f), -991f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f + -217f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(752f + 215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-398f * 512f)), _wgslsmith_div_f32(-769f, _wgslsmith_f_op_f32(f32(-1f) * -793f)))))));
    var var_3 = select(!(-426f > _wgslsmith_f_op_f32(-var_2.x)), func_3(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.x)) * 327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(-997f, 1320f)), u_input.a > var_0.x)) >= var_2.x);
    var var_4 = firstLeadingBit(vec4<u32>(~58415u, max(4294967295u, u_input.d.x), ~12044u, ~u_input.d.x) >> (vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), u_input.d.x, arg_0.x, reverseBits(u_input.d.x)) % vec4<u32>(32u))) & ((arg_0 << (countOneBits(vec4<u32>(1u, 0u, arg_0.x, 1u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, ~vec4<u32>(arg_0.x, 43891u, arg_0.x, arg_0.x)), firstTrailingBit(firstTrailingBit(arg_0))) % vec4<u32>(32u)));
    return global0[_wgslsmith_index_u32(32019u, 23u)];
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_7(func_6(_wgslsmith_div_vec3_i32(vec3<i32>(-27745i, u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 1i, 0i), vec3<i32>(-2147483647i, u_input.c, u_input.a), vec3<i32>(39003i, 1i, u_input.e)) << (select(u_input.d, vec3<u32>(58507u, u_input.d.x, u_input.d.x), global1[_wgslsmith_index_u32(u_input.d.x, 20u)]) % vec3<u32>(32u))), func_5(false, func_4(func_2(), ~4294967295u)), func_2().c.zy, _wgslsmith_sub_u32(firstTrailingBit(u_input.d.x), reverseBits(10938u))), !(arg_0 > _wgslsmith_f_op_f32(trunc(359f))));
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = firstTrailingBit(firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(7013u, 1u | u_input.d.x), reverseBits(1u ^ u_input.d.x), _wgslsmith_clamp_u32(1u, u_input.d.x ^ 14531u, ~u_input.d.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.d.yy))));
    var var_2 = !(!select(!vec2<bool>(var_0.b.x, var_0.a), select(select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), true), !vec2<bool>(var_0.a, false), true), var_0.a));
    return Struct_1(var_0.b, vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -165f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-296f, -1402f, 1708f, arg_0))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -391f, arg_0, arg_0)))))));
}

fn func_8(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<vec3<bool>, 20>();
    let var_0 = 307f;
    var var_1 = Struct_2(!(!(true || arg_0.a.x)), vec2<bool>(true, select(arg_0.a.x, true, arg_0.a.x)));
    global1 = array<vec3<bool>, 20>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(48543u, 0u), vec2<u32>(u_input.d.x, u_input.d.x)), func_6(vec3<i32>(u_input.e, 0i, u_input.e), func_7(vec4<u32>(35750u, 14859u, u_input.d.x, u_input.d.x), true), arg_0.c.yx, u_input.d.x).x)), ~u_input.d.x), 23u)];
    return vec2<bool>(!(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_div_u32(65422u, u_input.d.x)) < 1u), func_3());
}

fn func_9(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = u_input.e;
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var var_1 = ~u_input.d.x;
    return -(~min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -56978i, var_0), vec4<i32>(var_0, -28954i, 1i, u_input.c)) >> (func_6(vec3<i32>(var_0, 2147483647i, u_input.b), global0[_wgslsmith_index_u32(u_input.d.x, 23u)], vec2<f32>(-1000f, 1358f), 9121u) % vec4<u32>(32u)), ~vec4<i32>(u_input.c, u_input.e, u_input.c, u_input.e) << (vec4<u32>(1324u, 37341u, u_input.d.x, 47788u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(0i, 22934i), vec2<i32>(-1i) * -vec2<i32>(u_input.e, -2147483647i)), vec2<i32>(_wgslsmith_div_i32(u_input.c, -43503i), -1i), vec2<bool>(true, true));
    global1 = array<vec3<bool>, 20>();
    var var_1 = func_9(global1[_wgslsmith_index_u32(1u, 20u)], select(select(vec2<bool>(false, all(vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), func_8(func_1(_wgslsmith_f_op_f32(max(-943f, -1362f))))));
    global0 = array<Struct_2, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-489f + _wgslsmith_div_f32(1557f, -1083f)))).b.x);
}

