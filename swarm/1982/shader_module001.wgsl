struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-2134f, vec4<i32>(1i, 2147483647i, -18274i, 0i), -784f), Struct_1(968f, vec4<i32>(1i, -13730i, 5600i, -78573i), 1674f), Struct_1(-1000f, vec4<i32>(30615i, 1i, -50081i, -49681i), -304f), Struct_1(-117f, vec4<i32>(-32416i, -1i, 2147483647i, 1i), -446f), Struct_1(-102f, vec4<i32>(-37518i, 2147483647i, 11918i, -9191i), -636f), Struct_1(297f, vec4<i32>(i32(-2147483648), -63021i, 9249i, -20349i), -239f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = 41345i;
    let var_1 = true;
    let var_2 = Struct_1(arg_1.a, u_input.a, arg_1.a);
    let var_3 = 81686u;
    var var_4 = !(var_1 || var_1);
    return any(select(select(vec3<bool>(true, true, true), select(!vec3<bool>(var_1, var_1, var_1), !vec3<bool>(var_1, var_1, false), vec3<bool>(true, true, true)), u_input.d > select(u_input.d, 44678u, false)), !vec3<bool>(true, var_3 < 0u, false), !select(vec3<bool>(var_1, false, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, var_1), vec3<bool>(true, var_1, true)), var_1)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = firstLeadingBit(arg_2.b.x);
    let var_1 = u_input.d;
    var var_2 = any(!select(vec3<bool>(arg_0, true, false && arg_0), !(!vec3<bool>(true, arg_0, arg_0)), true));
    global0 = u_input.a >> (~min(vec4<u32>(var_1, 16212u, var_1 << (var_1 % 32u), 4294967295u), vec4<u32>(~0u, var_1 >> (45737u % 32u), ~u_input.d, countOneBits(0u))) % vec4<u32>(32u));
    let var_3 = Struct_2(Struct_1(arg_1, ~firstTrailingBit(vec4<i32>(-1627i, -1i, var_0, var_0)), arg_1), vec4<f32>(738f, _wgslsmith_f_op_f32(f32(-1f) * -1776f), arg_2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 131f))))), arg_2, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -866f)))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, arg_1)))));
    return select(!vec3<bool>(any(vec2<bool>(false, true)), abs(-36977i) != select(var_3.d.b.x, -6454i, arg_0), !(!arg_0)), vec3<bool>(!any(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), true)), arg_0 && !func_3(-2147483647i, Struct_1(arg_1, vec4<i32>(1i, global0.x, 1i, arg_2.b.x), arg_1)), false), select(!vec3<bool>(false, arg_0, !arg_0), select(select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), !arg_0, !arg_0), arg_0), true));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>) -> vec2<u32> {
    global1 = array<Struct_1, 6>();
    let var_0 = arg_0.x;
    let var_1 = true;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~((u_input.b | 12750i) | (global0.x | 0i)), firstTrailingBit(1i), _wgslsmith_add_i32(-11612i, global0.x)), countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.wzy, global0.yww, vec3<i32>(43072i, u_input.c, 1i)), -u_input.a.wwy), vec3<i32>(~global0.x, firstLeadingBit(global0.x), _wgslsmith_div_i32(u_input.b, -1i)))));
    global0 = u_input.a;
    return (_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(1559u, u_input.d)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(17423u, 27566u)), vec2<u32>(u_input.d, 4792u) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)))) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(81244u, u_input.d), vec2<u32>(0u, u_input.d) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))) << (vec2<u32>(~u_input.d & firstLeadingBit(select(5483u, 1u, var_1)), _wgslsmith_add_u32(~(~117595u), abs(~u_input.d))) % vec2<u32>(32u));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    global1 = array<Struct_1, 6>();
    let var_0 = vec2<u32>(~u_input.d & reverseBits(1u), abs(u_input.d)) >> (func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, 184f) + vec2<f32>(-1654f, -447f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1305f, 1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, -1000f)))), func_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -252f) + 295f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -233f), firstLeadingBit(vec4<i32>(1i, 17380i, u_input.a.x, global0.x)), _wgslsmith_f_op_f32(1000f + 873f)))) % vec2<u32>(32u));
    let var_1 = -1276f;
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2240f, var_1, var_1, 455f)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, 1220f, -535f, var_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(374f, 1424f, var_1, var_1) + vec4<f32>(var_1, var_1, var_1, 1518f))), any(select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, var_1, -730f, -509f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -498f, var_1, var_1))))), select(!(!arg_0), !vec4<bool>(false, true, arg_0.x, true), func_2(arg_0.x, _wgslsmith_f_op_f32(var_1 + var_1), global1[_wgslsmith_index_u32(abs(1u), 6u)]).x))), global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-300f, var_1), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))), !(!select(arg_0.ywx, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x))).x, 6u)], Struct_1(_wgslsmith_f_op_f32(ceil(463f)), ~u_input.a, var_1));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.yx) * var_2.b.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.wz + var_2.b.xx)))));
    return Struct_3(!arg_0.ywy, Struct_2(var_2.a, _wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(var_2.d.a, _wgslsmith_f_op_f32(var_1 + -1276f), _wgslsmith_f_op_f32(var_1 - 2572f), _wgslsmith_f_op_f32(-var_3.x))), var_2.c, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.x, reverseBits(u_input.d), u_input.d), ~(~vec4<u32>(u_input.d, 4294967295u, 70888u, var_0.x))), 6u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.d, 6u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.x)), var_3.x, 530f, _wgslsmith_f_op_f32(-var_1))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -247f), firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.x)))), var_2.c), Struct_2(global1[_wgslsmith_index_u32(~max(~57437u, 1u), 6u)], _wgslsmith_f_op_vec4_f32(max(var_2.b, var_2.b)), global1[_wgslsmith_index_u32(29007u, 6u)], Struct_1(318f, _wgslsmith_mod_vec4_i32(var_2.a.b, u_input.a) | var_2.c.b, _wgslsmith_div_f32(1000f, -2318f))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(1u & ~_wgslsmith_div_u32(~u_input.d, ~35788u), 37732u, ~abs(~u_input.d));
    let var_1 = func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.x, true, true & !arg_0.a.x, !all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x))), !any(vec3<bool>(true, false, true)))).b;
    var var_2 = var_1.c;
    var var_3 = arg_0;
    var_2 = func_1(select(select(select(select(vec4<bool>(false, arg_0.a.x, arg_0.a.x, var_3.a.x), vec4<bool>(true, arg_0.a.x, true, arg_0.a.x), false), select(vec4<bool>(false, var_3.a.x, false, false), vec4<bool>(true, true, false, var_3.a.x), vec4<bool>(false, true, arg_0.a.x, arg_0.a.x)), select(vec4<bool>(true, true, var_3.a.x, var_3.a.x), vec4<bool>(var_3.a.x, true, true, true), arg_0.a.x)), select(vec4<bool>(var_3.a.x, false, arg_0.a.x, var_3.a.x), vec4<bool>(false, false, false, var_3.a.x), true), select(vec4<bool>(var_3.a.x, var_3.a.x, false, arg_0.a.x), select(vec4<bool>(true, arg_0.a.x, false, true), vec4<bool>(false, false, false, false), var_3.a.x), select(vec4<bool>(false, true, false, arg_0.a.x), vec4<bool>(true, var_3.a.x, true, arg_0.a.x), vec4<bool>(false, false, var_3.a.x, true)))), !(!vec4<bool>(true, var_3.a.x, false, arg_0.a.x)), !(!select(vec4<bool>(true, arg_0.a.x, var_3.a.x, true), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, var_3.a.x), vec4<bool>(arg_0.a.x, true, arg_0.a.x, false))))).b.d;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(512f - 1308f))), _wgslsmith_f_op_f32(f32(-1f) * -453f))), min(vec4<i32>(_wgslsmith_mod_i32(0i, global0.x) | func_1(vec4<bool>(true, true, false, false)).c.c.b.x, firstLeadingBit(i32(-1i) * -2147483647i), -10012i, _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(var_1.c.b.x, var_3.c.c.b.x, 29690i))), -_wgslsmith_mult_vec4_i32(-var_1.a.b, abs(u_input.a))), 504f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(func_1(vec4<bool>(all(vec4<bool>(false, true, false, false)), true, u_input.a.x == u_input.b, true)), ~u_input.a.wxw, 300f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -773f, 247f, -460f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(532f, 853f, -1788f, -900f)))), vec4<f32>(-168f, _wgslsmith_f_op_f32(-345f * -774f), -1000f, _wgslsmith_f_op_f32(-1000f - -2384f)))), func_1(vec4<bool>(true, true, true, all(vec2<bool>(true, true)))).b.d, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(868f, -2573f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(860f)) - 2183f)), abs(abs(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(29459i, u_input.b, 29685i, u_input.b)))), 1367f));
    var var_1 = _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c.c))))));
    var var_2 = 1i;
    global0 = _wgslsmith_add_vec4_i32(~select(~(~u_input.a), vec4<i32>(firstLeadingBit(60002i), var_0.c.b.x, ~u_input.c, var_0.d.b.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true)), var_0.c.b);
    var var_3 = abs(select(countOneBits(-_wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(var_0.c.b.x, -43585i))), 41896i, !(!all(vec3<bool>(false, false, false)))));
    let var_4 = func_1(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true)))).b.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.x), max(vec4<i32>(2147483647i, -firstLeadingBit(global0.x), -2147483647i, 2147483647i), vec4<i32>(_wgslsmith_sub_i32(2147483647i, var_0.d.b.x) ^ var_4.b.x, -30850i, countOneBits(min(11483i, -1i)), _wgslsmith_mult_i32(var_0.a.b.x, -var_4.b.x))), ~(max(vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d), ~vec4<u32>(1u, u_input.d, 0u, u_input.d)) | vec4<u32>(19245u, ~1u, u_input.d, countOneBits(u_input.d))));
}

