struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1000f, 1410f, 524f, 1000f), vec4<i32>(i32(-2147483648), 0i, 1i, 43583i), 10745i, vec4<f32>(1020f, -753f, -1767f, 523f), -26285i);

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 28399u);

var<private> global3: array<vec2<i32>, 5>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_2 {
    let var_0 = ~arg_1;
    let var_1 = all(vec3<bool>(false, any(vec4<bool>(false, true, true, true)) && false, true));
    return Struct_2(all(!vec2<bool>(var_1, !var_1)), select(!vec2<bool>(true, global1.a.x < -2061f), vec2<bool>(true, all(select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, true, var_1), var_1))), all(!vec3<bool>(var_1, var_1, false))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), true);
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = false;
    global3 = array<vec2<i32>, 5>();
    global3 = array<vec2<i32>, 5>();
    var var_0 = Struct_1(vec4<f32>(757f, -1153f, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_div_f32(global1.a.x, global1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(621f - 109f))) - _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(f32(-1f) * -1735f)))), max(_wgslsmith_mult_vec4_i32(max(vec4<i32>(15295i, 1i, u_input.a.x, 1i), vec4<i32>(25613i, -41097i, 2147483647i, global1.b.x)), (vec4<i32>(global1.b.x, global1.c, global1.b.x, -22136i) & vec4<i32>(0i, 13745i, global1.c, u_input.a.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 0u), vec4<u32>(30561u, global2.x, 79363u, 0u)) % vec4<u32>(32u))), ~u_input.a), ~(_wgslsmith_mult_i32(~1i, -1i) >> (global2.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d, -281f, 678f, -1000f))) * global1.d), -58851i);
    global2 = ~vec3<u32>(1u, global2.x, min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 26451u, global2.x, global2.x), vec4<u32>(0u, 39317u, 0u, 50103u)))) << (vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(25067u, global2.x, global2.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 30439u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.x, global2.x, 53944u), vec4<u32>(97355u, 42886u, 1u, 4294967295u)))), global2.x << (21187u % 32u), global2.x) % vec3<u32>(32u));
    return vec3<u32>(53575u, 49216u, ~global2.x);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    global2 = reverseBits(func_3(func_1(~global1.b.yzw, global2.x)));
    let var_0 = select(vec4<bool>(true | ((-212f == arg_0.a.x) || false), all(vec3<bool>(true, global2.x > global2.x, true)), !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), true), vec4<bool>((-206f == arg_0.d.x) && true, (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.x, 48306u), vec3<u32>(global2.x, global2.x, 78120u)) < 1u) || true, true, all(vec4<bool>(true, true, true, true))), vec4<bool>(false, !select(true, false, false) & all(vec3<bool>(true, true, true)), !(arg_0.a.x != arg_0.d.x) == (-58059i < _wgslsmith_dot_vec4_i32(arg_0.b, u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1576f * arg_0.d.x))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), -762f))));
    return _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global2.x ^ 29625u, global2.x, abs(global2.x), ~36394u)), ~vec4<u32>(countOneBits(4294967295u), _wgslsmith_add_u32(global2.x, 1u), ~8648u, 4294967295u), vec4<u32>(global2.x, abs(1u), ~_wgslsmith_add_u32(87339u, 39410u), global2.x)), firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(5688u, global2.x, 58648u, global2.x), vec4<u32>(32448u, global2.x, 11879u, global2.x)))) | vec4<u32>(~max(69271u, 0u), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, 0u, global2.x), vec4<u32>(963u, 1u, 34212u, global2.x))), global2.x, func_3(func_1(vec3<i32>(global1.c, global1.c, -14665i), global2.x)).x));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = 4294967295u;
    global3 = array<vec2<i32>, 5>();
    var var_1 = max(vec4<i32>(min(_wgslsmith_dot_vec3_i32(arg_2.wzx, vec3<i32>(u_input.a.x, 22428i, -1i)) >> (~37690u % 32u), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x)), ~arg_2.zx)), countOneBits(-2147483647i), arg_2.x, _wgslsmith_div_i32(15965i, arg_1 ^ _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(3183i, u_input.a.x, arg_1, global1.b.x)))), ~vec4<i32>(-1i, _wgslsmith_div_i32(arg_1 | 2147483647i, 2147483647i & global1.c), -18177i, -2147483647i));
    var var_2 = func_1(_wgslsmith_div_vec3_i32(var_1.xzw, ~var_1.xyy), countOneBits(4294967295u));
    var var_3 = vec4<i32>(~arg_2.x, -5592i, _wgslsmith_div_i32(max(_wgslsmith_mult_i32(abs(-31365i), ~arg_2.x), ~_wgslsmith_add_i32(arg_2.x, u_input.a.x)), global1.c), var_1.x);
    return Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(func_1(u_input.a.yyx | vec3<i32>(1i, -2147483647i, -1i), ~0u).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + 398f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1.d.x)), 511f)), _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1847f, -1615f, global1.d.x, 613f))))))), _wgslsmith_div_vec4_i32(global1.b, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, global1.c, ~(-2147483647i), 0i), _wgslsmith_mult_vec4_i32(min(vec4<i32>(global1.c, 29843i, 15542i, -2147483647i), arg_2), global1.b))), firstLeadingBit(global1.c), global1.d, -arg_2.x >> (func_3(Struct_2(global2.x == global2.x, select(var_2.b, var_2.b, true), global1.d.x, global1.a.x, true != var_2.a)).x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~firstTrailingBit(~(~vec3<u32>(global2.x, 1u, 54293u)));
    let var_0 = func_1(~(vec3<i32>(~(-26238i), -global1.e, u_input.a.x << (4294967295u % 32u)) | u_input.a.yzx), global2.x);
    let var_1 = var_0.e;
    global2 = _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, _wgslsmith_add_u32(global2.x, 4294967295u), global2.x), ~vec3<u32>(global2.x, global2.x, 0u)), ~(~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4993u, 3883u, global2.x), vec3<u32>(global2.x, global2.x, global2.x)), max(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 1u, 48887u)))));
    let var_2 = func_4(vec4<u32>(~(0u >> (0u % 32u)), global2.x | ~0u, ~73625u, 54650u & global2.x) | select(_wgslsmith_clamp_vec4_u32(vec4<u32>(74120u, 38630u, global2.x, 1u) | vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 0u, 30108u), func_2(Struct_1(vec4<f32>(705f, global1.a.x, global1.d.x, var_0.c), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -785i), -871i, global1.d, global1.c))), vec4<u32>(17932u, _wgslsmith_sub_u32(1u, global2.x), 1u >> (0u % 32u), global2.x), !select(vec4<bool>(false, var_1, var_0.b.x, true), vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(false, var_1, var_1, var_0.e))), -global1.b.x, vec4<i32>(_wgslsmith_add_i32(~global1.e, _wgslsmith_add_i32(2147483647i, -1i) ^ min(global1.c, global1.b.x)), firstTrailingBit(_wgslsmith_dot_vec2_i32(global1.b.ww, global3[_wgslsmith_index_u32(global2.x, 5u)]) << ((4294967295u | global2.x) % 32u)), global1.b.x, reverseBits(global1.e)));
    var var_3 = -(~countOneBits(~36013i) << (global2.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-103f, -665f, var_0.c), global1.a.wyy)))))));
}

