struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: u32;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = vec3<u32>(~(arg_0.c.x | 9670u), _wgslsmith_div_u32(u_input.a.x, select(arg_0.c.x, min(4294967295u, ~75079u), false || (arg_0.b <= 1157f))), ~1u);
    let var_1 = vec3<i32>(-1i, -(~arg_2.x), arg_2.x) << (var_0 % vec3<u32>(32u));
    var var_2 = -arg_2.x;
    var_2 = _wgslsmith_clamp_i32(var_1.x << (var_0.x % 32u), -1i, i32(-1i) * -23253i);
    global0 = array<vec3<i32>, 29>();
    return arg_0.b;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(506f, -588f, vec2<u32>(22785u, u_input.a.x), -1000f), 43101u, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.a.x))), -1176f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1117f, 186f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(488f + -2911f)), vec2<bool>(false, true)))))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 10u)];
    global1 = ~(max(_wgslsmith_mult_u32(u_input.a.x & 96120u, 1u & var_1.c.x), u_input.a.x) ^ 1u);
    var var_2 = Struct_1(1036f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1177f)), abs(vec2<u32>(0u, _wgslsmith_clamp_u32(u_input.a.x, 0u, var_1.c.x) ^ ~var_1.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_1.a) * _wgslsmith_f_op_f32(ceil(1000f)))))));
    global1 = u_input.a.x;
    return global2[_wgslsmith_index_u32(u_input.a.x, 10u)];
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global0 = array<vec3<i32>, 29>();
    let var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true & select(true, false, false), true)));
    let var_1 = 62313u;
    global2 = array<Struct_1, 10>();
    var var_2 = Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2604f)))), vec2<u32>(u_input.a.x, var_1), arg_1.d);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 62752u;
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-59486i, Struct_1(-572f, var_1.b, vec2<u32>(39518u, u_input.a.x), var_1.b), 3849u)) * 493f))) * _wgslsmith_f_op_f32(-var_1.d));
    var var_3 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true)), _wgslsmith_f_op_f32(-636f + var_2) < _wgslsmith_f_op_f32(901f * -850f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec3<bool>(true, false, false)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), !vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, true, true)), false, false), vec4<bool>(all(vec4<bool>(true, select(false, true, true), u_input.a.x == 4294967295u, false)), true, true, !(!select(false, true, false))));
    let var_4 = global2[_wgslsmith_index_u32(firstLeadingBit(25994u), 10u)];
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(select(select(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(5114u, 29u)], var_3.xyz) << (~u_input.a % vec3<u32>(32u)), -global0[_wgslsmith_index_u32(4294967295u, 29u)] >> (_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), vec3<bool>(true, -1592f != var_1.d, select(var_3.x, true, false))), global0[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(_wgslsmith_div_f32(466f, var_1.d), -1341f, -1461f), abs(var_4.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f + _wgslsmith_f_op_f32(abs(325f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(trunc(var_4.d))), var_2, u_input.a.x < u_input.a.x))));
}

