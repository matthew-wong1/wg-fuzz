struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-638f, vec3<i32>(52442i, 2147483647i, -1i), 1u, true, 5855i), Struct_1(1000f, vec3<i32>(-52697i, 1i, 0i), 4294967295u, false, 12684i), Struct_1(-532f, vec3<i32>(30731i, -1i, 2147483647i), 4294967295u, false, 1i), Struct_1(1956f, vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 56380u, false, 5178i), Struct_1(-1545f, vec3<i32>(3308i, 1i, -45567i), 20922u, true, 26463i), Struct_1(435f, vec3<i32>(56589i, 44270i, -12408i), 9255u, false, 12284i), Struct_1(190f, vec3<i32>(i32(-2147483648), 1i, 2147483647i), 55129u, true, -1i), Struct_1(-641f, vec3<i32>(0i, 1i, i32(-2147483648)), 163u, true, 13255i), Struct_1(1000f, vec3<i32>(1i, -1i, 2147483647i), 1u, false, -1i));

var<private> global1: array<i32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, -187f)));
    global1 = array<i32, 31>();
    var var_1 = vec2<i32>(29485i ^ u_input.a, reverseBits(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)] << (min(1u, 4294967295u) % 32u), u_input.a)));
    return 32914i;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 9u)];
    global1 = array<i32, 31>();
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(arg_1.a)), ~(~arg_1.b), 0u, func_2(func_2(Struct_1(_wgslsmith_f_op_f32(ceil(1769f)), arg_1.b, ~arg_2.c, any(vec4<bool>(arg_0, arg_0, arg_2.d, false)), countOneBits(-408i)))).d, 1i << (arg_1.c % 32u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - _wgslsmith_f_op_f32(arg_2.a * var_0.a)))) - _wgslsmith_f_op_f32(step(1849f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1272f)))))) + _wgslsmith_f_op_f32(abs(966f)));
    let var_2 = !all(vec3<bool>(false, select(true, any(vec2<bool>(var_0.d, true)), true), false));
    var var_3 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-1948f - arg_1.a), vec3<i32>(u_input.a, 1i, u_input.a) >> (vec3<u32>(arg_2.c, arg_2.c, arg_1.c) % vec3<u32>(32u)), arg_1.c, arg_2.d, -1i))));
    let var_4 = vec4<u32>(~(~firstLeadingBit(var_3.c)) >> (3844u % 32u), ~_wgslsmith_clamp_u32(var_3.c, abs(var_3.c), 0u) << (4294967295u % 32u), ~1u, select(~(~var_3.c), 4420u, true));
    return vec3<bool>(var_3.d, !all(select(!vec4<bool>(false, arg_0, var_3.d, true), select(vec4<bool>(arg_2.d, true, false, var_3.d), vec4<bool>(true, var_2, var_2, arg_1.d), arg_2.d), !vec4<bool>(arg_1.d, var_3.d, var_0.d, arg_1.d))), ~arg_1.c != (_wgslsmith_mult_u32(arg_1.c, min(var_4.x, var_4.x)) | select(_wgslsmith_dot_vec4_u32(var_4, vec4<u32>(63286u, var_3.c, 52645u, var_4.x)), _wgslsmith_dot_vec2_u32(var_4.wx, vec2<u32>(arg_2.c, 4294967295u)), true | var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | all(vec4<bool>(!any(vec2<bool>(false, false)), !any(vec2<bool>(false, false)), max(u_input.a, 0i) < func_1(true, u_input.a), true));
    let var_1 = vec2<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    global0 = array<Struct_1, 9>();
    var_0 = all(!select(!select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, false)), func_3(var_1.x, func_2(global0[_wgslsmith_index_u32(39869u, 9u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(46718u, 0u), 9u)]), any(vec4<bool>(true, var_1.x, false, false))));
    global0 = array<Struct_1, 9>();
    var var_2 = u_input.a << (abs(~(~1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(global0[_wgslsmith_index_u32(select(1u, _wgslsmith_mult_u32(abs(56952u), 30921u), true), 9u)]).a, 1u);
}

