struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<i32, 7>;

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(335f, -508f, 1362f, -719f), vec4<f32>(217f, 1074f, -987f, -962f), vec4<f32>(-1121f, 744f, -216f, -394f), vec4<f32>(1000f, 730f, 145f, -1044f), vec4<f32>(371f, 134f, -673f, -976f), vec4<f32>(-1000f, -104f, -106f, 1037f), vec4<f32>(-962f, 274f, 821f, 482f), vec4<f32>(1349f, 135f, 1000f, -670f), vec4<f32>(1131f, -132f, 201f, -1687f), vec4<f32>(-894f, -626f, 1457f, -1391f), vec4<f32>(-1223f, -589f, -306f, -1432f), vec4<f32>(352f, -1123f, 686f, -120f), vec4<f32>(1110f, 1974f, 1157f, 715f), vec4<f32>(-603f, 203f, -230f, -854f), vec4<f32>(2420f, -1277f, 610f, 824f));

var<private> global3: array<vec3<i32>, 9>;

var<private> global4: array<f32, 16> = array<f32, 16>(-244f, -1114f, -536f, -190f, 104f, 1453f, -1000f, -1460f, 424f, -738f, -131f, -1000f, -175f, 1000f, -741f, 443f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 7u)], arg_2.x), -arg_2.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c | 59191u, _wgslsmith_div_u32(u_input.b.x, 4294967295u)), 7u)]), _wgslsmith_sub_i32(1i, -reverseBits(27016i)));
    var var_1 = ~(~((vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -1i, 42457i, 2147483647i)) >> (countOneBits(vec4<u32>(u_input.c, 4294967295u, u_input.c, 26322u)) % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 18>();
    let var_2 = !select(true, arg_3.x, true);
    let var_3 = ~4294967295u;
    return abs(var_3);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), 395f);
    var var_1 = 8948u;
    global3 = array<vec3<i32>, 9>();
    var var_2 = Struct_2(_wgslsmith_div_vec4_i32(select(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, -14415i, 0i, arg_1), vec4<i32>(-7910i, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], arg_1, arg_1)), vec4<i32>(firstTrailingBit(32395i), -12813i, -1i, arg_0 >> (u_input.a.x % 32u)), vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true)), vec4<i32>(-1i) * -vec4<i32>(4000i, 0i, arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4[_wgslsmith_index_u32(func_3(Struct_3(global4[_wgslsmith_index_u32(arg_2, 16u)]), true, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, 2147483647i), vec2<i32>(arg_1, arg_1)), vec3<bool>(true, true, true)), 16u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1299f), var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, arg_3), vec2<f32>(var_0.x, global4[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(true, true))) + vec2<f32>(arg_3, -578f)), true == all(vec4<bool>(true, false, true, false)))))));
    let var_3 = vec2<f32>(arg_3, arg_3);
    return false;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_div_u32(u_input.a.x, 32830u)), 7u)], 0i, 3549i);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], -843f, -198f, -1064f), vec4<f32>(arg_1, -930f, -430f, 962f), arg_3)))))));
    global2 = array<vec4<f32>, 15>();
    global0 = array<vec2<f32>, 18>();
    var var_2 = Struct_1(~vec4<i32>(countOneBits(arg_0), 1i, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 50971i) >> (u_input.a % vec4<u32>(32u)), !(arg_0 > _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], vec3<i32>(arg_0, 1i, 1i), global3[_wgslsmith_index_u32(u_input.c, 9u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], -6467i, var_0.x) | global3[_wgslsmith_index_u32(u_input.b.x, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c, 16u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), arg_3)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) * _wgslsmith_f_op_f32(var_1.x + 444f)))), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(u_input.a.x, 16u)])));
    return Struct_3(217f);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    global3 = array<vec3<i32>, 9>();
    return func_4(2147483647i, -983f, false, !(!func_2(27470i, arg_0.a.x, 1u, 518f)));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> StorageBuffer {
    var var_0 = any(vec3<bool>(u_input.b.x > (arg_1.x | ~1u), any(vec3<bool>(all(vec3<bool>(false, true, false)), true, u_input.a.x == 0u)), true));
    var var_1 = vec2<i32>(-46607i, ~_wgslsmith_mod_i32(~arg_2, arg_2) >> (func_3(Struct_3(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 16u)])), true, -vec2<i32>(-38281i, 24681i), vec3<bool>(true, true, true)) % 32u));
    var var_2 = -244f;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(106f - 348f)));
    var var_4 = true;
    return StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(31764u, _wgslsmith_sub_u32(firstLeadingBit(u_input.c), arg_1.x), u_input.c), 9u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1343f * -119f), _wgslsmith_f_op_f32(step(-905f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b.x, 16u)])))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1149f, -986f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1571f, -1737f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_1(Struct_2(vec4<i32>(-14132i, global1[_wgslsmith_index_u32(~27920u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], -27651i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2121f), 1218f))), _wgslsmith_mult_vec2_u32(vec2<u32>((0u | u_input.a.x) ^ _wgslsmith_dot_vec3_u32(u_input.b.yzx, vec3<u32>(u_input.c, u_input.a.x, u_input.a.x)), 4294967295u), select(min(countOneBits(u_input.a.yy), _wgslsmith_sub_vec2_u32(u_input.b.zy, u_input.b.ww)), vec2<u32>(u_input.b.x, min(u_input.b.x, 1153u)), vec2<bool>(select(false, true, false), true))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(~u_input.c), ~u_input.a.x), 7u)]);
}

