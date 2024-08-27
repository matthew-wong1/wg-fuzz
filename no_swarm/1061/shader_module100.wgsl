struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, true, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> bool {
    var var_0 = 2147483647i;
    var var_1 = vec4<bool>(false, (arg_1.x && any(arg_1.yw)) && global1.b.x, arg_1.x, false);
    return all(select(var_1.zyw, vec3<bool>(var_1.x, arg_1.x, all(arg_1.xz)), true));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    var var_0 = ~(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_0), arg_0, 7398u, arg_0) << (~firstLeadingBit(abs(vec4<u32>(u_input.b.x, global1.a, arg_0, 88324u))) % vec4<u32>(32u)));
    global1 = Struct_1(global1.a, select(select(global1.b, !(!global1.b), select(!global1.b, global1.b, select(global1.b, global1.b, vec2<bool>(global1.b.x, global1.b.x)))), vec2<bool>(!all(vec3<bool>(false, false, false)), func_3(0i, select(vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x), global3[_wgslsmith_index_u32(arg_0, 1u)], global1.b.x))), select(!vec2<bool>(global1.b.x, false), select(select(global1.b, global1.b, vec2<bool>(global1.b.x, false)), global1.b, !global1.b), false)));
    return (!(true & global1.b.x) || any(select(select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, global1.b.x, false), false), vec3<bool>(false, true, global1.b.x), select(vec3<bool>(global1.b.x, false, true), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(true, false, true))))) && select(true, all(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 24294u), 1u)]), func_3(u_input.a.x, global3[_wgslsmith_index_u32(arg_0, 1u)]));
}

fn func_1() -> f32 {
    var var_0 = select(!select(vec3<bool>(true, func_2(global1.a, vec3<i32>(u_input.a.x, u_input.a.x, -36496i), Struct_2(global2.x)), false), select(!vec3<bool>(false, global1.b.x, global1.b.x), select(vec3<bool>(global1.b.x, true, true), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), vec3<bool>(true, global1.b.x, global1.b.x)), vec3<bool>(false, true, global1.b.x)), global1.b.x), select(!vec3<bool>(global1.b.x, !global1.b.x, true), vec3<bool>(global1.b.x, true, _wgslsmith_f_op_f32(772f * 530f) == global2.x), true), select(vec3<bool>(global1.b.x || !global1.b.x, select(4294967295u <= u_input.b.x, false, false), !(!global1.b.x)), !select(select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(true, global1.b.x, global1.b.x)), select(vec3<bool>(true, global1.b.x, false), vec3<bool>(global1.b.x, false, global1.b.x), global1.b.x), global1.b.x), vec3<bool>(true, true, any(vec2<bool>(global1.b.x, global1.b.x)))));
    global3 = array<vec4<bool>, 1>();
    global3 = array<vec4<bool>, 1>();
    let var_1 = global2.x;
    var var_2 = abs(vec3<u32>(64386u, 4294967295u, u_input.b.x) & (vec3<u32>(~4294967295u, 4294967295u & global1.a, u_input.b.x) << (~vec3<u32>(22508u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))));
    return _wgslsmith_div_f32(122f, global2.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec2<i32>(~(-2147483647i | (i32(-1i) * -u_input.a.x)), min(u_input.a.x, -2147483647i));
    global1 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(815f, 1254f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f + -1686f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(trunc(arg_1.a))))), global2.x, _wgslsmith_f_op_f32(-arg_1.a));
    var var_2 = ~(~vec4<u32>(28046u, _wgslsmith_sub_u32(~u_input.b.x, 1u), 45118u, ~1u));
    var_2 = vec4<u32>(4294967295u, countOneBits(_wgslsmith_clamp_u32(select(_wgslsmith_add_u32(0u, 66979u), reverseBits(u_input.b.x), 7016u == global1.a), var_2.x, countOneBits(0u & u_input.b.x))), 93143u, 28814u);
    return Struct_2(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~select(_wgslsmith_sub_u32(36574u, 0u), select(u_input.b.x, global1.a, global1.b.x), false), select(select(vec2<bool>(true, true), global1.b, vec2<bool>(global1.b.x, global1.b.x)), select(vec2<bool>(false, true), !global1.b, select(global1.b, global1.b, false)), global1.b)), Struct_2(_wgslsmith_f_op_f32(func_1())));
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(step(878f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), 1120f))), global2.x, _wgslsmith_div_f32(-1102f, -936f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -133f), var_0.a, 315f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(372f, var_0.a, var_0.a, global2.x) * vec4<f32>(1928f, global2.x, 769f, var_0.a))))))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 903f, global2.x, 672f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-335f, -329f, global2.x, 723f)) - vec4<f32>(1092f, var_0.a, 668f, 547f)))));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x | _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 170667u, u_input.b.x), vec3<u32>(global1.a, u_input.b.x, 0u))), 4294967295u), ~abs(u_input.b.x)), 22u)];
    global1 = Struct_1(27248u, select(!vec2<bool>(select(false, global1.b.x, false), false), !vec2<bool>(!global1.b.x, true && global1.b.x), vec2<bool>(false, func_2(0u, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), u_input.a.wwz), Struct_2(global2.x)))));
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -726f)), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, global2.x, false))))), _wgslsmith_f_op_vec3_f32(min(global2.ywx, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, var_0.a, _wgslsmith_f_op_f32(332f - -591f)))))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global1.a, 6996u, u_input.b.x)), select(countOneBits(vec3<u32>(4294967295u, u_input.b.x, 0u)), vec3<u32>(u_input.b.x, 44319u, u_input.b.x), true)), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(u_input.b.x), ~52515u, _wgslsmith_mult_u32(3962u, u_input.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, global1.a), _wgslsmith_mod_vec3_u32(vec3<u32>(5u, global1.a, u_input.b.x), vec3<u32>(global1.a, global1.a, 48900u))))), global2.zy);
}

