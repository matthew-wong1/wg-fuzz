struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_3, 28>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = select(!vec4<bool>(!any(vec4<bool>(arg_0.e, true, global0.x, true)), true, select(!arg_1.e, arg_1.e == true, any(vec3<bool>(false, true, global0.x))), true), !vec4<bool>(true, all(vec4<bool>(false, arg_0.d, arg_0.e, true)), all(vec3<bool>(false, true, global0.x)), arg_1.e), arg_0.e);
    let var_1 = (min(vec3<u32>(select(arg_1.b.a.x, 53185u, true), firstTrailingBit(arg_1.c), 1u), ~(~vec3<u32>(1u, arg_1.b.b, arg_1.b.b))) & ~(~vec3<u32>(arg_0.b.a.x, arg_1.b.b, arg_0.b.b))) << ((select(reverseBits(vec3<u32>(arg_1.c, 24704u, arg_1.c) ^ vec3<u32>(arg_0.c, arg_0.c, 1u)), vec3<u32>(0u, arg_0.c | 1u, arg_0.b.b), var_0.wyw) & ~(vec3<u32>(24653u, 23579u, 36849u) ^ ~vec3<u32>(arg_0.b.b, arg_0.c, 93097u))) % vec3<u32>(32u));
    global1 = array<Struct_3, 28>();
    return vec2<u32>(((var_1.x & 3557u) >> (~(~arg_0.c) % 32u)) << (_wgslsmith_mod_u32(~4294967295u, arg_1.c) % 32u), ~arg_1.b.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = ~max(abs(abs(arg_1.x)), arg_2.x);
    var var_1 = arg_0.c.a;
    let var_2 = -952f;
    let var_3 = Struct_2(arg_0.c, -370f, Struct_1(arg_2 ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_0.c.b, var_0), vec3<u32>(var_0, var_1.x, 64683u)), firstLeadingBit(arg_0.c.a.x)), 1u));
    var var_4 = any(vec2<bool>((456f <= _wgslsmith_f_op_f32(-var_2)) & false, (select(u_input.a.x, 63908i, global0.x) >= (u_input.a.x ^ -36053i)) && !global0.x));
    return !vec4<bool>(false, any(select(!vec4<bool>(global0.x, false, true, false), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, true), global0.x), vec4<bool>(true, true, true, true))), !global0.x, !(arg_2.x < arg_2.x) | global0.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_2 {
    global0 = select(select(arg_0, func_4(Struct_2(arg_1.b, _wgslsmith_f_op_f32(-2491f + -1263f), arg_1.b), func_3(Struct_3(-1013f, arg_1.b, arg_1.b.b, global0.x, true), Struct_3(-710f, arg_1.b, 4294967295u, true, global0.x)), vec2<u32>(~arg_1.c, 9246u ^ arg_1.b.b)), select(arg_0, arg_0, !vec4<bool>(arg_1.d, true, true, arg_0.x))), select(!(!select(vec4<bool>(true, false, false, global0.x), arg_0, vec4<bool>(false, false, true, true))), arg_0, false), !vec4<bool>(true, ~4294967295u == abs(arg_1.c), !arg_1.e, all(vec4<bool>(arg_0.x, arg_1.d, true, true))));
    global1 = array<Struct_3, 28>();
    global0 = vec4<bool>(select(false, any(arg_0), true), true, any(vec4<bool>(false, arg_0.x, arg_0.x, true)), func_4(Struct_2(arg_1.b, arg_1.a, Struct_1(arg_1.b.a, arg_1.b.a.x)), arg_1.b.a, (abs(vec2<u32>(arg_1.c, 3947u)) >> (arg_1.b.a % vec2<u32>(32u))) >> (func_3(Struct_3(arg_1.a, arg_1.b, arg_1.c, false, false), global1[_wgslsmith_index_u32(arg_1.c, 28u)]) % vec2<u32>(32u))).x);
    global1 = array<Struct_3, 28>();
    var var_0 = vec2<i32>(47302i, 0i);
    return Struct_2(Struct_1(abs(~arg_1.b.a) >> (~vec2<u32>(arg_1.c, arg_1.c) % vec2<u32>(32u)), _wgslsmith_clamp_u32(36782u ^ (arg_1.b.a.x >> (arg_1.c % 32u)), _wgslsmith_mod_u32(0u, 46930u) >> (_wgslsmith_mult_u32(1u, 1u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(18537u, arg_1.b.a.x, arg_1.c, arg_1.c) << (vec4<u32>(arg_1.c, 133802u, arg_1.c, arg_1.c) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(arg_1.c, arg_1.c, 0u, 1u))))), arg_1.a, arg_1.b);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    return arg_0.c;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global0 = select(func_4(arg_2, ~_wgslsmith_mult_vec2_u32(~arg_2.a.a, arg_2.c.a), select(arg_3.a.a, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.a.a, vec2<u32>(6101u, arg_0)), abs(arg_3.a.a)), vec2<bool>(true, global0.x))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -783f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.b))), false, all(global0.yzw), false), true);
    let var_0 = ~reverseBits(_wgslsmith_mod_u32(arg_3.c.b << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.a.x, arg_3.a.b, 4294967295u, arg_0), vec4<u32>(arg_0, arg_0, 51639u, 1u)) % 32u), max(~arg_3.c.b, arg_2.a.b)));
    global1 = array<Struct_3, 28>();
    return _wgslsmith_f_op_f32(trunc(arg_2.b));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(arg_1))) - -126f), _wgslsmith_f_op_f32(func_6(1u, max(u_input.c, _wgslsmith_mult_i32(u_input.a.x, u_input.b)), Struct_2(func_5(func_2(vec4<bool>(false, true, global0.x, global0.x), Struct_3(arg_1, Struct_1(vec2<u32>(42416u, 0u), arg_0), arg_0, global0.x, false))), 153f, Struct_1(vec2<u32>(35269u, arg_2) >> (vec2<u32>(39181u, 0u) % vec2<u32>(32u)), ~41777u)), func_2(!vec4<bool>(global0.x, global0.x, false, global0.x), global1[_wgslsmith_index_u32(~1u, 28u)]))));
    var var_1 = arg_1;
    var var_2 = func_2(select(vec4<bool>(false, false, !(!global0.x), !(global0.x & global0.x)), select(vec4<bool>(true, global0.x, u_input.a.x <= -1i, global0.x && global0.x), vec4<bool>(global0.x | true, arg_2 >= 33474u, all(vec4<bool>(true, true, false, global0.x)), global0.x || true), vec4<bool>(global0.x, true, false, all(global0.xwx))), all(func_4(func_2(vec4<bool>(global0.x, global0.x, true, global0.x), Struct_3(arg_1, Struct_1(vec2<u32>(0u, arg_2), 6452u), 1u, false, false)), vec2<u32>(arg_2, 1u), ~vec2<u32>(32468u, 48284u)).zxy)), global1[_wgslsmith_index_u32(func_2(!vec4<bool>(!global0.x, !global0.x, true, func_4(Struct_2(Struct_1(vec2<u32>(0u, 1u), arg_0), 399f, Struct_1(vec2<u32>(arg_2, arg_0), 4294967295u)), vec2<u32>(arg_2, arg_2), vec2<u32>(4294967295u, 60270u)).x), global1[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, func_5(Struct_2(Struct_1(vec2<u32>(17362u, 48840u), arg_0), arg_1, Struct_1(vec2<u32>(0u, arg_2), arg_0))).b), _wgslsmith_mult_u32(arg_0, ~arg_0)), 28u)]).c.b, 28u)]).a;
    global0 = vec4<bool>(global0.x, global0.x, !(~countOneBits(15551u) <= var_2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-771f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(769f, arg_1))), func_4(func_2(vec4<bool>(global0.x, false, false, false), global1[_wgslsmith_index_u32(arg_0, 28u)]), _wgslsmith_mult_vec2_u32(var_2.a, vec2<u32>(0u, 34006u)), select(vec2<u32>(1u, 1u), var_2.a, vec2<bool>(global0.x, false))).x)) >= _wgslsmith_f_op_f32(arg_1 - -946f));
    let var_3 = -445f;
    return func_2(vec4<bool>(!global0.x, false, global0.x, func_4(Struct_2(Struct_1(var_2.a, arg_2), 794f, Struct_1(var_2.a, 127404u)), func_2(vec4<bool>(global0.x, false, false, false), Struct_3(var_3, Struct_1(vec2<u32>(var_2.a.x, var_2.a.x), var_2.b), arg_2, true, global0.x)).a.a, vec2<u32>(8828u, arg_2)).x & all(!global0.yz)), Struct_3(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, global0.x, global0.x, false), global1[_wgslsmith_index_u32(1u, 28u)]).b + _wgslsmith_f_op_f32(step(905f, var_3))), Struct_1(var_2.a, 19219u), ~arg_0, !all(select(vec3<bool>(global0.x, global0.x, true), global0.yxw, global0.x)), any(!(!vec2<bool>(false, global0.x))))).c;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    var var_0 = firstLeadingBit(abs(vec2<i32>(u_input.b & 2147483647i, i32(-1i) * -1i) << (arg_2.b.a % vec2<u32>(32u))));
    let var_1 = func_2(vec4<bool>(false, true, arg_1.x, !any(vec3<bool>(true, true, true))), global1[_wgslsmith_index_u32(4294967295u, 28u)]).b;
    let var_2 = _wgslsmith_div_f32(-2873f, 654f);
    var_0 = min(vec2<i32>(-countOneBits(-var_0.x), abs(-46090i)), ~((u_input.a >> ((vec2<u32>(arg_3.b, 108752u) << (arg_0.a.a % vec2<u32>(32u))) % vec2<u32>(32u))) | u_input.a));
    var var_3 = _wgslsmith_dot_vec3_i32(reverseBits(~(~(vec3<i32>(-1178i, -2147483647i, var_0.x) ^ vec3<i32>(u_input.a.x, var_0.x, 17320i)))), select(~vec3<i32>(var_0.x, u_input.c >> (35778u % 32u), -u_input.c), select(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -22847i, 0i), vec3<i32>(var_0.x, -2147483647i, -18536i), vec3<i32>(-2147483647i, -15190i, var_0.x)), -vec3<i32>(9386i, -2147483647i, 2147483647i)), vec3<i32>(1i, var_0.x, abs(-16444i)), select(arg_1, func_4(Struct_2(Struct_1(vec2<u32>(56240u, 0u), 0u), -497f, arg_2.b), arg_3.a, arg_3.a).zzz, true && global0.x)), false));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(func_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -696f, global0.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 72494u, 0u), vec3<u32>(1u, 1u, 1u))), -761f, Struct_1(abs(func_5(Struct_2(Struct_1(vec2<u32>(4904u, 41481u), 76183u), 1168f, Struct_1(vec2<u32>(1u, 10271u), 1u))).a), 4294967295u)), func_4(Struct_2(func_5(func_2(vec4<bool>(global0.x, global0.x, true, true), global1[_wgslsmith_index_u32(0u, 28u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-372f, 542f))), func_2(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false)), global1[_wgslsmith_index_u32(~4294967295u, 28u)]).a), ~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(35118u, 0u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(20322u, 4294967295u), ~vec2<u32>(1u, 1u))).wxx, global1[_wgslsmith_index_u32(19396u, 28u)], func_2(!select(!vec4<bool>(global0.x, false, false, global0.x), !vec4<bool>(false, global0.x, false, false), any(vec2<bool>(global0.x, false))), Struct_3(1072f, Struct_1(vec2<u32>(1u, 1u), 4294967295u), ~reverseBits(72961u), global0.x, true)).c);
    var var_1 = var_0.b;
    var_0 = Struct_3(1f, func_1(firstTrailingBit(func_3(Struct_3(var_0.a, var_0.b, var_1.b, false, false), global1[_wgslsmith_index_u32(~76209u, 28u)]).x), _wgslsmith_f_op_f32(floor(var_0.a)), var_1.a.x), _wgslsmith_add_u32(65576u, 0u), global0.x, true | (any(vec4<bool>(global0.x, global0.x, false, global0.x)) | all(select(vec3<bool>(global0.x, global0.x, var_0.d), vec3<bool>(var_0.e, false, var_0.e), global0.zyw))));
    let var_2 = vec4<i32>(u_input.b, ~(-66284i >> ((reverseBits(20946u) | var_1.b) % 32u)), -2147483647i, -u_input.c);
    let var_3 = var_0.b;
    global0 = select(!vec4<bool>(any(vec4<bool>(true, var_0.d, var_0.d, true)), true, !(false && global0.x), var_0.e), vec4<bool>(func_7(func_2(!vec4<bool>(false, var_0.e, true, global0.x), Struct_3(767f, Struct_1(var_3.a, var_3.a.x), 22879u, true, true)), select(!global0.www, select(global0.xwy, global0.xyz, vec3<bool>(var_0.e, false, global0.x)), all(vec4<bool>(true, false, false, true))), global1[_wgslsmith_index_u32(~(~138163u), 28u)], func_7(Struct_2(var_0.b, -633f, Struct_1(var_1.a, 29343u)), global0.yxz, func_7(Struct_2(Struct_1(vec2<u32>(9424u, 750u), 23362u), var_0.a, var_0.b), global0.wyw, global1[_wgslsmith_index_u32(0u, 28u)], var_0.b), var_0.b).b).e, (var_0.a <= 674f) == ((1i >> (var_0.b.a.x % 32u)) != var_2.x), all(vec2<bool>(false, true)), true | all(select(vec3<bool>(var_0.e, false, var_0.d), global0.yzz, global0.zxx))), !all(!(!global0.xx)));
    var var_4 = global0.zxx;
    let var_5 = _wgslsmith_f_op_f32(ceil(var_0.a));
    var var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, -select(~2147483647i, var_2.x, all(vec2<bool>(false, global0.x)))), _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(2269u, ~1u)), 93585u, countOneBits(-(~(var_2 | vec4<i32>(var_2.x, 20497i, var_2.x, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), 122f) * _wgslsmith_f_op_f32(1f - -345f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1640f)), _wgslsmith_f_op_f32(floor(var_0.a)))));
}

