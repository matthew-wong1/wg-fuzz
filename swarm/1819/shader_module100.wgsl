struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-47543i, -17254i, 1i), vec3<i32>(i32(-2147483648), -19598i, 2147483647i), vec3<i32>(-1i, -1i, -16688i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 47665i, 35123i), vec3<i32>(62455i, -1i, 1i), vec3<i32>(66603i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -46539i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 19293i, 0i), vec3<i32>(2147483647i, 2147483647i, 55456i), vec3<i32>(19203i, 2147483647i, 2147483647i), vec3<i32>(-1i, -10967i, 60453i), vec3<i32>(-29787i, 2147483647i, 1i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(6317i, 55000i, 2147483647i), vec3<i32>(-56669i, -47703i, 1i), vec3<i32>(1i, -21726i, 26561i), vec3<i32>(2147483647i, 22786i, 14118i), vec3<i32>(i32(-2147483648), 8222i, 1i), vec3<i32>(19182i, 0i, -2825i), vec3<i32>(0i, 0i, -6975i), vec3<i32>(2147483647i, 0i, -37381i), vec3<i32>(0i, 0i, -1i), vec3<i32>(-1i, 16488i, 12709i));

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: vec2<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = vec3<u32>(global0.a.x, global0.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global3.a.x, min(40155u, 51188u)), ~vec4<u32>(global3.a.x, 48110u, global0.a.x, 37962u)) % 32u), _wgslsmith_mult_u32(~_wgslsmith_div_u32(min(global3.a.x, global3.a.x), 1u), ~firstLeadingBit(_wgslsmith_add_u32(global0.a.x, 5897u))));
    var var_1 = _wgslsmith_f_op_f32(180f - _wgslsmith_f_op_f32(step(-350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1872f - _wgslsmith_div_f32(967f, -1254f)) - 987f))));
    var var_2 = abs(_wgslsmith_dot_vec3_i32(abs(~u_input.a.zzy) ^ (-global1[_wgslsmith_index_u32(27644u, 24u)] << (reverseBits(vec3<u32>(var_0.x, 1u, global3.a.x)) % vec3<u32>(32u))), min(u_input.a.www, u_input.a.zwx >> (vec3<u32>(454u, 4294967295u, 41014u) % vec3<u32>(32u)))));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(~min(_wgslsmith_sub_vec2_u32(var_0.zy, vec2<u32>(global0.a.x, global3.a.x)), _wgslsmith_div_vec2_u32(global0.a, var_0.zx)), vec2<u32>(var_0.x, 4294967295u)));
    var var_4 = true;
    return max(global3.a.x, _wgslsmith_clamp_u32(firstTrailingBit(var_3.a.x), 0u, var_3.a.x));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(~(~vec2<u32>(func_3(), ~13025u)));
    var var_1 = vec2<u32>(global0.a.x, reverseBits(4294967295u)) >> (var_0.a % vec2<u32>(32u));
    var var_2 = !vec2<bool>(true, -764f < _wgslsmith_f_op_f32(-arg_1.x));
    global2 = 4294967295u;
    let var_3 = arg_1.x;
    return _wgslsmith_mod_u32(2401u, 4294967295u);
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global2 = 16263u;
    let var_0 = vec4<bool>(false, true, arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(select(0u, global0.a.x, arg_0.x), func_2(global3.a.x, vec3<f32>(-1000f, -392f, -476f)), 0u), select(vec3<u32>(global3.a.x, global3.a.x, 48069u) << (vec3<u32>(global0.a.x, 4294967295u, 1u) % vec3<u32>(32u)), vec3<u32>(1u, global0.a.x, 37905u) | vec3<u32>(global3.a.x, global3.a.x, 0u), select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), true))) < func_3());
    var var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1224f, 920f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-832f, 928f))))))));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(global0.a.x, global3.a.x), abs(global0.a.x));
    return Struct_1(global3.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_1 {
    global3 = Struct_1(select(vec2<u32>(global3.a.x, ~global3.a.x), func_1(!vec2<bool>(true, arg_2)).a, !select(select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_2), false), !vec2<bool>(arg_2, false), false)));
    var var_0 = !(!vec3<bool>(true, true, arg_2));
    global0 = arg_0;
    let var_1 = global4.x;
    var var_2 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(func_3(), _wgslsmith_mult_u32(52767u, 1u)), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(59035u, 70241u, global3.a.x, 1u), vec4<u32>(1u, global0.a.x, 4294967295u, arg_1)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-610f, arg_3, arg_3), vec3<f32>(2183f, -331f, -2507f))))));
    return Struct_1(arg_0.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(1313i, ~1i, u_input.e, 55589i)), u_input.a));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_u32(min(vec3<u32>(~10990u, _wgslsmith_mult_u32(global0.a.x, 3631u), firstLeadingBit(11410u)), countOneBits(reverseBits(vec3<u32>(14108u, 4294967295u, global3.a.x)))), ~(~max(vec3<u32>(4294967295u, 0u, 51113u), vec3<u32>(4294967295u, global3.a.x, 0u))));
    let var_1 = vec3<u32>(~(0u | abs(68399u >> (global3.a.x % 32u))), global0.a.x, _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, ~global0.a.x), 69336u));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1401f, -469f, -724f) * vec4<f32>(496f, -1510f, 1321f, -104f)))))), ~(~(reverseBits(0u) | firstLeadingBit(var_0.x))), _wgslsmith_sub_i32(countOneBits(-select(u_input.e, global4.x, true)), -2147483647i), func_4(func_1(vec2<bool>(select(true, false, false), false)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~global3.a.x), global0.a), select(all(vec2<bool>(true, true)) || any(vec4<bool>(true, true, true, false)), false, true), _wgslsmith_f_op_f32(trunc(1832f))));
    var var_3 = var_1;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-2239f, 378f), _wgslsmith_f_op_f32(f32(-1f) * -2066f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(549f, -571f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-452f, 132f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1270f, -974f)), true))));
}

