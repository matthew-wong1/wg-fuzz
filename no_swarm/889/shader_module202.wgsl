struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 71075u);

var<private> global1: array<f32, 14> = array<f32, 14>(2917f, -1376f, 2842f, -1000f, -1656f, -1000f, 1518f, 159f, -1000f, -736f, 140f, 1000f, -1247f, -601f);

var<private> global2: array<i32, 16>;

var<private> global3: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(301f, -305f, 949f), vec3<f32>(329f, -319f, 1108f), vec3<f32>(-1000f, -557f, -2570f), vec3<f32>(-174f, 844f, -1580f), vec3<f32>(-1000f, 1323f, 941f), vec3<f32>(-414f, -826f, -274f), vec3<f32>(-1063f, 241f, 1634f), vec3<f32>(1345f, 2055f, 166f), vec3<f32>(-730f, -1096f, -2025f), vec3<f32>(1000f, -131f, -286f), vec3<f32>(618f, 484f, 481f), vec3<f32>(-403f, 1393f, -1127f), vec3<f32>(-1332f, 509f, 163f), vec3<f32>(-1287f, 487f, 829f), vec3<f32>(-393f, -768f, 989f), vec3<f32>(-937f, 674f, 188f), vec3<f32>(-2247f, 1252f, 1034f), vec3<f32>(1281f, -251f, 464f), vec3<f32>(-899f, 198f, -2066f), vec3<f32>(376f, 659f, 1116f), vec3<f32>(-943f, 836f, 370f));

