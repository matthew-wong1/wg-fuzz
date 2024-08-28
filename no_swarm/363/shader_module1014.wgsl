struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = 57065i;
    global0 = array<u32, 30>();
    global1 = select(select(vec4<bool>(!global1.x, global1.x, !any(vec2<bool>(global1.x, true)), any(vec4<bool>(false, true, false, global1.x)) && (global1.x & true)), select(vec4<bool>(!global1.x, 420f > arg_0.x, true, any(global1.zx)), vec4<bool>(select(global1.x, true, global1.x), global1.x && true, all(global1.yz), global1.x), global1.x), select(vec4<bool>(any(vec3<bool>(true, false, true)), global1.x, global1.x, global1.x), select(select(vec4<bool>(true, true, true, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x)), !vec4<bool>(false, true, true, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x)), vec4<bool>(global1.x, global1.x, false, global0[_wgslsmith_index_u32(~max(global0[_wgslsmith_index_u32(0u, 30u)], 1u), 30u)] >= ~u_input.a.x), false);
    let var_1 = select(u_input.a.x == _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 42280u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)] ^ global0[_wgslsmith_index_u32(14591u, 30u)], 30u)]), u_input.a), 89271u == u_input.a.x, select(global1.x, !(!global1.x) | all(select(vec4<bool>(global1.x, true, false, false), vec4<bool>(true, true, global1.x, false), global1.x)), false));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.a.x, 30u)] ^ countOneBits(0u)), 30u)] & _wgslsmith_sub_u32(33094u, u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 1187f), true)), arg_0.x)) < 1134f);
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = ~vec3<u32>(arg_1.x, _wgslsmith_mod_u32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))), _wgslsmith_sub_u32(firstLeadingBit(arg_1.x), ~u_input.a.x)), arg_1.x >> (1u % 32u));
    var var_1 = Struct_1(min(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u >> (var_0.x % 32u), 63236u), vec2<u32>(u_input.a.x, 78725u) ^ var_0.zy)), select(!arg_2.b, false, select(all(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, global1.x, arg_0, global1.x))), var_0.x > (0u >> (arg_2.a % 32u)), true)));
    let var_2 = true;
    global1 = !vec4<bool>(!(arg_2.b || false), true, true, true);
    var var_3 = Struct_1(u_input.a.x, -709f == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_3, -1384f, var_2)))));
    return _wgslsmith_clamp_u32(11603u, 35792u, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.a.x, 20977u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = -_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 3697i, 1i, -26468i), vec4<i32>(58071i, -1i, -6555i, -2147483647i)) >> (vec4<u32>(1u, 0u, u_input.a.x, arg_0.x) % vec4<u32>(32u))));
    let var_1 = arg_1;
    var_0 = vec4<i32>(abs(~(~select(var_0.x, 2147483647i, var_1.b))), abs(-1i), abs(-2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, abs(1i), -30786i, var_0.x), vec4<i32>(_wgslsmith_add_i32(2147483647i, -2147483647i), var_0.x, var_0.x, -1i)));
    var var_2 = all(vec2<bool>(false, !all(!global1.ywz)));
    let var_3 = global1.x;
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global1 = select(vec4<bool>(-1000f != arg_0, !arg_1.b, arg_1.b, true), !select(select(!vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(arg_1.b, false, arg_1.b, true), arg_1.b), !vec4<bool>(false, arg_1.b, false, global1.x), any(vec2<bool>(global1.x, false))), arg_1.b);
    let var_0 = ~(~arg_2);
    let var_1 = arg_1;
    var var_2 = !any(global1.zy);
    global0 = array<u32, 30>();
    return func_4(u_input.a, Struct_1(_wgslsmith_clamp_u32(61328u, _wgslsmith_mod_u32(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 30u)]) >> (firstLeadingBit(arg_1.a) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.a, 24758u, 4294967295u) << (vec4<u32>(0u, 0u, arg_1.a, 4294967295u) % vec4<u32>(32u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 1u, 4294967295u, var_1.a))), true != !(false & global1.x)), -549f < _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) - _wgslsmith_f_op_f32(arg_0 + arg_0)))));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(50856u, func_3(vec2<f32>(747f, 172f))), _wgslsmith_dot_vec2_u32(select(countOneBits(u_input.a.xx), select(u_input.a.yy, u_input.a.yx, global1.xw), true), vec2<u32>(_wgslsmith_mult_u32(0u, 1u), arg_0.a))), global1.x);
    var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1500f - 551f), _wgslsmith_f_op_f32(f32(-1f) * -861f))), _wgslsmith_div_f32(-459f, _wgslsmith_f_op_f32(min(-734f, -505f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-285f)))))), func_5(_wgslsmith_f_op_f32(ceil(-746f)), arg_0, vec2<i32>(_wgslsmith_sub_i32(~(-63359i), 13898i), 1i)), (select(vec2<i32>(1i, 1i), vec2<i32>(-9167i, -1i), !arg_0.b) << (~(vec2<u32>(65289u, 1u) >> (u_input.a.xz % vec2<u32>(32u))) % vec2<u32>(32u))) & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, 1i, -28002i), vec4<i32>(-2147483647i, 29483i, 25557i, 8068i), vec4<i32>(12278i, -19304i, 28924i, -2147483647i))), i32(-1i) * -1i));
    global0 = array<u32, 30>();
    var var_1 = ~select(~(~firstTrailingBit(var_0.a)), 115003u, false);
    let var_2 = arg_0;
    return Struct_1(~44085u, true);
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -615f) * _wgslsmith_f_op_f32(trunc(1000f)))), func_4(u_input.a, Struct_1(func_2(false, vec2<u32>(global0[_wgslsmith_index_u32(1u, 30u)], 14272u), Struct_1(u_input.a.x, global1.x), 2317f), false), _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(select(-136f, 406f, global1.x))), vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -32329i, -1i), -_wgslsmith_sub_i32(-43282i, 51860i))));
    global1 = select(!vec4<bool>(var_0.b, func_5(_wgslsmith_f_op_f32(f32(-1f) * -233f), Struct_1(1u, var_0.b), vec2<i32>(1i, 1i)).b, !func_5(-283f, Struct_1(u_input.a.x, true), vec2<i32>(0i, 1i)).b, global1.x), !vec4<bool>(true, global1.x, !var_0.b, global1.x), !vec4<bool>(false, !global1.x, all(!global1.yzz), false));
    let var_1 = ~abs(~(~vec4<u32>(var_0.a, global0[_wgslsmith_index_u32(0u, 30u)], 4294967295u, u_input.a.x)) ^ abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 30u)], 49625u, 60934u, u_input.a.x)));
    return func_6(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = !global1.x;
    global0 = array<u32, 30>();
    var var_1 = func_1();
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-219f, -209f), _wgslsmith_f_op_f32(sign(-1832f)))))) - -1072f), func_4(~(~(~vec3<u32>(var_1.a, 0u, 4294967295u))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 30u)]), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(42729u, 30u)])), var_1.b), global1.x), -select(-vec2<i32>(-46879i, 21360i), vec2<i32>(1i, 1i), global1.zx));
    global0 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, var_2.a, ~(~u_input.a), _wgslsmith_f_op_f32(step(-501f, _wgslsmith_f_op_f32(round(-2290f)))));
}

