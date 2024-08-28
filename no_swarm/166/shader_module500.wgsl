struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = ~(-firstTrailingBit(~(~arg_1)));
    var var_1 = select(~reverseBits(vec4<u32>(arg_0.d | arg_0.d, 1u, ~arg_0.d, arg_0.d)), ~(~(~(~vec4<u32>(arg_0.d, 38243u, 6219u, 90403u)))), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.d, 1u)], false, global0[_wgslsmith_index_u32(arg_0.d, 1u)]), !vec4<bool>(arg_2, false, false, false), vec4<bool>(arg_0.a, any(vec2<bool>(true, false)), false | arg_0.a, arg_0.d >= 47644u)), vec4<bool>(-1145f >= _wgslsmith_f_op_f32(arg_0.b - arg_0.b), false, arg_0.a, !arg_0.a || !arg_2), vec4<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(61879u, 1u)], global0[_wgslsmith_index_u32(arg_0.d, 1u)], false, arg_2)), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(72587u, arg_0.d, arg_0.d), vec3<u32>(4294967295u, 25954u, 0u)) << (27413u % 32u), 1u)])));
    let var_2 = _wgslsmith_sub_u32(select(36804u, _wgslsmith_mult_u32(1u, var_1.x), true), arg_0.d);
    let var_3 = !select(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 1u)], u_input.a < u_input.a, arg_0.a), vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), arg_0.a)), false, arg_0.a), select(select(select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_2, arg_2, true), global0[_wgslsmith_index_u32(var_1.x, 1u)]), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(false, arg_0.a, true, false)), false, true), select(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(0u, 1u)], false), !vec3<bool>(false, arg_0.a, arg_2), !global0[_wgslsmith_index_u32(1u, 1u)])));
    global0 = array<bool, 1>();
    return -1326f;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = array<bool, 1>();
    var var_0 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(global0[_wgslsmith_index_u32(1u, 1u)], arg_0, -22495i, 67242u), u_input.a, false, vec2<f32>(arg_0, -1934f)))) * _wgslsmith_f_op_f32(min(194f, -1617f))), arg_1, max(4294967295u, 11710u)), ~firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), -43667i);
    global0 = array<bool, 1>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(0i, 25408i)) | vec2<i32>(countOneBits(1i), var_0.c), max(vec2<i32>(u_input.a, -7657i) | vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-2147483647i, var_0.a.c) << (vec2<u32>(var_0.b.x, 26208u) % vec2<u32>(32u))) >> (var_0.b.xy % vec2<u32>(32u))), var_0.a.c, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, ~arg_1), reverseBits(-12024i), -1i), u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.b, var_0.a.b, arg_0, arg_0), vec4<f32>(-112f, 1394f, -599f, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, 1023f, var_0.a.b, arg_0) + vec4<f32>(-925f, -947f, var_0.a.b, var_0.a.b)), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(var_0.b.x, 1u)]))) - vec4<f32>(386f, 1002f, arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, var_0.a.b, 344f, -594f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1264f, var_0.a.b)))))));
    return var_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    global0 = array<bool, 1>();
    var var_0 = !all(!vec3<bool>(2147483647i != u_input.a, false, !arg_0.x));
    let var_1 = Struct_3(func_2(-855f, ~((32445i & arg_1) >> (firstLeadingBit(1u) % 32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 39743u, 6776u), select(vec4<u32>(21216u, 39751u, 1u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), false)) << (abs(_wgslsmith_add_u32(47002u, 62881u)) % 32u), max(firstLeadingBit(~47705u), 81083u), 70036u, 0u), _wgslsmith_mult_i32(-arg_1, -2147483647i));
    global0 = array<bool, 1>();
    var_0 = any(arg_0);
    return func_2(var_1.a.b, -(_wgslsmith_sub_i32(abs(0i), u_input.a) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1, var_1.c), vec3<i32>(arg_1, -1i, 2147483647i)), arg_1, max(-19798i, 16574i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    global0 = array<bool, 1>();
    var var_0 = ~arg_2.b;
    var_0 = _wgslsmith_add_vec4_u32(firstTrailingBit(max(abs(firstLeadingBit(arg_2.b)), vec4<u32>(~0u, arg_0.d, 0u, reverseBits(47162u)))), vec4<u32>(0u, arg_0.d, 1u, 2831u));
    var_0 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(~var_0.x ^ 45271u, 4294967295u, max(arg_0.d, arg_1.c), firstLeadingBit(arg_2.a.d)), countOneBits(vec4<u32>(arg_0.d, arg_0.d, 4294967295u, arg_0.d))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.b), -1082f));
    return Struct_3(func_1(vec2<bool>(true | arg_1.a.a, all(!vec2<bool>(true, arg_2.a.a))), arg_2.c), max(firstTrailingBit(~(~vec4<u32>(arg_0.d, 34828u, arg_1.b.d, 1u))), vec4<u32>(var_0.x & arg_2.b.x, 18203u, _wgslsmith_mult_u32(1u, arg_1.b.d), _wgslsmith_dot_vec2_u32(arg_2.b.yx, select(vec2<u32>(20089u, var_0.x), vec2<u32>(6835u, 0u), vec2<bool>(arg_0.a, false))))), min(arg_2.c, arg_0.c) & (arg_0.c >> (50990u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(!vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(30262u, 1u)], false, global0[_wgslsmith_index_u32(20352u, 1u)], false)), global0[_wgslsmith_index_u32(~1u, 1u)]), 17621i), Struct_2(func_2(_wgslsmith_f_op_f32(369f + _wgslsmith_f_op_f32(-120f - 137f)), u_input.a), Struct_1(_wgslsmith_f_op_f32(select(-1366f, -828f, global0[_wgslsmith_index_u32(4294967295u, 1u)])) <= 234f, _wgslsmith_f_op_f32(1131f * 1155f), _wgslsmith_mult_i32(u_input.a, 1i), 1u), 1u), Struct_3(Struct_1(!(!global0[_wgslsmith_index_u32(5718u, 1u)]), 1f, u_input.a, _wgslsmith_mod_u32(min(0u, 0u), abs(37934u))), ~vec4<u32>(countOneBits(1790u), 1u, ~1u, 0u), -1i), all(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(103050u, 1u)], global0[_wgslsmith_index_u32(94267u, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(15569u, 1u)], true), true), select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 1u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 1u)], true, false), select(true, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])), true)));
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(~80554u, 1u)], false, any(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.d, 1u)], var_0.a.b == 361f, func_2(1962f, var_0.c).a)), ~(-5353i) >= var_0.a.c);
    let var_2 = vec3<f32>(func_2(var_0.a.b, var_0.a.c).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1097f + _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b))))), _wgslsmith_f_op_f32(-var_0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

