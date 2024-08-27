struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<u32>, 17>;

var<private> global2: Struct_5;

var<private> global3: i32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<bool>) -> f32 {
    global2 = arg_1;
    let var_0 = global0.a;
    let var_1 = Struct_1(vec2<i32>(1i, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, global0.a, global0.a, 0i), vec4<i32>(global0.a, global0.a, -1i, global0.a)), -vec4<i32>(-1i, global0.a, global0.a, global0.a)))), arg_1.a, _wgslsmith_f_op_f32(abs(-2005f)), select(max(~select(global1[_wgslsmith_index_u32(4294967295u, 17u)], vec4<u32>(4694u, 1u, u_input.a, 4294967295u), false), vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.yx), min(u_input.a, u_input.a), _wgslsmith_sub_u32(26376u, arg_0.x))), ~(vec4<u32>(arg_0.x, 1u, 8917u, 43807u) ^ global1[_wgslsmith_index_u32(arg_0.x ^ u_input.a, 17u)]), arg_2));
    let var_2 = Struct_2(Struct_1(~vec2<i32>(_wgslsmith_mod_i32(2147483647i, global0.a), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -38954i, 2147483647i), vec3<i32>(var_1.a.x, -47164i, global0.a))), _wgslsmith_f_op_f32(global2.a * -1000f), arg_1.a, vec4<u32>(u_input.a, var_1.d.x << ((arg_0.x << (4294967295u % 32u)) % 32u), ~_wgslsmith_mod_u32(16351u, 26725u), 80983u | ~arg_0.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, -163f))));
    var var_3 = select(!select(vec3<bool>(true, true, !arg_2.x), vec3<bool>(any(arg_2), false, !arg_2.x), vec3<bool>(var_2.a.c >= var_2.b.x, !arg_2.x, 1383f != var_1.c)), !select(arg_2.zxz, !(!vec3<bool>(arg_2.x, true, arg_2.x)), false), arg_2.yyw);
    return 1638f;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = arg_1.b.x;
    global2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2031f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f), false)), -1837f)));
    let var_1 = ~0u;
    var var_2 = Struct_4(countOneBits(arg_0.x), -469f);
    let var_3 = Struct_2(Struct_1(((vec2<i32>(arg_1.a.a.x, arg_1.a.a.x) << (arg_1.a.d.yx % vec2<u32>(32u))) | ~vec2<i32>(-1i, 0i)) | arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) + _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-274f, -128f)) + _wgslsmith_f_op_f32(func_3(vec3<u32>(58739u, 4294967295u, 23757u), Struct_5(710f), vec4<bool>(false, false, false, false))))), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(~u_input.a, 17u)], abs(countOneBits(global1[_wgslsmith_index_u32(arg_1.a.d.x, 17u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(arg_1.b, arg_1.b))))));
    return Struct_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.x, reverseBits(select(arg_0.x, var_3.a.a.x, false))), -4600i));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<bool>) -> u32 {
    global0 = Struct_4(global0.a, arg_1);
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 17u)];
    return ~(~12749u);
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(~select(~(vec4<u32>(4569u, u_input.a, arg_0, arg_0) >> (vec4<u32>(1u, u_input.a, 27155u, u_input.a) % vec4<u32>(32u))), ~(vec4<u32>(78777u, u_input.a, arg_0, u_input.a) >> (global1[_wgslsmith_index_u32(45051u, 17u)] % vec4<u32>(32u))), vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec2<bool>(false, true)), any(vec2<bool>(true, true)))), vec4<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(676f, -1217f, global2.a)), _wgslsmith_f_op_f32(min(1358f, global0.b)), func_2(vec2<i32>(1i, 0i), Struct_2(Struct_1(vec2<i32>(-11782i, global0.a), -716f, global2.a, global1[_wgslsmith_index_u32(arg_0, 17u)]), vec2<f32>(696f, -369f)), 68481u, 32352u), vec2<bool>(true, true)), 17u)], global1[_wgslsmith_index_u32(min(29702u ^ arg_0, _wgslsmith_sub_u32(4294967295u, 52803u)), 17u)]), 43996u, 1u, u_input.a));
    return _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-56159i, 1i), global0.a), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1(u_input.a);
    let var_1 = firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(global0.a >> (u_input.a % 32u)), 1i), 18559i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, var_0, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, global0.a, var_0), vec3<i32>(-2147483647i, 2147483647i, var_0), vec3<i32>(global0.a, global0.a, global0.a)))));
    global3 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(var_1, vec2<i32>(44954i, 1i))), vec2<i32>(~9048i, ~37904i)), _wgslsmith_mult_vec2_i32(-abs(select(var_1, var_1, vec2<bool>(false, true))), vec2<i32>(var_1.x, abs(global0.a))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-3234f - _wgslsmith_f_op_f32(global2.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b), 732f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-167f - global2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))));
    let var_3 = Struct_1(vec2<i32>(global0.a, countOneBits(-2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -837f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) * -1602f), _wgslsmith_div_vec4_u32(select(select(abs(vec4<u32>(0u, u_input.a, u_input.a, 1u)), global1[_wgslsmith_index_u32(1u, 17u)] | vec4<u32>(58397u, 1u, 4294967295u, 1u), vec4<bool>(true, false, false, false)), _wgslsmith_mod_vec4_u32(min(global1[_wgslsmith_index_u32(u_input.a, 17u)], vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)), vec4<u32>(1u, u_input.a, u_input.a, 36222u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), global1[_wgslsmith_index_u32(~u_input.a, 17u)]));
    var var_4 = !(all(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true)) & true);
    let var_5 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a, var_3.d.x, var_3.d.x) ^ (vec3<u32>(u_input.a, var_3.d.x, u_input.a) & vec3<u32>(u_input.a, 0u, 0u)), Struct_5(115f), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))))));
    global2 = Struct_5(1729f);
    let x = u_input.a;
    s_output = StorageBuffer(-36043i, ~var_3.d.x, _wgslsmith_mult_vec3_i32(vec3<i32>(-264i, 0i, global0.a | ~45641i), _wgslsmith_clamp_vec3_i32(firstLeadingBit(abs(vec3<i32>(global0.a, var_0, global0.a))), vec3<i32>(~0i, var_1.x, -var_1.x), vec3<i32>(-1i) * -vec3<i32>(var_1.x, 46324i, var_0))), func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 780f, 1017f)))))), 673f, Struct_3(var_1.x), vec2<bool>(true, true)), var_1);
}

