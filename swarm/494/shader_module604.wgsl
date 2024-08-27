struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: f32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-1i, -24671i, 2147483647i, 2147483647i, 0i, 6747i, 1i, 1i, 2147483647i, -2912i, 19112i, 16326i, i32(-2147483648), 641i);

var<private> global1: array<f32, 12>;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: u32) -> vec3<bool> {
    global2 = array<Struct_1, 28>();
    let var_0 = -2147483647i;
    let var_1 = vec3<bool>(arg_2.x & false, !arg_2.x, true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(502f, global1[_wgslsmith_index_u32(~15477u, 12u)]) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_3, 12u)], global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 1u)), 12u)])), select(~(~reverseBits(93281u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, arg_0.x), _wgslsmith_sub_vec2_u32(u_input.b, u_input.b)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0, vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, 1u)), vec2<u32>(1u, 1u), arg_0)), !arg_2.x));
    let var_3 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i, ~(-var_0)), vec2<i32>(_wgslsmith_clamp_i32(16564i << (var_2.b % 32u), _wgslsmith_add_i32(arg_1.x, 10787i), var_0), 1i), select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(arg_2.x, arg_2.x), var_1.x), var_1.xy, select(var_1.xy, vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), true)), vec2<i32>(0i, ~(~countOneBits(-1i))));
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(-var_2.a) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(150f)) + _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_0.x, 12u)], -763f)))), _wgslsmith_f_op_f32(round(var_2.a)) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - 543f)))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = arg_2.b;
    let var_1 = reverseBits(var_0.a);
    global0 = array<i32, 14>();
    let var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.x, arg_2.a.x))), Struct_1(arg_3.b.a));
    let var_3 = true;
    return select(vec3<bool>(arg_1, arg_0, !arg_0), select(vec3<bool>(any(!vec4<bool>(arg_0, true, false, false)), all(select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(false, var_3, var_3, arg_1), vec4<bool>(true, var_3, true, arg_1))), true), select(select(!vec3<bool>(arg_1, false, arg_0), vec3<bool>(arg_1, arg_1, arg_1), false), func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(73506u, u_input.b.x), vec2<u32>(76243u, u_input.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.b.a.x, 0i), vec2<i32>(-1i, 2147483647i), var_0.a), vec2<bool>(true, arg_1), ~44072u), ~u_input.b.x == ~25973u), !select(arg_0, all(vec4<bool>(false, false, false, true)), any(vec2<bool>(var_3, true)))), !vec3<bool>(true, all(vec3<bool>(arg_1, true, true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] - arg_2.a.x) > _wgslsmith_div_f32(arg_2.a.x, var_2.a.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool) -> Struct_5 {
    var var_0 = ~(~reverseBits(~u_input.a.yy));
    var var_1 = Struct_4(reverseBits(u_input.a.wxy), Struct_3(_wgslsmith_f_op_vec2_f32(round(arg_0.yx)), Struct_1(vec2<i32>(-1i) * -vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(var_0.x, 14u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-903f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)] * 1803f)))), _wgslsmith_f_op_f32(-arg_0.x))), vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -2147483647i, ~(-global0[_wgslsmith_index_u32(abs(var_0.x), 14u)])));
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(876f, _wgslsmith_f_op_f32(-620f + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x - global1[_wgslsmith_index_u32(4294967295u, 12u)])) - global1[_wgslsmith_index_u32(~u_input.b.x, 12u)]))));
    var var_3 = _wgslsmith_f_op_f32(select(1165f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-690f * arg_0.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 12u)] * global1[_wgslsmith_index_u32(var_0.x, 12u)]), _wgslsmith_f_op_f32(trunc(1000f))))), 228f), !(_wgslsmith_sub_u32(u_input.b.x, var_0.x) > 1u) & arg_1.x));
    global0 = array<i32, 14>();
    return Struct_5(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 14u)]));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: f32) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1[_wgslsmith_index_u32(75766u, 12u)], arg_3)) - vec3<f32>(-613f, arg_3, -223f)), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 57681u), 12u)], 759f, _wgslsmith_f_op_f32(min(arg_3, arg_3)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(508f - 486f), _wgslsmith_f_op_f32(step(arg_3, -1242f)), global1[_wgslsmith_index_u32(arg_2.x, 12u)]))), select(vec3<bool>(true & arg_0, arg_0, u_input.a.x <= _wgslsmith_div_u32(arg_2.x, 26660u)), func_2(false, arg_0, Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 579f), vec2<f32>(-433f, arg_3), vec2<bool>(arg_0, arg_0))), global2[_wgslsmith_index_u32(~arg_2.x, 28u)]), Struct_3(vec2<f32>(arg_3, 1372f), global2[_wgslsmith_index_u32(~2031u, 28u)])), any(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), arg_0))), 39749u == abs(u_input.a.x));
    global0 = array<i32, 14>();
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_2 = _wgslsmith_f_op_f32(205f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(trunc(arg_3)))));
    global1 = array<f32, 12>();
    return ~(~(~(~27167u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<u32>(~u_input.b.x, func_1(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(53258u, 14u)], global0[_wgslsmith_index_u32(35806u, 14u)]) <= -9050i, vec2<i32>(abs(28483i), select(global0[_wgslsmith_index_u32(26609u, 14u)], global0[_wgslsmith_index_u32(45347u, 14u)], true)), u_input.a & u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1404f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 12u)] + global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), reverseBits(65643u)), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(16604u, 12u)]) + vec2<f32>(302f, 118f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-422f, 552f)))))), Struct_1(vec2<i32>(~global0[_wgslsmith_index_u32(1u, 14u)], -global0[_wgslsmith_index_u32(43863u, 14u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(48810u, 12u)]), vec3<i32>((select(1i, global0[_wgslsmith_index_u32(411u, 14u)], false) & 0i) ^ global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, 52905u), 14u)], 40885i, -global0[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(155f, var_0.b.a.x, -477f)) + vec3<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], var_0.c, true)), _wgslsmith_f_op_f32(abs(var_0.b.a.x)), -338f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1161f, 631f, 1000f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-256f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * var_0.b.a.x))), _wgslsmith_f_op_f32(round(703f))))));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(42005u, 12u)]))))), var_0.c), ~_wgslsmith_clamp_u32(0u, var_0.a.x, 58370u) | u_input.b.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(sign(var_0.b.a.x)), global1[_wgslsmith_index_u32(~u_input.b.x, 12u)]))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(min(917f, -454f)))))))));
    let var_4 = !any(vec4<bool>(true, func_3(vec2<u32>(4294967295u, var_2.b), firstTrailingBit(vec2<i32>(var_0.d.x, global0[_wgslsmith_index_u32(var_2.b, 14u)])), vec2<bool>(true, true), ~var_2.b).x, select(true, select(true, true, false), true), true));
    var var_5 = select(select(vec3<bool>(!(!var_4), var_4 && all(vec3<bool>(var_4, var_4, var_4)), any(select(vec3<bool>(var_4, var_4, false), vec3<bool>(false, false, false), true))), select(select(!vec3<bool>(true, true, var_4), func_2(var_4, var_4, Struct_3(var_3.zy, var_0.b.b), Struct_3(vec2<f32>(971f, var_3.x), global2[_wgslsmith_index_u32(var_0.a.x, 28u)])), var_0.b.a.x > var_0.b.a.x), !select(vec3<bool>(false, true, var_4), vec3<bool>(true, var_4, var_4), false), func_3(~u_input.a.xz, var_0.b.b.a, vec2<bool>(false, true), _wgslsmith_div_u32(70979u, 4676u)).x), true), !vec3<bool>(select(var_4, false, var_4) | (true & var_4), true, global0[_wgslsmith_index_u32(var_0.a.x, 14u)] <= -15914i), var_4);
    var var_6 = var_0.b;
    let var_7 = -79814i;
    var var_8 = Struct_1(vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(31616u, 109247u, 0u), u_input.a.yxz, vec3<u32>(4294967295u, u_input.b.x, 32129u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]) - 2069f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1113f))))), 23715u, countOneBits(min(~u_input.a, ~(~u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_6.a)))))));
}

