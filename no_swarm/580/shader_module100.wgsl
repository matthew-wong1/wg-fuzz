struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(54340u, 80974u, 16656u, 20498u), -2124i, 531f, vec4<i32>(1i, 23521i, 2147483647i, 0i)));

var<private> global3: array<u32, 27>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = global0.a;
    global1 = 8722u;
    var var_1 = global3[_wgslsmith_index_u32(var_0.a.x, 27u)];
    var var_2 = _wgslsmith_div_u32(u_input.d.x, reverseBits(u_input.d.x));
    let var_3 = _wgslsmith_add_vec4_i32(global0.a.d, -(~(-_wgslsmith_mod_vec4_i32(global2.a.d, global2.a.d))));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(global2.a.d, vec4<i32>(reverseBits(global0.a.b), u_input.a, _wgslsmith_mod_i32(var_3.x | 0i, 12151i), 0i)), vec4<i32>(8332i, abs(global2.a.d.x), global2.a.b, -(~(-2147483647i))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    global1 = ~(~u_input.d.x & global0.a.a.x);
    var var_0 = Struct_1(~arg_1.a, 0i, _wgslsmith_f_op_f32(floor(874f)), vec4<i32>(-11754i, arg_1.d.x, select(~_wgslsmith_mod_i32(u_input.c, 4447i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), global2.a.d.zy), max(global2.a.d.x, -37201i)), false), _wgslsmith_mult_i32(min(i32(-1i) * -57224i, countOneBits(u_input.a)), ~global2.a.b & ~global2.a.d.x)));
    global1 = global3[_wgslsmith_index_u32(~4294967295u & ~global3[_wgslsmith_index_u32(firstLeadingBit(~0u), 27u)], 27u)];
    global1 = 1u;
    global0 = Struct_2(global0.a);
    return _wgslsmith_add_vec2_i32(global0.a.d.xy & select(firstLeadingBit(global0.a.d.xy), global0.a.d.wx | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-2147483647i, -1i)), false), global2.a.d.wx);
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    global1 = 32221u;
    var var_0 = -func_4(_wgslsmith_mult_u32(4872u << (global0.a.a.x % 32u), 98162u) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(49255u, global2.a.a.x, global2.a.a.x), vec3<u32>(global2.a.a.x, 0u, 11963u)) % 32u), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], u_input.d.x, global2.a.a.x, u_input.d.x), vec4<u32>(global3[_wgslsmith_index_u32(57754u, 27u)], global0.a.a.x, global0.a.a.x, 27797u)), arg_0, _wgslsmith_div_f32(-459f, _wgslsmith_f_op_f32(-global0.a.c)), func_3()));
    global1 = ~42316u;
    global2 = Struct_2(Struct_1(global0.a.a, _wgslsmith_sub_i32(~global2.a.b, abs(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c) + _wgslsmith_div_f32(global2.a.c, 516f))), _wgslsmith_mod_vec4_i32(-global2.a.d & vec4<i32>(51630i, global0.a.d.x, var_0.x, arg_0), ~vec4<i32>(var_0.x, global0.a.d.x, arg_0, global0.a.b))));
    let var_1 = func_3().x;
    return !(!any(select(!vec3<bool>(true, arg_1, true), vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1))));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(u_input.a, max(-2737i, -global2.a.d.x)) & global0.a.d.x;
    let var_1 = ~(_wgslsmith_mod_i32(-52697i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global0.a.d.x, arg_1.a.d.x), vec3<i32>(-32894i, -2493i, var_0))) >> (~abs(global0.a.a.x) % 32u)) << (~u_input.d.x % 32u);
    global2 = Struct_2(global2.a);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(arg_2.x * 189f)), 1332f))), _wgslsmith_div_f32(-408f, 2259f));
    let var_3 = _wgslsmith_mult_i32(2147483647i, global0.a.b);
    return global2.a;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_5(!(!func_2(u_input.b, true) & false), Struct_2(Struct_1(vec4<u32>(u_input.d.x | 8883u, global2.a.a.x, 1u, global2.a.a.x), _wgslsmith_add_i32(0i, ~51840i), global2.a.c, vec4<i32>(firstTrailingBit(global2.a.d.x), 0i << (1u % 32u), -1i, 29883i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(global0.a.c, 935f), _wgslsmith_f_op_f32(global0.a.c - -1000f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(435f, global0.a.c), vec2<f32>(478f, 979f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.c, _wgslsmith_div_f32(-1000f, global0.a.c)))));
    var var_1 = ~abs(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(21209u, var_0.a.x), 27u)]) <= ~18430u;
    var var_2 = global0.a.c;
    var_0 = global0.a;
    global2 = Struct_2(func_5(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), Struct_2(func_5(true, Struct_2(Struct_1(vec4<u32>(1u, 42610u, global3[_wgslsmith_index_u32(1u, 27u)], global2.a.a.x), 1i, -313f, global0.a.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.c, 622f), vec2<f32>(-488f, 782f), vec2<bool>(true, true))), _wgslsmith_f_op_f32(step(1000f, 236f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.c)), global2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(sign(1348f)), true)))));
    return select(!select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), any(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, all(vec3<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(false, true, false, true)))), !any(vec3<bool>(true, true, true))), all(!vec2<bool>(true, 1310f == var_0.c)));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_2 {
    global1 = u_input.d.x;
    let var_0 = global2.a.d.x & arg_1.x;
    global1 = reverseBits(max(1u, ~(~global3[_wgslsmith_index_u32(1u, 27u)] | ~u_input.d.x)));
    global2 = Struct_2(func_5(arg_2.x, Struct_2(Struct_1(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], global2.a.a.x, 12928u, 30489u), u_input.a, -1227f, vec4<i32>(65720i, arg_1.x, -8124i, 0i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global0.a.c)), _wgslsmith_div_vec2_f32(arg_0.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2005f, -625f) + arg_0.yy))), global2.a.c));
    var var_1 = ~vec4<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 9047u, 32367u, 0u), ~global0.a.a), 23389u, !any(arg_2)), _wgslsmith_dot_vec3_u32(global2.a.a.wxy, vec3<u32>(~0u, 0u, ~37031u)), ~global2.a.a.x, (global0.a.a.x << (4294967295u % 32u)) | global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(25828u ^ global3[_wgslsmith_index_u32(u_input.d.x, 27u)], ~4294967295u), 27u)]);
    return Struct_2(global2.a);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global1 = 1u;
    return func_6(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-377f, 1076f))), _wgslsmith_f_op_f32(trunc(-673f)), -391f))), func_6(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(905f, arg_0.a.c, 567f) + vec3<f32>(global0.a.c, 545f, arg_1.c)))))), global2.a.d, func_1()).a.d, select(vec4<bool>(false, true, 4294967295u >= arg_1.a.x, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global2.a.c, global2.a.c)), 1219f, global0.a.c)), _wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(global0.a.d, global0.a.d), _wgslsmith_sub_vec4_i32(~global0.a.d, -vec4<i32>(22540i, global0.a.d.x, -2147483647i, u_input.c))), !func_1()), func_5(!(true || func_2(global0.a.b, true)), func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.c, global2.a.c, global0.a.c), vec3<f32>(global2.a.c, global2.a.c, -394f))), global0.a.d, func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c, -320f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.c, global0.a.c)), true))), global2.a.c), ~_wgslsmith_mult_u32(u_input.d.x, global3[_wgslsmith_index_u32(~u_input.d.x, 27u)]));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-980f)) + _wgslsmith_f_op_f32(ceil(168f))))))), _wgslsmith_f_op_f32(f32(-1f) * -599f)));
    global3 = array<u32, 27>();
    let var_2 = global0.a;
    let var_3 = select(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.c) * -251f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) * _wgslsmith_f_op_f32(min(var_2.c, -1000f))), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), global2.a.c < global2.a.c), vec2<bool>(13634u <= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(114752u, 27u)], 27u)], all(vec3<bool>(false, true, true))), vec2<bool>(true, true)), true);
    global2 = var_0;
    let var_4 = Struct_2(func_5(_wgslsmith_f_op_f32(var_2.c + 525f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.c), func_6(vec3<f32>(-579f, -1834f, var_0.a.c), vec4<i32>(51217i, var_2.b, -1i, var_2.b), vec4<bool>(true, true, var_3.x, false)).a.c), func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, global0.a.c, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -316f, var_0.a.c))), firstTrailingBit(~var_2.d), vec4<bool>(true, all(var_3), all(vec2<bool>(var_3.x, var_3.x)), var_3.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_1) - vec2<f32>(215f, -977f)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c, global2.a.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.c, -1035f) * vec2<f32>(1903f, var_1))))), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1506f, var_2.c, 1588f), vec3<f32>(1719f, var_2.c, var_0.a.c), vec3<bool>(false, false, false))), ~var_2.d, func_1()).a.c + var_2.c)));
    var var_5 = _wgslsmith_f_op_f32(global2.a.c - -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1203f, 1107f) - vec3<f32>(1780f, -1760f, -543f))), vec3<f32>(var_0.a.c, _wgslsmith_f_op_f32(global2.a.c - global2.a.c), _wgslsmith_f_op_f32(779f + var_0.a.c))))), global2.a.a.wx, _wgslsmith_add_i32(_wgslsmith_sub_i32(~(~(-9157i)), global0.a.b ^ ~(-9401i)), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, global0.a.c, 1000f))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(32425i, var_2.d.x, var_4.a.d.x, var_4.a.b), var_4.a.d, vec4<i32>(17855i, global2.a.b, 8138i, 7456i)), !(!vec4<bool>(var_3.x, true, false, var_3.x))).a.d.x), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)));
}

