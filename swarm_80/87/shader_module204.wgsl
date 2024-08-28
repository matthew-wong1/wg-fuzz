struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = any(vec2<bool>(true, true));
    var_0 = true;
    let var_1 = Struct_1(vec2<u32>(0u, ~81529u), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(260f, -728f) - vec2<f32>(1000f, -904f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(474f, 1121f), vec2<f32>(-142f, 856f), vec2<bool>(false, false))) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 610f), vec2<f32>(-127f, -1775f))))))), firstLeadingBit(vec2<i32>(-2147483647i >> (min(u_input.b, 1u) % 32u), -(u_input.a << (163u % 32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1539f, -1066f, 143f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(521f, -455f, 748f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-539f, -1000f, -896f) + vec3<f32>(1287f, 406f, 116f)) - vec3<f32>(1000f, -125f, -968f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1206f, 1136f, _wgslsmith_f_op_f32(393f + -1047f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), !vec4<bool>(true, true, any(vec2<bool>(true, true)), false));
    let var_2 = 987f;
    let var_3 = var_1.e.zw;
    return var_1;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<bool> {
    var var_0 = func_3(vec3<f32>(1f, 1f, 1f), func_2());
    let var_1 = 64363u;
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, _wgslsmith_div_f32(1000f, var_0.d.x), -1829f))), Struct_1(vec2<u32>(15889u, func_2().a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-576f, -760f, var_0.e.x)) - var_0.d.x), _wgslsmith_f_op_f32(259f - var_0.b.x)), -var_0.c, var_0.d, func_3(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * 2410f), _wgslsmith_f_op_f32(select(var_0.d.x, -975f, true)), var_0.b.x), Struct_1(vec2<u32>(u_input.b, 0u), var_0.b, firstLeadingBit(var_0.c), func_2().d, var_0.e)).e));
    var var_3 = -vec3<i32>(-_wgslsmith_mod_i32(-1i, u_input.c), u_input.a, firstLeadingBit(1i));
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, func_3(vec3<f32>(var_2.b.x, var_2.b.x, var_2.d.x), Struct_1(var_0.a, vec2<f32>(var_2.b.x, 402f), vec2<i32>(var_2.c.x, 66914i), var_0.d, var_2.e)).a.x), abs(countOneBits(vec2<u32>(1u, 72566u) ^ var_2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1735f, var_2.d.x), vec2<f32>(var_0.b.x, var_2.d.x)))) * vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f)))), -_wgslsmith_div_vec2_i32(~var_3.xx, var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.d.x, -1428f, -1265f))))), var_2.e);
    return vec4<bool>(-56270i > var_0.c.x, var_0.e.x || true, all(!(!(!vec2<bool>(false, var_2.e.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(13138u, _wgslsmith_mult_u32(u_input.b, abs(33082u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-650f, -164f), _wgslsmith_f_op_f32(1358f * 811f))), 596f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1135f, 1231f), vec2<f32>(-171f, -868f))), vec2<f32>(-262f, 450f))))), -vec2<i32>(countOneBits(-31331i), countOneBits(u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(148f, 570f, 1000f)))))), func_1(u_input.a, u_input.c < u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-53440i), (~(vec3<i32>(var_0.c.x, var_0.c.x, -2147483647i) << (vec3<u32>(var_0.a.x, 0u, 1u) % vec3<u32>(32u))) << ((vec3<u32>(var_0.a.x, 12738u, 0u) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 77868u, u_input.b), vec3<u32>(23739u, 4294967295u, 4294967295u))) % vec3<u32>(32u))) ^ vec3<i32>(abs(0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(45152i, u_input.a), var_0.c), 2147483647i >> (var_0.a.x % 32u)), -u_input.c | -2147483647i), min(_wgslsmith_mod_vec2_i32(~abs(vec2<i32>(-25112i, 22501i)), var_0.c), var_0.c), vec3<u32>(~0u, ~(~33042u) | (~var_0.a.x & ~6772u), countOneBits(var_0.a.x)), 1u);
}

