struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(1i, 4760i, -1i, 71447i, 1i, 12805i, 41868i, 0i, 4788i, 31022i, 22986i, -7052i, 0i);

var<private> global1: array<i32, 20> = array<i32, 20>(32650i, 2147483647i, -8766i, -10491i, 0i, 22105i, 25964i, 2147483647i, i32(-2147483648), -12314i, 33021i, 2147483647i, -25201i, 1i, -1361i, -1i, -61274i, 22554i, -1i, 1i);

var<private> global2: i32;

var<private> global3: array<u32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<i32, 20>();
    let var_0 = arg_2;
    global0 = array<i32, 13>();
    global3 = array<u32, 21>();
    global3 = array<u32, 21>();
    return vec3<bool>(true, false, all(vec3<bool>(true, true & !var_0, all(vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.a.a, arg_0.b.a.a, 25023u), select(vec3<u32>(0u, 4294967295u, arg_0.a), vec3<u32>(global3[_wgslsmith_index_u32(1u, 21u)], 1u, 80130u), true))) & _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global3[_wgslsmith_index_u32(arg_0.a, 21u)]), vec2<u32>(u_input.c, 4294967295u)), u_input.c), firstLeadingBit(~0u)), _wgslsmith_div_i32(~countOneBits(_wgslsmith_add_i32(-5493i, 1i)), _wgslsmith_mod_i32(~(~arg_0.b.a.b), global0[_wgslsmith_index_u32(34964u, 13u)])), _wgslsmith_mult_i32(u_input.a.x, -25000i));
    let var_1 = Struct_4(arg_0, ~0u);
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    global2 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-338f)) * arg_1);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<f32>(-1451f, _wgslsmith_f_op_f32(func_4(Struct_3(50866u, Struct_2(Struct_1(1u, -2147483647i, u_input.b.x))), _wgslsmith_f_op_f32(floor(1f)), func_3(abs(firstLeadingBit(global0[_wgslsmith_index_u32(14280u, 13u)])), Struct_4(arg_0, ~global3[_wgslsmith_index_u32(arg_0.a, 21u)]), true, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-268f, -351f, false)) - 1045f), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(4294967295u, Struct_2(Struct_1(26844u, global1[_wgslsmith_index_u32(u_input.c, 20u)], arg_1.a.b))), _wgslsmith_f_op_f32(ceil(-597f)), vec3<bool>(true, true, true))) - _wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(max(1000f, -456f))))), 1440f);
    global1 = array<i32, 20>();
    let var_1 = 985f;
    global2 = min(_wgslsmith_mod_i32(2147483647i >> (u_input.c % 32u), global0[_wgslsmith_index_u32(u_input.c, 13u)]), -1i);
    var var_2 = Struct_1(20584u, global0[_wgslsmith_index_u32(arg_0.b.a.a, 13u)], ~2147483647i);
    return Struct_2(arg_0.b.a);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global3 = array<u32, 21>();
    global1 = array<i32, 20>();
    var var_0 = arg_1;
    let var_1 = Struct_1(~_wgslsmith_mod_u32(func_2(arg_1, var_0.b).a.a, u_input.c), _wgslsmith_sub_i32(-48731i, -2147483647i), -1i);
    var var_2 = min(arg_0, firstLeadingBit(1i));
    return arg_1.b;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: u32) -> Struct_1 {
    global3 = array<u32, 21>();
    var var_0 = Struct_4(Struct_3(u_input.c, func_5(u_input.b.x, Struct_3(global3[_wgslsmith_index_u32(arg_1, 21u)] >> (53083u % 32u), func_2(Struct_3(4294967295u, Struct_2(Struct_1(4294967295u, -813i, 25357i))), Struct_2(Struct_1(21703u, 1181i, global0[_wgslsmith_index_u32(1u, 13u)])))), vec3<i32>(-global1[_wgslsmith_index_u32(arg_2, 20u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 20u)], -2147483647i), -global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2, 21u)], 13u)]), _wgslsmith_f_op_f32(floor(1f)))), ~arg_2 | ~45644u);
    return var_0.a.b.a;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    global3 = array<u32, 21>();
    let var_0 = Struct_1(arg_1.a, ~1i, 44709i);
    let var_1 = Struct_2(func_1(func_3(-(i32(-1i) * -31247i), Struct_4(Struct_3(1u, Struct_2(arg_1)), ~global3[_wgslsmith_index_u32(u_input.d, 21u)]), true, Struct_1(26575u, ~global1[_wgslsmith_index_u32(arg_2.x, 20u)], 38067i)).yx, 4294967295u, 0u));
    let var_2 = Struct_4(Struct_3(u_input.c, Struct_2(func_5(_wgslsmith_add_i32(arg_1.b, -1i), Struct_3(53333u, Struct_2(var_1.a)), vec3<i32>(arg_1.b, global1[_wgslsmith_index_u32(39310u, 20u)], var_0.c), _wgslsmith_f_op_f32(-arg_0.x)).a)), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(var_2.a, arg_0.x, vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(-arg_0.x)))), 496f)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(func_6(vec3<f32>(-193f, 663f, -1461f), func_1(vec2<bool>(false, true), 1u, global3[_wgslsmith_index_u32(94168u, 21u)]), firstLeadingBit(vec3<u32>(12145u, 35923u, 100016u))), ~_wgslsmith_mod_u32(u_input.c, global3[_wgslsmith_index_u32(u_input.c, 21u)]), _wgslsmith_add_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d, 21u)], 44897u), max(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_sub_i32(max(-1i, 2147483647i), _wgslsmith_dot_vec3_i32(max(u_input.a.xzx, abs(u_input.a.yzz)), ~select(vec3<i32>(u_input.a.x, -1i, global1[_wgslsmith_index_u32(u_input.d, 20u)]), u_input.a.xyy, true))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-870f, 124f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(673f, -1105f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1064f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1635f, -695f) + vec2<f32>(-505f, 1318f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-124f, 997f) - vec2<f32>(-1000f, -1250f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-718f, 802f), vec2<f32>(-288f, -989f)))))));
}

