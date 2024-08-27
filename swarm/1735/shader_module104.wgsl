struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(564f, -682f, -536f, 582f, -1000f, -417f, 1397f, -715f, -226f, 1464f, -982f, 1378f, 742f, 833f, -495f, -771f, 827f, -205f, -124f, -1034f, -1256f, -313f, 1248f, 521f, -239f, 345f, 1026f, 450f, 255f);

var<private> global1: i32 = 1i;

var<private> global2: vec3<f32> = vec3<f32>(1559f, -821f, -767f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec2<bool>(all(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), any(vec2<bool>(false, false)))), all(vec2<bool>(any(vec4<bool>(true, true, false, true)), true)) != !(_wgslsmith_div_u32(u_input.d.x, u_input.c.x) < 22639u));
    global0 = array<f32, 29>();
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_div_f32(-1992f, _wgslsmith_f_op_f32(f32(-1f) * -1308f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)) + -261f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1702f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2001f)))), global0[_wgslsmith_index_u32(u_input.c.x, 29u)], Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(446f, 1211f, global0[_wgslsmith_index_u32(0u, 29u)], global2.x), vec4<f32>(global2.x, 191f, 305f, global0[_wgslsmith_index_u32(u_input.a, 29u)])))))), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.d.x), u_input.d), 29u)]))), -7472i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(198f, 1237f, global0[_wgslsmith_index_u32(u_input.d.x, 29u)], 1112f) + vec4<f32>(258f, 1570f, -1957f, global2.x)))), _wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1145f, -832f))))));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 22346u, u_input.c.x), vec3<u32>(u_input.d.x, 4294967295u, 1u)), ~vec3<u32>(58773u, 4294967295u, u_input.a)), ~countOneBits(vec3<u32>(20414u, 27657u, 3819u))), ~abs(countOneBits(vec3<u32>(66492u, 1u, 4294967295u)))) << (_wgslsmith_add_u32(33788u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.d.zw))) % 32u);
    var var_3 = ~(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(7805i, -43732i), vec2<i32>(var_1.d, var_1.d))), (vec2<i32>(6137i, -2147483647i) >> (vec2<u32>(u_input.d.x, 21147u) % vec2<u32>(32u))) & abs(vec2<i32>(0i, -23336i)), abs(select(vec2<i32>(0i, 1i), vec2<i32>(38589i, var_1.d), var_0.x))));
    return select(select(!var_0, var_0, var_0.x), var_0, var_0.x);
}

