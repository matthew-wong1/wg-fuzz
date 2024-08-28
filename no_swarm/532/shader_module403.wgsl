struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 14>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1516f)), select(select(select(select(arg_1.b, vec4<bool>(arg_1.b.x, global0.x, arg_1.b.x, true), global0.x), select(vec4<bool>(true, global0.x, arg_1.b.x, true), vec4<bool>(false, arg_1.b.x, false, false), vec4<bool>(global0.x, arg_1.b.x, arg_1.b.x, global0.x)), vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x)), vec4<bool>(global0.x || arg_1.b.x, !arg_1.b.x, true, true), select(!arg_1.b, vec4<bool>(true, arg_1.b.x, false, global0.x), vec4<bool>(false, true, true, true))), !vec4<bool>(global0.x, arg_1.b.x | global0.x, false | arg_1.b.x, select(arg_1.b.x, arg_1.b.x, arg_1.b.x)), arg_1.b), abs(vec2<u32>(countOneBits(0u << (u_input.a % 32u)), ~8675u)), arg_1.d, arg_2.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1377f * _wgslsmith_div_f32(-985f, -160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(880f, global1[_wgslsmith_index_u32(1u, 14u)])) * 1269f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)) - _wgslsmith_f_op_vec2_f32(arg_0.xy + vec2<f32>(-463f, 1811f))) * arg_2.yz))) * vec2<f32>(704f, -1172f));
    global3 = array<Struct_1, 20>();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 0u), vec4<u32>(var_0.d.x, 0u, arg_1.d.x, u_input.a)) | arg_1.d, var_0.d)), _wgslsmith_add_vec4_u32(vec4<u32>(~(33563u | var_0.d.x), ~var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, var_0.c.x), vec3<u32>(67732u, arg_1.d.x, var_0.d.x)) ^ 47473u, var_0.c.x), vec4<u32>(4294967295u, max(0u, arg_1.c.x) >> (~var_0.d.x % 32u), ~select(12465u, var_0.c.x, var_0.b.x), 1u))), 27u)];
    global2 = array<Struct_1, 27>();
    return true;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1012f, global1[_wgslsmith_index_u32(1184u, 14u)]))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 14u)]))))))), vec4<bool>(false, !all(vec4<bool>(true, false, false, global0.x)), func_3(vec4<f32>(_wgslsmith_f_op_f32(max(410f, global1[_wgslsmith_index_u32(u_input.b.x, 14u)])), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(30448u, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global0.x)), global1[_wgslsmith_index_u32(abs(u_input.b.x), 14u)], global1[_wgslsmith_index_u32(~4294967295u, 14u)]), global2[_wgslsmith_index_u32(~22332u, 27u)], _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(165f, -1156f, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], 1897f, 360f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1085f, global1[_wgslsmith_index_u32(63833u, 14u)], -1000f) * vec3<f32>(-360f, global1[_wgslsmith_index_u32(14507u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)])))), true), vec2<u32>(~(~u_input.b.x), firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.b.xx, u_input.b.xx))), (vec4<u32>(0u, ~u_input.b.x, u_input.b.x >> (u_input.b.x % 32u), ~1u) ^ ~vec4<u32>(1u, 65958u, 42711u, u_input.b.x)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), u_input.b.zx), _wgslsmith_add_u32(abs(u_input.b.x), 4294967295u), ~max(u_input.b.x, u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 14824u, u_input.b.x), u_input.b), 1u)), -130f);
    let var_1 = firstTrailingBit(var_0.d);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 14u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(54166u, 14u)])) + 1000f), 269f)));
    let var_3 = func_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-804f * var_0.a.x), _wgslsmith_f_op_f32(var_0.e + global1[_wgslsmith_index_u32(var_1.x, 14u)]), global1[_wgslsmith_index_u32(96270u, 14u)], _wgslsmith_f_op_f32(-140f - 827f)))))), Struct_1(var_0.a, vec4<bool>(true, !(global0.x && global0.x), func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 14u)], -305f, -1270f, var_2))), Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 1000f), var_0.b, vec2<u32>(var_1.x, 116020u), vec4<u32>(70489u, 5656u, u_input.b.x, u_input.a), 759f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, var_0.a.x))), true), vec2<u32>(~min(u_input.a, var_0.d.x), var_0.c.x), var_0.d, 1271f), vec3<f32>(-872f, 718f, -681f));
    var var_4 = ~vec3<u32>(_wgslsmith_mod_u32(1u, var_1.x), _wgslsmith_div_u32(~(0u << (u_input.b.x % 32u)), 1u), ~(~var_1.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2, global1[_wgslsmith_index_u32(89098u, 14u)]), var_0.a)), select(select(!(!var_0.b), !select(var_0.b, vec4<bool>(false, false, false, global0.x), true), true), vec4<bool>(40731u <= var_1.x, true, false, !arg_0), vec4<bool>(func_3(vec4<f32>(-606f, 678f, global1[_wgslsmith_index_u32(var_4.x, 14u)], 1045f), global2[_wgslsmith_index_u32(var_0.d.x, 27u)], vec3<f32>(var_0.a.x, -280f, var_2)) || true, true, !global0.x, any(vec3<bool>(true, arg_0, true)))), select(~var_0.c, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, ~u_input.a), ~u_input.b.zx), vec2<bool>(all(select(vec4<bool>(true, global0.x, var_3, true), vec4<bool>(false, var_3, var_0.b.x, global0.x), true)), global0.x && !var_3)), countOneBits(vec4<u32>(3025u, ~4294967295u, 25246u, ~(~32526u))), var_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = ~select(vec2<i32>(-1i, i32(-1i) * -17293i), abs(vec2<i32>(2147483647i, -1714i)), true) | select(-_wgslsmith_div_vec2_i32(-vec2<i32>(80961i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(1553i, 12406i), vec2<i32>(15762i, 33371i))), -select(vec2<i32>(-2147483647i, -26164i), -vec2<i32>(1i, -6230i), any(vec2<bool>(arg_0.b.x, global0.x))), all(arg_2.b.wyy));
    let var_1 = select(select(vec2<bool>(func_2(u_input.b.x != arg_2.c.x).b.x, !arg_2.b.x), !(!global0.zx), !all(!global0.zx)), !arg_2.b.zz, 0u <= arg_0.d.x);
    var var_2 = u_input.a ^ arg_0.d.x;
    var var_3 = func_2(!(any(func_2(arg_2.b.x).b) && (global0.x || (var_0.x < var_0.x)))).c.x;
    var var_4 = arg_0.b.x;
    return arg_2.b;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = select(!vec4<bool>((arg_0 <= 0u) && !global0.x, !global0.x, true, global0.x), vec4<bool>(!(22620u != (arg_0 & 0u)), global0.x, false, -366f >= global1[_wgslsmith_index_u32(~0u, 14u)]), func_4(global3[_wgslsmith_index_u32(u_input.b.x, 20u)], abs(~(u_input.b << (u_input.b % vec3<u32>(32u)))), func_2(!all(vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1230f, global1[_wgslsmith_index_u32(35123u, 14u)], 361f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(2041u, 14u)], global1[_wgslsmith_index_u32(52783u, 14u)], 109f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, -1234f, 2034f) + vec3<f32>(-1407f, global1[_wgslsmith_index_u32(arg_1, 14u)], global1[_wgslsmith_index_u32(32935u, 14u)])))))));
    var var_1 = ~u_input.b;
    let var_2 = vec4<u32>(_wgslsmith_div_u32(29603u, 5461u), _wgslsmith_dot_vec2_u32(var_1.yy, _wgslsmith_sub_vec2_u32(~var_1.yz, vec2<u32>(83211u, 510u) & var_1.zy)), 33826u, ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(arg_1, arg_1), u_input.b.xx), vec2<u32>(arg_1, arg_0))) << (~(~func_2(any(vec3<bool>(var_0.x, var_0.x, global0.x))).d) % vec4<u32>(32u));
    var var_3 = abs(var_2.x);
    var var_4 = ~1i;
    return -822f;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~(~min(countOneBits(u_input.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 46221u), ~63746u))), 20u)];
    global2 = array<Struct_1, 27>();
    let var_1 = u_input.b;
    global0 = var_0.b;
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 27u)];
    return Struct_1(vec2<f32>(-661f, -912f), !select(select(func_2(var_0.b.x).b, vec4<bool>(arg_1, var_0.b.x, var_0.b.x, false), vec4<bool>(false, false, false, true)), func_4(Struct_1(vec2<f32>(-1888f, -223f), vec4<bool>(arg_1, true, false, false), vec2<u32>(u_input.a, 32944u), vec4<u32>(43059u, 0u, 4294967295u, var_1.x), arg_2.x), u_input.b >> (vec3<u32>(89636u, 50034u, var_0.c.x) % vec3<u32>(32u)), func_2(global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, arg_2.x, arg_2.x))), true || (arg_2.x != arg_2.x)), firstTrailingBit(u_input.b.yx ^ _wgslsmith_add_vec2_u32(var_1.yx << (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u)), select(vec2<u32>(u_input.a, var_1.x), vec2<u32>(0u, var_1.x), false))), select(abs(~var_0.d), ~(vec4<u32>(4294967295u, var_1.x, 28937u, 14621u) << ((vec4<u32>(30894u, u_input.a, u_input.a, var_0.d.x) | vec4<u32>(u_input.a, var_0.d.x, 0u, 7002u)) % vec4<u32>(32u))), select(!var_0.b, var_0.b, var_1.x < 1u)), -265f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true, all(vec2<bool>(true, false)), vec3<f32>(global1[_wgslsmith_index_u32(min(~u_input.b.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), vec3<u32>(1u, 43700u, 1u))), 14u)], _wgslsmith_f_op_f32(func_1(u_input.a | _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(29726u, 0u, u_input.b.x)), 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 14u)]))));
    let var_1 = global0.wwy;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(global0.x, true, vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 14u)] + -362f), _wgslsmith_f_op_f32(floor(var_0.e)), global1[_wgslsmith_index_u32(~12487u, 14u)])).a.x + var_0.e));
    var var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.c.x, _wgslsmith_div_u32(max(u_input.b.x, 96761u), ~15009u)), abs(~(~func_5(global0.x, true, vec3<f32>(-172f, var_0.a.x, var_2)).c)));
    let var_4 = Struct_1(var_0.a, vec4<bool>(16676i >= (-2147483647i | firstTrailingBit(10634i)), true, global0.x, !var_1.x), vec2<u32>(func_5(var_0.b.x, true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 14u)], var_2, 525f))))).d.x, var_3.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_3.x, _wgslsmith_dot_vec2_u32(var_0.c, u_input.b.yz)), vec4<u32>(0u, ~1u, u_input.b.x, abs(var_3.x))) << (_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.d.x, 49890u, 1u, 1248u)), func_2(false).d) % vec4<u32>(32u)), var_0.e);
    var var_5 = func_4(func_5(false, any(var_4.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2, -1458f, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(20434u, 14u)], global1[_wgslsmith_index_u32(var_0.c.x, 14u)], -381f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2227f, -1697f, var_4.a.x) * vec3<f32>(var_2, -500f, 756f))))), var_0.d.yyx, func_5(func_5(var_4.b.x, !all(vec3<bool>(false, var_0.b.x, var_0.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(803f, 1064f, -325f)), vec3<f32>(1828f, 672f, var_2))).b.x, var_1.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1645f, var_0.e)), _wgslsmith_f_op_f32(var_0.e + -546f), _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(var_2 * var_0.a.x)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), 470f), 1000f, var_4.e));
    let var_6 = firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.d.x, ~0u, u_input.b.x), ~func_5(var_5.x, false, vec3<f32>(-316f, 124f, global1[_wgslsmith_index_u32(4294967295u, 14u)])).d.xxw));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(34749u, var_0.c.x), vec2<u32>(4294967295u, var_6.x))), var_4.e, vec4<f32>(-754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-650f)) * var_2), 248f, 1171f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(404f, 961f, 532f, 1109f), _wgslsmith_f_op_vec4_f32(vec4<f32>(453f, -821f, global1[_wgslsmith_index_u32(u_input.a, 14u)], 794f) + vec4<f32>(var_4.e, var_0.a.x, var_4.a.x, var_4.e)), var_0.b)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1433f, var_0.e, var_0.a.x, global1[_wgslsmith_index_u32(var_6.x, 14u)])))))), -1i);
}

