struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = Struct_1(~global0.a, select(var_0.a, global0.b, any(vec4<bool>(any(arg_0.a.yy), arg_0.c.x && true, true, false))), global0.c, ~(vec4<u32>(u_input.c.x, global0.d.x, global0.d.x, 4294967295u) >> (global0.d % vec4<u32>(32u))) & vec4<u32>(744u, ~var_0.b, 1u, 1u), true);
    let var_1 = _wgslsmith_add_u32(reverseBits(~(~(~u_input.c.x))), ~arg_0.b);
    var var_2 = Struct_2(!arg_0.a, global0.d.x, global0.b);
    global0 = Struct_1(-global0.a, select(select(global0.b, vec3<bool>(true, var_0.a.x, any(var_2.a.xx)), true), vec3<bool>(true, true, any(!vec4<bool>(global0.e, false, true, false))), var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), ~select(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.d.wy, vec2<u32>(var_0.b, 58261u)), max(0u, arg_2), var_1, var_0.b), ~global0.d, !select(vec4<bool>(var_2.c.x, arg_0.a.x, false, true), vec4<bool>(false, true, true, false), global0.e)), any(var_0.a));
    return select(select(!(!select(vec4<bool>(arg_0.c.x, global0.e, var_0.a.x, true), vec4<bool>(false, false, true, arg_0.c.x), vec4<bool>(true, false, true, true))), vec4<bool>(any(vec3<bool>(false, true, false)), false, true, var_0.c.x), any(!(!vec4<bool>(false, var_0.c.x, global0.b.x, false)))), !vec4<bool>((arg_0.b ^ 59888u) > var_2.b, (0i > global0.a.x) || !var_0.a.x, _wgslsmith_f_op_f32(1203f + global0.c) > -187f, !all(vec4<bool>(global0.e, false, var_2.c.x, true))), select(select(vec4<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, true, false)), global0.c <= 1668f, true), vec4<bool>(arg_2 >= global0.d.x, any(vec4<bool>(false, arg_0.a.x, true, global0.b.x)), all(vec3<bool>(var_2.a.x, global0.b.x, true)), !var_0.c.x), false), select(select(vec4<bool>(true, global0.b.x, true, global0.b.x), vec4<bool>(var_0.c.x, true, var_0.a.x, var_0.a.x), vec4<bool>(false, false, global0.b.x, arg_0.c.x)), select(select(vec4<bool>(true, true, arg_0.a.x, arg_0.c.x), vec4<bool>(true, false, true, true), var_2.c.x), vec4<bool>(var_2.c.x, false, var_2.c.x, global0.e), global0.e && false), global0.b.x), vec4<bool>(any(var_2.a), (32853u | global0.d.x) <= abs(arg_0.b), true, any(var_0.c.yy))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec3<f32> {
    var var_0 = Struct_2(vec3<bool>(false, global0.e, global0.b.x), 1u, vec3<bool>(false, global0.b.x, true));
    let var_1 = global0.a.x;
    var var_2 = Struct_2(global0.b, 1u, vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) == global0.c, select(global0.b.x, !var_0.c.x, all(global0.b.yy)), true));
    var_2 = Struct_2(vec3<bool>(any(var_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, -263f) + -827f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), all(select(func_3(Struct_2(global0.b, 0u, vec3<bool>(true, false, var_2.a.x)), vec3<i32>(arg_1.x, global0.a.x, u_input.b.x), 4294967295u), vec4<bool>(false, true, false, true), select(vec4<bool>(var_2.a.x, true, true, var_2.c.x), vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(true, var_0.c.x, var_0.c.x, false))))), 81600u, select(var_2.c, vec3<bool>(any(func_3(Struct_2(vec3<bool>(var_2.a.x, true, global0.e), 1u, vec3<bool>(var_0.c.x, var_0.c.x, true)), global0.a.zzy, var_2.b).zxy), var_2.c.x, true), firstLeadingBit(_wgslsmith_dot_vec4_u32(global0.d, vec4<u32>(0u, 1u, var_2.b, 75082u))) > u_input.c.x));
    let var_3 = ~var_2.b;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.c, global0.c)), vec3<f32>(532f, arg_0, arg_0), vec3<bool>(false, var_0.c.x, true))) - vec3<f32>(507f, global0.c, arg_0)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -974f, -187f), vec3<f32>(-1755f, 1000f, 408f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -238f, -802f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c, -1000f, 262f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c, 428f, -1054f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    global0 = Struct_1(arg_1.a, func_3(Struct_2(!select(vec3<bool>(arg_1.e, true, global0.e), vec3<bool>(true, false, true), vec3<bool>(false, global0.b.x, arg_1.e)), _wgslsmith_add_u32(~arg_1.d.x, select(27094u, global0.d.x, true)), arg_1.b), _wgslsmith_mult_vec3_i32(vec3<i32>(select(-1i, arg_1.a.x, true), _wgslsmith_dot_vec3_i32(arg_1.a.wwy, arg_1.a.zyy), 43753i), vec3<i32>(~0i, _wgslsmith_clamp_i32(u_input.b.x, 41043i, arg_1.a.x), arg_1.a.x >> (global0.d.x % 32u))), 4294967295u).xyy, _wgslsmith_f_op_f32(1562f - global0.c), ~(~((global0.d >> (vec4<u32>(global0.d.x, arg_1.d.x, 19090u, 1u) % vec4<u32>(32u))) | abs(vec4<u32>(4294967295u, u_input.c.x, global0.d.x, 38980u)))), global0.b.x);
    let var_0 = Struct_2(select(vec3<bool>(global0.b.x, global0.a.x > _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -14801i), vec2<i32>(u_input.b.x, 2147483647i)), all(arg_1.b)), !vec3<bool>(arg_1.b.x, true, all(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true))), arg_1.b), 1u, vec3<bool>(global0.b.x, !(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, -15112i, u_input.a), arg_1.a.wyz) < max(global0.a.x, -1i)), global0.e | all(vec4<bool>(false, arg_1.e, global0.e, arg_1.b.x))));
    global0 = arg_1;
    global0 = arg_1;
    let var_1 = ~1u;
    return Struct_2(!func_3(var_0, firstTrailingBit(reverseBits(vec3<i32>(19376i, 23671i, 33i))), 3592u).wzz, ~u_input.c.x, vec3<bool>(all(!select(global0.b, global0.b, false)), all(vec2<bool>(true, true)), !select(global0.e, !global0.b.x, true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> f32 {
    global0 = Struct_1(-select(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, global0.a), _wgslsmith_add_vec4_i32(vec4<i32>(-34464i, global0.a.x, -1i, u_input.a), vec4<i32>(global0.a.x, -31359i, u_input.a, 0i))), -reverseBits(global0.a), func_3(Struct_2(vec3<bool>(true, arg_1.c.x, global0.e), 6770u, arg_0.c), vec3<i32>(u_input.a, u_input.b.x, u_input.b.x) & vec3<i32>(7219i, -8478i, -16326i), 4294967295u).x), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(step(-1573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))))), select(select(~global0.d, global0.d << (vec4<u32>(22697u, u_input.c.x, 49240u, arg_0.b) % vec4<u32>(32u)), select(vec4<bool>(true, arg_1.c.x, true, false), vec4<bool>(arg_1.a.x, false, global0.e, arg_0.c.x), arg_0.a.x)), vec4<u32>(global0.d.x, global0.d.x, ~arg_1.b, _wgslsmith_sub_u32(global0.d.x, 1u)), !func_3(arg_0, global0.a.xxx, 4455u)) | ~vec4<u32>(0u, 4294967295u, 4294967295u ^ arg_0.b, abs(0u)), any(!func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(596f, global0.c, global0.c))), Struct_1(global0.a, arg_1.c, global0.c, global0.d, true)).a.xz));
    global0 = Struct_1(-firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, global0.a.x, -2147483647i), vec4<i32>(2147483647i, -2147483647i, -1i, u_input.b.x))), !func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -285f, global0.c)), Struct_1(vec4<i32>(2147483647i, global0.a.x, u_input.b.x, 29879i) | global0.a, func_4(vec3<f32>(global0.c, 215f, global0.c), Struct_1(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 1i), global0.b, 2001f, vec4<u32>(4294967295u, 29739u, global0.d.x, 53581u), true)).a, global0.c, ~vec4<u32>(0u, arg_0.b, 4294967295u, 4294967295u), false)).a, -561f, ~vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x & 1u, u_input.c.x | 4294967295u, abs(108948u)), abs(~u_input.c.x), 0u, 1u), all(vec4<bool>(true, any(vec4<bool>(true, false, true, false)) && true, func_3(Struct_2(arg_1.c, arg_1.b, global0.b), vec3<i32>(u_input.a, u_input.a, u_input.a), ~24324u).x, arg_2)));
    var var_0 = 154f;
    let var_1 = Struct_1(abs(reverseBits(_wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(-13409i, 13568i, global0.a.x, global0.a.x)))), select(vec3<bool>(true, global0.e, !(!arg_1.c.x)), func_3(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(473f, global0.c, global0.c) * vec3<f32>(-1442f, 633f, 639f)), Struct_1(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 15715i), arg_0.a, global0.c, vec4<u32>(arg_0.b, 0u, 45246u, 6135u), arg_1.a.x)), ~(-vec3<i32>(u_input.a, global0.a.x, 57718i)), 28740u).zyz, select(func_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1453f, global0.c, -741f))), Struct_1(vec4<i32>(global0.a.x, -29752i, 11060i, 37338i), vec3<bool>(arg_0.a.x, true, arg_2), -1000f, vec4<u32>(arg_0.b, arg_1.b, 25681u, arg_1.b), global0.b.x)).a.x, all(vec4<bool>(arg_1.c.x, false, true, arg_1.c.x)), false == arg_1.c.x)), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f * global0.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.c))))))), abs(global0.d), !func_4(_wgslsmith_f_op_vec3_f32(func_2(global0.c, countOneBits(vec3<i32>(u_input.a, u_input.b.x, u_input.a)))), Struct_1(-vec4<i32>(-2147483647i, 2147483647i, u_input.a, -35568i), select(vec3<bool>(false, true, true), vec3<bool>(global0.b.x, false, arg_2), arg_0.c), _wgslsmith_f_op_f32(1136f + 115f), global0.d, global0.d.x <= 55346u)).c.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-global0.c), ~vec3<i32>(-2147483647i, 46960i, 1i)))))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - -1377f), _wgslsmith_div_f32(-272f, _wgslsmith_f_op_f32(global0.c * global0.c)), 1f))));
    return var_2.x;
}

