struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(~(~_wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(u_input.b, u_input.b, 0i)), vec3<i32>(u_input.b, 32275i, u_input.b), vec3<i32>(u_input.b, u_input.b, 7249i) ^ vec3<i32>(-1i, u_input.b, u_input.b))), firstTrailingBit(abs(select(vec3<i32>(19599i, u_input.b, u_input.a) << (vec3<u32>(u_input.c.x, u_input.c.x, 9410u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -40559i, 37011i), vec3<i32>(2147483647i, u_input.b, u_input.b)), vec3<bool>(true, true, true)))));
    let var_1 = Struct_2(Struct_1(553f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -294f)), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), vec2<bool>(u_input.c.x <= u_input.c.x, u_input.c.x < 0u)), select(true, false, true)));
    let var_2 = arg_0;
    return 981f;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(207f, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, -719f, 740f) + arg_0)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0), arg_0, !vec4<bool>(arg_1, arg_1, false, arg_1)))))));
    let var_1 = -327f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), Struct_1(112f), select(vec2<bool>(u_input.a == 2147483647i, true), vec2<bool>(true, true), vec2<bool>(false, !arg_1 && all(vec3<bool>(arg_1, arg_1, false)))));
    let var_4 = !select(all(var_3.c), true, any(vec4<bool>(any(var_3.c), select(var_3.c.x, var_3.c.x, false), var_3.c.x, any(vec4<bool>(true, arg_1, false, arg_1)))));
    return Struct_2(var_3.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -229f)))), select(vec2<bool>(all(vec4<bool>(false, var_4, false, arg_1)), true), vec2<bool>(select(true, !var_4, !var_3.c.x), arg_1), !(!var_3.c)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = select(vec2<i32>(1i, 24708i) ^ (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, u_input.b), vec2<i32>(-6713i, 41244i))), -vec2<i32>(_wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_add_i32(u_input.a, -48845i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(36357i, u_input.b, u_input.a, 4335i)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b))), select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, arg_0.a.a, arg_0.b.a, -331f)), !arg_0.c.x).c.x, all(select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), !vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x), !vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, true))), _wgslsmith_f_op_f32(-arg_0.a.a) != _wgslsmith_f_op_f32(round(-1443f))));
    let var_1 = ~(min(u_input.c, select(u_input.c, vec3<u32>(0u, 0u, 0u), vec3<bool>(false, true, arg_0.c.x))) | ~u_input.c);
    var var_2 = vec2<f32>(arg_0.b.a, _wgslsmith_f_op_f32(round(arg_0.b.a)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(var_2.x)), _wgslsmith_f_op_f32(493f + -617f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(720f, 1927f)), 1000f, false))), arg_0.b.a);
    let var_3 = ~(~(var_1.zz << (vec2<u32>(~4294967295u, 1958u) % vec2<u32>(32u))));
    return -706f;
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(vec4<f32>(-1095f, 810f, 240f, 875f), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), func_1(), !vec2<bool>(true, all(vec2<bool>(true, true))));
    let var_1 = var_0.a;
    let var_2 = ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(i32(-1i) * -1i, 2147483647i, max(2147483647i, u_input.a), -u_input.a)), -(~vec4<i32>(u_input.b, -1i, u_input.a, u_input.b)));
    let var_3 = Struct_1(var_0.b.a);
    let var_4 = Struct_2(func_1(), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(863f, 486f, 1659f, var_1.a) + vec4<f32>(857f, -695f, -1102f, var_3.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(616f, var_1.a, var_3.a, 1019f) * vec4<f32>(-1700f, var_1.a, 1144f, -2250f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + var_0.b.a)) >= _wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(-var_3.a))).b, vec2<bool>(true, !(!all(vec3<bool>(var_0.c.x, true, var_0.c.x)))));
    let var_5 = select(vec3<bool>(var_0.c.x, true, -1360f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * -342f))), select(!select(!vec3<bool>(true, true, var_0.c.x), !vec3<bool>(var_4.c.x, var_4.c.x, var_4.c.x), u_input.c.x != 1u), select(vec3<bool>(true, all(vec2<bool>(var_0.c.x, var_4.c.x)), true), !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), !vec3<bool>(false, false, var_4.c.x)), var_3.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a))), vec3<bool>(true, all(select(vec4<bool>(var_0.c.x, true, false, true), vec4<bool>(true, var_4.c.x, true, var_0.c.x), var_4.c.x)) & true, true));
    let var_6 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a, -871f)) * _wgslsmith_f_op_f32(exp2(var_1.a))), var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2154f, -1027f, var_4.c.x)) - -860f), -1459f), _wgslsmith_f_op_f32(1215f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-749f, var_1.a)))) < var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.a.a))))), ~(~(-1i << (u_input.c.x % 32u)) ^ _wgslsmith_dot_vec2_i32(var_2.ww, vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)))));
}

