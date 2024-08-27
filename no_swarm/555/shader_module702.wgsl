struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = global1.zzw;
    let var_1 = u_input.b.x >= -2147483647i;
    var var_2 = arg_0;
    let var_3 = Struct_2(Struct_1(global2.a), u_input.d, 2374u);
    let var_4 = Struct_1(global2.a);
    return var_4;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_2.a;
    let var_1 = ~vec4<u32>(firstTrailingBit(abs(1u)), arg_2.c, 0u, ~(~4294967295u));
    let var_2 = arg_2;
    let var_3 = (vec3<u32>(1u, var_1.x, ~6702u) ^ global2.a) ^ var_2.a.a;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(692f * global1.x), -398f, _wgslsmith_div_f32(832f, 493f), _wgslsmith_f_op_f32(807f + global1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, -853f)), _wgslsmith_f_op_f32(-949f * global1.x), global1.x, _wgslsmith_f_op_f32(max(-511f, global1.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2426f, global1.x, -1520f, 972f) * vec4<f32>(-900f, -2509f, global1.x, -441f)))), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, select(false, any(vec2<bool>(true, true)), true)))));
    return Struct_3(any(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 50871u, global2.a.x)), var_1.xxz), true);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_1 {
    global2 = func_2(!arg_1.x & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_0 = 1i;
    var var_1 = arg_0;
    global0 = array<vec2<f32>, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(var_1.b)), 7u)]);
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.b, countOneBits(arg_0.b), select(var_1.b, u_input.d, false)), vec3<u32>(global3.x, ~9439u, global3.x ^ arg_0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~0u, _wgslsmith_clamp_u32(65320u, var_1.b, 8895u)), max(global2.a, global2.a)), reverseBits(firstLeadingBit(var_1.b << (36106u % 32u)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = abs(vec4<i32>(_wgslsmith_mod_i32(-51276i, _wgslsmith_mult_i32(reverseBits(0i), min(-2147483647i, arg_3.x))), min(arg_2.x, ~min(-74337i, 2147483647i)), _wgslsmith_mod_i32(arg_3.x, ~arg_2.x), u_input.b.x ^ _wgslsmith_add_i32(arg_3.x, ~arg_3.x)));
    var var_1 = Struct_3(false, _wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(global3.x, u_input.c, 0u, arg_1.a.x), ~vec4<u32>(44802u, 65480u, 1u, global2.a.x))), reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.a.x, arg_1.a.x, 51428u), vec4<u32>(global3.x, arg_1.a.x, 75691u, u_input.c)), vec4<u32>(global2.a.x, 4294967295u, u_input.c, 1u) << (vec4<u32>(arg_1.a.x, u_input.d, global3.x, global3.x) % vec4<u32>(32u))))), global3.x == 1u);
    var var_2 = Struct_3(arg_0, arg_1.a.x, !var_1.a && arg_0);
    let var_3 = arg_3;
    global3 = arg_1.a;
    return func_4(func_3(var_3.xz, vec3<i32>(var_3.x, arg_3.x, -18247i), Struct_2(func_2(var_2.c, -560f), 4294967295u, var_1.b)), select(vec4<bool>(true, all(vec3<bool>(var_2.a, false, true)) || true, false, true), vec4<bool>(!any(vec3<bool>(false, arg_0, false)), !(global1.x >= 2512f), var_2.c, arg_0 && true), !vec4<bool>(var_1.c & var_2.a, var_2.c, false, var_1.a)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -880f);
    global3 = ~vec3<u32>(4294967295u, countOneBits(_wgslsmith_clamp_u32(~global3.x, 26935u, _wgslsmith_sub_u32(73252u, u_input.d))), reverseBits(_wgslsmith_div_u32(~global3.x, 1u)));
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec3<bool>(true, false, false)), select(any(vec4<bool>(true, false, true, false)), func_3(u_input.b, vec3<i32>(44281i, 0i, 5163i), Struct_2(Struct_1(arg_0.a), 1u, global3.x)).a, true)), select(vec4<bool>(4294967295u < arg_0.a.x, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true)));
    global0 = array<vec2<f32>, 7>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-669f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * _wgslsmith_f_op_f32(step(global1.x, arg_1.x)))))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(497f, _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-global1.x));
    return true;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_3(true, abs(func_2(!(!arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -365f)).a.x), arg_1.x);
    var var_1 = Struct_1(vec3<u32>(arg_0.b, min(countOneBits(1137u), _wgslsmith_div_u32(global2.a.x, 1u)), var_0.b));
    let var_2 = firstLeadingBit(~_wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(u_input.b.x, 2147483647i, arg_2, 5779i)), vec4<i32>(1i, -2147483647i, u_input.b.x, 23498i) & vec4<i32>(u_input.b.x, arg_2, arg_2, 0i)));
    let var_3 = arg_1.wxw;
    var var_4 = Struct_1(~(min(~var_1.a, reverseBits(global2.a)) >> (~vec3<u32>(global3.x, 30321u, 0u) % vec3<u32>(32u))));
    return Struct_1(vec3<u32>(func_2(any(select(arg_1, vec4<bool>(true, false, false, arg_1.x), arg_1.x)), global1.x).a.x, ~4294967295u, _wgslsmith_div_u32(4294967295u ^ var_1.a.x, 17244u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, global3.x, 2981u), _wgslsmith_clamp_vec3_u32(global2.a, vec3<u32>(global3.x, u_input.a, 1u), vec3<u32>(23305u, 62862u, global3.x)))), countOneBits(global3.x), abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.d, 23222u), _wgslsmith_div_u32(0u, 4294967295u)))), vec4<bool>(!(true && (global1.x > 191f)), func_5(func_1(true, Struct_1(vec3<u32>(global2.a.x, u_input.c, 4294967295u)), vec2<i32>(1i, u_input.b.x), ~vec3<i32>(0i, u_input.b.x, u_input.b.x)), global1.www), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global1.x)), global1.x)) == global1.x, true), u_input.b.x);
    var var_1 = vec4<f32>(global1.x, -161f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(374f * global1.x), -1257f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(~abs(1u), 7u)]))));
    global3 = ~_wgslsmith_mult_vec3_u32(global2.a, var_0.a);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.x, -1539f, var_1.x, -1324f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1190f, var_2.x, -1632f)), vec4<f32>(var_2.x, var_1.x, var_2.x, var_1.x))))));
    var var_3 = _wgslsmith_f_op_f32(-var_2.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1450f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * global1.x) + var_2.x)));
    let var_4 = _wgslsmith_mod_i32(reverseBits(u_input.b.x), reverseBits(~u_input.b.x ^ ~_wgslsmith_mult_i32(u_input.b.x, -2147483647i)));
    let var_5 = -337f;
    var var_6 = 36123u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4, u_input.b.x));
}

