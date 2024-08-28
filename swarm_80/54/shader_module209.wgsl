struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, -387f, 586f, -696f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, -104f, -267f, 464f))), vec4<f32>(-2745f, -1000f, -1318f, 1306f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_0.x) * arg_0.c.x)))) - -678f);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1487f)))) * vec2<f32>(259f, -955f)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a), ~_wgslsmith_clamp_i32(firstLeadingBit(-14673i), select(arg_0.b, -arg_0.b, true), 1i | abs(arg_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_1.x), vec2<f32>(310f, var_0.x), true)))));
    var var_3 = arg_0;
    return -1i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(-485f, reverseBits(func_3(Struct_1(arg_0.x, -1i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, arg_0.x), arg_0.yy))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), arg_0.xx);
    global0 = var_0.a;
    let var_1 = select(vec2<bool>(all(vec2<bool>(var_0.b == var_0.b, any(vec2<bool>(true, true)))), true && any(vec2<bool>(true, true))), vec2<bool>(false, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))))), all(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true))));
    let var_2 = 1u;
    let var_3 = Struct_1(-1518f, -33909i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(432f)), var_0.a > 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-var_0.c.x)))));
    return var_3;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(vec3<f32>(245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)), -1609f));
    global0 = _wgslsmith_div_f32(-263f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(554f, 344f)) - 875f) - _wgslsmith_f_op_f32(-371f - _wgslsmith_div_f32(var_0.c.x, var_0.c.x))) * var_0.c.x));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, -1596f, -412f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a, var_0.a, -1947f))), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -458f, var_0.c.x))))));
    let var_2 = Struct_1(1000f, 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)))));
    let var_3 = ~min(reverseBits((u_input.b.x ^ u_input.a.x) ^ _wgslsmith_add_u32(1u, 27303u)), 1u);
    return StorageBuffer(var_2.b, vec3<i32>(-18385i, -countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(46229i, var_1.b, var_2.b), vec3<i32>(var_0.b, -1i, -3543i))), var_1.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-609f, 848f, _wgslsmith_f_op_f32(var_0.a * 1099f), -688f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(i32(-1i) * -_wgslsmith_mult_i32(i32(-1i) * -27673i, 1i), -12151i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-557f - -472f), -1749f, false))))), _wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-624f)) + 1574f));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(-169f))))))));
    global0 = -552f;
    var var_2 = 42002u;
    let x = u_input.a;
    s_output = func_1();
}