fn func_2() -> bool {
    let var_0 = vec3<bool>(!(!(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.c.x, 29u)])) > global0[_wgslsmith_index_u32(u_input.a, 29u)])), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true))) & true, all(!func_3()));
    let var_1 = global2.x;
    global0 = array<f32, 29>();
    let var_2 = any(select(select(!(!vec2<bool>(var_0.x, var_0.x)), var_0.xz, !(!var_0.yz)), !vec2<bool>(all(vec3<bool>(true, var_0.x, true)), true), false));
    var var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-u_input.b, 25363i), -min(vec2<i32>(-u_input.b, _wgslsmith_mult_i32(319i, 1i)), vec2<i32>(u_input.b, -8216i | u_input.b)), abs(~(select(vec2<i32>(-3429i, 0i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(true, true)) & vec2<i32>(1i, 10153i))));
    return all(select(select(select(select(vec4<bool>(var_2, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false)), vec4<bool>(var_2, true, true, var_2), var_2), select(vec4<bool>(var_0.x, var_0.x, true, var_2), select(vec4<bool>(var_2, var_0.x, false, false), vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(true, true, var_0.x, var_2), vec4<bool>(var_2, false, var_2, false), var_0.x)), var_2), vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, true)) || (var_0.x && true), true, true, var_0.x), vec4<bool>(false, (59703i > u_input.b) & true, true, var_0.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_5 {
    var var_0 = select(select(select(select(select(vec4<bool>(arg_1.b, arg_3.x, false, arg_3.x), vec4<bool>(arg_1.b, true, arg_3.x, true), arg_1.b), !vec4<bool>(arg_3.x, false, false, arg_1.b), select(vec4<bool>(arg_3.x, true, arg_1.b, arg_3.x), vec4<bool>(false, arg_1.b, arg_1.b, arg_3.x), false)), vec4<bool>(!arg_3.x, true, u_input.b <= u_input.b, arg_3.x), arg_1.b), !vec4<bool>(all(vec2<bool>(false, arg_3.x)), arg_1.b, arg_3.x || arg_1.b, arg_3.x), true), vec4<bool>(true, false, arg_1.b, all(!select(vec4<bool>(false, arg_3.x, arg_1.b, true), vec4<bool>(arg_1.b, false, arg_1.b, true), vec4<bool>(false, false, arg_1.b, true)))), vec4<bool>(false, arg_3.x, true, ~(~arg_0) < ~1u));
    let var_1 = Struct_4(func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(954f, 709f, 1000f, -933f) * arg_1.a.a), 279f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 743f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.a.x, arg_1.a.b))), arg_1.a, Struct_1(vec4<f32>(1f, 1f, _wgslsmith_f_op_f32(max(-1832f, arg_1.a.a.x)), _wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_f_op_f32(select(716f, _wgslsmith_f_op_f32(min(arg_1.a.a.x, 514f)), false)))));
    global1 = i32(-1i) * -5450i;
    var_0 = !vec4<bool>(arg_3.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(90881u, 29u)]) - -1128f) > _wgslsmith_f_op_f32(min(-1000f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, arg_0), vec3<u32>(1u, 0u, 5755u)), 29u)])), select(arg_1.b, arg_1.b, all(arg_3.xy)));
    let var_2 = vec2<bool>(true | func_3().x, _wgslsmith_add_i32(~(~u_input.b), max(u_input.b, u_input.b) >> (48760u % 32u)) > u_input.b);
    return Struct_5(arg_1.a, true);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_sub_u32(47812u, u_input.c.x) & u_input.a, Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(965f, 610f, global2.x, 1164f))) - arg_0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 29u)])), func_2()), u_input.d, vec3<bool>(true, ~1u < (54415u | (u_input.a | u_input.c.x)), true));
    global0 = array<f32, 29>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, 1000f, 472f), vec4<f32>(337f, -1000f, global0[_wgslsmith_index_u32(12839u, 29u)], var_0.a.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b * arg_0.x)), var_0.a.a.x, !func_2()))), global2.xz, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], -507f, global0[_wgslsmith_index_u32(u_input.d.x, 29u)], 1477f))), 562f), var_0.a);
    global0 = array<f32, 29>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + global0[_wgslsmith_index_u32(18179u >> (u_input.d.x % 32u), 29u)])) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b))), _wgslsmith_f_op_f32(f32(-1f) * -1685f));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(vec4<f32>(-504f, _wgslsmith_f_op_f32(-1242f - 1482f), 106f, 1760f)), any(select(vec2<bool>(true, func_3().x), func_3(), vec2<bool>(true, true))));
    let var_1 = u_input.a;
    let var_2 = func_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a.a)));
    var var_3 = select(select(vec4<bool>(true, select(select(false, true, false), all(vec4<bool>(true, true, false, true)), true), !(!var_0.b), false), vec4<bool>(!(true & var_0.b), select(false, true, var_0.b), true, var_0.b && var_0.b), vec4<bool>(true, var_0.b, !(!var_0.b), var_0.b)), !(!select(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(false, false, var_0.b, var_0.b), true), !vec4<bool>(true, var_0.b, var_0.b, false), !var_0.b)), select(vec4<bool>(var_0.b, !all(vec3<bool>(var_0.b, true, false)), 13805u <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(var_1, u_input.c.x)), func_3().x), select(!(!vec4<bool>(true, var_0.b, true, true)), vec4<bool>(var_0.b, var_0.b, !var_0.b, !var_0.b), select(select(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(false, var_0.b, true, var_0.b), true), !vec4<bool>(true, true, true, var_0.b), var_0.b)), select(!select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(var_0.b, true, false, var_0.b), var_0.b), !select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), vec4<bool>(true, var_0.b, true, true)), true)));
    var_3 = !vec4<bool>(any(select(select(vec4<bool>(true, var_0.b, var_3.x, var_0.b), vec4<bool>(var_0.b, var_3.x, false, var_3.x), false), select(vec4<bool>(var_3.x, var_0.b, var_3.x, true), vec4<bool>(false, var_0.b, true, true), vec4<bool>(var_3.x, var_3.x, var_3.x, false)), select(vec4<bool>(var_0.b, true, true, true), vec4<bool>(false, false, var_0.b, false), var_3.x))), func_2(), all(var_3.yzy), any(select(select(vec4<bool>(var_3.x, false, true, var_0.b), vec4<bool>(var_3.x, var_3.x, true, var_3.x), var_3.x), vec4<bool>(var_0.b, false, true, true), var_3.x)));
    let var_4 = Struct_4(true, Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a))), vec2<f32>(var_0.a.a.x, 387f), var_0.a, Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(36999u & (var_1 ^ 15138u)), 29u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a.zx * var_2.a.zx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.a.yz)) + var_0.a.a.zw)) * var_2.a.wz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f * var_0.a.b) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_4.b.b.x, var_0.a.b)))) * _wgslsmith_f_op_f32(-var_4.b.c.b)));
}

