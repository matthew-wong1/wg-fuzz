struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<i32, 6> = array<i32, 6>(32306i, 0i, 29266i, -1i, 0i, i32(-2147483648));

var<private> global2: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-1000f, -488f), vec2<f32>(-1153f, 944f), vec2<f32>(-1461f, -344f), vec2<f32>(-2935f, -938f), vec2<f32>(-926f, -1014f), vec2<f32>(1020f, 1779f), vec2<f32>(-1654f, 1049f), vec2<f32>(-1299f, -821f), vec2<f32>(-163f, -1329f), vec2<f32>(1000f, -994f), vec2<f32>(1270f, 134f), vec2<f32>(-828f, 538f), vec2<f32>(-158f, 1000f), vec2<f32>(1483f, -185f), vec2<f32>(858f, 807f), vec2<f32>(-628f, -785f), vec2<f32>(662f, -518f), vec2<f32>(2158f, -684f), vec2<f32>(-1000f, -274f), vec2<f32>(975f, -270f), vec2<f32>(-1199f, 192f), vec2<f32>(1859f, -1047f));

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global3.b, global3.b)))))) - _wgslsmith_f_op_vec4_f32(-global3.b));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, global3.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + 338f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_div_f32(-858f, global3.b.x), global3.b.x), select(select(!vec4<bool>(global3.a, var_1.a, true, false), select(vec4<bool>(var_1.a, var_1.a, global3.a, false), vec4<bool>(true, global3.a, false, true), vec4<bool>(false, true, true, false)), false), select(vec4<bool>(false, true, var_1.a, global3.a), select(vec4<bool>(global3.a, true, var_1.a, global3.a), vec4<bool>(false, true, var_1.a, true), false), var_1.a), any(select(vec2<bool>(var_1.a, true), vec2<bool>(var_1.a, var_1.a), global3.a))))));
    let var_3 = var_2;
    var var_4 = _wgslsmith_dot_vec4_u32(~countOneBits(reverseBits(vec4<u32>(100695u, 67403u, arg_0, 11155u))), vec4<u32>(1u, ~arg_0, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(arg_0, arg_1)) << (~u_input.a.x % 32u)), _wgslsmith_add_u32(arg_0, u_input.a.x >> ((1u << (u_input.a.x % 32u)) % 32u))));
    return 4294967295u;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global0 = array<Struct_1, 14>();
    var var_0 = ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 1u, u_input.a.x), countOneBits(firstTrailingBit(vec3<u32>(27765u, u_input.a.x, u_input.a.x)))));
    let var_1 = vec3<u32>(u_input.a.x, 110738u, 1u);
    global2 = array<vec2<f32>, 22>();
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.yx, u_input.a), 14u)];
    return ~(~1u) >= _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.x, 4294967295u, 11887u) | vec4<u32>(4294967295u, u_input.a.x, var_1.x, u_input.a.x), vec4<u32>(var_1.x, var_1.x, u_input.a.x, 39409u) | vec4<u32>(var_1.x, var_1.x, var_1.x, 53260u)), vec4<u32>(u_input.a.x, 56461u, ~func_3(0u, u_input.a.x), 0u));
}

fn func_1() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1478f))), global3.b.x, global3.b.x), global3.b));
    var var_1 = select(vec4<bool>(any(vec4<bool>(all(vec2<bool>(true, true)), true, true, true)), select(~u_input.a.x, u_input.a.x, global3.a) > u_input.a.x, true, any(vec4<bool>(true, false & global3.a, all(vec4<bool>(global3.a, false, global3.a, global3.a)), true))), !(!select(vec4<bool>(global3.a, true, global3.a, true), select(vec4<bool>(true, false, global3.a, true), vec4<bool>(global3.a, global3.a, global3.a, global3.a), false), func_2(vec3<bool>(global3.a, false, global3.a)))), global3.a);
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.b.xxy)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global3.b.x)), var_0.x, _wgslsmith_f_op_f32(global3.b.x * global3.b.x)), var_0.www) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3.b.x, var_0.x)), _wgslsmith_f_op_f32(max(868f, -334f))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(227f * 765f)), global3.b.x)));
    var_2 = 1u;
    return vec4<u32>(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.a.x))), _wgslsmith_add_u32(41067u, ~u_input.a.x), 6466u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~31035u, u_input.a.x, ~firstLeadingBit(49752u)), _wgslsmith_mod_vec3_u32(countOneBits(~select(vec3<u32>(u_input.a.x, 25020u, 58847u), vec3<u32>(0u, 34358u, 1u), global3.a)), vec3<u32>(u_input.a.x, select(1u ^ u_input.a.x, 0u, true), ~(~2325u)))), 14u)];
    global0 = array<Struct_1, 14>();
    var var_0 = ~(~(~vec3<u32>(u_input.a.x, 22825u, 1u) >> (~vec3<u32>(u_input.a.x, 15169u, 2838u) % vec3<u32>(32u)))) ^ vec3<u32>(35095u, 1u, ~u_input.a.x);
    global0 = array<Struct_1, 14>();
    var var_1 = vec4<u32>(0u, u_input.a.x, 1u, _wgslsmith_dot_vec4_u32(func_1(), select(vec4<u32>(3058u, 4294967295u, 0u, u_input.a.x) ^ vec4<u32>(4294967295u, 0u, 0u, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 6495u, 0u), vec4<u32>(4294967295u, 48380u, 1305u, 40000u)), select(vec4<bool>(global3.a, true, global3.a, false), vec4<bool>(global3.a, global3.a, false, global3.a), vec4<bool>(global3.a, global3.a, global3.a, false))) >> (~(vec4<u32>(u_input.a.x, var_0.x, 38384u, u_input.a.x) ^ vec4<u32>(19103u, 0u, u_input.a.x, var_0.x)) % vec4<u32>(32u))));
    var var_2 = abs(vec4<u32>(6944u ^ ~var_1.x, ~var_0.x, abs(~0u), abs(~var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 318f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.x + global3.b.x))))))), _wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(firstTrailingBit(1i), global1[_wgslsmith_index_u32(func_3(var_0.x, var_1.x), 6u)], countOneBits(6550i)), firstTrailingBit(abs(-1i)), abs(global1[_wgslsmith_index_u32(u_input.a.x, 6u)] >> (0u % 32u)) & (_wgslsmith_dot_vec2_i32(vec2<i32>(-24057i, -1i), vec2<i32>(-50487i, global1[_wgslsmith_index_u32(var_1.x, 6u)])) ^ global1[_wgslsmith_index_u32(_wgslsmith_div_u32(63196u, 1u), 6u)])), ~vec3<i32>(-42540i, 2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(global1[_wgslsmith_index_u32(var_1.x, 6u)], global1[_wgslsmith_index_u32(var_1.x, 6u)]), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(15958u, 6u)])), vec2<i32>(global1[_wgslsmith_index_u32(24691u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]))));
}

