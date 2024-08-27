struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 6> = array<f32, 6>(629f, -195f, -1747f, -140f, -425f, 1309f);

var<private> global2: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(43929u, Struct_2(Struct_1(1080f, 6233i, false, vec2<bool>(true, true))), Struct_1(-1908f, 7846i, true, vec2<bool>(true, false))), Struct_4(1u, Struct_2(Struct_1(1357f, -1i, false, vec2<bool>(false, false))), Struct_1(-310f, -30876i, false, vec2<bool>(false, true))), Struct_4(57142u, Struct_2(Struct_1(-648f, i32(-2147483648), false, vec2<bool>(false, false))), Struct_1(1296f, 2147483647i, true, vec2<bool>(false, false))), Struct_4(26935u, Struct_2(Struct_1(-592f, 1i, false, vec2<bool>(true, true))), Struct_1(257f, 1i, true, vec2<bool>(false, true))), Struct_4(20253u, Struct_2(Struct_1(457f, -7636i, false, vec2<bool>(true, true))), Struct_1(750f, -5756i, true, vec2<bool>(true, false))));

var<private> global3: vec4<f32>;

var<private> global4: array<f32, 20> = array<f32, 20>(377f, 215f, 1964f, -129f, 325f, 3027f, 764f, 411f, 384f, -1196f, 1574f, -1207f, -1054f, 218f, -1000f, -156f, 624f, -796f, 1000f, -2002f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = ~(i32(-1i) * -12926i);
    let var_1 = _wgslsmith_mod_vec4_i32(firstLeadingBit(u_input.a << (~select(vec4<u32>(2720u, 4294967295u, 106530u, 14568u), vec4<u32>(0u, 0u, 48995u, 4294967295u), global0.b.d.x) % vec4<u32>(32u))), u_input.a);
    let var_2 = vec2<bool>(!(!(!arg_0.x) && arg_0.x), false);
    global4 = array<f32, 20>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f - global3.x) + -189f) >= 431f;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_f32(round(global0.a.x))), global0.b.a, global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_f32(floor(-2161f))));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = ~38433u;
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(!arg_0.xxy));
    let var_2 = vec2<bool>(true, global0.b.d.x);
    global4 = array<f32, 20>();
    var var_3 = Struct_2(global0.b);
    return Struct_2(Struct_1(-1277f, _wgslsmith_mult_i32(~1i, -1i), true, !vec2<bool>(arg_0.x, !var_2.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_2 {
    global2 = array<Struct_4, 5>();
    return func_2(!(!(!vec4<bool>(arg_1.x, arg_1.x, false, arg_2.x))), _wgslsmith_f_op_f32(-func_2(vec4<bool>(select(arg_0.a.d.x, arg_1.x, global0.b.d.x), arg_3.b.b > 34504i, any(arg_1), any(vec4<bool>(false, false, arg_1.x, arg_0.a.d.x))), global3.x).a.a));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2802f + 1320f), arg_0.c.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(737f, arg_0.b.a.a))), arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2004f), 116f), _wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(arg_0.b.a.a + _wgslsmith_f_op_f32(arg_2.c.a * global4[_wgslsmith_index_u32(45963u, 20u)])))));
    var var_0 = Struct_5(vec2<f32>(-932f, _wgslsmith_div_f32(-1141f, _wgslsmith_div_f32(1022f, arg_2.c.a))), func_4(func_2(select(select(vec4<bool>(arg_2.b.a.c, true, global0.b.c, arg_1), vec4<bool>(global0.b.c, true, arg_1, true), vec4<bool>(arg_1, true, true, arg_2.c.c)), vec4<bool>(arg_2.c.d.x, false, arg_1, arg_1), vec4<bool>(global0.b.d.x, true, false, arg_1)), arg_0.b.a.a), vec2<bool>(~4294967295u > (arg_2.a | arg_2.a), true), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1, true), !vec3<bool>(arg_1, arg_1, false)), vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, arg_2.b.a.d.x, true))), vec3<bool>(false, func_2(vec4<bool>(arg_2.b.a.c, global0.b.d.x, arg_1, false), global3.x).a.d.x, 1u > arg_0.a)), Struct_5(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, global1[_wgslsmith_index_u32(5203u, 6u)], true)), _wgslsmith_f_op_f32(arg_2.c.a - 592f)), Struct_1(_wgslsmith_f_op_f32(-arg_2.c.a), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), global3.x > arg_2.b.a.a, global0.b.d))).a);
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a))), func_4(func_2(vec4<bool>(true, true, false, !arg_1), 527f), vec2<bool>((arg_1 | true) || true, false), vec3<bool>(true, var_0.b.d.x, false), Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, 1110f)), func_2(!vec4<bool>(arg_0.b.a.d.x, true, arg_0.c.d.x, arg_1), global1[_wgslsmith_index_u32(countOneBits(arg_2.a), 6u)]).a)).a);
    let var_2 = Struct_4(((_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_2.a, 125546u), vec3<u32>(arg_0.a, arg_0.a, arg_0.a)) ^ firstLeadingBit(arg_2.a)) << (4294967295u % 32u)) << ((_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2.a, 32480u), 37791u) << (_wgslsmith_sub_u32(arg_2.a, _wgslsmith_clamp_u32(0u, arg_0.a, 1u)) % 32u)) % 32u), func_2(select(select(!vec4<bool>(true, arg_0.c.d.x, false, var_0.b.d.x), vec4<bool>(var_1.b.d.x, var_0.b.c, arg_0.c.c, arg_1), select(vec4<bool>(arg_1, arg_1, global0.b.c, true), vec4<bool>(true, arg_1, false, false), false)), vec4<bool>(false, true, arg_1, !global0.b.c), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, 4294967295u), 20u)] <= -724f), _wgslsmith_f_op_f32(-func_2(!vec4<bool>(arg_0.b.a.c, var_1.b.d.x, var_0.b.d.x, false), -651f).a.a)), var_1.b);
    var var_3 = Struct_3(func_2(!(!(!vec4<bool>(var_0.b.d.x, global0.b.d.x, false, arg_2.c.d.x))), var_1.b.a));
    return func_2(!select(!vec4<bool>(arg_2.b.a.c, global0.b.c, true, false), !select(vec4<bool>(false, var_2.b.a.c, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, var_1.b.c)), true), global3.x).a;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xw * _wgslsmith_f_op_vec2_f32(global3.wy * global0.a)))));
    global0 = Struct_5(global0.a, func_5(Struct_4(arg_1.x | 0u, func_4(func_2(vec4<bool>(arg_2, global0.b.c, false, true), -282f), vec2<bool>(global0.b.d.x, true), select(vec3<bool>(arg_2, false, true), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, false)), Struct_5(var_0, Struct_1(global0.b.a, -28977i, true, global0.b.d))), func_4(func_4(Struct_2(global0.b), vec2<bool>(true, arg_2), vec3<bool>(arg_2, true, true), Struct_5(vec2<f32>(var_0.x, global4[_wgslsmith_index_u32(arg_0, 20u)]), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 20u)], 30121i, arg_2, global0.b.d))), !vec2<bool>(false, global0.b.d.x), vec3<bool>(global0.b.d.x, arg_2, global0.b.c), Struct_5(vec2<f32>(546f, -904f), global0.b)).a), global0.b.c, global2[_wgslsmith_index_u32(arg_0, 5u)]));
    global4 = array<f32, 20>();
    let var_1 = countOneBits(max(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(927u, 0u, arg_0), arg_1), ~arg_1.x), arg_1.zx));
    var var_2 = global0.b.d.x;
    return global3.yx;
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_5) -> Struct_2 {
    var var_0 = arg_2.b.c;
    var_0 = arg_0.x <= _wgslsmith_f_op_f32(exp2(arg_0.x));
    var var_1 = false;
    return func_2(!(!(!(!vec4<bool>(arg_1.a.a.c, false, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -634f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.a + global3.xx), _wgslsmith_f_op_vec2_f32(abs(global3.zx)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_1(1u, vec3<u32>(9292u, 31082u, 1465u), false)))), global0.b.d)), Struct_3(func_2(vec4<bool>(false, false, false, true), _wgslsmith_f_op_f32(-1000f * global0.a.x))), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yx)), func_5(global2[_wgslsmith_index_u32(56227u, 5u)], global0.b.b <= global0.b.b, Struct_4(1u, Struct_2(global0.b), Struct_1(global3.x, -2147483647i, global0.b.d.x, vec2<bool>(true, true)))))));
    global2 = array<Struct_4, 5>();
    var var_1 = global0.a;
    var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global4[_wgslsmith_index_u32(~countOneBits(select(1u, 38840u, global0.b.d.x)), 20u)], _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(49349u, 20u)] - var_0.a.a.a) + -1184f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global3.wx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, 789f)), vec2<f32>(876f, var_1.x), var_0.a.a.d.x)), all(select(vec4<bool>(var_0.a.a.d.x, var_0.a.a.c, false, var_0.a.a.c), vec4<bool>(false, true, true, false), vec4<bool>(true, var_0.a.a.c, var_0.a.a.d.x, global0.b.d.x)))))), true));
    global4 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(false, global0.b.c, global0.b.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global0.b.a, global3.x, global0.b.a) - vec4<f32>(global0.b.a, global1[_wgslsmith_index_u32(33473u, 6u)], global3.x, 134f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-171f, var_0.a.a.a, 1920f, -718f)))))));
}

