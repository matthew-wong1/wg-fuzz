struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(296u, 1u, 0u, 8536u, 94096u, 4294967295u, 21306u, 1u, 39365u, 22804u, 2013u, 4294967295u, 57699u, 22550u, 15163u, 22710u, 0u, 75740u, 4294967295u, 0u, 28676u);

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, false, true, true, true, true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1000f, 917f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-712f, 251f)), _wgslsmith_f_op_f32(round(-1302f))))) + _wgslsmith_f_op_f32(-688f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(730f)))))));
    let var_1 = max(0i, u_input.b);
    var_0 = _wgslsmith_f_op_f32(round(902f));
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, abs(1u)), vec2<u32>(~26839u, 1u)));
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1489f)) - _wgslsmith_f_op_f32(abs(-225f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_1 = vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u << (select(0u, 8869u, false) % 32u), 21u)], 11u)], all(select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], true), all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 11u)], false)))) & (true && global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), (-_wgslsmith_clamp_i32(1i, -87927i, u_input.b) & -1i) != ~(-20875i));
    global0 = array<u32, 21>();
    var var_2 = var_0;
    var var_3 = Struct_1(u_input.a);
    return Struct_1(u_input.c.wz);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec4<u32> {
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(-36388i, ~u_input.b)), 0i, ~u_input.b, 1i);
    let var_1 = select(select(vec4<bool>(true, -u_input.b == ~1i, global1[_wgslsmith_index_u32(countOneBits(arg_0.a.x << (0u % 32u)), 11u)], true), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(arg_0.a.x, 11u)], true), vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 11u)])), global1[_wgslsmith_index_u32(36409u, 11u)], !any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 11u)], true, global1[_wgslsmith_index_u32(25068u, 11u)], global1[_wgslsmith_index_u32(1u, 11u)])), true)), select(!select(select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 11u)], true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.a.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_1.x, 11u)], false, global1[_wgslsmith_index_u32(46182u, 11u)]), global1[_wgslsmith_index_u32(arg_2.a.x, 11u)]), vec4<bool>(global1[_wgslsmith_index_u32(46470u, 11u)], global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(arg_1.x, 11u)], false)), vec4<bool>(true, all(!vec3<bool>(global1[_wgslsmith_index_u32(22073u, 11u)], global1[_wgslsmith_index_u32(88890u, 11u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 21u)], 11u)])), true != select(true, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)]), global1[_wgslsmith_index_u32(~abs(22010u), 11u)]), true), false);
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_2 = Struct_1(func_2().a);
    return vec4<u32>(abs(19447u) | ~arg_3, ~(~1u), 4294967295u, 39818u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    return Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(func_4(Struct_1(vec2<u32>(30361u, global0[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), u_input.c), func_2(), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)] | 0u), (u_input.c << (vec4<u32>(0u, u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 21u)]) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.a.x, 0u, 26032u, global0[_wgslsmith_index_u32(u_input.a.x, 21u)])) % vec4<u32>(32u))), ~(~(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    var var_0 = func_1(min(min(firstTrailingBit(u_input.b), -14914i), _wgslsmith_add_i32(-8391i, ~0i)) >> (~66248u % 32u));
    global0 = array<u32, 21>();
    var var_1 = func_1(-1i ^ u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -2576i, u_input.c, min(u_input.a.x, _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(var_0.a.x, 21u)]))) & 10333u, (i32(-1i) * -(~2147483647i)) << (_wgslsmith_clamp_u32(~61327u, 4294967295u, var_0.a.x) % 32u));
}

