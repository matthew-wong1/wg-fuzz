struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -620f;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec2<u32>(1u, 3790u), 14265u, vec3<f32>(-486f, -1165f, 203f), vec3<bool>(true, true, true));

var<private> global2: f32 = 170f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(u_input.d, Struct_1(select(global1.a, select(select(global1.e, global1.e, global1.a), !global1.e, !global1.e.x), !all(global1.e)), vec2<u32>(firstLeadingBit(69883u), (u_input.d.x ^ 1u) & firstLeadingBit(u_input.a)), 34780u, global1.d, select(global1.a, !global1.e, global1.e.x)), min(vec4<u32>(_wgslsmith_clamp_u32(85694u, _wgslsmith_div_u32(29262u, u_input.d.x), _wgslsmith_mod_u32(66224u, global1.b.x)), _wgslsmith_mod_u32(u_input.a & 0u, firstTrailingBit(u_input.a)), ~global1.c, u_input.d.x), select(~abs(vec4<u32>(0u, global1.c, 0u, 88232u)), abs(vec4<u32>(u_input.a, global1.b.x, 39208u, u_input.d.x)), true)));
    var_0 = Struct_2(vec2<u32>(var_0.a.x, ~var_0.b.b.x), var_0.b, _wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(var_0.b.b.x, 0u, global1.c, var_0.c.x), abs(vec4<u32>(global1.c, u_input.d.x, u_input.d.x, 73744u)), select(vec4<bool>(true, global1.a.x, true, false), vec4<bool>(false, var_0.b.e.x, false, var_0.b.e.x), true))), var_0.c));
    let var_1 = var_0.b;
    global0 = _wgslsmith_f_op_f32(-global1.d.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * var_0.b.d.x))), global1.d.x, global1.d.x));
    return min(vec4<u32>(abs(1u >> (1u % 32u)) >> ((48553u ^ _wgslsmith_clamp_u32(u_input.d.x, 21658u, u_input.a)) % 32u), abs(~abs(global1.b.x)), _wgslsmith_mult_u32(~u_input.a >> (1u % 32u), 107450u), var_1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, var_1.b.x, global1.b.x, u_input.d.x), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, var_0.a.x, u_input.a, 1u)), vec4<u32>(var_1.b.x, u_input.d.x, 66658u, global1.b.x), vec4<u32>(14799u, 0u, global1.b.x, var_1.c))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(select(~max(firstTrailingBit(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(0u, 4294967295u)), u_input.d, false), arg_0, min(~(~countOneBits(vec4<u32>(76964u, 4294967295u, arg_1.c, 1u))), _wgslsmith_add_vec4_u32(countOneBits(func_3()), ~(vec4<u32>(global1.c, 29207u, arg_0.b.x, arg_0.c) << (vec4<u32>(1u, u_input.d.x, 0u, 57760u) % vec4<u32>(32u))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(-global1.d.x)));
    global0 = arg_0.d.x;
    let var_1 = var_0;
    global0 = _wgslsmith_f_op_f32(-arg_0.d.x);
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -vec2<i32>(u_input.b, 1431i) & vec2<i32>(-1i, u_input.b);
    let var_1 = -u_input.b;
    var var_2 = arg_0.e.x;
    var var_3 = Struct_1(select(vec3<bool>(true, !(arg_2.b.e.x | arg_2.b.e.x), -175f != _wgslsmith_f_op_f32(arg_0.d.x - -706f)), func_2(func_2(Struct_1(vec3<bool>(false, false, false), arg_3.b, arg_0.c, arg_3.d, vec3<bool>(true, false, global1.a.x)), func_2(arg_3, arg_0)), func_2(arg_0, func_2(Struct_1(vec3<bool>(global1.a.x, true, arg_3.e.x), global1.b, 4294967295u, arg_3.d, vec3<bool>(true, true, arg_0.e.x)), arg_0))).a, all(global1.e)), vec2<u32>(57721u, ~(~_wgslsmith_mult_u32(arg_0.c, 118540u))), arg_2.c.x << (_wgslsmith_sub_u32(u_input.d.x, arg_3.b.x) % 32u), global1.d, func_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, u_input.a), _wgslsmith_mult_u32(firstTrailingBit(28359u), ~10389u), arg_2.b.d, arg_0.e), func_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(arg_1, arg_3.c), ~global1.b.x, global1.d, !vec3<bool>(arg_3.a.x, false, false)), Struct_1(global1.e, vec2<u32>(global1.c, u_input.d.x) | vec2<u32>(arg_3.b.x, u_input.d.x), ~arg_0.b.x, vec3<f32>(-2183f, 1011f, -130f), !arg_0.a))).a);
    let var_4 = func_2(arg_0, func_2(func_2(Struct_1(!var_3.e, ~arg_2.c.xx, global1.b.x >> (arg_0.b.x % 32u), global1.d, !arg_0.a), Struct_1(!vec3<bool>(false, arg_2.b.a.x, true), arg_0.b, 1u, _wgslsmith_f_op_vec3_f32(round(global1.d)), vec3<bool>(false, false, arg_0.e.x))), Struct_1(vec3<bool>(func_2(arg_0, arg_2.b).a.x, arg_3.e.x && false, false), global1.b, global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, 649f, 764f) * vec3<f32>(var_3.d.x, 196f, var_3.d.x))), select(!arg_2.b.a, select(arg_0.e, vec3<bool>(false, true, arg_3.a.x), arg_2.b.a), arg_3.a))));
    return Struct_1(!select(!vec3<bool>(var_3.a.x, global1.a.x, false), select(select(vec3<bool>(var_3.a.x, var_4.e.x, var_4.e.x), arg_0.e, arg_3.e), !arg_2.b.e, true), var_3.e), var_4.b, _wgslsmith_dot_vec4_u32(arg_2.c, ~vec4<u32>(~var_3.b.x, ~1u, firstTrailingBit(1u), arg_1 & 13935u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(184f, arg_0.d.x))))), var_3.d.x, 697f), func_2(Struct_1(!vec3<bool>(true, false, arg_2.b.a.x), vec2<u32>(arg_2.a.x, ~var_3.b.x), global1.c, _wgslsmith_f_op_vec3_f32(var_4.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1133f, arg_3.d.x, -275f))), vec3<bool>(arg_2.b.e.x || arg_0.e.x, var_3.a.x, any(arg_3.a.zz))), func_2(func_2(func_2(arg_0, var_4), arg_0), func_2(Struct_1(var_4.a, vec2<u32>(1u, var_3.b.x), 50334u, vec3<f32>(-324f, 1402f, 954f), vec3<bool>(global1.e.x, global1.e.x, var_4.e.x)), func_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(var_3.c, 1u), 16800u, vec3<f32>(315f, 2018f, arg_3.d.x), var_4.e), Struct_1(global1.a, vec2<u32>(u_input.a, arg_2.b.c), 19510u, vec3<f32>(var_4.d.x, arg_0.d.x, -122f), vec3<bool>(false, global1.e.x, true)))))).e);
}

