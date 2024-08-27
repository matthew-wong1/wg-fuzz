struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<u32> {
    global0 = Struct_2(all(!(!select(vec4<bool>(arg_1.x, global0.a, false, global0.a), vec4<bool>(arg_1.x, global0.a, arg_2.e.x, true), false))), 1172f, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, _wgslsmith_div_f32(-739f, arg_2.b), _wgslsmith_f_op_f32(-arg_2.b)))), u_input.b.x, arg_2.a.x);
    var var_0 = _wgslsmith_dot_vec4_u32(abs(u_input.b << (u_input.b % vec4<u32>(32u))), min(abs(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(arg_0, arg_0, 5457u, u_input.d))), vec4<u32>(_wgslsmith_mod_u32(arg_0, global0.d), abs(global0.d), ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(26763u, global0.d, arg_0, u_input.d), vec4<u32>(8919u, arg_0, 4294967295u, 29738u)))) ^ u_input.b);
    global0 = Struct_2(global0.a, global0.c.a.x, global0.c, u_input.d, global0.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(global0.c.a.xx, arg_2.d.a.xx));
    var var_2 = _wgslsmith_clamp_i32(~0i, select(~u_input.e, ~u_input.c << ((global0.d | 73715u) % 32u), arg_2.c | all(vec4<bool>(arg_1.x, false, arg_2.c, arg_1.x))), -global0.e) ^ min(1i, -_wgslsmith_clamp_i32(u_input.e, global0.e, countOneBits(-1i)));
    return _wgslsmith_mod_vec3_u32(vec3<u32>(40642u, 59615u, _wgslsmith_add_u32(_wgslsmith_mult_u32(21417u, arg_0), arg_0)), _wgslsmith_div_vec3_u32(u_input.b.xwx, ~_wgslsmith_mod_vec3_u32(u_input.b.zxz, _wgslsmith_div_vec3_u32(u_input.b.xyy, u_input.b.wyz))));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(func_3(global0.d, select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, false), vec2<bool>(global0.a, global0.a)), !vec2<bool>(global0.a, false), select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), vec2<bool>(global0.a, global0.a))), Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, global0.e, -81623i), -173f, false, Struct_1(vec3<f32>(-1000f, 1127f, global0.c.a.x)), select(vec3<bool>(true, true, global0.a), vec3<bool>(false, true, false), global0.a))), ~u_input.b.yyy & u_input.b.xyz), global0.d, 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(func_3(countOneBits(u_input.b.x), select(vec2<bool>(true, global0.a), vec2<bool>(true, global0.a), true), Struct_3(vec4<i32>(global0.e, u_input.e, 0i, u_input.e), global0.b, global0.a, global0.c, vec3<bool>(true, true, true))).zy, select(~u_input.b.yz, u_input.b.wx, false)), ~0u << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 4294967295u)), ~u_input.b.xzz) % 32u)));
    let var_1 = Struct_3(-vec4<i32>(global0.e, -2147483647i & _wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, global0.e), u_input.a.zz), reverseBits(u_input.c), global0.e), 759f, true, global0.c, select(select(vec3<bool>(true, !global0.a, global0.a || global0.a), vec3<bool>(global0.a, false, false), vec3<bool>(true, global0.a, !global0.a)), !select(!vec3<bool>(false, false, global0.a), vec3<bool>(true, global0.a, true), select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, false, global0.a), vec3<bool>(false, false, global0.a))), true));
    global0 = Struct_2(~64241u >= _wgslsmith_add_u32((var_0.x | u_input.b.x) << (~u_input.d % 32u), func_3(_wgslsmith_mod_u32(global0.d, 76092u), var_1.e.xy, Struct_3(var_1.a, var_1.d.a.x, true, Struct_1(var_1.d.a), vec3<bool>(false, var_1.c, global0.a))).x), var_1.d.a.x, var_1.d, ~(~(~34626u)), -1i);
    let var_2 = global0.c;
    global0 = Struct_2(any(var_1.e.yx) || any(vec3<bool>(any(var_1.e), var_1.c, true)), _wgslsmith_f_op_f32(-global0.b), var_1.d, var_0.x, min(5092i, _wgslsmith_dot_vec2_i32(select(select(vec2<i32>(0i, 1i), u_input.a.zy, global0.a), firstLeadingBit(var_1.a.xy), u_input.a.x < var_1.a.x), vec2<i32>(var_1.a.x, 44004i))));
    return Struct_2(var_1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -312f), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1917f, _wgslsmith_f_op_f32(floor(-640f)), -1119f), _wgslsmith_div_vec3_f32(var_1.d.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1595f, var_1.b, 1848f) * global0.c.a)), var_1.c))), 6294u, abs(i32(-1i) * -(~0i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, arg_0.a, true, false), vec4<bool>(arg_0.a, false, global0.a, global0.a))) & false, arg_0.c.a.x, func_2().c, u_input.b.x, 2147483647i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_1)));
    let var_2 = 172f;
    global0 = Struct_2(false, _wgslsmith_f_op_f32(ceil(-1290f)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(796f + 1000f), var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) - var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(279f))))), var_0.d, arg_0.e);
    var var_3 = select(select(!(!select(vec2<bool>(arg_0.a, var_0.a), vec2<bool>(global0.a, var_0.a), false)), select(!select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), arg_0.a), vec2<bool>(func_2().a, u_input.b.x == global0.d), any(vec4<bool>(false, false, var_0.a, var_0.a)) | arg_0.a), select(false, false, (i32(-1i) * -8439i) > _wgslsmith_div_i32(2147483647i, var_0.e))), vec2<bool>(!var_0.a, !arg_0.a), true);
    return arg_0.c;
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    global0 = Struct_2(true, _wgslsmith_f_op_f32(178f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.a.x + -441f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c.a.x)))))), func_4(func_2(), global0.c.a), ~_wgslsmith_sub_u32(~(global0.d ^ global0.d), 21084u), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, global0.e, arg_0.a.x)), vec3<i32>(2454i, global0.e, 0i)), 0i));
    var var_0 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * -448f)), arg_0.b, true)), !arg_0.c, func_2().c, !arg_0.e);
    var var_1 = abs(_wgslsmith_dot_vec4_i32(select(firstLeadingBit(vec4<i32>(var_0.a.x, 1i, u_input.e, u_input.c)), ~vec4<i32>(global0.e, -2147483647i, 2147483647i, 0i), select(vec4<bool>(global0.a, var_0.e.x, var_0.c, var_0.e.x), vec4<bool>(true, var_0.e.x, var_0.c, false), false)), ~arg_0.a)) | ~(-arg_0.a.x);
    let var_2 = abs((i32(-1i) * -54847i) | ~(u_input.c ^ (global0.e & 744i)));
    let var_3 = Struct_2(func_2().a, func_2().b, Struct_1(vec3<f32>(-247f, var_0.b, 645f)), _wgslsmith_clamp_u32(func_2().d, reverseBits(_wgslsmith_clamp_u32(global0.d, 20968u, 4294967295u)), 17237u) << (global0.d % 32u), var_0.a.x);
    return func_4(Struct_2(!select(true, false, var_0.c), _wgslsmith_f_op_f32(583f * global0.c.a.x), func_2().c, reverseBits(u_input.d), var_3.e), global0.c.a).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global0.d);
    let var_1 = Struct_3(-(~vec4<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.e, 18704i, -2147483647i, 2147483647i), vec4<i32>(global0.e, -7712i, u_input.c, -2232i)), ~(-38405i), global0.e)), _wgslsmith_f_op_f32(ceil(global0.c.a.x)), true, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.a * global0.c.a) * _wgslsmith_f_op_vec3_f32(global0.c.a * vec3<f32>(global0.c.a.x, -597f, 1994f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec4<i32>(-2147483647i, -34650i, global0.e, u_input.c), 2112f, global0.a, global0.c, vec3<bool>(global0.a, false, false)))) * _wgslsmith_f_op_vec3_f32(global0.c.a - vec3<f32>(global0.c.a.x, global0.c.a.x, global0.b))))), select(!(!(!vec3<bool>(global0.a, global0.a, true))), vec3<bool>(firstTrailingBit(u_input.a.x) != _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, -1i), vec4<i32>(2147483647i, u_input.a.x, u_input.c, 38442i)), global0.a, true), 260f < _wgslsmith_f_op_f32(-global0.c.a.x)));
    global0 = func_2();
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(~vec4<u32>(30782u, global0.d, 8307u, 15247u)) & vec4<u32>(abs(u_input.b.x), var_0, 4294967295u, global0.d & 22584u)));
}

