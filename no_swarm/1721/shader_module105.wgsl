struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u, false, 14906u, 0i);

var<private> global1: vec4<f32>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<f32, 15> = array<f32, 15>(-1000f, 990f, -1182f, 355f, 133f, 1129f, 672f, 1869f, 1092f, 1000f, 463f, -1380f, -845f, 355f, -558f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    return !vec2<bool>(any(!vec2<bool>(false, global2.x)), false);
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_3(1u, -35833i < reverseBits(select(global0.d, global0.d, arg_2) >> (~64034u % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~global0.c), 4294967295u), vec2<u32>(_wgslsmith_div_u32(global0.a, 26056u << (global0.a % 32u)), select(~7191u, global0.c, !global2.x))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -1i), u_input.a.yx & u_input.a.yz) | _wgslsmith_sub_i32(min(-2147483647i, arg_3.b.x), reverseBits(reverseBits(arg_3.b.x))));
    return _wgslsmith_f_op_f32(ceil(-710f));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    global0 = Struct_3(_wgslsmith_dot_vec4_u32(select(max(vec4<u32>(global0.c, 52079u, 23063u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.a, global0.c, 1u), vec4<u32>(67548u, 4294967295u, 4294967295u, global0.a))), _wgslsmith_mult_vec4_u32(~vec4<u32>(42144u, 42536u, 25897u, 0u), abs(vec4<u32>(26100u, 14422u, 1u, global0.c))), true | (true || global2.x)), vec4<u32>(1u, _wgslsmith_mod_u32(19085u, global0.a) >> (global0.c % 32u), _wgslsmith_mult_u32(~global0.a, ~global0.c), 1u)), !(!global0.b && true), global0.c, u_input.a.x);
    global0 = Struct_3(_wgslsmith_div_u32(max(global0.a, global0.a), ~(~reverseBits(52002u))), all(select(select(vec4<bool>(true, false, global0.b, false), vec4<bool>(true, false, false, global2.x), global1.x < -308f), !vec4<bool>(true, global0.b, false, global0.b), select(select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(global0.b, false, global0.b, false), true), !vec4<bool>(true, global2.x, true, global2.x), true))), _wgslsmith_mod_u32(1u, select(566u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, global0.c, global0.a, 113222u), abs(vec4<u32>(55404u, 74757u, 7711u, global0.c))), true && !global0.b)), abs(global0.d));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-456f, arg_0.a.x, global3[_wgslsmith_index_u32(0u, 15u)]) - arg_0.a)))) * arg_0.a), ~reverseBits(vec4<i32>(i32(-1i) * -27110i, arg_0.b.x & 71784i, 0i, ~(-9912i))));
    return abs(select(arg_0.b, reverseBits(vec4<i32>(75721i, -1i, abs(var_0.b.x), ~(-34188i))), vec4<bool>(any(vec4<bool>(global2.x, global2.x, global0.b, global2.x)), !(1u > global0.c), func_2(reverseBits(vec3<i32>(arg_0.b.x, u_input.a.x, 30999i)), 142f, -8883i ^ global0.d, Struct_2(arg_0, arg_0.a.x, vec2<bool>(false, global0.b), vec2<u32>(37990u, 1u), 1042f)).x, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.c, 15u)] - 1684f) != _wgslsmith_f_op_f32(-272f * arg_0.a.x))));
}

