struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = 25702i;
    return select(vec2<bool>(true, !(arg_2.a.c.x | (false && arg_2.a.c.x))), arg_2.a.c, select(!arg_2.a.c, arg_2.a.c, !arg_2.a.c.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1668f, _wgslsmith_f_op_f32(633f + -889f))), -vec4<i32>(-2147483647i, ~u_input.a.x, u_input.d.x, -2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), countOneBits(-vec3<i32>(u_input.c, u_input.d.x, -23184i)) | vec3<i32>(max(0i, 40495i), u_input.a.x, _wgslsmith_add_i32(u_input.c, u_input.c)), ~(-vec2<i32>(u_input.d.x, -91930i))));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(Struct_2(var_0.a.a, abs(~vec4<i32>(52550i, 30755i, u_input.a.x, u_input.c)) & ~u_input.a, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, var_0.a.a.x, -226f, -848f)), (vec2<u32>(u_input.b, u_input.b) ^ u_input.e.yz) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, u_input.b), vec2<u32>(48546u, u_input.e.x)) % vec2<u32>(32u)), Struct_3(Struct_2(vec3<f32>(124f, -222f, 1000f), vec4<i32>(var_0.a.b.x, var_0.a.e.x, 41384i, 29774i), vec2<bool>(var_0.a.c.x, var_0.a.c.x), var_0.a.d, var_0.a.b.wy))), vec3<i32>(~_wgslsmith_add_i32(u_input.d.x, var_0.a.b.x), 2439i, u_input.a.x), ~u_input.a.zx));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1569f))) * var_0.a.a.x), _wgslsmith_f_op_f32(min(-2965f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.a.a.x)))))), var_0.a.a.x)));
    return Struct_2(vec3<f32>(-1851f, var_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-701f))))))), _wgslsmith_sub_vec4_i32(var_0.a.b, ~reverseBits(var_0.a.b)), vec2<bool>(all(vec2<bool>(true, false)), !(func_3(vec4<f32>(-1682f, -460f, var_1, var_0.a.a.x), u_input.e.zx, Struct_3(var_0.a)).x || (-1152f >= var_0.a.a.x))), ~countOneBits(var_0.a.b.xwy), -_wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.e.x, u_input.d.x), vec2<i32>(var_0.a.d.x, -2147483647i)), vec2<i32>(~7149i, ~u_input.a.x)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1660f + 473f) - _wgslsmith_f_op_f32(ceil(-1000f)))), 226f));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-416f + var_0.x), _wgslsmith_div_f32(var_0.x, 1703f), -2801f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, -1000f, -150f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-698f * var_0.x)))))));
    var var_1 = func_2();
    var var_2 = Struct_4(_wgslsmith_add_i32(-15197i, -1089i), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-var_0.x)), -u_input.d, vec4<bool>(all(select(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, true, true, false), !vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x))), var_1.c.x, !(_wgslsmith_f_op_f32(f32(-1f) * -404f) == _wgslsmith_f_op_f32(var_0.x + var_1.a.x)), !var_1.c.x));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(758f, var_1.a.x, var_0.x, -438f) - vec4<f32>(-802f, var_1.a.x, 981f, -1000f))))))));
    return StorageBuffer(-2773i, vec3<u32>(u_input.b, arg_0, _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b), u_input.e.xxw)), u_input.e.x)), u_input.e.zx | _wgslsmith_sub_vec2_u32(select(~u_input.e.xw, vec2<u32>(34655u, u_input.b), var_2.d.yy), ~(vec2<u32>(1u, u_input.b) | vec2<u32>(23359u, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_u32(3847u, _wgslsmith_mod_u32(u_input.e.x, u_input.e.x));
    let var_1 = ~30229i;
    let x = u_input.a;
    s_output = func_1(1u);
}

