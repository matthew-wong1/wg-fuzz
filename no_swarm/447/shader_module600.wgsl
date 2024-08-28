struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-496f, -1000f, 911f, -378f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<bool> {
    var var_0 = ~arg_1;
    var var_1 = vec3<bool>(!(all(vec3<bool>(true, false, true)) & all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), true, all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)) & any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), select(true, false, false))));
    var_0 = _wgslsmith_mod_u32(0u, arg_1);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-global0.x), Struct_1(vec3<bool>(!all(vec3<bool>(true, var_1.x, var_1.x)), !var_1.x, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 199f, global0.x, 1339f), vec4<f32>(1742f, -1858f, -1784f, 1301f))))))), -2147483647i, 0i, Struct_1(!(!vec3<bool>(true, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), global0.x, 367f, global0.x) + vec4<f32>(-151f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(3739f)), _wgslsmith_f_op_f32(global0.x + -539f)))));
    let var_3 = Struct_2(var_2.e.a.x & !(!(!var_2.b.a.x)));
    return vec4<bool>(all(var_2.e.a), all(select(select(select(var_2.b.a, vec3<bool>(false, var_1.x, var_1.x), var_1.x), var_2.b.a, var_2.e.a), !vec3<bool>(var_2.e.a.x, false, true), any(vec4<bool>(var_1.x, var_3.a, true, true)) && !var_2.b.a.x)), u_input.d != 1i, var_1.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = (~38219u & _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(1u, u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))) < _wgslsmith_div_u32(u_input.b.x | 80188u, countOneBits(max(u_input.b.x & u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 10431u, u_input.b.x), vec3<u32>(u_input.b.x, 4079u, 0u)))));
    let var_1 = arg_0.e.b;
    var var_2 = vec3<i32>(0i, u_input.c, ~arg_0.c);
    var_2 = vec3<i32>(reverseBits(arg_0.c), 1i, var_2.x);
    var_2 = ~vec3<i32>(~abs(2147483647i), 1i, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -7296i), u_input.a), u_input.a << (u_input.b % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-global0.x)), 2837f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_4 {
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(min(global0.x, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -901f)), _wgslsmith_f_op_f32(f32(-1f) * -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(109f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1316f, -1392f, arg_0.x), vec4<f32>(-668f, -1327f, arg_0.x, arg_0.x), vec4<bool>(false, false, false, true))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 1000f, 2090f, -845f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 771f, 553f, arg_0.x), vec4<f32>(764f, -230f, 262f, -498f), vec4<bool>(true, true, false, false)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + -1492f))))), _wgslsmith_f_op_f32(-489f + _wgslsmith_f_op_f32(func_4(Struct_3(arg_0.x, Struct_1(vec3<bool>(true, true, true), vec4<f32>(arg_0.x, 163f, global0.x, global0.x)), u_input.a.x, u_input.c, Struct_1(vec3<bool>(true, false, true), vec4<f32>(global0.x, -662f, 124f, arg_0.x))), func_3(-56104i, u_input.b.x), true)))));
    let var_0 = _wgslsmith_f_op_f32(floor(155f));
    let var_1 = select(u_input.a, vec2<i32>(-35559i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, u_input.c, -1i, 19081i), ~vec4<i32>(0i, u_input.d, -1i, -2147483647i))), !(!vec2<bool>(any(vec3<bool>(false, true, true)), 982f >= arg_0.x)));
    global0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(398f)) - 119f) * _wgslsmith_f_op_f32(-var_0)), 407f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(global0.x))))), _wgslsmith_f_op_f32(-697f * 2226f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_0) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) - 1323f)), global0.x);
    return Struct_4(vec4<bool>(all(vec2<bool>(func_3(1i, u_input.b.x).x, false)), !(true & all(vec2<bool>(true, false))), !all(vec2<bool>(true, true)), true), select(vec2<bool>(false, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), false), min(u_input.c, abs(~(-2147483647i))), arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = -848f;
    var var_1 = func_2(arg_0.b.www);
    let var_2 = ~var_1.c;
    let var_3 = -741f < global0.x;
    var var_4 = Struct_2(arg_2.x);
    return func_2(_wgslsmith_f_op_vec3_f32(global0.xyx - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1097f, var_0, var_1.d.x), vec3<f32>(-589f, var_0, 529f)))))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = !func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-673f, 2287f, _wgslsmith_f_op_f32(abs(arg_1.d.x)))))).a.xx;
    let var_1 = countOneBits(abs(abs(u_input.b.x << (u_input.b.x % 32u)) | 48314u));
    var var_2 = all(vec3<bool>(any(func_3(-57303i, _wgslsmith_mod_u32(var_1, 1800u)).ww), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.b.x, 4294967295u, 108759u), ~vec4<u32>(u_input.b.x, u_input.b.x, 4210u, var_1)) != _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x), all(vec2<bool>(false, arg_0 & false))));
    var var_3 = select(arg_1.a, !arg_1.a, vec4<bool>(false, var_0.x, !(~u_input.b.x < 0u), var_0.x));
    var var_4 = Struct_5(select(var_0.x, _wgslsmith_f_op_f32(-1542f * arg_1.d.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -929f)), false), Struct_2((_wgslsmith_mult_u32(var_1, u_input.b.x) <= abs(18417u)) & true), arg_3, abs(select(vec4<u32>(0u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 0u), vec2<u32>(61338u, u_input.b.x)), var_1), vec4<u32>(~48652u, var_1 << (u_input.b.x % 32u), var_1, ~0u), var_0.x)));
    return Struct_3(_wgslsmith_f_op_f32(arg_3.e.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(-arg_1.d.x)) * _wgslsmith_f_op_f32(sign(-1554f)))), arg_3.b, -2147483647i, arg_3.c, arg_3.b);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(all(select(vec3<bool>(55960u < u_input.b.x, arg_0.e.a.x, true), vec3<bool>(any(arg_0.e.a), arg_0.b.a.x, !arg_0.b.a.x), true)));
    global0 = _wgslsmith_f_op_vec4_f32(sign(arg_0.e.b));
    let var_1 = min(_wgslsmith_div_i32(arg_0.c, min(u_input.a.x, ~6845i) | -u_input.a.x), u_input.a.x);
    var var_2 = 10446i >> (1u % 32u);
    let var_3 = false;
    return arg_0.b;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(func_6(Struct_3(-262f, func_5(false, Struct_4(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec2<bool>(arg_2, arg_0.b.a.x), arg_0.c, global0.ywx), vec4<f32>(arg_1.b.x, arg_0.a, arg_1.b.x, arg_1.b.x), arg_0).b, select(arg_0.c, arg_0.c, arg_1.a.x), ~(-2147483647i), Struct_1(arg_1.a, arg_1.b))).b)) - arg_0.b.b);
    var var_1 = func_6(func_5(true, Struct_4(func_2(vec3<f32>(arg_0.e.b.x, -182f, global0.x)).a, arg_0.b.a.xx, ~u_input.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(726f * 1184f), 252f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1285f + global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.e.b.x))), func_1(Struct_1(arg_1.a, arg_1.b), vec3<i32>(arg_0.c, 12299i, u_input.d) << (vec3<u32>(125425u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), arg_1.a).d.x, -450f), arg_0));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(313f, global0.x, 586f, 587f) - vec4<f32>(-256f, global0.x, var_1.b.x, arg_1.b.x)))) + vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_4(Struct_3(647f, Struct_1(arg_1.a, arg_1.b), 0i, arg_0.c, arg_0.e), vec4<bool>(false, arg_1.a.x, arg_0.b.a.x, true), arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1184f)), _wgslsmith_f_op_f32(exp2(func_1(arg_0.e, vec3<i32>(2147483647i, -20187i, 17816i), arg_1.a).d.x)), -1917f)));
    let var_2 = -arg_0.c;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-844f, 382f, var_1.b.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, global0.x, -1023f) * _wgslsmith_div_vec3_f32(var_1.b.yxx, vec3<f32>(arg_1.b.x, global0.x, -1369f)))) * vec3<f32>(-2826f, global0.x, func_6(func_5(var_1.a.x, Struct_4(vec4<bool>(var_1.a.x, var_1.a.x, false, false), arg_1.a.xx, 0i, vec3<f32>(arg_0.e.b.x, arg_0.a, arg_0.e.b.x)), arg_1.b, arg_0)).b.x)), abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | (global0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1207f));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 199f, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, -301f, global0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-967f, global0.x), global0.x, _wgslsmith_f_op_f32(sign(1000f)))))));
    var var_1 = true;
    var var_2 = true;
    let x = u_input.a;
    s_output = func_7(Struct_3(_wgslsmith_f_op_f32(abs(-199f)), func_6(func_5(0u > u_input.b.x, func_1(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-1335f, 1578f, 388f, 636f)), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, global0.x)), Struct_3(-618f, Struct_1(vec3<bool>(false, true, false), vec4<f32>(-622f, 1165f, global0.x, -1407f)), -2147483647i, 0i, Struct_1(vec3<bool>(true, true, false), vec4<f32>(global0.x, -504f, -229f, global0.x))))), max(-62935i, 81i), u_input.a.x, Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec4_f32(vec4<f32>(-657f, 341f, global0.x, 1562f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 816f, global0.x, 672f))))), func_6(func_5(all(vec3<bool>(true, false, true)), Struct_4(vec4<bool>(true, false, false, true), vec2<bool>(true, true), -u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, 1074f, global0.x, global0.x)), func_5(true, func_2(vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 548f, global0.x)), func_5(false, Struct_4(vec4<bool>(false, true, true, true), vec2<bool>(false, false), u_input.d, global0.zxw), vec4<f32>(-458f, 1577f, global0.x, global0.x), Struct_3(global0.x, Struct_1(vec3<bool>(true, false, true), vec4<f32>(1561f, global0.x, 491f, 339f)), u_input.c, -34398i, Struct_1(vec3<bool>(false, true, false), vec4<f32>(-1241f, 834f, -1466f, 2294f))))))), u_input.b.x <= ~(34986u | _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u)));
}

