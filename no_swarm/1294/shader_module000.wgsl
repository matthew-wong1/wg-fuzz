struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(~(~19042u), _wgslsmith_div_u32(arg_1.b.a, min(4294967295u, 4294967295u)))), vec2<bool>(!arg_0.b.x, !arg_1.b.b.x));
    let var_1 = select(vec3<bool>(select(all(!vec4<bool>(true, false, true, arg_0.b.x)), select(any(vec3<bool>(arg_1.b.b.x, var_0.b.x, false)), true, arg_3.b.x), !arg_3.b.x & false), any(!(!vec2<bool>(var_0.b.x, true))), arg_3.b.x), vec3<bool>(true, !(arg_1.a.x < arg_1.a.x), true), !select(select(select(vec3<bool>(var_0.b.x, true, arg_1.d), vec3<bool>(var_0.b.x, false, arg_0.b.x), true), !vec3<bool>(arg_1.b.b.x, arg_3.b.x, arg_3.b.x), select(true, false, arg_1.b.b.x)), select(select(vec3<bool>(true, true, arg_3.b.x), vec3<bool>(arg_3.b.x, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, arg_1.d), vec3<bool>(arg_0.b.x, false, arg_3.b.x), true), !arg_1.d), all(!arg_3.b)));
    let var_2 = Struct_1(~(~4294967295u), select(vec2<bool>(arg_0.b.x, var_1.x), select(vec2<bool>(any(vec4<bool>(var_0.b.x, var_1.x, arg_0.b.x, var_1.x)), true), var_1.xz, select(vec2<bool>(false, arg_0.b.x), vec2<bool>(arg_0.b.x, var_1.x), select(arg_0.b, vec2<bool>(arg_3.b.x, arg_3.b.x), var_1.x))), !((arg_1.c > arg_1.c) | all(vec4<bool>(true, true, var_0.b.x, arg_0.b.x)))));
    let var_3 = ~(-arg_2.x);
    let var_4 = Struct_2(arg_1.a, arg_0, _wgslsmith_f_op_f32(round(-1994f)), false);
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = Struct_1(arg_2, select(vec2<bool>(!func_3(Struct_1(120475u, vec2<bool>(true, arg_0)), Struct_2(vec3<f32>(arg_1, -599f, -887f), Struct_1(4294967295u, vec2<bool>(false, arg_0)), arg_3, arg_0), u_input.a.zx, Struct_1(42756u, vec2<bool>(false, true))), false), vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(arg_0, false)), !arg_0), vec2<bool>(arg_0, -807f == arg_3), vec2<bool>(arg_0 || false, arg_0))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(1239f - _wgslsmith_f_op_f32(min(-879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-811f, _wgslsmith_f_op_f32(-1000f - arg_1)))))));
    let var_3 = true;
    let var_4 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 27832u, 16034u), reverseBits(vec3<u32>(arg_2, 27586u, 19433u))), select(vec3<u32>(35199u, 82693u, var_0.a), vec3<u32>(arg_2, 0u, arg_2), vec3<bool>(false, arg_0, var_3)) >> ((vec3<u32>(var_0.a, arg_2, 1u) >> (vec3<u32>(arg_2, 4294967295u, 1634u) % vec3<u32>(32u))) % vec3<u32>(32u))), max(_wgslsmith_mult_u32(max(arg_2, 45904u), 12978u), ~min(101233u, arg_2))), vec2<bool>(any(select(select(vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(arg_0, false, var_3, arg_0), vec4<bool>(false, arg_0, false, var_0.b.x)), !vec4<bool>(true, var_0.b.x, var_0.b.x, false), all(vec4<bool>(true, true, true, true)))), all(vec3<bool>(!arg_0, var_0.b.x, true))));
    return u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(func_2(true, -1000f, _wgslsmith_mod_u32(68843u, arg_0), _wgslsmith_div_f32(167f, -1000f)), u_input.a.x), u_input.a.x) << (u_input.b % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-471f, 242f, true)), _wgslsmith_f_op_f32(min(922f, -204f)), _wgslsmith_f_op_f32(f32(-1f) * -686f), -346f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(403f, 1369f, -240f, -766f), vec4<f32>(-1163f, -1252f, -469f, 1281f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1752f, 183f, -351f, -1529f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(741f, -2076f, -532f, 730f)))), true))));
    let var_2 = Struct_3(countOneBits(~vec4<u32>(1u, arg_1.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x), 17042u >> (arg_0 % 32u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 992f) * _wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)) - var_1.x)), Struct_1(0u | u_input.c, vec2<bool>(true, true)), var_1.x, false));
    let var_3 = Struct_1(4294967295u, vec2<bool>(var_2.b.d, (any(vec2<bool>(var_2.b.b.b.x, var_2.b.b.b.x)) != (var_2.b.d && true)) | false));
    var var_4 = reverseBits((vec2<i32>(-1i) * -vec2<i32>(-11089i, var_0)) >> (firstLeadingBit(vec2<u32>(u_input.c, reverseBits(0u))) % vec2<u32>(32u)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.ywx) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(var_2.b.a)))))), var_2.b.b, -1111f, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.a.x, -1i) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), vec2<i32>(52564i, abs(-30395i)))) & (i32(-1i) * -u_input.a.x);
    var var_1 = func_1(u_input.c & 4294967295u, vec3<u32>(u_input.c, u_input.c, _wgslsmith_sub_u32(~34007u, 1u)) ^ ~(~(~vec3<u32>(0u, u_input.c, 18473u))));
    var var_2 = func_1(_wgslsmith_mult_u32(u_input.b, 4294967295u), firstLeadingBit(max(vec3<u32>(var_1.b.a, u_input.c, u_input.b), vec3<u32>(4294967295u, var_1.b.a, u_input.b))) >> (~(countOneBits(vec3<u32>(27574u, 24292u, u_input.b)) ^ vec3<u32>(69089u, 64000u, 127861u)) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, var_2.c, var_1.c, var_2.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -334f, 1000f, 186f), vec4<f32>(-303f, var_2.a.x, -921f, -450f)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, _wgslsmith_f_op_f32(min(-1293f, var_1.a.x)), var_2.c, var_1.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2169f, var_1.a.x, var_2.a.x, 1000f), vec4<f32>(-1375f, -1000f, var_1.c, 1023f))) * vec4<f32>(var_2.c, -1348f, var_1.c, -495f)))));
    let var_4 = Struct_3(~(~(~vec4<u32>(22434u, var_1.b.a, 4294967295u, var_1.b.a))), func_1(var_2.b.a, ~reverseBits(vec3<u32>(62385u, var_2.b.a, 14222u))));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(~67046u, ~reverseBits(var_5.a.wxx)).b.a, u_input.a.x, ~vec2<u32>(4294967295u, var_2.b.a));
}

