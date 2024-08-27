struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_4,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = vec2<bool>(arg_1.a.x, select(!(arg_1.a.x & true), _wgslsmith_div_u32(~69358u, select(arg_0.x, u_input.b, true)) < 0u, all(vec4<bool>(true, any(arg_1.a), select(arg_1.a.x, false, true), true))));
    global0 = array<vec4<u32>, 4>();
    var var_1 = -u_input.a;
    var var_2 = _wgslsmith_f_op_f32(sign(-1787f));
    var_1 = -6276i;
    return arg_2;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> Struct_3 {
    global1 = _wgslsmith_add_vec2_i32(firstTrailingBit(~(~global2[_wgslsmith_index_u32(u_input.b, 28u)])) | -vec2<i32>(-arg_0, global1.x), global2[_wgslsmith_index_u32(25632u, 28u)]);
    let var_0 = u_input.b >> (~(~_wgslsmith_add_u32(~u_input.b, ~u_input.b)) % 32u);
    var var_1 = ~(_wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(14331u, 1u)), vec2<u32>(u_input.b, u_input.b)) << (select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(0u, var_0)) & vec2<u32>(0u, 0u), vec2<u32>(var_0, 1u), vec2<bool>(true, true)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, -480f, true)), _wgslsmith_f_op_f32(func_3(min(vec3<u32>(var_1.x, u_input.b, var_1.x), vec3<u32>(7804u, 17294u, 51484u)), Struct_2(vec4<bool>(false, true, true, false), u_input.a), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(638f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))) * vec3<f32>(-1263f, -1805f, arg_1.x)));
    var var_3 = Struct_3(false, Struct_2(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), 1730i), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, -arg_0, -10618i, 2147483647i), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, global1.x, 1i, u_input.a), vec4<i32>(-2147483647i, 1i, arg_0, -70930i))), firstTrailingBit(~reverseBits(vec2<u32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 1344f, _wgslsmith_f_op_f32(ceil(-986f)))), ~(abs(vec3<i32>(-68911i, u_input.a, global1.x)) | vec3<i32>(-9207i, -1i, u_input.a)), true), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), arg_0 != firstLeadingBit(firstLeadingBit(u_input.a)), var_2.x != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1141f, var_2.x), arg_1.x)), true));
    return Struct_3(1u > var_1.x, Struct_2(var_3.b.a, reverseBits(abs(-42959i))), var_3.c, select(!var_3.d, var_3.b.a, vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(-1i) | -1i, _wgslsmith_add_i32(-1i, firstTrailingBit(1i))), 1i);
    let var_1 = func_2(-var_0, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(400f, 1093f), vec2<f32>(-1368f, 416f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-842f, -1534f)))))))));
    global0 = array<vec4<u32>, 4>();
    global1 = vec2<i32>(_wgslsmith_div_i32(4023i, ~(~var_1.c.a)), -var_0);
    return all(select(vec2<bool>(true, true), !(!vec2<bool>(true, var_1.c.e)), _wgslsmith_add_i32(max(var_0, -10164i), max(var_0, -1i)) < (~u_input.a & -global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(592f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(286f - -1333f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1121f - _wgslsmith_f_op_f32(392f * -429f)), 834f))));
    global1 = ~min(firstTrailingBit(vec2<i32>(-2147483647i, i32(-1i) * -17819i)), _wgslsmith_mod_vec2_i32(~global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(~u_input.b, 28u)]) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(65497u, u_input.b), firstTrailingBit(vec2<u32>(32033u, u_input.b))) % vec2<u32>(32u)));
    let var_1 = u_input.b < _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 22434u), vec4<u32>(1u, 106169u, 0u, 44787u) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), u_input.b);
    global0 = array<vec4<u32>, 4>();
    var var_2 = Struct_3(func_1(~(~(~vec2<u32>(0u, u_input.b)))), func_2(-19793i, vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), func_2(-2147483647i, vec2<f32>(1074f, -1404f)).c.c.x)).b, func_2(-u_input.a, vec2<f32>(func_2(select(u_input.a, u_input.a, true), vec2<f32>(-521f, -667f)).c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0))).c, !vec4<bool>((46031u > u_input.b) | false, true, true, any(!vec3<bool>(false, false, var_1))));
    var var_3 = Struct_3(var_2.b.a.x, func_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.x, -2147483647i), 44136i) << (_wgslsmith_add_u32(1u, var_2.c.b.x) % 32u), _wgslsmith_f_op_vec2_f32(-var_2.c.c.xz)).b, var_2.c, func_2(-29439i, vec2<f32>(270f, _wgslsmith_div_f32(112f, func_2(var_2.c.a, vec2<f32>(653f, -1000f)).c.c.x))).d);
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(var_3.c.b), ~vec2<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_3.c.b.x, 4u)], global0[_wgslsmith_index_u32(var_3.c.b.x, 4u)]), var_3.c.b.x)), -915f, max(max(vec4<i32>(global1.x, -23279i, _wgslsmith_sub_i32(54469i, -20240i), ~u_input.a), vec4<i32>(min(0i, var_3.c.d.x), 5759i, 0i, 1i)), vec4<i32>(_wgslsmith_clamp_i32(-var_3.b.b, -1i, ~global1.x), 44512i, -countOneBits(-55960i), u_input.a & -global1.x)), abs(var_3.c.b.x), 2147483647i);
}