fn func_1() -> vec4<i32> {
    let var_0 = all(!select(vec2<bool>(!global2.x, global0.b), !func_2(vec3<i32>(-2147483647i, -1i, global0.d), global1.x, 1i, Struct_2(Struct_1(vec3<f32>(126f, global3[_wgslsmith_index_u32(global0.a, 15u)], -1422f), vec4<i32>(1i, 0i, -2147483647i, global0.d)), 802f, vec2<bool>(true, global2.x), vec2<u32>(16080u, global0.c), global1.x)), global0.b));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1401f), 225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-633f)))) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, global1.x, false)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(67570u, 15u)])))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(571f)) * _wgslsmith_f_op_f32(global1.x + 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -527f)), func_2(min(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, u_input.a.x, global0.d)), u_input.a), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, u_input.a.x, -1i), u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(global0.d, 0i, global0.d), u_input.a))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(74360u, ~_wgslsmith_add_u32(22175u, global0.a)), 15u)], 33517i, Struct_2(Struct_1(vec3<f32>(1957f, global1.x, global3[_wgslsmith_index_u32(global0.c, 15u)]), abs(vec4<i32>(0i, 2147483647i, 0i, global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3010f - 212f)), select(global2.zy, vec2<bool>(global2.x, true), !global2.yy), ~vec2<u32>(1u, global0.a), -1594f)).x));
    global0 = Struct_3(firstLeadingBit(abs(~global0.a)), true, ~_wgslsmith_div_u32(4294967295u, ~(~global0.a)), global0.d);
    return countOneBits(func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(global1.yyw, -209f, false, Struct_1(global1.wzz, vec4<i32>(-23581i, u_input.a.x, u_input.a.x, global0.d)))), _wgslsmith_f_op_f32(-849f * global1.x), -1000f), vec4<i32>(-1i) * -vec4<i32>(25529i, global0.d, -10902i, u_input.a.x))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    let var_0 = ~(~3784i << (global0.c % 32u));
    var var_1 = ~u_input.a;
    let var_2 = select(true, all(!vec4<bool>(all(vec4<bool>(false, global2.x, false, true)), any(vec3<bool>(global0.b, global2.x, global2.x)), func_2(vec3<i32>(11647i, var_0, -8146i), global3[_wgslsmith_index_u32(0u, 15u)], -2147483647i, Struct_2(Struct_1(vec3<f32>(global1.x, arg_1, 724f), vec4<i32>(0i, -3852i, -2147483647i, -24636i)), arg_0.a.x, global2.yy, vec2<u32>(88081u, 0u), -164f)).x, false && global2.x)), (i32(-1i) * -2147483647i) <= var_0);
    let var_3 = countOneBits(_wgslsmith_sub_vec2_u32(~select(_wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 57199u), vec2<u32>(global0.c, global0.a)), ~vec2<u32>(51345u, global0.a), !global2.yx), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 13228u), ~vec2<u32>(52769u, 36676u), _wgslsmith_clamp_vec2_u32(vec2<u32>(10369u, global0.a), vec2<u32>(69351u, 0u), vec2<u32>(7936u, 0u))))));
    return Struct_3(_wgslsmith_add_u32(global0.a, _wgslsmith_mult_u32(var_3.x, 1u) ^ global0.c) & 4294967295u, !(arg_0.b.x <= -12962i), 1u, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global1.zxz)), -func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(firstTrailingBit(global0.a) & global0.a, 15u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(61256u, 15u)] * global3[_wgslsmith_index_u32(15385u, 15u)]) + _wgslsmith_f_op_f32(abs(global1.x))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.zzx - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(global0.a, 15u)], global3[_wgslsmith_index_u32(38518u, 15u)], -724f) + global1.xxx))), firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 1i, global0.d, u_input.a.x), vec4<i32>(0i, 0i, 2147483647i, u_input.a.x) ^ vec4<i32>(global0.d, u_input.a.x, global0.d, -29361i)), ~vec4<i32>(global0.d, u_input.a.x, -76834i, -1i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(global1.yzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)))), max(vec4<i32>(var_0.b.x, ~(-33690i), i32(-1i) * -34811i, -global0.d), select(vec4<i32>(global0.d, var_0.b.x, -15151i, 4457i), ~var_0.b, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)) - 2108f))), vec2<bool>(global0.b, global2.x), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(1u, global0.c))), ((vec2<u32>(global0.c, 1u) & vec2<u32>(global0.a, 4294967295u)) << (select(vec2<u32>(global0.c, global0.c), vec2<u32>(0u, global0.c), global0.b) % vec2<u32>(32u))) ^ ~(vec2<u32>(global0.a, 1u) >> (vec2<u32>(1u, global0.c) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-1f));
    let var_2 = var_1;
    global0 = func_5(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(32421u, 15u)] + -140f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, 470f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(606f, var_0.a.x, var_2.b, -1937f), vec4<f32>(1000f, var_0.a.x, var_2.b, var_0.a.x), vec4<bool>(var_2.c.x, var_2.c.x, true, false)))))))));
}

