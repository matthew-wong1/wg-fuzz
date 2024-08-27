struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: Struct_4 = Struct_4(1i, 1441u, vec4<i32>(-1i, -1i, -3737i, -20836i), Struct_2(vec3<f32>(-512f, 368f, 1468f)), -2147i);

var<private> global2: array<u32, 30>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(arg_0.x));
    var var_1 = any(select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, 0u > global2[_wgslsmith_index_u32(1u, 30u)], false, false), true), vec4<bool>(true, global1.d.a.x < _wgslsmith_f_op_f32(trunc(arg_0.x)), !all(vec3<bool>(false, false, false)), false), any(vec3<bool>(true, true, true))));
    var var_2 = abs(reverseBits(countOneBits(vec2<u32>(global1.b, global2[_wgslsmith_index_u32(global1.b, 30u)]) << (vec2<u32>(global1.b, 1u) % vec2<u32>(32u)))));
    global1 = Struct_4(i32(-1i) * -_wgslsmith_clamp_i32(~u_input.a.x, global1.a, _wgslsmith_sub_i32(u_input.b.x, global1.a)), ~(~66070u), global1.c << (~(~(~vec4<u32>(global1.b, global1.b, var_2.x, global2[_wgslsmith_index_u32(23187u, 30u)]))) % vec4<u32>(32u)), Struct_2(arg_0.wyz), u_input.b.x);
    var var_3 = select(!vec2<bool>(all(vec3<bool>(true, true, false)), select(true, all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, false)))), !vec2<bool>(!(-1i >= global1.a), select(false, true, true) || select(false, false, true)), vec2<bool>(true, true));
    return false;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = global1.d;
    var_0 = any(vec4<bool>(arg_0.x, any(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0, vec4<bool>(arg_0.x, false, false, true))), false, !(!func_3(vec4<f32>(global1.d.a.x, -604f, global1.d.a.x, arg_2.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-219f * 461f)))))) + 2584f);
    var var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), ~vec3<u32>(4294967295u, 94947u, global2[_wgslsmith_index_u32(1u, 30u)])), _wgslsmith_sub_vec3_u32(~vec3<u32>(39252u, 1566u, global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<u32>(global1.b, 1u, 63182u))), ~min(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~17249u, 79531u), 30u)], ~countOneBits(4294967295u)));
    return -_wgslsmith_add_i32(reverseBits((arg_1.x << (0u % 32u)) & u_input.b.x), ~_wgslsmith_mod_i32(global1.a ^ 29240i, i32(-1i) * -41919i));
}

