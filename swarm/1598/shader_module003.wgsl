struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(10696i, 2147483647i, -15709i, i32(-2147483648), 13820i, i32(-2147483648), -37725i, -1i, 2147483647i, 0i, -33209i, -1i, 2147483647i, -1i, 2147483647i, 56784i, -1i);

var<private> global1: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(5307i, 0i, -17961i), vec3<i32>(31125i, 87378i, 0i), vec3<i32>(48301i, i32(-2147483648), -17703i), vec3<i32>(2176i, 13061i, 1i), vec3<i32>(2147483647i, 2147483647i, 22778i), vec3<i32>(0i, 1i, -25864i), vec3<i32>(i32(-2147483648), 2147483647i, -4345i), vec3<i32>(0i, 708i, 2147483647i), vec3<i32>(1i, -44132i, 1i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(1i, -49421i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 4287i));

var<private> global2: vec4<u32> = vec4<u32>(10579u, 0u, 16483u, 13582u);

var<private> global3: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(5701u, vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(20559u, 12468u), false, true, 4294967295u)), Struct_3(4294967295u, vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(40988u, 1u), false, false, 108362u)), Struct_3(1u, vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(7279u, 13419u), true, false, 0u)), Struct_3(1u, vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(0u, 4294967295u), true, true, 71970u)), Struct_3(4294967295u, vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(0u, 6229u), true, true, 1u)), Struct_3(81114u, vec4<bool>(true, false, true, true), Struct_2(vec2<u32>(1u, 83167u), false, false, 16995u)), Struct_3(4294967295u, vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(0u, 0u), false, false, 1u)), Struct_3(1u, vec4<bool>(false, true, true, false), Struct_2(vec2<u32>(7506u, 4294967295u), true, false, 42739u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    global2 = vec4<u32>(_wgslsmith_div_u32(global2.x, _wgslsmith_clamp_u32(~(~49596u), global2.x, (4294967295u & global2.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.x, global2.x, 83144u), vec4<u32>(global2.x, 0u, 4294967295u, 4294967295u)))), 84645u, 0u, _wgslsmith_add_u32(global2.x, global2.x ^ 12403u) >> (reverseBits(max(~0u, _wgslsmith_add_u32(30167u, 8022u))) % 32u));
    var var_0 = !vec3<bool>(!(global2.x <= _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 4294967295u, 4294967295u), global2.yxw)), any(vec3<bool>(all(vec3<bool>(true, false, true)), true, false)), !(!select(true, false, false)));
    global0 = array<i32, 17>();
    var var_1 = Struct_1(vec3<bool>(false, var_0.x, !(true && var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2394f, 273f, true))) + _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1851f, 1000f, true)))))), var_0.xy);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_1.b)), 196f)) * 1f);
    return var_1.a.zx;
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2223f)) + arg_0.b.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(529f, -135f), arg_0.b), _wgslsmith_f_op_vec2_f32(-arg_0.b)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(126f, -1036f)), vec2<f32>(-613f, 703f)))));
    global3 = array<Struct_3, 8>();
    global3 = array<Struct_3, 8>();
    var var_1 = vec2<bool>(true, any(arg_0.a.d));
    let var_2 = Struct_4(Struct_1(arg_0.a.a, var_0.x, 1801f, func_3()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, 428f)))), arg_0.b) + _wgslsmith_f_op_vec2_f32(max(arg_0.b, arg_0.b))), 2147483647i);
    return Struct_5(2147483647i > u_input.d.x, Struct_2(~global2.yx, true, var_1.x && var_1.x, _wgslsmith_mult_u32(global2.x, global2.x)), 101750u, Struct_2(vec2<u32>(global2.x, ~global2.x & 1u), arg_0.a.d.x, select(false, (var_0.x < var_0.x) && (arg_0.c > 2147483647i), !var_2.a.d.x), ~global2.x));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> u32 {
    let var_0 = ~global2.x;
    var var_1 = arg_1;
    var var_2 = Struct_4(Struct_1(!select(select(vec3<bool>(arg_0.d.c, false, false), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.a, false)), vec3<bool>(arg_0.a, true, false), arg_0.d.b && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-147f, 856f)) - _wgslsmith_f_op_f32(trunc(-1140f)))), -1192f, vec2<bool>(arg_0.a, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2033f, -300f))), -70056i);
    let var_3 = ~vec2<u32>(arg_0.d.a.x, global2.x & _wgslsmith_add_u32(var_0, _wgslsmith_div_u32(98404u, 97032u)));
    global3 = array<Struct_3, 8>();
    return 1u;
}

fn func_1(arg_0: f32) -> bool {
    global0 = array<i32, 17>();
    let var_0 = vec2<u32>(global2.x, reverseBits(0u));
    var var_1 = vec3<bool>(!(var_0.x < ~global2.x) || (~(~17215u) > global2.x), true, true);
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(1u), _wgslsmith_mod_u32(40025u, global2.x)) >> (1u % 32u), func_4(func_2(Struct_4(Struct_1(vec3<bool>(false, var_1.x, false), 361f, arg_0, vec2<bool>(var_1.x, var_1.x)), vec2<f32>(arg_0, arg_0), -16200i)), 114578u));
    global3 = array<Struct_3, 8>();
    return arg_0 != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))), -2237f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -941f), -1003f));
    global0 = array<i32, 17>();
    let var_1 = select(vec4<bool>(true, all(vec4<bool>(true, var_0.x < var_0.x, true, 21592u == global2.x)), false, !any(vec2<bool>(true, true))), select(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, true))), !select(vec4<bool>(any(vec3<bool>(false, false, true)), select(true, true, false), true, true), vec4<bool>(true, false, true, func_1(-1768f)), vec4<bool>(true, true, true, true)));
    var var_2 = all(select(vec4<bool>(firstLeadingBit(global0[_wgslsmith_index_u32(global2.x, 17u)]) > _wgslsmith_add_i32(0i, global0[_wgslsmith_index_u32(4294967295u, 17u)]), true, reverseBits(global2.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(49794u, 4294967295u, global2.x, 34808u), vec4<u32>(global2.x, global2.x, 4294967295u, 42710u)), true), !var_1, vec4<bool>(false, any(vec2<bool>(false, var_1.x)), true, var_1.x)));
    var_2 = !(!var_1.x && func_2(Struct_4(Struct_1(vec3<bool>(var_1.x, var_1.x, false), var_0.x, 1269f, var_1.zx), _wgslsmith_f_op_vec2_f32(ceil(var_0)), -u_input.b)).d.c);
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(global2.x, 33294u, 1u)) & global2.x, 17u)], u_input.d, _wgslsmith_f_op_f32(-var_0.x));
}

