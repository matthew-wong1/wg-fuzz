struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 22611i, 10545i, 3471i);

var<private> global1: array<bool, 22> = array<bool, 22>(true, false, false, false, true, true, false, false, false, true, true, false, false, false, true, false, true, true, true, true, false, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = -(~(-(~select(vec4<i32>(global0.x, global0.x, u_input.b, 0i), vec4<i32>(-2147483647i, u_input.a, u_input.b, global0.x), global1[_wgslsmith_index_u32(4294967295u, 22u)]))));
    var var_0 = arg_0.a;
    let var_1 = Struct_2(arg_0.a);
    var var_2 = Struct_3(!vec4<bool>(max(global0.x, global0.x) <= ~(-1i), true, true, true), var_1, var_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -165f), -1981f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(step(-639f, 880f)), 448f))), select(vec2<bool>(all(vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(~67630u, 22u)]), vec2<bool>(true, false != global1[_wgslsmith_index_u32(var_1.a, 22u)]), any(!vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 22u)], global1[_wgslsmith_index_u32(var_1.a, 22u)], false))))), arg_0);
    global0 = firstTrailingBit(_wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global0.x, 2147483647i, u_input.a), vec4<i32>(-56479i, u_input.a, u_input.b, 0i)), select(abs(vec4<i32>(u_input.a, 1i, -43008i, u_input.b)), vec4<i32>(u_input.a, u_input.a, 1i, -1i) | vec4<i32>(global0.x, global0.x, -10922i, u_input.b), vec4<bool>(var_2.a.x, false, true, global1[_wgslsmith_index_u32(1u, 22u)]))) >> ((vec4<u32>(countOneBits(41184u), _wgslsmith_mult_u32(70591u, arg_0.a), 63769u ^ var_2.b.a, 4294967295u) | reverseBits(vec4<u32>(4294967295u, 1u, arg_0.a, arg_0.a))) % vec4<u32>(32u)));
    return Struct_1(1u, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(788f))))), vec3<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f - var_2.d.x)) - var_2.d.x), 824f));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(abs(abs(max(20537u, arg_0.a))), ~(arg_1 & _wgslsmith_mod_u32(0u, 4294967295u))), countOneBits(~_wgslsmith_clamp_u32(92741u, 19887u, 4294967295u)) ^ (~(~arg_0.a) ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1, arg_0.a, arg_0.a, 1248u), vec4<u32>(arg_0.a, arg_1, arg_0.a, 4294967295u), true), ~vec4<u32>(arg_0.a, arg_1, 43893u, 0u))));
    let var_1 = max(_wgslsmith_clamp_i32(u_input.b, 2147483647i, 1i), _wgslsmith_sub_i32(-41273i, u_input.b));
    let var_2 = abs(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, ~vec2<u32>(7488u, var_0.x)), select(vec2<u32>(arg_0.a, arg_1), var_0, !vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 22u)])) & var_0));
    global0 = vec4<i32>(_wgslsmith_mult_i32(1i & (countOneBits(-1i) | ~arg_0.b), 1i), arg_0.b, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 10238i, -2147483647i, arg_0.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1, var_1, var_1), vec4<i32>(var_1, global0.x, var_1, 49099i)))) ^ (reverseBits(_wgslsmith_div_i32(1i, global0.x)) << (~1u % 32u)), u_input.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.d.x, arg_0.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, -2079f, global1[_wgslsmith_index_u32(50168u, 22u)])))), arg_0.d.x)));
    return -1989f;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> f32 {
    let var_0 = !(select(any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(18983u, 22u)], global1[_wgslsmith_index_u32(27132u, 22u)])) | true, (arg_1.a << (arg_1.a % 32u)) >= arg_1.a, (arg_1.a << (arg_1.a % 32u)) >= ~2946u) & !((false || global1[_wgslsmith_index_u32(arg_1.a, 22u)]) && false));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), arg_0);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    global1 = array<bool, 22>();
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(func_2(Struct_2(_wgslsmith_add_u32(arg_0, arg_0))), 4294967295u)), Struct_4(28832u, -1629f, ~_wgslsmith_add_i32(global0.x >> (4294967295u % 32u), -19807i))));
    global1 = array<bool, 22>();
    global0 = -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, 2147483647i, global0.x)), select(~vec4<i32>(1i, -12556i, global0.x, u_input.b), -vec4<i32>(32793i, u_input.a, 2147483647i, u_input.a), true)), abs(select(-vec4<i32>(u_input.b, -2147483647i, global0.x, global0.x), vec4<i32>(-11581i, 1i, u_input.a, 0i), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(44552u, 22u)], global1[_wgslsmith_index_u32(arg_0, 22u)]))));
    var_0 = 769f;
    return _wgslsmith_div_vec4_i32(~max(abs(max(vec4<i32>(u_input.b, global0.x, 2147483647i, u_input.a), vec4<i32>(global0.x, global0.x, 1i, u_input.a))), select(vec4<i32>(global0.x, 4247i, 2147483647i, global0.x), vec4<i32>(0i, global0.x, global0.x, global0.x) | vec4<i32>(42810i, -1i, global0.x, -1i), true)), _wgslsmith_clamp_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(4456i, u_input.a, u_input.a, -43446i)) & select(-vec4<i32>(global0.x, -21936i, -2147483647i, u_input.a), -vec4<i32>(u_input.b, u_input.a, 48162i, 40842i), vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_0, 22u)], global1[_wgslsmith_index_u32(arg_0, 22u)])), countOneBits(vec4<i32>(u_input.a << (arg_0 % 32u), 12977i, u_input.b, -u_input.a)), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global0.x, global0.x, -20909i), vec4<i32>(-28075i, u_input.b, global0.x, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(firstTrailingBit(_wgslsmith_sub_i32(19768i, _wgslsmith_div_i32(~u_input.b, ~u_input.a))), (u_input.a & -u_input.b) ^ u_input.b, 38848i, -1i);
    global0 = reverseBits(func_1(~1u));
    let var_0 = ~vec4<i32>(_wgslsmith_div_i32(-21625i, 4134i), ~global0.x, reverseBits(~(-global0.x)), global0.x);
    var var_1 = ~vec3<u32>(firstLeadingBit(abs(1u)), select(1u, 4294967295u, any(vec3<bool>(false, global1[_wgslsmith_index_u32(4053u, 22u)], true))) | _wgslsmith_clamp_u32(1u, 15988u, min(17946u, 1u)), 22952u);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, -376f), -566f, false)))), -420f, _wgslsmith_f_op_f32(-669f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-121f, 114f)) - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f - 244f)))) - vec4<f32>(_wgslsmith_f_op_f32(-476f + 1234f), 891f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1465f)), _wgslsmith_div_f32(-560f, -2038f)), _wgslsmith_f_op_f32(f32(-1f) * -1445f)), _wgslsmith_f_op_f32(320f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(524f + 130f) * _wgslsmith_f_op_f32(sign(793f))))));
    global1 = array<bool, 22>();
    var var_3 = any(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), var_1.x), var_1.x), 22u)], _wgslsmith_f_op_f32(ceil(var_2.x)) <= 930f, true, !(_wgslsmith_f_op_f32(var_2.x - var_2.x) <= var_2.x)));
    var_3 = !all(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(68477u, 22u)]), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(global1[_wgslsmith_index_u32(9532u, 22u)], true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 22u)])), vec2<bool>(global1[_wgslsmith_index_u32(35707u, 22u)], false)), !select(vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(12370u, 22u)]), vec2<bool>(true, true), false), !vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(func_1(1u).x << (reverseBits(var_1.x) % 32u))), abs(reverseBits(0u << ((var_1.x | 60630u) % 32u))));
}

