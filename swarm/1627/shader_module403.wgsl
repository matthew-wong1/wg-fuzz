struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    return arg_0.b;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = Struct_1(~15336u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(firstLeadingBit(u_input.a.x), arg_0.xwx)))));
    var var_1 = all(select(select(vec4<bool>(false, true, any(vec3<bool>(true, false, false)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true)), 1u >= var_0.a, !any(vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    var_1 = true;
    let var_3 = _wgslsmith_f_op_f32(ceil(var_0.b.x));
    return true;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(select(u_input.a.yx, ~vec2<u32>(12924u, u_input.a.x), true), firstTrailingBit(vec2<u32>(24887u, 1u)))), u_input.a.yz);
    var var_1 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(select(arg_2.yzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1780f, arg_2.x, 165f), arg_2.xwx) + _wgslsmith_f_op_vec3_f32(trunc(arg_2.yzx))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 655f, -367f))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -2646f, -145f)) * arg_2)))));
    var var_2 = _wgslsmith_div_vec3_i32(firstLeadingBit(max(select(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<bool>(arg_0, arg_0, true)), select(-vec3<i32>(u_input.c.x, 0i, u_input.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(20510i, -8117i, 9209i), vec3<i32>(-2147483647i, 5624i, u_input.c.x)), 9623u >= u_input.a.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, u_input.c.x, u_input.c.x)) | vec3<i32>(-1i, -1i, u_input.c.x), reverseBits(-vec3<i32>(2147483647i, -1i, u_input.c.x))), -firstTrailingBit(-vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i))));
    var_0 = 4294967295u;
    let var_3 = ~u_input.b.yzy;
    return !arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), true), !select(vec3<bool>(false, true, false), func_1(false, Struct_2(vec3<bool>(true, true, false)), vec4<f32>(244f, 381f, -709f, 1741f)), vec3<bool>(false, true, true))));
    let var_1 = _wgslsmith_mod_i32(12165i, u_input.c.x);
    let var_2 = !vec2<bool>(var_0.a.x, true);
    let var_3 = Struct_2(var_0.a);
    var var_4 = Struct_1(~abs(_wgslsmith_add_u32(~u_input.a.x, abs(u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.a.x, vec3<f32>(274f, 2147f, 453f)))).x - _wgslsmith_f_op_f32(-1139f * 758f))), 182f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-670f, 1082f) - -990f))));
    var var_5 = Struct_1(_wgslsmith_add_u32(1u, u_input.a.x), var_4.b);
    var var_6 = var_0;
    var var_7 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_5.a, vec3<f32>(var_4.b.x, 117f, -376f)))), var_4.b) * _wgslsmith_div_vec3_f32(vec3<f32>(-871f, _wgslsmith_f_op_f32(round(-618f)), -1000f), var_5.b)));
    let var_8 = ~abs(firstTrailingBit(1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.x, ~abs(max(-vec3<i32>(23741i, 16252i, 2147483647i), select(vec3<i32>(u_input.c.x, -2147483647i, var_1), vec3<i32>(1i, -2147483647i, -2147483647i), vec3<bool>(var_2.x, var_3.a.x, var_6.a.x)))));
}

