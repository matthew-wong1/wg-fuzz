struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(4294967295u, 97780u, false, vec2<bool>(true, false)), Struct_1(8523u, 26239u, true, vec2<bool>(true, false)), Struct_1(10549u, 4294967295u, false, vec2<bool>(true, false)), Struct_1(43252u, 66283u, false, vec2<bool>(true, true)), Struct_1(0u, 41259u, true, vec2<bool>(true, false)), Struct_1(12977u, 0u, true, vec2<bool>(true, true)), Struct_1(23189u, 1u, true, vec2<bool>(true, true)), Struct_1(4294967295u, 4294967295u, false, vec2<bool>(false, false)), Struct_1(9646u, 8540u, true, vec2<bool>(true, false)), Struct_1(56458u, 0u, true, vec2<bool>(true, false)), Struct_1(24162u, 0u, true, vec2<bool>(true, true)), Struct_1(4294967295u, 32102u, true, vec2<bool>(true, true)), Struct_1(26551u, 39182u, true, vec2<bool>(false, false)), Struct_1(50068u, 15312u, false, vec2<bool>(false, false)), Struct_1(1u, 23344u, true, vec2<bool>(true, false)), Struct_1(0u, 4294967295u, false, vec2<bool>(false, false)), Struct_1(4294967295u, 1u, false, vec2<bool>(true, true)), Struct_1(0u, 0u, true, vec2<bool>(true, true)), Struct_1(36714u, 35964u, false, vec2<bool>(true, false)), Struct_1(75927u, 13084u, false, vec2<bool>(false, true)), Struct_1(0u, 61231u, true, vec2<bool>(false, false)), Struct_1(7980u, 0u, true, vec2<bool>(true, false)));

var<private> global1: array<bool, 2>;

var<private> global2: array<f32, 9>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    let var_0 = ~((min(~vec2<u32>(0u, u_input.a), vec2<u32>(u_input.b, 4294967295u)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 32610u))) << (vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 1u)) % vec2<u32>(32u)));
    var var_1 = Struct_5(select(vec2<bool>(-u_input.c.x < 2147483647i, false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_mod_i32(-2939i, u_input.c.x) >= ~(-2147483647i)), arg_0), _wgslsmith_clamp_vec2_u32(firstLeadingBit(abs(var_0)) | min(var_0, ~vec2<u32>(4294967295u, var_0.x)), vec2<u32>(countOneBits(21704u), u_input.b), firstLeadingBit(var_0)));
    let var_2 = -418f;
    let var_3 = Struct_4(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_0.x, 27643u, u_input.a) ^ (vec3<u32>(u_input.a, var_0.x, 0u) >> (vec3<u32>(var_1.b.x, u_input.a, 4294967295u) % vec3<u32>(32u)))), vec3<u32>(51925u, 29234u >> (_wgslsmith_div_u32(0u, var_0.x) % 32u), var_1.b.x), firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(1905u, var_1.b.x, 34397u), abs(vec3<u32>(35839u, 89834u, var_0.x))))), global2[_wgslsmith_index_u32(81318u, 9u)], global1[_wgslsmith_index_u32(abs(var_1.b.x) | ~(~4294967295u), 2u)]);
    var var_4 = Struct_4(~var_3.a, 1228f, arg_0.x);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, select(var_4.a.x, var_3.a.x, true), firstLeadingBit(u_input.a | 32745u)), ~var_4.a);
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = arg_0.zx;
    let var_1 = var_0.x;
    var var_2 = Struct_4(~(~(~vec3<u32>(1882u, 5697u, 0u))), global2[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(20527u, 2u)]);
    var var_3 = u_input.a;
    let var_4 = func_3(vec2<bool>(global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(1u, 1u), firstTrailingBit(_wgslsmith_mult_u32(42544u, var_2.a.x))), 2u)], var_2.c), false);
    return reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, ~(-1i), 0i, ~arg_0.x), vec4<i32>(min(var_0.x, 4481i), u_input.c.x | 1i, _wgslsmith_clamp_i32(0i, u_input.c.x, arg_0.x), arg_0.x ^ var_1))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> Struct_3 {
    global0 = array<Struct_1, 22>();
    var var_0 = select(!(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 2u)], arg_3.x), !vec4<bool>(false, arg_3.x, false, false), !vec4<bool>(global1[_wgslsmith_index_u32(86799u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], true, true))), select(vec4<bool>(-2395f > _wgslsmith_f_op_f32(select(-1167f, global2[_wgslsmith_index_u32(19369u, 9u)], true)), !(!global1[_wgslsmith_index_u32(u_input.b, 2u)]), false, true), !(!select(vec4<bool>(arg_3.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], false), vec4<bool>(arg_3.x, false, false, false), false)), select(vec4<bool>(true, false, all(vec3<bool>(arg_3.x, arg_3.x, global1[_wgslsmith_index_u32(arg_0, 2u)])), arg_2.x == arg_2.x), vec4<bool>(true, !arg_3.x, any(vec2<bool>(arg_3.x, true)), any(vec4<bool>(arg_3.x, false, global1[_wgslsmith_index_u32(arg_0, 2u)], global1[_wgslsmith_index_u32(5278u, 2u)]))), vec4<bool>(true, true, true, true))), vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], select(false, global1[_wgslsmith_index_u32(arg_0, 2u)], arg_3.x), arg_3.x || false, !arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-915f - global2[_wgslsmith_index_u32(1u, 9u)]) + arg_1.x), false, any(arg_3)));
    var var_1 = -1000f;
    let var_2 = arg_1.xx;
    var var_3 = Struct_3(~max(abs(~29692u), countOneBits(~arg_0)), 101032u);
    return Struct_3(~u_input.b, 1u);
}

