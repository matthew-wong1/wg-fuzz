struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    let var_0 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, max(35149u, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(32561u, u_input.a, 36834u, 1u), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), Struct_1(vec4<bool>(true, !(!global0.x), (4294967295u <= u_input.a) || all(global0.xwx), (0i >> (u_input.a % 32u)) != reverseBits(u_input.c)), _wgslsmith_f_op_f32(-arg_1.x), !(true | global0.x)), u_input.d.yzw, abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x & -1i), _wgslsmith_dot_vec2_i32(-u_input.d.wz, ~u_input.d.xw))), Struct_1(!vec4<bool>(global0.x, true, arg_0, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), !(false || !global0.x)));
    global0 = var_0.b.a;
    let var_1 = Struct_1(vec4<bool>(arg_0, !all(select(var_0.e.a.wwy, vec3<bool>(arg_0, global0.x, true), false)), true | (0i == u_input.b), ((u_input.b | u_input.d.x) << (u_input.a % 32u)) == reverseBits(_wgslsmith_sub_i32(var_0.c.x, u_input.b))), 2790f, true);
    global0 = vec4<bool>(!any(vec4<bool>(true, all(vec3<bool>(global0.x, true, true)), !var_1.a.x, !var_0.e.c)), !(_wgslsmith_add_u32(abs(var_0.a), u_input.a) >= 4294967295u), ((_wgslsmith_dot_vec4_u32(vec4<u32>(81024u, 4294967295u, var_0.a, var_0.a), vec4<u32>(var_0.a, var_0.a, 33783u, u_input.a)) ^ 69596u) < u_input.a) | var_1.a.x, false);
    let var_2 = vec2<bool>(true & var_0.b.c, true);
    return firstLeadingBit(~u_input.a);
}

fn func_2(arg_0: u32) -> vec4<bool> {
    global0 = vec4<bool>(true, true, !(!(func_3(global0.x, vec4<f32>(699f, -1000f, -512f, 331f)) != 4294967295u)), global0.x);
    global0 = select(select(!vec4<bool>(global0.x, true, true, true), !(!select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, global0.x))), (true || (global0.x & true)) || true), !vec4<bool>(false, false && !global0.x, global0.x, u_input.b <= (i32(-1i) * -11108i)), global0.x);
    global0 = !vec4<bool>(global0.x, any(select(vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, global0.x), true))), !((2147483647i | u_input.d.x) > 16962i), any(global0.xzx));
    var var_0 = Struct_2(u_input.a, Struct_1(!select(vec4<bool>(true, true, global0.x, true), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, false)), !vec4<bool>(false, global0.x, global0.x, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-881f * 105f) - 536f))), global0.x), u_input.d.zzx, _wgslsmith_div_i32(u_input.c, (_wgslsmith_mult_i32(1812i, u_input.d.x) | (u_input.d.x << (4294967295u % 32u))) << (min(abs(u_input.a), arg_0) % 32u)), Struct_1(vec4<bool>(any(vec2<bool>(global0.x, global0.x)), select(global0.x, global0.x, global0.x), true || all(vec2<bool>(false, global0.x)), all(!vec3<bool>(global0.x, true, global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-140f * 572f) - _wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(591f))))), global0.x));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.e.b, -108f))), 1182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562f * _wgslsmith_f_op_f32(floor(var_0.e.b))) - var_0.b.b))));
    return vec4<bool>(true, all(!select(!vec4<bool>(var_0.b.a.x, true, var_0.b.c, false), var_0.e.a, select(var_0.e.a, vec4<bool>(false, false, false, true), true))), true, any(select(select(select(vec4<bool>(false, false, global0.x, var_0.e.c), vec4<bool>(global0.x, var_0.b.c, true, global0.x), global0.x), vec4<bool>(var_0.b.a.x, false, global0.x, false), var_0.e.a), vec4<bool>(var_0.b.c, var_0.a != u_input.a, true, true), false)));
}

fn func_1() -> Struct_1 {
    global0 = select(vec4<bool>(global0.x, true, !all(vec4<bool>(global0.x, false, global0.x, global0.x)), false), select(!vec4<bool>(false, any(vec4<bool>(false, false, global0.x, global0.x)), true, true), select(select(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, false, global0.x, false), global0.x), func_2(38547u), true), select(!vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, true, true, true), vec4<bool>(true, global0.x, global0.x, false)), !all(global0.yzw)), !(~u_input.d.x < -2147483647i)), func_2(u_input.a).x);
    global0 = select(select(!func_2(~u_input.a), vec4<bool>(1u <= select(0u, u_input.a, false), global0.x & !global0.x, !any(vec4<bool>(true, true, global0.x, global0.x)), false), func_2(~(~133564u))), !func_2(func_3(!global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1242f, 1085f, -353f, 1000f) * vec4<f32>(493f, -1407f, -1403f, 1669f)))), !(!vec4<bool>(any(vec2<bool>(true, global0.x)), global0.x, false, global0.x)));
    var var_0 = 31608i;
    var_0 = countOneBits(~(-(-13166i << (1u % 32u)))) << (u_input.a % 32u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2021f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_1(func_2(u_input.a & 1u), -520f, true);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = all(vec4<bool>(arg_2, true, true, !all(vec3<bool>(true, global0.x, arg_2))));
    global0 = arg_1.a;
    global0 = !vec4<bool>(arg_2 && true, !(!arg_1.a.x), _wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(min(arg_1.b, 670f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.b)), true);
    var var_1 = vec4<i32>(u_input.d.x, 1i, u_input.b, min(~_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -49755i));
    let var_2 = _wgslsmith_add_i32(min(33817i, -((-2147483647i & var_1.x) >> (_wgslsmith_clamp_u32(u_input.a, arg_0, 4294967295u) % 32u))), min(_wgslsmith_dot_vec2_i32(-vec2<i32>(-17379i, var_1.x), u_input.d.wx) << (arg_0 % 32u), 0i));
    return Struct_1(vec4<bool>(true | !(var_0 & true), true, true, true), 888f, any(arg_1.a.zw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(firstLeadingBit(53122u), func_1(), any(global0.xz));
    global0 = !func_4(func_3(any(var_0.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b) + vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b))) | ~31525u, func_4(~u_input.a, func_1(), u_input.a < ~1u), ~countOneBits(u_input.a) >= ~(~u_input.a)).a;
    global0 = var_0.a;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(605f, -1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(123f, var_0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_0.b), vec2<f32>(-1403f, var_0.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(889f, 274f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1000f) * vec2<f32>(var_0.b, var_0.b))))));
    var var_2 = min(0u, u_input.a);
    let var_3 = 435f;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-2147483647i, -2147483647i, -3418i, u_input.d.x)) | (vec4<i32>(-1i) * -vec4<i32>(2147483647i, 101i, -1i, u_input.b)), u_input.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-841f)), 751f, var_0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -1971f, var_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-842f, var_1.x, var_3), vec3<f32>(var_1.x, var_0.b, var_3), var_0.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 306f, -1328f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1758f, 319f, -689f))))), vec4<u32>(u_input.a >> (u_input.a % 32u), u_input.a, 113790u, 1u), ~(~(-1i)));
}

