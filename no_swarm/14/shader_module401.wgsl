struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(366f, 1000f, 168f, 732f);

var<private> global1: vec3<f32> = vec3<f32>(988f, 1074f, 1174f);

var<private> global2: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(35558u, 40795u, 0u), vec3<u32>(43034u, 7607u, 0u), vec3<u32>(25668u, 7832u, 45548u), vec3<u32>(4294967295u, 2028u, 4419u), vec3<u32>(0u, 1u, 60521u), vec3<u32>(0u, 39465u, 4294967295u), vec3<u32>(42353u, 30635u, 4549u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1027u, 41233u, 1u), vec3<u32>(1u, 31294u, 9037u), vec3<u32>(0u, 28946u, 4294967295u), vec3<u32>(4294967295u, 2935u, 0u), vec3<u32>(1u, 4294967295u, 12280u), vec3<u32>(5079u, 1u, 62509u), vec3<u32>(4294967295u, 1u, 41445u), vec3<u32>(1u, 12039u, 7666u), vec3<u32>(54099u, 0u, 0u), vec3<u32>(0u, 26647u, 4294967295u), vec3<u32>(16655u, 15039u, 1u), vec3<u32>(4294967295u, 17388u, 0u));

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_5) -> i32 {
    global3 = array<Struct_2, 31>();
    var var_0 = all(!select(select(!vec3<bool>(arg_2, arg_2, arg_2), !vec3<bool>(false, arg_2, true), arg_3.b < global1.x), select(!vec3<bool>(arg_2, arg_2, true), !vec3<bool>(arg_2, arg_2, false), !vec3<bool>(true, arg_2, false)), true));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xwz) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(min(1586f, -204f)))))), select(vec2<bool>(arg_2, !(!arg_2)), !(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), vec2<bool>(true, false))), arg_2), ~(~global2[_wgslsmith_index_u32(min(reverseBits(arg_0), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 20u)])), 20u)]));
    var_0 = any(select(vec3<bool>(true, false, any(!vec4<bool>(var_1.b.x, false, arg_2, true))), !vec3<bool>(arg_2, arg_0 != 1u, arg_2), !select(vec3<bool>(false, var_1.b.x, false), !vec3<bool>(arg_2, false, false), !arg_2)));
    var var_2 = _wgslsmith_div_vec3_u32(~max(var_1.c >> (vec3<u32>(4294967295u, 115646u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x)), max(~global2[_wgslsmith_index_u32(~183u | ~var_1.c.x, 20u)], reverseBits(var_1.c)));
    return max(-16683i, max(1i, _wgslsmith_div_i32(~(-30121i) ^ _wgslsmith_mult_i32(arg_1.b.a, arg_1.c), -_wgslsmith_mult_i32(arg_3.c.b.a, -816i))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_5(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.d, arg_3.x))))) - _wgslsmith_f_op_f32(global0.x - arg_1)), Struct_4(arg_2.a, Struct_1((i32(-1i) * -17484i) & -u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-291f, -1000f)))), arg_3.x), ~arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-980f, -179f)) + global0.x)));
    var var_1 = (-1i << (firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), ~u_input.a)) % 32u)) & reverseBits(max(0i, ~(-26793i)) >> (u_input.a % 32u));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, firstLeadingBit(1u), 1377u, _wgslsmith_div_u32(8569u, _wgslsmith_sub_u32(u_input.a, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), u_input.a), ~(~u_input.a), u_input.a & ~u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(45200u, 1u, u_input.a, 26010u) >> (vec4<u32>(u_input.a, 0u, 9869u, 65357u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), ~min(vec4<u32>(11255u, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))))), 31u)];
    var var_3 = 19025i;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(arg_3.x, -611f)), 897f, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(-var_0.a.b.b)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.x, global0.x)), arg_2.a.c, global1.x, _wgslsmith_f_op_f32(select(-2688f, -230f, true)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(-146f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1806f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, var_0.c.a.c, arg_2.a.c, global0.x), vec4<f32>(global0.x, global1.x, arg_3.x, arg_2.a.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, var_0.b, arg_0, var_2.a.b)))))));
    return vec3<bool>(true, true, true);
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(all(vec3<bool>(!any(vec4<bool>(true, true, false, false)), true, all(vec3<bool>(true, true, true)))), true);
    let var_1 = !func_4(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -619f), Struct_4(Struct_1(u_input.b, -574f, -417f), Struct_1(func_3(8289u, Struct_4(Struct_1(u_input.b, 580f, 1513f), Struct_1(92050i, -1139f, global1.x), 713i, 355f), true, Struct_5(Struct_4(Struct_1(1i, -120f, global1.x), Struct_1(u_input.c.x, -1448f, global1.x), 1i, 521f), global0.x, Struct_4(Struct_1(-1i, global0.x, -184f), Struct_1(u_input.c.x, global1.x, -1738f), 0i, global1.x))), _wgslsmith_f_op_f32(global1.x - -236f), _wgslsmith_f_op_f32(global1.x - global0.x)), ~abs(u_input.b), -1000f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(global0.ywx, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-410f, global0.x, -265f))))), global0.ywx)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1453f, global0.x) - _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -845f))), 130f, _wgslsmith_f_op_f32(step(861f, global1.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -805f, global0.x) - vec4<f32>(global1.x, -478f, 1175f, global1.x)) + vec4<f32>(-369f, -462f, 1845f, 1595f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(195f, global0.x, global1.x, 672f) - vec4<f32>(-2158f, -744f, 1000f, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-728f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, 401f)), _wgslsmith_f_op_f32(abs(892f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1644f, -964f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2459f, 1069f))))));
    let var_3 = _wgslsmith_mult_vec2_i32(reverseBits(min(-vec2<i32>(u_input.c.x, 0i) & ~vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(~(-2147483647i), u_input.c.x))), u_input.c.wz);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(global1.x - global0.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-305f, _wgslsmith_f_op_f32(round(-456f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x)))));
    return 1203f;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global3 = array<Struct_2, 31>();
    let var_1 = arg_2.a.x;
    var var_2 = Struct_1(u_input.b, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1078f - 527f) - var_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1242f)))) * _wgslsmith_f_op_f32(select(var_0, 529f, false))));
    let var_3 = u_input.b;
    return ~(vec3<u32>(1u, 4294967295u, 76208u) ^ ~countOneBits(global2[_wgslsmith_index_u32(1u, 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)))), 2828f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x * global1.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1535f, global0.x, -397f))) - vec4<f32>(global1.x, global1.x, -1073f, -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1549f, -1251f) * vec4<f32>(461f, 1200f, -2906f, global1.x))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, 788f, 451f, -260f)))));
    var var_0 = vec3<f32>(global0.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)));
    var var_1 = ~vec3<u32>(1u, ~max(21865u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 40070u, 1u, u_input.a), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a))), _wgslsmith_sub_u32(max(86339u, u_input.a), ~0u));
    var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(44648u, u_input.a, u_input.a) & global2[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), select(global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], vec3<bool>(true, false, false)), func_1(var_0.x, true, Struct_3(global0.yyy, vec2<bool>(false, true), global2[_wgslsmith_index_u32(var_1.x, 20u)])))), min(global2[_wgslsmith_index_u32(var_1.x, 20u)], ~global2[_wgslsmith_index_u32(33144u, 20u)]) << (_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(58191u, 20u)] >> (global2[_wgslsmith_index_u32(var_1.x, 20u)] % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 64715u)) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(u_input.a, 12609u), u_input.a) << (countOneBits((u_input.a & u_input.a) | ~var_1.x) % 32u), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~1u, u_input.a), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 1861f, global0.x, -129f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)), global0.x, 2849f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(708f, global1.x)))))));
}

