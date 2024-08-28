struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = Struct_1(arg_1, firstTrailingBit(vec3<i32>(u_input.e, u_input.a.x & (1i ^ u_input.a.x), _wgslsmith_mult_i32(1i, abs(u_input.e)))), 1i, true, vec4<i32>((u_input.e | 1i) & 1i, i32(-1i) * -abs(25818i), 2147483647i, _wgslsmith_add_i32(u_input.a.x, u_input.e)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1446f, arg_1));
    let var_2 = select(select(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 1628u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, u_input.c))), u_input.b, any(vec3<bool>(var_0.d, true, true))) & (((u_input.b | vec2<u32>(0u, 30504u)) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))) ^ min(firstTrailingBit(vec2<u32>(13035u, 1u)), ~u_input.b)), ~(max(select(u_input.b, vec2<u32>(101857u, 11305u), arg_0.x), _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(0u, u_input.c))) << (max(vec2<u32>(2324u, u_input.c), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(31920u, u_input.c))) % vec2<u32>(32u))), select(!(!arg_0.yx), arg_0.yz, vec2<bool>(!var_0.d, _wgslsmith_f_op_f32(select(213f, arg_1, false)) != var_0.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_1);
    var var_4 = var_0.c;
    return all(vec4<bool>(false, true, arg_0.x && arg_0.x, true));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(-1159f));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(~122807u, ~(u_input.c ^ arg_1.x)), ~(_wgslsmith_add_u32(4294967295u, u_input.c) | ~7323u));
    var_0 = -289f;
    var var_2 = Struct_1(787f, u_input.a, i32(-1i) * -u_input.d, all(!select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, true, arg_0, arg_0), true)), vec4<i32>(u_input.e, countOneBits(-14415i), u_input.e, reverseBits(u_input.e | 2147483647i) | countOneBits(u_input.e)));
    var var_3 = select(select(!vec3<bool>(true, true, 0u > u_input.c), select(vec3<bool>(var_2.d, var_2.d, !arg_0), !(!vec3<bool>(true, arg_0, var_2.d)), vec3<bool>(true, true, true)), !vec3<bool>(all(vec2<bool>(var_2.d, var_2.d)), true, true)), vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + 130f) - _wgslsmith_f_op_f32(var_2.a - var_2.a)) > -165f), vec3<bool>(true, any(vec4<bool>(var_2.d, arg_0, any(vec4<bool>(arg_0, false, var_2.d, false)), !var_2.d)), true));
    return select(vec4<bool>(!(!func_3(vec3<bool>(arg_0, var_2.d, var_2.d), -308f)), true | any(vec3<bool>(var_2.d, arg_0, arg_0)), all(!vec2<bool>(var_3.x, var_3.x)), false), select(vec4<bool>(var_2.d, all(vec4<bool>(true, true, var_2.d, false)), all(select(vec3<bool>(true, true, var_2.d), vec3<bool>(false, arg_0, true), var_3.x)), arg_0), !(!vec4<bool>(false, var_3.x, var_3.x, true)), !vec4<bool>(arg_0, u_input.c > 46041u, var_2.d, true)), !select(true, var_2.d, arg_0));
}

fn func_1() -> StorageBuffer {
    let var_0 = true && any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(516f)), -1285f, _wgslsmith_f_op_f32(-750f + 1107f), _wgslsmith_f_op_f32(1720f * -1000f)))) + vec4<f32>(286f, -133f, _wgslsmith_div_f32(236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1799f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(627f, _wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x, _wgslsmith_f_op_f32(abs(-1945f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, var_1.x, var_1.x) * vec4<f32>(var_1.x, 305f, -867f, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1182f, 1022f, var_1.x, var_1.x) - vec4<f32>(1000f, var_1.x, 1720f, var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1164f, 902f, var_1.x, -1000f)) + vec4<f32>(var_1.x, 1017f, var_1.x, 1000f)))), select(func_2(var_0, _wgslsmith_add_vec4_u32(vec4<u32>(18080u, u_input.b.x, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 40203u)) & ~vec4<u32>(u_input.c, 10097u, u_input.c, u_input.c)), vec4<bool>(var_0, !all(vec2<bool>(var_0, var_0)), true, var_0), all(vec3<bool>(333f != var_1.x, var_0 != var_0, any(vec3<bool>(false, var_0, false)))))));
    var var_2 = Struct_1(var_1.x, countOneBits(vec3<i32>((u_input.e << (u_input.c % 32u)) & (u_input.e & u_input.a.x), 1i, -1i)), ~u_input.d, any(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, true)))), firstLeadingBit(reverseBits(vec4<i32>(-2147483647i, -2147483647i, 1i, _wgslsmith_mult_i32(u_input.a.x, 50557i)))));
    let var_3 = abs(-_wgslsmith_clamp_i32(-_wgslsmith_clamp_i32(4718i, -1i, var_2.e.x), _wgslsmith_clamp_i32(i32(-1i) * -1i, -11690i << (1u % 32u), _wgslsmith_mult_i32(-2147483647i, u_input.d)), ~u_input.a.x ^ var_2.c));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_2.a, 675f, 1554f), vec4<f32>(456f, var_2.a, -848f, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

