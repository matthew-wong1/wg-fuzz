struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 22>;

var<private> global2: Struct_3 = Struct_3(-21562i, Struct_2(vec2<f32>(-1663f, -778f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_add_i32(u_input.a, abs(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -54134i, global2.a), vec4<i32>(6386i, u_input.a, u_input.a, -57908i))))), -countOneBits(-(~vec3<i32>(-18350i, global2.a, u_input.a))));
    var var_2 = ~(-(~(-_wgslsmith_mult_vec3_i32(var_1.b, var_1.b))));
    var var_3 = global2.b;
    var var_4 = vec3<f32>(global2.b.a.x, _wgslsmith_f_op_f32(min(global2.b.a.x, 1000f)), -988f);
    return !vec2<bool>(global1[_wgslsmith_index_u32(reverseBits(1u), 22u)], true);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = !(!func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-443f, global2.b.a.x, global2.b.a.x, global2.b.a.x)), vec4<f32>(global2.b.a.x, 1524f, global2.b.a.x, global2.b.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, -851f, global2.b.a.x, global2.b.a.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.b.a.x, global2.b.a.x, -1978f, 207f))), vec4<f32>(-722f, 657f, global2.b.a.x, -2010f)))), vec4<f32>(-2055f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1116f + 2077f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-3480f * -436f)), _wgslsmith_f_op_f32(min(global2.b.a.x, _wgslsmith_f_op_f32(global2.b.a.x * global2.b.a.x)))), vec4<bool>(!all(vec3<bool>(var_0.x, false, global1[_wgslsmith_index_u32(1728u, 22u)])), !all(vec2<bool>(false, true)), arg_0.x, true))));
    var var_2 = any(select(vec3<bool>(global2.b.a.x >= 883f, select(arg_0.x, global1[_wgslsmith_index_u32(6646u, 22u)], global1[_wgslsmith_index_u32(17677u, 22u)]), 1i >= global2.a), vec3<bool>(all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 22u)], var_0.x)), global2.b.a.x >= 901f, false | arg_0.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(4294967295u, 59051u, false), firstLeadingBit(1u)), 22u)])) || !(!var_0.x);
    let var_3 = arg_1;
    var_2 = true;
    return var_1.x;
}

fn func_4(arg_0: u32, arg_1: f32) -> f32 {
    let var_0 = -(-_wgslsmith_clamp_i32(reverseBits(global2.a), 2147483647i << (arg_0 % 32u), u_input.a >> (arg_0 % 32u)) >> (arg_0 % 32u));
    global0 = false;
    var var_1 = Struct_1(-5231i, min(vec3<i32>(~(-global2.a), var_0, 1i), vec3<i32>(select(1i, 2147483647i, false), reverseBits(_wgslsmith_add_i32(36978i, -23798i)), -(u_input.a >> (arg_0 % 32u)))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(156f))));
}

