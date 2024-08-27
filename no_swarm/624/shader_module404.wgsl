struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: Struct_2 = Struct_2(-1209f);

var<private> global2: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(42005u, 15236u, arg_0.c), vec3<u32>(4294967295u, 48881u, u_input.d), ~vec3<u32>(31521u, arg_0.c, 41404u))), firstTrailingBit(countOneBits(countOneBits(vec3<u32>(4294967295u, 25008u, 0u)))));
    let var_1 = Struct_2(-2127f);
    let var_2 = arg_0;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -697f))));
    var var_4 = vec4<i32>(firstTrailingBit(firstTrailingBit(25265i)), ~8271i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, ~global0[_wgslsmith_index_u32(select(1u, u_input.a, true), 6u)]), vec2<i32>(-1i) * -u_input.e.zx), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, arg_0.a), abs(vec3<i32>(u_input.e.x, ~(-1i), -24589i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1591f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(38745u, 49021u, 1u, 4294967295u), vec4<u32>(0u, u_input.d, 0u, u_input.b.x)), u_input.d, true), 6u)], _wgslsmith_div_i32(-2147483647i, -46080i) | u_input.e.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1707f))), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1015f * 1244f) - 876f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(286f, arg_0.a) - global1.a)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-922f)) - _wgslsmith_f_op_f32(arg_1.x * arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(18968i, vec4<f32>(-260f, 1408f, arg_1.x, arg_0.a), 0u), Struct_2(arg_1.x), vec2<f32>(-2014f, -651f))) + _wgslsmith_f_op_f32(-arg_1.x)), arg_0.a)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(~(u_input.e.yy << (u_input.b % vec2<u32>(32u))), ~(vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], -25612i) >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))) & vec2<i32>(select(u_input.e.x, 2147483647i, arg_2), 0i)), vec4<f32>(831f, arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f * arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -977f))), select(~select(~4294967295u, _wgslsmith_add_u32(1u, u_input.a), true), u_input.d, true));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-var_2.b.x));
    let var_4 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2.a, 21367i, -1i), vec3<i32>(var_2.a, _wgslsmith_mult_i32(-19553i, u_input.c), 1i ^ var_0.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x, -2147483647i), u_input.e), vec3<i32>(-35331i, global0[_wgslsmith_index_u32(1u, 6u)], 1i) >> (vec3<u32>(0u, 0u, 36623u) % vec3<u32>(32u))), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(1u, 6u)] >> (u_input.d % 32u), _wgslsmith_mod_i32(-21398i, 22699i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b - _wgslsmith_f_op_vec4_f32(-var_2.b))), 39917u);
    return var_4;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<i32, 6>();
    var var_0 = -u_input.c;
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, _wgslsmith_f_op_f32(-811f + global1.a), 1f)))), _wgslsmith_sub_u32(u_input.d, u_input.b.x) <= ~abs(~4294967295u));
    global2 = var_1.a;
    global0 = array<i32, 6>();
    return Struct_2(_wgslsmith_f_op_f32(193f - _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) * var_1.b.x))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: bool) -> bool {
    var var_0 = false;
    global1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + arg_0.a))))));
    global2 = 26194i;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~39346u), u_input.d), 6u)];
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.a)), _wgslsmith_f_op_f32(min(-1468f, arg_0.a)))) + global1.a));
    return any(select(!(!vec2<bool>(true, arg_3)), !(!vec2<bool>(arg_1, false)), !select(!vec2<bool>(false, arg_1), !vec2<bool>(true, arg_3), arg_1)));
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(func_2(Struct_2(1661f), vec3<f32>(454f, -934f, -151f), true).b.x)), 361f))) * vec2<f32>(global1.a, _wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -2303f), select(false, false, true) && false))));
    let var_1 = _wgslsmith_dot_vec2_i32(reverseBits(select(u_input.e.zy, vec2<i32>(u_input.c, arg_1), false) | firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 3099i))), _wgslsmith_sub_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], arg_1) | u_input.e.xy, vec2<i32>(75582i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], -3101i, arg_1, 25439i), vec4<i32>(u_input.c, -20336i, global0[_wgslsmith_index_u32(42422u, 6u)], global0[_wgslsmith_index_u32(16195u, 6u)]))))) & func_2(Struct_2(func_1(27005i).a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1841f, -2058f) + vec3<f32>(715f, global1.a, global1.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 1846f, var_0.x), vec3<f32>(-1000f, -164f, 512f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-542f, var_0.x, var_0.x)))), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, arg_0), arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(true, arg_0, true)))), any(vec2<bool>(arg_0, true))).a;
    let var_2 = _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1759f + var_0.x) - global1.a), func_1(~global0[_wgslsmith_index_u32(1u, 6u)]).a) * _wgslsmith_f_op_f32(func_3(func_2(func_1(-2147483647i), _wgslsmith_div_vec3_f32(vec3<f32>(-1643f, -214f, 559f), vec3<f32>(global1.a, var_0.x, var_0.x)), any(vec2<bool>(false, true))), func_1(-2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(var_0.x, -303f)))))));
    let var_3 = u_input.b.x;
    var var_4 = ~(~1u);
    return func_1(17647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), false, _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), ~(30010u >> (1u % 32u)) > u_input.b.x), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, u_input.d | 0u), 6u)]);
    var var_1 = var_0.a;
    let var_2 = Struct_2(909f);
    let var_3 = func_2(var_2, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 656f, 528f) * vec3<f32>(1010f, -1796f, 503f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 339f, global1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1187f, -491f, global1.a))))))), true);
    let var_4 = vec3<u32>(u_input.a, abs(28513u), var_3.c);
    var_1 = _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_3.b.x));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1973f))) * _wgslsmith_f_op_f32(global1.a * -1347f)), _wgslsmith_div_f32(var_0.a, var_2.a));
    var_1 = _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))))));
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-805f, var_0.a)) + _wgslsmith_f_op_f32(-global1.a)) - _wgslsmith_f_op_f32(-361f - _wgslsmith_div_f32(var_0.a, 643f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + var_3.b.x), -619f)));
}

