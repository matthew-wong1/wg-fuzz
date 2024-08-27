struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<i32>(2147483647i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2850i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), vec3<i32>(9745i, -67383i, -9155i))), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -87506i, 4256i, -44598i), vec4<i32>(-15997i, -21378i, -1i, -22730i)), -1i)), 26562i));
    let var_1 = Struct_1(-702f, true);
    let var_2 = arg_0.a;
    let var_3 = -1000f;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-864f, _wgslsmith_f_op_f32(-var_2)))), all(vec2<bool>(!global0[_wgslsmith_index_u32(u_input.a, 23u)] & false, all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], true)))));
    return 1102f;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = arg_0;
    global0 = array<bool, 23>();
    let var_1 = 59895u;
    global0 = array<bool, 23>();
    global1 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -876f)), 1000f);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = vec4<bool>(~(~_wgslsmith_sub_u32(u_input.a, u_input.a)) == 0u, !(310f <= _wgslsmith_f_op_f32(func_4(Struct_1(arg_0, global0[_wgslsmith_index_u32(8828u, 23u)]), ~u_input.a, Struct_1(arg_0, true), _wgslsmith_f_op_f32(func_3(Struct_1(-140f, false)))))), !(global0[_wgslsmith_index_u32(~54621u, 23u)] & true), !global0[_wgslsmith_index_u32(reverseBits(u_input.a) ^ ~(~u_input.a), 23u)]);
    let var_1 = -2147483647i;
    global1 = var_1 <= var_1;
    var var_2 = ~(~(~(~vec2<u32>(1u, u_input.a))) >> (vec2<u32>(~57713u, ~1u) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, -2147483647i), vec3<i32>(-25745i, _wgslsmith_mod_i32(var_1, var_1), var_1));
    return Struct_1(arg_0, !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(45254u, u_input.a, 41260u), abs(vec3<u32>(27146u, var_2.x, var_2.x))) ^ 65693u, 23u)]);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a))))), true);
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(u_input.a, 35890u)) << (~(~1u) % 32u), ~34891u, ~u_input.a), _wgslsmith_sub_vec3_u32(~(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 19074u)) | (vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))), ((vec3<u32>(5391u, 1u, 4294967295u) & vec3<u32>(u_input.a, 4294967295u, u_input.a)) & ~vec3<u32>(7433u, 29047u, u_input.a)) & select(vec3<u32>(u_input.a, u_input.a, 31117u), max(vec3<u32>(19125u, u_input.a, 50438u), vec3<u32>(u_input.a, 1u, u_input.a)), true)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -792f), _wgslsmith_f_op_f32(max(func_2(_wgslsmith_f_op_f32(select(arg_0.x, -1000f, true))).a, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))).a)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(-1397f)), all(!vec3<bool>(765f < arg_0.x, any(vec2<bool>(arg_1.b, arg_1.b)), true)));
    var var_3 = arg_2;
    return _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, _wgslsmith_div_u32(~4294967295u, ~var_1.x), var_1.x) | abs(~(vec4<u32>(u_input.a, 0u, 1u, var_1.x) >> (vec4<u32>(12737u, 4294967295u, 27229u, 0u) % vec4<u32>(32u)))), vec4<u32>(4294967295u, _wgslsmith_clamp_u32((17847u >> (var_1.x % 32u)) << (4294967295u % 32u), ~max(u_input.a, 0u), 0u), ~max(_wgslsmith_add_u32(u_input.a, var_1.x), 104469u << (u_input.a % 32u)), min(~45616u, _wgslsmith_mult_u32(u_input.a, u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = array<bool, 23>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 4294967295u)), ~(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 48349u, u_input.a))), select(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, arg_0.a) - vec2<f32>(233f, -757f)), Struct_1(-439f, true), func_2(1151f)), (vec4<u32>(u_input.a, 36725u, u_input.a, 31393u) >> (vec4<u32>(11369u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))) & vec4<u32>(70817u, u_input.a, u_input.a, u_input.a), true)), u_input.a, firstLeadingBit(0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(0u), _wgslsmith_div_u32(4294967295u, u_input.a), ~u_input.a), vec3<u32>(u_input.a | u_input.a, firstLeadingBit(103297u), u_input.a << (u_input.a % 32u))), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), abs(~58114u))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(Struct_1(-2581f, global0[_wgslsmith_index_u32(~4294967295u, 23u)]), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(var_0.zy, vec2<u32>(var_0.x, u_input.a), global0[_wgslsmith_index_u32(1129u, 23u)]), var_0.xx), firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_0.zw, vec2<u32>(1u, 79726u), vec2<u32>(u_input.a, u_input.a)))), func_2(arg_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(287f - -2150f), _wgslsmith_f_op_f32(arg_0.a - arg_0.a))), arg_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) + _wgslsmith_f_op_f32(select(819f, _wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)), any(vec4<bool>(arg_0.b, false, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * var_1.a))))));
    let var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -407f;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, 19763u), 1u);
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1304f + -636f))))), true), 2147483647i, -((-2147483647i & (55610i << (var_1 % 32u))) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -32288i), 0i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1070f - _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(var_2.a - var_2.a), 665f) + vec3<f32>(-310f, _wgslsmith_f_op_f32(step(var_2.a, -2188f)), _wgslsmith_f_op_f32(-814f + _wgslsmith_f_op_f32(-var_2.a)))));
    var var_4 = vec2<i32>(1i, 1i) | (~abs(-vec2<i32>(-2147483647i, 1i)) << (vec2<u32>(_wgslsmith_mult_u32(~31025u, countOneBits(var_1)), 1u) % vec2<u32>(32u)));
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_5 = func_2(var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u << (_wgslsmith_add_u32(~max(u_input.a, u_input.a), ~(~27467u)) % 32u));
}

