struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = Struct_1(1u, true | any(select(!vec2<bool>(true, arg_0.b), !vec2<bool>(arg_1.b, arg_0.b), true)), ~(arg_1.c ^ var_0.c));
    var var_2 = ~max(-(reverseBits(vec2<i32>(var_0.c, -1i)) | -u_input.e.wx), u_input.e.zw);
    let var_3 = var_1;
    var var_4 = select(vec2<bool>(!(!arg_1.b), var_1.b), vec2<bool>(arg_0.b, all(vec2<bool>(true, !var_3.b))), !select(vec2<bool>(!arg_1.b, any(vec4<bool>(false, var_1.b, false, false))), select(!vec2<bool>(var_0.b, true), vec2<bool>(true, false), select(vec2<bool>(var_3.b, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(arg_0.b, true))), select(!vec2<bool>(true, var_0.b), !vec2<bool>(true, var_1.b), !var_3.b)));
    return u_input.e.zyw;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_1(11136u, !(true | var_0.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(-74643i, arg_0.c), 51198i, -17859i), -(~func_3(Struct_1(u_input.a.x, true, 1i), Struct_1(arg_0.a, var_0.b, var_0.c), vec3<f32>(1144f, 1329f, 414f)))));
    let var_2 = reverseBits(vec2<u32>(~(~var_1.a) ^ var_0.a, 33495u));
    let var_3 = !(!(!vec2<bool>(var_0.b | true, arg_0.b)));
    var_1 = Struct_1(38561u, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_3.x, false, arg_0.b), true), var_1.b)), u_input.e.x);
    return any(select(var_3, select(var_3, var_3, !var_3.x), select(vec2<bool>(true, true), vec2<bool>(var_1.b, arg_0.b), true)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = arg_2.xx;
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(18090u, u_input.b.x, 1u, u_input.a.x), ~vec4<u32>(1u, u_input.b.x, 39203u, u_input.b.x)), 12529u), true, ~u_input.c);
    var_1 = vec2<bool>(!arg_2.x, all(vec4<bool>(all(select(vec2<bool>(var_1.x, var_2.b), vec2<bool>(false, false), arg_2.xx)), true | all(arg_1.yz), true, var_2.b)));
    var var_3 = Struct_1(~abs(_wgslsmith_mult_u32(var_2.a, var_2.a) | (var_2.a | u_input.a.x)), !var_1.x, arg_0);
    return Struct_1(~var_3.a, false, _wgslsmith_add_i32(var_2.c & -43141i, -1i));
}

fn func_1() -> Struct_1 {
    var var_0 = reverseBits(u_input.b.x);
    var var_1 = -u_input.e;
    var var_2 = func_4(-20588i, vec3<bool>(false, any(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), func_2(Struct_1(~4294967295u, u_input.e.x > -17257i, u_input.e.x))), select(!vec4<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)), select(true, false, true), all(vec2<bool>(false, true))), !vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, var_1.x <= u_input.d.x), firstLeadingBit(u_input.c) > 0i));
    var_2 = func_4(~(-3328i), vec3<bool>(func_2(Struct_1(0u, var_2.b, 2147483647i)), var_1.x >= firstTrailingBit(var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2193f)) * -461f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(163f)), -437f)), select(select(vec4<bool>(false, var_2.b || var_2.b, true && var_2.b, var_2.b == true), !select(vec4<bool>(var_2.b, true, true, var_2.b), vec4<bool>(var_2.b, var_2.b, var_2.b, false), var_2.b), true), select(select(!vec4<bool>(var_2.b, var_2.b, true, true), vec4<bool>(false, true, true, var_2.b), vec4<bool>(true, true, true, true)), select(!vec4<bool>(var_2.b, true, true, var_2.b), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, var_2.b, true), var_2.b), any(vec2<bool>(false, true))), false), !(!select(vec4<bool>(var_2.b, var_2.b, true, var_2.b), vec4<bool>(false, true, false, var_2.b), var_2.b))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-959f - 588f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f), _wgslsmith_f_op_f32(f32(-1f) * -729f))))));
    return func_4(u_input.e.x, select(select(vec3<bool>(!var_2.b, var_1.x == u_input.d.x, true), vec3<bool>(!var_2.b, true, var_2.b), select(select(vec3<bool>(true, var_2.b, var_2.b), vec3<bool>(var_2.b, true, var_2.b), false), !vec3<bool>(var_2.b, var_2.b, false), func_4(var_2.c, vec3<bool>(var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, false, var_2.b, true)).b)), select(vec3<bool>(var_2.b, true, true), !select(vec3<bool>(false, false, var_2.b), vec3<bool>(var_2.b, false, true), vec3<bool>(true, true, var_2.b)), vec3<bool>(var_2.b, var_2.b, var_2.b)), select(vec3<bool>(any(vec3<bool>(true, var_2.b, false)), var_2.b, var_1.x > u_input.c), !(!vec3<bool>(true, false, var_2.b)), select(select(vec3<bool>(true, var_2.b, true), vec3<bool>(true, var_2.b, false), true), select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(false, var_2.b, false), vec3<bool>(true, var_2.b, var_2.b)), vec3<bool>(true, true, true)))), vec4<bool>(true, var_2.b, var_2.b, func_4(-_wgslsmith_dot_vec2_i32(var_1.zw, vec2<i32>(14644i, var_2.c)), !(!vec3<bool>(var_2.b, var_2.b, var_2.b)), vec4<bool>(select(false, var_2.b, true), var_2.b, false, true)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = true;
    var var_2 = select(select(!vec4<bool>(any(vec3<bool>(var_0.b, var_0.b, var_0.b)), func_4(-57740i, vec3<bool>(false, true, var_0.b), vec4<bool>(false, var_0.b, false, var_0.b)).b, func_2(Struct_1(0u, true, var_0.c)), var_0.b), select(vec4<bool>(true, var_0.b, true, any(vec4<bool>(true, var_0.b, var_0.b, false))), vec4<bool>(!var_0.b, true, var_0.b && var_0.b, any(vec3<bool>(var_0.b, false, false))), !select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(false, var_0.b, var_0.b, var_0.b), true)), !(!select(vec4<bool>(var_0.b, false, var_0.b, false), vec4<bool>(var_0.b, true, false, var_0.b), false))), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, true, var_0.b), func_2(Struct_1(u_input.a.x, var_0.b, u_input.d.x))), select(!select(vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), true), vec4<bool>(any(vec3<bool>(false, var_0.b, var_0.b)), var_0.b, true, true), !vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)), !(!select(vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(false, false, var_0.b, true)))), !(!vec4<bool>(var_0.b, var_0.b, select(var_0.b, var_0.b, true), var_0.b && false)));
    var_0 = Struct_1(~(~1u), var_0.b, min(_wgslsmith_mult_i32(1991i, u_input.e.x | var_0.c), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, 0i, 0i), _wgslsmith_div_i32(u_input.d.x, 1i))) << (~18195u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.yx);
}

