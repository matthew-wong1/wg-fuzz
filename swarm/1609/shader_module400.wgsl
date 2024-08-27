struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-455f, -1107f, 827f, 818f, 405f, -266f, -1225f, 1097f, 242f, 404f, 441f);

var<private> global1: vec4<i32>;

var<private> global2: array<vec4<i32>, 30>;

var<private> global3: array<bool, 26>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = ~(~45783u);
    global3 = array<bool, 26>();
    global1 = abs(~(~(-(~global2[_wgslsmith_index_u32(var_0, 30u)]))));
    return global3[_wgslsmith_index_u32(var_0, 26u)];
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> vec4<u32> {
    var var_0 = any(vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) && arg_0.a.a, all(!vec3<bool>(global3[_wgslsmith_index_u32(28569u, 26u)], true, arg_0.a.a)), any(select(!vec2<bool>(true, arg_2), select(vec2<bool>(false, arg_0.a.a), vec2<bool>(false, arg_2), vec2<bool>(false, arg_0.c.a)), !vec2<bool>(arg_2, false))), global3[_wgslsmith_index_u32(~51350u, 26u)]));
    let var_1 = select(vec4<bool>(_wgslsmith_div_i32(global1.x, _wgslsmith_mult_i32(37622i, -8513i)) < 3012i, func_3() || true, arg_0.a.a, (all(vec4<bool>(true, false, true, arg_0.a.a)) || false) | arg_2), select(select(!(!vec4<bool>(false, false, arg_1.c.a, global3[_wgslsmith_index_u32(4294967295u, 26u)])), vec4<bool>(true, any(vec4<bool>(arg_2, false, global3[_wgslsmith_index_u32(11622u, 26u)], arg_0.c.a)), arg_0.a.a, select(arg_0.c.a, false, arg_2)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~22270u, 1u), 26u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], !global3[_wgslsmith_index_u32(4294967295u, 26u)], select(true, false, false), arg_0.a.a), select(vec4<bool>(!arg_0.a.a, arg_0.c.a, arg_0.c.a, arg_2), !(!vec4<bool>(arg_0.a.a, arg_0.a.a, false, global3[_wgslsmith_index_u32(12709u, 26u)])), select(vec4<bool>(arg_1.a.a, arg_1.c.a, false, false), select(vec4<bool>(true, false, arg_1.a.a, arg_1.c.a), vec4<bool>(true, arg_2, false, false), global3[_wgslsmith_index_u32(4294967295u, 26u)]), select(vec4<bool>(true, true, false, arg_0.c.a), vec4<bool>(true, false, global3[_wgslsmith_index_u32(36262u, 26u)], arg_0.c.a), false)))), arg_0.a.a);
    var var_2 = Struct_4(~select(vec3<u32>(82371u, 21571u, 0u), vec3<u32>(1u, 1u, 1u), global3[_wgslsmith_index_u32(firstTrailingBit(41960u), 26u)]) << (abs(select(vec3<u32>(1u, 38851u, 38909u), ~vec3<u32>(0u, 1u, 53451u), arg_1.a.a)) % vec3<u32>(32u)), arg_1.c, 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(109074u, 4294967295u))));
    var_0 = var_1.x;
    var var_3 = -14956i;
    return reverseBits(_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(21226u, var_2.a.x, var_2.a.x, 66050u), vec4<u32>(var_2.c, 13174u, 0u, 18884u)), firstTrailingBit(select(vec4<u32>(65500u, var_2.c, var_2.c, 0u), vec4<u32>(101824u, var_2.c, var_2.c, 59540u), var_1.x)))) >> (abs(~(~vec4<u32>(35069u, 19603u, var_2.a.x, var_2.c))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_3 {
    global3 = array<bool, 26>();
    var var_0 = ~(~(select(~vec4<i32>(4039i, global1.x, -629i, -2147483647i), global2[_wgslsmith_index_u32(1u, 30u)], true) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(96898u, arg_0.x), 30u)]));
    let var_1 = any(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x ^ arg_0.x, 26u)], global3[_wgslsmith_index_u32(7739u, 26u)], true, true & global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_0.x), 26u)]), select(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], true, global3[_wgslsmith_index_u32(14556u, 26u)], true), vec4<bool>(global3[_wgslsmith_index_u32(58506u, 26u)], true, any(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)])), !global3[_wgslsmith_index_u32(arg_0.x, 26u)]), !vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(arg_0.x, 26u)], true)), vec4<bool>(false, global3[_wgslsmith_index_u32(~6332u ^ ~arg_0.x, 26u)], false, all(!vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], false, true)))));
    var var_2 = func_4(Struct_3(Struct_1(func_3()), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_0.x), 34045u), 11u)], -1383f), Struct_1(global3[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(4294967295u)), 26u)])), Struct_3(Struct_1(var_1), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~4294967295u, 11u)], global0[_wgslsmith_index_u32(arg_0.x, 11u)])), Struct_1(true)), any(!vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true)));
    var var_3 = Struct_4(vec3<u32>(~48007u & ~arg_0.x, 5001u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, _wgslsmith_clamp_u32(var_2.x, 0u, 0u), 1u), ~(~var_2.zwy))), Struct_1(true), _wgslsmith_mod_u32(~arg_0.x, max(21159u, ~(~var_2.x))));
    return Struct_3(var_3.b, global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~10450u, var_2.x)), 11u)], Struct_1(func_3() || var_1));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> u32 {
    var var_0 = Struct_2(arg_1.c);
    var_0 = Struct_2(var_0.a);
    global2 = array<vec4<i32>, 30>();
    var var_1 = Struct_2(func_2(~select(vec2<u32>(75197u, 54934u), vec2<u32>(17855u, 1u), vec2<bool>(var_0.a.a, true)) & ~vec2<u32>(4294967295u, 22494u), u_input.a | (u_input.a >> (~vec3<u32>(4294967295u, 4294967295u, 4294967295u) % vec3<u32>(32u)))).c);
    global0 = array<f32, 11>();
    return ~25106u;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = vec4<u32>(~func_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -689f))), func_2(vec2<u32>(1u, 1u), ~u_input.a)), 115310u, 0u, func_4(Struct_3(Struct_1(all(vec3<bool>(false, true, true))), global0[_wgslsmith_index_u32(24694u, 11u)], Struct_1(true)), Struct_3(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(69302u, 0u), vec2<u32>(0u, 1u)), -vec3<i32>(global1.x, global1.x, -3760i)).a, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 67148u), 11u)], 256f), func_2(vec2<u32>(1u, 1u), global1.ywy >> (vec3<u32>(0u, 93449u, 1u) % vec3<u32>(32u))).a), true).x);
    global1 = reverseBits(select(min(abs(vec4<i32>(global1.x, global1.x, -1i, global1.x)), -(vec4<i32>(global1.x, global1.x, u_input.a.x, -43075i) >> (vec4<u32>(4294967295u, 46200u, 1u, 1u) % vec4<u32>(32u)))), global2[_wgslsmith_index_u32(max(var_0.x, var_0.x), 30u)], select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(1444u, 26u)], arg_0.a.a), !vec4<bool>(arg_0.a.a, arg_0.a.a, global3[_wgslsmith_index_u32(98773u, 26u)], true), vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], false, arg_0.a.a, true)), !select(vec4<bool>(true, true, arg_0.a.a, false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 26u)], true, false, true), arg_0.a.a))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(69740u, 11u)], -1092f), global0[_wgslsmith_index_u32(35939u, 11u)]);
    global1 = _wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(func_4(func_2(var_0.ww, abs(vec3<i32>(-2147483647i, -5940i, global1.x)) << (vec3<u32>(8313u, 4294967295u, 57629u) % vec3<u32>(32u))), func_2(abs(func_4(Struct_3(Struct_1(global3[_wgslsmith_index_u32(57563u, 26u)]), var_1.x, Struct_1(global3[_wgslsmith_index_u32(var_0.x, 26u)])), Struct_3(Struct_1(arg_0.a.a), var_1.x, arg_0.a), true).zz), ~global1.zxy), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1547f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-583f)))).x, 30u)], _wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, var_0.x << (var_0.x % 32u))), 30u)], max(min(global2[_wgslsmith_index_u32(var_0.x, 30u)], vec4<i32>(-8668i, u_input.a.x, -51320i, global1.x)) & vec4<i32>(1i, -135i, 0i, global1.x), vec4<i32>(global1.x, -global1.x, 26986i, u_input.a.x))));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.x, var_0.x, 0u)), var_0.wwz), ~1u), var_0.x >> ((0u ^ abs(var_0.x & var_0.x)) % 32u), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), Struct_3(func_2(select(var_0.ww, vec2<u32>(var_0.x, 1u), vec2<bool>(global3[_wgslsmith_index_u32(35804u, 26u)], arg_0.a.a)), abs(vec3<i32>(-9457i, 47932i, 891i))).a, 423f, Struct_1(true))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 30>();
    global2 = array<vec4<i32>, 30>();
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(9854u, 14637u))) >> (1u % 32u), 11u)], global0[_wgslsmith_index_u32(1u, 11u)]);
    global1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, u_input.a.x, ~(-u_input.a.x), (0i ^ u_input.a.x) & firstTrailingBit(-19527i)), vec4<i32>(func_1(Struct_2(Struct_1(false))), ~42158i, -22714i, select(global1.x, u_input.a.x, global3[_wgslsmith_index_u32(2092u, 26u)])) | vec4<i32>(~u_input.a.x, abs(global1.x), 1i, abs(-2147483647i)), abs(_wgslsmith_add_vec4_i32(global2[_wgslsmith_index_u32(1u, 30u)] << (vec4<u32>(4294967295u, 0u, 7506u, 0u) % vec4<u32>(32u)), vec4<i32>(global1.x, u_input.a.x, global1.x, 2147483647i))));
    var var_2 = reverseBits(vec3<u32>(select(func_4(Struct_3(Struct_1(false), global0[_wgslsmith_index_u32(0u, 11u)], Struct_1(global3[_wgslsmith_index_u32(0u, 26u)])), Struct_3(Struct_1(true), 278f, Struct_1(global3[_wgslsmith_index_u32(185u, 26u)])), global3[_wgslsmith_index_u32(1u, 26u)]).x, ~0u, global3[_wgslsmith_index_u32(~0u, 26u)]), ~0u, ~4294967295u) & max(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 69512u, 0u), reverseBits(vec3<u32>(4294967295u, 26807u, 76837u))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, 0u, 88939u), vec3<u32>(1u, 35170u, 5674u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(83022u, 4608u, 32481u), vec3<u32>(13829u, 50920u, 2273u), vec3<u32>(1u, 21247u, 11778u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global1.x, i32(-1i) * -(~u_input.a.x)), func_4(func_2(vec2<u32>(var_2.x, var_2.x), global1.xwy), Struct_3(func_2(vec2<u32>(var_2.x, var_2.x), vec3<i32>(global1.x, global1.x, -9659i)).a, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.x, 11u)], global0[_wgslsmith_index_u32(103200u, 11u)]), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 26u)])), global3[_wgslsmith_index_u32(4294967295u, 26u)]).x | var_2.x);
}

