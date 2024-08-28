struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    let var_0 = Struct_4(Struct_3(~firstLeadingBit(1u), arg_0, Struct_2((108562u >> (u_input.e.x % 32u)) ^ u_input.e.x, u_input.b, Struct_1(arg_1.c.a), ~(~arg_1.d))));
    var var_1 = reverseBits(_wgslsmith_dot_vec2_i32(var_0.a.c.d.yy, vec2<i32>(1i, arg_1.d.x | var_0.a.c.b)));
    var_1 = arg_1.d.x;
    var_1 = 2147483647i;
    var_1 = var_0.a.c.d.x;
    return var_0.a.c.c.a;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1428f, -576f) + vec2<f32>(-655f, -1399f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1581f, -380f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(577f, -589f)))));
    var var_1 = Struct_5(~firstTrailingBit(~u_input.d) << (u_input.e.x % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_2(4294967295u, -12134i, Struct_1(var_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(9896i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -41139i, 0i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 566f) - var_0.a.x))), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(685f))), _wgslsmith_f_op_f32(sign(1433f)))), Struct_2(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.e.zyx), vec3<u32>(u_input.e.x, 19208u, 72095u)), -62762i, Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.a), vec2<f32>(var_0.a.x, var_0.a.x)))), ~min(vec4<i32>(u_input.a, u_input.a, 35467i, -1i), select(vec4<i32>(u_input.b, u_input.b, 1i, u_input.a), vec4<i32>(u_input.b, -42837i, u_input.b, u_input.b), false))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2090f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) - _wgslsmith_f_op_f32(-var_0.a.x))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_1.b.x)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(true, Struct_2(var_1.a, -13603i >> (u_input.c % 32u), var_1.d.c, abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.d.b, var_1.d.d.x, 84988i, 2147483647i), ~vec4<i32>(31578i, -2824i, 570i, -55494i)))), 1f)).x;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -909f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1406f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1097f, _wgslsmith_f_op_f32(var_0.a.x + var_2.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d.c.a + var_1.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1362f, -437f))))));
    return Struct_3(countOneBits(35219u), var_1.d.d.x < var_1.d.b, Struct_2(u_input.c, _wgslsmith_add_i32(-(u_input.b & var_1.d.d.x), min(-var_1.d.d.x, -7331i)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.x))))), var_1.d.d));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = 53430u;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.c.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.c.c.a, vec2<f32>(arg_1.c.a.x, -178f), vec2<bool>(var_0.b, true))), vec2<f32>(-877f, var_0.c.c.a.x))) + arg_1.c.a)));
    var var_3 = var_0.a;
    var_3 = ~59380u;
    return func_2().c.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    let var_0 = ~reverseBits(~vec2<u32>(~arg_1.a.c.a, ~arg_1.a.c.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.c.a.x) + _wgslsmith_f_op_f32(-arg_2.c.c.a.x)) * arg_1.a.c.c.a.x), arg_1.a.c.c.a.x, _wgslsmith_f_op_vec2_f32(func_3(false, Struct_2(51840u, _wgslsmith_div_i32(-9630i, -13405i), Struct_1(arg_0.c.c.a), _wgslsmith_sub_vec4_i32(arg_0.c.d, vec4<i32>(arg_1.a.c.b, -1i, 6364i, u_input.b))), arg_0.c.c.a.x)).x, _wgslsmith_f_op_f32(step(1239f, 1172f))));
    var var_2 = select(!(!vec3<bool>(!arg_0.b, arg_0.c.a < 1u, u_input.a > -10699i)), !(!(!(!vec3<bool>(arg_1.a.b, false, false)))), !(!select(select(vec3<bool>(arg_2.b, false, false), vec3<bool>(false, arg_0.b, arg_2.b), vec3<bool>(arg_1.a.b, true, true)), select(vec3<bool>(arg_2.b, arg_1.a.b, arg_2.b), vec3<bool>(false, arg_2.b, false), vec3<bool>(false, arg_2.b, false)), !vec3<bool>(true, true, arg_1.a.b))));
    return arg_1;
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    let var_0 = Struct_3(min(min(arg_0.a.a >> (arg_0.a.a % 32u), _wgslsmith_mult_u32(arg_0.a.c.a, 1u)) << (((19228u & arg_0.a.c.a) >> (u_input.d % 32u)) % 32u), 1u), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2514f, 481f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.c.c.a.x, 836f))), arg_0.a.b, !(!arg_0.a.b)), func_4(arg_0.a, func_4(arg_0.a, arg_0, arg_0.a), arg_0.a).a.c);
    let var_1 = select(any(!vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(var_0.b, arg_0.a.b, false)))), !(!(func_2().a >= _wgslsmith_mod_u32(var_0.a, 4294967295u))), arg_0.a.b);
    let var_2 = 1u;
    var var_3 = var_0.c.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.c.c.a.x, arg_0.a.c.c.a.x), _wgslsmith_f_op_f32(exp2(arg_0.a.c.c.a.x)), _wgslsmith_f_op_f32(-var_0.c.c.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-322f, 2977f, var_0.c.c.a.x), vec3<f32>(arg_0.a.c.c.a.x, -486f, var_0.c.c.a.x), var_1))))));
    return Struct_5(4294967295u, _wgslsmith_f_op_vec2_f32(-var_0.c.c.a), arg_0.a.c.c.a.x, func_2().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~3291i;
    var var_1 = -37365i;
    var var_2 = func_5(func_4(Struct_3(_wgslsmith_clamp_u32(~61524u, 72003u, ~6891u), !all(vec4<bool>(true, false, false, false)), Struct_2(firstTrailingBit(u_input.d), var_0 & var_0, func_1(Struct_5(u_input.c, vec2<f32>(-933f, 377f), 715f, Struct_2(u_input.e.x, var_0, Struct_1(vec2<f32>(-475f, -544f)), vec4<i32>(var_0, 2147483647i, var_0, -2147483647i))), Struct_2(0u, var_0, Struct_1(vec2<f32>(184f, -1006f)), vec4<i32>(var_0, 2147483647i, var_0, -1i))), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, 10150i, var_0, -11760i), vec4<i32>(var_0, u_input.a, 1i, -2147483647i)))), Struct_4(func_2()), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.a, var_2.d.d.wzw, _wgslsmith_f_op_vec2_f32(func_1(func_5(Struct_4(Struct_3(4294967295u, false, var_2.d))), func_5(func_4(Struct_3(var_2.d.a, false, var_2.d), Struct_4(Struct_3(u_input.c, false, Struct_2(40581u, var_2.d.b, var_2.d.c, vec4<i32>(var_0, u_input.a, var_0, var_0)))), Struct_3(var_2.d.a, false, Struct_2(var_2.a, var_2.d.d.x, var_2.d.c, var_2.d.d)))).d).a - vec2<f32>(804f, var_2.b.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-895f, -160f))) - var_2.b) - var_2.d.c.a)), ~u_input.a);
}

