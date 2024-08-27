struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = select(vec3<bool>(all(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), true, true), vec3<bool>(all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), true)), arg_0.x > _wgslsmith_f_op_f32(sign(-149f)), (false | all(vec2<bool>(false, false))) && false), true);
    return -_wgslsmith_clamp_i32(-u_input.a, firstTrailingBit(_wgslsmith_mult_i32(~1i, _wgslsmith_div_i32(u_input.a, 10144i))), ~(~u_input.a << (0u % 32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(true, true), vec2<i32>(-49238i, min(-9432i, u_input.a)));
    var_0 = Struct_1(var_0.a, max(vec2<i32>(~(-3926i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 0i) >> ((u_input.b.x ^ 52752u) % 32u)), var_0.b));
    let var_1 = Struct_1(var_0.a, var_0.b);
    let var_2 = countOneBits(~(-49455i) | func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1499f, -1361f), vec2<f32>(353f, -589f))))));
    var_0 = var_1;
    return var_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = func_2();
    let var_1 = Struct_2(!vec4<bool>(var_0.a.x, true, true, any(vec3<bool>(false, false, var_0.a.x))));
    var var_2 = all(!select(vec4<bool>(var_0.a.x, !var_1.a.x, true, var_1.a.x), var_1.a, !select(var_1.a, var_1.a, var_1.a)));
    var_2 = true;
    var_2 = !(var_1.a.x && !all(vec2<bool>(var_1.a.x, var_1.a.x)));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(887f, 773f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2575f - 1085f)) - _wgslsmith_div_f32(-1243f, -497f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f)))));
    var var_1 = !((_wgslsmith_add_u32(u_input.c, u_input.b.x) == ~48566u) & true) & (39853i <= u_input.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-720f, var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1030f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(var_0.x - 858f)), var_0.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1255f, var_0.x, -1058f, -163f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-614f, -1134f, -1000f, -1621f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-582f, 703f, 934f, var_0.x))), vec4<bool>(false, select(false, true, false), select(false, false, true), false)))), vec4<f32>(var_0.x, -982f, _wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), !vec4<bool>(select(any(vec4<bool>(true, true, true, true)), true, true), all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(43598u, 4588u, u_input.b.x)) < 10450u, select(true, all(vec4<bool>(true, true, true, false)), u_input.a == -2147483647i))));
    var_1 = true;
    var var_3 = !vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), func_1(vec3<i32>(-1i, -4569i, u_input.a), vec2<i32>(-2147483647i, 8482i)))), func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-6445i, u_input.a, 0i), vec3<i32>(1i, u_input.a, u_input.a)), -vec2<i32>(u_input.a, u_input.a)).x);
    var var_4 = 31988i;
    var_3 = vec3<bool>(select(any(vec4<bool>(true, false, func_1(vec3<i32>(u_input.a, 2147483647i, 0i), vec2<i32>(-46411i, u_input.a)).x, u_input.a == u_input.a)), var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + 884f), _wgslsmith_f_op_f32(var_2.x + 1114f))), func_1(~vec3<i32>(u_input.a ^ u_input.a, 18082i, _wgslsmith_sub_i32(2147483647i, u_input.a)), abs(~min(vec2<i32>(-2147483647i, -47197i), vec2<i32>(u_input.a, -62015i)))).x, false);
    var_4 = -16407i;
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(~vec4<i32>(5805i, u_input.a, -1i, u_input.a), vec4<i32>(~u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -62972i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -1i)), reverseBits(-vec4<i32>(-80248i, -2147483647i, u_input.a, u_input.a) >> (abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 54118u)) % vec4<u32>(32u))), !(!select(vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(false, false, true, var_3.x), false))), ~max(~vec4<i32>(35798i, 5750i, -2147483647i, u_input.a) << (~vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), -(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_0.x) - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) - _wgslsmith_f_op_f32(2275f - 1672f)))));
}

