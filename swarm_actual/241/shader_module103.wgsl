struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32) -> bool {
    global0 = Struct_1(!(!vec2<bool>(true, !global0.a.x)));
    var var_0 = vec4<i32>(~0i, min(abs((-38520i & arg_1) & countOneBits(3300i)), ~_wgslsmith_mod_i32(arg_1, _wgslsmith_mod_i32(arg_1, u_input.c.x))), countOneBits(select(i32(-1i) * -55060i, -2147483647i, true)), -2147483647i & _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec4_i32(u_input.b >> (vec4<u32>(4294967295u, 1u, 10776u, 54221u) % vec4<u32>(32u)), u_input.b)));
    var var_1 = u_input.b.xx;
    let var_2 = Struct_1(global0.a);
    var_0 = u_input.b;
    return !(!all(vec4<bool>(true, global0.a.x, false, any(vec4<bool>(false, var_2.a.x, var_2.a.x, false)))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_add_u32(48553u, countOneBits(~1u));
    global0 = Struct_1(vec2<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) * 2105f), 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(864f - -765f)))), any(select(select(vec4<bool>(global0.a.x, true, false, true), vec4<bool>(false, false, global0.a.x, true), global0.a.x), select(vec4<bool>(true, arg_1.a, arg_1.a, true), vec4<bool>(global0.a.x, arg_1.a, true, false), true), true))));
    var var_1 = Struct_2(true, arg_1.b);
    global0 = Struct_1(!vec2<bool>(true, !(var_0 != 116239u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1855f, var_1.b.x, var_1.b.x, -622f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.b.x, -1000f, var_1.b.x, 580f), vec4<f32>(611f, var_1.b.x, var_1.b.x, 2169f), vec4<bool>(false, true, var_1.a, global0.a.x))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(680f, -690f, arg_1.b.x, var_1.b.x))))))))));
    return Struct_2(global0.a.x || var_1.a, _wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(760f, arg_1.b.x, var_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1610f), _wgslsmith_f_op_f32(min(689f, -386f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-451f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_1(select(!vec2<bool>(arg_0.a, false), select(!(!global0.a), !(!arg_1.yy), true), !vec2<bool>(true, !arg_2)));
    global0 = Struct_1(!(!(!(!vec2<bool>(arg_2, arg_1.x)))));
    global0 = Struct_1(global0.a);
    var var_0 = Struct_1(arg_1.zx);
    global0 = Struct_1(select(!global0.a, vec2<bool>(func_2(~u_input.c.x, arg_3, u_input.a >> (4294967295u % 32u)).a, true), !(!vec2<bool>(false, var_0.a.x))));
    return Struct_1(vec2<bool>(true, arg_0.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    global0 = func_4(Struct_2(!(!arg_2.a.x) || !select(global0.a.x, false, arg_2.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 352f, -1097f)) - vec3<f32>(arg_1, arg_0.x, arg_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -1253f, _wgslsmith_f_op_f32(1000f - arg_1))))), select(!(!select(vec3<bool>(true, false, arg_2.a.x), vec3<bool>(arg_2.a.x, arg_2.a.x, global0.a.x), false)), select(vec3<bool>(true, all(vec4<bool>(global0.a.x, global0.a.x, arg_2.a.x, arg_2.a.x)), true), vec3<bool>(arg_2.a.x, true, global0.a.x & arg_2.a.x), !(!global0.a.x)), arg_2.a.x), arg_2.a.x, func_2(~u_input.b.x, Struct_2(_wgslsmith_f_op_f32(floor(arg_1)) > _wgslsmith_f_op_f32(arg_0.x + 640f), vec3<f32>(-1233f, arg_1, _wgslsmith_f_op_f32(f32(-1f) * -205f))), 0i));
    let var_0 = select(!(!arg_2.a), vec2<bool>(true, !arg_2.a.x), true);
    let var_1 = ~(_wgslsmith_mult_u32(min(abs(4294967295u), ~0u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 53080u, 0u), vec3<u32>(0u, 1u, 43775u)))) ^ ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 52641u, 0u), 1u));
    global0 = arg_2;
    var var_2 = abs(u_input.b);
    return !select(vec3<bool>(false, all(vec4<bool>(true, false, global0.a.x, var_0.x)), false), vec3<bool>(true, all(vec3<bool>(false, var_0.x, true)) && func_4(Struct_2(global0.a.x, vec3<f32>(1377f, 2124f, 232f)), vec3<bool>(arg_2.a.x, false, global0.a.x), false, Struct_2(var_0.x, vec3<f32>(-969f, arg_1, arg_1))).a.x, arg_2.a.x), vec3<bool>(false, abs(-4518i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -33634i, -2147483647i, var_2.x), u_input.b), !(!global0.a.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(-984f, 2439f));
    global0 = Struct_1(func_4(func_2(_wgslsmith_sub_i32(countOneBits(arg_1), _wgslsmith_mult_i32(arg_1, 16481i)), func_2(arg_1, func_2(arg_1, Struct_2(arg_2.a.x, vec3<f32>(1184f, -431f, var_0)), 2147483647i), _wgslsmith_add_i32(arg_1, arg_1)), reverseBits(-arg_1)), select(!arg_0, func_1(arg_3.b.xx, -741f, arg_2), func_1(_wgslsmith_f_op_vec2_f32(step(arg_3.b.zy, vec2<f32>(var_0, -500f))), _wgslsmith_div_f32(1000f, var_0), arg_2).x), !arg_2.a.x, func_2(1i, arg_3, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.yzx, u_input.b.zzy), vec3<i32>(27573i, 52769i, u_input.c.x)))).a);
    global0 = func_4(arg_3, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(799f, 1000f)))) - _wgslsmith_f_op_vec2_f32(-arg_3.b.zx)), -469f, func_4(arg_3, arg_0, ~53360u <= _wgslsmith_clamp_u32(13004u, 1u, 35142u), Struct_2(any(arg_0), vec3<f32>(-476f, -484f, -365f)))), any(global0.a), Struct_2(!(!arg_0.x) | all(vec4<bool>(arg_0.x, arg_2.a.x, true, false)), arg_3.b));
    let var_1 = -195f;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(arg_3.b.xx));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(_wgslsmith_mod_i32(reverseBits(-9143i), arg_1 >> (1u % 32u)), Struct_2(true, _wgslsmith_f_op_vec3_f32(abs(arg_3.b))), 1i).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + var_0)))), func_2(-2147483647i, Struct_2(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-811f, -227f, -309f))), 14824i).b.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_5(func_1(vec2<f32>(986f, -199f), -1078f, Struct_1(global0.a)), -1i, Struct_1(vec2<bool>(true, true)), func_2(u_input.b.x, Struct_2(global0.a.x, vec3<f32>(873f, -870f, 308f)), u_input.a)))))))));
    let var_1 = u_input.c.x;
    var var_2 = Struct_1(vec2<bool>(global0.a.x, all(!select(vec3<bool>(global0.a.x, true, false), vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, false, true)))));
    let var_3 = ~1u;
    var_2 = func_4(Struct_2(!var_2.a.x, var_0.zyy), !(!vec3<bool>(var_2.a.x, !var_2.a.x, true)), false, Struct_2(all(vec3<bool>(true, false, 1507f > var_0.x)), var_0.wzw));
    var var_4 = -39433i;
    var var_5 = Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.wyy, var_0.wyy) + vec3<f32>(1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(32044u, ~4294967295u, vec4<f32>(-1690f, var_5.b.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) + 357f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.b.x * -436f) * var_0.x))), var_0.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(var_0.x, func_2(var_1, func_2(u_input.c.x, Struct_2(var_2.a.x, vec3<f32>(-1095f, 184f, -584f)), -2147483647i), _wgslsmith_add_i32(-53070i, var_1)).b.x))));
}

