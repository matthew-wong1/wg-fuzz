struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(29519i, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    global0 = Struct_2(global0.a, arg_0.x);
    let var_0 = true;
    let var_1 = ~global0.b;
    var var_2 = var_0;
    let var_3 = ~_wgslsmith_mod_vec3_u32(~arg_0.wwx, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(36134u, 4456u, 4294967295u), u_input.d.yyy), _wgslsmith_add_u32(~0u, u_input.d.x), _wgslsmith_dot_vec4_u32(arg_0, u_input.d) & u_input.d.x));
    return Struct_2(~u_input.b, _wgslsmith_clamp_u32(500u, ~arg_0.x, 27677u) << (min(arg_0.x, abs(1u)) % 32u));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    let var_0 = -708f;
    var var_1 = arg_0.x;
    global0 = Struct_2(_wgslsmith_mult_i32(~(0i ^ global0.a), arg_1.a.a) << (23523u % 32u), u_input.d.x);
    global0 = arg_1.a;
    global0 = func_2(firstTrailingBit(_wgslsmith_add_vec4_u32(abs(~vec4<u32>(arg_1.a.b, u_input.d.x, arg_1.a.b, global0.b)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.b, 43490u, 76161u, arg_1.a.b), u_input.d), abs(u_input.d), arg_1.c.a.x))));
    return true;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> vec4<f32> {
    var var_0 = select(vec4<bool>(!(arg_1 || arg_1), func_3(vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -285f)), Struct_3(func_2(vec4<u32>(global0.b, 1u, 32703u, arg_3)), vec2<bool>(false, true), Struct_1(vec2<bool>(false, false)))), func_3(vec2<f32>(-419f, _wgslsmith_f_op_f32(round(arg_0))), Struct_3(Struct_2(global0.a, 4294967295u), vec2<bool>(true, true), Struct_1(vec2<bool>(true, arg_1)))), !func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1360f, 981f) * vec2<f32>(arg_0, 773f)), Struct_3(Struct_2(32994i, arg_3), vec2<bool>(true, arg_1), Struct_1(vec2<bool>(false, true))))), vec4<bool>(arg_1, true, 1u != arg_3, all(!vec2<bool>(arg_1, false))), any(vec3<bool>(_wgslsmith_f_op_f32(trunc(-1000f)) < _wgslsmith_f_op_f32(-arg_0), true, true)));
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(~global0.b | countOneBits(arg_2.x), 1u), firstLeadingBit(vec2<u32>(func_2(u_input.d).b ^ _wgslsmith_add_u32(0u, 14435u), global0.b)));
    var var_2 = true;
    let var_3 = all(!select(select(vec2<bool>(true, var_0.x), !vec2<bool>(false, var_0.x), global0.a != global0.a), vec2<bool>(var_0.x, true), false));
    var_1 = vec2<u32>(u_input.d.x, ~_wgslsmith_dot_vec4_u32(abs(u_input.d), select(vec4<u32>(arg_3, 31487u, arg_2.x, 10939u), u_input.d, var_0.x) | ~u_input.d));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(516f, 1658f, -2679f, arg_0)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1719f, -513f, arg_0, 1686f))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_div_f32(arg_1, arg_1)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1337f, 418f)));
    let var_1 = func_2(max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, 600u, 2555u, 0u), vec4<u32>(u_input.e, global0.b, global0.b, u_input.d.x)) << (39041u % 32u), u_input.e, ~(u_input.d.x | u_input.e), 21132u), u_input.d));
    global0 = var_1;
    var_0 = arg_3.a.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f + 1000f) - _wgslsmith_f_op_f32(abs(arg_1)))))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(1556f - _wgslsmith_f_op_f32(f32(-1f) * -660f)))), -1699f, arg_1);
    return Struct_3(var_1, vec2<bool>(false, true), Struct_1(select(select(vec2<bool>(arg_3.a.x, arg_3.a.x), !arg_3.a, all(vec4<bool>(false, arg_3.a.x, arg_3.a.x, arg_3.a.x))), !vec2<bool>(true, arg_3.a.x), vec2<bool>(!arg_3.a.x, global0.b >= var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(u_input.b, -(2147483647i ^ reverseBits(u_input.b)));
    let var_1 = _wgslsmith_mod_u32(~u_input.d.x, 4294967295u);
    let var_2 = u_input.d;
    var_0 = _wgslsmith_dot_vec3_i32(u_input.c, min(u_input.c, firstTrailingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 92649i, -40577i), u_input.c))));
    let var_3 = Struct_2(u_input.a, var_1);
    let var_4 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(258f, true, vec2<u32>(_wgslsmith_mod_u32(var_1, 0u), ~27612u), abs(var_3.b)))), -797f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2184f))), Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec4<bool>(true, true, false, true))), true)));
    let var_5 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1(-2131f, var_4.b.x, vec2<u32>(global0.b, var_3.b), 8869u)))))), vec4<f32>(_wgslsmith_f_op_f32(max(-773f, _wgslsmith_f_op_f32(-1000f + -262f))), _wgslsmith_f_op_f32(min(887f, -431f)), _wgslsmith_f_op_f32(-576f * -205f), -628f)), 1274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -196f))), var_4.c).a;
    var var_6 = Struct_4(~abs(_wgslsmith_add_u32(1u, u_input.d.x)) | ((select(var_3.b, var_3.b, true) << (var_2.x % 32u)) | _wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(4294967295u, global0.b), abs(var_3.b))), vec4<i32>(var_4.a.a, reverseBits(min(firstTrailingBit(-38737i), var_5.a)), -func_2(abs(u_input.d)).a, abs(func_2(u_input.d).a)), _wgslsmith_f_op_f32(ceil(-930f)), var_5);
    var var_7 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-var_6.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -460f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c)))), var_6.c, 602f, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(((min(var_5.b, var_5.b) ^ var_5.b) >> ((~0u | _wgslsmith_dot_vec3_u32(var_2.xzw, u_input.d.wwx)) % 32u)) >> (_wgslsmith_mult_u32(0u, 0u) % 32u), (((vec4<i32>(-1i, var_3.a, -2147483647i, var_6.d.a) << (vec4<u32>(32973u, var_3.b, 4294967295u, var_4.a.b) % vec4<u32>(32u))) >> (var_2 % vec4<u32>(32u))) & countOneBits(var_6.b)) >> (~u_input.d % vec4<u32>(32u)), ~var_6.b.zx);
}

