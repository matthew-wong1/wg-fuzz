struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_5) -> u32 {
    return u_input.b;
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1609f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-514f))))));
    var var_1 = Struct_1(arg_0.e.x, arg_0.b, select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.e)) + _wgslsmith_f_op_vec4_f32(arg_0.e * arg_0.e)))));
    var_0 = 1180f;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.e.x)))), u_input.d ^ _wgslsmith_clamp_i32(var_1.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -23540i, u_input.d, u_input.e.x), vec4<i32>(-2147483647i, arg_0.c.x, var_1.b, -24699i)), ~0i), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, arg_0.e.x, var_1.a), var_1.d)));
    return -231f;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32) -> bool {
    let var_0 = !(!any(vec3<bool>(u_input.e.x > arg_1.x, true, true)));
    let var_1 = Struct_3(Struct_1(arg_2, 0i, vec3<bool>(_wgslsmith_f_op_f32(step(arg_2, arg_2)) < arg_2, false, !all(vec2<bool>(false, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(446f, arg_2, arg_2, -385f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2009f, arg_2, 859f, arg_2) + vec4<f32>(arg_2, -140f, arg_2, -393f))))), select(!(!(!vec2<bool>(var_0, true))), vec2<bool>(var_0 || false, true), true), Struct_2(Struct_1(1000f, 16752i, vec3<bool>(true, var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-110f, arg_2, arg_2, arg_2))), true, !(!all(vec2<bool>(false, var_0)))));
    var var_2 = firstTrailingBit(~(~vec4<u32>(func_2(Struct_5(var_1, Struct_3(var_1.c.a, vec2<bool>(true, var_0), var_1.c), arg_1.x)), countOneBits(29035u), 4294967295u, _wgslsmith_sub_u32(4294967295u, 1u))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(func_3(Struct_4(vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, 4294967295u), arg_1.x, u_input.e, 37048u, var_1.c.a.d)))), -arg_1.x, !var_1.a.c, var_1.c.a.d), vec2<bool>(var_1.c.a.c.x, !all(vec4<bool>(false, false, false, var_1.a.c.x))), var_1.c);
    let var_4 = select(vec4<bool>(var_1.b.x, 676f > _wgslsmith_f_op_f32(var_3.c.a.a - var_3.c.a.d.x), _wgslsmith_mult_u32(~1844u, ~var_2.x) > var_2.x, var_0), select(select(select(vec4<bool>(var_0, false, false, var_1.a.c.x), vec4<bool>(var_1.b.x, false, var_3.b.x, var_1.a.c.x), !vec4<bool>(var_3.a.c.x, var_1.c.b, var_0, false)), select(!vec4<bool>(var_1.b.x, var_3.b.x, var_0, var_0), select(vec4<bool>(false, var_3.a.c.x, false, false), vec4<bool>(var_0, var_3.c.b, false, false), true), false || var_3.a.c.x), false), !select(vec4<bool>(var_1.b.x, var_0, false, var_1.b.x), vec4<bool>(var_1.c.b, var_1.b.x, var_3.b.x, true), !vec4<bool>(var_0, var_1.a.c.x, false, true)), true), !select(!select(vec4<bool>(false, var_1.a.c.x, var_3.a.c.x, var_0), vec4<bool>(true, true, false, true), var_3.c.a.c.x), select(vec4<bool>(var_0, var_1.b.x, false, var_1.c.b), !vec4<bool>(var_1.a.c.x, true, var_3.a.c.x, false), var_0 | false), !(!vec4<bool>(var_1.a.c.x, true, true, var_1.c.b))));
    return !all(var_4.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-36446i);
    let var_1 = -select(firstTrailingBit(u_input.e.yy), vec2<i32>(-1i, -324i), vec2<bool>(!all(vec4<bool>(false, true, false, false)), true));
    var var_2 = vec3<bool>(false, select(true, select(all(vec4<bool>(true, false, true, true)), func_1(~u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(-2147483647i, var_1.x)), -793f), false), true), func_1(countOneBits(u_input.c.xzw), -(~vec2<i32>(var_1.x, var_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-517f - 273f)))))));
    var var_3 = var_2.x;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(exp2(1f)), 0i, select(!(!(!vec3<bool>(var_2.x, var_2.x, false))), !vec3<bool>(any(vec2<bool>(var_2.x, var_2.x)), true, any(vec3<bool>(var_2.x, var_2.x, false))), select(!vec3<bool>(false, var_2.x, var_2.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), !var_2.x), vec3<bool>(all(vec4<bool>(true, true, var_2.x, var_2.x)), false, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-196f, 1844f, 1509f, 1416f), vec4<f32>(-1187f, -1000f, -1239f, 398f), vec4<bool>(var_2.x, false, false, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1035f, 1225f, 547f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -899f, -285f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1133f * 215f), _wgslsmith_f_op_f32(f32(-1f) * -1043f), _wgslsmith_f_op_f32(-499f + 518f), -798f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1755f, -558f, 1518f, 208f), vec4<f32>(-623f, -601f, 2248f, -428f), !vec4<bool>(var_2.x, true, var_2.x, var_2.x))), vec4<bool>(all(vec2<bool>(false, var_2.x)), true, all(vec4<bool>(var_2.x, true, false, true)), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.b, _wgslsmith_div_u32(~0u, ~26434u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 4786u), _wgslsmith_sub_u32(u_input.a.x, 29085u), ~u_input.b), select(_wgslsmith_mult_u32(4294967295u, u_input.c.x), 4294967295u, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_4.d.xxy), _wgslsmith_f_op_vec3_f32(select(var_4.d.wzx, vec3<f32>(-1000f, 1807f, var_4.d.x), var_4.c)))))));
}

