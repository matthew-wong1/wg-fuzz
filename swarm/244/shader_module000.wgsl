struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(-660f, -1098f), true), Struct_1(vec2<f32>(-749f, 1000f), false), Struct_1(vec2<f32>(-1414f, -1640f), false), Struct_1(vec2<f32>(836f, 768f), false), Struct_1(vec2<f32>(371f, -1815f), false), Struct_1(vec2<f32>(-252f, 1205f), true), Struct_1(vec2<f32>(-741f, 3104f), false), Struct_1(vec2<f32>(378f, 1311f), true), Struct_1(vec2<f32>(-781f, -916f), true), Struct_1(vec2<f32>(266f, -562f), true));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-249f, -254f), true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)))), all(!vec3<bool>(global1.b && global1.b, global1.b, true)));
    global0 = array<Struct_1, 10>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(216f, -311f))))), true);
    global1 = Struct_1(arg_0, (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(u_input.d, 6787u, u_input.c))) >> (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)) != u_input.c);
    return global0[_wgslsmith_index_u32(~u_input.c, 10u)];
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -760f), _wgslsmith_f_op_f32(2250f * -677f))), 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.a.x, arg_2.a.x))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1980f, arg_2.a.x, -1485f) - vec3<f32>(1671f, global1.a.x, 207f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.x - 778f))), _wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.x * global1.a.x))), _wgslsmith_f_op_f32(-2198f - _wgslsmith_f_op_f32(round(268f))), func_2(arg_2.a).a.x)));
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-global1.a));
    var var_1 = -178f;
    global0 = array<Struct_1, 10>();
    var var_2 = -_wgslsmith_add_vec2_i32(select(-firstLeadingBit(vec2<i32>(45532i, u_input.b)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(1i, 58459i)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, u_input.b), vec2<i32>(u_input.e, -67771i))), select(!vec2<bool>(true, global1.b), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_0, true), true))), vec2<i32>(max(-1i, 18260i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, 2147483647i))) & vec2<i32>(1i, firstTrailingBit(1i)));
    return vec3<u32>(min(1u, u_input.c), u_input.d, reverseBits(arg_1));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> u32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1412f, global1.a.x)))), !arg_0.x);
    var var_0 = func_3(true, u_input.d, func_2(vec2<f32>(_wgslsmith_f_op_f32(-2091f * 421f), _wgslsmith_f_op_f32(-global1.a.x))));
    global0 = array<Struct_1, 10>();
    var var_1 = func_2(global1.a);
    let var_2 = func_2(vec2<f32>(905f, global1.a.x));
    return abs(~abs(min(65824u, var_0.x))) >> (u_input.d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(min(~reverseBits(u_input.d) >> (func_1(!vec2<bool>(false, global1.b), global1.b, -24340i) % 32u), 54078u), 10u)];
    let var_0 = Struct_1(global1.a, !select(!(!global1.b), any(vec4<bool>(true, false, global1.b, global1.b)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(243f - _wgslsmith_f_op_f32(1630f * global1.a.x)), var_0.a.x, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1071f - global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), 591f, global1.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_0.a.x, var_0.a.x, 182f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1207f, global1.a.x, var_0.a.x) + vec4<f32>(-1000f, -198f, 924f, var_0.a.x))))));
    let var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(~u_input.e, u_input.b, u_input.e, max(19067i, countOneBits(u_input.b))), ~max(min(vec4<i32>(69962i, u_input.a, -2147483647i, 0i), vec4<i32>(2147483647i, u_input.e, u_input.b, 29322i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, -70366i, u_input.a, 2147483647i)), reverseBits(vec4<i32>(u_input.a, u_input.b, u_input.a, u_input.a)), firstTrailingBit(vec4<i32>(305i, u_input.e, -12736i, u_input.e)))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1496f, global1.a.x))) - global1.a)))), false);
    var var_3 = !(!select(!(!vec2<bool>(global1.b, global1.b)), select(!vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, false), vec2<bool>(var_0.b, global1.b), vec2<bool>(false, var_0.b)), vec2<bool>(global1.b, var_0.b)), -u_input.b <= -1i));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(u_input.c, u_input.d) >> (~vec2<u32>(1u, 79119u) % vec2<u32>(32u))) | ~vec2<u32>(u_input.c, ~u_input.c), _wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u)))), func_3(func_2(_wgslsmith_div_vec2_f32(var_4.a, var_0.a)).b, ~select(u_input.c, u_input.c, false), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1000f)), select(true, true, true))).yz, _wgslsmith_div_vec2_u32(min(vec2<u32>(u_input.d, 1u), firstTrailingBit(vec2<u32>(4294967295u, u_input.c))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 5178u), vec2<u32>(66503u, 0u))))), var_0.a.x, _wgslsmith_mod_vec3_u32(max(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 7219u)), ~vec3<u32>(u_input.c, u_input.c, 9656u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u) | vec3<u32>(u_input.d, u_input.c, 31959u), vec3<u32>(21438u, u_input.c, 4294967295u))), max(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 100804u) ^ vec3<u32>(0u, u_input.d, u_input.c)), vec3<u32>(func_3(false, u_input.d, var_4).x, 1u, abs(47155u)))));
}

