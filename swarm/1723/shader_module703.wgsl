struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<Struct_3, 17>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    global0 = array<i32, 5>();
    global1 = array<Struct_3, 17>();
    global0 = array<i32, 5>();
    return Struct_2(Struct_1(firstLeadingBit(vec3<i32>(-17166i, 1i, global0[_wgslsmith_index_u32(15870u, 5u)]) | ~vec3<i32>(34606i, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])), !arg_0.x));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_5) -> i32 {
    global0 = array<i32, 5>();
    var var_0 = ~(~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 7013u, arg_1.x), vec3<u32>(arg_1.x, u_input.b.x, u_input.c)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.c, 93568u, u_input.c), vec3<u32>(10446u, 1u, u_input.a)) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.c, 0u, arg_1.x), vec3<u32>(arg_1.x, 0u, arg_2.c))));
    let var_1 = arg_3;
    var_0 = ~(countOneBits(countOneBits(vec3<u32>(var_0.x, 2275u, 0u) << (vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u)))) | (vec3<u32>(112332u, ~arg_1.x, ~u_input.a) ^ min(max(vec3<u32>(86795u, 22012u, 1u), vec3<u32>(arg_2.c, 36500u, 4294967295u)), vec3<u32>(36658u, 4294967295u, 0u))));
    global1 = array<Struct_3, 17>();
    return _wgslsmith_mult_i32(-13019i, -1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> u32 {
    global1 = array<Struct_3, 17>();
    let var_0 = func_3(func_2(vec2<bool>(arg_0.b, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-962f, 568f, arg_2.b, arg_2.b), vec4<f32>(892f, arg_2.b, arg_2.b, arg_2.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, arg_2.b, arg_2.b, -1000f)))), true), arg_1.xy, Struct_4(firstTrailingBit(-2147483647i) | max(~2147483647i, global0[_wgslsmith_index_u32(firstTrailingBit(33536u), 5u)]), !(!arg_0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_1.x), select(u_input.b, ~u_input.b, !arg_2.a)), arg_0, Struct_3(true, arg_2.b)), Struct_5(Struct_2(arg_0)));
    global1 = array<Struct_3, 17>();
    var var_1 = countOneBits(-1i);
    var var_2 = arg_1;
    return reverseBits(1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 5u)], select(_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 5u)], -1i) | vec3<i32>(982i, global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), ~vec3<i32>(41866i, global0[_wgslsmith_index_u32(43584u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]), all(vec4<bool>(false, true, true, true))), vec3<i32>(abs(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 5u)], -4057i), vec2<i32>(1941i, -6044i)), 0i)), 45498i, all(vec4<bool>(true, true, true, false)) & select(true, true, true)));
    var var_1 = func_2(vec2<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(-arg_1), select(select(all(vec2<bool>(false, false)), (global0[_wgslsmith_index_u32(u_input.c, 5u)] & 0i) >= -2147483647i, false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) * vec4<f32>(1584f, -1065f, -585f, 743f)) * _wgslsmith_f_op_vec4_f32(round(arg_1))), true).a.b));
    var var_2 = select(!(!(!select(vec2<bool>(var_1.a.b, false), vec2<bool>(var_1.a.b, var_1.a.b), var_1.a.b))), !vec2<bool>(var_1.a.b, var_1.a.b), (_wgslsmith_dot_vec3_u32(vec3<u32>(10748u, arg_0.x, 0u), ~vec3<u32>(u_input.b.x, arg_0.x, 81615u)) | arg_0.x) <= arg_0.x);
    global1 = array<Struct_3, 17>();
    var var_3 = vec3<u32>(~(~_wgslsmith_clamp_u32(select(4294967295u, arg_0.x, false), ~arg_0.x, u_input.c)), 11469u, countOneBits(firstTrailingBit(~38531u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))))));
}

fn func_5(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 17u)];
    var var_1 = abs(_wgslsmith_div_u32(u_input.a & ~4294967295u, 29077u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1117f, arg_1.x, -1992f, arg_1.x)))))));
    return arg_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(_wgslsmith_f_op_f32(func_4(vec2<u32>(0u, func_1(Struct_1(vec3<i32>(18411i, -1i, global0[_wgslsmith_index_u32(u_input.a, 5u)]), false), vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), global1[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1458f, -1574f, 289f, 587f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(722f, _wgslsmith_f_op_f32(-455f - -324f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1256f, 852f, -2075f))))), Struct_5(func_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1424f, 724f, -1272f, 872f), vec4<f32>(-1000f, -970f, 733f, -529f), vec4<bool>(false, true, true, true))), true)), func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1222f, -1409f, 126f, -493f), vec4<f32>(-929f, -2033f, -728f, 863f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(903f, -1000f, -152f, 492f)))), true)));
    var var_1 = Struct_3(any(!select(select(vec4<bool>(var_0.a.b, false, var_0.a.b, var_0.a.b), vec4<bool>(var_0.a.b, true, true, false), vec4<bool>(false, false, false, var_0.a.b)), !vec4<bool>(var_0.a.b, var_0.a.b, true, var_0.a.b), select(vec4<bool>(true, var_0.a.b, true, true), vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.b, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(960f + 243f) * _wgslsmith_f_op_f32(f32(-1f) * -2161f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1542f, -472f, var_0.a.b))))));
    var var_2 = func_5(-853f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, -863f, var_1.b), vec3<f32>(-537f, var_1.b, var_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2207f, -1342f, var_1.b) + vec3<f32>(var_1.b, -1000f, 1511f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 389f, var_1.b) - vec3<f32>(var_1.b, -841f, var_1.b))))), Struct_5(Struct_2(Struct_1(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 5u)], 0i), true))), Struct_2(func_5(_wgslsmith_f_op_f32(f32(-1f) * -625f), vec3<f32>(_wgslsmith_f_op_f32(abs(1124f)), _wgslsmith_div_f32(var_1.b, 277f), _wgslsmith_f_op_f32(func_4(u_input.b, vec4<f32>(1439f, var_1.b, var_1.b, var_1.b)))), Struct_5(func_2(vec2<bool>(false, false), vec4<f32>(var_1.b, 725f, -514f, -325f), var_0.a.b)), Struct_2(func_2(vec2<bool>(var_0.a.b, true), vec4<f32>(-824f, var_1.b, 323f, var_1.b), var_0.a.b).a)))).b;
    var_0 = Struct_2(Struct_1(var_0.a.a, true));
    var_1 = Struct_3(!all(vec4<bool>(any(vec3<bool>(var_0.a.b, var_1.a, true)), !var_0.a.b, true, var_0.a.b)), 199f);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(~(~u_input.b.x | 1430u)), abs((u_input.b.x >> (u_input.c % 32u)) & firstLeadingBit(u_input.b.x)) >> ((u_input.c | ~(~u_input.c)) % 32u)), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.b))))), _wgslsmith_f_op_f32(-var_3.b), -1000f), ~u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) + -659f), -1004f, var_1.b), vec4<f32>(-247f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, -923f, 276f, var_1.b), vec4<f32>(-640f, var_1.b, var_1.b, -789f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.b)), -602f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(615f, -1782f)))) * var_1.b)));
}

