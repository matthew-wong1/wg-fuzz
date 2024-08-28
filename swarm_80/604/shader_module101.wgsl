struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = ~(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(63622u, u_input.b))) & (countOneBits(0u) | (select(13311u, u_input.b, false) << (144214u % 32u))));
    global0 = array<vec2<bool>, 25>();
    var var_1 = ~u_input.a;
    global0 = array<vec2<bool>, 25>();
    var_1 = _wgslsmith_mod_i32(-12819i >> (~4294967295u % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -(~u_input.a)), u_input.a));
    return u_input.b;
}

fn func_2() -> Struct_4 {
    var var_0 = -863f;
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(38954u, 52373u, u_input.b), ~vec3<u32>(13029u, 1u, u_input.b), true), (~vec3<u32>(u_input.b, 4294967295u, 23766u) << (reverseBits(vec3<u32>(39653u, 36950u, u_input.b)) % vec3<u32>(32u))) | vec3<u32>(func_3(246f), 0u, 55814u)), vec4<u32>(select(~u_input.b, 29327u, true), u_input.b, ~(42607u << (u_input.b % 32u)), countOneBits(u_input.b)) | abs(vec4<u32>(~u_input.b, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(109533u, u_input.b, 16158u)), 34609u)));
    var var_2 = !(!(!vec4<bool>(any(vec3<bool>(global1.x, false, false)), global1.x, false, !global1.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(173f * -1553f)))), 657f)), 1730f);
    let var_3 = i32(-1i) * -1i;
    return Struct_4(0u, vec4<i32>(var_3, u_input.c, _wgslsmith_div_i32(-2147483647i, -33659i) << (var_1.b.x % 32u), -10416i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-899f, -998f))), _wgslsmith_f_op_f32(-809f * _wgslsmith_f_op_f32(max(-2412f, 615f))))), Struct_2(0u, !global1.x, -1864f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-651f)), _wgslsmith_f_op_f32(min(664f, 130f)), -1005f, -296f) + vec4<f32>(-323f, _wgslsmith_f_op_f32(1321f + -1115f), _wgslsmith_f_op_f32(1512f * -832f), _wgslsmith_f_op_f32(f32(-1f) * -735f)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1;
    var_0 = Struct_2(1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-368f, 1870f) - _wgslsmith_f_op_f32(-arg_2.x)) == _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(ceil(arg_0.d.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(arg_0.d.d, vec4<f32>(arg_1.c, 1000f, var_0.c, 537f))), _wgslsmith_f_op_vec4_f32(-var_0.d))))) * arg_0.d.d));
    var_0 = Struct_2(_wgslsmith_mod_u32(69108u, ~firstTrailingBit(1u)), !any(!(!vec3<bool>(false, false, var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -845f), var_0.d);
    var_0 = func_2().d;
    var var_1 = ~vec3<u32>(4294967295u, var_0.a, _wgslsmith_clamp_u32(abs(~u_input.b), _wgslsmith_mult_u32(~1u, arg_1.a), ~(4294967295u & arg_1.a)));
    return arg_0.d;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = func_4(func_2(), Struct_2(~(arg_0 & firstLeadingBit(u_input.b)), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1790f, -334f, global1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, -1872f, -1674f, -432f) - vec4<f32>(1550f, -1310f, -1121f, 1072f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(365f, 976f, 947f, -1000f) - vec4<f32>(-1370f, 1717f, -125f, 746f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-871f, 122f), vec2<f32>(1431f, 783f), global0[_wgslsmith_index_u32(54495u, 25u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, 540f) * vec2<f32>(-430f, 474f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1971f, -619f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 946f)))), any(!select(vec4<bool>(global1.x, true, true, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x)))), (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 11362u, arg_1), ~36335u, ~6051u) & ~(~0u)) & arg_0);
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~min(vec3<u32>(0u, 23421u, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(6383u, arg_0, u_input.b), vec3<u32>(4294967295u, 0u, 1u))), ~(~select(vec3<u32>(0u, 0u, var_0.a), vec3<u32>(24085u, arg_1, 10903u), vec3<bool>(var_0.b, true, var_0.b)))), countOneBits(vec3<u32>(func_4(Struct_4(arg_1, vec4<i32>(-10642i, 0i, u_input.a, 2147483647i), vec2<f32>(var_0.c, -1000f), Struct_2(var_0.a, false, 290f, var_0.d)), Struct_2(57611u, var_0.b, -898f, vec4<f32>(161f, var_0.c, 2408f, 814f)), vec2<f32>(527f, -1299f), 1u).a, ~65028u, arg_0)));
    global1 = !global0[_wgslsmith_index_u32(func_2().d.a, 25u)];
    let var_2 = vec3<u32>(arg_1, 32444u, _wgslsmith_div_u32(4294967295u, 1u));
    let var_3 = Struct_3(!(!func_4(func_2(), func_4(Struct_4(var_2.x, vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c), vec2<f32>(1493f, -210f), Struct_2(1u, global1.x, 1751f, vec4<f32>(-1811f, var_0.c, -1000f, var_0.d.x))), Struct_2(4294967295u, true, var_0.c, vec4<f32>(-212f, 540f, -1127f, var_0.d.x)), vec2<f32>(248f, var_0.c), u_input.b), var_0.d.xz, u_input.b & var_0.a).b), Struct_1(min(vec3<u32>(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 0u, 4294967295u), vec3<u32>(u_input.b, u_input.b, 34746u)), 4294967295u << (var_2.x % 32u)), ~vec3<u32>(arg_1, 1u, arg_0)), vec4<u32>(arg_0, _wgslsmith_mult_u32(65355u, _wgslsmith_mod_u32(u_input.b, arg_1)), ~_wgslsmith_div_u32(var_2.x, 7766u), firstLeadingBit(1u))), ~var_2.yx, func_2().d.b, max(_wgslsmith_sub_vec4_u32(~(vec4<u32>(28764u, u_input.b, 0u, arg_1) ^ vec4<u32>(25922u, 0u, 0u, var_2.x)), ~(vec4<u32>(0u, u_input.b, arg_0, var_0.a) << (vec4<u32>(arg_0, 4294967295u, arg_0, 0u) % vec4<u32>(32u)))), select(vec4<u32>(29779u, 1u, ~16816u, ~0u), min(vec4<u32>(u_input.b, var_2.x, arg_1, u_input.b) & vec4<u32>(26029u, 32917u, 4294967295u, u_input.b), vec4<u32>(arg_0, arg_1, u_input.b, 39760u)), !(!vec4<bool>(var_0.b, true, true, false)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, -1i), ~vec2<i32>(u_input.a, 60546i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), -vec2<i32>(-7540i, 13206i))));
    var var_1 = Struct_2(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(9861u, 4807u))), ~(select(u_input.b, u_input.b, global1.x) ^ reverseBits(0u))), any(global0[_wgslsmith_index_u32(u_input.b, 25u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(807f, -1343f)) * 2275f), _wgslsmith_f_op_f32(func_1(reverseBits(u_input.b), ~u_input.b)))), vec4<f32>(923f, _wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(271f, -458f))) - _wgslsmith_f_op_f32(func_1(u_input.b, ~u_input.b))), -1300f));
    let var_2 = Struct_2(firstLeadingBit(35724u >> (~(var_1.a << (46345u % 32u)) % 32u)), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1319f - _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-1592f + var_1.d.x))) + -1813f), vec4<f32>(_wgslsmith_f_op_f32(ceil(-521f)), var_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c * var_1.c))), _wgslsmith_f_op_f32(trunc(var_1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(86304u, _wgslsmith_mod_vec3_u32(~vec3<u32>(~2878u, u_input.b, firstLeadingBit(var_2.a)), ~vec3<u32>(~u_input.b, _wgslsmith_add_u32(42353u, 34525u), 0u)));
}

