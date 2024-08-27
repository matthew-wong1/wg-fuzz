struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    var var_0 = !arg_1.e.x;
    var var_1 = !vec2<bool>(arg_1.e.x, !(_wgslsmith_f_op_f32(-arg_1.d) <= arg_1.a.x));
    var_1 = arg_1.e.yw;
    var_0 = all(arg_1.e);
    var_1 = select(vec2<bool>(any(select(!arg_1.e.zw, !arg_1.e.yw, !vec2<bool>(var_1.x, false))), ~u_input.b > 18082u), select(arg_1.e.xw, select(!arg_1.e.yw, vec2<bool>(var_1.x, false), all(vec2<bool>(false, true))), !(!select(arg_1.e.ww, arg_1.e.zz, vec2<bool>(false, false)))), vec2<bool>(true, _wgslsmith_f_op_f32(min(-743f, arg_2)) < _wgslsmith_div_f32(-1475f, _wgslsmith_f_op_f32(abs(arg_2)))));
    return _wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 102300u)), abs(vec2<u32>(63989u, u_input.b)))), vec2<u32>(~firstTrailingBit(u_input.b | u_input.b), firstTrailingBit(0u)));
}

fn func_4(arg_0: vec2<u32>) -> f32 {
    var var_0 = ~select(vec4<i32>(-1i, 19512i, ~16219i, 10111i), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, -23913i, 1i)), true);
    var_0 = vec4<i32>(select(countOneBits(min(_wgslsmith_sub_i32(var_0.x, u_input.c.x), -827i)), u_input.a.x, true), var_0.x, -u_input.a.x, -reverseBits(_wgslsmith_sub_i32(u_input.d, 30839i)) | var_0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1920f, 1063f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1381f, 1000f) + vec2<f32>(-272f, -230f))) - vec2<f32>(_wgslsmith_div_f32(227f, 461f), _wgslsmith_f_op_f32(-542f + -1820f)))), any(vec2<bool>(any(vec3<bool>(false, false, true)), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-184f)))))), vec4<bool>(!all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), true, true, true));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.a)))), any(select(select(vec4<bool>(var_1.b, false, false, var_1.e.x), var_1.e, var_1.c), var_1.e, var_1.e.x)), true, -462f, select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -566f) < _wgslsmith_f_op_f32(-var_1.d), var_1.e.x, any(select(vec2<bool>(true, var_1.b), vec2<bool>(false, var_1.b), var_1.e.wy)), all(var_1.e) == true), var_1.e, false));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d))))), all(vec4<bool>(true, true, !var_1.c, !var_2.b)) || true, all(var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(486f)), _wgslsmith_f_op_f32(-var_2.d), var_1.c)) + var_1.a.x) - 849f), select(!var_1.e, var_1.e, !select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, var_2.b, false, true), vec4<bool>(false, true, var_1.c, var_2.c), vec4<bool>(var_2.c, var_2.b, true, var_1.c)), var_1.e)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(948f + -712f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(362f, 843f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1773f, 538f)), _wgslsmith_div_f32(-969f, -1706f)))), true, any(var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(u_input.c.x, Struct_1(vec2<f32>(-873f, -1000f), var_0.x, true, 1506f, vec4<bool>(true, var_0.x, false, false)), 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(sign(711f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1529f, -807f))))), !(!vec4<bool>(select(var_0.x, var_0.x, false), false, var_0.x, var_0.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 1000f)))), var_1.a)), !var_1.c, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1463f)) * var_1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.d))), u_input.d != reverseBits(0i)))), !select(!select(vec4<bool>(var_1.c, true, var_1.c, false), var_1.e, vec4<bool>(true, true, true, true)), var_1.e, all(select(var_0, vec2<bool>(false, var_0.x), true))));
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(275i, -35095i, -2147483647i, u_input.a.x), countOneBits(vec4<i32>(37992i, 2645i, u_input.c.x, u_input.c.x))), vec4<i32>(2147483647i, reverseBits(10267i), reverseBits(-21295i), 1i)) << (((abs(vec4<u32>(u_input.b, u_input.b, 17989u, 14918u)) << (reverseBits(vec4<u32>(0u, u_input.b, u_input.b, u_input.b)) % vec4<u32>(32u))) << (max(vec4<u32>(20343u, u_input.b, 7663u, u_input.b), vec4<u32>(u_input.b, 4294967295u, 4294967295u, 6540u) & vec4<u32>(1u, u_input.b, 4294967295u, 25553u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~max(vec4<i32>(-17455i, 2147483647i, u_input.c.x, 3560i), -vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x))));
    var var_3 = u_input.b;
    return Struct_1(var_1.a, 10695u < reverseBits(func_3(var_2.x, Struct_1(vec2<f32>(var_1.d, var_1.a.x), var_0.x, var_1.e.x, -293f, var_1.e), _wgslsmith_f_op_f32(-var_1.d)).x), false, 438f, vec4<bool>(!var_1.e.x, !select(false, var_0.x, all(vec2<bool>(var_1.e.x, true))), false, true));
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    var var_0 = reverseBits(_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(4294967295u, u_input.b, 78966u))), reverseBits(~(~vec3<u32>(u_input.b, 14942u, 1u)))));
    var var_1 = func_2();
    let var_2 = firstTrailingBit(-u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1683f, _wgslsmith_f_op_f32(arg_0 * 1571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) * var_1.d) * arg_0);
    var var_4 = var_1.e.x;
    return _wgslsmith_f_op_f32(-var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 24352u;
    var var_1 = _wgslsmith_f_op_f32(func_1(-983f, !(4294967295u != _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13378u, u_input.b, var_0, 0u), vec4<u32>(0u, 29722u, 0u, u_input.b)), vec4<u32>(13572u, 1u, var_0, u_input.b)))));
    var_1 = 645f;
    let var_2 = func_2();
    var_1 = _wgslsmith_f_op_f32(-var_2.a.x);
    let var_3 = _wgslsmith_f_op_f32(floor(-159f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1328f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<u32>(4294967295u, u_input.b))))), 974f), _wgslsmith_mult_vec4_u32(~(~firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, 65906u))), min(vec4<u32>(37687u, ~u_input.b, select(var_0, u_input.b, true), ~6877u), select(vec4<u32>(99367u, 4294967295u, u_input.b, 10292u), select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, var_0, 4294967295u), var_2.e), select(var_2.e, var_2.e, false)))), ~(~vec2<i32>(min(u_input.d, 1i), ~u_input.a.x)));
}