fn func_1(arg_0: bool) -> vec3<u32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * -1543f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(716f, _wgslsmith_f_op_f32(abs(-361f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1955f * -241f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2600f))))));
    var var_0 = Struct_2(~(~max(countOneBits(global1.b), global1.b)), func_4(func_2(Struct_1(select(global1.a, global1.e, vec3<bool>(global1.e.x, true, true)), global1.b << (u_input.d % vec2<u32>(32u)), ~4294967295u, global1.d, vec3<bool>(true, arg_0, true)), Struct_1(!global1.e, vec2<u32>(u_input.d.x, global1.b.x), ~1u, _wgslsmith_f_op_vec3_f32(-global1.d), vec3<bool>(true, true, global1.a.x))), ~(~25019u), Struct_2(~(~vec2<u32>(27847u, 11887u)), Struct_1(func_2(Struct_1(global1.e, vec2<u32>(global1.c, u_input.d.x), 1u, vec3<f32>(-1088f, 1419f, global1.d.x), global1.e), Struct_1(global1.e, global1.b, 0u, global1.d, vec3<bool>(arg_0, false, global1.e.x))).a, func_3().yw, ~68213u, vec3<f32>(-627f, global1.d.x, global1.d.x), vec3<bool>(true, true, false)), reverseBits(~vec4<u32>(104889u, 0u, u_input.d.x, 1u))), func_2(func_2(func_2(Struct_1(vec3<bool>(global1.e.x, global1.e.x, true), vec2<u32>(global1.c, global1.c), global1.b.x, vec3<f32>(161f, global1.d.x, global1.d.x), vec3<bool>(true, arg_0, true)), Struct_1(vec3<bool>(false, global1.e.x, global1.a.x), global1.b, 135425u, vec3<f32>(-735f, -795f, global1.d.x), vec3<bool>(arg_0, global1.e.x, true))), func_2(Struct_1(global1.e, vec2<u32>(11434u, 4294967295u), 108519u, vec3<f32>(-908f, global1.d.x, global1.d.x), global1.a), Struct_1(vec3<bool>(arg_0, arg_0, arg_0), vec2<u32>(global1.c, u_input.a), global1.b.x, global1.d, vec3<bool>(true, false, global1.a.x)))), func_2(Struct_1(global1.e, vec2<u32>(global1.c, 0u), u_input.d.x, vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec3<bool>(arg_0, true, arg_0)), Struct_1(vec3<bool>(arg_0, arg_0, true), u_input.d, global1.b.x, global1.d, global1.a)))), vec4<u32>(_wgslsmith_sub_u32(firstTrailingBit(global1.c), ~global1.c) >> (u_input.d.x % 32u), func_3().x, 0u, 1u));
    global1 = var_0.b;
    var var_1 = vec2<bool>(!arg_0, false);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -537f)));
    return ~(var_0.c.xyx << ((vec3<u32>(47306u, ~4294967295u, global1.b.x) >> (abs(~var_0.c.xzy) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, u_input.d, 14939u, _wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(global1.d - global1.d)), global1.a);
    var var_0 = ~(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d.x, u_input.a >> (global1.b.x % 32u)), ~(global1.b ^ vec2<u32>(0u, global1.c))) >> (countOneBits(global1.b ^ u_input.d) % vec2<u32>(32u)));
    let var_1 = vec3<u32>(20910u, _wgslsmith_dot_vec3_u32(func_1(all(!vec2<bool>(true, global1.e.x))), ~_wgslsmith_clamp_vec3_u32(func_3().wyw, ~vec3<u32>(u_input.a, u_input.d.x, 0u), ~vec3<u32>(55880u, 4294967295u, 148481u))), ~(~firstTrailingBit(abs(var_0.x))));
    let var_2 = select(-vec4<i32>(~u_input.c, abs(1i), u_input.b, _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(-1i, 2147483647i))), abs(-select(vec4<i32>(u_input.b, -1i, u_input.c, 0i) & vec4<i32>(25764i, u_input.c, -1i, 0i), -vec4<i32>(u_input.b, u_input.c, 77157i, -2147483647i), select(vec4<bool>(false, global1.a.x, global1.e.x, global1.a.x), vec4<bool>(global1.a.x, global1.e.x, global1.a.x, true), vec4<bool>(global1.a.x, global1.a.x, false, global1.e.x)))), global1.a.x);
    global1 = func_2(func_2(func_2(func_2(Struct_1(global1.e, vec2<u32>(var_1.x, global1.b.x), var_0.x, vec3<f32>(-1167f, global1.d.x, -2808f), vec3<bool>(global1.a.x, true, global1.a.x)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(u_input.d.x, u_input.d.x), 1u, global1.d, vec3<bool>(global1.e.x, global1.a.x, global1.e.x))), Struct_1(!global1.a, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global1.b.x), global1.b), 1u, _wgslsmith_f_op_vec3_f32(select(global1.d, vec3<f32>(1590f, -1264f, -693f), global1.e)), vec3<bool>(false, global1.e.x, global1.a.x))), Struct_1(func_2(Struct_1(global1.e, vec2<u32>(37750u, 11295u), 9065u, vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec3<bool>(global1.e.x, global1.a.x, false)), func_4(Struct_1(global1.e, u_input.d, 15339u, global1.d, vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), 1u, Struct_2(u_input.d, Struct_1(vec3<bool>(global1.e.x, global1.a.x, global1.a.x), var_1.xz, 25864u, vec3<f32>(global1.d.x, global1.d.x, global1.d.x), vec3<bool>(true, global1.a.x, global1.e.x)), vec4<u32>(global1.c, u_input.d.x, 0u, u_input.d.x)), Struct_1(global1.e, u_input.d, 57822u, global1.d, vec3<bool>(global1.e.x, global1.e.x, global1.e.x)))).e, var_1.zy, 2961u, vec3<f32>(-1350f, _wgslsmith_f_op_f32(global1.d.x * -1712f), _wgslsmith_f_op_f32(f32(-1f) * -1193f)), select(select(global1.a, vec3<bool>(true, false, true), true), select(global1.a, global1.e, vec3<bool>(global1.a.x, global1.e.x, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), global1.e)))), func_2(Struct_1(global1.e, vec2<u32>(4294967295u, var_0.x) << (~global1.b % vec2<u32>(32u)), 54668u, vec3<f32>(1893f, _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(267f + global1.d.x)), global1.a), Struct_1(global1.e, (u_input.d & var_1.yz) ^ vec2<u32>(var_1.x, global1.b.x), func_3().x, global1.d, global1.a)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * global1.d.x));
    let var_3 = -abs(vec4<i32>(0i, -1i, -2147483647i, 14981i)) & (vec4<i32>(min(50379i, var_2.x), countOneBits(u_input.c), u_input.c, var_2.x) >> (_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(18736u, var_1.x, 4294967295u, var_0.x)), vec4<u32>(global1.c, 24344u, u_input.d.x, 29462u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(59717u, global1.b.x, var_1.x, var_0.x), vec4<u32>(u_input.d.x, 64046u, u_input.d.x, u_input.a))) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_mod_i32(u_input.b, -64831i) >= -20621i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * 1464f)))), vec3<u32>(_wgslsmith_sub_u32(~4853u, abs(var_0.x)), 42181u, abs(_wgslsmith_div_u32(49649u, global1.b.x) ^ firstTrailingBit(var_0.x))), abs(firstTrailingBit(var_3.x)), -551f);
}

