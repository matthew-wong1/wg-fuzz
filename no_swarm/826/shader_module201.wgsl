struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~vec3<u32>(9156u, ~1u, firstTrailingBit(0u)));
    var var_1 = Struct_1(vec3<u32>(1u, ~4294967295u, ~(~_wgslsmith_clamp_u32(arg_0.a.x, 21257u, u_input.d.x))));
    global0 = arg_2;
    var var_2 = arg_2;
    var var_3 = var_0;
    return Struct_1(var_0.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - -747f);
    var var_1 = Struct_1(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14296u, 0u, 25028u, arg_0), vec4<u32>(14901u, global0.a.x, 4294967295u, arg_0)), func_1(arg_1, vec3<bool>(true, arg_3, true), arg_1).a.x, u_input.b.x) & global1[_wgslsmith_index_u32(0u, 7u)], vec3<u32>(1u, u_input.d.x, 1u) & (~u_input.b.yxy & (u_input.b.wyx >> (arg_1.a % vec3<u32>(32u)))), true));
    var_0 = _wgslsmith_f_op_f32(ceil(arg_2.x));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(342f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(1608f, 1503f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, arg_2.x, 1085f) - vec3<f32>(arg_2.x, arg_2.x, arg_2.x)))))));
    return vec2<bool>(true, !arg_3 && (~(-u_input.c) == select(-u_input.c, -2147483647i, !arg_3)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = !(!select(select(vec2<bool>(true, false), func_3(4294967295u, Struct_1(vec3<u32>(u_input.d.x, u_input.b.x, global0.a.x)), vec2<f32>(-221f, -1682f), false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true));
    var var_1 = vec3<bool>(false, all(global2[_wgslsmith_index_u32(93348u, 31u)]), var_0.x);
    global0 = func_1(Struct_1(~vec3<u32>(4294967295u, _wgslsmith_mult_u32(global0.a.x, arg_1), select(16019u, 0u, false))), select(select(select(!vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), all(vec3<bool>(true, var_0.x, var_0.x))), select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_0.x, var_1.x, false), var_1.x), true), !vec3<bool>(var_0.x, var_0.x || false, select(false, var_1.x, true)), !vec3<bool>(u_input.d.x < arg_0.a.x, all(vec3<bool>(true, false, false)), true)), arg_0);
    let var_2 = u_input.c << (6462u % 32u);
    let var_3 = func_1(func_1(func_1(arg_0, vec3<bool>(var_1.x, var_1.x, var_1.x), arg_0), vec3<bool>(select(true, true, false), arg_1 >= abs(24394u), var_0.x), arg_0), vec3<bool>(true, var_0.x, 1u >= u_input.b.x), Struct_1(~u_input.b.zxx));
    return -(-2147483647i >> (_wgslsmith_add_u32(~var_3.a.x, _wgslsmith_clamp_u32(u_input.d.x, 1150u, ~global0.a.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(func_1(Struct_1(global0.a), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), all(vec2<bool>(false, true)), true), Struct_1(vec3<u32>(_wgslsmith_mod_u32(global0.a.x, 69738u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 4294967295u, 0u, 70460u)), ~1u))), ~43905u);
    var var_1 = func_1(func_1(func_1(func_1(func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<bool>(true, false, true), Struct_1(global1[_wgslsmith_index_u32(3781u, 7u)])), vec3<bool>(true, true, true), func_1(Struct_1(vec3<u32>(u_input.d.x, 33297u, 13051u)), vec3<bool>(true, false, false), Struct_1(global1[_wgslsmith_index_u32(64496u, 7u)]))), vec3<bool>(true, true, true), func_1(Struct_1(vec3<u32>(107310u, 43323u, 15081u)), vec3<bool>(true, true, true), Struct_1(global0.a))), vec3<bool>(true, true, true), func_1(Struct_1(firstTrailingBit(u_input.b.xwy)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(global0.a.x, u_input.b.x, global0.a.x)))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_1(global1[_wgslsmith_index_u32(abs(u_input.b.x), 7u)]));
    var var_2 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), 1424u >= var_1.a.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), !vec3<bool>(2147483647i < u_input.a.x, true, true), !vec3<bool>(true, false, -28462i >= u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1181f))), -1171f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1574f)), _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-982f, -131f, true)) * _wgslsmith_f_op_f32(step(377f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1538f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(902f, -672f, -1000f))))), _wgslsmith_mult_i32(45636i, -41277i));
}

