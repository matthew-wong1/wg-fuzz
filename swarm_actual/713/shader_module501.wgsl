struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = vec2<bool>(false, !(!any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))));
    var var_1 = arg_0.a.a;
    var var_2 = _wgslsmith_f_op_f32(min(-102f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2418f)), arg_0.a.a)));
    var_1 = 523f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(arg_0.a.a + 255f));
    return var_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_div_i32(~6587i, u_input.a))) && true;
    var var_1 = u_input.b;
    var var_2 = false;
    let var_3 = Struct_3(Struct_2(Struct_1(-695f), -2147483647i), _wgslsmith_f_op_f32(step(721f, _wgslsmith_f_op_f32(f32(-1f) * -453f))), select(select(vec2<bool>(func_3(Struct_2(Struct_1(arg_0.a), -2147483647i)), true), vec2<bool>(!var_0, arg_0.a >= arg_0.a), select(vec2<bool>(true, true), vec2<bool>(true, var_0), var_0)), select(vec2<bool>(true, any(vec2<bool>(false, false))), select(!vec2<bool>(var_0, false), !vec2<bool>(false, var_0), !var_0), select(vec2<bool>(true, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), false), vec2<bool>(var_0, var_0))), !(!vec2<bool>(false, var_0))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) * -173f))));
    return var_3.a.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    let var_0 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-1059f + 800f))));
    let var_1 = firstTrailingBit(u_input.b ^ u_input.c.x);
    let var_2 = u_input.c.yz;
    var var_3 = vec4<bool>(!func_3(Struct_2(Struct_1(arg_1.a), -2147483647i)), arg_0.x || false, any(!(!(!arg_2.b.yzx))), arg_2.d);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 1425f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.a, var_0.a)), true)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.a.a, arg_1.a), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, arg_1.a), vec2<f32>(-1017f, 1000f)), false)))));
    return arg_2.c;
}

fn func_1() -> u32 {
    var var_0 = func_4(vec3<bool>(true, true, true), func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1706f, false))))), Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-818f - -759f) * _wgslsmith_f_op_f32(floor(-195f)))), select(vec4<bool>(true, u_input.a == u_input.a, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true & select(false, false, false)), Struct_2(func_2(Struct_1(1048f)), _wgslsmith_add_i32(-2147483647i, u_input.a) << (u_input.c.x % 32u)), true));
    var var_1 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_2 = _wgslsmith_mod_u32(u_input.c.x, ~(~u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a), var_0.a.a) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.a)), _wgslsmith_f_op_f32(var_0.a.a + var_0.a.a)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1113f, 2215f), vec2<f32>(var_0.a.a, -325f))))))));
    let var_4 = var_0.a;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), any(vec4<bool>(true, true, true, true))), ~abs(u_input.b << (39916u % 32u)) >= func_1());
    let var_1 = func_4(select(!(!(!vec3<bool>(var_0.x, false, var_0.x))), vec3<bool>(false, true, !(!var_0.x)), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(any(vec2<bool>(false, var_0.x)), var_0.x | var_0.x, var_0.x), select(!vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)))), func_4(select(!(!vec3<bool>(var_0.x, var_0.x, true)), select(select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, true)), !vec3<bool>(true, true, var_0.x), false || var_0.x), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1094f)))), Struct_4(func_4(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, false)), Struct_1(-462f), Struct_4(Struct_1(110f), vec4<bool>(var_0.x, true, true, false), Struct_2(Struct_1(147f), u_input.a), false)).a, select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, var_0.x, true, true)), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), Struct_2(func_2(Struct_1(-784f)), firstTrailingBit(-2874i)), !all(vec4<bool>(false, var_0.x, true, true)))).a, Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) - -237f)), select(select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, var_0.x, false, var_0.x), true == var_0.x), select(!vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true)), select(vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), false), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false))), Struct_2(func_2(func_2(Struct_1(966f))), -56244i), var_0.x));
    let var_2 = reverseBits(vec3<u32>(86122u, 2921u, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, firstTrailingBit(41733u), ~0u), vec3<u32>(~5639u, 113592u, 0u))));
    var var_3 = ~u_input.b;
    var_3 = max(firstTrailingBit(var_2.x & (u_input.b & var_2.x)), ~(u_input.c.x | u_input.b)) & _wgslsmith_add_u32(~(~max(var_2.x, u_input.b)), ~33457u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_f_op_f32(-var_1.a.a)) * _wgslsmith_f_op_f32(f32(-1f) * -687f)), 205f), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(abs(~vec4<i32>(var_1.b, u_input.a, var_1.b, -17366i)), ~vec4<i32>(55197i, var_1.b, var_1.b, var_1.b)), ~(-reverseBits(vec4<i32>(2147483647i, -21836i, 0i, var_1.b)))));
}

