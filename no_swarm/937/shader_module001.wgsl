struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 74803u), -31729i, vec3<f32>(-833f, 385f, -1002f)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = !vec2<bool>(global1.a.a.x & global1.a.a.x, true);
    global0 = select(vec2<bool>(-firstTrailingBit(48107i) != -2147483647i, (global0.x && global1.a.a.x) & !(global1.a.d.x > global1.a.d.x)), vec2<bool>(any(select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global1.a.a.x, true), !global1.a.a.x)), any(!global1.a.a.zz)), global1.a.a.xx);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x));
    return !select(vec2<bool>(all(!vec2<bool>(false, global0.x)), true & global0.x), select(vec2<bool>(true, all(vec4<bool>(global1.a.a.x, global1.a.a.x, false, true))), vec2<bool>(global1.a.a.x, true), true), select(global1.a.a.zy, global1.a.a.xy, !global0.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = global1.a.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(214f + _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(f32(-1f) * -325f))));
    let var_2 = all(!(!global1.a.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x)), _wgslsmith_f_op_f32(2747f * _wgslsmith_f_op_f32(min(-329f, global1.a.d.x))), arg_1.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1836f, _wgslsmith_f_op_f32(ceil(-1581f)), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x))))))));
    global1 = Struct_3(Struct_1(global1.a.a, vec2<u32>(27440u, 12264u), 0i, global1.a.d));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1 * global1.a.d))), vec3<f32>(_wgslsmith_f_op_f32(var_3.x * 1822f), -434f, _wgslsmith_f_op_f32(round(global1.a.d.x)))))));
}

fn func_2() -> i32 {
    let var_0 = vec2<bool>(true, all(!global1.a.a.yx));
    global0 = !(!vec2<bool>(false, var_0.x));
    let var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.d, u_input.d >> (global1.a.b.x % 32u), firstTrailingBit(61318u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.b.x, u_input.d, u_input.d) ^ vec3<u32>(1u, global1.a.b.x, 25120u), ~vec3<u32>(0u, 72783u, 4294967295u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(829f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1420f * -381f) - global1.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1000f, -239f), -744f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f - _wgslsmith_div_f32(var_1, 187f)))), select(global1.a.a.zx, vec2<bool>(!(false && global1.a.a.x), all(!vec4<bool>(var_0.x, true, var_0.x, global0.x))), select(vec2<bool>(true, true), select(func_3(), var_0, var_0.x), true))));
    global1 = Struct_3(Struct_1(vec3<bool>(false, global0.x, false), vec2<u32>(u_input.d, global1.a.b.x), ~(~(-2147483647i)), global1.a.d));
    return -25388i;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = Struct_2(global1.a);
    var var_2 = Struct_1(select(vec3<bool>(func_3().x, var_0.a.x, !global0.x), select(vec3<bool>(func_3().x, true, true), vec3<bool>(arg_0.a.a.x, !arg_3, any(arg_0.a.a.zx)), true), !(!var_0.a.x)), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, var_0.b.x), global1.a.b), firstLeadingBit(arg_0.a.b)), _wgslsmith_div_i32(arg_2.a.c, firstLeadingBit(abs(arg_1 >> (arg_0.a.b.x % 32u)))), var_1.a.d);
    var var_3 = Struct_1(select(vec3<bool>(true, true, var_0.a.x), vec3<bool>(!var_1.a.a.x, true, false), global1.a.a.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(129943u, _wgslsmith_dot_vec2_u32(arg_0.a.b, vec2<u32>(var_2.b.x, u_input.a.x))), var_1.a.b, (vec2<u32>(var_2.b.x, 0u) & var_1.a.b) >> (_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.b.x, arg_0.a.b.x), vec2<u32>(u_input.c, global1.a.b.x)) % vec2<u32>(32u))), arg_0.a.c << (~u_input.d % 32u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(~(vec3<u32>(arg_0.a.b.x, u_input.a.x, 0u) & vec3<u32>(arg_0.a.b.x, 25370u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-arg_0.a.d), vec2<bool>(true, any(vec3<bool>(var_1.a.a.x, false, false))))))));
    var var_4 = var_1.a;
    return arg_2;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = global0.x;
    global1 = func_5(Struct_3(Struct_1(vec3<bool>(false, global0.x, true), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.b.x, arg_0.x), vec3<u32>(39439u, 50824u, arg_0.x)), abs(u_input.a.x)), global1.a.c, global1.a.d)), _wgslsmith_add_i32(-1i, func_2()), Struct_3(global1.a), !global1.a.a.x);
    let var_1 = select(vec4<bool>(!select(all(vec4<bool>(global1.a.a.x, global1.a.a.x, global1.a.a.x, false)), true, global0.x || false), !(all(vec4<bool>(global0.x, global0.x, false, global0.x)) & false), !global1.a.a.x, !select(global1.a.a.x, global0.x, global0.x)), select(!vec4<bool>(true, false, -172f >= global1.a.d.x, !global0.x), !(!select(vec4<bool>(true, global0.x, true, global1.a.a.x), vec4<bool>(true, true, global1.a.a.x, false), vec4<bool>(global1.a.a.x, true, global1.a.a.x, true))), all(select(!vec4<bool>(global0.x, true, true, global1.a.a.x), !vec4<bool>(true, global0.x, true, true), true))), !vec4<bool>(select(func_5(Struct_3(Struct_1(vec3<bool>(true, global0.x, global0.x), vec2<u32>(0u, arg_0.x), global1.a.c, vec3<f32>(-1151f, global1.a.d.x, global1.a.d.x))), 17906i, Struct_3(Struct_1(global1.a.a, vec2<u32>(u_input.c, 44612u), u_input.e, global1.a.d)), global1.a.a.x).a.a.x, true, global1.a.a.x), global1.a.a.x, true, true || !global1.a.a.x));
    let var_2 = _wgslsmith_mod_vec2_u32(select(abs(vec2<u32>(_wgslsmith_div_u32(u_input.c, 13941u), global1.a.b.x)), ~(~arg_0.yy), ~24294u <= firstTrailingBit(_wgslsmith_div_u32(arg_0.x, 11786u))), abs(max(select(arg_0.yx << (u_input.a % vec2<u32>(32u)), vec2<u32>(global1.a.b.x, u_input.a.x), global1.a.a.xy), vec2<u32>(~0u, global1.a.b.x))));
    var var_3 = vec4<bool>(false, any(!select(var_1, vec4<bool>(true, false, var_1.x, global0.x), var_1)), all(vec4<bool>(!all(vec2<bool>(false, true)), any(var_1), !(!global0.x), true)), true);
    return select(true, global0.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.d * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(global1.a.d)), vec3<f32>(global1.a.d.x, global1.a.d.x, 1000f), global1.a.a.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1242f, 2330f, -662f) + vec3<f32>(global1.a.d.x, global1.a.d.x, -1721f)) * _wgslsmith_f_op_vec3_f32(-global1.a.d))))) - _wgslsmith_f_op_vec3_f32(-global1.a.d));
    global0 = global1.a.a.yz;
    var var_1 = -227f;
    global0 = vec2<bool>(-global1.a.c > (13633i << (u_input.c % 32u)), all(!vec2<bool>(func_1(vec4<u32>(0u, global1.a.b.x, global1.a.b.x, u_input.c)), all(vec3<bool>(global1.a.a.x, global1.a.a.x, global1.a.a.x)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-618f, global1.a.d.x) * global1.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-16992i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, -678f), -706f, _wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(-var_0.x))))));
}

