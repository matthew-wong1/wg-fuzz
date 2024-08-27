struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(abs(arg_0.c.a), true);
    var var_1 = !select(select(!(!arg_0.b), arg_0.b, select(!arg_0.b, vec3<bool>(false, false, false), select(arg_0.b, vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x)))), select(arg_0.b, select(!vec3<bool>(global0.x, true, arg_0.b.x), arg_0.b, !arg_0.b), any(global0.yz)), !(!var_0.b));
    global0 = !vec3<bool>(var_0.b, all(select(arg_0.b, select(arg_0.b, vec3<bool>(true, false, arg_0.c.b), arg_0.b), select(var_1.x, var_0.b, false))), true);
    let var_2 = Struct_4(firstLeadingBit(16750u), -1000f);
    let var_3 = arg_0.e;
    return -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, u_input.a.x), vec2<i32>(40936i, _wgslsmith_mod_i32(u_input.a.x, var_3.a.x))));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_1(-vec4<i32>(u_input.a.x, -2147483647i, min(-1i, 2147483647i), u_input.a.x), select(any(vec4<bool>(global0.x, global0.x && global0.x, global0.x && global0.x, true)), false, true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 * -597f))))) * -123f), select(select(vec3<bool>(-236f < arg_0, all(vec4<bool>(var_0.b, global0.x, global0.x, true)), global0.x | false), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.b, true), vec3<bool>(true, global0.x, false)), !(!vec3<bool>(true, var_0.b, var_0.b))), vec3<bool>(any(!vec4<bool>(true, true, var_0.b, global0.x)), all(vec2<bool>(global0.x, var_0.b)), true), !vec3<bool>(-1i >= u_input.a.x, 1i > var_0.a.x, !global0.x)), Struct_1(vec4<i32>(~12764i, min(func_3(Struct_2(472f, vec3<bool>(false, global0.x, true), Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 1i), global0.x), var_0.a.x, Struct_1(vec4<i32>(53689i, u_input.a.x, 2147483647i, -7207i), false))), ~u_input.a.x), countOneBits(var_0.a.x | var_0.a.x), max(u_input.a.x, 911i) & -1i), true), 4521i, Struct_1(-select(-var_0.a, countOneBits(vec4<i32>(2147483647i, 25675i, u_input.a.x, 107907i)), !vec4<bool>(var_0.b, global0.x, true, true)), any(!select(vec4<bool>(global0.x, true, var_0.b, false), vec4<bool>(false, global0.x, false, false), vec4<bool>(true, true, var_0.b, var_0.b)))));
    var_0 = var_1.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * var_1.a) + -542f), _wgslsmith_div_f32(-703f, arg_0))));
    return var_1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1.b;
    global0 = func_2(_wgslsmith_f_op_f32(-arg_1.c.a));
    global0 = arg_1.c.b;
    global0 = !(!(!select(arg_1.c.b, arg_1.c.b, false)));
    let var_1 = 9503u ^ _wgslsmith_clamp_u32(34740u, _wgslsmith_mod_u32(~u_input.b.x, ~u_input.c.x) | ~4294967295u, arg_0.x);
    return Struct_1(arg_1.a.a, any(global0.yy));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(9990u), _wgslsmith_add_u32(u_input.c.x, 4294967295u)), 0u >> (~4294967295u % 32u)), u_input.c.x));
    global0 = vec3<bool>(true, arg_0.a.b, true & arg_0.a.b);
    global0 = vec3<bool>(global0.x, -u_input.a.x <= ~0i, true);
    let var_1 = arg_0.c;
    var var_2 = Struct_3(func_1(~(~u_input.b), arg_0, vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b))), -1270f), func_1(firstTrailingBit(u_input.b), arg_0, vec3<f32>(405f, var_1.a, var_1.a), func_1(vec2<u32>(var_0.x, 4294967295u), Struct_3(Struct_1(var_1.e.a, false), -1680f, Struct_2(var_1.a, vec3<bool>(global0.x, global0.x, global0.x), Struct_1(var_1.e.a, var_1.c.b), -2147483647i, arg_0.c.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, -953f, -448f) - vec3<f32>(-562f, 858f, -1341f)), var_1.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2650f - _wgslsmith_f_op_f32(var_1.a - arg_0.b)))), var_1.a)), Struct_2(arg_0.b, var_1.b, var_1.c, i32(-1i) * -32804i, var_1.e));
    return reverseBits(countOneBits(var_0.x) | ~(~u_input.b.x)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.x, 7936u, 1u, 0u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 13085u, var_0.x, 50654u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, var_0.x), vec4<bool>(global0.x, true, var_2.a.b, false)), ~vec4<u32>(97140u, 35660u, 53196u, u_input.c.x))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(any(select(vec2<bool>(true, true && global0.x), vec2<bool>(true, global0.x), !vec2<bool>(global0.x, true))), func_4(Struct_3(func_1(u_input.b, Struct_3(Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), global0.x), -1173f, Struct_2(871f, vec3<bool>(global0.x, true, global0.x), Struct_1(vec4<i32>(-86644i, u_input.a.x, u_input.a.x, u_input.a.x), true), 2147483647i, Struct_1(vec4<i32>(-12689i, -32961i, 40511i, -1i), false))), vec3<f32>(680f, 338f, -708f), Struct_1(vec4<i32>(-1i, -63740i, u_input.a.x, u_input.a.x), true)), -1000f, Struct_2(-812f, vec3<bool>(global0.x, false, global0.x), Struct_1(vec4<i32>(2147483647i, -32807i, u_input.a.x, -28922i), false), u_input.a.x, Struct_1(vec4<i32>(u_input.a.x, -23007i, u_input.a.x, 2620i), global0.x)))) > ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32314u, u_input.b.x, 44300u), u_input.c), u_input.b.x), global0.x);
    global0 = !(!(!vec3<bool>(func_1(vec2<u32>(u_input.c.x, 1u), Struct_3(Struct_1(vec4<i32>(2147483647i, u_input.a.x, -52768i, u_input.a.x), global0.x), -1259f, Struct_2(-676f, vec3<bool>(false, global0.x, false), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -1i), false), -2147483647i, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0.x))), vec3<f32>(-342f, -1630f, -200f), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 53722i, u_input.a.x), global0.x)).b, all(vec4<bool>(true, global0.x, global0.x, false)), true)));
    global0 = vec3<bool>(true, (any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)) && global0.x) | (select(abs(71606u), _wgslsmith_dot_vec4_u32(vec4<u32>(20894u, 2389u, u_input.c.x, 1u), vec4<u32>(56425u, 66401u, 4294967295u, 1u)), global0.x) > ~u_input.c.x), global0.x);
    global0 = func_2(-1340f);
    global0 = vec3<bool>(global0.x, true, global0.x);
    let var_0 = Struct_4(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1996f, 469f)) + -123f) - -1000f) + _wgslsmith_f_op_f32(-1f)));
    global0 = select(select(select(!(!vec3<bool>(global0.x, true, false)), vec3<bool>(u_input.a.x == u_input.a.x, global0.x, global0.x), true | (global0.x && global0.x)), !vec3<bool>(true, global0.x, true), !func_2(-1103f)), !select(vec3<bool>(global0.x, false, all(vec4<bool>(global0.x, true, global0.x, global0.x))), !vec3<bool>(true, false, global0.x), !vec3<bool>(true, global0.x, true)), !func_2(_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(509f - -459f)))));
    global0 = vec3<bool>(false | func_1(~abs(u_input.b), Struct_3(Struct_1(vec4<i32>(159i, -21983i, 2147483647i, u_input.a.x), global0.x), _wgslsmith_f_op_f32(var_0.b - var_0.b), Struct_2(-944f, vec3<bool>(global0.x, global0.x, true), Struct_1(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, -47655i), false), 45669i, Struct_1(vec4<i32>(1i, -36396i, u_input.a.x, u_input.a.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(466f, -215f, 698f), vec3<f32>(var_0.b, 132f, var_0.b)))), func_1(u_input.b, Struct_3(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global0.x), var_0.b, Struct_2(-941f, vec3<bool>(global0.x, global0.x, global0.x), Struct_1(vec4<i32>(u_input.a.x, -14012i, u_input.a.x, -1i), false), -2147483647i, Struct_1(vec4<i32>(-29826i, 1i, -2147483647i, u_input.a.x), false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 699f, var_0.b)), func_1(u_input.b, Struct_3(Struct_1(vec4<i32>(-20168i, u_input.a.x, u_input.a.x, u_input.a.x), false), var_0.b, Struct_2(-338f, vec3<bool>(true, true, false), Struct_1(vec4<i32>(-15199i, 0i, 32978i, u_input.a.x), global0.x), 9842i, Struct_1(vec4<i32>(0i, 43208i, -2147483647i, u_input.a.x), global0.x))), vec3<f32>(-838f, var_0.b, -564f), Struct_1(vec4<i32>(-41231i, u_input.a.x, 6924i, u_input.a.x), global0.x)))).b, global0.x, true);
    global0 = select(select(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.b))))), func_2(var_0.b), vec3<bool>(global0.x, false, func_2(var_0.b).x)), func_2(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(418f, 901f, true)) - var_0.b))), vec3<bool>(global0.x, global0.x, all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))), firstTrailingBit(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u)), vec4<u32>(u_input.b.x, var_0.a, 0u, 4294967295u))));
}

