struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 938f;

var<private> global2: bool = false;

var<private> global3: Struct_2 = Struct_2(Struct_1(-23030i), vec2<bool>(false, true), Struct_1(1i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(i32(-1i) * -34489i), vec2<bool>(true, true), Struct_1(2147483647i));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-592f * -387f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f - -1189f) - -1628f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(630f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-740f - -941f) * _wgslsmith_f_op_f32(step(919f, -923f)))), -162f)));
    let var_2 = min(~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_1.x, 11654u, 4294967295u), vec4<u32>(16525u, arg_1.x, 36866u, arg_2.x)), 4294967295u, ~(~0u), 41916u >> (_wgslsmith_sub_u32(arg_2.x, 91365u) % 32u)), vec4<u32>(1u, arg_1.x, 3218u, _wgslsmith_add_u32(min(~u_input.b, 58717u ^ arg_2.x), 4294967295u)));
    global3 = Struct_2(Struct_1(firstLeadingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-12425i, global3.c.a), vec2<i32>(17401i, u_input.a.x)))), var_0.b, Struct_1(~abs(-12311i)));
    let var_3 = vec3<bool>(!any(select(select(var_0.b, var_0.b, true), !global3.b, select(vec2<bool>(var_0.b.x, var_0.b.x), global3.b, var_0.b))), !all(var_0.b) && any(select(!vec2<bool>(false, global3.b.x), var_0.b, all(vec4<bool>(global3.b.x, global3.b.x, true, var_0.b.x)))), global3.b.x);
    return select(select(!select(!vec4<bool>(global3.b.x, var_3.x, global3.b.x, false), select(vec4<bool>(global3.b.x, true, true, false), vec4<bool>(var_3.x, false, var_0.b.x, global3.b.x), vec4<bool>(var_0.b.x, var_3.x, false, false)), vec4<bool>(true, true, true, true)), !(!(!vec4<bool>(var_0.b.x, true, false, var_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1764f)), 1349f) != _wgslsmith_f_op_f32(max(-819f, -1000f))), !(!(!select(vec4<bool>(true, true, var_3.x, global3.b.x), vec4<bool>(global3.b.x, var_3.x, true, var_0.b.x), vec4<bool>(global3.b.x, global3.b.x, true, global3.b.x)))), vec4<bool>(true, var_2.x > firstTrailingBit(~arg_2.x), var_3.x, var_3.x != !var_0.b.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_0.x), arg_2.x, arg_0.x, _wgslsmith_f_op_f32(-arg_3.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, _wgslsmith_f_op_f32(select(-916f, arg_3.b.x, false)), arg_2.x, _wgslsmith_f_op_f32(floor(-312f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -818f))), -831f, 1f, arg_2.x), select(all(func_3(31022i, vec2<u32>(66854u, 34948u), arg_1.zx)) & func_3(global3.c.a, vec2<u32>(arg_1.x, 32840u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_3.a, 32992u), arg_1.zx)).x, true, !any(select(vec3<bool>(global3.b.x, false, global3.b.x), vec3<bool>(global3.b.x, global3.b.x, true), false)))));
    let var_1 = global3.b.x;
    var var_2 = arg_3.b.x;
    global3 = Struct_2(Struct_1(global3.c.a), vec2<bool>(true, any(select(func_3(global3.a.a, arg_1.yz, vec2<u32>(24854u, u_input.c)).wx, global3.b, !vec2<bool>(global3.b.x, global3.b.x)))), global3.a);
    global1 = _wgslsmith_div_f32(-1297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x * -582f)));
    return global3.a;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2129f, 383f, 1019f, 914f)))), vec4<f32>(285f, _wgslsmith_f_op_f32(floor(490f)), _wgslsmith_f_op_f32(min(980f, arg_1)), arg_2))), ~vec3<u32>(u_input.c, arg_3.x, ~u_input.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_1), _wgslsmith_f_op_f32(-arg_0), -636f, -555f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(461f, arg_2, arg_2, arg_2), vec4<f32>(arg_0, arg_0, -406f, arg_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1157f, arg_2, 860f, arg_0) + vec4<f32>(-149f, -130f, arg_0, -701f))))), Struct_3(u_input.c | 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1338f, 1460f, arg_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(101f, 734f, -2471f) * vec3<f32>(arg_2, arg_1, 544f))), -42641i, u_input.b | reverseBits(1u))), func_3(-1i, ~_wgslsmith_clamp_vec2_u32(~arg_3.zx, ~arg_3.xz, select(vec2<u32>(u_input.b, 4294967295u), arg_3.yy, global3.b.x)), max(~arg_3.yz, ~(~vec2<u32>(arg_3.x, u_input.c)))).yw, Struct_1(u_input.a.x));
    global2 = true;
    global0 = -2147483647i;
    return Struct_2(Struct_1(2147483647i), var_0.b, Struct_1(0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f + 1f)), _wgslsmith_f_op_f32(step(701f, -825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -870f))))), ~(~(~(~vec3<u32>(u_input.b, u_input.b, 6149u)))));
    var var_1 = u_input.c;
    let var_2 = !(!(!vec2<bool>(true, all(vec4<bool>(global3.b.x, false, global3.b.x, true)))));
    var var_3 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(max(0u, 12770u), 1u), 0u, ~(72652u ^ u_input.b)), 1u, _wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_add_u32(41167u, u_input.c)), ~34000u & countOneBits(u_input.c)) << (~min(~(~vec4<u32>(35013u, u_input.b, u_input.b, 1u)), vec4<u32>(4294967295u, 84755u, u_input.c, u_input.c) << (abs(vec4<u32>(38480u, 83771u, 0u, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_4 = _wgslsmith_clamp_vec4_u32(~abs(firstLeadingBit(abs(vec4<u32>(var_3.x, 4294967295u, u_input.b, var_3.x)))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(1u), 1u, var_3.x, 0u), ~(~vec4<u32>(var_3.x, 1u, var_3.x, var_3.x)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~4085u), u_input.b, var_3.x, ~(u_input.b ^ u_input.c)), ~(~vec4<u32>(u_input.c, u_input.b, 1u, 3940u)), vec4<u32>(~countOneBits(var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_3.x) | vec2<u32>(3429u, 1u), vec2<u32>(u_input.b, 0u)), u_input.b, abs(reverseBits(var_3.x)))));
    let var_5 = !((min(var_0.a.a, ~var_0.a.a) >> (4294967295u % 32u)) < -1i);
    var var_6 = vec2<bool>(false, !(!(var_0.a.a > var_0.a.a)) || true);
    var var_7 = Struct_3(48735u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1530f, -1797f) - _wgslsmith_div_f32(428f, -331f)), _wgslsmith_f_op_f32(abs(297f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(1000f - 1417f), _wgslsmith_f_op_f32(max(447f, -706f)), _wgslsmith_f_op_f32(sign(-1532f))), vec3<f32>(_wgslsmith_f_op_f32(round(607f)), _wgslsmith_f_op_f32(f32(-1f) * -1817f), _wgslsmith_f_op_f32(step(608f, -189f)))))), ~select(504i & min(var_0.a.a, 0i), abs(-u_input.a.x), !var_2.x), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 2147483647i);
}

