struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1000f, -1000f, -613f), vec3<f32>(623f, 897f, -307f), vec3<f32>(-654f, 817f, -289f), vec3<f32>(985f, -1000f, -243f), vec3<f32>(1531f, -405f, -179f), vec3<f32>(242f, -677f, 680f), vec3<f32>(1301f, -1501f, 1029f), vec3<f32>(-1462f, -1551f, -248f), vec3<f32>(227f, 119f, -886f), vec3<f32>(-826f, -1232f, 3055f), vec3<f32>(-228f, -322f, -318f), vec3<f32>(-117f, 1651f, 1287f), vec3<f32>(-1465f, 230f, -1156f), vec3<f32>(-214f, 916f, 936f));

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    return _wgslsmith_mod_u32(arg_0.b, u_input.d);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global1 = vec4<bool>(false, all(global2[_wgslsmith_index_u32(func_3(Struct_2(!vec2<bool>(false, global1.x), ~1u, Struct_1(u_input.b, 245f, vec4<u32>(35084u, 1u, u_input.d, 9479u), vec3<u32>(4294967295u, u_input.d, 6985u)))), 30u)]), !(!all(vec4<bool>(false, false, false, global1.x))), global1.x);
    global1 = vec4<bool>(true, false, true || all(vec3<bool>(true, true, !global1.x)), global1.x);
    global1 = !global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 4294967295u), 30u)];
    var var_0 = global1.xxz;
    let var_1 = vec4<bool>(var_0.x, any(global2[_wgslsmith_index_u32(18490u | _wgslsmith_mult_u32(arg_0.x, arg_0.x >> (16662u % 32u)), 30u)]), !(arg_0.x == 16553u), global1.x);
    return Struct_2(select(select(var_0.yx, !(!vec2<bool>(global1.x, true)), vec2<bool>(true, any(var_1))), vec2<bool>(var_1.x, true), any(select(select(vec4<bool>(var_0.x, true, false, true), var_1, vec4<bool>(false, false, true, false)), vec4<bool>(true, var_0.x, true, global1.x), any(var_1.yxx)))), u_input.d, Struct_1(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-9515i, u_input.c), vec2<i32>(2147483647i, 0i)), _wgslsmith_div_f32(1221f, -299f), vec4<u32>(u_input.d, ~u_input.d, u_input.d, max(1u, 0u)), ~(~max(vec3<u32>(u_input.d, u_input.d, 38399u), vec3<u32>(1u, arg_0.x, u_input.d)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = !global1.x;
    return func_2(arg_1.d.zy);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_3 {
    global0 = array<vec3<f32>, 14>();
    global1 = select(select(arg_2, global2[_wgslsmith_index_u32(firstLeadingBit(~arg_1.b), 30u)], vec4<bool>(func_1(func_1(Struct_1(-1561i, arg_0.c.b, vec4<u32>(u_input.d, arg_0.c.d.x, 1u, arg_0.c.c.x), arg_0.c.c.wwz), Struct_1(u_input.e.x, arg_1.c.b, vec4<u32>(arg_0.b, arg_1.c.d.x, 1u, arg_0.c.d.x), arg_1.c.d)).c, func_1(arg_0.c, Struct_1(arg_1.c.a, -608f, arg_1.c.c, arg_1.c.c.wxx)).c).a.x, all(!arg_2.ywz), true, any(vec3<bool>(true, arg_0.a.x, arg_1.a.x)))), vec4<bool>(false && any(select(vec3<bool>(arg_1.a.x, global1.x, false), arg_2.yzy, arg_2.x)), arg_1.a.x, arg_2.x, func_1(func_1(Struct_1(arg_1.c.a, arg_0.c.b, vec4<u32>(1u, 2932u, arg_0.c.d.x, arg_1.c.c.x), arg_0.c.c.xyy), arg_1.c).c, arg_1.c).a.x), (arg_2.x | (_wgslsmith_f_op_f32(-1588f + -1523f) == _wgslsmith_f_op_f32(arg_0.c.b - arg_0.c.b))) & all(vec3<bool>(any(arg_0.a), true, true)));
    return Struct_3(arg_1.c.b);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    return func_1(Struct_1(_wgslsmith_mod_i32(-countOneBits(u_input.e.x), u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-890f))), ~firstTrailingBit(func_1(Struct_1(u_input.a.x, 120f, vec4<u32>(u_input.d, u_input.d, u_input.d, 1u), vec3<u32>(u_input.d, 1u, 4294967295u)), Struct_1(1i, arg_0.a, vec4<u32>(u_input.d, 1u, u_input.d, 1u), vec3<u32>(u_input.d, u_input.d, 1236u))).c.c), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)))), Struct_1(_wgslsmith_add_i32(~(-u_input.c), _wgslsmith_sub_i32(~u_input.b, max(u_input.b, u_input.b))), arg_1, vec4<u32>(1u, u_input.d, 0u, u_input.d), ~func_1(Struct_1(u_input.e.x, -1657f, vec4<u32>(44691u, 19883u, u_input.d, u_input.d), vec3<u32>(15961u, 4294967295u, 4160u)), func_1(Struct_1(u_input.e.x, 802f, vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d)), Struct_1(2725i, arg_2.a, vec4<u32>(u_input.d, 28932u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 1u))).c).c.d)).c;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global2 = array<vec4<bool>, 30>();
    var var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(func_5(func_4(func_1(Struct_1(arg_0.a, 152f, vec4<u32>(0u, 1u, 16673u, 4294967295u), arg_0.d), Struct_1(arg_0.a, arg_0.b, vec4<u32>(arg_0.d.x, 80535u, 1u, 78062u), vec3<u32>(u_input.d, u_input.d, 0u))), Struct_2(global1.yy, u_input.d, arg_0), !vec4<bool>(global1.x, true, false, global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b - arg_0.b) + 490f), Struct_3(_wgslsmith_f_op_f32(1000f + -1700f))).c.xx, abs(_wgslsmith_mod_vec2_u32(arg_0.d.zy, countOneBits(vec2<u32>(117542u, arg_0.c.x))))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(arg_0.c << (arg_0.c % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.d.x, 1u, arg_0.c.x), arg_0.c >> (vec4<u32>(arg_0.d.x, u_input.d, 33534u, 1u) % vec4<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~1u, max(arg_0.c.x, arg_0.d.x)), arg_0.c.x)), 0u, arg_0.c.x);
    var_0 = arg_0.c;
    let var_1 = -u_input.a.x;
    let var_2 = func_4(func_1(arg_0, func_2(vec2<u32>(4294967295u, 4294967295u)).c), Struct_2(select(vec2<bool>(u_input.c > -53971i, true), global1.yz, false), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(4294967295u, 4294967295u, arg_0.d.x, var_0.x)), 13645u, _wgslsmith_sub_u32(arg_0.d.x, var_0.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, arg_0.d.x), arg_0.d), arg_0.d.x, ~1u)), Struct_1(-_wgslsmith_clamp_i32(arg_0.a, var_1, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b))), ~vec4<u32>(u_input.d, 2028u, arg_0.d.x, 4294967295u), vec3<u32>(_wgslsmith_mod_u32(0u, 1u), 50244u >> (1u % 32u), var_0.x))), global2[_wgslsmith_index_u32(~(~1u), 30u)]);
    return func_2(reverseBits(vec2<u32>(0u, ~func_2(arg_0.d.zy).b)));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> u32 {
    let var_0 = Struct_1(reverseBits(arg_3), arg_0.x, ~vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(arg_1.b, u_input.d)), arg_1.c.d.x, ~u_input.d, _wgslsmith_mod_u32(~1u, 1u)), arg_1.c.d);
    var var_1 = max(firstTrailingBit(countOneBits(min(vec3<i32>(u_input.a.x, arg_1.c.a, 17737i), u_input.a.yxy))), firstLeadingBit(-abs(u_input.e ^ u_input.a.zwy)));
    let var_2 = max(firstLeadingBit(u_input.d), var_0.d.x) | 13508u;
    global0 = array<vec3<f32>, 14>();
    var var_3 = func_4(arg_1, arg_1, select(vec4<bool>(false, arg_2, any(global2[_wgslsmith_index_u32(func_5(Struct_3(-1733f), var_0.b, Struct_3(arg_1.c.b)).c.x, 30u)]), !global1.x && any(vec2<bool>(arg_1.a.x, arg_1.a.x))), select(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2, 23574u), 30u)], select(global2[_wgslsmith_index_u32(var_2, 30u)], !vec4<bool>(true, arg_2, arg_2, true), true), global2[_wgslsmith_index_u32(4294967295u, 30u)]), !global2[_wgslsmith_index_u32(countOneBits(~var_0.c.x), 30u)]));
    return func_2(func_1(Struct_1(abs(arg_1.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(916f * -336f) * _wgslsmith_f_op_f32(-var_0.b)), ~(~vec4<u32>(var_2, 4294967295u, 34310u, arg_1.c.d.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, arg_1.c.c.x, u_input.d), ~var_0.c.xwy)), func_6(var_0).c).c.c.wx).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.wx;
    let var_1 = vec2<u32>(abs(u_input.d) ^ firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(1725u, 39352u, u_input.d, u_input.d), vec4<u32>(39767u, 8681u, 0u, u_input.d))), u_input.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, 2234f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1031f) * _wgslsmith_f_op_f32(floor(1729f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(var_1.x, 14u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, -101f, -356f))))));
    let var_3 = func_7(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 14u)])))), func_6(func_5(func_4(func_1(Struct_1(-2126i, -717f, vec4<u32>(4294967295u, u_input.d, 4294967295u, 28728u), vec3<u32>(1u, u_input.d, 52890u)), Struct_1(1i, var_2.x, vec4<u32>(4294967295u, u_input.d, 17572u, u_input.d), vec3<u32>(var_1.x, 4294967295u, 4294967295u))), Struct_2(global1.zy, u_input.d, Struct_1(u_input.a.x, var_2.x, vec4<u32>(12610u, 4294967295u, 0u, var_1.x), vec3<u32>(u_input.d, var_1.x, var_1.x))), !vec4<bool>(global1.x, var_0.x, false, var_0.x)), var_2.x, Struct_3(2102f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, _wgslsmith_div_f32(var_2.x, -529f)), -854f)) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f), 368f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.x, -213f, false)), func_4(Struct_2(vec2<bool>(var_0.x, false), 14098u, Struct_1(2147483647i, var_2.x, vec4<u32>(1u, u_input.d, 3887u, u_input.d), vec3<u32>(1u, 201u, 1u))), Struct_2(global1.ww, 5165u, Struct_1(2147483647i, -1566f, vec4<u32>(1140u, var_1.x, var_1.x, var_1.x), vec3<u32>(u_input.d, 0u, var_1.x))), vec4<bool>(false, global1.x, false, global1.x)).a))), -1i);
    global1 = vec4<bool>(!(!(global1.x || (var_0.x && true))), true, global1.x, var_2.x == func_5(func_4(func_1(Struct_1(2147483647i, -1273f, vec4<u32>(0u, var_3, var_3, 1u), vec3<u32>(var_1.x, 1u, 0u)), Struct_1(-1i, 383f, vec4<u32>(0u, 4294967295u, 0u, u_input.d), vec3<u32>(79343u, u_input.d, 1u))), func_6(Struct_1(u_input.c, -1384f, vec4<u32>(var_3, 0u, u_input.d, var_1.x), vec3<u32>(var_3, u_input.d, 4294967295u))), vec4<bool>(global1.x, global1.x, false, var_0.x)), _wgslsmith_f_op_f32(-func_2(var_1).c.b), Struct_3(_wgslsmith_div_f32(251f, var_2.x))).b);
    global2 = array<vec4<bool>, 30>();
    let var_4 = ~(~var_3);
    var var_5 = vec2<i32>(~u_input.a.x, ~(~func_5(func_4(Struct_2(global1.yw, u_input.d, Struct_1(u_input.c, 603f, vec4<u32>(99240u, var_1.x, var_4, var_3), vec3<u32>(32528u, 12132u, var_1.x))), Struct_2(global1.yz, u_input.d, Struct_1(-1i, var_2.x, vec4<u32>(43980u, var_4, u_input.d, u_input.d), vec3<u32>(44478u, 55162u, 19848u))), global2[_wgslsmith_index_u32(0u, 30u)]), var_2.x, Struct_3(var_2.x)).a));
    var var_6 = !(!select(!select(global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<bool>(global1.x, global1.x, var_0.x, false), true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4, u_input.d, 57176u), vec3<u32>(1u, var_4, var_1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 109524u, var_4, u_input.d), vec4<u32>(53935u, 18242u, u_input.d, var_4))), 30u)], global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
}

