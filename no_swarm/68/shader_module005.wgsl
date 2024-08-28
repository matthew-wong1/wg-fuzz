struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<bool> {
    return select(!(!vec4<bool>(any(vec4<bool>(false, false, arg_2.c.b, arg_2.c.b)), arg_0.c.b, all(vec4<bool>(arg_0.c.b, arg_0.c.b, arg_0.c.b, arg_0.c.b)), false)), !vec4<bool>(any(vec4<bool>(arg_2.c.b, arg_2.c.b, true, true)), all(select(vec3<bool>(false, arg_0.c.b, false), vec3<bool>(false, arg_0.c.b, false), vec3<bool>(false, arg_2.c.b, true))), arg_2.c.b, (arg_2.c.b || arg_2.c.b) | false), vec4<bool>(true, !(!any(vec3<bool>(true, true, true))), any(select(select(vec4<bool>(arg_2.c.b, arg_0.c.b, true, true), vec4<bool>(true, false, arg_2.c.b, false), vec4<bool>(true, arg_2.c.b, false, false)), vec4<bool>(false, arg_2.c.b, true, false), true)), -1000f <= _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, arg_2.a.x), _wgslsmith_f_op_f32(max(arg_1.x, arg_2.c.c.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(vec2<i32>(-35456i, firstLeadingBit(1i) | arg_2), true, arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-637f, 1000f, arg_1.x, 1808f), vec4<f32>(arg_1.x, -897f, var_0.c.x, arg_1.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.x, -1138f, arg_1.x, -942f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, 504f, 371f, -121f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-915f, arg_1.x, arg_1.x, 811f) + vec4<f32>(-1128f, var_0.c.x, var_0.c.x, 1000f))))));
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.d, 0u, u_input.c, 4294967295u), select(vec4<u32>(59798u, u_input.d, u_input.a, 37205u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 27608u, u_input.a), vec4<u32>(0u, 18473u, u_input.c, u_input.a)), all(vec4<bool>(false, var_0.b, true, true))), select(!vec4<bool>(arg_3.x, arg_3.x, true, true), select(vec4<bool>(false, var_0.b, false, false), vec4<bool>(false, false, true, true), var_0.b), true)), vec4<u32>(u_input.c, 1u, _wgslsmith_sub_u32(u_input.d, u_input.c), u_input.c) & (vec4<u32>(4294967295u, 0u, 40908u, u_input.d) ^ ~vec4<u32>(4294967295u, 4294967295u, 1u, u_input.d))), firstLeadingBit(vec4<u32>(u_input.d >> (u_input.d % 32u), ~u_input.a, ~u_input.c, ~41278u)) | ~vec4<u32>(u_input.a, u_input.d, 23852u, 1u));
    var_2 = ~_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(0u, 0u, var_2.x, 17146u)) >> ((reverseBits(vec4<u32>(u_input.c, u_input.c, 88441u, 15300u)) & ~vec4<u32>(12195u, 53083u, 56194u, u_input.d)) % vec4<u32>(32u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4441u, var_2.x, 31119u), vec4<u32>(var_2.x, var_2.x, 90400u, 4637u)) << (vec4<u32>(1u, var_2.x, 55683u, u_input.a) % vec4<u32>(32u))));
    let var_3 = vec2<bool>(!(any(vec2<bool>(false, var_0.b)) | true) && false, any(select(select(!vec2<bool>(arg_3.x, true), !vec2<bool>(arg_3.x, true), arg_3), arg_3, vec2<bool>(true, true))));
    return any(!func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-var_1.www), arg_2, var_0, var_0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, var_0.c.x, 932f)) - vec3<f32>(var_0.c.x, 983f, 992f)), Struct_3(vec3<f32>(464f, 1000f, var_0.c.x), 0i, Struct_1(var_0.a, false, vec2<f32>(439f, 1302f)), -1038f)));
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = -(i32(-1i) * -12308i);
    let var_1 = Struct_1(min(vec2<i32>(21138i, _wgslsmith_mod_i32(abs(-64976i), 1i)), u_input.b.xx), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-618f, -758f)) - -2109f), arg_0)));
    var var_2 = select(!vec3<bool>(true, var_1.b, func_2(vec2<i32>(var_1.a.x, arg_1) ^ u_input.b.xx, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 736f), vec2<f32>(var_1.c.x, 1288f)), arg_1 & 0i, vec2<bool>(false, var_1.b))), vec3<bool>(true, !(2214f < var_1.c.x) && all(select(vec2<bool>(true, true), vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, true))), arg_0 <= _wgslsmith_f_op_f32(round(-752f))), !vec3<bool>(false, true, any(vec3<bool>(true, var_1.b, true))));
    let var_3 = select(!vec3<bool>(var_2.x, any(select(var_2.yz, var_2.xy, vec2<bool>(false, var_1.b))), all(vec4<bool>(var_1.b, var_1.b, false, true)) && select(var_2.x, true, var_1.b)), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-891f, arg_0, var_1.c.x))), arg_1, Struct_1(vec2<i32>(arg_1, var_1.a.x), false, _wgslsmith_f_op_vec2_f32(-var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_1.c.x, 866f), vec3<f32>(var_1.c.x, 557f, arg_0)))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), -1000f), -1i, Struct_1(var_1.a ^ vec2<i32>(arg_1, arg_1), true, var_1.c), -1000f)).zxw, true & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_div_f32(-1000f, arg_0)) <= _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(floor(-1000f)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -145f) - _wgslsmith_div_f32(-2043f, -1611f)))))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(995f, var_1.c.x)), var_1.c.x)), -841f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(975f * var_1.c.x))))))));
    return reverseBits(_wgslsmith_mult_i32(u_input.b.x, 43727i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(0i, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1163f, -837f)), _wgslsmith_f_op_f32(ceil(-1557f))), 3065i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-194f)), _wgslsmith_f_op_f32(max(219f, -449f))))));
    let var_1 = countOneBits(vec2<u32>(4294967295u, 0u));
    var_0 = Struct_1(vec2<i32>(firstTrailingBit(var_0.a.x), -max(u_input.b.x, firstLeadingBit(-42481i))), all(vec3<bool>(var_0.b, false, all(vec2<bool>(true, var_0.b)) & var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), vec2<f32>(var_0.c.x, var_0.c.x))), vec2<f32>(_wgslsmith_f_op_f32(-1000f * 2006f), _wgslsmith_f_op_f32(698f * var_0.c.x)))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x * -379f), var_0.c.x)));
    var_0 = Struct_1(vec2<i32>(-2147483647i, u_input.b.x), true, vec2<f32>(-490f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.x)))), 1171f, _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1714f)))), -722i, Struct_1(vec2<i32>(abs(u_input.b.x), u_input.b.x), all(vec2<bool>(var_0.b, !var_0.b)), _wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.x))) + -811f)));
    var_0 = Struct_1(~_wgslsmith_div_vec2_i32(var_0.a, u_input.b.zz | u_input.b.yy), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-329f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(537f + -972f), -1168f) + _wgslsmith_f_op_f32(-var_0.c.x))));
}

