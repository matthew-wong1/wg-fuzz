struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    var var_0 = firstTrailingBit(~(-1i));
    var var_1 = -_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(arg_1.x, u_input.b.x)), vec2<i32>(arg_1.x, -arg_1.x));
    let var_2 = Struct_2(Struct_1(select(select(!vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0))), !vec3<bool>(false, arg_0, arg_0), false), any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1461f, _wgslsmith_f_op_f32(min(444f, -488f)))))), !vec3<bool>(true, true, any(vec4<bool>(false, true, true, arg_0)))), all(vec3<bool>(true, arg_0, _wgslsmith_sub_i32(0i, u_input.a) < _wgslsmith_sub_i32(-2147483647i, u_input.d.x))), any(select(!select(vec2<bool>(true, arg_0), vec2<bool>(false, false), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), true))), Struct_1(!(!(!vec3<bool>(arg_0, true, true))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0, true), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -2388f), !vec3<bool>(!arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1674f, _wgslsmith_div_f32(-1000f, 1203f))));
    var_1 = arg_1.x;
    var_0 = countOneBits(u_input.a);
    return _wgslsmith_f_op_f32(797f * 180f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = abs(u_input.c.xx);
    var var_1 = Struct_1(vec3<bool>(true, !arg_1.x, false), !any(select(!arg_1.wxy, arg_0.a, vec3<bool>(true, true, false))), arg_3.c, arg_0.a);
    var var_2 = true;
    var_1 = Struct_1(!vec3<bool>(any(!vec2<bool>(arg_1.x, arg_1.x)), true, false), !(max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(43340u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(5171u, u_input.c.x, u_input.c.x, 0u))) >= var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(false, u_input.d.xx))))))), arg_1.ywy);
    var_2 = !(!arg_3.b);
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 55710u), var_0.x)), 4294967295u);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = !vec3<bool>(true, arg_2.b, all(!arg_2.a.xz));
    var var_1 = ~max(u_input.c.x, ~52335u);
    let var_2 = _wgslsmith_mult_u32(1u, u_input.c.x) <= 7526u;
    var var_3 = vec2<i32>(-1i, -2147483647i) >> (vec2<u32>(func_2(arg_2, vec4<bool>(var_2, var_0.x, arg_0 <= arg_2.c, true), arg_1, arg_2), u_input.c.x) % vec2<u32>(32u));
    let var_4 = arg_2;
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(true, true, true), !vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, true, false))), true), !all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), _wgslsmith_f_op_f32(f32(-1f) * -2337f), select(vec3<bool>(any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(sign(426f)) <= _wgslsmith_f_op_f32(func_1(163f, u_input.d.x, Struct_1(vec3<bool>(false, false, false), true, 1000f, vec3<bool>(false, false, true)), u_input.d.x))), select(vec3<bool>(u_input.b.x < -29802i, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, any(vec2<bool>(true, true)))), true));
    var var_1 = Struct_2(Struct_1(var_0.a, var_0.d.x, 2156f, select(vec3<bool>(var_0.d.x, true, var_0.a.x && var_0.b), select(var_0.a, var_0.a, true), !(u_input.d.x < u_input.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(820f, _wgslsmith_f_op_f32(var_0.c * var_0.c)))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.a.x, vec2<i32>(31764i, u_input.b.x)))))), !var_0.b, Struct_1(var_0.d, var_0.b, 809f, vec3<bool>(any(vec4<bool>(false, var_0.b, true, false)), true, var_0.b)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(-1211f + _wgslsmith_f_op_f32(trunc(1f)))));
    var_1 = Struct_2(var_1.a, true, var_0.a.x, var_1.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.e, var_1.e)))))));
    var_1 = Struct_2(Struct_1(var_0.d, any(var_1.a.a), var_1.d.c, var_1.d.d), !(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, u_input.d.xy), vec2<i32>(-74114i, 32302i)) == (i32(-1i) * -22041i)), true, Struct_1(vec3<bool>(!(!var_0.d.x), true, any(!var_1.a.d.zz)), var_0.d.x & true, -1205f, vec3<bool>(var_0.a.x, !(!var_0.b), !var_1.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_1.d.c)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) + _wgslsmith_f_op_f32(exp2(var_0.c))), -643f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1787f))), _wgslsmith_f_op_f32(f32(-1f) * -439f))))));
    var_1 = Struct_2(Struct_1(vec3<bool>(true, _wgslsmith_f_op_f32(round(var_2.x)) <= _wgslsmith_f_op_f32(-var_0.c), var_0.d.x), var_0.b, -1000f, select(var_0.d, vec3<bool>(false, all(vec3<bool>(true, false, var_0.a.x)), var_1.a.b), all(vec4<bool>(var_1.d.b, var_0.b, var_0.a.x, var_0.a.x)))), !all(vec2<bool>(select(false, false, var_0.a.x), var_1.a.a.x)), var_0.b, Struct_1(var_0.a, var_0.a.x, var_2.x, select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.c, false), !select(var_0.a, var_0.d, var_0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c, var_1.d.c) + var_2.x), _wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.ww * var_2.yw), _wgslsmith_f_op_vec2_f32(max(var_1.e, var_1.e)))) - var_1.e)));
    var var_3 = vec3<i32>(~(-27457i), u_input.d.x << (select(firstTrailingBit(firstTrailingBit(63884u)), u_input.c.x, true) % 32u), 33922i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(abs(var_3.x), -u_input.b.x));
}

