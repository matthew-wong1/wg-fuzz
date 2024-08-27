struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 21>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = -(~(-vec4<i32>(arg_1.a << (2323u % 32u), arg_1.a, arg_2.b << (u_input.a.x % 32u), arg_2.b)));
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_1.b.x));
    var var_2 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!(!all(vec3<bool>(false, true, false)))));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(-var_1))), 974f), 1445f);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-1i, arg_1), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), abs(abs(arg_3)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(1128f - _wgslsmith_f_op_f32(trunc(arg_2))))))));
    global1 = array<u32, 21>();
    let var_2 = Struct_2(var_0.a, _wgslsmith_sub_i32(0i, var_0.a.a), -1000f, var_0.d | ~firstTrailingBit(~var_0.d));
    let var_3 = var_2.a;
    return var_3;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = !vec3<bool>(true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false))) && all(vec3<bool>(true, true, false)), true);
    var var_1 = Struct_2(func_3(0u >> (global1[_wgslsmith_index_u32(abs(arg_0.x) & abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16533u, 21u)], 21u)]), 21u)] % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(410f, 136f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -3038f), -1153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f * -728f) + _wgslsmith_f_op_f32(func_2(u_input.a.x, Struct_1(-1i, vec4<f32>(-450f, -1000f, 222f, -154f)), Struct_2(Struct_1(14885i, vec4<f32>(212f, -179f, 206f, 1346f)), 89368i, 205f, vec3<u32>(4294967295u, 37889u, 4294967295u))))), 617f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-710f - 181f))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), ~vec3<u32>(0u, 1u, u_input.b))), 54529i, 757f, vec3<u32>(firstLeadingBit(arg_0.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 26048u), vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, u_input.a.x)), ~vec4<u32>(0u, 4294967295u, u_input.b, u_input.a.x)), 21u)], (arg_0.x ^ ~1u) & (arg_0.x | _wgslsmith_add_u32(26068u, u_input.b))));
    let var_2 = var_1.d << ((vec3<u32>(4294967295u, 232u, u_input.a.x) ^ (vec3<u32>(1187u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 1u), vec4<u32>(u_input.a.x, u_input.b, 57048u, arg_0.x))) << (~vec3<u32>(85264u, 0u, arg_0.x) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x));
    var var_4 = vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(abs(var_1.c)), -1540f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(257f, _wgslsmith_f_op_f32(-var_1.c)))))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 21>();
    global0 = false;
    let var_0 = func_1(abs(_wgslsmith_mult_vec2_u32(u_input.a >> (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(92224u, 0u)) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(91401u, 21u)]) & ~u_input.a)));
    var var_1 = Struct_2(Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1584f), _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(abs(-678f))), -2063f, 141f)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.a), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, -28403i), vec2<i32>(-30095i, -21903i))), -281f, ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7725u, 21u)], 21u)]), vec3<u32>(24156u, 58773u, u_input.b), firstTrailingBit(vec3<u32>(1u, 12012u, global1[_wgslsmith_index_u32(4294967295u, 21u)])))));
    let var_2 = func_1(u_input.a);
    global1 = array<u32, 21>();
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * -960f) * -644f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -841f))) * var_2.b.x)) * vec2<f32>(func_1(~vec2<u32>(global1[_wgslsmith_index_u32(44936u, 21u)], 8118u) ^ select(u_input.a, u_input.a, vec2<bool>(false, true))).b.x, var_0.b.x));
    global0 = !all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), vec3<bool>(false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x | var_1.d.x, 49667u), ~vec2<u32>(49782u, 82830u)), ~var_1.d.x), u_input.a);
}

