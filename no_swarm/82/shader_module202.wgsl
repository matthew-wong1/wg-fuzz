struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<i32>) -> bool {
    return arg_1.b.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = ~countOneBits(-(~(~vec4<i32>(arg_0.a.x, 2147483647i, u_input.c.x, u_input.c.x))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(max(-(~u_input.c), _wgslsmith_sub_vec3_i32(select(vec3<i32>(3331i, arg_0.a.x, 2147483647i), vec3<i32>(0i, -26190i, var_0.x), false), var_0.xxz)), u_input.c), vec4<bool>(any(vec4<bool>(arg_0.d.x <= 177f, func_3(Struct_1(vec3<i32>(u_input.c.x, var_0.x, 9633i), arg_0.c, arg_0.c, vec3<f32>(167f, arg_0.d.x, arg_0.d.x)), Struct_1(var_0.xyz, arg_0.b, arg_0.b, arg_0.d), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, 4294967295u), var_0.xz), arg_0.b.x, any(vec4<bool>(false, false, false, arg_0.b.x)))), true, arg_0.b.x, u_input.a.x < ~u_input.a.x), arg_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.x)), 485f, _wgslsmith_f_op_f32(-arg_0.d.x)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -516f, arg_0.d.x)))))));
    var var_2 = u_input.b.x;
    var_0 = ~(abs(vec4<i32>(1i, -44086i, u_input.c.x, arg_0.a.x)) ^ -(vec4<i32>(-1i, -2147483647i, -10322i, var_0.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 31823u, 23666u) % vec4<u32>(32u))));
    var var_3 = Struct_1(vec3<i32>(~var_1.a.x, -1i, abs(-2147483647i)), !var_1.b, vec4<bool>(any(select(vec4<bool>(true, arg_0.c.x, false, false), select(vec4<bool>(var_1.c.x, true, var_1.b.x, var_1.c.x), var_1.b, arg_0.b), true)), true, true, any(select(!var_1.c, select(arg_0.c, vec4<bool>(true, arg_0.b.x, var_1.b.x, var_1.c.x), var_1.b), func_3(arg_0, var_1, u_input.b, var_1.a.xy)))), var_1.d);
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = !any(vec2<bool>(true, !(u_input.a.x >= 35155u)));
    var var_1 = Struct_1(u_input.c, vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -659f), -141f)) >= _wgslsmith_f_op_f32(sign(577f)), false, !any(vec4<bool>(false, true, true, false)) && select(false, true, true), any(vec2<bool>(func_2(Struct_1(vec3<i32>(-16514i, -3202i, arg_0), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec3<f32>(602f, -303f, 1000f))), true))), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, 843f, 191f) + vec3<f32>(574f, 527f, -199f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 249f, 1000f), vec3<f32>(-857f, 1097f, -1010f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, 1009f, -1488f))), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1964f, -1342f, -285f), vec3<f32>(-1179f, 565f, -419f), vec3<bool>(false, false, false)))))))));
    return Struct_1(u_input.c, var_1.b, select(!vec4<bool>(true, var_1.b.x, var_1.b.x, all(vec4<bool>(var_1.b.x, var_1.c.x, var_1.c.x, var_1.b.x))), var_1.c, var_1.c.x), vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.d.x)))), _wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.x);
    var var_1 = func_1((_wgslsmith_sub_i32(0i, var_0.a.x) << (35591u % 32u)) ^ var_0.a.x);
    let var_2 = Struct_1(vec3<i32>(var_0.a.x, func_1(var_0.a.x).a.x & var_0.a.x, u_input.c.x), vec4<bool>(false, var_1.b.x, var_0.b.x, var_1.c.x), !(!var_0.b), _wgslsmith_f_op_vec3_f32(-var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, -3883i, u_input.c.x), min(u_input.b.x, firstLeadingBit(select(4294967295u, 1u, var_2.c.x)) & (21346u >> (u_input.b.x % 32u))), var_2.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, 106f, var_1.d.x, 690f) + vec4<f32>(1728f, var_1.d.x, var_1.d.x, 143f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1179f, -1240f, var_0.d.x, 1005f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, 390f, var_0.d.x, var_2.d.x) - vec4<f32>(-1000f, -562f, 1000f, var_1.d.x)))))));
}

