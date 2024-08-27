struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> vec3<u32> {
    var var_0 = countOneBits(abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(75131u, 0u), ~vec2<u32>(32218u, 1u)))));
    let var_1 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), 641f, arg_0);
    global0 = Struct_2(-51763i);
    let var_2 = ~(arg_1.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, select(1u, 1u, global1[_wgslsmith_index_u32(111063u, 9u)]), 1u)) % 32u));
    var var_3 = Struct_2(countOneBits(1i));
    return ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~reverseBits(min(vec3<u32>(29167u, 1u, 0u), vec3<u32>(18433u, 238u, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
}

fn func_2() -> vec4<f32> {
    global0 = Struct_2(global0.a >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(func_3(645f, vec4<i32>(18352i, -28269i, 0i, -25613i), true), vec3<u32>(0u, 4294967295u, 11442u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(func_3(-180f, vec4<i32>(-1i, global0.a, 1i, -2147483647i), true).x, max(4090u, 36681u), ~72372u)) % 32u));
    global1 = array<bool, 9>();
    var var_0 = Struct_2(_wgslsmith_mult_i32(global0.a, u_input.a));
    let var_1 = _wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(f32(-1f) * -746f));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(var_1, var_1)))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))), 521f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, 461f))) + var_2)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(-1061f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) + -1000f)))), _wgslsmith_div_u32(1u, ~(~4294967295u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b, -907f, var_0.b) * vec4<f32>(-1399f, -2203f, var_0.b, var_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -1045f, var_0.b) * vec4<f32>(var_0.b, -378f, var_0.a, -1271f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2())))));
    var var_2 = -1i;
    var_2 = _wgslsmith_add_i32(max(0i, ~global0.a << (8927u % 32u)), 22670i >> (0u % 32u));
    var var_3 = Struct_2(_wgslsmith_mod_i32(countOneBits(global0.a), countOneBits(2147483647i)));
    return Struct_2(reverseBits(-2147483647i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = 1u;
    let var_1 = arg_0;
    let var_2 = arg_1.c;
    global1 = array<bool, 9>();
    let var_3 = !select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], !global1[_wgslsmith_index_u32(arg_3.a, 9u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44276u, var_2, arg_2.a, arg_2.a), vec4<u32>(arg_1.c, arg_2.a, arg_2.a, arg_3.a)), 9u)]), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_2.a, 9u)])), !vec3<bool>(true, global1[_wgslsmith_index_u32(arg_3.a, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), true), vec3<bool>(0u > arg_2.a, true, !any(vec2<bool>(true, false))));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_2.b.a, 2147483647i, -5940i), vec4<i32>(arg_3.b.a, arg_0.a, 0i, 1i))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, 0i), 62681i), firstLeadingBit(var_1.a), global0.a, firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-14533i, -2147483647i))))), _wgslsmith_div_vec4_i32(-countOneBits(countOneBits(vec4<i32>(global0.a, arg_3.b.a, -2147483647i, arg_3.b.a))), ~(-(~vec4<i32>(arg_3.b.a, arg_0.a, u_input.b.x, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_i32(-(~(-firstTrailingBit(vec4<i32>(global0.a, global0.a, 47828i, 0i)))), func_4(func_1(global1[_wgslsmith_index_u32(~13780u, 9u)]), Struct_1(808f, 1621f, abs(29565u)), Struct_3(_wgslsmith_div_u32(~1u, firstLeadingBit(41348u)), func_1(true & global1[_wgslsmith_index_u32(62109u, 9u)]), vec3<f32>(1f, 1f, 1f)), Struct_3(_wgslsmith_clamp_u32(~51613u, ~1u, 1u), Struct_2(-2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1001f, 1485f, 208f), vec3<f32>(157f, -550f, 219f))) + vec3<f32>(-1377f, -1124f, -932f)))));
    global1 = array<bool, 9>();
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1135f + -675f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(143f, -396f)) * _wgslsmith_f_op_f32(floor(197f)))) - _wgslsmith_f_op_f32(trunc(1258f)))));
    var_1 = 968f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-363f, 134f, global1[_wgslsmith_index_u32(1u, 9u)])))))), ~77847u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, 1u, var_2.c), vec3<u32>(var_2.c, var_2.c, 1u)), ~var_2.c, 3261u, var_2.c));
}

