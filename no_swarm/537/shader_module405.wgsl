struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(375f, -1129f, 1124f, -666f);

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(1088f, -614f, -610f), vec3<f32>(372f, 2261f, 446f), vec3<f32>(-1547f, -559f, 1088f), vec3<f32>(691f, 132f, -650f), vec3<f32>(2188f, -510f, 285f), vec3<f32>(-504f, -638f, -1041f), vec3<f32>(197f, 473f, -1000f), vec3<f32>(879f, 1168f, 1164f), vec3<f32>(-298f, 146f, -1000f), vec3<f32>(-358f, -657f, -388f), vec3<f32>(1000f, 798f, -402f), vec3<f32>(390f, 354f, 2022f), vec3<f32>(1170f, 519f, -380f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(0u, 13u)] + global1[_wgslsmith_index_u32(u_input.c.x, 13u)])))) * vec3<f32>(_wgslsmith_f_op_f32(step(-988f, _wgslsmith_f_op_f32(f32(-1f) * -810f))), _wgslsmith_f_op_f32(-1008f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1844f)))));
    let var_1 = _wgslsmith_div_vec3_i32(-(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 39532i, -39711i), vec3<i32>(0i, 81561i, -34555i), vec3<i32>(-12603i, 2147483647i, 2147483647i)) >> (~vec3<u32>(37039u, 1u, u_input.c.x) % vec3<u32>(32u))) & ((vec3<i32>(0i, 71225i, -2147483647i) >> (~vec3<u32>(16141u, 32362u, u_input.b) % vec3<u32>(32u))) | max(vec3<i32>(1i, 1i, 1i), -vec3<i32>(0i, -2147483647i, -40880i))), vec3<i32>(-abs(min(-2147483647i, 11452i)), 1i, 2147483647i));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1543f, var_0.x, -1097f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(108347u, u_input.b), u_input.c.yy), 13u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, 370f, 201f))))) * global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 17909u, 4294967295u))), 13u)]))));
    var var_2 = Struct_1(var_1.x, global0.x);
    var_2 = Struct_1(-countOneBits(-18086i & var_1.x) & -select(var_2.a ^ 0i, 79997i, true), _wgslsmith_f_op_f32(-1f));
    return -538f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(arg_3.a.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - global0.x))));
    return select(select(_wgslsmith_add_vec2_u32(firstTrailingBit(~u_input.c.xy), vec2<u32>(_wgslsmith_mult_u32(31320u, u_input.c.x), ~u_input.a)), select(u_input.c.yz, u_input.c.zz, arg_1.b.xx), arg_1.a), reverseBits(abs(vec2<u32>(u_input.c.x, u_input.a & 63311u))), !any(!vec3<bool>(arg_1.b.x, arg_3.b, true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1826f, global0.x, _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, global0.x, 195f)))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(23707u, 13u)] * global0.zyw)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -936f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-3006f)) - _wgslsmith_f_op_f32(global0.x * 1965f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))))));
    let var_1 = ~_wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(1u, u_input.c.x));
    let var_2 = abs(abs(~abs(~vec2<i32>(6988i, 24643i))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)), global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -884f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(592f * 459f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -925f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-var_0.x), true)))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 871f, _wgslsmith_f_op_f32(391f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -707f, global0.x, var_0.x) - vec4<f32>(global0.x, global0.x, global0.x, -516f))))), !(!select(arg_1, vec4<bool>(arg_1.x, false, false, arg_1.x), arg_1.x))));
    return _wgslsmith_dot_vec2_u32(~arg_0, arg_0 ^ ~abs(min(arg_0, u_input.c.zz)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = vec3<bool>(arg_1, true, arg_0);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.xxy));
    let var_2 = select(func_4(_wgslsmith_mod_vec2_u32(u_input.c.xy, func_2(vec4<f32>(1114f, 724f, var_1.x, 853f), Struct_4(vec2<bool>(true, arg_2.b.x), arg_2.b), global1[_wgslsmith_index_u32(u_input.a, 13u)], Struct_2(vec3<i32>(2147483647i, 2147483647i, 52515i), false, -95984i, Struct_1(2147483647i, var_1.x)))), vec4<bool>(all(vec2<bool>(arg_0, false)), arg_1, !arg_2.a.x, !arg_1)), u_input.c.x, all(vec4<bool>(!arg_2.b.x, arg_0, all(vec2<bool>(arg_1, false)), false))) | _wgslsmith_add_u32(58777u, abs(reverseBits(0u)));
    let var_3 = false;
    var_0 = vec3<bool>(any(vec4<bool>(any(arg_2.b), arg_1 && false, false, true)), false, !(all(vec2<bool>(true, true)) != false));
    return !arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(0i, -22679i, -48437i), -2147483647i));
    let var_1 = Struct_4(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, false))), func_1(true, true, Struct_4(vec2<bool>(true, 1u < u_input.c.x), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, global0.x, 379f, -697f)))), vec4<f32>(1000f, global0.x, _wgslsmith_div_f32(-1005f, -2121f), _wgslsmith_f_op_f32(-global0.x))))) - vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), 459f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-166f - -274f)), global0.x, false)), -645f));
    var_0 = -abs(firstLeadingBit(~abs(-6860i)));
    let var_3 = !any(select(var_1.b.xz, func_1(true, true, Struct_4(var_1.b.yz, var_1.b)).xz, var_1.b.zy));
    let var_4 = Struct_3(false, Struct_1(-1i, _wgslsmith_f_op_f32(-513f - 1f)));
    var var_5 = Struct_2(~(vec3<i32>(var_4.b.a, _wgslsmith_sub_i32(8829i, 0i), var_4.b.a) | ~vec3<i32>(var_4.b.a, var_4.b.a, 1i)), true, _wgslsmith_mult_i32(-2149i, 0i), Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x))))));
    var var_6 = var_5.a.yy & -select(-var_5.a.yy, vec2<i32>(~18249i, 1i), vec2<bool>(false, var_3));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(72256u, 13u)], var_2.wxy)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b, 13u)])))), global0.xxw, var_5.b)), min(~_wgslsmith_mod_vec4_u32(vec4<u32>(79148u, 30987u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 46135u, u_input.b, 1u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.a, u_input.b), vec4<u32>(u_input.c.x, 23451u, 1u, 0u)), reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a)))) | select(vec4<u32>(u_input.b, 10311u, 0u ^ u_input.c.x, ~0u), vec4<u32>(1u, u_input.a, u_input.a, 0u), vec4<bool>(true, var_4.a, any(var_1.b.xy), var_5.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(771f * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(trunc(660f))), var_5.d.b, _wgslsmith_f_op_f32(max(-684f, _wgslsmith_f_op_f32(f32(-1f) * -307f))))));
}

