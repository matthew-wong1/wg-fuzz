struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = u_input.c;
    let var_1 = !arg_0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.b.a, -1204f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(346f + arg_0.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.a, arg_0.b.a, false)), -350f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-640f, arg_0.b.a, arg_0.b.a))) - vec3<f32>(arg_0.b.a, -878f, -354f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-691f, arg_0.b.a, -1146f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2900f, global0.b.a)) - -412f), -1000f, 1802f)))));
    global0 = Struct_2(vec3<bool>(firstLeadingBit(u_input.c) >= ~u_input.a, !global0.a.x, true), arg_0.b, vec2<i32>(i32(-1i) * -10402i, _wgslsmith_clamp_i32(~u_input.b.x, reverseBits(2147483647i >> (1u % 32u)), _wgslsmith_clamp_i32(2147483647i, u_input.b.x, u_input.b.x) | -2147483647i)));
    let var_3 = arg_0.b;
    return max(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(select(1i, -48495i, false), countOneBits(-2147483647i))), ~9426i, arg_0.c.x), 2147483647i);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: u32) -> vec2<bool> {
    var var_0 = -global0.c.x;
    let var_1 = _wgslsmith_add_i32(~(~reverseBits(func_3(Struct_2(global0.a, Struct_1(global0.b.a), global0.c)))), ~52585i);
    global0 = Struct_2(select(global0.a, vec3<bool>(true, true, false), !all(select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec4<bool>(false, true, false, true), false))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0.b.a)), -279f, global0.a.x || global0.a.x)) - _wgslsmith_f_op_f32(floor(global0.b.a)))), min(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(var_1, arg_1) | vec2<i32>(u_input.b.x, 1i)), -(global0.c ^ u_input.b.wx), select(-u_input.b.zw, select(global0.c, vec2<i32>(global0.c.x, global0.c.x), vec2<bool>(global0.a.x, global0.a.x)), true)), -max(reverseBits(vec2<i32>(-85772i, -1i)), -vec2<i32>(arg_1, u_input.b.x))));
    var_0 = ~firstLeadingBit(~select(~13728i, _wgslsmith_clamp_i32(global0.c.x, 23865i, 12583i), global0.a.x || global0.a.x));
    var var_2 = !vec3<bool>(true == (any(global0.a.zz) || true), any(!select(global0.a, global0.a, global0.a)), true);
    return select(global0.a.yz, vec2<bool>(true | select(all(global0.a), true, false), true), vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec2<u32>) -> f32 {
    global0 = Struct_2(!vec3<bool>(any(vec4<bool>(true, global0.a.x, global0.a.x, true)), any(vec2<bool>(global0.a.x, true)), any(!arg_0.a.yx)), global0.b, -u_input.b.yx);
    var var_0 = global0.a.yz;
    let var_1 = ~(~u_input.b);
    var_0 = func_2(vec3<u32>(min(max(arg_2.x << (16023u % 32u), _wgslsmith_mod_u32(arg_2.x, 15859u)), _wgslsmith_add_u32(480u, arg_2.x)), arg_2.x, u_input.c), -10197i, ~u_input.c);
    var var_2 = ~(reverseBits(_wgslsmith_sub_i32(3214i, arg_0.c.x)) & _wgslsmith_dot_vec4_i32(var_1, var_1)) > _wgslsmith_clamp_i32(44545i, -2147483647i, -(~u_input.b.x << (arg_2.x % 32u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1698f + global0.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a - global0.b.a) + -558f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global0 = arg_3;
    let var_0 = arg_2.a.x;
    let var_1 = global0.a;
    var var_2 = arg_2.a.x;
    global0 = Struct_2(arg_2.a, arg_2.b, vec2<i32>(abs(-2147483647i), max((i32(-1i) * -36383i) | _wgslsmith_clamp_i32(global0.c.x, arg_2.c.x, 21530i), _wgslsmith_sub_i32(~u_input.b.x, ~arg_2.c.x))));
    return Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-470f + arg_2.b.a), _wgslsmith_div_f32(arg_2.b.a, -143f)))), reverseBits(vec2<i32>(-55862i, arg_2.c.x)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, 2015f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1461f)) + _wgslsmith_f_op_f32(abs(347f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(157f, global0.b.a), -857f)) + var_0.x), global0.b.a, global0.b.a);
    global0 = Struct_2(arg_0.a, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.a)) * 606f), var_0.x, true))), firstLeadingBit(-(~u_input.b.zx) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(step(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) * vec2<f32>(1f, _wgslsmith_f_op_f32(-global0.b.a))), true, arg_0, func_4(vec2<f32>(-502f, 1408f), arg_0.a.x, arg_0, arg_0)).b.a, 663f));
    return func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.a, -1642f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.a, -193f), vec2<f32>(947f, -748f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yy * var_0.yz) + var_0.xz), false))), false, func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.xy, _wgslsmith_f_op_vec2_f32(var_0.zy - var_0.xy)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -520f)), arg_0.a.x)), all(select(select(vec4<bool>(global0.a.x, arg_0.a.x, global0.a.x, false), vec4<bool>(arg_0.a.x, var_1.x, false, false), vec4<bool>(var_1.x, arg_0.a.x, true, true)), vec4<bool>(true, false, global0.a.x, var_1.x), select(arg_0.a.x, false, false))), Struct_2(var_1, arg_0.b, ~max(global0.c, u_input.b.xx)), Struct_2(!vec3<bool>(false, global0.a.x, false), Struct_1(1197f), arg_0.c)), Struct_2(select(vec3<bool>(func_4(var_0.zx, var_1.x, Struct_2(arg_0.a, global0.b, arg_0.c), arg_0).a.x, global0.a.x, false), global0.a, true), Struct_1(var_0.x), abs(global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b.a, _wgslsmith_f_op_f32(func_1(Struct_2(global0.a, global0.b, vec2<i32>(-6905i, -23216i)), vec3<f32>(global0.b.a, -527f, global0.b.a), vec2<u32>(12161u, u_input.c)))))), !(global0.a.x && any(global0.a)), Struct_2(vec3<bool>(false, true, true), global0.b, ~select(vec2<i32>(u_input.b.x, 35224i), vec2<i32>(-1i, 0i), global0.a.zx)), Struct_2(!select(global0.a, global0.a, true), global0.b, firstLeadingBit(_wgslsmith_sub_vec2_i32(global0.c, vec2<i32>(2147483647i, -2147483647i))))));
    global0 = Struct_2(vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, 364f))), global0.a.x, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, global0.b.a)), global0.a.x, Struct_2(global0.a, global0.b, vec2<i32>(u_input.b.x, global0.c.x)), func_5(Struct_2(vec3<bool>(true, global0.a.x, false), global0.b, global0.c))), Struct_2(global0.a, Struct_1(-801f), select(u_input.b.yx, global0.c, global0.a.zz))).a.x, any(!func_5(Struct_2(global0.a, Struct_1(-926f), vec2<i32>(-2147483647i, u_input.b.x))).a), u_input.c != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 48333u), abs(vec3<u32>(2220u, u_input.c, u_input.a)))), global0.b, _wgslsmith_mod_vec2_i32(-(global0.c | firstTrailingBit(global0.c)), vec2<i32>(u_input.b.x, 0i)));
    global0 = Struct_2(vec3<bool>(global0.a.x, false, global0.c.x == ~(~(-19366i))), global0.b, u_input.b.xx);
    global0 = func_5(Struct_2(global0.a, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(303f, -340f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-737f, -727f))), global0.a.x, func_5(Struct_2(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), Struct_1(global0.b.a), vec2<i32>(-15945i, 2147483647i))), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.a, 747f), vec2<f32>(global0.b.a, global0.b.a)), select(true, false, global0.a.x), func_4(vec2<f32>(-242f, 642f), true, Struct_2(global0.a, global0.b, vec2<i32>(-2147483647i, 1i)), Struct_2(global0.a, Struct_1(global0.b.a), vec2<i32>(-69491i, u_input.b.x))), Struct_2(vec3<bool>(true, true, true), Struct_1(883f), vec2<i32>(global0.c.x, 0i)))).b, select(u_input.b.wz << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), reverseBits(global0.c), vec2<bool>(all(global0.a.xx), global0.a.x && global0.a.x))));
    let var_0 = Struct_2(global0.a, func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.b.a, _wgslsmith_f_op_f32(global0.b.a + global0.b.a)))), global0.a.x, Struct_2(vec3<bool>(global0.a.x, 2147483647i != u_input.b.x, global0.a.x), Struct_1(-294f), u_input.b.zy), func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a, global0.b.a)))), true, Struct_2(vec3<bool>(false, global0.a.x, global0.a.x), global0.b, countOneBits(vec2<i32>(2147483647i, -24308i))), func_5(func_4(vec2<f32>(global0.b.a, 660f), false, Struct_2(global0.a, Struct_1(global0.b.a), vec2<i32>(global0.c.x, -2147483647i)), Struct_2(global0.a, global0.b, u_input.b.xz))))).b, _wgslsmith_div_vec2_i32(u_input.b.wx, vec2<i32>(countOneBits(u_input.b.x), global0.c.x)));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a + -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(abs(145f))), func_5(Struct_2(select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(false, var_0.a.x, false), false), var_0.b, global0.c >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))).b.a)));
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(892f, reverseBits(vec2<u32>(0u, ~u_input.a | ~u_input.a)), 29568u);
}

