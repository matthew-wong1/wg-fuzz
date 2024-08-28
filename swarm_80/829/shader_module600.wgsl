struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, vec3<bool>(any(vec2<bool>(true, false)), arg_0.d.x, false)));
    global1 = !vec4<bool>(arg_0.d.x, !(true | arg_1.a.a), arg_1.c.x, all(arg_0.d));
    let var_1 = arg_1.a;
    return arg_1.a;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(271f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.b)))))) + -1070f);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_3(firstLeadingBit(min(u_input.a, arg_2)), arg_0.b.x, global1.yx, select(!global1.zx, vec2<bool>(!global1.x, true), global1.x), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(~(-2147483647i), _wgslsmith_sub_i32(arg_2, -1i)), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, -15330i), vec2<i32>(-2147483647i, arg_2)))), min(-vec2<i32>(0i, u_input.a), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_1, arg_2))))));
    var_0 = Struct_3(i32(-1i) * -9061i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), global1.ww, select(select(!global1.zy, vec2<bool>(any(vec2<bool>(false, global1.x)), global1.x), all(!arg_0.e)), select(vec2<bool>(var_0.d.x, true), !select(vec2<bool>(arg_0.a.a, true), arg_0.e.yy, arg_0.c.yz), func_2(Struct_3(u_input.a, 700f, var_0.c, global1.xy, var_0.e), Struct_2(Struct_1(false), arg_0.b, vec3<bool>(arg_0.c.x, false, var_0.d.x), 156f, arg_0.e)).a), vec2<bool>(any(vec4<bool>(var_0.c.x, false, true, true)) || global1.x, global1.x)), abs(-countOneBits(var_0.e)));
    var_0 = Struct_3(-9747i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d, arg_0.b.x, -1834f, arg_0.b.x))), vec4<bool>(arg_0.e.x, var_0.d.x, var_0.c.x, true), Struct_3(arg_1, 422f, vec2<bool>(false, true), global1.wz, vec2<i32>(arg_2, arg_1)))))), !select(select(vec2<bool>(false, var_0.d.x), var_0.d, select(vec2<bool>(var_0.c.x, global1.x), global1.yz, global1.ww)), !(!vec2<bool>(false, var_0.c.x)), vec2<bool>(all(vec2<bool>(global1.x, true)), true)), vec2<bool>(all(vec3<bool>(true, var_0.b <= var_0.b, arg_0.e.x | false)), var_0.c.x), select(abs(vec2<i32>(u_input.a, ~(-1451i))), _wgslsmith_clamp_vec2_i32(min(var_0.e << (vec2<u32>(67555u, 1u) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, arg_1))), abs(~var_0.e), -select(var_0.e, vec2<i32>(arg_1, u_input.a), false)), vec2<bool>(!(-10194i <= arg_1), true)));
    var var_1 = global1.x;
    let var_2 = Struct_2(Struct_1(false), arg_0.b, global1.zzz, _wgslsmith_f_op_f32(ceil(455f)), !(!(!select(vec4<bool>(global1.x, arg_0.a.a, false, false), vec4<bool>(global1.x, false, arg_0.a.a, true), var_0.d.x))));
    return vec4<bool>(!var_0.d.x, any(!(!(!var_2.e))), global1.x, true);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_3 {
    global0 = all(select(arg_1.c.e, vec4<bool>(false, arg_1.c.a.a, !select(true, global1.x, global1.x), false), arg_1.c.e));
    global1 = select(func_4(Struct_2(func_2(Struct_3(arg_1.e.x, arg_1.c.d, global1.wz, arg_1.c.c.yz, arg_1.a.ww), arg_1.c), arg_1.c.b, !arg_1.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.b, -879f, -643f, -208f), vec4<bool>(true, false, arg_1.c.a.a, arg_1.c.c.x), Struct_3(arg_1.e.x, arg_1.b, global1.xx, arg_1.c.e.xx, vec2<i32>(-1i, 2147483647i)))) - arg_1.b), vec4<bool>(all(global1.wx), any(vec4<bool>(arg_2.a, true, false, arg_2.a)), false, true)), arg_1.a.x, 2147483647i), select(vec4<bool>(any(arg_1.c.e), true, arg_2.a, global1.x), arg_1.c.e, vec4<bool>(false, global1.x, all(!arg_1.c.e), !arg_2.a != !arg_2.a)), true);
    var var_0 = ~85007i;
    global1 = select(func_4(Struct_2(arg_1.c.a, _wgslsmith_div_vec3_f32(arg_1.c.b, _wgslsmith_f_op_vec3_f32(-arg_1.c.b)), vec3<bool>(select(true, true, global1.x), true, false), arg_1.c.b.x, select(vec4<bool>(false, global1.x, true, arg_2.a), !vec4<bool>(arg_2.a, true, true, true), func_2(Struct_3(-42899i, arg_1.b, arg_1.c.e.zw, global1.xx, arg_1.a.yy), Struct_2(arg_2, arg_1.c.b, global1.wwx, arg_1.b, arg_1.c.e)).a)), 2147483647i, min(_wgslsmith_div_i32(-2147483647i, -26531i), select(arg_1.a.x, _wgslsmith_mod_i32(arg_1.a.x, 31504i), false))), vec4<bool>(arg_1.c.c.x, global1.x, func_4(Struct_2(Struct_1(true), vec3<f32>(arg_1.b, arg_1.c.b.x, arg_1.b), !arg_1.c.e.yxx, _wgslsmith_f_op_f32(-arg_1.b), select(arg_1.c.e, vec4<bool>(arg_2.a, arg_1.c.c.x, arg_2.a, true), vec4<bool>(false, false, false, arg_2.a))), -arg_1.e.x, arg_1.e.x << (_wgslsmith_mod_u32(arg_1.d.x, arg_1.d.x) % 32u)).x, select(false, false, true)), arg_1.c.e);
    global0 = arg_1.c.a.a;
    return Struct_3(u_input.a, _wgslsmith_f_op_f32(1078f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.c.d)) * _wgslsmith_f_op_f32(step(597f, arg_1.b))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.c.d, arg_1.c.d))))), vec2<bool>(any(vec4<bool>(true, true, !arg_2.a, !arg_2.a)), any(arg_1.c.e)), vec2<bool>(!(!all(vec3<bool>(true, arg_2.a, false))), !any(select(vec4<bool>(arg_2.a, arg_1.c.c.x, true, arg_2.a), vec4<bool>(arg_1.c.e.x, global1.x, true, false), global1.x))), vec2<i32>(i32(-1i) * -u_input.a, min(_wgslsmith_mod_i32(arg_1.e.x, u_input.a), 2147483647i)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_5 {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(-898i, -2147483647i, 1984i)), -(~vec3<i32>(-1i, 1i, u_input.a))), reverseBits(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.a, -1i, arg_1.a)), abs(vec3<i32>(u_input.a, arg_1.e.x, u_input.a))))));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(arg_2.e.x, _wgslsmith_mod_i32(u_input.a, abs(~u_input.a))), var_0.x);
    var var_2 = vec3<i32>(arg_1.e.x, var_0.x, ~(~(select(arg_2.a, -2147483647i, global1.x) << (1u % 32u))));
    global0 = false;
    var var_3 = firstTrailingBit(_wgslsmith_add_vec2_i32(-(~(~var_2.yy)), firstLeadingBit(vec2<i32>(~arg_2.e.x, var_2.x))));
    return Struct_5(firstLeadingBit(~max(vec4<i32>(var_1.x, arg_2.e.x, 14837i, arg_2.e.x), vec4<i32>(-2147483647i, arg_2.a, 1i, var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f - _wgslsmith_f_op_f32(-arg_1.b))), 1247f)), Struct_2(func_2(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(29237u, 74637u), vec2<u32>(14438u, 0u), vec2<u32>(1u, 21659u)), Struct_5(vec4<i32>(1i, 4179i, 2012i, var_2.x), arg_2.b, Struct_2(Struct_1(false), vec3<f32>(arg_1.b, -1175f, -1209f), arg_0.xyz, -936f, vec4<bool>(false, arg_1.c.x, false, arg_1.c.x)), vec3<u32>(4294967295u, 5558u, 41217u), vec3<i32>(arg_2.a, u_input.a, arg_2.e.x)), func_2(arg_2, Struct_2(Struct_1(false), vec3<f32>(arg_1.b, -792f, arg_2.b), global1.zxx, arg_2.b, arg_0))), Struct_2(func_2(Struct_3(0i, arg_2.b, arg_1.d, vec2<bool>(false, false), vec2<i32>(-22872i, arg_2.a)), Struct_2(Struct_1(arg_1.d.x), vec3<f32>(arg_2.b, arg_2.b, 449f), vec3<bool>(arg_2.c.x, global1.x, false), arg_2.b, vec4<bool>(arg_1.c.x, true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1821f, arg_1.b, 1339f) * vec3<f32>(129f, arg_2.b, -560f)), select(global1.xwy, vec3<bool>(true, false, global1.x), false), 1463f, vec4<bool>(arg_1.c.x, true, global1.x, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1736f, -483f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-259f * arg_1.b))), _wgslsmith_f_op_f32(round(arg_1.b))), vec3<bool>(!arg_1.c.x, true, true), -1201f, func_4(Struct_2(Struct_1(true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, arg_2.b, 427f)), select(vec3<bool>(arg_1.d.x, true, global1.x), vec3<bool>(false, true, arg_0.x), vec3<bool>(false, true, arg_1.c.x)), _wgslsmith_f_op_f32(arg_1.b * 630f), vec4<bool>(false, global1.x, false, true)), func_1(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(64301u, 1u)), Struct_5(vec4<i32>(arg_2.e.x, -70460i, -27642i, -23363i), arg_1.b, Struct_2(Struct_1(true), vec3<f32>(arg_2.b, 292f, arg_2.b), vec3<bool>(arg_2.c.x, arg_1.d.x, true), arg_2.b, arg_0), vec3<u32>(1u, 1u, 42695u), vec3<i32>(var_0.x, var_2.x, var_1.x)), func_2(Struct_3(arg_2.e.x, arg_2.b, vec2<bool>(arg_2.c.x, false), global1.xw, vec2<i32>(0i, -2147483647i)), Struct_2(Struct_1(false), vec3<f32>(arg_1.b, arg_2.b, arg_1.b), arg_0.ywy, arg_1.b, arg_0))).a, var_1.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(select(vec3<u32>(5639u, 0u, 63229u), vec3<u32>(61929u, 0u, 11831u), global1.zzw) >> (min(vec3<u32>(1u, 54182u, 30527u), vec3<u32>(2234u, 44922u, 95790u)) % vec3<u32>(32u)))), -(~max(abs(vec3<i32>(-9776i, var_2.x, 0i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, var_3.x, 2147483647i), vec3<i32>(2147483647i, 6562i, arg_2.e.x)))));
}

