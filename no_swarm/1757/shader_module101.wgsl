struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: array<f32, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: i32) -> bool {
    var var_0 = Struct_2((min(u_input.c, _wgslsmith_clamp_i32(arg_2, 23167i, -1i)) << (select(_wgslsmith_mult_u32(22935u, arg_1.x), 13994u, any(vec3<bool>(true, true, true))) % 32u)) ^ (arg_2 >> (_wgslsmith_dot_vec4_u32(select(u_input.a, vec4<u32>(57867u, 34272u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1.x), true), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(6661u, 4294967295u, global0[_wgslsmith_index_u32(0u, 19u)], u_input.a.x))) % 32u)), arg_1, 1i, Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true)), u_input.a, u_input.a.x, vec2<bool>(!any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(1501f - arg_0.a) > global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 9u)])), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), vec3<bool>(all(vec2<bool>(true, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !any(vec4<bool>(false, true, true, false)))));
    global0 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(49240u, 19u)], var_0.b.x), 9u)], _wgslsmith_f_op_f32(min(arg_0.a, global1[_wgslsmith_index_u32(50223u, 9u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.x, 9u)], arg_0.a))), global0[_wgslsmith_index_u32(~(u_input.a.x | 10001u), 19u)] < ~(~u_input.a.x)))));
    global0 = array<u32, 19>();
    let var_2 = var_0.d.a;
    return -u_input.c < min(var_0.c, _wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, ~arg_2), -2147483647i >> (countOneBits(arg_1.x) % 32u)));
}

