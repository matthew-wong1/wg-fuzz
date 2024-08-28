struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<bool>, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> vec3<i32> {
    global1 = -arg_0.x;
    global0 = array<Struct_1, 9>();
    var var_0 = -793f;
    var var_1 = global0[_wgslsmith_index_u32(33305u, 9u)];
    return -var_1.e.zzz;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-341f))), arg_0, arg_2.d))), _wgslsmith_add_u32(~637u, arg_2.b) ^ ~_wgslsmith_sub_u32(arg_2.b, _wgslsmith_add_u32(0u, 14546u)), 1f, true, vec4<i32>(-1i) * -vec4<i32>(~arg_2.e.x, arg_2.e.x, 1i, max(13084i, arg_2.e.x)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x ^ ~_wgslsmith_sub_u32(~1u, 1u), var_0.b), 9u)];
    global1 = arg_2.e.x;
    global1 = -countOneBits(-6336i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(211f, _wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_f_op_f32(-1318f * _wgslsmith_f_op_f32(arg_0 * arg_0)))) * _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1548f * _wgslsmith_f_op_f32(-var_0.c)) - -465f)));
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, 1u)), vec3<u32>(var_1.b, arg_2.b, _wgslsmith_dot_vec2_u32(select(vec2<u32>(23178u, 4294967295u), u_input.d.wx, vec2<bool>(var_0.d, false)), vec2<u32>(var_0.b, 37101u)))), 11062u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(178f, u_input.b, arg_1.a, false, _wgslsmith_mod_vec4_i32(~arg_0.e, arg_0.e));
    var var_1 = vec2<i32>(arg_1.e.x, abs(_wgslsmith_sub_i32(arg_1.e.x, ~(-1i))));
    global0 = array<Struct_1, 9>();
    global1 = ~(-5769i);
    var var_2 = any(select(select(!vec3<bool>(true, arg_2.d, true), vec3<bool>(arg_0.d, false, false), false), select(!vec3<bool>(false, var_0.d, var_0.d), !select(vec3<bool>(var_0.d, true, false), vec3<bool>(false, false, arg_1.d), false), arg_2.d), vec3<bool>(true, true, all(select(vec4<bool>(var_0.d, arg_0.d, false, var_0.d), vec4<bool>(arg_1.d, arg_2.d, true, arg_2.d), false)))));
    return 1u;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(vec2<i32>(1i, 1i), any(vec2<bool>(false, true)));
    global2 = array<vec4<bool>, 21>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(u_input.c << (u_input.c % 32u)), reverseBits(func_3(-725f, vec3<f32>(1341f, -762f, 1276f), global0[_wgslsmith_index_u32(u_input.a, 9u)]))), 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1699f))), ~(~4294967295u), _wgslsmith_f_op_f32(select(1f, -1638f, false)), true, ~reverseBits(vec4<i32>(1i, -1i, var_0.x, var_0.x)))), -256f, any(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false)), _wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(var_0.x, var_0.x, -7576i, 23409i)), ~(~(vec4<i32>(var_0.x, var_0.x, 5616i, var_0.x) ^ vec4<i32>(-1i, 1i, 8145i, 8467i)))));
    return u_input.d.xxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-485f * -203f))))) + _wgslsmith_f_op_f32(select(-699f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-832f)), _wgslsmith_f_op_f32(abs(504f)))), true))), _wgslsmith_dot_vec3_u32(~u_input.d.yyz, u_input.d.zxx ^ func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(762f)))), any(vec2<bool>(false, false)), vec4<i32>(58432i, -((i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(u_input.d.wwy, vec3<u32>(u_input.a, u_input.c, u_input.a)) % 32u)), ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(38876i, -5883i), 1i), abs(_wgslsmith_add_i32(0i, abs(2147483647i)))));
    let var_1 = var_0.e.xx;
    var var_2 = var_0.c;
    var var_3 = global0[_wgslsmith_index_u32(1u, 9u)];
    var var_4 = select(!(!select(!vec3<bool>(var_0.d, var_3.d, var_0.d), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(var_0.d, false, var_0.d), var_3.d), select(vec3<bool>(var_0.d, var_0.d, var_0.d), vec3<bool>(true, var_0.d, var_3.d), false))), !(!select(!vec3<bool>(true, false, var_0.d), vec3<bool>(true, true, true), var_3.d)), true);
    let var_5 = var_0;
    var_3 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~vec4<u32>(var_0.b, ~0u, var_3.b, ~var_5.b));
}

