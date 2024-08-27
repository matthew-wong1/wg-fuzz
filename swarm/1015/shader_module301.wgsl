struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-447f, -257f), vec2<f32>(1041f, 335f), vec2<f32>(-370f, -392f), vec2<f32>(1133f, -275f), vec2<f32>(-716f, 1425f), vec2<f32>(244f, -1355f), vec2<f32>(-1876f, -357f), vec2<f32>(126f, 2108f), vec2<f32>(1765f, -1148f), vec2<f32>(-875f, -487f), vec2<f32>(-1000f, -309f), vec2<f32>(516f, -1194f), vec2<f32>(2062f, 282f), vec2<f32>(-353f, -751f), vec2<f32>(-195f, 1792f), vec2<f32>(-1033f, -353f), vec2<f32>(-183f, -639f), vec2<f32>(-987f, 1291f), vec2<f32>(-570f, -664f), vec2<f32>(-1192f, 896f));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1000f), Struct_1(230f), Struct_1(1000f), Struct_1(-1548f), Struct_1(559f), Struct_1(-1412f), Struct_1(790f), Struct_1(-255f), Struct_1(-743f), Struct_1(184f), Struct_1(-1061f), Struct_1(854f), Struct_1(146f), Struct_1(1146f), Struct_1(-600f), Struct_1(725f), Struct_1(-1000f), Struct_1(169f), Struct_1(1000f), Struct_1(-978f), Struct_1(1000f), Struct_1(-1107f), Struct_1(-544f), Struct_1(-1302f), Struct_1(605f), Struct_1(-1030f));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(1171f));

var<private> global3: array<vec4<bool>, 1>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-405f, arg_0.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(6910u, 20u)]))))));
    var var_2 = Struct_1(-828f);
    let var_3 = global2[_wgslsmith_index_u32(u_input.a >> ((~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(var_0, 59406u, var_0, var_0)) | _wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_mod_u32(4294967295u, firstTrailingBit(0u)))) % 32u), 1u)];
    global1 = array<Struct_1, 26>();
    return ~((0u | u_input.a) >> (_wgslsmith_clamp_u32(u_input.a, (u_input.a ^ 62619u) << (_wgslsmith_sub_u32(var_0, 42491u) % 32u), var_0) % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -1473f) - _wgslsmith_f_op_f32(round(arg_0.a))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + 722f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(772f * arg_0.a)));
    var var_2 = arg_0;
    return -(~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 1i, 0i) >> (vec3<u32>(arg_2.x, 29467u, 4294967295u) % vec3<u32>(32u)))));
}

fn func_4(arg_0: i32) -> vec3<u32> {
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(1u), 1u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.a));
    global0 = array<vec2<f32>, 20>();
    var var_2 = false;
    var var_3 = vec2<u32>(~u_input.a, u_input.a) ^ ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 28271u) % vec2<u32>(32u))));
    return ~vec3<u32>(min(~0u, u_input.a) & abs(~var_3.x), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_3.x, u_input.a), vec3<u32>(1u, 86152u, var_3.x)) << (~0u % 32u)), 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    let var_0 = arg_1.zz;
    let var_1 = Struct_1(-1394f);
    global1 = array<Struct_1, 26>();
    var var_2 = ~arg_1 | ~(vec3<u32>(u_input.a, firstTrailingBit(var_0.x), 51716u ^ u_input.a) & arg_1);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(ceil(1114f))))));
    return all(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -694f) > _wgslsmith_f_op_f32(107f - var_1.a), true, all(vec3<bool>(false, false, false))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = array<vec2<f32>, 20>();
    let var_0 = global3[_wgslsmith_index_u32(reverseBits(u_input.a) >> (4294967295u % 32u), 1u)];
    var var_1 = -1982f;
    global1 = array<Struct_1, 26>();
    var_1 = arg_0.a;
    return (func_5(Struct_1(1273f), func_4(func_3(Struct_1(arg_0.a), vec4<u32>(4294967295u, u_input.a, 22637u, 9809u), vec2<u32>(u_input.a, 1u)))) | (!(!arg_1) == false)) && !all(!(!vec2<bool>(arg_1, var_0.x)));
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(435f)))))));
    let var_1 = global2[_wgslsmith_index_u32(~u_input.a, 1u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(935f, var_1.a) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a * var_1.a)))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), -2046f), -949f))));
    var var_3 = arg_1;
    global3 = array<vec4<bool>, 1>();
    return Struct_1(-1394f);
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = vec2<i32>(-_wgslsmith_mod_i32(firstLeadingBit(arg_0 | arg_0), arg_0), select(-1i, (i32(-1i) * -1i) & arg_0, true));
    let var_1 = func_6(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 31386u), vec2<u32>(45545u, u_input.a)), u_input.a), _wgslsmith_add_vec2_u32(~(~vec2<u32>(17085u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 9879u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a)))), vec2<bool>(!all(select(global3[_wgslsmith_index_u32(u_input.a, 1u)], vec4<bool>(false, false, false, false), false)), u_input.a > (~10691u ^ (u_input.a << (u_input.a % 32u)))), 1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, func_6(4294967295u, vec2<bool>(func_5(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec3<u32>(21504u, 0u, 59849u)), true), _wgslsmith_mult_i32(firstLeadingBit(2147483647i), -19962i << (0u % 32u))).a, 754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + -1599f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-527f - 1448f) + _wgslsmith_f_op_f32(-var_1.a))))));
    global1 = array<Struct_1, 26>();
    global3 = array<vec4<bool>, 1>();
    return StorageBuffer(var_0.x, -928f, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 1>();
    global2 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1351f, -1501f), vec2<f32>(2231f, 854f))))))));
    var_0 = global0[_wgslsmith_index_u32(0u, 20u)];
    global0 = array<vec2<f32>, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1486f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1112f)), var_0.x))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 0u) & firstTrailingBit(~(max(0u, 1u) << (func_1(Struct_1(var_0.x), vec2<i32>(-30933i, 34i), vec2<i32>(2147483647i, 2147483647i)) % 32u))), 20u)];
    let x = u_input.a;
    s_output = func_7(24363i, func_6(4294967295u, select(vec2<bool>(func_2(Struct_1(var_0.x), false), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), false), true), _wgslsmith_mult_i32(select(~19156i, firstLeadingBit(-2147483647i), true), countOneBits(-2147483647i))));
}

