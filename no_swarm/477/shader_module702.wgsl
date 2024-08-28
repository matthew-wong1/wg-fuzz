struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-221f, 74615u), Struct_1(-734f, 55797u), Struct_1(-932f, 9909u), Struct_1(-286f, 0u), Struct_1(-969f, 4294967295u), Struct_1(-1166f, 4294967295u), Struct_1(1337f, 80787u), Struct_1(258f, 0u), Struct_1(1287f, 1u), Struct_1(-1038f, 92696u), Struct_1(928f, 27918u), Struct_1(984f, 42640u), Struct_1(-1080f, 0u));

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> vec3<i32> {
    global1 = array<Struct_1, 13>();
    global3 = array<vec3<bool>, 24>();
    let var_0 = 53147u;
    let var_1 = Struct_2(-u_input.c.x);
    global1 = array<Struct_1, 13>();
    return -u_input.c;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)))))));
    let var_1 = select(vec4<bool>(all(!(!global3[_wgslsmith_index_u32(u_input.a, 24u)])), select((i32(-1i) * -50919i) != u_input.c.x, true, u_input.c.x > 1i), !any(vec3<bool>(true, false, true)) && true, select(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)), true, true)), vec4<bool>(false, false, false, true), true);
    let var_2 = select(select(vec4<bool>(var_1.x & false, any(var_1.zx), var_1.x == !var_1.x, var_1.x), !vec4<bool>(all(var_1.xy), any(vec3<bool>(true, var_1.x, false)), var_1.x == var_1.x, all(vec4<bool>(false, false, var_1.x, true))), var_1.x), vec4<bool>(true, false, !(!var_1.x), u_input.a >= 1u), !select(vec4<bool>(all(vec3<bool>(false, var_1.x, false)), var_1.x, var_1.x, false), !select(var_1, var_1, var_1.x), !var_1.x));
    let var_3 = 4294967295u;
    global1 = array<Struct_1, 13>();
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(arg_2.a);
    return select(!(!select(select(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(1u, 24u)], false), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))), select(select(!global3[_wgslsmith_index_u32(~u_input.a, 24u)], select(global3[_wgslsmith_index_u32(arg_1.b, 24u)], vec3<bool>(false, false, true), any(vec4<bool>(true, true, true, false))), false), global3[_wgslsmith_index_u32(u_input.a, 24u)], false), !(!(!any(vec2<bool>(true, true)))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, ~u_input.b.x, u_input.a ^ max(25276u, _wgslsmith_dot_vec2_u32(vec2<u32>(21104u, u_input.b.x), vec2<u32>(9124u, 8645u)))), countOneBits(vec3<u32>(75247u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 26884u, 15713u, 0u), vec4<u32>(1u, 37429u, 4294967295u, 29254u))), 51962u))), 13u)];
    var var_1 = 1u;
    var var_2 = Struct_2(u_input.c.x);
    let var_3 = Struct_2(_wgslsmith_clamp_i32(var_2.a, 1i | (2147483647i >> (var_0.b % 32u)), firstTrailingBit(1i)));
    var var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1772f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f))), _wgslsmith_div_f32(_wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(sign(var_0.a))))), -831f), var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1321f))));
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_5(arg_0.a, func_4(arg_0.a, Struct_1(arg_0.a, _wgslsmith_clamp_u32(arg_0.b, func_3(), _wgslsmith_div_u32(u_input.b.x, u_input.b.x))), Struct_2(~u_input.c.x))));
    let var_1 = 1i;
    let var_2 = Struct_2(var_1);
    let var_3 = !vec3<bool>(arg_2, arg_2, true);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 836f;
    let var_1 = i32(-1i) * -1i;
    global0 = array<vec2<bool>, 20>();
    global2 = all(!vec3<bool>(false, u_input.c.x < -18306i, any(vec3<bool>(true, false, false)))) | (~u_input.b.x < 5253u);
    global1 = array<Struct_1, 13>();
    let var_2 = vec4<f32>(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -472f))), _wgslsmith_f_op_f32(select(518f, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), ~66961u <= _wgslsmith_mod_u32(countOneBits(u_input.a), u_input.a))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec2<i32>(u_input.c.x, 1i), abs(u_input.c.xz), true) | -vec2<i32>(i32(-1i) * -52023i, 1i), func_1(577f, 1805f, var_2.wzz), abs(vec2<u32>(39200u, func_2(Struct_1(1964f, 1u), Struct_2(var_1), true))) >> (vec2<u32>(~31289u, abs(u_input.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1710f, -106f)))))), abs(u_input.c));
}