var<private> global4: array<bool, 31> = array<bool, 31>(true, true, true, true, false, false, true, false, false, true, true, false, true, false, false, false, true, false, false, false, true, false, false, false, true, false, true, false, true, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(Struct_1(arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.b, -110f, global4[_wgslsmith_index_u32(41598u, 31u)]))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -480f))))), Struct_1(arg_2.c.a));
    var var_1 = _wgslsmith_mult_u32(firstTrailingBit(reverseBits(abs(abs(1u)))), var_0.a.a.x);
    var var_2 = -43330i;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(arg_2.c.a.x, var_0.a.a.x) >> (max(vec2<u32>(33902u, 0u), var_0.c.a.wx) % vec2<u32>(32u))), min(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.a.x, var_0.a.a.x), firstTrailingBit(var_0.a.a.zw)), _wgslsmith_mult_vec2_u32(~arg_0.a.wy, arg_2.a.a.xx))), 21u)]));
    var var_4 = Struct_2(select(!global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.a.x, arg_3.a.x, global0.x), _wgslsmith_sub_u32(global0.x, global0.x)), 31u)], !((global4[_wgslsmith_index_u32(var_0.a.a.x, 31u)] != global4[_wgslsmith_index_u32(70219u, 31u)]) & select(global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(70445u, 31u)], false)), any(vec4<bool>(any(vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 31u)])), true, all(vec3<bool>(true, false, global4[_wgslsmith_index_u32(43643u, 31u)])), any(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], false))))), vec4<bool>(true, true & all(vec4<bool>(false, global4[_wgslsmith_index_u32(6596u, 31u)], global4[_wgslsmith_index_u32(arg_2.c.a.x, 31u)], true)), 0u >= ~global0.x, global4[_wgslsmith_index_u32(abs(~4294967295u), 31u)]), global4[_wgslsmith_index_u32(abs(~max(arg_3.a.x, ~arg_3.a.x)), 31u)], arg_2.a, -min(~(-1i), -u_input.a.x));
    return any(!vec4<bool>(var_3.x == -1000f, false, var_4.b.x, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = (_wgslsmith_mod_vec4_u32(~(~var_0.a), ~vec4<u32>(4294967295u, 27915u, 20594u, var_0.a.x)) << (_wgslsmith_sub_vec4_u32(arg_0.a, var_0.a) % vec4<u32>(32u))) & arg_0.a;
    let var_2 = arg_2.d;
    let var_3 = Struct_1(~arg_2.d.a);
    let var_4 = arg_2.d.a.x;
    return arg_2.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> u32 {
    global3 = array<vec3<f32>, 21>();
    var var_0 = Struct_2(arg_0.x, func_4(arg_2.d, Struct_2(func_3(arg_2.d, countOneBits(arg_2.d.a.xz), Struct_3(arg_2.d, global1[_wgslsmith_index_u32(0u, 14u)], Struct_1(vec4<u32>(global0.x, global0.x, 0u, 66332u))), arg_2.d), vec4<bool>(global4[_wgslsmith_index_u32(0u >> (global0.x % 32u), 31u)], func_3(Struct_1(arg_2.d.a), arg_2.d.a.yw, Struct_3(arg_2.d, arg_1, arg_2.d), arg_2.d), global4[_wgslsmith_index_u32(~global0.x, 31u)], false), !arg_2.b.x, arg_2.d, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(7987u), ~global0.x), 16u)]), arg_2), arg_0.x, arg_2.d, _wgslsmith_dot_vec3_i32(vec3<i32>(17595i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -4422i, u_input.a.x, global2[_wgslsmith_index_u32(global0.x, 16u)]), vec4<i32>(-10050i, -17100i, -38228i, 1i))) << ((vec3<u32>(arg_2.d.a.x, arg_2.d.a.x, 0u) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(78232u, 6013u, 0u), arg_2.d.a.yzx) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(~u_input.a.x, 11865i, -13017i)));
    let var_1 = Struct_3(Struct_1(abs(vec4<u32>(~10374u, var_0.d.a.x & 32754u, abs(var_0.d.a.x), var_0.d.a.x >> (var_0.d.a.x % 32u)))), -357f, Struct_1(~(~select(arg_2.d.a, vec4<u32>(1u, 0u, global0.x, 4294967295u), true))));
    global4 = array<bool, 31>();
    let var_2 = arg_2;
    return var_1.a.a.x;
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, ~global0.x, _wgslsmith_clamp_u32(~global0.x, firstLeadingBit(global0.x), ~global0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 0u, 5043u), ~vec3<u32>(32282u, 0u, 50372u))), ~reverseBits(vec4<u32>(12347u, global0.x, 1u, 0u))));
    var var_1 = 1763i;
    var var_2 = var_0.a.yx;
    let var_3 = countOneBits(vec4<u32>(global0.x, ~func_2(select(vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(true, true, global4[_wgslsmith_index_u32(var_2.x, 31u)], false), vec4<bool>(global4[_wgslsmith_index_u32(38966u, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)], global4[_wgslsmith_index_u32(var_0.a.x, 31u)], global4[_wgslsmith_index_u32(var_0.a.x, 31u)])), 139f, Struct_2(global4[_wgslsmith_index_u32(var_0.a.x, 31u)], vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 31u)], global4[_wgslsmith_index_u32(global0.x, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], true), true, Struct_1(vec4<u32>(6218u, global0.x, var_0.a.x, global0.x)), global2[_wgslsmith_index_u32(38398u, 16u)])), 10385u, _wgslsmith_add_u32(firstTrailingBit(abs(var_0.a.x)), ~reverseBits(global0.x))));
    global2 = array<i32, 16>();
    return var_0.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_div_vec4_u32(arg_1, ~arg_1);
    var var_1 = global3[_wgslsmith_index_u32(var_0.x, 21u)];
    let var_2 = ~arg_0;
    return -min(~vec3<i32>(i32(-1i) * -35388i, -arg_0.x, arg_0.x), vec3<i32>(i32(-1i) * -13792i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-13744i, 24431i, arg_0.x, u_input.a.x), vec4<i32>(-1i, -4758i, -2147483647i, 41942i)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(((vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(global0.x, 16u)], -24839i) << (vec3<u32>(4294967295u, 0u, global0.x) % vec3<u32>(32u))) | vec3<i32>(global2[_wgslsmith_index_u32(1u, 16u)], -56339i, -2147483647i)) ^ ~vec3<i32>(1i, u_input.a.x, -15251i), _wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, global0.x, global0.x, 1u) >> (vec4<u32>(global0.x, 0u, 0u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(func_1(), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<u32>(11328u, global0.x, global0.x, 22407u)))), vec2<u32>(~40396u | global0.x, _wgslsmith_clamp_u32(global0.x, global0.x, 3846u) | (0u >> (1u % 32u))));
    global2 = array<i32, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], 1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(766f)), global1[_wgslsmith_index_u32(31389u, 14u)]))))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.x, global0.x, 56435u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(0u, global0.x, 3578u, 47588u)) >> (~vec4<u32>(46909u, 1u, global0.x, 45933u) % vec4<u32>(32u)))), -1000f, Struct_1(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(10920u, global0.x, 1u, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, global0.x)), vec4<u32>(_wgslsmith_add_u32(global0.x, global0.x), global0.x, global0.x, 1u), global4[_wgslsmith_index_u32(global0.x, 31u)])));
    var var_3 = Struct_2(672f != _wgslsmith_f_op_f32(ceil(-2184f)), func_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, ~0u, var_2.a.a.x << (0u % 32u))), Struct_2(any(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 31u)], true, false, true)), vec4<bool>(false, global4[_wgslsmith_index_u32(0u, 31u)], all(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 31u)], true, global4[_wgslsmith_index_u32(var_2.a.a.x, 31u)])), false), func_4(var_2.a, Struct_2(true, vec4<bool>(global4[_wgslsmith_index_u32(global0.x, 31u)], global4[_wgslsmith_index_u32(13505u, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], global4[_wgslsmith_index_u32(global0.x, 31u)]), global4[_wgslsmith_index_u32(var_2.c.a.x, 31u)], Struct_1(var_2.c.a), var_0.x), Struct_2(global4[_wgslsmith_index_u32(4294967295u, 31u)], vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 31u)], false, true), false, var_2.c, var_0.x)).x, var_2.c, -(~(-33005i))), Struct_2(true, vec4<bool>(false, global4[_wgslsmith_index_u32(~84614u, 31u)], any(vec4<bool>(false, global4[_wgslsmith_index_u32(var_2.c.a.x, 31u)], global4[_wgslsmith_index_u32(global0.x, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)])), !global4[_wgslsmith_index_u32(var_2.c.a.x, 31u)]), !any(vec2<bool>(true, true)), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8180u, global0.x, 4294967295u), var_2.c.a, var_2.c.a)), var_0.x)), true || ((0u >> (~global0.x % 32u)) != ~(~var_2.a.a.x)), Struct_1(~vec4<u32>(firstLeadingBit(global0.x), var_2.a.a.x, 19311u, _wgslsmith_dot_vec4_u32(var_2.a.a, vec4<u32>(75746u, global0.x, 50420u, global0.x)))), u_input.a.x);
    let var_4 = select(var_3.b.yw, select(vec2<bool>(~39224u == ~var_2.a.a.x, var_3.a), vec2<bool>(true, (var_0.x ^ 1i) == 40534i), !var_3.b.xw), vec2<bool>(all(func_4(var_3.d, Struct_2(true, var_3.b, true, Struct_1(vec4<u32>(29019u, global0.x, var_3.d.a.x, 8205u)), var_0.x), Struct_2(global4[_wgslsmith_index_u32(var_3.d.a.x, 31u)], var_3.b, true, Struct_1(var_3.d.a), 20962i)).xww), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_2.c.a.x), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~(~global0.x)), func_1().x), 1f);
}

