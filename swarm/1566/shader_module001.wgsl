struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(589f, 866f, 279f, 308f), vec4<f32>(-622f, -979f, 927f, -1037f), vec4<f32>(-997f, -1054f, -684f, 1398f), vec4<f32>(209f, 233f, 219f, 120f), vec4<f32>(1344f, 2473f, 1000f, 113f), vec4<f32>(-1298f, -1343f, 751f, -874f), vec4<f32>(756f, -369f, 1000f, -788f), vec4<f32>(1000f, 150f, -1725f, -1015f), vec4<f32>(439f, 276f, 1168f, 1897f));

var<private> global2: bool = true;

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global4 = array<Struct_1, 18>();
    global4 = array<Struct_1, 18>();
    var var_0 = i32(-1i) * -47971i;
    var var_1 = global4[_wgslsmith_index_u32(~(u_input.b | u_input.b), 18u)];
    let var_2 = -2699i;
    return true;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(vec3<bool>(arg_2.c.x, false, arg_2.c.x), !vec4<bool>(func_3(vec3<f32>(global3.x, -1000f, -280f), Struct_1(vec3<bool>(true, arg_0, arg_1), vec4<bool>(arg_0, arg_1, true, arg_2.a.x), vec2<bool>(true, false))), any(select(arg_2.a.xy, arg_2.b.zw, vec2<bool>(true, arg_1))), all(vec4<bool>(false, arg_1, true, true)), arg_0), !(!select(vec2<bool>(true, arg_1), !vec2<bool>(false, arg_0), vec2<bool>(true, arg_2.c.x))));
    global3 = _wgslsmith_f_op_vec4_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(u_input.b, u_input.a.x, !arg_0), max(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 1u))) ^ u_input.a.x, 9u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(u_input.b, 9u)], vec4<f32>(137f, global3.x, 1352f, global3.x)))) - global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b << (1u % 32u), select(4294967295u, 1u, false), u_input.b), 9u)]))));
    global2 = !any(select(select(!arg_2.b.yxy, vec3<bool>(var_0.c.x, false, false), arg_2.a), var_0.b.xzw, var_0.a));
    let var_1 = any(arg_2.b);
    let var_2 = Struct_1(select(vec3<bool>(u_input.a.x < 1467u, any(!vec3<bool>(var_1, var_0.c.x, false)), true), !(!var_0.b.xwy), arg_2.b.zxw), !vec4<bool>(func_3(global3.wyz, arg_2), !(1384u >= u_input.b), arg_2.b.x, _wgslsmith_f_op_f32(global3.x + global3.x) == _wgslsmith_f_op_f32(f32(-1f) * -983f)), !(!arg_2.b.yy));
    return select(arg_2.b, !select(!vec4<bool>(arg_0, true, false, arg_0), select(var_0.b, vec4<bool>(true, true, false, arg_1), false), all(!arg_2.b)), false);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = any(vec4<bool>(~(~u_input.a.x) <= 4294967295u, !any(arg_3.b), any(vec3<bool>(false, any(vec4<bool>(arg_2, false, arg_3.b.x, arg_0)), !arg_2)), func_2(true, func_2(arg_1.x, false, Struct_1(arg_3.b.xxw, vec4<bool>(arg_1.x, arg_3.a.x, arg_2, false), vec2<bool>(true, false))).x, Struct_1(vec3<bool>(true, false, arg_0), vec4<bool>(true, true, arg_1.x, arg_0), vec2<bool>(arg_0, false))).x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), 172f)), global3.x));
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) + -1166f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), 127f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), global3.x, _wgslsmith_f_op_f32(floor(global3.x)), 1000f) - global1[_wgslsmith_index_u32(u_input.a.x, 9u)])));
    var var_2 = u_input.a.wz ^ ~u_input.a.yw;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f + _wgslsmith_f_op_f32(f32(-1f) * -1016f)));
    return abs(1i);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f))))) < _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(global3.x))));
    var var_1 = _wgslsmith_div_i32(arg_0, _wgslsmith_div_i32(12440i, 32947i));
    global4 = array<Struct_1, 18>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1326f)));
    let var_3 = global3.x;
    return Struct_1(select(vec3<bool>(var_0.x, all(vec2<bool>(true, var_0.x)), func_2(all(var_0), arg_1 || var_0.x, global4[_wgslsmith_index_u32(~u_input.b, 18u)]).x), !select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, false)), true), vec4<bool>(_wgslsmith_mult_u32(arg_3.x >> (29987u % 32u), ~arg_3.x) < (countOneBits(39992u) ^ u_input.a.x), 1u != ~_wgslsmith_add_u32(0u, u_input.b), !((u_input.a.x > u_input.a.x) && all(vec3<bool>(false, true, var_0.x))), true), vec2<bool>(arg_1 & arg_1, any(vec2<bool>(all(var_0), false))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = func_5(_wgslsmith_mult_i32(func_4(true, !func_2(true, false, arg_1), !(!arg_1.a.x), global4[_wgslsmith_index_u32(arg_0, 18u)]), ~(-1i)), arg_1.a.x, firstTrailingBit(1i), u_input.a.yw);
    var var_1 = 4294967295u;
    let var_2 = reverseBits(select(~vec4<i32>(1i, 1i, 1i, 1i), min(-vec4<i32>(0i, -33315i, 1i, -15806i), vec4<i32>(-2147483647i, 30505i, 46552i, -753i)), func_5(33515i, arg_1.b.x, -1i, vec2<u32>(1u, 67890u)).a.x | true)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, _wgslsmith_mod_u32(43852u, arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b, arg_0), vec3<u32>(arg_0, u_input.a.x, arg_0)), _wgslsmith_dot_vec3_u32(u_input.a.wzz, vec3<u32>(1u, u_input.a.x, 23546u))), ~u_input.a) % vec4<u32>(32u));
    let var_3 = arg_1.b.wwy;
    let var_4 = func_5(select(_wgslsmith_div_i32(var_2.x, select(~(-19450i), ~(-5828i), true)), var_2.x, false), !var_3.x, ~var_2.x, u_input.a.zw);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 2>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-745f, -1513f, _wgslsmith_f_op_f32(max(global3.x, global3.x)), 1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) + _wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(step(-308f, _wgslsmith_f_op_f32(sign(global3.x)))), 1f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1771f), _wgslsmith_f_op_f32(select(global3.x, global3.x, true))), vec4<f32>(_wgslsmith_f_op_f32(max(-572f, -518f)), _wgslsmith_f_op_f32(-1214f + global3.x), -415f, _wgslsmith_f_op_f32(func_1(u_input.b, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, global3.x)) - _wgslsmith_f_op_f32(-global3.x)), 1520f, global3.x, _wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_div_u32(u_input.a.x, abs(u_input.b)) < u_input.a.x)));
    global0 = array<vec2<i32>, 2>();
    let var_0 = global4[_wgslsmith_index_u32(~4294967295u | (firstLeadingBit(reverseBits(u_input.b | u_input.a.x)) ^ u_input.a.x), 18u)];
    global0 = array<vec2<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global3.zw));
}

