struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = all(!vec4<bool>(false, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(-5600i, 0i, u_input.c.x), u_input.c.zxw) == abs(1i), true));
    let var_1 = -1000f;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-771f, var_1, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1162f, var_1) * vec3<f32>(1991f, var_1, 357f))))))));
    return 0u;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mult_i32(-(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.c.x ^ u_input.c.x)), 2147483647i);
    let var_2 = -vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(abs(u_input.a)), -select(-2147483647i, u_input.c.x, arg_2.x)), u_input.a << (4294967295u % 32u), ~u_input.a);
    return _wgslsmith_f_op_f32(f32(-1f) * -634f);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec3<f32> {
    let var_0 = Struct_1(~41458u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(abs(func_3(0u)), 1000f, select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(149f)) * _wgslsmith_f_op_f32(-var_0.b))), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1448f, 163f) - vec3<f32>(var_0.b, -1710f, var_0.b)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 452f, var_0.b) + vec3<f32>(var_0.b, var_0.b, 1000f)))))), true));
    let var_2 = countOneBits(max(u_input.b, ~_wgslsmith_sub_u32(4294967295u, var_0.a)));
    var var_3 = select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec2<bool>(true, var_1.x < var_1.x), !select(vec2<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, false))), vec2<bool>(all(vec3<bool>(true, false, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, 572f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, -513f, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)), _wgslsmith_f_op_f32(-699f * _wgslsmith_f_op_f32(select(-867f, var_0.b, true))), var_1.x))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -603f, 1386f))))));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_2(-6725i, arg_0)));
    var var_2 = !(!select(select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, arg_1, true)), vec4<bool>(true, false, arg_1, true), !vec4<bool>(false, arg_1, arg_1, arg_1)), select(select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, true)), !vec4<bool>(false, false, arg_1, true), false), !(!vec4<bool>(arg_1, true, false, false))));
    var_2 = vec4<bool>(true, !var_2.x, arg_1, arg_1);
    return Struct_1(53992u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-189f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(var_1.a.x + -1154f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = ~(firstTrailingBit(u_input.c.zwx) << (firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 43407u, 34167u), vec3<u32>(arg_1.a, 30985u, u_input.b))) % vec3<u32>(32u)));
    let var_1 = func_1(_wgslsmith_dot_vec3_i32(arg_2.wwy, firstLeadingBit(-var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -102f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -247f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(714f)), _wgslsmith_f_op_f32(-arg_1.b)))));
    let var_2 = arg_1;
    let var_3 = -1i;
    var var_4 = ~(~arg_3.xzw);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(select(arg_1.b, arg_1.b, true))) + _wgslsmith_f_op_f32(f32(-1f) * -1378f))) * _wgslsmith_f_op_f32(-arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -119f)), func_1(u_input.c.x, all(vec4<bool>(false, false, false, true))), select(vec4<i32>(0i, u_input.a, u_input.a, u_input.c.x), vec4<i32>(u_input.a, -19043i, 71400i, 13592i), false) << (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 43788u, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(2705u, 22701u, u_input.b, u_input.b), vec4<u32>(20570u, 59623u, u_input.b, 9008u))))), -1000f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, -269f, -584f), vec3<f32>(483f, 367f, var_0))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(1000f, 125f)), _wgslsmith_f_op_f32(step(217f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -1568f))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(-var_1.a)))));
    let var_3 = var_2.a;
    let var_4 = select(select(vec2<bool>(true, true), vec2<bool>(true, !(u_input.b <= 1u)), select(vec2<bool>(true, any(vec2<bool>(false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(!all(vec2<bool>(false, true)), any(vec2<bool>(true, true)))), true);
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.a.x, var_3.x), _wgslsmith_mod_u32(firstTrailingBit(u_input.b), firstTrailingBit(4294967295u)), 0i, _wgslsmith_mod_i32(~(-firstTrailingBit(51668i)), -1i));
}

