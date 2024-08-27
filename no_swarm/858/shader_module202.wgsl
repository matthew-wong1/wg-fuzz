struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(true, -1i, Struct_4(Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -15119i)), false), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)));

var<private> global1: Struct_2 = Struct_2(vec3<f32>(172f, 294f, -359f), Struct_1(vec2<f32>(-1204f, -425f)), vec2<u32>(4294967295u, 1u), 1u, vec3<u32>(4294967295u, 50457u, 1u));

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, false, false, false, true, true, true, true, true, true, true, true);

var<private> global3: array<u32, 10> = array<u32, 10>(75134u, 0u, 1u, 0u, 33839u, 6608u, 1u, 2816u, 14995u, 82013u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_3(global0.c.a.a);
    var var_1 = global1.b;
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) + _wgslsmith_f_op_f32(step(-1145f, 844f))), all(vec4<bool>(false, false, any(!vec3<bool>(false, global0.a, arg_0.x)), !(!global2[_wgslsmith_index_u32(38896u, 13u)]))), max(~global1.d, _wgslsmith_mod_u32(_wgslsmith_mod_u32(58941u, global1.e.x), 37835u)) < 110554u, _wgslsmith_sub_u32(firstLeadingBit(max(global1.d, global1.c.x)), 1u) <= reverseBits(~(~u_input.b.x)));
    let var_3 = global1.b;
    var var_4 = var_0.a;
    return var_2.xww;
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global1.a);
    let var_1 = _wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(trunc(876f))));
    var var_2 = global0.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_vec3_f32(trunc(var_0)), global2[_wgslsmith_index_u32(~4294967295u, 13u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -1708f, -649f) + var_0) * vec3<f32>(global1.b.a.x, var_0.x, 1000f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 502f, global1.b.a.x)), _wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(477f, -1703f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), var_0.x, _wgslsmith_f_op_f32(sign(1064f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 * global1.a) + vec3<f32>(-1614f, var_0.x, global1.b.a.x))) + var_0), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], arg_0.a, false), true), func_3(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 13u)])), global0.a), vec3<bool>(any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(27578u, 13u)], true)), true, !global2[_wgslsmith_index_u32(global1.c.x, 13u)]), select(!vec3<bool>(true, true, arg_0.a), select(vec3<bool>(false, true, global0.a), vec3<bool>(true, global0.a, true), global2[_wgslsmith_index_u32(global1.d, 13u)]), vec3<bool>(global0.a, true, global0.a)))));
    global0 = Struct_5(global0.c.b, u_input.a, Struct_4(Struct_3(arg_0.d.a), global0.c.b), arg_0.c.a);
    return u_input.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    var var_0 = global1.a;
    var var_1 = _wgslsmith_sub_i32(61642i, global0.d.a.x);
    var var_2 = Struct_5(!func_3(select(!vec2<bool>(true, arg_2.b), select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), arg_2.b), global2[_wgslsmith_index_u32(1u, 13u)])).x, _wgslsmith_div_i32(-44093i, ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(-56972i, 0i, 2147483647i), vec3<i32>(global0.c.a.a.x, 11734i, 0i)), vec3<i32>(15736i, u_input.a, arg_3))), Struct_4(Struct_3(global0.c.a.a), !(false & any(vec4<bool>(global2[_wgslsmith_index_u32(32981u, 13u)], true, true, global0.a)))), Struct_3(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, 45906i, arg_3)), global0.d.a), vec3<i32>(global0.d.a.x ^ 16647i, min(-27958i, 1i), -global0.d.a.x))));
    let var_3 = vec3<i32>(firstLeadingBit(-abs(-arg_3)), _wgslsmith_add_i32(countOneBits(0i), min(_wgslsmith_clamp_i32(u_input.a, global0.d.a.x, global0.d.a.x) << ((79468u << (arg_0.x % 32u)) % 32u), -(u_input.a | arg_3))), var_2.c.a.a.x);
    var_2 = Struct_5(false, arg_2.a.a.x, global0.c, Struct_3(~countOneBits(global0.c.a.a & var_2.c.a.a)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.b.a, vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 417f), _wgslsmith_f_op_f32(min(1565f, var_0.x))), !(arg_1.x > -107f)))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    global3 = array<u32, 10>();
    let var_0 = !select(select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(global1.e.x, 13u)], global0.a), vec2<bool>(global0.a, false), !vec2<bool>(false, global2[_wgslsmith_index_u32(43885u, 13u)])), true), !(!select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), vec2<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)]))), global0.a);
    var var_1 = func_4(max(vec4<u32>(~global3[_wgslsmith_index_u32(func_2(Struct_5(global0.a, 1i, global0.c, global0.c.a), 18838u), 10u)], global3[_wgslsmith_index_u32(~1u, 10u)], global1.e.x, countOneBits(51036u)), ~(vec4<u32>(global3[_wgslsmith_index_u32(1u, 10u)], 1u, 22162u, u_input.b.x) ^ ~vec4<u32>(1u, 15507u, 61047u, global1.c.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.b.a.x, global1.a.x, 1310f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1706f, global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1621f, global1.b.a.x, global1.b.a.x, global1.b.a.x), vec4<f32>(global1.a.x, global1.b.a.x, global1.a.x, 1713f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -156f, global1.b.a.x, -597f) * vec4<f32>(-1000f, -214f, 622f, -2098f))))))), Struct_4(Struct_3(-vec3<i32>(-2147483647i, arg_0.x, arg_0.x)), global0.a), -_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, arg_0.x), _wgslsmith_dot_vec2_i32(global0.c.a.a.zz, vec2<i32>(-22822i, -1i))));
    global2 = array<bool, 13>();
    var var_2 = func_4(vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_add_u32(0u, u_input.c)), 60591u, ~global1.c.x), 1u, ~(~(~12907u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(u_input.b.x), global1.c.x), max(abs(global3[_wgslsmith_index_u32(8460u, 10u)]), ~global3[_wgslsmith_index_u32(u_input.c, 10u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.a.x, -643f, var_1.a.x)))))), Struct_4(Struct_3(global0.c.a.a), true), select(firstTrailingBit(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), global0.d.a.zz))), i32(-1i) * -47191i, all(select(vec2<bool>(global0.a, global0.a), !var_0, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c.x, 1u, u_input.b.x), 13u)])))).a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1082f)) * _wgslsmith_f_op_f32(abs(-848f))), -783f)), 114f) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), func_4(~(~vec4<u32>(1u, 4294967295u, global3[_wgslsmith_index_u32(1u, 10u)], global1.d)), vec4<f32>(-313f, -150f, _wgslsmith_f_op_f32(var_1.a.x - -861f), global1.b.a.x), Struct_4(global0.c.a, all(var_0)), ~(~arg_0.x)).a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, var_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -103f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(17967i, -10525i), _wgslsmith_sub_i32(u_input.a, u_input.a), -global0.d.a.x), ~countOneBits(global0.c.a.a)))));
    let var_1 = ~select(~countOneBits(vec4<u32>(66395u, 4294967295u, global3[_wgslsmith_index_u32(17336u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)])), ~max(vec4<u32>(88481u, 0u, u_input.c, 34483u), vec4<u32>(global3[_wgslsmith_index_u32(3703u, 10u)], 135210u, u_input.c, u_input.b.x)), vec4<bool>(false, u_input.a == firstTrailingBit(global0.b), func_3(select(vec2<bool>(global0.a, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], true), true)).x, true));
    let var_2 = global1.b;
    global2 = array<bool, 13>();
    let var_3 = any(!func_3(!(!vec2<bool>(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 13u)]))).zx);
    var var_4 = vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-34528i << (u_input.c % 32u), _wgslsmith_mult_i32(-28787i, -1i), 2501i), -global0.d.a), -_wgslsmith_mod_i32(global0.d.a.x, abs(reverseBits(global0.b))), 1i, ~3781i);
    var var_5 = abs(select(~max(vec2<u32>(global1.c.x, 0u), vec2<u32>(global3[_wgslsmith_index_u32(34615u, 10u)], 1u)), max(var_1.xz, vec2<u32>(11035u, global1.d)) << (global1.c % vec2<u32>(32u)), !(!vec2<bool>(global0.c.b, var_3)))) & ~vec2<u32>(~var_1.x, _wgslsmith_mod_u32(1u, 1u));
    global3 = array<u32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, abs(global0.d.a.xy), -1364f);
}

