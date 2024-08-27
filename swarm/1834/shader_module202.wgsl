struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> f32 {
    return 707f;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_u32(arg_1.x, arg_1.x, arg_1.x))), 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-712f, 738f, 1937f), vec3<f32>(705f, -432f, -983f), arg_3.x)))))));
    let var_1 = arg_0;
    let var_2 = Struct_3(vec2<bool>(all(select(select(arg_3, vec2<bool>(arg_3.x, arg_3.x), arg_3.x), arg_3, select(vec2<bool>(true, arg_3.x), vec2<bool>(arg_3.x, arg_3.x), arg_3.x))), arg_3.x));
    var var_3 = Struct_3(arg_3);
    var var_4 = select(!vec3<bool>(false, true, var_2.a.x), !select(select(vec3<bool>(var_3.a.x, false, arg_3.x), select(vec3<bool>(true, var_2.a.x, var_2.a.x), vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(var_3.a.x, false, false)), true), vec3<bool>(select(false, false, false), var_3.a.x, true), !(!vec3<bool>(false, true, var_3.a.x))), vec3<bool>((~0i ^ var_1) > _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, arg_0), vec3<i32>(23884i, var_1, -1i)), vec3<i32>(17057i, u_input.a, 2147483647i)), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2))) == 1540f));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 519f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-969f, 483f, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1473f, var_0.a.x, 431f), var_0.a))), select(vec3<bool>(var_3.a.x, arg_3.x, true), vec3<bool>(false, var_2.a.x, false), false && var_4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1221f, 860f, -1271f) + var_0.a))) - var_0.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_i32(u_input.a, -1i), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, arg_3.x), vec3<u32>(66595u, 0u, 49386u)), _wgslsmith_clamp_u32(arg_3.x, arg_3.x, 4294967295u), arg_2.a)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -429f, arg_1.x), vec3<f32>(-878f, arg_1.x, -1000f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, -475f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1354f, arg_1.x, 408f) + vec3<f32>(-118f, arg_1.x, arg_1.x)))))));
    var var_1 = select(arg_0.xx, !vec2<bool>(!(!arg_0.x), arg_2.a.x), select(select(vec2<bool>(arg_0.x, arg_0.x), select(arg_2.a, select(arg_0.yy, arg_0.zx, arg_0.x), arg_0.yz), vec2<bool>(false, arg_2.a.x)), !select(select(arg_0.zy, vec2<bool>(arg_2.a.x, arg_0.x), vec2<bool>(true, arg_2.a.x)), !arg_0.yx, 821f >= arg_1.x), vec2<bool>(all(select(arg_2.a, vec2<bool>(arg_2.a.x, true), true)), !arg_2.a.x)));
    let var_2 = select(vec4<bool>(_wgslsmith_clamp_i32(-u_input.b.x, u_input.b.x, i32(-1i) * -2147483647i) > 25089i, !(u_input.a >= _wgslsmith_mult_i32(-1i, 0i)), var_1.x, all(!select(arg_0, arg_0, arg_0))), select(vec4<bool>(false, arg_0.x, !(arg_3.x > 0u), var_1.x), vec4<bool>(true, false, !any(arg_2.a), u_input.b.x > reverseBits(-1i)), var_1.x), vec4<bool>(any(arg_0), arg_2.a.x | !arg_0.x, false || arg_0.x, true));
    var var_3 = vec4<f32>(arg_1.x, 913f, arg_1.x, 1f);
    var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 824f, var_3.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(611f, arg_1.x, var_0.x, -249f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1457f, 1866f, arg_1.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(971f, var_3.x, var_3.x, arg_1.x) * vec4<f32>(var_0.x, var_3.x, 718f, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, var_3.x, 156f) + vec4<f32>(var_0.x, -120f, var_0.x, 818f)) * vec4<f32>(arg_1.x, var_3.x, -345f, -1459f)) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(212f * var_3.x)))))));
    return !(!vec2<bool>(!(!arg_2.a.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true & any(!func_1(vec3<bool>(true, false, true), vec2<f32>(-1426f, 909f), Struct_3(vec2<bool>(true, false)), vec2<u32>(0u, 0u))), false);
    var_0 = vec2<bool>(!any(vec2<bool>(false, var_0.x)), var_0.x);
    var_0 = select(select(!vec2<bool>(false, !var_0.x), !vec2<bool>(!var_0.x, select(false, var_0.x, false)), var_0.x), !vec2<bool>(!var_0.x, false), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-215f, 357f, 864f)))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), 1f, _wgslsmith_f_op_f32(step(679f, _wgslsmith_f_op_f32(sign(-681f)))))), ~4294967295u, u_input.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-847f, 273f, -158f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(274f, -452f, -1170f), vec3<f32>(-533f, 807f, 551f))))), vec3<bool>(false, var_0.x, false & var_0.x)))));
    var var_2 = Struct_4(Struct_3(func_1(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(var_1.b.a.xy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a.x, var_1.b.a.x) + var_1.e.a.zy)), Struct_3(!vec2<bool>(var_0.x, false)), ~vec2<u32>(1u, 1u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e.a.xx + vec2<f32>(-233f, 2084f)) * _wgslsmith_f_op_vec3_f32(func_2(1i, vec3<u32>(var_1.c, var_1.c, var_1.c), var_1.c, vec2<bool>(false, true))).zy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 3281f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a.x, -652f))), var_0.x)), Struct_3(vec2<bool>(any(!vec4<bool>(true, true, var_0.x, true)), var_1.c > (var_1.c ^ 15141u))), Struct_3(vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, false, true)), any(vec3<bool>(false, var_0.x, var_0.x)))), Struct_3(vec2<bool>(func_1(vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-344f, var_1.e.a.x))), Struct_3(vec2<bool>(var_0.x, true)), vec2<u32>(var_1.c, var_1.c)).x, !any(vec4<bool>(false, false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(1233f, var_1.e.a.x, vec2<u32>(var_1.c, var_1.c | 4294967295u) & vec2<u32>(53796u, var_1.c));
}

