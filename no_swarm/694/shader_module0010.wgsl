struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-8883i, -71823i, -1i, 16078i, 35451i, -14749i, -58939i, 26779i, i32(-2147483648), -1i, 70610i, -10921i, 1i, 2147483647i, 50506i, -79169i, i32(-2147483648), 54561i, -11336i, 3132i, 0i, 27742i, 2147483647i);

var<private> global1: array<u32, 16>;

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(round(-1390f));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> vec2<bool> {
    let var_0 = u_input.a.yzz;
    let var_1 = 471f;
    var var_2 = ~vec3<i32>(min(-global0[_wgslsmith_index_u32(4294967295u, 23u)], -6755i >> (var_0.x % 32u)), -16325i, -2147483647i);
    let var_3 = vec4<f32>(-680f, 851f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_0.x)));
    var_2 = select(min(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(14970u, 23u)], global0[_wgslsmith_index_u32(var_0.x, 23u)], -12814i), vec3<i32>(3761i, var_2.x, global0[_wgslsmith_index_u32(var_0.x, 23u)])) >> (var_0 % vec3<u32>(32u))), -abs(-vec3<i32>(0i, global0[_wgslsmith_index_u32(46402u, 23u)], 41445i))), abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.x, 23u)], 2147483647i), vec3<i32>(var_2.x, -29803i, -2147483647i)) & (vec3<i32>(0i, 1i, -38091i) << ((vec3<u32>(0u, var_0.x, 0u) >> (var_0 % vec3<u32>(32u))) % vec3<u32>(32u)))), !(!global3[_wgslsmith_index_u32(0u, 19u)]));
    return select(vec2<bool>(true, global1[_wgslsmith_index_u32(~(~var_0.x), 16u)] > select(~global1[_wgslsmith_index_u32(5622u, 16u)], _wgslsmith_add_u32(1u, var_0.x), select(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], false, true))), vec2<bool>(select(all(vec2<bool>(false, false)) == (-1i >= var_2.x), all(vec3<bool>(global2.x, true, global2.x)), all(select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 19u)], global3[_wgslsmith_index_u32(70875u, 19u)]), vec2<bool>(false, global2.x), true))), global3[_wgslsmith_index_u32(~abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]), 19u)]), global3[_wgslsmith_index_u32(70798u, 19u)]);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    let var_0 = vec4<bool>(all(func_3(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(139f, 939f) * vec2<f32>(1000f, 251f)), vec2<f32>(526f, 1000f))), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(26679u, 8156u, global1[_wgslsmith_index_u32(0u, 16u)], 12161u), u_input.a), 23u)])))), (true | global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zzw, vec3<u32>(0u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 16u)])), 19u)]) == all(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20040u, 16u)], 19u)])), true, arg_0 && false);
    return Struct_1(_wgslsmith_clamp_vec4_u32((firstLeadingBit(u_input.a) >> (_wgslsmith_add_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)), ~(~reverseBits(u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(60449u, global1[_wgslsmith_index_u32(27790u, 16u)], 1u, 0u), u_input.a), ~51877u, u_input.a.x, _wgslsmith_add_u32(~1u, u_input.a.x))), _wgslsmith_div_f32(-1605f, -879f));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = -(1i << (min(~u_input.a.x, 24758u) % 32u));
    let var_1 = !(!select(arg_3.wzx, vec3<bool>(all(arg_3.zz), select(global2.x, true, false), arg_1 || false), vec3<bool>(arg_1, global3[_wgslsmith_index_u32(arg_2.a.x, 19u)], global0[_wgslsmith_index_u32(arg_2.a.x, 23u)] >= -46026i)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1753f)))) + arg_2.b)), -832f, arg_0, _wgslsmith_f_op_f32(step(arg_2.b, -607f)));
    return any(!arg_3.wwx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(vec3<u32>(global1[_wgslsmith_index_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8972u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), 16u)] ^ 6868u, u_input.a.x >> (abs(1u) % 32u), u_input.a.x), vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24463u, 16u)], 16u)], 56722u), 2984u, u_input.a.x) >> (u_input.a.yyw % vec3<u32>(32u)), func_4(583f, true | any(vec2<bool>(global2.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 19u)])), func_1(!global3[_wgslsmith_index_u32(1u, 19u)]), !(!vec4<bool>(global2.x, false, global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20853u, 16u)], 19u)])))), Struct_1(u_input.a, 142f), select(!vec3<bool>(global2.x, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 19u)], false), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(35590u, 19u)], false), !vec3<bool>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 19u)], false, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec3<bool>(true, false, true)), vec3<bool>(!global2.x, select(any(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), false, !global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, var_0.b.b, -2242f, var_0.b.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(751f, var_0.b.b, -2612f, var_0.b.b) + vec4<f32>(var_0.b.b, var_0.b.b, var_0.b.b, var_0.b.b))))));
    global1 = array<u32, 16>();
    global3 = array<bool, 19>();
    global2 = func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) - _wgslsmith_f_op_f32(min(1684f, _wgslsmith_div_f32(var_0.b.b, -788f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(exp2(var_1.x))) + -1000f)), _wgslsmith_f_op_f32(select(-500f, _wgslsmith_f_op_f32(func_2(18397i)), global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~u_input.a.x ^ ~4294967295u, 16u)], 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-max(-2147483647i, abs(global0[_wgslsmith_index_u32(var_0.a.x, 23u)])), 1000f, var_1.x);
}