fn func_5(arg_0: f32) -> Struct_3 {
    let var_0 = u_input.a | _wgslsmith_sub_i32(~global2.a, 0i);
    global0 = global1[_wgslsmith_index_u32(35762u, 22u)];
    var var_1 = vec4<u32>(1u, ~(~(~9196u)), abs(1u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(36000u, 26121u, 1u, 61942u), vec4<u32>(0u, 26075u, 4294967295u, 106023u))) | 1u);
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(var_1.yyz, _wgslsmith_mod_vec3_u32(var_1.wyy, var_1.zzx) ^ var_1.wyz)), 22u)];
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 4294967295u), vec3<u32>(0u, var_1.x, var_1.x)), _wgslsmith_sub_u32(60225u, 48323u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(10325u, 4294967295u, 4294967295u), var_1.zwy) % 32u), abs(1u)) | firstTrailingBit(select(firstLeadingBit(vec4<u32>(var_1.x, 4294967295u, 1u, var_1.x)), min(vec4<u32>(39124u, 0u, var_1.x, var_1.x), vec4<u32>(0u, var_1.x, 4294967295u, var_1.x)), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_1.x, 22u)], false))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 1u), vec4<u32>(40064u, var_1.x, var_1.x, 4294967295u) ^ vec4<u32>(4294967295u, var_1.x, var_1.x, 0u)) ^ ((vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x) ^ vec4<u32>(var_1.x, var_1.x, 0u, var_1.x)) | vec4<u32>(0u, 4507u, 23479u, 5461u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.x, 17952u), vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(46993u, var_1.x, 4294967295u, var_1.x)) >> (vec4<u32>(countOneBits(0u), firstTrailingBit(22567u), var_1.x, _wgslsmith_sub_u32(0u, var_1.x)) % vec4<u32>(32u))));
    return Struct_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-39932i, 24804i, var_0), i32(-1i) * -1i), global2.b);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    global2 = func_5(_wgslsmith_f_op_f32(func_4(min(36639u, ~100432u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), Struct_1(u_input.a, vec3<i32>(-1i, global2.a, u_input.a)))))))));
    var var_0 = ~(-36641i);
    var var_1 = Struct_1(u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-11653i, u_input.a, 10080i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~global2.a, -u_input.a), reverseBits(vec3<i32>(u_input.a, global2.a, u_input.a)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    global2 = Struct_3(1i, global2.b);
    global1 = array<bool, 22>();
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x))));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = ~vec3<u32>(_wgslsmith_mod_u32(~1u, ~select(27675u, 1u, true)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 90297u, 0u), vec3<u32>(1u, 1u, 53054u)) >> (0u % 32u), 22115u);
    global2 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.b.a.x)));
    let var_1 = reverseBits(vec3<i32>(1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, arg_1.a) << (vec3<u32>(71869u, 70861u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, 21246i) | vec3<i32>(-33872i, arg_1.a, u_input.a)), func_1(Struct_2(global2.b.a), -2044f).a, arg_1.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a.x, 1000f, -1386f, 718f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2110f, arg_1.b.a.x, global2.b.a.x, global2.b.a.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -413f), global2.b.a.x, _wgslsmith_f_op_f32(-2148f + 1618f), _wgslsmith_f_op_f32(f32(-1f) * -481f)), vec4<bool>(any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 22u)])), all(vec4<bool>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(var_0.x, 22u)], true)), global1[_wgslsmith_index_u32(0u, 22u)], false))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(957f - 448f), global2.b.a.x, _wgslsmith_f_op_f32(-1000f - global2.b.a.x), -686f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1375f, global2.b.a.x, -1090f, arg_1.b.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(445f, -469f, arg_1.b.a.x, global2.b.a.x), vec4<f32>(arg_1.b.a.x, -993f, -1640f, global2.b.a.x)), !arg_0))))) - vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, _wgslsmith_f_op_f32(min(-1379f, _wgslsmith_f_op_f32(-global2.b.a.x)))));
    var var_3 = Struct_3(-u_input.a | arg_1.a, arg_1.b);
    return _wgslsmith_div_vec4_i32(max(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(46509i, 2147483647i, arg_1.a, 47860i), vec4<i32>(25225i, global2.a, -23429i, 1i))), vec4<i32>(-2874i, global2.a, global2.a, var_3.a) << (~vec4<u32>(var_0.x, 1u, var_0.x, 53870u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(abs(~vec4<i32>(var_3.a, var_3.a, 7262i, u_input.a)), -(vec4<i32>(-18496i, 23099i, 33657i, -26786i) << (vec4<u32>(var_0.x, 0u, 1426u, var_0.x) % vec4<u32>(32u))))) ^ countOneBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, 2147483647i, 0i) >> (vec4<u32>(4294967295u, 110884u, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2605i, arg_1.a, global2.a), vec4<i32>(-1i, var_3.a, var_3.a, -1i)), vec4<i32>(global2.a, var_1.x, u_input.a, -1828i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(62963u, 22u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(29659u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], false), true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(16791u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(63885u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]), false), true)), func_1(global2.b, 866f));
    let var_1 = global2.b;
    var var_2 = !(!select(select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], false, global1[_wgslsmith_index_u32(1u, 22u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 22u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(47209u, 22u)], false, true)), !vec4<bool>(false, global1[_wgslsmith_index_u32(120426u, 22u)], false, false)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true), vec4<bool>(global1[_wgslsmith_index_u32(107414u, 22u)], false, global1[_wgslsmith_index_u32(94403u, 22u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(83632u, 22u)], false, false)), firstLeadingBit(u_input.a) != abs(2147483647i)));
    global1 = array<bool, 22>();
    let var_3 = Struct_1(-(~(-abs(-10671i))), firstLeadingBit(vec3<i32>(-3655i, var_0.x, 67555i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1747f + _wgslsmith_f_op_f32(var_1.a.x * global2.b.a.x))), _wgslsmith_f_op_f32(exp2(global2.b.a.x)))), select(abs(_wgslsmith_sub_i32(func_6(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false, global1[_wgslsmith_index_u32(11489u, 22u)], true), Struct_3(var_3.b.x, global2.b)).x, -global2.a)), ~23954i, true), -24268i, vec2<u32>(1u, 73420u) & _wgslsmith_div_vec2_u32(~abs(vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(80772u, 1u), vec2<u32>(12082u, 4294967295u)), ~83307u)), _wgslsmith_f_op_f32(f32(-1f) * -1058f));
}