fn func_6(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    global0 = 11290u < arg_0.d.x;
    var var_0 = !(0i > _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(13697i, arg_0.e.x)), firstLeadingBit(~arg_0.e.zz)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_5(func_5(func_4(Struct_2(arg_0.c.a, arg_0.c.b, vec3<bool>(false, false, false), -562f, arg_0.c.e), u_input.a, arg_0.a.x), Struct_3(u_input.a, arg_0.b, vec2<bool>(true, arg_1), global1.xz, vec2<i32>(u_input.a, 2147483647i)), Struct_3(-2147483647i, 484f, global1.yx, global1.zw, arg_0.e.zx)).c.e, func_1(vec2<u32>(arg_0.d.x, arg_0.d.x), func_5(vec4<bool>(global1.x, true, false, true), Struct_3(arg_0.a.x, -342f, arg_0.c.c.zy, arg_0.c.e.wz, arg_0.a.xw), Struct_3(-1i, arg_0.b, arg_0.c.c.zy, vec2<bool>(false, arg_0.c.a.a), arg_0.a.wy)), arg_0.c.a), Struct_3(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.c.b.x), arg_0.c.e.xy, !arg_0.c.e.yz, ~vec2<i32>(arg_0.e.x, u_input.a))).c.d)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + arg_0.c.b.x)) + arg_0.c.b.x), 166f));
    global0 = func_1(arg_0.d.xx, Struct_5(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-143f))), Struct_2(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.b)), func_5(arg_0.c.e, Struct_3(1i, arg_0.c.d, vec2<bool>(false, false), global1.yw, vec2<i32>(u_input.a, u_input.a)), Struct_3(u_input.a, var_1, vec2<bool>(arg_1, true), global1.yz, vec2<i32>(u_input.a, -1i))).c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.d) + -413f), arg_0.c.e), _wgslsmith_sub_vec3_u32(vec3<u32>(29217u, arg_0.d.x, 0u), ~arg_0.d) | min(arg_0.d, select(vec3<u32>(arg_0.d.x, arg_0.d.x, 5466u), vec3<u32>(0u, 24258u, 4294967295u), arg_0.c.c)), ~(-abs(arg_0.a.ywz))), func_5(select(arg_0.c.e, !(!arg_0.c.e), ~arg_0.d.x >= 12620u), func_1(vec2<u32>(27513u, 4294967295u), Struct_5(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, u_input.a, 39014i, 0i), vec4<i32>(u_input.a, 1i, 49817i, -28295i)), arg_0.b, Struct_2(Struct_1(arg_1), vec3<f32>(602f, var_1, arg_0.b), global1.zxw, 423f, arg_0.c.e), ~arg_0.d, arg_0.a.yyz), func_5(func_5(arg_0.c.e, Struct_3(2147483647i, var_1, global1.zz, global1.yw, vec2<i32>(49562i, arg_0.a.x)), Struct_3(-2147483647i, -1062f, arg_0.c.e.zx, global1.xx, arg_0.a.xx)).c.e, Struct_3(arg_0.a.x, arg_0.c.b.x, vec2<bool>(false, false), global1.yw, arg_0.a.wz), Struct_3(arg_0.e.x, 758f, vec2<bool>(true, arg_1), arg_0.c.e.zw, vec2<i32>(u_input.a, -2147483647i))).c.a), func_1(~countOneBits(arg_0.d.zx), Struct_5(arg_0.a << (vec4<u32>(arg_0.d.x, 4294967295u, arg_0.d.x, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(911f * 1000f), Struct_2(arg_0.c.a, arg_0.c.b, global1.xzy, arg_0.b, vec4<bool>(false, arg_0.c.e.x, false, arg_1)), min(vec3<u32>(1u, arg_0.d.x, 7249u), vec3<u32>(29189u, arg_0.d.x, 61844u)), vec3<i32>(-62256i, u_input.a, u_input.a)), arg_0.c.a)).c.a).d.x;
    let var_2 = func_5(select(vec4<bool>(var_1 >= _wgslsmith_f_op_f32(1000f - -1587f), true, true & (arg_0.d.x <= arg_0.d.x), true), !arg_0.c.e, arg_0.c.e), func_1(arg_0.d.xy, arg_0, func_2(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(49001u, arg_0.d.x), vec2<u32>(65610u, 1u)), Struct_5(arg_0.a, 1513f, Struct_2(arg_0.c.a, vec3<f32>(-1793f, arg_0.c.d, 931f), vec3<bool>(false, global1.x, global1.x), 1755f, vec4<bool>(global1.x, true, true, false)), arg_0.d, arg_0.e), func_2(Struct_3(u_input.a, arg_0.c.b.x, vec2<bool>(global1.x, true), arg_0.c.c.yz, vec2<i32>(arg_0.e.x, u_input.a)), Struct_2(Struct_1(true), vec3<f32>(-462f, arg_0.b, 306f), vec3<bool>(true, arg_0.c.e.x, true), 1629f, vec4<bool>(arg_0.c.a.a, arg_1, true, arg_0.c.a.a)))), func_5(select(vec4<bool>(false, false, global1.x, arg_1), vec4<bool>(false, global1.x, false, false), false), Struct_3(arg_0.e.x, -129f, global1.yw, arg_0.c.c.yy, vec2<i32>(arg_0.e.x, u_input.a)), func_1(vec2<u32>(0u, 0u), Struct_5(arg_0.a, arg_0.c.d, Struct_2(Struct_1(arg_0.c.a.a), arg_0.c.b, arg_0.c.e.xzy, var_1, vec4<bool>(false, false, arg_0.c.a.a, global1.x)), arg_0.d, vec3<i32>(arg_0.a.x, u_input.a, -51036i)), arg_0.c.a)).c)), Struct_3(func_1(vec2<u32>(0u, arg_0.d.x) | arg_0.d.yx, arg_0, func_5(vec4<bool>(arg_1, global1.x, arg_1, false), func_1(arg_0.d.zx, Struct_5(arg_0.a, var_1, Struct_2(arg_0.c.a, vec3<f32>(-181f, -825f, arg_0.b), vec3<bool>(true, arg_1, arg_1), arg_0.c.b.x, arg_0.c.e), vec3<u32>(68575u, arg_0.d.x, 0u), vec3<i32>(2147483647i, arg_0.e.x, u_input.a)), Struct_1(global1.x)), func_1(vec2<u32>(arg_0.d.x, 4477u), Struct_5(arg_0.a, var_1, arg_0.c, arg_0.d, arg_0.e), Struct_1(true))).c.a).e.x, _wgslsmith_f_op_f32(min(arg_0.c.b.x, -476f)), func_4(Struct_2(Struct_1(true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1505f, -167f, 991f) * arg_0.c.b), select(global1.wyx, vec3<bool>(true, true, arg_0.c.a.a), vec3<bool>(arg_1, arg_0.c.a.a, arg_0.c.c.x)), arg_0.c.d, func_4(Struct_2(Struct_1(arg_0.c.e.x), arg_0.c.b, vec3<bool>(false, arg_0.c.e.x, false), arg_0.b, vec4<bool>(arg_1, global1.x, true, arg_1)), u_input.a, u_input.a)), min(func_5(vec4<bool>(global1.x, false, true, false), Struct_3(arg_0.e.x, 654f, vec2<bool>(false, false), vec2<bool>(arg_1, false), arg_0.e.xz), Struct_3(u_input.a, var_1, vec2<bool>(arg_1, false), arg_0.c.e.yz, vec2<i32>(2147483647i, -27744i))).e.x, -1i), reverseBits(u_input.a)).ww, arg_0.c.e.xw, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.e.zx, vec2<i32>(-2147483647i, 1i)), _wgslsmith_mod_vec2_i32(~arg_0.a.yz, _wgslsmith_mod_vec2_i32(arg_0.e.xz, arg_0.e.xz))))).c.e;
    return vec4<bool>(true, !func_5(var_2, func_1(arg_0.d.zz, Struct_5(arg_0.a, 576f, Struct_2(Struct_1(true), vec3<f32>(-607f, arg_0.b, var_1), global1.wxy, var_1, vec4<bool>(global1.x, var_2.x, var_2.x, true)), arg_0.d, vec3<i32>(u_input.a, u_input.a, arg_0.a.x)), Struct_1(arg_1)), Struct_3(_wgslsmith_mult_i32(arg_0.e.x, u_input.a), 248f, global1.xy, select(vec2<bool>(arg_1, false), var_2.yy, false), func_1(arg_0.d.xx, arg_0, Struct_1(var_2.x)).e)).c.c.x, u_input.a < arg_0.e.x, any(arg_0.c.c) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!func_6(func_5(vec4<bool>(true, false, true, global1.x), Struct_3(u_input.a, -346f, vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), vec2<i32>(-2147483647i, u_input.a)), func_1(vec2<u32>(48497u, 91011u), Struct_5(vec4<i32>(u_input.a, 26667i, 2147483647i, u_input.a), 982f, Struct_2(Struct_1(global1.x), vec3<f32>(-2035f, 585f, 374f), vec3<bool>(true, false, true), -593f, vec4<bool>(false, global1.x, true, global1.x)), vec3<u32>(6587u, 0u, 8992u), vec3<i32>(0i, u_input.a, -14189i)), Struct_1(global1.x))), true), vec4<bool>(u_input.a < -33427i, true, true, all(vec2<bool>(u_input.a <= u_input.a, true))), !global1.x);
    global0 = true && select(!global1.x, global1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), vec3<u32>(max(~33029u, abs(4294967295u)), _wgslsmith_sub_u32(~4142u, _wgslsmith_mod_u32(41080u, 114205u)), 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f - 364f) * _wgslsmith_f_op_f32(1030f + 224f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-822f, -1814f, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-699f, -1003f)) + -1655f)) * vec3<f32>(_wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(step(578f, -2887f))), -1939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-845f)) * -188f))), u_input.a, ~0u, ~1u);
}

