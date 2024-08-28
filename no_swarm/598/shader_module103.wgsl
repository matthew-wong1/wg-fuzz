struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 50801u;

var<private> global1: array<bool, 11>;

var<private> global2: f32 = 773f;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(2147483647i, 2147483647i, -35411i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-1i, 30685i, -3568i, 19082i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-1i, 77828i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-10487i, 2147483647i, -34957i, -12614i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(0i, -3043i, 2147483647i, 494i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-28109i, i32(-2147483648), -62153i, 16676i)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(10407i, i32(-2147483648), -16655i, 23877i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(0i, -4731i, i32(-2147483648), 19562i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(30820i, 0i, 45737i, 49490i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(23109i, -39345i, -8157i, 0i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-28094i, 1i, 1i, 31007i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, -30773i, 27996i, 2147483647i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(36452i, i32(-2147483648), 21325i, -20243i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-75218i, -18158i, 1i, 16266i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(0i, 1i, -10389i, -30298i)), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, 48511i, 24790i, 10133i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, -30957i, -24578i, 40972i)), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(-28184i, -20953i, 39210i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-22217i, 80i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 2147483647i, 0i, -34003i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-66856i, i32(-2147483648), -1i, -1i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(11309i, 2147483647i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(1i, -16224i, 37870i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(33280i, 1i, -1i, 46576i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(12565i, 2147483647i, -3305i, 10733i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, -3660i, 1i, -32394i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-8491i, 0i, 2147483647i, -765i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(i32(-2147483648), 0i, 27763i, 12241i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(-22535i, 64099i, -49082i, 0i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(40937i, -31357i, -62142i, -21739i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(i32(-2147483648), -1i, 0i, -1i)));

var<private> global4: array<vec4<u32>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = true;
    global4 = array<vec4<u32>, 29>();
    var var_1 = arg_1.x;
    var_0 = any(vec4<bool>(false, !(!(u_input.b <= 108616u)), true, true));
    var var_2 = _wgslsmith_clamp_u32(4294967295u, ~((abs(u_input.b) >> (_wgslsmith_mult_u32(0u, 34898u) % 32u)) | 1u), _wgslsmith_sub_u32(44974u, u_input.b));
    return 26966u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -705f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f + 1448f)), true, !any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(u_input.b, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(33185u, 11u)]), global1[_wgslsmith_index_u32(u_input.b, 11u)])), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(15975u, u_input.a, u_input.b), vec3<u32>(u_input.a, u_input.a, 89300u))), 11u)]), abs(vec4<i32>(-(-70197i >> (u_input.b % 32u)), abs(_wgslsmith_mult_i32(55694i, -2262i)), ~0i << (_wgslsmith_mult_u32(14991u, u_input.b) % 32u), -countOneBits(2147483647i))));
    global0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.b, u_input.a, 0u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 18382u, 67137u, u_input.b), global4[_wgslsmith_index_u32(4294967295u, 29u)])), u_input.b);
    global4 = array<vec4<u32>, 29>();
    var var_1 = 1i;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(-354f)), 130f);
    var var_3 = -1562f > var_2.x;
    let var_4 = global3[_wgslsmith_index_u32(firstTrailingBit(min(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.a, 29u)], global4[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_mod_u32(u_input.b, 0u))) >> (func_1(Struct_1(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 11u)], var_0.a.x, global1[_wgslsmith_index_u32(1u, 11u)]), -vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.ywy, ~0i, vec4<bool>(true, !global1[_wgslsmith_index_u32(u_input.b, 11u)], true | global1[_wgslsmith_index_u32(0u, 11u)], -1293f > var_2.x)) % 32u)), 31u)];
    let var_5 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(select(813f, var_2.x, var_4.a.x)))), 1736f, var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1748f, var_2.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(-1026f)), _wgslsmith_f_op_f32(-var_2.x)) * vec3<f32>(_wgslsmith_div_f32(var_2.x, -924f), _wgslsmith_div_f32(var_2.x, -754f), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(28536i, max(u_input.a, u_input.a), -1524f);
}

