struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 23>();
    let var_0 = arg_0.wxx;
    var var_1 = Struct_5(-397f, firstTrailingBit(-(~vec3<i32>(-10920i, 0i, u_input.d.x))));
    var var_2 = Struct_1(var_0.x, var_1.a);
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 23u)] ^ _wgslsmith_mult_u32(abs(~(global0[_wgslsmith_index_u32(0u, 23u)] ^ 34294u)), global0[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(13180u, 54274u, 47714u), vec3<u32>(u_input.b, 3751u, 36744u)) ^ ~21155u) << (~(u_input.b << (25789u % 32u)) % 32u), 23u)]);
    return Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-var_2.b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_1(!all(select(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(arg_0.c.a, false), vec2<bool>(true, arg_0.a.x)), arg_0.a.xy, true)), 1f);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1414f, -479f) + arg_1) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-167f, -172f), arg_1, arg_0.a.zy)))) - _wgslsmith_f_op_vec2_f32(select(arg_1, arg_1, all(arg_0.a.zww)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(arg_1))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = ~(u_input.d.x >> (~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1301u, global0[_wgslsmith_index_u32(61631u, 23u)] | 4294967295u), 23u)] % 32u));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1037f, -158f) * _wgslsmith_f_op_f32(max(3001f, _wgslsmith_f_op_f32(1217f - _wgslsmith_f_op_f32(2448f + -435f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f)))));
    let var_1 = Struct_3(!vec2<bool>(select(-2147483647i, u_input.a, false) > 57011i, arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-812f, 565f, -847f, 806f)))))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(true, true, true, true), func_2(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_0.x, true, true, arg_0.x), true), min(u_input.d.x, 0i)), Struct_1(true, _wgslsmith_f_op_f32(ceil(-1089f))), _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 23u)]) <= 67419u, arg_0.x && (arg_0.x || true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-373f, 1000f)))))), select(vec2<bool>(!(arg_0.x || false), false), arg_0, arg_0.x));
    let var_2 = _wgslsmith_mod_i32(29233i, ~0i);
    var var_3 = u_input.d.zx;
    return func_2(select(!vec4<bool>(true, func_2(vec4<bool>(true, true, var_1.a.x, arg_0.x), var_3.x).a, !arg_0.x, 28052u != u_input.b), !(!(!vec4<bool>(false, var_1.d.x, var_1.d.x, false))), true), -1i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: f32, arg_3: Struct_1) -> i32 {
    global1 = arg_1.b.x;
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.b))), -min(arg_1.b | vec3<i32>(2147483647i, -27635i, 13726i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_1.b.x, arg_1.b.x), u_input.d.yzy, vec3<i32>(u_input.d.x, u_input.d.x, arg_1.b.x))));
    var var_1 = Struct_2(vec4<bool>(select(true, arg_3.a, !all(arg_0.a.zyw)), select(true, !all(arg_0.a.wx), !all(arg_0.a.yw)), !arg_3.a, arg_0.a.x), Struct_1(true || (true || (u_input.c.x < u_input.b)), arg_2), func_1(arg_0.a.ww), arg_3.a, true);
    global0 = array<u32, 23>();
    var_1 = Struct_2(var_1.a, func_1(vec2<bool>(var_1.b.a, select(var_1.c.a, false, arg_0.b.a))), func_1(arg_0.a.wx), true, true);
    return -_wgslsmith_add_i32(u_input.d.x, u_input.d.x);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> vec4<i32> {
    let var_0 = -648f;
    var var_1 = vec2<u32>(select(_wgslsmith_mult_u32(u_input.b, ~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(130815u, 23u)], u_input.c.x), vec3<u32>(29499u, global0[_wgslsmith_index_u32(54207u, 23u)], 38334u)) % 32u)), _wgslsmith_mult_u32(4294967295u, 1u), !any(!vec3<bool>(false, arg_2.a.a.x, arg_2.a.d.x))), countOneBits(~36871u));
    let var_2 = select(select(-vec3<i32>(-u_input.d.x, 2147483647i, -1i), max(-vec3<i32>(arg_0, arg_0, arg_0) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], 23u)], var_1.x), vec3<u32>(u_input.b, 72847u, 44198u)) % vec3<u32>(32u)), u_input.d.zxz), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.a.a.x, arg_2.a.a.x), vec3<bool>(arg_2.a.d.x, false, arg_2.a.d.x)))), vec3<i32>(~arg_0, -32045i, func_4(Struct_2(vec4<bool>(true, false, arg_2.a.a.x, arg_2.a.a.x), func_1(arg_2.a.d), Struct_1(arg_2.a.a.x, -737f), !arg_2.a.d.x, any(vec4<bool>(true, arg_2.a.a.x, arg_2.a.a.x, true))), Struct_5(_wgslsmith_f_op_f32(var_0 - 235f), u_input.d.xwy ^ u_input.d.xzy), 689f, Struct_1(!arg_2.a.d.x, -1011f))), false);
    var var_3 = Struct_2(vec4<bool>(any(vec3<bool>(arg_2.a.a.x, true, any(arg_2.a.a))), arg_2.a.d.x, false, var_1.x >= u_input.b), Struct_1(all(vec4<bool>(!arg_2.a.d.x, !arg_2.a.d.x, all(vec3<bool>(true, arg_2.a.a.x, true)), !arg_2.a.a.x)), 114f), Struct_1(all(arg_2.a.d), arg_2.a.c.x), arg_2.a.a.x, arg_2.a.d.x);
    var var_4 = _wgslsmith_f_op_f32(sign(var_0));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(any(vec2<bool>(true, true)) & !all(vec2<bool>(false, true))), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(761f, -592f) + vec2<f32>(-937f, -533f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1259f), -359f), true)))));
    global1 = (u_input.a ^ _wgslsmith_div_i32(-2147483647i << (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(u_input.b, 23u)]) % 32u), u_input.d.x)) << ((_wgslsmith_div_u32(global0[_wgslsmith_index_u32(51919u, 23u)], _wgslsmith_clamp_u32(~4294967295u, reverseBits(4294967295u), u_input.c.x)) ^ ~(~firstLeadingBit(global0[_wgslsmith_index_u32(1u, 23u)]))) % 32u);
    global1 = u_input.a;
    global0 = array<u32, 23>();
    let var_2 = !select(!vec4<bool>(!var_0.x, true, true, all(vec4<bool>(false, true, var_0.x, false))), select(vec4<bool>(!var_0.x, var_0.x, var_0.x, any(vec3<bool>(true, true, var_0.x))), !vec4<bool>(true, true, var_0.x, true), false), all(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), true), true)));
    let var_3 = func_5(_wgslsmith_sub_i32(func_4(Struct_2(var_2, Struct_1(var_0.x, var_1.x), func_1(vec2<bool>(false, var_2.x)), var_0.x, 78617u <= global0[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_5(_wgslsmith_f_op_f32(-823f - var_1.x), vec3<i32>(u_input.d.x, -16724i, u_input.d.x)), _wgslsmith_div_f32(var_1.x, var_1.x), Struct_1(true, 633f)), -1i), vec2<f32>(1287f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(244f - var_1.x), var_1.x))), Struct_4(Struct_3(select(!var_2.zw, !vec2<bool>(var_0.x, false), var_0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1525f, var_1.x, var_1.x, -446f))))), var_1, !(!vec2<bool>(false, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))) * vec3<f32>(221f, 675f, var_1.x))));
    let var_4 = var_1.x;
    global1 = var_3.x ^ var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec4<u32>(abs(global0[_wgslsmith_index_u32(130u, 23u)] >> (0u % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~109u, 12366u << (1u % 32u)), 23u)], 1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(22373u, 0u), u_input.c))) & _wgslsmith_add_vec4_u32(vec4<u32>(69712u, 4294967295u, ~0u, ~u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(52853u), 23u)], 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 15981u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(55450u, 23u)], u_input.c.x, global0[_wgslsmith_index_u32(1u, 23u)]))), global0[_wgslsmith_index_u32(u_input.b, 23u)]);
}

