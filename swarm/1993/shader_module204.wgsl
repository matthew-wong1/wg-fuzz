struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(777f + _wgslsmith_div_f32(101f, 808f)))), _wgslsmith_f_op_f32(f32(-1f) * -1463f), _wgslsmith_div_f32(491f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -485f)))))));
    let var_1 = firstLeadingBit(select(arg_0.x, 37985u, (false | select(false, true, true)) | false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -259f, 1000f, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 791f, var_0.x, -377f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(840f, var_0.x)))), 752f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)), 1627f), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)))), -(1i ^ _wgslsmith_add_i32(u_input.a, u_input.a)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(571f)), -2853f, _wgslsmith_f_op_f32(f32(-1f) * -669f)))), 0i);
    var var_4 = Struct_1(var_3.a, u_input.a);
    return _wgslsmith_dot_vec4_u32(max(~countOneBits(~vec4<u32>(42637u, var_1, 4294967295u, 25323u)), vec4<u32>(~var_1, 82314u, 4294967295u, ~var_1)), vec4<u32>(firstTrailingBit(var_1 >> (4294967295u % 32u)), abs(arg_0.x ^ var_1) << (arg_0.x % 32u), arg_0.x, firstLeadingBit(10612u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -370f, 601f, 1091f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(484f, 284f, -206f, 2700f))))), 16975i);
    let var_1 = arg_0;
    var var_2 = !select(select(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, false)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), true, all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_2 = select(select(select(vec3<bool>(true, false, u_input.a >= var_0.b), select(select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(false, var_2.x, false)), !vec3<bool>(true, var_2.x, var_2.x), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, false, true), var_2.x), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, false)))), vec3<bool>(all(vec2<bool>(true, true)), var_2.x, all(!vec3<bool>(var_2.x, true, true))), select(!(!vec3<bool>(true, var_2.x, true)), select(vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, var_2.x), var_0.b == -2147483647i), all(vec3<bool>(true, var_2.x, var_2.x)))), !(!select(!vec3<bool>(var_2.x, true, true), !vec3<bool>(var_2.x, false, true), !vec3<bool>(false, var_2.x, var_2.x))), !select(!vec3<bool>(var_2.x, true, true), !vec3<bool>(true, var_2.x, var_2.x), var_2.x));
    let var_3 = u_input.a;
    return 36932u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(1u >> (_wgslsmith_mod_u32(1u, 1u) % 32u), ~1u, max(65745u, ~12218u)), firstTrailingBit(~(~vec3<u32>(1u, 4294967295u, 4294967295u)))), _wgslsmith_clamp_u32(abs(~0u), ~1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1007u, 1u)) % 32u), func_3(min(~vec3<u32>(0u, 75829u, 4294967295u), abs(vec3<u32>(62034u, 0u, 0u))))));
    return vec2<bool>(4294967295u != _wgslsmith_mult_u32(5406u, 0u | ~var_0), arg_0);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)))), _wgslsmith_f_op_vec4_f32(abs(arg_0.a)))), arg_0.b | abs(arg_0.b));
    let var_1 = false;
    let var_2 = Struct_1(var_0.a, -(-2147483647i >> (0u % 32u)));
    let var_3 = Struct_1(arg_0.a, ~var_2.b & select(_wgslsmith_div_i32(~1i, 84622i), -(i32(-1i) * -49534i), var_1));
    var var_4 = -vec2<i32>(29346i, _wgslsmith_add_i32(1i, 33810i));
    return !func_2(var_1, var_2, Struct_1(vec4<f32>(var_3.a.x, -654f, _wgslsmith_f_op_f32(abs(var_3.a.x)), _wgslsmith_f_op_f32(var_3.a.x - -409f)), ~(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, true & !(!all(vec2<bool>(false, false))));
    var_0 = func_1(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(705f, 1294f, -1583f, 690f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, 1770f, 575f, 189f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1084f, 670f, 1000f, -1200f), vec4<f32>(-579f, 826f, -1329f, -937f)))), u_input.a));
    var_0 = vec2<bool>(any(vec2<bool>(func_1(Struct_1(vec4<f32>(228f, -279f, 289f, -631f), 13667i)).x, false)), func_2(true, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-431f, 874f, -555f, 1000f), vec4<f32>(1000f, -1792f, 245f, -592f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, -815f, 1257f, -684f))), _wgslsmith_clamp_i32(abs(u_input.a), u_input.a, reverseBits(-68303i))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_f_op_f32(trunc(-817f)), -2476f, -1000f), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, -1i), -u_input.a))).x);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1131f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1253f)), _wgslsmith_f_op_f32(f32(-1f) * -122f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~36164u)), 1u);
}

