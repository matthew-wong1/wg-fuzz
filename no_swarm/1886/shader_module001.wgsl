struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<u32>(38119u, 41265u, 1u), vec3<bool>(false, false, true), vec4<f32>(330f, -1140f, -1666f, -1000f)), Struct_1(vec3<u32>(1u, 82617u, 34444u), vec3<bool>(false, true, true), vec4<f32>(-146f, 1434f, 1000f, -1209f)), Struct_1(vec3<u32>(0u, 40700u, 10653u), vec3<bool>(false, true, false), vec4<f32>(1706f, 1967f, -2051f, 827f)), Struct_1(vec3<u32>(1u, 30984u, 77846u), vec3<bool>(false, false, false), vec4<f32>(-1303f, 1010f, 590f, 591f)), Struct_1(vec3<u32>(4294967295u, 62367u, 0u), vec3<bool>(false, true, false), vec4<f32>(-706f, -1281f, 2125f, 1000f)));

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 27>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = ~firstTrailingBit(u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-947f, 1091f, 1000f, global1.x) - vec4<f32>(global1.x, -176f, 1057f, global1.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -475f, 2215f, -1350f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, global1.x, -1175f, global1.x)))), true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * -384f), _wgslsmith_f_op_f32(trunc(530f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 1449f) - -989f), _wgslsmith_f_op_f32(-global1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, -416f, -2406f, -171f)))))));
    var var_2 = vec4<bool>(!any(vec3<bool>(true, false, true)) & all(vec3<bool>(any(vec3<bool>(true, false, false)), true, any(vec3<bool>(true, true, false)))), select(true, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(10146u, 0u))) < u_input.a, true), true, false);
    global2 = array<i32, 27>();
    return 59981u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(func_3(), max(~u_input.a, _wgslsmith_add_u32(firstLeadingBit(select(u_input.a, arg_0.a.x, true)), _wgslsmith_mod_u32(0u, abs(u_input.a)))), u_input.a);
    var var_1 = Struct_3(global1.x, arg_0, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(826f, -724f), 650f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f - global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -740f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(929f, global1.x, global1.x) * arg_0.c.zxx) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.c.wxx + vec3<f32>(-514f, -157f, 295f))))))), Struct_2(Struct_1(arg_0.a, select(vec3<bool>(arg_0.b.x, true, arg_0.b.x), select(vec3<bool>(true, false, arg_0.b.x), vec3<bool>(arg_0.b.x, true, arg_0.b.x), true), false), _wgslsmith_f_op_vec4_f32(arg_0.c * _wgslsmith_f_op_vec4_f32(-arg_0.c))), global0[_wgslsmith_index_u32(max(max(firstLeadingBit(arg_0.a.x), 12828u), _wgslsmith_div_u32(var_0.x, u_input.a)), 5u)], !arg_0.b.x), false);
    var var_2 = Struct_3(arg_0.c.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 9595u) >> (0u % 32u), 5u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.c.zyx + var_1.d.b.c.zww)))))), Struct_2(var_1.b, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(countOneBits(var_0.x), ~27744u), 5u)], !all(!vec4<bool>(var_1.d.b.b.x, true, arg_0.b.x, arg_0.b.x))), false);
    let var_3 = abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b & u_input.b));
    let var_4 = ~_wgslsmith_clamp_vec4_u32(min(~vec4<u32>(var_2.b.a.x, 4294967295u, arg_0.a.x, 3675u), vec4<u32>(var_2.d.a.a.x ^ u_input.a, ~20202u, 32720u, max(var_0.x, var_1.b.a.x))), reverseBits(~(vec4<u32>(1u, 0u, u_input.a, var_0.x) ^ vec4<u32>(u_input.a, var_1.d.b.a.x, 4294967295u, 0u))), vec4<u32>(select(1u, reverseBits(var_2.d.a.a.x), !var_1.d.a.b.x), _wgslsmith_add_u32(1769u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, var_1.d.b.a.x, 0u), vec4<u32>(var_0.x, 92456u, arg_0.a.x, u_input.a))), u_input.a, ~(~u_input.a)));
    return Struct_1(~var_1.d.a.a, var_2.d.b.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.d.a.c), vec4<f32>(290f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-2300f)))), _wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_div_f32(-209f, var_2.d.a.c.x)), !select(select(vec4<bool>(true, var_2.d.c, var_2.d.c, true), vec4<bool>(var_1.b.b.x, var_2.b.b.x, arg_0.b.x, true), vec4<bool>(var_1.b.b.x, var_2.b.b.x, false, false)), vec4<bool>(var_1.d.c, var_2.b.b.x, false, false), true))));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.a.b;
    var var_1 = arg_1.b.a.x;
    var var_2 = firstLeadingBit(-(~u_input.c));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(-1000f, global1.x)), func_2(Struct_1(firstTrailingBit(firstLeadingBit(vec3<u32>(73698u, u_input.a, 0u))), arg_1.a.b, arg_1.a.c)), arg_1.a.c.wwy, Struct_2(global0[_wgslsmith_index_u32(reverseBits(8300u), 5u)], func_2(arg_1.a), -1i == global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, u_input.a, 130190u) << (vec4<u32>(arg_1.a.a.x, 68297u, 91400u, 21324u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, arg_1.b.a.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_1.a.a.x))), 27u)]), !(true || arg_1.a.b.x));
    var var_4 = Struct_2(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(11690u), 4294967295u) >> (1u % 32u), 5u)]), arg_1.b, false);
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(func_2(Struct_1(vec3<u32>(arg_2.d.b.a.x, arg_2.d.a.a.x, 33463u), vec3<bool>(arg_0, arg_0, arg_1), vec4<f32>(global1.x, global1.x, global1.x, arg_2.b.c.x))).a.yy, firstLeadingBit(arg_2.d.b.a.yz))), arg_2.d.b.a.x) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(reverseBits(vec3<u32>(arg_2.d.b.a.x, 20464u, 1u))), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))), firstTrailingBit(arg_2.b.a.x));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.a + global1.x)));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(select(vec4<u32>(29386u, 22726u, arg_2.d.a.a.x, u_input.a), vec4<u32>(u_input.a, arg_2.d.b.a.x, 60966u, 4294967295u), vec4<bool>(arg_0, arg_2.b.b.x, arg_0, false)) & select(vec4<u32>(u_input.a, 50133u, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, 5907u, 4496u), arg_1)), vec4<u32>(func_3(), ~(arg_2.d.b.a.x >> (4294967295u % 32u)), ~abs(u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(32638u, 18756u, u_input.a, 0u), vec4<u32>(0u, 4294967295u, arg_2.d.a.a.x, arg_2.d.b.a.x)))), abs(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.a.x, arg_2.d.b.a.x, 0u, arg_2.b.a.x), vec4<u32>(u_input.a, arg_2.b.a.x, 19958u, 1u)), vec4<u32>(0u, 4294967295u, arg_2.b.a.x, arg_2.b.a.x)))));
    var_1 = 0u;
    return vec4<bool>(all(select(!arg_2.d.a.b.zy, select(!vec2<bool>(false, arg_2.b.b.x), arg_2.d.b.b.yy, arg_1), vec2<bool>(!arg_1, arg_1))), arg_0, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1364f)))) != _wgslsmith_f_op_f32(floor(1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(75896u >> (u_input.a % 32u), u_input.a ^ _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 0u, u_input.a, 0u)), ~vec4<u32>(0u, u_input.a, 68143u, 4294967295u)), 0u, u_input.a);
    var var_1 = vec4<u32>(~(select(_wgslsmith_dot_vec3_u32(var_0.zzx, vec3<u32>(var_0.x, 2932u, 4294967295u)), 4294967295u, true) & 0u), var_0.x, ~var_0.x, _wgslsmith_mult_u32(u_input.a, ~u_input.a));
    let var_2 = select(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), func_4(!(!func_1(false, Struct_2(global0[_wgslsmith_index_u32(var_1.x, 5u)], Struct_1(var_0.xxx, vec3<bool>(true, true, false), vec4<f32>(1183f, -1000f, global1.x, 768f)), true))), false, Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -226f), -524f, true)), Struct_1(var_1.wxz >> (vec3<u32>(4294967295u, var_1.x, 86571u) % vec3<u32>(32u)), vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, global1.x, -2578f, 1353f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 738f, global1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 320f) - vec3<f32>(global1.x, global1.x, global1.x))), Struct_2(Struct_1(var_1.xxw, vec3<bool>(false, true, true), vec4<f32>(877f, global1.x, global1.x, global1.x)), Struct_1(var_1.zwz, vec3<bool>(false, false, true), vec4<f32>(global1.x, global1.x, -1428f, global1.x)), true), false)), var_1.x < ~(~abs(var_0.x)));
    var var_3 = Struct_2(func_2(Struct_1(vec3<u32>(u_input.a, 1u, ~0u), var_2.xzw, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-530f, global1.x, 1285f, 1649f))))))), Struct_1(vec3<u32>(var_0.x, 1u, 0u), var_2.zzz, vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)), global1.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, 56755u | u_input.a, firstTrailingBit(3337u)) << (var_1.wxx % vec3<u32>(32u)), var_3.a.a.x, 0u);
}

