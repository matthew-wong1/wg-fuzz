struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-229f, -1441f, 1892f, 800f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = Struct_1(vec3<bool>(true, true, true), i32(-1i) * -32277i);
    return _wgslsmith_mult_u32(29896u, 6175u | arg_0);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-824f, 362f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) - _wgslsmith_f_op_f32(trunc(-1647f))), -693f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(434f, global0.x, global0.x, 1739f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.x, global0.x)))), _wgslsmith_div_f32(global0.x, -1020f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1005f)))))));
    var var_1 = (vec4<u32>(~(~u_input.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 270u, 2460u, arg_0.a), vec4<u32>(11509u, 4294967295u, u_input.a.x, 30770u)))) >> (~vec4<u32>(4294967295u, u_input.a.x << (3611u % 32u), 4294967295u, func_3(arg_0.a, true)) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(7300u, arg_0.a, 0u, firstTrailingBit(4294967295u)), vec4<u32>(u_input.a.x, 1u, ~u_input.a.x, arg_0.a)), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a.x, arg_0.a, u_input.a.x), min(vec4<u32>(arg_0.a, 0u, 25421u, u_input.a.x), vec4<u32>(arg_0.a, 1u, 4294967295u, 1u)), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(~arg_0.a, arg_0.a, ~16994u, 36740u)));
    var_0 = !any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))) != true;
    var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~min(vec4<u32>(arg_0.a, 1u, 4294967295u, var_1.x), vec4<u32>(4294967295u, var_1.x, var_1.x, arg_0.a)) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_0.a, 15198u, 4294967295u), firstTrailingBit(vec4<u32>(var_1.x, 3277u, 64323u, 25203u))) % vec4<u32>(32u)), abs(vec4<u32>(arg_0.a, var_1.x, ~1u, 4294967295u | var_1.x))), ~vec4<u32>(~var_1.x, countOneBits(~4294967295u), arg_0.a, _wgslsmith_mult_u32(arg_0.a, 1u)), vec4<u32>(0u, ~firstTrailingBit(~4294967295u), _wgslsmith_mult_u32(u_input.a.x, 1u), 39306u));
    return Struct_3(u_input.d, max(14572i, 2147483647i), _wgslsmith_f_op_vec2_f32(-global0.yw));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec4<i32>) -> vec4<f32> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f * arg_2.e.x))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)))), func_2(Struct_2(46159u, func_2(Struct_2(6140u, 2147483647i)).a | select(2147483647i, -2436i, arg_2.b.x))).c.x);
    var var_0 = -(_wgslsmith_sub_i32(u_input.b.x, 0i) >> (u_input.a.x % 32u));
    let var_1 = Struct_4(Struct_2(4294967295u, arg_1.a), func_2(Struct_2(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), arg_3.x)));
    var_0 = arg_2.d.x;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.e, arg_2.c))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-1074f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_1.c.x))));
    return vec4<f32>(-644f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(511f * arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.c.x))))), arg_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1297f, func_2(Struct_2(var_1.a.a, var_1.a.b)).c.x))) + -698f));
}

fn func_1(arg_0: vec2<f32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(579f)), -1063f, _wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), true)), -109f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(-688f, func_2(Struct_2(u_input.a.x, u_input.d)), Struct_5(~vec4<u32>(u_input.a.x, 6222u, 39880u, 1u), vec3<bool>(false, true, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-749f, global0.x, -293f, -1000f), vec4<f32>(global0.x, -283f, global0.x, arg_0.x), false)), u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, arg_0.x, -1308f, -168f))), vec4<i32>(u_input.c.x, u_input.d, -6143i, u_input.c.x) & ~vec4<i32>(-2147483647i, u_input.c.x, u_input.d, -27945i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(783f, -1514f, 343f, -1158f))))))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_0);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -825f);
    let var_2 = firstTrailingBit(u_input.a);
    let var_3 = u_input.a;
    return !select(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), true), !vec4<bool>(true, arg_0.x != 1678f, true, false), select(true, any(vec3<bool>(true, false, false)) && true, any(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(round(447f)), _wgslsmith_f_op_f32(sign(-811f)))))));
    let var_2 = !(!select(vec4<bool>(!var_0, any(vec2<bool>(var_0, true)), true, any(vec2<bool>(var_0, var_0))), func_1(_wgslsmith_f_op_vec2_f32(max(global0.zy, var_1.yx))), vec4<bool>(all(vec3<bool>(var_0, var_0, var_0)), true, var_0, true)));
    let var_3 = 2218f;
    var var_4 = true;
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3, _wgslsmith_div_f32(global0.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x), -535f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz);
}

