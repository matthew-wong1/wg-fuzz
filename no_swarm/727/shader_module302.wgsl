struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-188f, -1000f, -731f, -1259f, 310f, 704f, 1000f, -1252f, -638f, -202f, 368f, -270f, 718f, 1000f, -105f, -1183f, 756f, -1000f);

var<private> global1: Struct_3;

var<private> global2: array<i32, 25>;

var<private> global3: vec3<i32> = vec3<i32>(-1i, -18173i, -72326i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = abs(vec2<i32>(235i, max(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a, global3.x, global1.b, u_input.a)), u_input.b), max(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, global1.b, global3.x), u_input.b.zzw), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, u_input.c, 43067i), vec3<i32>(-2147483647i, -29130i, global3.x))))));
    return Struct_3(Struct_2(select(min(~1u, 59701u), ~_wgslsmith_div_u32(arg_0.x, global1.d.x), any(select(vec4<bool>(true, arg_3.x, false, false), vec4<bool>(arg_1, arg_3.x, false, true), false)))), global3.x, global1.c, vec2<u32>(4294967295u, global1.c.a));
}

fn func_3() -> bool {
    global2 = array<i32, 25>();
    global2 = array<i32, 25>();
    var var_0 = max(abs(-u_input.b.yz), global3.xy);
    let var_1 = global3.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_f32(min(-1043f, -1032f)), true)))))) + -1991f);
    return false;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    global3 = vec3<i32>(2147483647i, u_input.b.x, ~((i32(-1i) * -1i) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, global1.d.x, 1u), vec4<u32>(71528u, global1.d.x, 0u, global1.c.a)) % 32u)));
    var var_0 = -1696f;
    global2 = array<i32, 25>();
    var_0 = -955f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.x)));
    return !select(arg_1.xx, !select(vec2<bool>(arg_1.x, false), arg_1.xz, all(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), arg_1.zy);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = 0i;
    global1 = func_2(~firstTrailingBit(global1.d), !(!any(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a))), countOneBits(_wgslsmith_div_vec3_u32(~arg_0.d.wxy, ~arg_0.d.yxx)) >> (arg_0.d.xzx % vec3<u32>(32u)), !(!select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), !arg_0.a)));
    var var_1 = reverseBits(global1.c.a) | 1u;
    var var_2 = func_2(arg_0.d.zz, any(func_4(-292f, vec3<bool>(arg_0.a, func_3(), 1u != arg_0.d.x), 62998u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(arg_3)))))), arg_0.d.wwx >> (select(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global1.a.a, global1.d.x, 4294967295u)), ~vec3<u32>(arg_0.d.x, 0u, 1u)), ~(arg_0.d.xyw >> (arg_0.d.wwz % vec3<u32>(32u))), arg_0.a) % vec3<u32>(32u)), select(!vec2<bool>(arg_0.a, !arg_0.a), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -436f))), vec3<bool>(true, all(vec3<bool>(true, false, true)), arg_3.x < -742f), _wgslsmith_mult_u32(abs(30131u), arg_0.d.x), vec2<f32>(139f, _wgslsmith_f_op_f32(trunc(720f)))), func_4(-487f, select(!vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, false, false), arg_0.a), global1.a.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3), vec2<f32>(-388f, 391f)))));
    var var_3 = global1.d.x;
    return func_2(~vec2<u32>(~var_2.c.a, 4294967295u), func_3(), arg_0.d.xzy, !vec2<bool>(arg_0.a, false)).c;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global3 = u_input.b.zzy;
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~arg_0.c.a, 18u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 18u)]))))), global0[_wgslsmith_index_u32(~1u, 18u)]));
    global1 = Struct_3(arg_0.a, -13401i, Struct_2(global1.d.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a, 0u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(arg_0.d.x, 4294967295u)), 1u), ~vec2<u32>(_wgslsmith_div_u32(14217u, 23700u), arg_0.d.x ^ global1.a.a), _wgslsmith_div_vec2_u32(~select(arg_0.d, arg_0.d, vec2<bool>(true, false)), ~vec2<u32>(arg_0.d.x, 4294967295u))));
    var_0 = 2222f;
    var var_1 = 1i;
    return Struct_2(global1.d.x);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = false;
    let var_1 = u_input.a & _wgslsmith_div_i32(-61339i, abs(_wgslsmith_add_i32(countOneBits(22115i), _wgslsmith_add_i32(1i, u_input.b.x))));
    let var_2 = func_2(abs(~_wgslsmith_mod_vec2_u32(global1.d, countOneBits(arg_2.yx))), func_3(), vec3<u32>(71972u, 59536u, ~func_1(Struct_1(var_0, -2147483647i, global1.b, vec4<u32>(global1.c.a, 0u, arg_0.a, arg_3), vec2<f32>(1000f, global0[_wgslsmith_index_u32(arg_2.x, 18u)])), 523f, firstTrailingBit(u_input.b.yzy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, global0[_wgslsmith_index_u32(arg_2.x, 18u)]))).a), select(!vec2<bool>(var_0, true), !vec2<bool>(global3.x < 2147483647i, true), vec2<bool>(false, true)));
    var var_3 = func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, firstLeadingBit(arg_0.a)), arg_2.yx, ~vec2<u32>(arg_1.x, 0u) << (arg_1.yz % vec2<u32>(32u))), all(select(vec3<bool>(true, var_0, var_0), select(!vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0), any(vec4<bool>(var_0, false, true, var_0))), (-73463i <= var_1) && var_0)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.a, 1u, var_2.d.x)) >> ((arg_1 & countOneBits(vec3<u32>(4294967295u, arg_2.x, arg_3))) % vec3<u32>(32u)), max(arg_2, vec3<u32>(firstLeadingBit(1u), ~5527u, var_2.d.x))), select(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1728f * global0[_wgslsmith_index_u32(global1.c.a, 18u)])), vec3<bool>(func_4(global0[_wgslsmith_index_u32(arg_0.a, 18u)], vec3<bool>(var_0, var_0, var_0), var_2.d.x, vec2<f32>(1628f, 2076f)).x, var_0, !var_0), ~(~0u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_2.c.a, 18u)], 1622f) - vec2<f32>(global0[_wgslsmith_index_u32(15843u, 18u)], global0[_wgslsmith_index_u32(global1.d.x, 18u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(33457u, 18u)], 2669f))))), select(!select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(var_0, true)), vec2<bool>(any(vec2<bool>(var_0, var_0)), true), ~var_2.d.x > ~arg_2.x), func_4(global0[_wgslsmith_index_u32(arg_2.x, 18u)], select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, var_0, false), false), vec3<bool>(var_0, true, var_0)), _wgslsmith_clamp_u32(min(arg_1.x, arg_1.x), arg_0.a, 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.x, 18u)] - -1150f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.d.x, 18u)]))).x));
    global0 = array<f32, 18>();
    return var_2;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = func_2(select(select(vec2<u32>(func_6(Struct_2(88517u), vec3<u32>(75587u, arg_1.a, 1u), vec3<u32>(arg_2.a.a, 0u, 32361u), arg_2.c.a).d.x, ~0u), ~vec2<u32>(global1.c.a, 0u), false), vec2<u32>(4294967295u, 0u), select(vec2<bool>(false, !arg_3), !(!vec2<bool>(true, arg_3)), arg_3)), arg_3, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a, 36014u) << (vec2<u32>(global1.c.a, arg_2.c.a) % vec2<u32>(32u)), vec2<u32>(21401u, global1.c.a)), _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(arg_2.a.a, 31002u, global1.c.a, 1550u), vec4<u32>(1u, arg_2.a.a, 0u, 47471u))), abs(~vec4<u32>(arg_0.a.a, arg_2.c.a, arg_2.c.a, arg_0.c.a))), _wgslsmith_mod_u32(4294967295u, arg_0.a.a)), !func_4(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(56852u, 18u)])), !(!vec3<bool>(true, arg_3, true)), 7558u, vec2<f32>(-1622f, global0[_wgslsmith_index_u32(arg_2.a.a | global1.a.a, 18u)])));
    let var_1 = vec2<bool>(any(vec4<bool>(!arg_3, false, arg_3, any(!vec2<bool>(arg_3, arg_3)))), !(!all(select(vec3<bool>(arg_3, true, true), vec3<bool>(false, arg_3, true), arg_3))));
    global0 = array<f32, 18>();
    return Struct_3(Struct_2(4294967295u), _wgslsmith_mult_i32(_wgslsmith_sub_i32(~0i, firstTrailingBit(-42524i)), -17722i), global1.a, arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(global1.c.a) & 1u;
    global1 = func_7(Struct_3(global1.c, ~global3.x, Struct_2(~(~var_0)), firstTrailingBit(global1.d)), global1.a, func_6(func_5(Struct_3(func_1(Struct_1(true, global1.b, global2[_wgslsmith_index_u32(69173u, 25u)], vec4<u32>(var_0, 4294967295u, 0u, global1.c.a), vec2<f32>(global0[_wgslsmith_index_u32(var_0, 18u)], -1000f)), -494f, vec3<i32>(-2147483647i, 30915i, 2147483647i), vec2<f32>(-2021f, global0[_wgslsmith_index_u32(var_0, 18u)])), global1.b, func_1(Struct_1(false, 2147483647i, global3.x, vec4<u32>(4602u, 35187u, var_0, 4294967295u), vec2<f32>(global0[_wgslsmith_index_u32(global1.c.a, 18u)], 911f)), global0[_wgslsmith_index_u32(global1.d.x, 18u)], vec3<i32>(-2147483647i, global3.x, global2[_wgslsmith_index_u32(var_0, 25u)]), vec2<f32>(global0[_wgslsmith_index_u32(global1.c.a, 18u)], -243f)), max(global1.d, global1.d))), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(1u), 4294967295u, global1.a.a), 51879u, ~firstTrailingBit(global1.c.a)), vec3<u32>(global1.d.x, 49953u, ~func_5(Struct_3(global1.a, 0i, Struct_2(var_0), global1.d)).a), 99223u), all(vec2<bool>(true, func_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 18u)]), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), var_0, vec2<f32>(1255f, global0[_wgslsmith_index_u32(var_0, 18u)])).x)));
    global3 = _wgslsmith_add_vec3_i32(vec3<i32>(-(~global2[_wgslsmith_index_u32(~global1.c.a, 25u)]), i32(-1i) * -global1.b, ~select(-4400i, -21568i, true)), u_input.b.wzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~(~var_0), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(var_0, 18u)])), func_3() & true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1060f, global0[_wgslsmith_index_u32(35783u, 18u)]))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1183f, -1000f) * vec2<f32>(547f, global0[_wgslsmith_index_u32(var_0, 18u)])))))), abs(func_2(~(vec2<u32>(var_0, var_0) >> (global1.d % vec2<u32>(32u))), false, vec3<u32>(firstTrailingBit(global1.a.a), ~1u, func_5(Struct_3(global1.c, global3.x, global1.a, global1.d)).a), vec2<bool>(true, true)).b), _wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(global1.c.a, var_0, var_0, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0, global1.a.a, var_0, 0u), ~(vec4<u32>(39304u, 0u, 4294967295u, 4294967295u) ^ vec4<u32>(global1.c.a, 1u, 55714u, 49838u)))));
}

