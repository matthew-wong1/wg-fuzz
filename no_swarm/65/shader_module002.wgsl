struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(vec4<u32>(38451u, 0u, 1u, 4294967295u), Struct_1(0i, vec2<i32>(-43915i, -1i), vec3<i32>(-1i, 34191i, 1i), vec3<bool>(false, false, true)), Struct_1(-26963i, vec2<i32>(-32891i, -48644i), vec3<i32>(-67374i, 52691i, i32(-2147483648)), vec3<bool>(false, false, false))), Struct_1(28512i, vec2<i32>(0i, 7330i), vec3<i32>(7762i, 2147483647i, 2147483647i), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), Struct_1(0i, vec2<i32>(31310i, 1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<bool>(true, false, true))), Struct_3(Struct_2(vec4<u32>(4294967295u, 16924u, 4294967295u, 1u), Struct_1(-31360i, vec2<i32>(30216i, 1i), vec3<i32>(36332i, 2147483647i, 41598i), vec3<bool>(false, false, true)), Struct_1(0i, vec2<i32>(1i, 6189i), vec3<i32>(-2321i, i32(-2147483648), 21178i), vec3<bool>(true, true, false))), Struct_1(2147483647i, vec2<i32>(34352i, 81713i), vec3<i32>(10840i, -25575i, 25786i), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), Struct_1(0i, vec2<i32>(1i, 4459i), vec3<i32>(0i, 1i, i32(-2147483648)), vec3<bool>(true, false, false))), Struct_3(Struct_2(vec4<u32>(0u, 20862u, 0u, 24840u), Struct_1(i32(-2147483648), vec2<i32>(-6440i, -33825i), vec3<i32>(-267i, 9160i, 32647i), vec3<bool>(false, true, true)), Struct_1(2147483647i, vec2<i32>(51462i, -1i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<bool>(true, false, false))), Struct_1(-30791i, vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), 0i), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), Struct_1(2147483647i, vec2<i32>(-7152i, 40559i), vec3<i32>(12752i, -91961i, 902i), vec3<bool>(false, false, false))));

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> i32 {
    return -1i;
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> i32 {
    global1 = select(!(!vec4<bool>(arg_2.d.x, all(vec4<bool>(true, true, false, arg_2.d.x)), !arg_2.d.x, global1.x)), select(vec4<bool>(arg_2.d.x, true, false, true), select(!select(vec4<bool>(false, false, global1.x, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(arg_2.d.x, global1.x, global1.x, arg_2.d.x), !vec4<bool>(true, false, true, arg_2.d.x), arg_2.d.x), select(arg_1 <= arg_1, global1.x, arg_2.d.x)), !(!any(vec2<bool>(global1.x, arg_2.d.x)))), vec4<bool>(!any(!arg_2.d.yz), arg_1 >= -742f, arg_2.d.x, !arg_2.d.x | all(!vec4<bool>(true, global1.x, global1.x, arg_2.d.x))));
    global0 = array<Struct_3, 3>();
    var var_0 = min(~(~4294967295u), firstLeadingBit(19271u)) & ~(abs(_wgslsmith_clamp_u32(7650u, 13743u, u_input.a.x)) | ~abs(u_input.b.x));
    var var_1 = arg_2.a;
    global0 = array<Struct_3, 3>();
    return arg_2.b.x;
}

fn func_1() -> f32 {
    let var_0 = !vec4<bool>(global1.x, global1.x, global1.x, ~(660u ^ u_input.a.x) < ~(~u_input.b.x));
    global0 = array<Struct_3, 3>();
    var var_1 = select(vec4<i32>(min(u_input.c, -44001i), countOneBits(_wgslsmith_mult_i32(u_input.c, u_input.c) << (reverseBits(4294967295u) % 32u)), _wgslsmith_add_i32(func_2(global0[_wgslsmith_index_u32(39243u, 3u)], vec4<i32>(2147483647i, u_input.c, -7424i, u_input.c)) & -u_input.c, 0i), firstTrailingBit(u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c >> (~u_input.b.x % 32u), func_2(Struct_3(Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x), Struct_1(u_input.c, vec2<i32>(4009i, u_input.c), vec3<i32>(u_input.c, 1i, u_input.c), global1.zxz), Struct_1(u_input.c, vec2<i32>(40244i, u_input.c), vec3<i32>(-2147483647i, u_input.c, -2147483647i), var_0.www)), Struct_1(u_input.c, vec2<i32>(u_input.c, u_input.c), vec3<i32>(u_input.c, -4217i, -2147483647i), var_0.xwy), var_0.xyz, Struct_1(-1i, vec2<i32>(1i, u_input.c), vec3<i32>(u_input.c, 2147483647i, u_input.c), global1.xwy)), select(vec4<i32>(u_input.c, -1i, -2147483647i, -19166i), vec4<i32>(-1i, u_input.c, u_input.c, u_input.c), true)), func_3(firstTrailingBit(vec4<u32>(1u, 118795u, u_input.b.x, 9069u)), -821f, Struct_1(u_input.c, vec2<i32>(-1i, u_input.c), vec3<i32>(-16146i, -2147483647i, u_input.c), var_0.yxy)), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(~u_input.c, 1i, ~u_input.c, u_input.c | u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)))), var_0);
    let var_2 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(~0u, 1u ^ u_input.a.x), u_input.b.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 1u), ~vec4<u32>(11541u, u_input.a.x, u_input.a.x, 4294967295u)) ^ vec4<u32>(74899u, _wgslsmith_add_u32(9723u, 23528u), ~45982u, ~1u)), select(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 55836u, 1u), vec3<u32>(1u, 1u, u_input.b.x)), u_input.a.x, false), select(!select(var_0.xzx, select(vec3<bool>(false, var_0.x, global1.x), global1.yyz, false), var_0.x | true), select(vec3<bool>(global1.x, var_1.x < u_input.c, true), !select(var_0.xyw, vec3<bool>(false, true, var_0.x), false), global1.x), global1.x));
    var var_3 = var_1.x << (abs(var_2.a) % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -258f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(595f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2476f * 259f)))));
    global1 = select(!(!(!select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, true, true)))), vec4<bool>(false, select(true, true, true) | (~u_input.b.x > _wgslsmith_add_u32(56366u, 45247u)), !(global1.x || !global1.x), true), !(!(!vec4<bool>(global1.x, global1.x, true, false))));
    global1 = select(!vec4<bool>(global1.x, any(!vec3<bool>(true, global1.x, false)), all(!vec4<bool>(false, global1.x, false, true)), all(!vec3<bool>(true, global1.x, true))), vec4<bool>(false, any(select(!vec2<bool>(false, global1.x), !global1.zz, global1.zw)), global1.x, _wgslsmith_div_u32(u_input.a.x, 28795u) <= ~var_0), all(global1.zyx));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1055f, _wgslsmith_f_op_f32(178f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - -289f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) * _wgslsmith_f_op_f32(abs(-1063f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-max(-u_input.c, u_input.c) & min(u_input.c, ~func_2(Struct_3(Struct_2(vec4<u32>(1u, 9351u, u_input.a.x, u_input.b.x), Struct_1(u_input.c, vec2<i32>(-11182i, u_input.c), vec3<i32>(-2147483647i, 0i, 36131i), global1.zwx), Struct_1(u_input.c, vec2<i32>(u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c), global1.xwy)), Struct_1(u_input.c, vec2<i32>(-1i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(false, global1.x, false)), vec3<bool>(global1.x, global1.x, global1.x), Struct_1(1i, vec2<i32>(u_input.c, 58064i), vec3<i32>(-31821i, u_input.c, u_input.c), vec3<bool>(global1.x, global1.x, true))), vec4<i32>(9657i, u_input.c, u_input.c, u_input.c))), vec4<u32>(~(~(~78148u)), ~59320u, ~(u_input.a.x << (var_0 % 32u)) ^ ~(~var_0), u_input.b.x), vec4<u32>(u_input.a.x | ~_wgslsmith_dot_vec3_u32(vec3<u32>(35217u, var_0, var_0), vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)), countOneBits(~53415u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(18687u, 27971u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(58791u, u_input.a.x, 45574u)), _wgslsmith_dot_vec3_u32(vec3<u32>(59435u, u_input.a.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 21082u))), 0u));
}

