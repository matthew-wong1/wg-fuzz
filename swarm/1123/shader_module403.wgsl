struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(-372f, 1000f, -1584f, 1117f, -461f, -758f, -1878f, 1354f, -824f, 746f, -1298f, 368f, 317f, 684f, 172f, 487f, 1000f);

var<private> global1: array<u32, 27> = array<u32, 27>(5250u, 18680u, 4294967295u, 87313u, 0u, 4294967295u, 55137u, 4294967295u, 4294967295u, 4294967295u, 4764u, 45749u, 640u, 16256u, 59825u, 79310u, 32639u, 4294967295u, 1u, 0u, 48290u, 0u, 0u, 1u, 4294967295u, 1u, 1u);

var<private> global2: array<i32, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = array<f32, 17>();
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec2<i32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1759f * _wgslsmith_div_f32(var_0.d.x, var_0.a)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -893f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)]), _wgslsmith_div_f32(-1000f, -849f), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(33133u), 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))));
    global0 = array<f32, 17>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(1303f, _wgslsmith_f_op_f32(f32(-1f) * -499f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-656f, _wgslsmith_f_op_f32(round(-1106f)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(step(505f, -1053f))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1679f, -584f, -1447f)))))), var_0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(arg_1 - 158f), _wgslsmith_f_op_f32(var_0.d.x - var_0.a)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(348f, 295f, var_0.a), var_0.b)), vec3<f32>(-732f, arg_0.a, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24478u, 27u)], 27u)], 17u)]))))), var_0.e);
    let var_3 = Struct_1(arg_0.b.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1, -554f)), vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-arg_0.d.x))))), var_2.c, arg_0.d, true);
    return _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(37177i, -34627i, -2147483647i), vec3<i32>(u_input.b, arg_2, arg_2)), -33629i) | vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -5744i), vec2<i32>(18202i, global2[_wgslsmith_index_u32(0u, 1u)])), 1i), firstTrailingBit(vec2<i32>(-3864i, 0i) >> (vec2<u32>(7745u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)]) % vec2<u32>(32u)))) << ((abs(_wgslsmith_mult_vec2_u32(vec2<u32>(58518u, global1[_wgslsmith_index_u32(1u, 27u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13588u, 27u)], 27u)]) << (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]) % vec2<u32>(32u)))) >> (vec2<u32>(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 27u)]), abs(_wgslsmith_mult_u32(17506u, 1u))) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1() -> u32 {
    global0 = array<f32, 17>();
    global2 = array<i32, 1>();
    global1 = array<u32, 27>();
    var var_0 = min(-((vec2<i32>(0i, u_input.a) & func_2(Struct_1(-1219f, vec3<f32>(1190f, 967f, 1685f), vec2<bool>(true, true), vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 17u)], -135f, global0[_wgslsmith_index_u32(54419u, 17u)]), true), 2300f, 0i)) >> (reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(24182u, global1[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u))), -(vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 27u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43002u, 27u)], 27u)], 17578u)), 27u)], 1u)], 2147483647i) & (~vec2<i32>(-2147483647i, 46740i) << (_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(56948u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(global1[_wgslsmith_index_u32(1u, 27u)], 15580u)) % vec2<u32>(32u)))));
    global2 = array<i32, 1>();
    return (_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(36647u, 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50268u, 27u)], 27u)], 27u)], 27u)], 27u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45545u, 27u)], 27u)], 27u)], 27u)] & 4294967295u), min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 27u)], 2797u) | 7003u) ^ ~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56283u, 27u)], 27u)]))) | select(global1[_wgslsmith_index_u32(38504u, 27u)], select(min(4294967295u, ~110198u), global1[_wgslsmith_index_u32(5480u, 27u)], any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), ((var_0.x >> (8102u % 32u)) <= _wgslsmith_add_i32(var_0.x, -48252i)) & true);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = -u_input.b;
    global1 = array<u32, 27>();
    var var_1 = select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 55095u), 27u)] >= select(7973u, 4294967295u, true), !all(vec2<bool>(true, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), !vec3<bool>(any(vec2<bool>(true, false)), true, true)), select(select(vec3<bool>(any(vec3<bool>(false, true, true)), all(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), all(vec4<bool>(false, false, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)), !select(true, true, 51809u == global1[_wgslsmith_index_u32(0u, 27u)])), select(true, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    global2 = array<i32, 1>();
    var var_2 = -1421f;
    return vec2<bool>(true, select(all(!select(vec2<bool>(true, false), var_1.zy, var_1.zy)), any(!select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false))), var_1.x));
}

