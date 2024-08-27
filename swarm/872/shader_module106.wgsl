struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-3647i, 2147483647i, -1i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    global0 = reverseBits(_wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, 29063i, arg_2.c), vec3<i32>(global0.x, global0.x, global0.x) >> (vec3<u32>(39102u, arg_0, 19724u) % vec3<u32>(32u))) >> (select(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(u_input.e, arg_0, arg_0)), countOneBits(vec3<u32>(u_input.c, 4355u, 54390u)), arg_2.b.ywz) % vec3<u32>(32u))) >> (countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.d, 29736u, _wgslsmith_clamp_u32(0u, 3180u, 65222u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, arg_0, 1u)), vec3<u32>(1u, 75022u, arg_2.d)))) % vec3<u32>(32u));
    global0 = u_input.d;
    let var_0 = arg_2.d;
    global0 = u_input.d;
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-1i, u_input.a.x), global0.x, _wgslsmith_div_i32(countOneBits(u_input.d.x), _wgslsmith_sub_i32(-2147483647i, global0.x))), ~(abs(vec4<i32>(arg_2.c, arg_2.c, global0.x, arg_2.c)) | vec4<i32>(arg_2.c, 0i, global0.x, -20810i)));
    return !select(all(select(vec3<bool>(arg_1, true, true), !vec3<bool>(false, true, arg_2.b.x), arg_2.b.zyz)), arg_2.b.x, true);
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    global0 = u_input.a;
    let var_0 = Struct_2(arg_1, -279f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1405f, 1961f, 1190f), vec3<f32>(-316f, -1488f, -411f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -410f, -1854f) + vec3<f32>(-1597f, -658f, -1590f)))), vec3<f32>(454f, _wgslsmith_f_op_f32(ceil(-871f)), -1085f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(858f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2021f, _wgslsmith_f_op_f32(f32(-1f) * -530f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(850f)))))));
    var var_1 = var_0.a;
    let var_2 = select(vec2<bool>(arg_1, !(!func_3(arg_0, true, Struct_1(arg_1, vec4<bool>(var_0.a, var_0.a, var_0.a, false), u_input.b, arg_0)))), vec2<bool>(true, true), select(!(!vec2<bool>(true, arg_1)), !select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(var_0.a, false)), ((arg_1 || true) | false) | true));
    var var_3 = u_input.a;
    return !all(vec4<bool>(any(!vec4<bool>(var_0.a, true, var_2.x, true)), true, !(!arg_1), all(select(vec3<bool>(var_2.x, var_0.a, true), vec3<bool>(true, true, false), false))));
}

fn func_1() -> f32 {
    let var_0 = select(!vec3<bool>(true, func_2(u_input.c, true), func_3(u_input.c, any(vec2<bool>(true, true)), Struct_1(false, vec4<bool>(true, false, false, true), 17918i, u_input.c))), select(vec3<bool>(any(vec2<bool>(true, true)), false, true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))), !(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(45650u, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(54846u, u_input.e), vec2<u32>(21179u, u_input.c))) != _wgslsmith_add_u32(4294967295u, u_input.e)));
    var var_1 = 46436i;
    var var_2 = reverseBits(~(~vec3<u32>(reverseBits(21332u), 4294967295u, u_input.e)));
    var var_3 = Struct_2(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-675f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1315f + -820f))))));
    var var_4 = Struct_2(var_3.a, var_3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(371f, _wgslsmith_f_op_f32(abs(455f)), _wgslsmith_f_op_f32(-1034f - var_3.b)) + var_3.c), -1491f);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.c.x) * _wgslsmith_f_op_f32(-var_3.d)), var_4.c.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2433f * _wgslsmith_f_op_f32(trunc(-266f))));
    var var_1 = vec4<bool>(false, var_0, all(select(select(vec4<bool>(false, var_0, true, true), !vec4<bool>(false, var_0, false, var_0), select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, true, false, false), var_0)), !vec4<bool>(var_0, true, var_0, true), false)), true);
    let var_2 = Struct_1(!any(select(vec4<bool>(true, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), false)), select(vec4<bool>(!(global0.x > 2147483647i), true, true, true), select(!select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_0), vec4<bool>(var_1.x, var_1.x, var_0, var_1.x)), !vec4<bool>(false, var_0, false, var_1.x), vec4<bool>(var_0, true, var_1.x, func_3(u_input.c, var_0, Struct_1(var_1.x, vec4<bool>(var_0, var_1.x, var_1.x, false), 9676i, u_input.c)))), 1u < _wgslsmith_mult_u32(5861u, u_input.c)), -26239i, ~max(u_input.e, _wgslsmith_sub_u32(u_input.c, 4294967295u)));
    var_1 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-24637i, -56887i, vec4<i32>(-_wgslsmith_div_i32(u_input.b, 0i), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.d | vec3<i32>(1i, global0.x, -10286i)), _wgslsmith_clamp_i32(~2147483647i, select(-2147483647i, ~var_2.c, var_2.a), (4216i << (var_2.d % 32u)) >> ((u_input.e | 4294967295u) % 32u)), global0.x));
}