fn func_1(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 25486u, 19786u) >> (vec4<u32>(1u, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 64887u, u_input.b, 293u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(138702u, u_input.a, 0u, u_input.b)) >> (vec4<u32>(_wgslsmith_sub_u32(u_input.a, abs(u_input.a)), min(121286u, 59822u) | u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a, u_input.b, u_input.a), max(vec4<u32>(1u, u_input.b, 73117u, u_input.a), vec4<u32>(0u, u_input.a, 40941u, 4294967295u)))) % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b | 2586u, u_input.a | 0u, firstLeadingBit(u_input.a), _wgslsmith_mult_u32(u_input.b, u_input.b)), vec4<u32>(abs(u_input.b), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 44247u, u_input.b, 37442u), vec4<u32>(u_input.a, 14026u, u_input.a, u_input.b)), u_input.a)) % vec4<u32>(32u));
    var var_1 = func_4(~(~(~4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, 631f, global2[_wgslsmith_index_u32(var_0.x, 9u)])) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 9u)], arg_0, 801f), vec3<f32>(1048f, -1175f, -717f)))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_0, arg_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(147f, -352f, 1595f), vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(var_0.x, 9u)], 2036f))))))), select(func_2(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(21929i, u_input.c.x, 20745i, u_input.c.x), vec4<i32>(u_input.c.x, arg_1, u_input.c.x, u_input.c.x)))), -countOneBits(~vec4<i32>(1i, u_input.c.x, 18232i, -1i)), vec4<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 2u)])) & true, any(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 2u)])), true, all(vec2<bool>(global1[_wgslsmith_index_u32(35764u, 2u)], true)) & false)), !vec3<bool>((7780u >> (u_input.a % 32u)) > ~1u, !global1[_wgslsmith_index_u32(~0u, 2u)], !global1[_wgslsmith_index_u32(reverseBits(var_0.x), 2u)]));
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~select(vec4<u32>(var_1.a, 1u, var_1.b, var_0.x), vec4<u32>(var_1.b, 19781u, 7575u, var_0.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(var_1.b, 2u)])), max(vec4<u32>(var_1.a, 4294967295u, var_0.x, u_input.a), vec4<u32>(u_input.b, 0u, 41208u, var_0.x) << (vec4<u32>(u_input.b, 40874u, 0u, u_input.a) % vec4<u32>(32u)))) | abs(max(vec4<u32>(1u, var_0.x, 22616u, 91360u), vec4<u32>(var_0.x, 0u, var_1.a, var_1.a)) | max(vec4<u32>(46535u, 8770u, var_0.x, 78480u), vec4<u32>(u_input.a, var_0.x, var_1.a, 104965u))), select((~vec4<u32>(u_input.a, 4294967295u, 40961u, 1u) & abs(vec4<u32>(var_1.a, 53398u, 1u, var_1.a))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_1.b, 4294967295u), vec4<u32>(var_1.a, var_0.x, var_0.x, 4294967295u)), vec4<u32>(1u, 28323u, 1u, 4294967295u), reverseBits(vec4<u32>(93273u, 26948u, u_input.b, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.a, u_input.b), vec4<u32>(18910u, 72151u, 62276u, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 44620u, 4294967295u, 0u), vec4<u32>(var_0.x, 0u, var_1.a, 8769u))) & ~(~vec4<u32>(1u, var_1.b, 1u, 4294967295u)), !select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.b, 2u)], true, false, global1[_wgslsmith_index_u32(1153u, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], false, global1[_wgslsmith_index_u32(var_1.a, 2u)], false), !vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 2u)], true, global1[_wgslsmith_index_u32(var_0.x, 2u)]))));
    var var_2 = !vec2<bool>(!(_wgslsmith_f_op_f32(arg_0 * -860f) <= -1656f), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 11253u, var_0.x, 3130u), vec4<u32>(63322u, 91477u, u_input.b, var_0.x)), 4294967295u), 2u)]);
    var_2 = !select(vec2<bool>(true, true), !vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false, global1[_wgslsmith_index_u32(10082u, 2u)])), select(true, false, false)), select(vec2<bool>(true, var_2.x), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), false)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global1 = array<bool, 2>();
    var var_0 = vec3<bool>(any(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)], true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(11792u, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(27637u, 2u)], true, true)), !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 2u)], false)), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(59673u, 2u)], false, global1[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]))))), any(vec3<bool>(true | func_1(-1119f, -1i), false, global1[_wgslsmith_index_u32(53256u, 2u)])), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_div_vec3_f32(vec3<f32>(934f, global2[_wgslsmith_index_u32(83281u, 9u)], global2[_wgslsmith_index_u32(u_input.b, 9u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], global2[_wgslsmith_index_u32(26421u, 9u)], -311f)), true))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], -1230f, global2[_wgslsmith_index_u32(u_input.a, 9u)])))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, -2142f, global2[_wgslsmith_index_u32(u_input.b, 9u)]) * vec3<f32>(global2[_wgslsmith_index_u32(40954u, 9u)], -1593f, global2[_wgslsmith_index_u32(u_input.b, 9u)]))))))));
    var var_2 = Struct_4(vec3<u32>(u_input.b, min(~10005u, u_input.b), ~(~(~4294967295u))), -1954f, !global1[_wgslsmith_index_u32(~(~(u_input.a & u_input.a)), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.b, 81436u, 31670u)), vec4<u32>(u_input.b, 13339u, 1u, 1u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(7632u, u_input.a, var_2.a.x, 39588u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, 4241u, u_input.a, var_2.a.x), vec4<u32>(1u, 13923u, 1u, var_2.a.x))) % vec4<u32>(32u)), vec4<u32>(countOneBits(u_input.a) << (~50824u % 32u), var_2.a.x, 62710u, _wgslsmith_add_u32(u_input.b ^ u_input.a, ~var_2.a.x))), _wgslsmith_f_op_f32(sign(var_2.b)));
}