fn func_2() -> Struct_4 {
    let var_0 = false;
    let var_1 = Struct_1(vec4<bool>(~u_input.c != -2147483647i, var_0, func_3(Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(29933u, 17608u), 9u)]), u_input.a.xyz, -u_input.c), !func_3(Struct_4(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 9u)]), vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30521u, 19u)], 19u)]), -2147483647i << (u_input.a.x % 32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_clamp_u32(0u, 3442u, 33397u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11751u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)] % 32u), 19u)], 19u)]), u_input.a), _wgslsmith_mod_u32(abs(~9249u), global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(vec2<bool>(any(select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), vec2<bool>(false, var_0))), all(vec2<bool>(false, false))), vec2<bool>(true, select(true, true, true)), vec2<bool>(!var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(70424u, 2999u), u_input.a.zz) <= 26401u)));
    var var_2 = select(u_input.b, ~min(-u_input.c, u_input.b), true);
    global0 = array<u32, 19>();
    global1 = array<f32, 9>();
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -107f));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    global0 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 2930u) >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], u_input.a.x) % 32u)), 9u)], arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a))));
    var var_1 = Struct_3(Struct_2(1i, ~(u_input.a.wyx & (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5830u, 19u)], 19u)], u_input.a.x, 21387u) & vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), ~8215i, Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~vec4<u32>(global0[_wgslsmith_index_u32(19356u, 19u)], 1u, 4768u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)]), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(50362u, 19u)], u_input.a.x, u_input.a.x))), 20325u, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec3<bool>(false, true, false)), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), true), vec4<u32>(1u, firstTrailingBit(0u), 25025u, u_input.a.x), 1u, vec2<bool>(false, all(vec2<bool>(true, false)))));
    return var_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> vec3<bool> {
    var var_0 = -2147483647i;
    var var_1 = func_4(Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(724f)))))))).d;
    var var_2 = !(false && arg_1.x);
    global1 = array<f32, 9>();
    var_0 = 0i;
    return vec3<bool>(!arg_0.a.x, !((~arg_0.c < _wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.a.ww)) & all(select(arg_0.a.yzx, arg_0.a.yxy, vec3<bool>(arg_1.x, false, arg_1.x)))), false);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = vec2<bool>(false, !any(vec2<bool>(!arg_3.d.d.x, arg_0.b.a.x & arg_0.a.d.d.x)));
    let var_1 = global0[_wgslsmith_index_u32(~(~((firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.x, 19u)]) << (_wgslsmith_mult_u32(0u, 4294967295u) % 32u)) & select(_wgslsmith_add_u32(1u, arg_1.x), global0[_wgslsmith_index_u32(0u, 19u)], true))), 19u)];
    let var_2 = all(select(func_5(func_4(func_2()), !(!arg_0.a.e.xy), arg_0.a.e.x), arg_3.e, vec3<bool>(!var_0.x, arg_3.d.a.x, !(!arg_3.d.d.x))));
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a.x) | arg_3.b.xy, ~vec2<u32>(firstLeadingBit(u_input.a.x), arg_1.x));
    var var_4 = arg_0;
    return abs(-vec2<i32>(firstLeadingBit(20011i), ~arg_2)) >> (~u_input.a.yz % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -max(-35764i, -1i)), select(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 229i) & vec2<i32>(217i, u_input.b), ~vec2<i32>(-2147483647i, 2147483647i)), _wgslsmith_sub_vec2_i32(func_1(Struct_3(Struct_2(-2147483647i, u_input.a.wzy, 32207i, Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 19u)], u_input.a.x), 4294967295u, vec2<bool>(false, true)), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, false, true, false), vec4<u32>(60178u, 4294967295u, 0u, 4294967295u), 8639u, vec2<bool>(true, false))), u_input.a, 2147483647i, Struct_2(9654i, u_input.a.zyy, -1i, Struct_1(vec4<bool>(false, true, true, false), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 1u, global0[_wgslsmith_index_u32(28136u, 19u)], u_input.a.x), 66841u, vec2<bool>(true, true)), vec3<bool>(false, false, false))), -vec2<i32>(1i, u_input.c))), firstLeadingBit(abs(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1290i, u_input.b), vec2<bool>(true, false)))), !(!func_5(Struct_1(vec4<bool>(true, false, false, true), u_input.a, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], vec2<bool>(true, true)), vec2<bool>(true, true), false).x)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_clamp_i32(0i, var_0.x, var_0.x), u_input.a.zxx, _wgslsmith_div_i32(firstTrailingBit(0i), ~(-2147483647i)), func_4(func_2()), vec3<bool>(false, true, false)), func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f * global1[_wgslsmith_index_u32(0u, 9u)])))));
    let var_2 = var_1.a;
    let var_3 = Struct_1(var_2.d.a, min(vec4<u32>(~10448u ^ u_input.a.x, ~func_4(Struct_4(global1[_wgslsmith_index_u32(66295u, 9u)])).c, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_2.d.c, 19u)] << (var_2.b.x % 32u), global0[_wgslsmith_index_u32(~u_input.a.x, 19u)]), countOneBits(abs(var_2.b.x))), vec4<u32>(_wgslsmith_div_u32(23480u, 4294967295u), _wgslsmith_clamp_u32(~var_1.a.d.b.x, _wgslsmith_sub_u32(var_1.b.c, 4294967295u), _wgslsmith_dot_vec2_u32(var_1.a.b.zz, vec2<u32>(var_1.a.d.b.x, 30484u))), var_2.b.x, ~(4294967295u >> (var_1.b.b.x % 32u)))), 23238u, var_1.b.d);
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c, u_input.c), vec2<i32>(var_2.c, var_0.x), vec2<i32>(-2147483647i, var_1.a.a))), select((vec2<i32>(var_2.a, var_0.x) << (var_2.b.xy % vec2<u32>(32u))) >> (u_input.a.xy % vec2<u32>(32u)), vec2<i32>(1i, 1i), true)), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.b.wy, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(52282u, global0[_wgslsmith_index_u32(74571u, 19u)]), vec2<u32>(var_1.a.b.x, global0[_wgslsmith_index_u32(var_2.b.x, 19u)])), u_input.a.yz)), abs(~u_input.a.yw)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 88934u) >> ((u_input.a.x ^ 32024u) % 32u), 23742u), ~var_1.a.d.b.yy), vec2<i32>(-var_1.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, 2147483647i, _wgslsmith_clamp_i32(340i, var_0.x, var_0.x), 16489i), vec4<i32>(countOneBits(u_input.c), var_1.a.c, var_0.x >> (20813u % 32u), 14964i))));
}

