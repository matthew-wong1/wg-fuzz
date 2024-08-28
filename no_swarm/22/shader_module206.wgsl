struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, false, false, true, true, true, true, false, false, false, true, true, false, true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = select(vec2<bool>(false, true & !any(vec3<bool>(true, global0.x, true))), vec2<bool>(global0.x, any(vec2<bool>(global0.x, global0.x & global1[_wgslsmith_index_u32(4294967295u, 18u)]))), true);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-117f, -618f)), 1f, -721f, 683f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-197f, 1766f, -267f, 795f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -451f, 676f, -397f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-819f, 302f, 1040f, 172f) * vec4<f32>(-255f, 982f, 1050f, -1025f)))))), vec2<u32>(arg_0 << (~_wgslsmith_sub_u32(arg_0, arg_0) % 32u), ~4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(1i), u_input.a, _wgslsmith_add_i32(abs(u_input.a), 0i)), -(~vec3<i32>(u_input.a, -11120i, u_input.a))), global1[_wgslsmith_index_u32(arg_0, 18u)], 32897u << (max(select(1u, 59132u, false), 70702u) % 32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(var_0.e, 83858u)), ~reverseBits(vec2<u32>(arg_0, var_0.b.x))), vec3<i32>(-41731i, u_input.a, u_input.a), !(~(~19072u) > arg_0), 0u);
    let var_1 = Struct_4(var_0.a.x, (any(!vec3<bool>(global0.x, var_0.d, global1[_wgslsmith_index_u32(60736u, 18u)])) | all(select(vec3<bool>(var_0.d, global1[_wgslsmith_index_u32(7214u, 18u)], var_0.d), vec3<bool>(var_0.d, global0.x, true), true))) || true);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, -1217f, var_1.a, -626f), var_0.a, vec4<bool>(true, false, global0.x, global1[_wgslsmith_index_u32(1291u, 18u)]))), vec4<f32>(var_1.a, 190f, var_1.a, var_0.a.x))))), firstTrailingBit(~select(_wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(var_0.e, var_0.e)), max(var_0.b, var_0.b), vec2<bool>(true, true))), ~(-select(var_0.c, var_0.c, vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 18u)], false)) & var_0.c), !(var_0.a.x < -346f), 4294967295u);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(f32(-1f) * -633f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> bool {
    global1 = array<bool, 18>();
    var var_0 = _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u) ^ select(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 13531u), vec4<u32>(15961u, 36999u, 27430u, 100573u)), 28223u), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(47059u, 56019u, 1u), vec3<u32>(20470u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u)), true && global1[_wgslsmith_index_u32(~4294967295u, 18u)]), ~_wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(41803u, 9877u, 1u)), vec3<u32>(6500u, ~35397u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 4785u)))));
    global1 = array<bool, 18>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(var_0.x, var_0.x, 0u) & ~0u)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-251f, _wgslsmith_div_f32(799f, -2604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-127f, 920f)))))), global1[_wgslsmith_index_u32(~4294967295u, 18u)]);
    var var_2 = _wgslsmith_clamp_vec3_u32(abs(~vec3<u32>(var_0.x, 0u, 8286u)) & ((~vec3<u32>(var_0.x, var_0.x, 1u) | ~vec3<u32>(var_0.x, 4294967295u, var_0.x)) | vec3<u32>(var_0.x ^ 1u, 1u, 1u)), ~(~(vec3<u32>(var_0.x, var_0.x, 4294967295u) | vec3<u32>(31742u, 0u, 3974u))), reverseBits(max(max(vec3<u32>(58204u, var_0.x, var_0.x), vec3<u32>(0u, var_0.x, 18998u)) ^ select(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, 1u, 4083u), global0.x), ~min(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(17904u, var_0.x, 0u)))));
    return 0i > ~_wgslsmith_add_i32(-arg_1.x, ~(-1i));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    global0 = !vec2<bool>(!global1[_wgslsmith_index_u32(~1u, 18u)] | !arg_2.b, func_2(max(firstLeadingBit(u_input.a), _wgslsmith_clamp_i32(arg_1.a, 0i, -24903i)), vec2<i32>(arg_1.a & 2147483647i, -9016i)));
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a * arg_3.a), arg_2.a), vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(970f - arg_2.a))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.a, -1401f)))))));
    var var_1 = _wgslsmith_mod_vec4_u32(countOneBits(~(~vec4<u32>(0u, 1u, 0u, 6217u))), vec4<u32>(~(~37388u), 2257u, abs(~1u), select(1u, _wgslsmith_mult_u32(0u, 1u), true))) ^ max(vec4<u32>(~(~0u), ~65332u, min(4294967295u, ~38896u), 1u), vec4<u32>(9921u, ~(~0u), firstTrailingBit(29499u << (0u % 32u)), _wgslsmith_div_u32(4979u, 605u) << (1u % 32u)));
    var var_2 = select(vec4<bool>(true, true, any(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 18u)] || arg_3.b, !arg_3.b, func_2(arg_1.a, vec2<i32>(-58418i, -2147483647i)), true)), any(vec2<bool>(!arg_0.c, any(vec4<bool>(true, true, arg_1.c, arg_2.b))))), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 18u)], global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.x))) >= 140f, arg_3.b), !vec4<bool>(true, false, false, !(!global0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-arg_3.a), arg_1.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f - -834f))), arg_3.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-430f - arg_3.a)), -590f) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_3.a, -104f)), _wgslsmith_f_op_f32(-var_0.x), arg_3.b)), _wgslsmith_f_op_f32(select(-1000f, var_0.x, false))))));
    return _wgslsmith_f_op_f32(arg_3.a + arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(trunc(-315f)), _wgslsmith_f_op_f32(abs(513f)))), vec4<f32>(-276f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(u_input.a, -2147483647i, false, global1[_wgslsmith_index_u32(0u, 18u)]), Struct_5(1i, 0i, true, global0.x), Struct_4(-1596f, global1[_wgslsmith_index_u32(5807u, 18u)]), Struct_4(1053f, true))) * _wgslsmith_f_op_f32(round(1000f))), 116f, _wgslsmith_f_op_f32(abs(-965f)))), vec2<u32>(~0u, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(1u, 17213u, 64453u), 1u)), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(2147483647i, u_input.a, u_input.a)), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), u_input.a)), !global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 4294967295u))) << (reverseBits(~46307u) % 32u));
    let var_1 = !((787f >= _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(var_0.a.x * 831f))) & (0i != reverseBits(var_0.c.x)));
    var var_2 = Struct_5(select(-1i, max(_wgslsmith_clamp_i32(u_input.a, -40443i, _wgslsmith_mod_i32(u_input.a, var_0.c.x)), -31371i), true | func_2(0i, vec2<i32>(-1i, 6868i) << (vec2<u32>(54142u, var_0.b.x) % vec2<u32>(32u)))), u_input.a, true, var_1);
    var var_3 = vec4<u32>(~4294967295u, 64864u, var_0.b.x, 11049u);
    let var_4 = func_2(var_0.c.x, _wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-38625i, -5772i), -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, ~u_input.a), var_0.c.xz)));
    global0 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.d, global0.x), vec2<bool>(var_4, false), vec2<bool>(var_4, true)), vec2<bool>(false, true), !vec2<bool>(false, var_0.d)), !(!vec2<bool>(var_0.d, var_4))), vec2<bool>(true, true), false), !select(!(!vec2<bool>(var_2.d, false)), !(!vec2<bool>(global1[_wgslsmith_index_u32(82355u, 18u)], var_0.d)), -2147483647i == select(var_2.b, 7462i, var_0.d)), !var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

