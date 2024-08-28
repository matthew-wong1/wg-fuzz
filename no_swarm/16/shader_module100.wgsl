struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_5) -> u32 {
    var var_0 = abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), vec2<i32>(reverseBits(arg_1.a.x) | arg_1.a.x, arg_1.a.x)));
    var_0 = select(_wgslsmith_mult_vec2_i32(u_input.b.xz, u_input.b.yx), vec2<i32>(arg_1.a.x, -u_input.d), select(vec2<bool>(arg_1.b.a, !(!arg_1.b.a)), select(!select(vec2<bool>(arg_1.b.a, false), vec2<bool>(true, true), true), vec2<bool>(arg_1.b.a, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.b.a), arg_1.b.a), !arg_1.b.a)), arg_0 <= 77318u));
    let var_1 = arg_1.b.a || true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.c + 362f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.c, arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1034f, -713f)))))));
    var var_3 = 310f;
    return _wgslsmith_add_u32(~arg_0, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.e.x, 117806u, u_input.e.x) >> (vec4<u32>(1u, 73073u, u_input.e.x, 33594u) % vec4<u32>(32u)), vec4<u32>(arg_0, 39752u, arg_0, ~u_input.e.x))) ^ ~arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = ~74505u;
    let var_1 = arg_1.c.a;
    var_0 = _wgslsmith_add_u32(abs(u_input.e.x), _wgslsmith_mod_u32(1u, max(arg_1.b.x, ~4294967295u))) >> (u_input.e.x % 32u);
    var var_2 = select(select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))), vec4<bool>(true, true, true, true), (-arg_0 == u_input.b.x) || true), !vec4<bool>(_wgslsmith_f_op_f32(exp2(var_1)) <= -132f, !(var_1 <= var_1), false, !any(vec2<bool>(false, false))), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), vec4<bool>(0i >= u_input.d, _wgslsmith_f_op_f32(select(1959f, var_1, false)) <= _wgslsmith_f_op_f32(arg_1.a - var_1), 0u <= func_3(0u, Struct_5(vec4<i32>(arg_0, 0i, 2147483647i, 33377i), Struct_4(true), var_1)), true), !(-1337f < arg_1.c.b)));
    var var_3 = reverseBits(u_input.e.x);
    return vec2<u32>(arg_1.b.x ^ u_input.e.x, ~arg_1.c.c);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(0i, 1i, -2147483647i, 12388i)) & vec4<i32>(~select(u_input.b.x, u_input.c, false), 5574i, -u_input.a, 1i), ~vec4<i32>(u_input.d | -u_input.d, u_input.a, 32847i, ~u_input.d & reverseBits(-46136i)));
    let var_1 = u_input.b;
    var_0 = reverseBits(var_1.x);
    let var_2 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), 1u), select(func_2(34081i, Struct_2(-1847f, vec4<u32>(u_input.e.x, 51364u, 25748u, u_input.e.x), Struct_1(arg_0, arg_1.x, u_input.e.x))), u_input.e.zx ^ vec2<u32>(u_input.e.x, u_input.e.x), true)));
    var_0 = var_1.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x - arg_0)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f - 611f) * _wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(floor(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x ^ ~18195u;
    var var_1 = abs(select(-(~vec4<i32>(u_input.b.x, u_input.c, 0i, -34144i) << (~vec4<u32>(u_input.e.x, 0u, 1u, u_input.e.x) % vec4<u32>(32u))), select(countOneBits(vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, u_input.a)), -vec4<i32>(u_input.d, u_input.c, u_input.c, -46971i) >> (vec4<u32>(24387u, u_input.e.x, 0u, 6708u) % vec4<u32>(32u)), true), vec4<bool>(false, false, any(vec3<bool>(true, true, true)), !any(vec3<bool>(true, true, false)))));
    var var_2 = u_input.e;
    var var_3 = Struct_4(all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false)));
    var_0 = var_2.x;
    var var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1420f, 1977f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-713f - 422f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -469f), vec4<f32>(-296f, -189f, -886f, -217f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(699f, 602f))))))), -1i, 203f);
}

