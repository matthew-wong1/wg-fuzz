struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b));
    let var_2 = Struct_1(_wgslsmith_sub_i32(u_input.a, firstTrailingBit(~(~var_0.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1613f), _wgslsmith_div_f32(-114f, -742f))) * _wgslsmith_f_op_f32(f32(-1f) * -561f)), 487f), !(!arg_1.c), arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-36796i, ~arg_1.a), i32(-1i) * -1i, -1105i), ~firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.c, 24362i, -20012i)))));
    var var_3 = Struct_1(firstLeadingBit(max(var_0.e ^ -2601i, -33394i)), _wgslsmith_f_op_f32(f32(-1f) * -170f), !vec2<bool>(true, all(vec4<bool>(true, false, true, false))), false, arg_1.e);
    var_3 = Struct_1(abs(1i), -746f, select(!select(!arg_1.c, !vec2<bool>(var_0.d, false), false), select(select(!var_0.c, vec2<bool>(false, true), vec2<bool>(var_0.d, arg_1.c.x)), vec2<bool>(all(vec2<bool>(var_0.d, true)), !arg_1.d), var_0.c.x), !any(select(vec4<bool>(true, true, var_2.d, true), vec4<bool>(false, false, false, var_2.c.x), vec4<bool>(true, arg_1.d, true, arg_0)))), arg_1.c.x, 0i);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = arg_0;
    let var_3 = !(!vec3<bool>(any(arg_0.c), false, var_0.d));
    let var_4 = var_3.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -298f), 414f))) - 1000f);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f * _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_f_op_f32(-468f * 1000f), vec2<bool>(true, true), true, max(98188i, u_input.c)), func_3(true, Struct_1(-5058i, 3442f, vec2<bool>(false, true), false, u_input.c)), ~u_input.c))) * -1000f);
    return 1424f;
}

fn func_1() -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -171f), any(vec4<bool>(false, false, true, false)) || true)), -2183f, false & ((1i & u_input.a) <= 1i))), _wgslsmith_f_op_f32(ceil(-597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f + 2177f) + _wgslsmith_f_op_f32(max(-677f, -1000f))) * 751f) - _wgslsmith_f_op_f32(-512f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1755f, -552f, true)) - _wgslsmith_div_f32(-290f, -108f)))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = !(!vec2<bool>(!select(false, true, true), true));
    var_0 = var_1.x;
    var var_2 = var_1.x || var_1.x;
    var var_3 = select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, false, true, true & any(vec4<bool>(true, false, false, var_1.x))), -countOneBits(79029i) == u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))), -1479f), abs(_wgslsmith_div_vec3_i32(vec3<i32>(select(38540i, -1i, true), u_input.a, _wgslsmith_mod_i32(u_input.c, -26630i)), ~(-vec3<i32>(0i, -2147483647i, -14788i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-419f, -1580f, -318f, 836f), vec4<f32>(1488f, 839f, 866f, 1421f), vec4<bool>(true, false, false, var_3.x))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(step(522f, 125f)), -609f, 194f)))));
}

