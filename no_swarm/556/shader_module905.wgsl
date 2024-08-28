struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3.a;
    let var_1 = Struct_2(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-171f)) * arg_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-114f, var_0, _wgslsmith_f_op_f32(floor(-333f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, -1192f, var_0))))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)) - _wgslsmith_f_op_f32(579f * arg_3.a)), arg_1);
    let var_2 = vec4<i32>(u_input.c.x, reverseBits(u_input.a.x), u_input.c.x, u_input.a.x);
    let var_3 = _wgslsmith_div_f32(1819f, arg_3.a);
    var var_4 = i32(-1i) * -48642i;
    return select(~vec2<i32>(1i, u_input.c.x & u_input.a.x), -vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, var_2.x), vec2<i32>(-45191i, u_input.c.x) ^ vec2<i32>(var_2.x, 23968i)), -countOneBits(var_2.x)), !(!(arg_2 || (var_1.a < arg_0.x))));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    var var_0 = !vec3<bool>(arg_2, 673f < arg_1.e.a, any(!vec4<bool>(true, arg_0, false, true)) == all(select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_3), vec2<bool>(false, false))));
    var_0 = vec3<bool>(arg_2, arg_0, arg_1.a > arg_1.a);
    var var_1 = -_wgslsmith_mult_vec2_i32(abs(~_wgslsmith_div_vec2_i32(u_input.c, u_input.c)), vec2<i32>(_wgslsmith_mod_i32(1i, -u_input.a.x), -(u_input.b << (arg_1.a % 32u))));
    var_1 = -func_3(vec4<u32>(arg_1.a, 1u, 1u, arg_1.a) & abs(vec4<u32>(17340u, 10596u, 42180u, arg_1.a)), Struct_1(_wgslsmith_f_op_f32(step(-753f, arg_1.c.x))), any(!vec2<bool>(arg_2, arg_2)), Struct_1(_wgslsmith_f_op_f32(select(arg_1.d, arg_1.c.x, true)))) >> (vec2<u32>(~max(arg_1.a, ~0u), firstLeadingBit(arg_1.a)) % vec2<u32>(32u));
    var_1 = ~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xx, vec2<i32>(1i, var_1.x)), func_3(vec4<u32>(73318u, 167u, arg_1.a, 32413u), Struct_1(arg_1.d), false, arg_1.e))), abs(vec2<i32>(-38540i, firstTrailingBit(u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1249f - 1787f), arg_1.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.e.a), arg_1.e.a)))) + arg_1.e.a);
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 0u)));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f - -1390f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, Struct_2(4294967295u, -1000f, vec3<f32>(-115f, 806f, 581f), -296f, Struct_1(-789f)), true, false))) + 1000f)), 284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-499f + 1016f) - _wgslsmith_f_op_f32(f32(-1f) * -550f)))));
    var var_2 = 3489u & _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1394u, 901u, 4294967295u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)));
    var_0 = ~1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1029f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(max(741f, _wgslsmith_f_op_f32(420f - var_1.x)))), 2037f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_1)) * vec3<f32>(var_1.x, var_1.x, 1139f)))), vec3<f32>(_wgslsmith_div_f32(-420f, 1445f), 2166f, var_1.x)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(164f, _wgslsmith_f_op_f32(1226f + _wgslsmith_f_op_f32(func_2(false, Struct_2(1u, 1219f, var_1, -1703f, Struct_1(-436f)), false, false))))) - var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(783u, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1930f)), -1295f))), vec3<f32>(2532f, -725f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), var_0.a)), 1691f, Struct_1(-117f));
    var_1 = Struct_2(~select(~(~1u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.a, var_1.a, 0u, var_1.a)), vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u) >> (vec4<u32>(0u, var_1.a, var_1.a, 43852u) % vec4<u32>(32u))), true), _wgslsmith_div_f32(1000f, var_1.d), var_1.c, func_1().a, var_0);
    var_1 = Struct_2(1u, var_0.a, var_1.c, _wgslsmith_f_op_f32(trunc(-933f)), var_1.e);
    var_1 = Struct_2(0u, _wgslsmith_f_op_f32(1561f - 1000f), vec3<f32>(_wgslsmith_div_f32(var_1.c.x, -103f), -791f, 1096f), var_1.e.a, var_1.e);
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(abs(-1114f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_1.c.x, 258f)) + _wgslsmith_f_op_vec3_f32(-var_1.c)))), -1401f, var_0);
    var_2 = Struct_2(_wgslsmith_add_u32(0u, 22485u), _wgslsmith_f_op_f32(func_2(false, Struct_2(~55074u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(36885u, var_2.a, 70967u), vec3<u32>(var_2.a, 0u, 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1586f + -2178f), _wgslsmith_f_op_f32(-var_0.a))), vec3<f32>(-1615f, _wgslsmith_f_op_f32(-var_1.b), 2082f), _wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(func_2(false, Struct_2(var_2.a, -212f, var_2.c, var_0.a, var_1.e), true, true))), Struct_1(var_2.d)), countOneBits(~u_input.b) < -(-21994i ^ u_input.a.x), false)), var_2.c, 949f, var_2.e);
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(666f, var_0.a)), 403f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(674f, _wgslsmith_f_op_f32(trunc(-1080f)), 1616f), var_1.c) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c, var_2.c)), var_1.c))), var_2.a);
}

