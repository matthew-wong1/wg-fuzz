struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-694f + arg_0), _wgslsmith_f_op_f32(sign(arg_0)))))));
    var var_1 = any(!(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_2 = any(vec2<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), u_input.d.x == 29559i)), true));
    let var_3 = select(!(!vec3<bool>(u_input.a.x == u_input.a.x, true, true)), vec3<bool>(true, true, !any(vec3<bool>(false, false, true))), select(any(vec2<bool>(true, true)), var_0.x > var_0.x, 56303i == u_input.d.x));
    var var_4 = vec2<u32>(12338u, u_input.c);
    return 1000f;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-748f)))))));
    return -(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1, u_input.d.x, u_input.d.x), vec3<i32>(35685i, arg_1, arg_1)), -u_input.d) & u_input.d) & -select(u_input.d, vec3<i32>(abs(-2147483647i), u_input.d.x, u_input.d.x), !vec3<bool>(true, arg_0, false));
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    return !vec4<bool>(((-1i << (u_input.b % 32u)) != (-5330i ^ u_input.d.x)) && false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(-299f);
    let var_1 = ~(~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, u_input.c)), firstTrailingBit(u_input.a.yy) | _wgslsmith_sub_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, u_input.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_3.x, 1068f)), 1281f)) * _wgslsmith_f_op_f32(exp2(arg_3.x))) - -156f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), 719f));
    var_2 = _wgslsmith_f_op_f32(-1311f * _wgslsmith_f_op_f32(floor(var_0.a)));
    return Struct_1(223f);
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = 17786i;
    var var_1 = true;
    var var_2 = func_5(!func_4(~func_2(false, 1i)), ~u_input.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -960f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1790f, 608f)))) - vec2<f32>(-1357f, _wgslsmith_div_f32(1707f, -444f)))));
    let var_3 = func_5(vec4<bool>(!select(true, true, true), true, true, !(var_2.a == -1543f) & false), reverseBits(91119u | (countOneBits(0u) >> (u_input.a.x % 32u))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(256f + -632f)), var_2.a))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, var_2.a), vec2<f32>(var_2.a, 402f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1904f, -439f), vec2<f32>(1000f, -1262f), true)))))));
    return func_4(~(~((u_input.d | u_input.d) & vec3<i32>(36992i, u_input.d.x, 0i)))).zzy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!select(vec3<bool>(true, true, true), func_1(u_input.d.x), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-567f * 382f));
    var var_2 = u_input.d.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, 542f))))))));
    let var_4 = Struct_1(var_1.a);
    let var_5 = ~u_input.a.x;
    let var_6 = Struct_1(_wgslsmith_f_op_f32(select(-157f, _wgslsmith_f_op_f32(-var_1.a), !(true == any(vec4<bool>(false, var_0.x, false, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(1081u, countOneBits(vec3<i32>(firstTrailingBit(0i), 37567i, u_input.d.x)), vec2<u32>(~_wgslsmith_add_u32(~var_5, 0u), u_input.c), _wgslsmith_f_op_vec2_f32(var_3.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_6.a, -1733f))))));
}

