struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> i32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = select(true, any(!vec4<bool>(false, false, false, arg_2.b)), -var_0.a >= (-41762i >> (_wgslsmith_dot_vec4_u32(arg_0, arg_0) % 32u))) || false;
    var var_2 = arg_2.b;
    var var_3 = arg_2;
    return _wgslsmith_clamp_i32(u_input.a | -(_wgslsmith_mult_i32(-1i, var_0.a) & countOneBits(22903i)), ~_wgslsmith_add_i32(~firstTrailingBit(arg_2.a), firstLeadingBit(var_3.a)), max(_wgslsmith_mod_i32(-arg_2.a, ~var_0.a), _wgslsmith_mult_i32(~(-arg_2.a), -43889i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(firstTrailingBit(u_input.a), true, !vec2<bool>(any(vec2<bool>(var_0.c.x, true)), any(arg_1.zz)));
    var_1 = Struct_1(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-21276i, var_1.a, 2147483647i, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, var_1.a, -1i, var_0.a))), 49472i), var_1.b, vec2<bool>(all(!arg_1.yx), true));
    var var_2 = vec2<bool>(59394u >= _wgslsmith_sub_u32(63077u, (u_input.d & 67972u) << (~u_input.d % 32u)), any(!(!vec4<bool>(false, false, var_1.b, arg_1.x))));
    var_0 = Struct_1(arg_0.a, var_1.b, !select(vec2<bool>(arg_0.c.x, all(var_1.c)), select(!arg_0.c, vec2<bool>(false, false), arg_1.x), true));
    return select(vec2<bool>(true, true), arg_1.yy, vec2<bool>(arg_1.x, !(!var_1.c.x)));
}

fn func_2() -> vec2<f32> {
    var var_0 = vec2<bool>(true, true);
    var_0 = func_4(Struct_1(u_input.e, false, vec2<bool>(all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, false, true), false)), any(!vec4<bool>(var_0.x, false, var_0.x, false)))), vec3<bool>(abs(u_input.b.x) >= func_3(abs(vec4<u32>(u_input.d, 1u, 38776u, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -288f), Struct_1(47934i, true, vec2<bool>(true, var_0.x)), vec3<f32>(-155f, -1198f, 128f)), abs(-2147483647i) >= _wgslsmith_mod_i32(countOneBits(70432i), reverseBits(u_input.e)), true));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) - _wgslsmith_div_f32(1776f, -722f)))) != -218f, true);
    let var_1 = 88485u;
    var_0 = !select(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(false, false)), !vec2<bool>(var_0.x, true), select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), false)), select(vec2<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), true), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, !var_0.x)), select(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), var_0.x), vec2<bool>(true, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec2<bool>(any(vec3<bool>(true, false, var_0.x)), var_0.x)));
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-616f, 894f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(round(-929f))))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(913f, -235f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1500f, 1438f), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -711f), vec2<f32>(-1680f, -1482f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), 2073f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-653f, -577f)), vec2<f32>(-1440f, 152f))))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(~(-arg_0.a), arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-128f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-472f * 386f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 455f))))))));
    var var_3 = u_input.b;
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, var_2.x))) + vec2<f32>(-1093f, 948f))));
    return Struct_1(u_input.a, all(vec4<bool>(arg_0.b, all(select(vec4<bool>(false, arg_0.c.x, arg_0.b, arg_0.b), vec4<bool>(false, true, arg_0.c.x, arg_0.c.x), vec4<bool>(false, true, arg_0.c.x, arg_0.b))), arg_0.b, arg_0.b | true)), !select(!(!vec2<bool>(arg_0.c.x, false)), !select(arg_0.c, vec2<bool>(arg_0.c.x, arg_0.b), arg_0.c.x), arg_0.b));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = 0i | _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, arg_0.a, u_input.b.x)), _wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(arg_0.a, 26493i, 43095i), u_input.b))), arg_0.a);
    var var_1 = arg_0;
    var var_2 = -1352f;
    let var_3 = u_input.c.zz;
    var var_4 = !(!vec3<bool>(true, var_1.c.x, arg_0.c.x));
    return func_1(func_1(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = u_input.a;
    var var_2 = func_5(func_1(Struct_1(_wgslsmith_sub_i32(min(1i, u_input.b.x), -2147483647i), true, select(!vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0))));
    let var_3 = func_5(func_5(Struct_1(u_input.b.x, var_2.c.x, func_4(func_5(Struct_1(4804i, var_2.b, var_2.c)), vec3<bool>(var_0, var_2.b, true)))));
    var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(34402u, u_input.c.x, u_input.c.x, 85978u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)) % 32u), ~(-2147483647i), ~u_input.a), u_input.a), false, !func_4(var_3, vec3<bool>(all(vec3<bool>(var_0, var_0, false)), false, any(vec3<bool>(var_0, false, var_3.b)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-623f + -248f)))))), _wgslsmith_div_f32(-968f, 1412f), 1f);
    var var_5 = select(vec4<bool>(!func_5(Struct_1(var_2.a, var_0, var_3.c)).b && true, var_0, !any(select(vec3<bool>(false, false, var_2.c.x), vec3<bool>(var_3.b, var_2.c.x, var_2.b), var_2.c.x)), func_1(var_3).b), !select(vec4<bool>(false, var_0, any(vec4<bool>(false, true, var_0, true)), true), !(!vec4<bool>(false, var_0, var_3.b, true)), select(vec4<bool>(false, var_3.c.x, true, var_0), !vec4<bool>(var_0, var_3.b, var_2.c.x, var_0), vec4<bool>(false, var_2.c.x, var_0, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

