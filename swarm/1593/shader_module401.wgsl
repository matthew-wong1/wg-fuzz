struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: Struct_1 = Struct_1(55730u);

var<private> global2: f32 = -1900f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    global1 = arg_1;
    global0 = array<i32, 27>();
    global1 = Struct_1(_wgslsmith_clamp_u32(min(1u, 26340u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(54036u, 0u), vec2<u32>(arg_0.a, 29045u)) % 32u)), _wgslsmith_mult_u32(max(54651u, arg_0.a), ~4294967295u), select(abs(4294967295u), firstLeadingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a, 1u, arg_1.a), vec4<u32>(arg_0.a, arg_1.a, 25132u, 4294967295u)) >= 4294967295u)));
    var_0 = arg_1;
    return select(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true))), vec2<bool>(true || !all(vec2<bool>(true, true)), -1i <= _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(6002i, 24637i, u_input.a.x)), u_input.a << (vec3<u32>(4294967295u, global1.a, 7976u) % vec3<u32>(32u)))), vec2<bool>(true, any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!func_3(Struct_1(global1.a), Struct_1(global1.a)));
    let var_1 = vec4<u32>(0u, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a, global1.a, 29165u) >> (vec3<u32>(global1.a, global1.a, 14630u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(global1.a, 1u, global1.a)) >> (max(vec3<u32>(global1.a, global1.a, global1.a), vec3<u32>(82279u, global1.a, 4294967295u)) % vec3<u32>(32u))), 1u, ~max(0u, firstTrailingBit(~0u)));
    var var_2 = vec4<f32>(112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-380f, 648f)) + -479f))), _wgslsmith_f_op_f32(f32(-1f) * -1595f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-997f, 1350f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -687f))))), var_0.x)));
    global0 = array<i32, 27>();
    global0 = array<i32, 27>();
    return Struct_1((1u ^ global1.a) << (~abs(67888u) % 32u));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = (_wgslsmith_clamp_i32(~2147483647i, ~(~1i), u_input.a.x) & -4396i) >= min(firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(-54712i), u_input.a.x, 21053i)), _wgslsmith_sub_i32(~0i, -2147483647i));
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-616f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-410f, -1000f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1255f, 734f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-838f, 621f), vec2<f32>(1000f, 207f)))))));
    let var_3 = -1384f;
    var var_4 = var_0;
    return abs(-(vec4<i32>(-2147483647i, ~60766i, -global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(var_1.a, 27u)] & u_input.a.x) | vec4<i32>(abs(80962i), 1i, max(u_input.a.x, global0[_wgslsmith_index_u32(64087u, 27u)]), u_input.a.x ^ -21855i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1801f, 1000f)) - 1569f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(841f))), _wgslsmith_f_op_f32(224f + -459f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f - -1000f) + _wgslsmith_f_op_f32(step(1000f, -575f))))), 519f));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -486f);
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-828f + var_0.x), var_0.x));
    global0 = array<i32, 27>();
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_0.x, 493f, false)))), var_0.x))))));
    return !(!vec3<bool>(any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true))));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1858f));
    var var_1 = Struct_1(~arg_0);
    var_1 = func_2();
    var_1 = Struct_1(~arg_0);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0)), -327f))));
    return Struct_1(_wgslsmith_add_u32(~(~max(0u, 27512u)), abs((arg_0 & 1u) << (countOneBits(arg_0) % 32u))));
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -742f, false)))) + _wgslsmith_div_f32(-677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f))))));
    var var_0 = global1.a <= 1u;
    global0 = array<i32, 27>();
    let var_1 = ~reverseBits(~(vec3<u32>(global1.a, global1.a, global1.a) ^ _wgslsmith_div_vec3_u32(vec3<u32>(global1.a, global1.a, 44337u), vec3<u32>(61589u, 4294967295u, global1.a))));
    var_0 = true;
    return func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 0u ^ var_1.x), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(18247u, 1u, global1.a, 41079u)), firstLeadingBit(vec4<u32>(0u, var_1.x, 4294967295u, 21303u)))), ~_wgslsmith_add_vec2_u32(vec2<u32>(26103u, 0u), vec2<u32>(global1.a, var_1.x)) | ~abs(var_1.zy)), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, any(vec3<bool>(false, false, true)), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), func_5(func_4(func_2()), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_add_i32(41808i, global0[_wgslsmith_index_u32(global1.a, 27u)])))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(27946u);
    let var_1 = Struct_1(arg_1.a);
    var_0 = Struct_1(firstLeadingBit(52369u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(675f, 1f, true))));
    var var_3 = 21064i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(-1000f, -191f));
    global1 = func_7(func_1(), Struct_1(31414u), func_1());
    global1 = Struct_1(global1.a);
    var var_1 = Struct_1(~firstLeadingBit(~(~global1.a)));
    global2 = _wgslsmith_f_op_f32(-var_0);
    var_1 = Struct_1(var_1.a);
    global0 = array<i32, 27>();
    var_1 = func_7(Struct_1(var_1.a), func_7(func_7(func_1(), Struct_1(_wgslsmith_add_u32(var_1.a, global1.a)), func_2()), Struct_1(1u), Struct_1(_wgslsmith_mult_u32(var_1.a, ~33014u))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1000f) * vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, -296f) * vec2<f32>(var_0, var_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(849f, var_0), vec2<f32>(1000f, var_0))))))), ~(~vec2<u32>(8573u, 31234u)), 4294967295u, var_0);
}

