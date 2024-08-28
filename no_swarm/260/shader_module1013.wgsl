struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(45680i, -47280i), vec4<i32>(-23245i, 40582i, -20843i, -1i));

var<private> global2: array<i32, 15> = array<i32, 15>(2147483647i, i32(-2147483648), -1i, i32(-2147483648), 0i, 2147483647i, 10914i, 0i, 1i, -1i, -34126i, -28948i, -10914i, -5176i, i32(-2147483648));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<i32> {
    global1 = Struct_1(vec2<i32>(arg_1.b.x, u_input.b), vec4<i32>(select(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_0, 15u)] ^ -15115i, _wgslsmith_div_i32(1i, arg_1.b.x)), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(45707u, u_input.c), 15u)], select(global0[_wgslsmith_index_u32(min(arg_1.a, u_input.c), 11u)], false, true)), _wgslsmith_dot_vec3_i32(abs(global1.b.www), -vec3<i32>(u_input.b, arg_1.b.x, u_input.b)) ^ _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, arg_1.b.x, -13661i), ~u_input.b), firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~80046u), 15u)]), _wgslsmith_mod_i32(-23697i, abs(select(2147483647i, 9907i, false)))));
    global0 = array<bool, 11>();
    let var_0 = arg_0;
    let var_1 = Struct_1(vec2<i32>(-1i, global1.a.x), _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4537u, 15u)], -7092i, global1.b.x, 0i), global1.b << (vec4<u32>(var_0, 4294967295u, arg_1.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.x >> (8185u % 32u), 6975i, -1i, 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, 3044i, 2116i), global1.b.xww), 4199i, global1.b.x << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(23750i, u_input.b), arg_1.b)))));
    var var_2 = var_1;
    return var_2.a;
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = abs(func_3(min(_wgslsmith_mod_u32(1u, u_input.c), ~1u >> (arg_0 % 32u)), Struct_2(~(~arg_0), vec2<i32>(global1.b.x, min(global1.a.x, 0i)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-307f - 607f), _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-174f, -452f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2298f, -1557f, -871f, -618f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, var_1.x, var_1.x, -1000f) * vec4<f32>(var_1.x, var_1.x, var_1.x, 1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-290f, 805f, var_1.x, var_1.x), vec4<f32>(201f, 378f, 488f, var_1.x), vec4<bool>(false, true, false, false)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, -202f, 317f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 475f, 631f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 288f, -401f, var_1.x) - vec4<f32>(1023f, var_1.x, var_1.x, 130f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -482f, var_1.x, -387f)), true))), vec4<bool>(false, all(vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(3837u, 11u)], global0[_wgslsmith_index_u32(5741u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)])), select(global0[_wgslsmith_index_u32(28859u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))), false, (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(30738u, 4294967295u)), 11u)] & all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]))) == global0[_wgslsmith_index_u32(1u, 11u)])));
    var var_3 = -func_3(arg_0, Struct_2(~arg_0, vec2<i32>(-28182i, -11294i) & global1.b.xw)).x << (_wgslsmith_add_u32(~(u_input.c | u_input.d) >> ((_wgslsmith_mult_u32(61566u, u_input.c) | (arg_0 ^ 0u)) % 32u), u_input.c) % 32u);
    var var_4 = vec4<u32>(~(~22284u), 25855u, 0u, countOneBits(~(firstLeadingBit(15355u) >> (_wgslsmith_clamp_u32(arg_0, 0u, 25210u) % 32u))));
    return global0[_wgslsmith_index_u32(arg_0, 11u)];
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(select(~(~vec4<u32>(0u, 39402u, u_input.d, 475u)), vec4<u32>(reverseBits(u_input.c), ~u_input.d, u_input.c | u_input.d, u_input.d), true), max(max(vec4<u32>(u_input.c, 31335u, u_input.d, u_input.c), vec4<u32>(u_input.d, u_input.d, u_input.d, 32499u)), ~vec4<u32>(1u, 0u, 34668u, 4294967295u)) & max(countOneBits(vec4<u32>(u_input.c, 1273u, 30955u, u_input.c)), ~vec4<u32>(u_input.d, u_input.d, u_input.c, 1u))), vec4<u32>(u_input.c, u_input.c, reverseBits(4294967295u), u_input.d));
    let var_2 = Struct_2(0u, -vec2<i32>(global2[_wgslsmith_index_u32(51697u, 15u)] ^ (-14426i | arg_3.a.x), arg_3.a.x));
    global1 = Struct_1(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_2.b.x, var_0.b.x) >> (var_1.yz % vec2<u32>(32u))), arg_3.b.xw), vec4<i32>(_wgslsmith_sub_i32(-44034i, -(~(-77970i))), i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(global2[_wgslsmith_index_u32(27045u, 15u)]), arg_2, 0i), ~vec3<i32>(1454i, var_2.b.x, var_2.b.x)), arg_3.b.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-139f, _wgslsmith_f_op_f32(select(762f, -1357f, global0[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_f_op_f32(-955f * 1000f), -274f)))))));
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(165f));
    var var_1 = global1.a.x;
    let var_2 = -vec2<i32>(-2147483647i, select(0i, -global1.b.x, !global0[_wgslsmith_index_u32(u_input.c, 11u)]));
    var var_3 = func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 11u)], func_2(_wgslsmith_sub_u32(72388u, 16843u)), global0[_wgslsmith_index_u32(~select(69920u, 90243u, global0[_wgslsmith_index_u32(arg_0.a, 11u)]), 11u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1199u, 57467u, 19971u, 84383u) ^ arg_1, arg_1 << (vec4<u32>(arg_0.a, 4744u, 61818u, 26929u) % vec4<u32>(32u))), 11u)]), !vec4<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(18849u, 11u)], global0[_wgslsmith_index_u32(42660u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], true)), global0[_wgslsmith_index_u32(49297u >> (1u % 32u), 11u)], true), func_2(~arg_0.a)), any(vec4<bool>(_wgslsmith_clamp_i32(30567i, -1i, global1.a.x) < -u_input.a, !(u_input.a < global2[_wgslsmith_index_u32(4294967295u, 15u)]), false, select(false, global0[_wgslsmith_index_u32(0u, 11u)] | false, any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 11u)]))))), abs(i32(-1i) * -firstTrailingBit(var_2.x)), Struct_1(vec2<i32>(-32634i, -2147483647i) | global1.b.wz, global1.b));
    var var_4 = Struct_1(var_3.b, vec4<i32>(~u_input.a, global2[_wgslsmith_index_u32(countOneBits(4294967295u), 15u)], 2709i, _wgslsmith_dot_vec2_i32(var_3.b, reverseBits(vec2<i32>(global1.b.x, 0i)) & -vec2<i32>(global2[_wgslsmith_index_u32(59298u, 15u)], var_2.x))));
    return func_4(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 11u)], true, all(vec2<bool>(false, true))), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(28717u, 11u)], global0[_wgslsmith_index_u32(var_3.a, 11u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(var_3.a, 11u)], false, true), global0[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(67185u, 11u)], true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 11u)], global0[_wgslsmith_index_u32(41269u, 11u)], false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(arg_1.x, 11u)]), global0[_wgslsmith_index_u32(u_input.c, 11u)])), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 11u)], true, global0[_wgslsmith_index_u32(u_input.d, 11u)]), false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_3.a, 11u)], false, global0[_wgslsmith_index_u32(16121u, 11u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)], true, global0[_wgslsmith_index_u32(49969u, 11u)]), global0[_wgslsmith_index_u32(var_3.a, 11u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], global0[_wgslsmith_index_u32(var_3.a, 11u)], true, true))), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x | u_input.c, 11u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.c, 11u)])), global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)])), vec4<bool>(!any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(arg_1.x, 11u)])), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_3.a, 11u)])), false, true)), false, -2147483647i, Struct_1(vec2<i32>(-23194i, -1i), vec4<i32>(var_2.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(var_3.b.x, var_2.x), _wgslsmith_mod_i32(0i, 2398i)), ~(-59260i), var_2.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(abs(arg_3.a), vec4<i32>(-(arg_3.b.x & ~u_input.b), _wgslsmith_div_i32(_wgslsmith_sub_i32(firstLeadingBit(arg_1.b.x), ~2147483647i), 1i), 0i, ~(~(~global2[_wgslsmith_index_u32(68387u, 15u)]))));
    var var_1 = arg_3.b.xwy ^ arg_3.b.xyz;
    var var_2 = 845f;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1160f + _wgslsmith_f_op_f32(-860f * -1011f))));
    var_1 = firstLeadingBit(~var_0.b.yzy);
    return 0i << (select(abs(4294967295u), 4294967295u, any(!arg_2)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((select(-1i, global2[_wgslsmith_index_u32(firstLeadingBit(u_input.d), 15u)], u_input.c < u_input.d) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(u_input.c), u_input.d), 15u)]) > 33098i) | true;
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_1 = vec3<bool>(false, -func_5(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d, 11u)]), func_1(Struct_2(u_input.c, global1.b.xz), vec4<u32>(1u, 45737u, 4294967295u, 5406u)), vec4<bool>(true, true, true, true), Struct_1(global1.a, vec4<i32>(u_input.a, global1.b.x, -23869i, u_input.a))) > (i32(-1i) * -10251i), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(48868u, u_input.c)), ~vec2<u32>(18457u, 1u)) < max(107656u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13919u), vec2<u32>(u_input.c, 4294967295u)) >> (u_input.d % 32u)));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(countOneBits(_wgslsmith_div_i32(~u_input.a, 8575i)), i32(-1i) * -7560i, func_3(_wgslsmith_clamp_u32(u_input.d, 1u, countOneBits(u_input.d)), Struct_2(~u_input.d, global1.b.wy ^ global1.a)).x, 0i), ~(-abs(vec4<i32>(-13838i, u_input.a, global1.b.x, u_input.a))));
    global2 = array<i32, 15>();
    var_2 = vec4<i32>(_wgslsmith_add_i32(-func_4(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 11u)], false, true, true), global0[_wgslsmith_index_u32(~8300u, 11u)], _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.d, 15u)], var_2.x, -38887i), Struct_1(vec2<i32>(global2[_wgslsmith_index_u32(1u, 15u)], 0i), vec4<i32>(global1.a.x, -8167i, -2147483647i, global2[_wgslsmith_index_u32(u_input.d, 15u)]))).b.x, -41865i), abs(global1.a.x), global1.a.x, countOneBits(35472i));
    var var_3 = -739f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-933f, 498f, 468f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-382f, 468f, -823f)), select(vec3<bool>(var_1.x, true, global0[_wgslsmith_index_u32(u_input.c, 11u)]), var_1, vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(62666u, 11u)], false)))))), _wgslsmith_mult_vec2_u32(countOneBits(firstLeadingBit(~vec2<u32>(6329u, 26804u))), vec2<u32>(reverseBits(u_input.c), u_input.d) & (vec2<u32>(25978u, 1u) ^ select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(73718u, 1u), global0[_wgslsmith_index_u32(12159u, 11u)]))), -2147483647i, _wgslsmith_clamp_i32(var_2.x, 1i, u_input.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(109f, _wgslsmith_f_op_f32(round(372f))))))));
}