fn func_1(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = vec2<u32>(1u, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22521u, 30u)], 30u)], 30u)]), global1.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(global1.b), 1u, global1.b | 0u), 30u)]) & global1.b, 30u)]);
    global2 = array<u32, 30>();
    global2 = array<u32, 30>();
    global1 = Struct_4(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(func_2(vec4<bool>(true, true, true, true), vec3<i32>(-2147483647i, global1.c.x, u_input.b.x), _wgslsmith_div_vec2_f32(arg_0.wz, global1.d.a.xz)), u_input.a.x)), ~var_0.x, ~(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global1.e, global1.e), global1.c, vec4<i32>(-14710i, global1.a, global1.e, global1.e)) ^ ~vec4<i32>(2147483647i, global1.c.x, -13030i, -44213i))), global1.d, 1i);
    let var_1 = global1.d;
    return countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(28449u, var_0.x), vec2<u32>(1u, var_0.x) | vec2<u32>(24803u, global2[_wgslsmith_index_u32(global1.b, 30u)])), ~(~var_0)), global2[_wgslsmith_index_u32(abs(1u), 30u)], _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22376u, 9979u, 20902u), vec3<u32>(0u, 10497u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1235u, 30u)], 30u)])) >> (vec3<u32>(91431u, 1u, global1.b) % vec3<u32>(32u)), ~vec3<u32>(6679u, 11712u, var_0.x)), _wgslsmith_add_u32(27689u, ~41182u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = u_input.a.x;
    var var_1 = !select(vec2<bool>(false, true), select(vec2<bool>(arg_2, !arg_2), select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2), select(false, arg_2, true)), vec2<bool>(arg_2, arg_2)), !select(vec2<bool>(false, arg_2), !vec2<bool>(true, arg_2), arg_2));
    global1 = Struct_4(max(arg_1, ~0i ^ func_2(select(vec4<bool>(false, arg_2, true, true), vec4<bool>(false, var_1.x, arg_2, false), vec4<bool>(var_1.x, false, false, var_1.x)), vec3<i32>(arg_1, -6227i, -607i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.a.x, global1.d.a.x)))), global1.b, vec4<i32>(global1.c.x, u_input.a.x, firstTrailingBit(67776i), 1i), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(select(503f, 128f, any(vec3<bool>(arg_2, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.a.x * -2100f) - 1769f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.d.a.x)) * _wgslsmith_f_op_f32(796f * global0[_wgslsmith_index_u32(global1.b, 4u)])))), countOneBits(~(-1i)));
    let var_2 = -vec4<i32>(~min(~(-43428i), 1i), _wgslsmith_div_i32(16548i, _wgslsmith_clamp_i32(global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x), vec2<i32>(-1i, global1.a)), -5070i)), -1i, 23273i);
    var var_3 = _wgslsmith_f_op_f32(-844f + global1.d.a.x);
    return Struct_4(func_2(select(select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(arg_2, false, true, true), vec4<bool>(false, arg_2, arg_2, true)), !select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(arg_2, false, false, arg_2), false), !select(vec4<bool>(true, var_1.x, true, arg_2), vec4<bool>(true, false, var_1.x, arg_2), vec4<bool>(true, false, var_1.x, true))), vec3<i32>(-1i, -2147483647i, 17050i), global1.d.a.zz), 1u, var_2 << (_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global2[_wgslsmith_index_u32(589u, 30u)]), arg_0.wxx), ~20730u, 4294967295u)) % vec4<u32>(32u)), global1.d, ~(~(-2147483647i >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -859f;
    global1 = Struct_4((i32(-1i) * -_wgslsmith_clamp_i32(-83908i, u_input.a.x, -1i)) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(16717u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], 5357u, global2[_wgslsmith_index_u32(global1.b, 30u)]), reverseBits(vec4<u32>(76786u, 6116u, global1.b, 4046u))) & global1.b) % 32u), _wgslsmith_mult_u32(80482u, global1.b), vec4<i32>(35215i & reverseBits(global1.e | 1i), ~(abs(44048i) >> (max(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)]) % 32u)), _wgslsmith_add_i32(global1.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, global1.c.x, global1.a), -global1.c.xxy)), u_input.a.x), global1.d, -37878i);
    global1 = func_4(~(func_1(vec4<f32>(global1.d.a.x, -656f, global0[_wgslsmith_index_u32(20666u, 4u)], global0[_wgslsmith_index_u32(8070u, 4u)])) << (~(vec4<u32>(61084u, 15820u, 4294967295u, global1.b) | vec4<u32>(1847u, global1.b, global1.b, 16988u)) % vec4<u32>(32u))), ~_wgslsmith_sub_i32(global1.e, -u_input.a.x), true);
    let var_1 = global0[_wgslsmith_index_u32(488u, 4u)];
    let var_2 = ~vec2<u32>(52142u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 17595u, 82996u), vec3<u32>(global2[_wgslsmith_index_u32(47551u, 30u)], global1.b, global1.b)) % 32u), func_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, global1.d.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], -202f) + vec4<f32>(global0[_wgslsmith_index_u32(global1.b, 4u)], global1.d.a.x, -591f, -1119f))))).x);
    var var_3 = ~_wgslsmith_sub_i32(1i, ~(-4632i));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.a.x, 1128f, 1669f, global1.d.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.d.a.x, 2153f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x, 30u)], 4u)], global1.d.a.x), vec4<f32>(-597f, -790f, -611f, -395f))), vec4<f32>(177f, global1.d.a.x, 1000f, 1904f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.b, 4u)], -249f, global1.d.a.x, -1211f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-382f)), global1.d.a.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(57528u, 4u)] - global1.d.a.x), -155f) * vec4<f32>(358f, -419f, func_4(vec4<u32>(0u, global1.b, 14453u, global2[_wgslsmith_index_u32(global1.b, 30u)]), u_input.b.x, false).d.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_5 = func_4(countOneBits(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(global2[_wgslsmith_index_u32(52019u, 30u)], global1.b, global2[_wgslsmith_index_u32(global1.b, 30u)], 1u), vec4<u32>(var_2.x, 1u, 0u, 0u)), vec4<u32>(~4294967295u, ~global1.b, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global1.b, 30u)], var_2.x), 30u)], var_2.x))), -(~(-12763i)), select(true | select(false, true, all(vec2<bool>(false, false))), func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, global0[_wgslsmith_index_u32(var_2.x, 4u)], -490f, 1132f)))), !(global1.d.a.x <= global1.d.a.x))).d;
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(select(u_input.a.x, global1.a, true)));
}

