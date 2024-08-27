struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_2(~(~(~u_input.d.x)));
    var_0 = Struct_2(0i);
    return !vec3<bool>(false, !(true && (var_0.a > 10748i)), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> bool {
    var var_0 = 32572i;
    var_0 = ~(_wgslsmith_mod_i32(arg_0.a.a, _wgslsmith_mult_i32(arg_0.a.a, 19564i)) | arg_0.a.a);
    var var_1 = ~min(vec2<u32>(4294967295u, 0u), vec2<u32>(10330u, 15100u));
    var var_2 = Struct_2(~(~1i) | -(arg_0.a.a << (1u % 32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(288f)), _wgslsmith_f_op_f32(-337f + -1186f)))))));
    return any(vec3<bool>(any(vec3<bool>(true, true, true)), !any(vec2<bool>(true, false)), false)) && true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(reverseBits(u_input.b.x), u_input.b.x | ~11389u) > u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1139f * 424f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -1959f) * 1000f)));
    var var_1 = select(select(select(vec3<bool>(any(vec3<bool>(true, true, var_0.a)), var_0.a, var_0.a), !func_1(u_input.b.xzw, u_input.b.x), var_0.a), vec3<bool>(!func_2(Struct_3(Struct_2(-19058i)), Struct_3(Struct_2(-35952i)), u_input.b.x), true, (var_0.a == var_0.a) & true), !select(false, true, true)), !select(vec3<bool>(any(vec3<bool>(true, false, true)), true, any(vec2<bool>(var_0.a, var_0.a))), !vec3<bool>(false, false, var_0.a), !(!vec3<bool>(false, var_0.a, var_0.a))), select(vec3<bool>(select(var_0.a, func_2(Struct_3(Struct_2(u_input.d.x)), Struct_3(Struct_2(u_input.a)), u_input.b.x), any(vec2<bool>(var_0.a, true))), var_0.a, !var_0.a && var_0.a), vec3<bool>(false, !(7664i > u_input.c), var_0.a || var_0.a), false));
    var_1 = vec3<bool>(any(select(var_1.zz, func_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 12500u), u_input.b.zxy), abs(1u)).yz, !(u_input.c >= u_input.c))), any(vec4<bool>(any(vec2<bool>(var_1.x, false)) || false, var_0.a, var_1.x, func_2(Struct_3(Struct_2(27025i)), Struct_3(Struct_2(u_input.c)), ~u_input.b.x))), all(vec4<bool>(false, true, any(select(vec4<bool>(var_0.a, false, false, var_1.x), vec4<bool>(var_0.a, false, var_0.a, var_1.x), var_1.x)), true)));
    var var_2 = Struct_2(u_input.d.x);
    let var_3 = Struct_1(any(vec4<bool>(var_0.a, func_2(Struct_3(Struct_2(u_input.c)), Struct_3(Struct_2(var_2.a)), 0u), !var_0.a, var_0.a)), _wgslsmith_f_op_f32(-var_0.b));
    var_2 = Struct_2(u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), firstTrailingBit(~u_input.d.xx & min(vec2<i32>(u_input.c, u_input.a), countOneBits(vec2<i32>(var_2.a, u_input.c)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(694f)))), var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1315f - -709f)), _wgslsmith_f_op_f32(sign(var_3.b))));
}

