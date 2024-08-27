struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: bool,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1190f, _wgslsmith_f_op_f32(-1000f + 335f), _wgslsmith_f_op_f32(-arg_0.d.x)))), arg_0.b.e.wzz)));
    var_0 = vec3<f32>(1293f, _wgslsmith_f_op_f32(ceil(-1230f)), _wgslsmith_f_op_f32(min(arg_0.b.c.a.b, _wgslsmith_f_op_f32(select(979f, -556f, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.a, u_input.b, -44647i), vec4<i32>(-2147483647i, u_input.b, -1i, 0i)) > _wgslsmith_add_i32(arg_0.a, 2147483647i))))));
    let var_1 = arg_0.b;
    let var_2 = vec3<bool>(select(!any(select(arg_0.b.b.wz, vec2<bool>(true, arg_0.b.d), vec2<bool>(arg_0.c, arg_0.b.a))), true, _wgslsmith_div_u32(arg_0.b.c.b, countOneBits(31504u)) <= 24928u), true, all(select(select(vec2<bool>(var_1.a, true), !var_1.c.d, arg_0.b.d), var_1.c.d, vec2<bool>(true, !var_1.c.a.a))));
    let var_3 = ~_wgslsmith_sub_i32(u_input.b, u_input.b);
    return !vec2<bool>((_wgslsmith_add_u32(1u, arg_0.b.c.b) & _wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yy)) != 27251u, any(!arg_0.b.c.d));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(Struct_1(!(_wgslsmith_mult_u32(8712u, u_input.c.x) > ~20954u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1176f + 212f)))), ~(~33212u), Struct_1(-u_input.b < -51310i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1127f, -922f) + _wgslsmith_f_op_f32(trunc(-975f))) + _wgslsmith_f_op_f32(floor(-682f)))), func_3(Struct_4(-1i, Struct_3(true, vec4<bool>(true, true, true, true), Struct_2(Struct_1(false, -1000f), u_input.a, Struct_1(true, -366f), vec2<bool>(true, false), Struct_1(true, -732f)), u_input.c.x <= u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, 901f, -2045f, 2231f))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, -108f, -662f))))), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-932f, 501f, true)) + -1130f), _wgslsmith_f_op_f32(ceil(-139f)))));
    var var_1 = var_0.c.b;
    let var_2 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.b))) * _wgslsmith_div_f32(1735f, _wgslsmith_f_op_f32(-1038f + -1851f)))), reverseBits(abs(~(u_input.c.x << (var_0.b % 32u)))), Struct_1(!(!var_0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.b, 1130f)) - _wgslsmith_f_op_f32(-var_0.a.b)))), select(vec2<bool>(true, any(var_0.d)), var_0.d, vec2<bool>(var_0.e.a, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.c.a, true, true), false)))), Struct_1(false, _wgslsmith_f_op_f32(-222f + var_0.c.b)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1519f) * _wgslsmith_f_op_f32(abs(193f)));
    let var_3 = Struct_2(Struct_1(true || all(select(vec3<bool>(true, var_2.d.x, var_0.c.a), vec3<bool>(var_2.e.a, true, true), true)), var_2.e.b), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c.x, _wgslsmith_mult_u32(0u, 30379u)), ~min(vec2<u32>(u_input.c.x, 25663u), u_input.c.zx)) | ~(~0u), Struct_1(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b)), -1000f)), !(!vec2<bool>(var_2.a.a & true, var_2.d.x)), Struct_1(~1i > countOneBits(u_input.b), var_0.a.b));
    return Struct_5(Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-16846i, u_input.b, u_input.b)), ~vec3<i32>(u_input.b, u_input.b, u_input.b)), ~(-vec3<i32>(-11219i, -43731i, u_input.b))), Struct_3(func_3(Struct_4(u_input.b, Struct_3(false, vec4<bool>(false, true, var_2.d.x, true), Struct_2(var_2.e, 76108u, Struct_1(false, -637f), vec2<bool>(false, false), var_3.e), var_2.c.a, vec4<f32>(var_2.c.b, var_3.e.b, 1256f, var_3.e.b)), var_2.d.x, vec3<f32>(754f, var_2.a.b, -1000f))).x, select(select(vec4<bool>(var_3.d.x, var_2.d.x, true, var_3.a.a), vec4<bool>(var_2.e.a, var_3.c.a, true, var_0.c.a), vec4<bool>(false, false, true, false)), vec4<bool>(var_2.d.x, var_0.c.a, var_0.c.a, var_2.e.a), any(vec4<bool>(false, var_0.c.a, var_2.d.x, false))), var_3, any(var_0.d), vec4<f32>(_wgslsmith_div_f32(var_2.a.b, 215f), _wgslsmith_div_f32(var_2.c.b, 1191f), _wgslsmith_f_op_f32(sign(var_3.a.b)), _wgslsmith_f_op_f32(step(437f, var_0.c.b)))), var_3.a.a, vec3<f32>(var_3.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - var_0.a.b), _wgslsmith_f_op_f32(floor(562f))), var_3.a.b)), Struct_4(-53230i, Struct_3(reverseBits(var_0.b) == 71165u, vec4<bool>(195i <= u_input.b, true, all(vec4<bool>(false, false, true, false)), true), var_0, var_3.c.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(770f, var_0.e.b, 850f, var_0.a.b), vec4<f32>(var_0.e.b, var_3.a.b, var_3.a.b, -1194f), false))))), select(!var_0.c.a, !var_2.c.a, false) & false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -195f, var_2.e.b)))))))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_5 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.c.x, 15237u) << (u_input.c.yx % vec2<u32>(32u));
    let var_1 = func_1(abs(u_input.c.xy));
    var var_2 = min(u_input.a, _wgslsmith_dot_vec3_u32(u_input.c, abs(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.e, ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 1i, abs(var_1.a.a)), abs(-vec4<i32>(-1i, u_input.b, -2147483647i, -43763i))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-func_1(vec2<u32>(var_0.x, u_input.c.x)).b.d.x))))), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.b, var_1.b.a)), vec2<i32>(u_input.b, -u_input.b | u_input.b)));
}

