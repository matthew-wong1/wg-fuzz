struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true, vec4<bool>(true, false, true, false), vec2<u32>(0u, 0u), false, 0u), Struct_1(false, vec4<bool>(false, false, false, false), vec2<u32>(1u, 4294967295u), false, 107023u), Struct_1(false, vec4<bool>(true, true, false, false), vec2<u32>(9496u, 12316u), true, 48566u), Struct_1(false, vec4<bool>(true, true, false, true), vec2<u32>(1u, 26959u), true, 7208u), Struct_1(true, vec4<bool>(true, true, true, true), vec2<u32>(67136u, 1u), false, 0u), Struct_1(false, vec4<bool>(false, true, false, false), vec2<u32>(37443u, 4294967295u), false, 0u), Struct_1(true, vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 0u), false, 54042u), Struct_1(true, vec4<bool>(true, false, true, true), vec2<u32>(38302u, 53015u), true, 20187u), Struct_1(false, vec4<bool>(true, true, true, false), vec2<u32>(0u, 62139u), true, 0u), Struct_1(true, vec4<bool>(false, true, true, false), vec2<u32>(31917u, 83395u), true, 0u), Struct_1(false, vec4<bool>(false, true, false, true), vec2<u32>(69767u, 4294967295u), true, 1u));

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    global1 = vec3<u32>(_wgslsmith_clamp_u32(1u, global1.x, 1u), ~abs(~_wgslsmith_sub_u32(0u, 0u)), 21331u);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(992f, arg_1, 158f)))))))));
    global0 = array<Struct_1, 11>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 268f))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    global0 = array<Struct_1, 11>();
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1144f, arg_2.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(arg_3, -1606f, vec3<i32>(-36877i, u_input.a, 1i))), _wgslsmith_f_op_f32(685f * arg_2.x)))), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(1014f - arg_2.x)), true);
    global0 = array<Struct_1, 11>();
    global1 = ~vec3<u32>(31368u | global1.x, 12903u, global1.x);
    let var_1 = -2147483647i;
    return arg_2.x;
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = global1.xz << (vec2<u32>(abs(~_wgslsmith_div_u32(global1.x, 0u)), global1.x) % vec2<u32>(32u));
    var_0 = global1.xz;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(245f + 950f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1710f, -242f)), _wgslsmith_f_op_f32(func_2(vec3<u32>(var_0.x, 63388u, var_0.x), 79516u, vec2<f32>(-774f, 287f), true))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1000f, -1458f, true)), _wgslsmith_div_f32(-601f, 1000f), _wgslsmith_f_op_f32(var_1.x * 946f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(var_0.x, var_0.x, 96401u), 9168u, var_1.yy, false)), var_1.x, _wgslsmith_f_op_f32(trunc(930f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1098f, var_1.x, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f, _wgslsmith_f_op_f32(-var_1.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), select(false, true, false))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -677f), var_1.x, _wgslsmith_f_op_f32(-405f + var_1.x))))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return arg_0.x & countOneBits(_wgslsmith_mult_i32(arg_0.x, -(~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(~u_input.b, 0i, _wgslsmith_mod_i32(2147483647i, u_input.b) ^ 1i)), func_1(vec2<i32>(abs(~u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 15269i) & vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_sub_i32(u_input.a, 0i), vec3<i32>(u_input.a, ~u_input.a, ~(-_wgslsmith_mod_i32(2147483647i, u_input.b))));
}