fn func_5(arg_0: vec2<bool>) -> u32 {
    global2 = array<i32, 1>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, global0[_wgslsmith_index_u32(45917u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1077f, global0[_wgslsmith_index_u32(27690u, 17u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64966u, 27u)], 27u)], 17u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(694f, -100f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 17u)]))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1525f, global0[_wgslsmith_index_u32(57406u, 17u)], -549f), vec3<f32>(1012f, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3639u, 27u)], 27u)], 27u)], 17u)]))))))), func_4(4294967295u, vec3<u32>(26944u, 31321u, global1[_wgslsmith_index_u32(471u, 27u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16540u, 27u)], 27u)], 17u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 17u)], -301f) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], -381f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1081f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19325u, 27u)], 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1336f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53561u, 27u)], 17u)], 1000f) + vec3<f32>(707f, global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 27u)], 27u)], 27u)], 17u)] - 860f), _wgslsmith_f_op_f32(712f - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 17u)]), 1135f)))), (_wgslsmith_add_u32(47402u, countOneBits(4294967295u)) >> (~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4473u, 27u)], 27u)], 66690u, 58611u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9171u, 27u)], 27u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(62541u, 27u)], 27u)])), 27u)] % 32u)) >= ~4294967295u);
    global2 = array<i32, 1>();
    global2 = array<i32, 1>();
    let var_1 = ~(-2147483647i);
    return global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 27u)], 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 17u)];
    let var_1 = func_5(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), select(func_4(func_1(), ~vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26944u, 27u)], 27u)])), select(vec2<bool>(true, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(52211u, 17u)] == global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 17u)]), false), all(vec2<bool>(true, false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-991f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 17u)], global0[_wgslsmith_index_u32(39235u, 17u)]), vec3<f32>(global0[_wgslsmith_index_u32(67650u, 17u)], 1088f, global0[_wgslsmith_index_u32(var_1, 17u)])) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, 818f, -1088f) + vec3<f32>(global0[_wgslsmith_index_u32(108937u, 17u)], -165f, global0[_wgslsmith_index_u32(1u, 17u)])))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(585f + 414f), global0[_wgslsmith_index_u32(abs(0u), 17u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-712f, -1000f)) - _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_1, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(5012u, 17u)], -1000f)))), 653f));
    let var_3 = vec3<bool>(false, true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(false, false, false))), true)));
    global2 = array<i32, 1>();
    let var_4 = _wgslsmith_f_op_f32(-var_2.x);
    global1 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_4)), ~abs(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.b, global2[_wgslsmith_index_u32(var_1, 1u)]), vec4<i32>(global2[_wgslsmith_index_u32(var_1, 1u)], 0i, -1i, global2[_wgslsmith_index_u32(29142u, 1u)])), global2[_wgslsmith_index_u32(var_1, 1u)], 1i)), var_1, vec3<u32>(~max(26875u, _wgslsmith_div_u32(33300u, 102614u)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(43237u, 4294967295u, var_1), vec3<u32>(1u, var_1, var_1)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_1, 27u)], 1u, 4294967295u), vec3<u32>(var_1, var_1, global1[_wgslsmith_index_u32(var_1, 27u)]))), ~global1[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_4)), var_2.x))));
}

