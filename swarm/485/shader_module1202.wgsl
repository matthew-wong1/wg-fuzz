struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_4(min(2147483647i, -_wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(2147483647i, 1i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-481f, -572f, 956f, -1221f), vec4<f32>(487f, -1407f, 151f, -504f), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-578f, 953f, -286f, 317f), vec4<f32>(847f, -210f, 1482f, 1068f)))) + vec4<f32>(1147f, -1640f, -506f, _wgslsmith_f_op_f32(-1282f - 1000f))), vec4<f32>(_wgslsmith_f_op_f32(min(-1621f, 316f)), _wgslsmith_div_f32(-2186f, _wgslsmith_f_op_f32(trunc(229f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(floor(1022f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-295f)), _wgslsmith_f_op_f32(982f + 1208f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1141f, 1406f, 666f)))))));
    var var_1 = any(vec2<bool>(1u == arg_0.x, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + 101f));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    let var_0 = arg_1.x;
    let var_1 = Struct_4(27279i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1242f)), -390f, -1146f, _wgslsmith_f_op_f32(max(-544f, 957f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1143f, 666f, 402f, 776f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-849f, -164f, -614f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(279f, 1400f, 270f)))))));
    let var_2 = var_1;
    var var_3 = arg_0;
    var var_4 = 4328u;
    return _wgslsmith_f_op_f32(func_3(u_input.a.wwx));
}

fn func_1() -> Struct_3 {
    var var_0 = !select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(false, true, true, false)), !vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), select(true, false, false));
    let var_1 = vec4<bool>(!var_0.x || false, true, false, true);
    let var_2 = 66039u;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(func_2(~var_2 | (~var_2 & 0u), select(-(~vec3<i32>(-11742i, 1i, -43232i)), vec3<i32>(-14408i, i32(-1i) * -6250i, firstLeadingBit(11165i)), true), var_2)));
    var var_4 = var_1;
    return Struct_3(13924i, Struct_2(-212f), 195f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(max(-2147483647i, _wgslsmith_mult_i32(~48818i, -23653i)));
    var var_1 = 12986u;
    let var_2 = 1i;
    var var_3 = Struct_3(57036i, Struct_2(-1000f), _wgslsmith_f_op_f32(-1565f - 1f));
    var_3 = func_1();
    var var_4 = (var_3.c < _wgslsmith_f_op_f32(-var_3.b.a)) || !(!all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))));
    var_4 = true;
    var var_5 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true))), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), true);
    let var_6 = !(!vec4<bool>(var_5.x, var_5.x, var_5.x, var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1().c, var_3.c)));
}

