struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<i32, 20> = array<i32, 20>(7594i, -1i, -29011i, 63062i, i32(-2147483648), 2147483647i, 0i, -7911i, -1i, -12034i, -1582i, 2147483647i, -1i, 12346i, 1i, i32(-2147483648), -18901i, 1i, 2147483647i, -1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = arg_1.b;
    global0 = Struct_1(arg_2.a.wyx, arg_1.b.b);
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.a.x, -1657f, 525f))))), arg_0));
    global1 = arg_1.b.a.x;
    var var_1 = vec3<i32>(-1i, max(~(~(global2[_wgslsmith_index_u32(33769u, 20u)] << (u_input.a.x % 32u))), -select(2147483647i, global2[_wgslsmith_index_u32(15289u, 20u)], select(arg_1.b.b, arg_2.b.b, true))), ~global2[_wgslsmith_index_u32(55877u, 20u)]);
    return global0.b;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = -_wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], arg_1 | -29569i);
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2067f), 110f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_f32(1535f, _wgslsmith_f_op_f32(f32(-1f) * -1022f)), all(vec2<bool>(true, false))))), true && global0.b);
    global1 = _wgslsmith_f_op_f32(-global0.a.x);
    global0 = Struct_1(vec3<f32>(global0.a.x, -1945f, global0.a.x), any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, func_3(arg_0, Struct_2(vec4<f32>(-1000f, 227f, -455f, global0.a.x), Struct_1(global0.a, global0.b)), Struct_2(vec4<f32>(global0.a.x, -385f, global0.a.x, -316f), Struct_1(vec3<f32>(1161f, -1174f, -1000f), global0.b)))), (2147483647i <= var_0) & true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.a, _wgslsmith_f_op_vec3_f32(abs(global0.a))))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(528f, _wgslsmith_div_f32(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(step(-801f, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + vec3<f32>(global0.a.x, -790f, global0.a.x))))), !global0.b);
    return Struct_1(var_1.a, !(true & !(1u < u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_1, arg_1), 20u)], -reverseBits(44680i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(arg_1.x, 20u)])), ~vec2<i32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), abs(-global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), vec4<i32>(31210i, 1i, 8164i, ~global2[_wgslsmith_index_u32(arg_1.x, 20u)]));
    var var_1 = func_2(false, abs(select(global2[_wgslsmith_index_u32(min(0u, 10349u), 20u)], _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(arg_1.x, 20u)])), true)));
    let var_2 = func_2(false, -max(global2[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(~1u, 20u)], 1i)));
    let var_3 = ~vec4<u32>(reverseBits(~12597u & _wgslsmith_div_u32(arg_1.x, 10185u)), 2016u, 0u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_1, arg_1), _wgslsmith_dot_vec2_u32(arg_1.yz, u_input.b.zy)));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), var_2.a.x, _wgslsmith_f_op_f32(100f * -2021f), 793f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(416f, 1287f, 105f, global0.a.x) - vec4<f32>(global0.a.x, var_1.a.x, 963f, 819f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, -628f, 633f, -476f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -494f, -422f, 417f)))) - vec4<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), 1000f, _wgslsmith_div_f32(arg_0.a.x, var_2.a.x), -299f)), arg_0.b)), func_2(var_2.b, 1i));
    return var_4.b.b;
}

fn func_1() -> Struct_2 {
    var var_0 = ~max(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> (0u % 32u), u_input.b.x);
    global2 = array<i32, 20>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, global0.a)))), !func_4(func_2(global0.b || global0.b, ~global2[_wgslsmith_index_u32(17835u, 20u)]), vec4<u32>(abs(u_input.a.x), u_input.a.x, 76838u, 412u)));
    global2 = array<i32, 20>();
    global2 = array<i32, 20>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 514f, global0.a.x, -1386f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.x, -475f, -801f, 1065f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(803f, _wgslsmith_f_op_f32(sign(-1001f)), var_1.a.x, _wgslsmith_div_f32(var_1.a.x, var_1.a.x)) - vec4<f32>(_wgslsmith_div_f32(2300f, global0.a.x), global0.a.x, -114f, var_1.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(134f, 1141f, 1274f) - var_1.a), true)) - _wgslsmith_f_op_vec3_f32(ceil(global0.a))), all(select(!vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, true, global0.b), select(vec3<bool>(var_1.b, false, global0.b), vec3<bool>(false, global0.b, var_1.b), vec3<bool>(global0.b, false, false))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_add_i32(select(-61879i, 65336i, false), abs(global2[_wgslsmith_index_u32(u_input.b.x, 20u)]));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))));
    var var_2 = i32(-1i) * -2147483647i;
    var var_3 = arg_0;
    return Struct_2(var_3.a, func_2(true, i32(-1i) * -1i));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<f32>) -> u32 {
    var var_0 = arg_0;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x * var_0.a.x) * 2422f);
    var_0 = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-func_1().a), arg_0.b), var_0.b, arg_2.wyy, func_5(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1050f, var_0.a.x, 695f, -390f) * var_0.a), Struct_1(arg_0.b.a, var_0.b.b)), func_5(func_1(), var_0.b, arg_2.xxy, func_5(Struct_2(var_0.a, var_0.b), var_0.b, vec3<bool>(true, arg_1, true), global0.b).b.b).b, arg_2.xww, arg_1).b.b | all(vec3<bool>(arg_1, !global0.b, true)));
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1040f * _wgslsmith_f_op_f32(trunc(-194f))))))));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(), func_2(global0.b, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]), select(vec3<bool>(true, false, !global0.b), !(!vec3<bool>(true, global0.b, global0.b)), !(!vec3<bool>(true, true, global0.b))), global0.b), u_input.a.x >= 0u, vec4<bool>(global0.b, any(!(!vec2<bool>(global0.b, true))), true, func_3(!global0.b, Struct_2(func_1().a, func_5(Struct_2(vec4<f32>(451f, 523f, -643f, -1302f), Struct_1(global0.a, global0.b)), Struct_1(vec3<f32>(global0.a.x, global0.a.x, -1000f), global0.b), vec3<bool>(false, false, true), false).b), func_1())), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1086f), -1994f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.a.x)))), global0.a.x, func_2(true, min(global2[_wgslsmith_index_u32(56601u, 20u)], -2147483647i)).a.x) + _wgslsmith_f_op_vec4_f32(min(func_1().a, vec4<f32>(548f, 614f, _wgslsmith_f_op_f32(floor(228f)), _wgslsmith_f_op_f32(global0.a.x - global0.a.x))))));
    global0 = func_2(true, _wgslsmith_dot_vec4_i32(~abs(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], 0i, global2[_wgslsmith_index_u32(6916u, 20u)])), vec4<i32>(~firstLeadingBit(39298i), abs(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)])), 2147483647i, 35647i)));
    global2 = array<i32, 20>();
    var var_1 = func_1();
    let var_2 = -43867i;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(51649i, 1i))) | -13203i);
}

