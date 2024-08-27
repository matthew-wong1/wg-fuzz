struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-2556f, 1000f);

var<private> global1: bool;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(57739u), Struct_1(1u), Struct_1(46602u), Struct_1(1u), Struct_1(35516u), Struct_1(4294967295u), Struct_1(15418u), Struct_1(0u), Struct_1(0u), Struct_1(33337u), Struct_1(1u), Struct_1(11727u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(0u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_1;
    var_0 = global2[_wgslsmith_index_u32(~u_input.d, 16u)];
    global0 = array<f32, 2>();
    let var_1 = true;
    let var_2 = -4818i;
    return select(select(vec4<bool>(false, false, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 2u)]) < 107f, var_1), !select(!vec4<bool>(var_1, true, var_1, false), vec4<bool>(true, true, var_1, true), true), arg_0 == _wgslsmith_f_op_f32(-872f * global0[_wgslsmith_index_u32(26408u, 2u)])), vec4<bool>(true, !all(!vec4<bool>(var_1, false, true, false)), true, any(select(select(vec4<bool>(true, var_1, false, true), vec4<bool>(var_1, true, true, var_1), var_1), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_1, var_1, var_1), var_1), false))), vec4<bool>(var_1, true, !(!any(vec4<bool>(true, var_1, var_1, false))), !var_1));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = ~(~18136u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(countOneBits(33932u), 2u)])) + -834f);
    let var_2 = Struct_1(15105u);
    global0 = array<f32, 2>();
    let var_3 = _wgslsmith_mult_vec4_i32(reverseBits(max(max(vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, 1i), u_input.a), ~(-u_input.a))), firstLeadingBit(vec4<i32>(0i, -30324i ^ max(arg_2.x, -1i), -19713i, arg_2.x)));
    return ~0u;
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(26547u, 2u)])), _wgslsmith_f_op_f32(156f * 453f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, u_input.d), 2u)]), global0[_wgslsmith_index_u32(firstLeadingBit(max(0u, u_input.d)), 2u)]))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 16u)];
    var var_2 = Struct_1(func_4(func_3(var_0.x, Struct_1(~var_1.a), Struct_1(1u << (var_1.a % 32u))), Struct_1(~(~57365u)), -((u_input.a.wy | u_input.a.yz) & firstLeadingBit(vec2<i32>(-2147483647i, u_input.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-16147i, 58358i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~u_input.c), firstLeadingBit(firstTrailingBit(u_input.a.xxz)), max(vec3<i32>(-16905i, u_input.a.x, -1i), select(vec3<i32>(u_input.c, 2147483647i, 5420i), u_input.a.xyw, vec3<bool>(false, false, false))))));
    return Struct_1(~28922u);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 1u << (0u % 32u);
    var var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-796f, _wgslsmith_f_op_f32(max(129f, global0[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a, 2u)]))) * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(-211f, 1273f))))), arg_1, Struct_1(78723u)).x;
    global1 = any(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(round(609f))) >= global0[_wgslsmith_index_u32(u_input.b, 2u)], true));
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    return select(vec4<bool>(1f >= _wgslsmith_f_op_f32(-arg_0), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))) & (all(vec2<bool>(true, true)) & true), true), vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, true && !any(vec3<bool>(false, false, true)), all(func_3(_wgslsmith_f_op_f32(f32(-1f) * -592f), Struct_1(arg_2.a), arg_2).xx)), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)] >= _wgslsmith_f_op_f32(sign(-1461f)), false, !func_3(global0[_wgslsmith_index_u32(36110u, 2u)], Struct_1(arg_1.a), arg_1).x, false));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = u_input.d;
    let var_1 = -arg_0.x;
    var var_2 = select(select(vec4<bool>(!any(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(u_input.b, 2u)] == global0[_wgslsmith_index_u32(_wgslsmith_add_u32(9114u, u_input.d), 2u)], true, true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), func_5(1f, func_2(), Struct_1(u_input.b)), any(vec3<bool>(true, true, true))), vec4<bool>(false, true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))), vec4<bool>(any(func_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.b), vec2<u32>(u_input.b, 22020u)), 2u)], func_2(), global2[_wgslsmith_index_u32(~u_input.b, 16u)]).zz), true, true, false), select(true, true, all(vec3<bool>(select(false, true, false), true, false))));
    let var_3 = func_2();
    let var_4 = !all(!vec4<bool>(var_2.x, func_5(global0[_wgslsmith_index_u32(var_3.a, 2u)], var_3, Struct_1(u_input.b)).x, false, true));
    return 5482u == ~var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec4<bool>(func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-31239i, -1i, 8221i), u_input.a.yyw)), false || all(vec4<bool>(false, true, true, false)), true, !any(vec3<bool>(false, false, true)))) || (true & !(246f >= _wgslsmith_div_f32(-1156f, global0[_wgslsmith_index_u32(100135u, 2u)])));
    global2 = array<Struct_1, 16>();
    var var_0 = i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -30067i, u_input.a.x, u_input.c), ~u_input.a), u_input.c);
    global2 = array<Struct_1, 16>();
    let var_1 = true;
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(76965u, 2u)])), global0[_wgslsmith_index_u32(~u_input.d, 2u)], true))))), vec3<u32>(func_2().a, _wgslsmith_div_u32(0u, u_input.b >> (u_input.d % 32u)), u_input.b) >> (~(~vec3<u32>(991u, 0u, 43795u) & min(vec3<u32>(19369u, u_input.b, 4294967295u), vec3<u32>(4294967295u, u_input.d, u_input.d))) % vec3<u32>(32u)), vec2<u32>(u_input.d, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] + -409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 2u)] * global0[_wgslsmith_index_u32(u_input.d, 2u)])), 1045f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(1u), u_input.b), 2u)])));
}

