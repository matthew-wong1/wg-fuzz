struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false), -10232i, vec2<bool>(true, false), vec2<f32>(-700f, -168f), vec3<i32>(21128i, 1i, i32(-2147483648)));

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = array<vec4<bool>, 25>();
    var var_0 = Struct_1(select(select(select(global0.a, vec3<bool>(true, true, arg_1), arg_0.a), vec3<bool>(arg_1, any(global0.a.xz), any(vec3<bool>(false, false, arg_1))), !select(global0.a, arg_0.a, arg_0.c.x)), !arg_0.a, vec3<bool>(any(select(global0.a, arg_0.a, false)), arg_1, _wgslsmith_f_op_f32(floor(arg_0.d.x)) <= _wgslsmith_f_op_f32(-global0.d.x))), -33168i, vec2<bool>(arg_0.c.x, arg_1), arg_0.d, global0.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-894f, arg_0.d.x, arg_0.d.x, -525f), vec4<f32>(global0.d.x, global0.d.x, var_0.d.x, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, -632f, var_0.d.x, arg_0.d.x) - vec4<f32>(global0.d.x, -738f, -1146f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-159f, arg_0.d.x, -2182f, global0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, var_0.d.x, var_0.d.x, -250f)), arg_1))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-925f - var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)), arg_0.d.x, _wgslsmith_f_op_f32(ceil(410f)))));
    var var_2 = !select(!vec4<bool>(true, any(vec4<bool>(true, false, true, true)), true, arg_1), select(select(!vec4<bool>(global0.c.x, arg_1, arg_0.a.x, var_0.c.x), vec4<bool>(arg_0.a.x, arg_1, arg_0.a.x, arg_1), vec4<bool>(true, false, true, true)), select(vec4<bool>(var_0.a.x, true, true, false), vec4<bool>(true, arg_0.a.x, global0.a.x, var_0.a.x), vec4<bool>(true, global0.c.x, false, arg_1)), !(var_0.a.x && true)), any(!select(global0.a, global0.a, arg_0.a)));
    var var_3 = 0i;
    return -49523i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(_wgslsmith_mult_u32(arg_2, 62759u), 6497u)), _wgslsmith_div_vec2_u32(vec2<u32>(max(arg_2, 41330u), _wgslsmith_div_u32(1u, 30805u)), ~vec2<u32>(arg_2, 41738u))));
    let var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(global0.e.x, 1i, func_3(Struct_1(vec3<bool>(arg_0.a.x, arg_0.c.x, true), arg_0.b, vec2<bool>(false, arg_0.c.x), global0.d, vec3<i32>(0i, -34033i, arg_0.b)), false), 0i) & vec4<i32>((u_input.a ^ 20737i) << (1u % 32u), ~u_input.a >> (_wgslsmith_clamp_u32(35647u, arg_2, var_0.x) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.x, 2147483647i, u_input.a, 4575i), vec4<i32>(global0.b, -32097i, 22530i, u_input.a)), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), ~(-2147483647i))), ~(-firstTrailingBit(abs(vec4<i32>(23656i, u_input.a, arg_0.e.x, -9368i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, global0.d.x, 1f, _wgslsmith_div_f32(594f, _wgslsmith_f_op_f32(-arg_0.d.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 153f, arg_0.d.x, -522f) * vec4<f32>(582f, arg_0.d.x, 1108f, arg_1))))));
    global2 = _wgslsmith_mod_u32(4294967295u, var_0.x) ^ ~_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(var_0.x, var_0.x))), ~1u >> (var_0.x % 32u));
    let var_3 = -43406i;
    return Struct_1(vec3<bool>(false, true, true), firstTrailingBit(global0.e.x), select(global0.c, select(!global0.c, global0.c, vec2<bool>(arg_0.c.x, false || arg_0.a.x)), !arg_0.a.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2074f, _wgslsmith_f_op_f32(-arg_1)), 949f)), countOneBits(vec3<i32>(~(-1i), ~1i, -16711i << (0u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(arg_1.e, _wgslsmith_sub_vec3_i32(arg_0.e, vec3<i32>(14470i, 1i, -1i) ^ vec3<i32>(1136i, u_input.a, arg_1.e.x)) & arg_0.e), func_2(func_2(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-239f, 1410f))), ~34735u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1662f)) + 127f)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(~62862u, 17746u >> (1u % 32u)))).e, vec3<i32>(1i, 1i, arg_0.e.x));
    var var_1 = func_2(func_2(func_2(func_2(arg_1, global0.d.x, ~0u), arg_0.d.x, ~(~49353u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(global0.d.x + 478f)) - arg_1.d.x), 757u), arg_1.d.x, ~(~(~1u)));
    var_1 = func_2(Struct_1(!arg_1.a, var_1.b, var_1.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.d))), max(vec3<i32>(arg_1.e.x, 35083i, 0i), func_2(arg_1, 890f, 4294967295u).e)), 326f, ~(~(~1u)));
    global0 = func_2(Struct_1(!(!(!vec3<bool>(arg_1.a.x, false, var_1.a.x))), i32(-1i) * -7365i, vec2<bool>(var_1.c.x, arg_0.a.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1415f, 113f) * var_1.d))))), var_1.e), -571f, _wgslsmith_clamp_u32(abs(1u), 7254u, 1u));
    let var_2 = global1[_wgslsmith_index_u32((_wgslsmith_mult_u32(0u, countOneBits(3251u)) ^ select(~min(1u, 18408u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 0u)), any(arg_0.a))) & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), min(vec4<u32>(37183u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~0u), 25u)];
    return false | arg_0.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, ~(~arg_0.b), select(vec2<bool>(func_4(func_2(arg_0, 1000f, 24228u), Struct_1(arg_2.a, u_input.a, global0.c, vec2<f32>(global0.d.x, global0.d.x), arg_2.e)), false), vec2<bool>(true, !arg_0.a.x), select(global0.c, vec2<bool>(arg_0.a.x, !arg_2.c.x), select(!vec2<bool>(true, arg_0.c.x), vec2<bool>(true, global0.a.x), false))), vec2<f32>(2335f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1272f, _wgslsmith_f_op_f32(arg_2.d.x * -251f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.x - arg_2.d.x))))), ~(~arg_0.e));
    global2 = ~(max(~1u, arg_1) << ((~arg_1 >> (47136u % 32u)) % 32u));
    let var_1 = arg_0.d.x;
    global2 = arg_1;
    let var_2 = var_0;
    return func_2(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f * -590f)) + -1309f), ~1u);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> bool {
    let var_0 = vec3<i32>(1i, func_1(arg_0, _wgslsmith_sub_u32(_wgslsmith_sub_u32(44166u, 1u), _wgslsmith_add_u32(15940u, 1u)), arg_0).b, 12767i) ^ arg_2.e;
    let var_1 = Struct_1(!vec3<bool>(arg_2.a.x, select(global0.a.x, arg_2.c.x | global0.c.x, false), !any(global0.a)), _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(global0.b, 0i)), arg_2.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -113f) * arg_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, 223f)))))), ~(~vec3<i32>(-24746i, -27632i, -arg_2.e.x)));
    let var_2 = !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(2418u, min(17533u, 83241u)), vec2<u32>(1u, ~0u)) << (max(4294967295u, 1u) % 32u), 25u)];
    global1 = array<vec4<bool>, 25>();
    var var_3 = -37562i;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(global0.a, global0.a, vec3<bool>(global0.c.x, func_5(func_1(Struct_1(vec3<bool>(true, global0.a.x, true), -38177i, global0.a.zz, vec2<f32>(-1225f, global0.d.x), vec3<i32>(1i, u_input.a, u_input.a)), 4294967295u, Struct_1(global0.a, global0.e.x, global0.a.zz, global0.d, global0.e)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, -879f)), Struct_1(global0.a, u_input.a, vec2<bool>(true, false), vec2<f32>(-990f, global0.d.x), vec3<i32>(u_input.a, global0.e.x, global0.b))), global0.a.x)), global0.b, !(!global0.c), global0.d, global0.e);
    var var_1 = global0.c.x;
    let var_2 = ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u));
    global1 = array<vec4<bool>, 25>();
    var_1 = -1005f > _wgslsmith_f_op_f32(floor(var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 407f, 1475f), vec3<f32>(-427f, var_0.d.x, global0.d.x), false)))))), _wgslsmith_add_vec2_i32(var_0.e.yz, ~select(~vec2<i32>(-1i, global0.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(3551i, -2147483647i), var_0.e.yy), !global0.a.x)));
}