fn func_6(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: f32) -> bool {
    global0 = Struct_1(reverseBits(~(~vec4<i32>(global0.a.x, -1712i, -1i, -14851i))), select(!global0.b, global0.b, true), global0.c, reverseBits(~global0.d << (~(~global0.d) % vec4<u32>(32u))), !(!(_wgslsmith_f_op_f32(ceil(-588f)) < _wgslsmith_div_f32(arg_2.x, arg_2.x))));
    var var_0 = global0.d;
    var var_1 = _wgslsmith_clamp_vec3_u32(global0.d.ywz, u_input.c, global0.d.yxx) & ~vec3<u32>(var_0.x, 5471u, 34267u);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -489f);
    let var_3 = vec4<i32>(global0.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-11726i, global0.a.x)), global0.a.zz), -20767i, -_wgslsmith_mod_i32(global0.a.x, _wgslsmith_div_i32(abs(-10347i), ~0i)));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec2<u32> {
    global0 = Struct_1(-firstLeadingBit(-vec4<i32>(u_input.b.x, 1i, u_input.a, u_input.a) ^ vec4<i32>(global0.a.x, 4627i, u_input.b.x, global0.a.x)), select(global0.b, !global0.b, true), _wgslsmith_f_op_f32(step(arg_0.x, -560f)), global0.d, func_6(global0.b.yz, _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(func_2(arg_1.x, global0.a.yxw)), Struct_1(global0.a, global0.b, global0.c, vec4<u32>(4294967295u, global0.d.x, global0.d.x, u_input.c.x), true)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -361f, -654f)), Struct_1(global0.a, vec3<bool>(true, global0.e, global0.e), arg_0.x, global0.d, false)), all(!vec4<bool>(global0.b.x, global0.b.x, global0.b.x, global0.e)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -553f, global0.c))))), global0.c));
    let var_0 = 16880i;
    global0 = Struct_1(vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), global0.a.xx, vec2<i32>(-1i, -2147483647i)), global0.a.yw >> (global0.d.wy % vec2<u32>(32u))), global0.a.x, -12828i), vec3<bool>(global0.b.x, !(!(global0.d.x > 15116u)), !any(select(vec4<bool>(global0.e, global0.e, global0.e, global0.e), vec4<bool>(global0.b.x, false, global0.e, global0.b.x), vec4<bool>(true, true, global0.e, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), vec4<u32>(u_input.c.x, ~(~arg_2.x), ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, 0u), arg_2.x), ~firstLeadingBit(~global0.d.x)), true);
    global0 = Struct_1(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-4331i, global0.a.x, 30433i, 66203i), ~global0.a & (global0.a << (vec4<u32>(global0.d.x, arg_2.x, u_input.c.x, 51311u) % vec4<u32>(32u)))), !(!select(vec3<bool>(false, false, false), vec3<bool>(global0.b.x, global0.e, global0.e), 4294967295u <= u_input.c.x)), _wgslsmith_f_op_f32(func_5(Struct_2(func_4(vec3<f32>(global0.c, 290f, arg_0.x), Struct_1(global0.a, vec3<bool>(false, global0.e, false), -1369f, vec4<u32>(10998u, arg_2.x, 4294967295u, arg_2.x), global0.b.x)).a, 50290u, !global0.b), Struct_2(global0.b, ~_wgslsmith_add_u32(45904u, arg_2.x), vec3<bool>(true, false, !global0.e)), false)), global0.d, true & global0.e);
    var var_1 = any(!(!(!global0.b.yy)));
    return vec2<u32>(u_input.c.x, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.yx;
    let var_1 = select(_wgslsmith_div_vec2_u32(~(~(~u_input.c.zz)), ~func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) * vec2<f32>(-1096f, global0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1852f, global0.c) * vec2<f32>(-1000f, global0.c)), ~u_input.c.xx)), ~vec2<u32>(select(u_input.c.x, ~global0.d.x, all(global0.b)), select(global0.d.x, ~42409u, all(vec2<bool>(false, false)))), global0.b.x);
    global0 = Struct_1(vec4<i32>(min(~u_input.b.x, u_input.a) << (min(87313u, ~global0.d.x) % 32u), abs(_wgslsmith_sub_i32(var_0.x | global0.a.x, 0i)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.b.x, var_0.x, global0.a.x) >> (vec3<u32>(41484u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), _wgslsmith_sub_i32(u_input.b.x, global0.a.x), global0.a.x)), 2147483647i), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, 523f, -469f)))), Struct_1(global0.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f * 311f)), max(vec4<u32>(var_1.x, 17862u, 0u, u_input.c.x), global0.d | global0.d), _wgslsmith_f_op_f32(exp2(global0.c)) != 1000f)).c, global0.c, abs(vec4<u32>(29296u, 1u, var_1.x, global0.d.x & 23928u)), false);
    var_0 = global0.a.xw;
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, _wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(global0.d, global0.d), ~vec4<u32>(var_1.x, u_input.c.x, 32011u, var_1.x)), ~(~vec4<u32>(global0.d.x, 74064u, u_input.c.x, var_1.x)))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, global0.d.x, 1u) & vec3<u32>(44899u, var_1.x, 1u), global0.d.wwz) & (max(vec3<u32>(0u, 12875u, 1u) >> (vec3<u32>(16869u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(0u, 1u, global0.d.x)) | global0.d.zzx));
    var var_3 = _wgslsmith_dot_vec3_i32(global0.a.wxz, _wgslsmith_add_vec3_i32(abs(select(vec3<i32>(1i, global0.a.x, 19460i), global0.a.zwx, true)), firstLeadingBit(~vec3<i32>(u_input.b.x, -40806i, var_0.x)))) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.xxy, max(-global0.a.zzx, _wgslsmith_add_vec3_i32(vec3<i32>(global0.a.x, -72520i, 2147483647i), global0.a.wzz))), vec3<i32>(_wgslsmith_mult_i32(select(-42356i, global0.a.x, false), i32(-1i) * -2147483647i), -var_0.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a.x, -1i, 6968i), vec4<i32>(u_input.b.x, -1i, -59409i, -1i)), ~(-1i)), _wgslsmith_f_op_f32(-global0.c));
}

