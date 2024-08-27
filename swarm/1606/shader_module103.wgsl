struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: array<vec3<bool>, 9>;

var<private> global3: array<u32, 26> = array<u32, 26>(53585u, 85180u, 4294967295u, 0u, 14772u, 0u, 0u, 23051u, 0u, 58649u, 1779u, 1u, 0u, 18204u, 0u, 0u, 15275u, 4294967295u, 0u, 7866u, 4294967295u, 4294967295u, 17976u, 0u, 0u, 52736u);

var<private> global4: array<bool, 27> = array<bool, 27>(false, false, true, true, true, false, true, true, true, true, true, false, false, false, false, true, true, false, false, true, true, true, true, true, false, true, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f));
    global0 = array<bool, 26>();
    global4 = array<bool, 27>();
    var_0 = 113f;
    global2 = array<vec3<bool>, 9>();
    return max(~(~abs(~vec2<u32>(15740u, arg_2.a))), firstLeadingBit(vec2<u32>(1u, 27295u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = select(true, all(global2[_wgslsmith_index_u32(~(~u_input.a), 9u)]), all(vec3<bool>(!select(global4[_wgslsmith_index_u32(u_input.a, 27u)], true, arg_0.b.x), true, arg_0.c.x < -487f)));
    var var_1 = arg_0;
    global1 = array<vec3<u32>, 15>();
    global0 = array<bool, 26>();
    var var_2 = select(any(!vec4<bool>(var_0, global4[_wgslsmith_index_u32(reverseBits(1u), 27u)], !var_1.b.x, var_1.b.x)), var_1.b.x, any(vec3<bool>(false, any(global2[_wgslsmith_index_u32(1u, 9u)]), global4[_wgslsmith_index_u32(63788u, 27u)])));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = func_3(Struct_1(1u, vec2<bool>(!(!global4[_wgslsmith_index_u32(arg_0.a, 27u)]), any(!vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 26u)], 26u)], false))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, arg_1) * _wgslsmith_f_op_vec2_f32(select(arg_2.xx, vec2<f32>(arg_0.c.x, 1783f), arg_0.b))), arg_2.xz))), vec4<u32>(~_wgslsmith_dot_vec2_u32(func_2(vec2<i32>(0i, -6753i), vec4<f32>(1348f, arg_0.c.x, arg_2.x, -1006f), Struct_1(4294967295u, arg_0.b, arg_0.c), arg_2.x), _wgslsmith_mult_vec2_u32(vec2<u32>(36476u, 16750u), vec2<u32>(10761u, arg_0.a))), func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-27578i, 23109i), vec2<i32>(2147483647i, -31520i)), vec4<f32>(arg_0.c.x, arg_1.x, arg_2.x, arg_2.x), arg_0, arg_2.x).x << (~51131u % 32u), _wgslsmith_clamp_u32(firstTrailingBit(firstLeadingBit(4294967295u)), 113405u, u_input.a), ~(~(~global3[_wgslsmith_index_u32(arg_0.a, 26u)]))));
    global1 = array<vec3<u32>, 15>();
    var var_1 = vec2<f32>(-694f, _wgslsmith_f_op_f32(-var_0.c.x));
    var var_2 = !vec2<bool>(!any(!vec4<bool>(arg_0.b.x, var_0.b.x, global4[_wgslsmith_index_u32(43870u, 27u)], false)), var_0.b.x);
    global0 = array<bool, 26>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    var var_0 = _wgslsmith_f_op_f32(543f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(f32(-1f) * -105f), global4[_wgslsmith_index_u32(~2583u, 27u)])) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1178f)))) - _wgslsmith_f_op_f32(f32(-1f) * -109f)));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(17827u, 18922u, 62259u)), countOneBits(firstTrailingBit(vec3<u32>(u_input.a, 17777u, 26520u)))) ^ ~(~(vec3<u32>(11256u, u_input.a, 69320u) & vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)]))), ~vec3<u32>(func_1(Struct_1(1u, vec2<bool>(true, global4[_wgslsmith_index_u32(58131u, 27u)]), vec2<f32>(-1255f, -667f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1376f, 293f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2197f, 627f, 1203f) - vec3<f32>(-1592f, -840f, -666f))), _wgslsmith_mod_u32(~1u, global3[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_div_u32(1u, u_input.a) ^ u_input.a));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(func_3(Struct_1(47295u, vec2<bool>(true, true), vec2<f32>(-908f, 1169f)), vec4<u32>(u_input.a, 29874u, global3[_wgslsmith_index_u32(0u, 26u)], 4294967295u)).a, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.a, 26u)], 49936u), 0u << (1u % 32u), u_input.a), ~(~vec4<u32>(17253u, 128101u, u_input.a, 36495u))) | global3[_wgslsmith_index_u32(1u, 26u)], func_3(Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(vec2<i32>(35791i, -75843i), vec4<f32>(-698f, 737f, 635f, -1458f), Struct_1(9603u, vec2<bool>(false, true), vec2<f32>(1000f, -244f)), -187f).x, 9193u), 26u)], vec2<bool>(all(global2[_wgslsmith_index_u32(4294967295u, 9u)]), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, -647f) - vec2<f32>(168f, 459f)))), select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 24419u, global3[_wgslsmith_index_u32(1u, 26u)], u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2542u, 26u)], 26u)], 1u, 18454u, 0u), vec4<u32>(4294967295u, 113927u, 20983u, u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, 30568u), vec4<u32>(u_input.a, 26095u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)], global3[_wgslsmith_index_u32(var_1.x, 26u)])), ~vec4<u32>(u_input.a, 1u, 0u, 23842u)), !vec4<bool>(global4[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], true, false))).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-535f, 932f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, -144f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-696f, 1336f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-521f)), func_3(Struct_1(var_1.x, vec2<bool>(true, false), vec2<f32>(-539f, 102f)), vec4<u32>(u_input.a, var_1.x, 4294967295u, 48762u)).c.x))));
    global2 = array<vec3<bool>, 9>();
    global2 = array<vec3<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.x, global3[_wgslsmith_index_u32(4294967295u, 26u)], 8456u, 42781u) ^ vec4<u32>(103771u, u_input.a, var_1.x, var_1.x)), abs(max(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(var_1.x, 21113u, 1u, global3[_wgslsmith_index_u32(1u, 26u)])))), var_1);
}

