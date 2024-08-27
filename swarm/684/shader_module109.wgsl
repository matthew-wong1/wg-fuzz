struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, true, false, true, false, true, true, false, true, false, true, true, false, false, false, true, false, false, true, false, false, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> vec3<f32> {
    global0 = array<bool, 32>();
    var var_0 = Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 32u)], !all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)], true, false)), true, true), -1096f, Struct_1(_wgslsmith_dot_vec2_u32(arg_1, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(755f, -715f, 2275f, 554f) - vec4<f32>(-308f, -1000f, -491f, 121f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -792f, 1079f, 389f), vec4<f32>(203f, 563f, 1286f, -1055f))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, abs(1u), select(40267u, 0u, global0[_wgslsmith_index_u32(1u, 32u)]), ~arg_1.x), ~vec4<u32>(28737u, arg_1.x, 15735u, u_input.a) | ~vec4<u32>(u_input.a, 1u, arg_1.x, 16033u)), 32u)]), -687f);
    let var_1 = ~countOneBits(~select(abs(vec4<u32>(54441u, 4294967295u, u_input.a, 26029u)), vec4<u32>(55694u, 0u, 19617u, u_input.a) ^ vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), !var_0.a));
    return _wgslsmith_div_vec3_f32(var_0.c.b.wzx, vec3<f32>(301f, var_0.d, var_0.c.b.x));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1717f, 2782f)) - 1678f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_f32(f32(-1f) * -1174f)) + _wgslsmith_f_op_f32(-471f + -179f))), -301f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))));
    global0 = array<bool, 32>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0) << (vec2<u32>(4294967295u, 8523u) % vec2<u32>(32u)), vec2<i32>(-5042i, 2147483647i)), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.a))) ^ vec2<u32>(53034u, countOneBits(0u)), 42396i >> (u_input.a % 32u))));
    var var_1 = _wgslsmith_add_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 110035u, u_input.a)) | firstLeadingBit(vec3<u32>(1u, 1564u, u_input.a))) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(43101u, 7904u, u_input.a), vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(15366u, u_input.a, u_input.a)))) ^ vec3<u32>(u_input.a, ~(~firstTrailingBit(u_input.a)), min(u_input.a & 6853u, ~firstLeadingBit(u_input.a)));
    return Struct_2(select(select(vec4<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)])), true, true), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_1.x, 32u)] & false), select(17881u, 1u, false) <= 1u), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], false, global0[_wgslsmith_index_u32(var_1.x, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(31669u, 32u)], true, global0[_wgslsmith_index_u32(u_input.a, 32u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)])), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(var_1.x, 32u)], false, true)), global0[_wgslsmith_index_u32(min(1u, var_1.x), 32u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 19860u), vec2<u32>(u_input.a, 17937u)), 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(0u), 32u)]), vec4<bool>(false, any(vec2<bool>(true, false)), true, !global0[_wgslsmith_index_u32(4294967295u, 32u)])), vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)]))), true, (arg_0 == -14815i) || (arg_0 == arg_0), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2042f)) + _wgslsmith_f_op_f32(-var_0.x)))), Struct_1(var_1.x, vec4<f32>(var_0.x, -722f, _wgslsmith_f_op_f32(step(-1157f, _wgslsmith_f_op_f32(-var_0.x))), var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~u_input.a), u_input.a), 32u)]), 906f);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> bool {
    global0 = array<bool, 32>();
    var var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(max(-vec2<i32>(2147483647i, 4502i), arg_1), -_wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(arg_1.x, 1i))), countOneBits(select(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 32u)])), arg_1.x, 44686i);
    var var_1 = func_2(abs(arg_1.x));
    var var_2 = abs((var_1.c.a ^ 1235u) ^ func_2(_wgslsmith_add_i32(firstTrailingBit(6943i), max(arg_1.x, var_0.x))).c.a);
    var_0 = firstLeadingBit(-(~_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, -19642i, 52698i, arg_1.x), ~vec4<i32>(-2147483647i, 0i, -16641i, arg_1.x))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!func_1(31379u, vec2<i32>(5054i, ~(-7968i))), false);
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), 858f, -229f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2100f)))))));
    let var_2 = false;
    let var_3 = abs(_wgslsmith_clamp_i32(countOneBits(1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(-42257i, 2147483647i, -2147483647i, -1i), vec4<i32>(-64593i, 1i, 1i, -11083i), vec4<bool>(false, true, true, var_0.x))), vec4<i32>(-1i) * -vec4<i32>(-15671i, 1i, -3831i, 4176i)), ~_wgslsmith_mult_i32(2147483647i, -1i) << (~select(u_input.a, 17096u, var_2) % 32u)));
    var var_4 = -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i << (0u % 32u), -1i), ~var_3, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-18277i, -25114i), -38494i >> (u_input.a % 32u))), 10824i);
    var_1 = _wgslsmith_div_vec4_f32(func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_4.x, var_3) & vec4<i32>(var_4.x, var_4.x, var_4.x, var_4.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-17239i, var_3, 1448i, 2147483647i), vec4<i32>(var_3, 1i, var_4.x, 2147483647i), vec4<i32>(var_4.x, var_4.x, var_3, var_4.x))), ~vec4<i32>(0i, 47362i, var_3, -2147483647i) << ((vec4<u32>(4294967295u, 14650u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 68034u, 27532u, u_input.a)) % vec4<u32>(32u)))).c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, var_1.x, var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, var_1.x, var_1.x, -1060f)))))));
    var var_5 = select(min(vec2<i32>(var_4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3, -35094i, 40782i, 2147483647i), vec4<i32>(var_4.x, 1i, 24019i, var_4.x))) | vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_4.x, 2147483647i), vec3<i32>(var_3, 2147483647i, 0i)), var_3 ^ var_3), ~(~(-vec2<i32>(2147483647i, 0i)))), ~vec2<i32>(28666i, -(20454i | var_4.x)), !select(any(vec3<bool>(false, false, var_2)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(12966u >> (u_input.a % 32u), max(~(u_input.a >> (11196u % 32u)), ~(~20965u))), (-firstLeadingBit(vec4<i32>(-39814i, var_4.x, 2147483647i, 2147483647i)) | ((vec4<i32>(-2147483647i, var_5.x, -33593i, -1i) | vec4<i32>(-1i, var_5.x, var_4.x, 2147483647i)) & vec4<i32>(var_5.x, var_4.x, -43008i, var_3))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3, var_3), min(var_5.x, var_5.x), max(var_5.x, 0i), -var_3), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3, var_3, 50826i, 2147483647i), min(vec4<i32>(-28740i, var_4.x, -7311i, var_4.x), vec4<i32>(var_5.x, var_5.x, var_3, var_4.x))), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_5.x, var_4.x, var_3, -78166i)), vec4<i32>(2147483647i, -42904i, -1i, var_4.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 1u, 0u) | ~vec3<u32>(u_input.a, 69331u, u_input.a), ~min(vec3<u32>(75405u, 79835u, 3138u), vec3<u32>(21784u, u_input.a, u_input.a))) >> ((vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 10550u), vec2<u32>(1u, 15559u)), 78724u, ~u_input.a) << (vec3<u32>(u_input.a, countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(11671u, u_input.a, 0u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 0u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1865u, 4294967295u) & min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), ~(~vec2<u32>(1u, 114u)), vec2<u32>(u_input.a, 0u)));
}

