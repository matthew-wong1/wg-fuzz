struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<u32>(39059u, 1u, 57115u, 0u), 2147483647i, vec3<u32>(4294967295u, 4294967295u, 5754u));

var<private> global1: array<f32, 11>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = array<f32, 11>();
    let var_0 = arg_1.b;
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 11u)]))));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -139f, arg_1.c.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, global1[_wgslsmith_index_u32(11465u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]))) - vec3<f32>(383f, _wgslsmith_f_op_f32(round(164f)), _wgslsmith_f_op_f32(arg_1.c.x + global1[_wgslsmith_index_u32(global0.d.x, 11u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 11u)], -1344f, arg_1.c.x), vec3<f32>(-462f, global1[_wgslsmith_index_u32(u_input.a, 11u)], -1134f)))))));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<u32>) -> i32 {
    global0 = Struct_1(func_3(-firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(global0.c, 1i))), Struct_2(~global0.c, Struct_1(false, vec4<u32>(38871u, 43846u, 32742u, u_input.a) | vec4<u32>(arg_3.x, global0.d.x, arg_3.x, 0u), 63161i, ~global0.b.zxw), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(9435u, 11u)], 1306f))), vec3<bool>(true, true, arg_1.x || true), Struct_1(true, select(global0.b, global0.b, true), _wgslsmith_clamp_i32(27505i, global0.c, global0.c), global0.b.wzy)), ~1u), global0.b, firstTrailingBit(-1796i) | u_input.b.x, ~countOneBits(select(global0.d, _wgslsmith_clamp_vec3_u32(global0.d, vec3<u32>(global0.b.x, 0u, 4770u), global0.b.zxy), all(vec4<bool>(false, false, false, true)))));
    var var_0 = 1i;
    var_0 = ~_wgslsmith_clamp_i32(1i, global0.c, ~global0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1371f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(1u), 11u)]))), global1[_wgslsmith_index_u32(global0.d.x, 11u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(~1u, 0u), 11u)] + -1097f)));
    global1 = array<f32, 11>();
    return global0.c;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(arg_1.b.a, vec4<u32>(~_wgslsmith_mult_u32(countOneBits(42664u), arg_1.e.b.x), _wgslsmith_add_u32(53025u, ~(arg_1.e.d.x ^ 1264u)), ~arg_1.e.d.x, 4294967295u), global0.c, ~arg_1.b.d);
    global0 = Struct_1(!(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, arg_2.x, arg_0), -vec3<i32>(2147483647i, -2147483647i, 0i)) < 1i), ~(~arg_1.e.b), -16349i, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a << (1u % 32u), firstLeadingBit(global0.d.x)), vec3<u32>(~u_input.a, 24878u, ~global0.d.x)) & vec3<u32>(u_input.a, global0.d.x, arg_1.b.d.x));
    let var_0 = vec3<u32>(abs(~_wgslsmith_clamp_u32(global0.d.x, abs(global0.b.x), u_input.a)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), arg_1.b.d.xy) | (u_input.a | (_wgslsmith_sub_u32(u_input.a, arg_1.e.d.x) & u_input.a)), ~(~arg_1.b.b.x));
    var var_1 = Struct_2(29938i, Struct_1(any(!vec4<bool>(global0.a, arg_1.d.x, arg_1.d.x, false)), firstTrailingBit(global0.b), _wgslsmith_add_i32(32011i, arg_0), ~firstLeadingBit(~vec3<u32>(1u, arg_1.b.b.x, u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], arg_1.c.x), arg_1.c, true)) * vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(arg_1.b.b.x, 11u)]))) - _wgslsmith_f_op_vec2_f32(floor(arg_1.c))), arg_1.d, Struct_1(~var_0.x >= _wgslsmith_mod_u32(arg_1.e.d.x, _wgslsmith_div_u32(0u, var_0.x)), select(reverseBits(arg_1.e.b), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, global0.b.x, 4294967295u, var_0.x), arg_1.b.b), global0.b), global0.a), ~((global0.c | 15609i) >> (0u % 32u)), _wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, arg_1.e.b.x, arg_1.b.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.e.d.x, 0u, 10802u), global0.b.zxy), true), global0.d & ~global0.d)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 11u)]) * _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.x, -1074f)) + -225f)));
    return Struct_1(true, var_1.b.b, arg_1.e.c, vec3<u32>(var_0.x, ~(44289u << (var_1.e.b.x % 32u)), global0.b.x));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> Struct_2 {
    global1 = array<f32, 11>();
    global0 = func_4(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -7064i), -arg_2.zx), _wgslsmith_mod_i32(~func_2(57814i, vec2<bool>(global0.a, false), true, vec2<u32>(arg_0, 81057u)), 0i ^ func_2(arg_2.x, vec2<bool>(global0.a, true), global0.a, global0.b.xx)), all(!select(vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(false, global0.a, true, true), vec4<bool>(global0.a, global0.a, false, global0.a)))), Struct_2(i32(-1i) * -_wgslsmith_sub_i32(global0.c, arg_1.x), Struct_1(global0.a, vec4<u32>(4294967295u, 56291u, ~12173u, global0.b.x), countOneBits(abs(2147483647i)), ~(vec3<u32>(83470u, 27019u, 38369u) & vec3<u32>(u_input.a, global0.d.x, global0.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1482f, _wgslsmith_f_op_f32(trunc(1926f)))), select(!select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(global0.a, global0.a, global0.a), global0.a), select(vec3<bool>(true, global0.a, false), select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, false), false), all(vec3<bool>(global0.a, false, global0.a))), vec3<bool>(true || global0.a, true, true)), Struct_1(!(-242f >= global1[_wgslsmith_index_u32(29091u, 11u)]), global0.b, arg_2.x, vec3<u32>(58708u, 0u, 0u))), arg_1);
    let var_0 = Struct_1(!func_3(i32(-1i) * -1i, Struct_2(0i, Struct_1(true, vec4<u32>(4294967295u, 4294967295u, arg_0, global0.d.x), arg_1.x, global0.d), vec2<f32>(331f, -1059f), vec3<bool>(true, global0.a, global0.a), func_4(arg_1.x, Struct_2(34313i, Struct_1(global0.a, global0.b, 0i, global0.b.zyx), vec2<f32>(global1[_wgslsmith_index_u32(0u, 11u)], 229f), vec3<bool>(true, true, global0.a), Struct_1(global0.a, global0.b, 1i, vec3<u32>(arg_0, u_input.a, global0.b.x))), vec4<i32>(40530i, global0.c, 1i, -55557i))), abs(_wgslsmith_mod_u32(3366u, 27877u))), (vec4<u32>(~4294967295u, ~u_input.a, global0.d.x, _wgslsmith_dot_vec2_u32(global0.b.zx, vec2<u32>(34563u, arg_0))) | _wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, arg_0, global0.b.x, 37725u), abs(global0.b))) ^ abs(~(vec4<u32>(u_input.a, u_input.a, 21063u, arg_0) >> (global0.b % vec4<u32>(32u)))), _wgslsmith_mult_i32(~min(max(arg_2.x, arg_1.x), 13278i), select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.yy, arg_2.yx, arg_2.zy), vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_dot_vec4_i32(arg_1 ^ vec4<i32>(arg_2.x, 2147483647i, -45942i, arg_2.x), vec4<i32>(40211i, u_input.b.x, arg_1.x, u_input.b.x) & vec4<i32>(59986i, u_input.b.x, arg_1.x, -1i)), global0.a)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(24952u, global0.b.x, u_input.a), abs(global0.b.zxy)), _wgslsmith_dot_vec3_u32(~vec3<u32>(50505u, arg_0, 47423u), ~vec3<u32>(1u, 16720u, arg_0)), min(global0.b.x, global0.d.x) << (func_4(global0.c, Struct_2(23274i, Struct_1(true, vec4<u32>(6864u, 4294967295u, u_input.a, 94354u), 30609i, vec3<u32>(arg_0, 1u, global0.d.x)), vec2<f32>(global1[_wgslsmith_index_u32(104888u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(false, global0.a, true), Struct_1(global0.a, global0.b, arg_1.x, vec3<u32>(1u, u_input.a, 4294967295u))), vec4<i32>(0i, global0.c, arg_1.x, arg_2.x)).b.x % 32u)) >> (_wgslsmith_mod_vec3_u32(global0.b.xxy, vec3<u32>(18911u >> (arg_0 % 32u), func_4(-2147483647i, Struct_2(2147483647i, Struct_1(true, vec4<u32>(40824u, 1u, u_input.a, 0u), 1i, global0.d), vec2<f32>(global1[_wgslsmith_index_u32(global0.d.x, 11u)], global1[_wgslsmith_index_u32(36171u, 11u)]), vec3<bool>(false, global0.a, true), Struct_1(true, global0.b, global0.c, vec3<u32>(6816u, arg_0, 0u))), vec4<i32>(-2147483647i, global0.c, 54204i, 58762i)).b.x, global0.d.x)) % vec3<u32>(32u)));
    var var_1 = reverseBits(global0.b.yx);
    var var_2 = !vec2<bool>(func_4(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.c, u_input.b.x), arg_1.x), Struct_2(arg_1.x, Struct_1(true, vec4<u32>(4294967295u, var_0.b.x, var_1.x, 19501u), global0.c, global0.b.zwz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1826f, 1533f)), select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, true, true), var_0.a), func_4(arg_2.x, Struct_2(-3837i, var_0, vec2<f32>(global1[_wgslsmith_index_u32(41917u, 11u)], global1[_wgslsmith_index_u32(147830u, 11u)]), vec3<bool>(true, global0.a, var_0.a), var_0), arg_1)), -(~vec4<i32>(var_0.c, global0.c, global0.c, 11007i))).a, true);
    return Struct_2(arg_1.x, var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 11u)] - 415f), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(53301u, 11u)], 144f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-264f, global1[_wgslsmith_index_u32(0u, 11u)]) + _wgslsmith_div_vec2_f32(vec2<f32>(-901f, -1423f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 11u)], 446f)))))), !select(vec3<bool>(true, !var_2.x, var_2.x), select(!vec3<bool>(var_0.a, true, true), select(vec3<bool>(var_0.a, true, var_2.x), vec3<bool>(global0.a, true, var_0.a), var_2.x), !vec3<bool>(var_2.x, true, var_2.x)), vec3<bool>(var_0.a, true, !var_0.a)), var_0);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<u32> {
    global1 = array<f32, 11>();
    let var_0 = 1i;
    let var_1 = !select(vec4<bool>(false, true, true, func_4(-6364i, func_1(23870u, vec4<i32>(arg_3.c, 0i, u_input.b.x, 0i), u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_3.c, arg_3.c, -2147483647i), vec4<i32>(u_input.b.x, arg_3.c, -68883i, global0.c))).a), select(vec4<bool>(true || arg_0.e.a, global0.a & arg_3.a, true, true), select(vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, true, true, false), !arg_3.a), select(select(vec4<bool>(arg_2.x, global0.a, arg_2.x, arg_3.a), vec4<bool>(arg_0.d.x, arg_0.b.a, false, arg_0.d.x), vec4<bool>(arg_0.e.a, arg_0.e.a, global0.a, true)), !vec4<bool>(false, false, true, arg_0.b.a), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_div_f32(-1840f, global1[_wgslsmith_index_u32(arg_1, 11u)])) > -1085f);
    return select(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, global0.d.x, u_input.a) ^ arg_0.b.b, vec4<u32>(arg_1, global0.b.x, 4044u, arg_3.d.x)), abs(~global0.d.x), 9521u, 43668u), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(countOneBits(4294967295u), 1u << (arg_0.e.b.x % 32u), ~1u), ~(~0u)), reverseBits(~(arg_0.e.d.x << (69887u % 32u))), 23322u, _wgslsmith_mult_u32(min(3930u, 26876u ^ arg_1), min(1u, u_input.a))), !var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(_wgslsmith_mult_i32(firstTrailingBit(abs(global0.c)), _wgslsmith_div_i32(_wgslsmith_div_i32(11772i, global0.c), firstTrailingBit(global0.c))) >> ((global0.d.x >> (global0.d.x % 32u)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~8318u, 11u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 11u)])) + global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.d.x, u_input.a), 11u)])))));
    var_1 = global1[_wgslsmith_index_u32(global0.d.x, 11u)];
    let var_2 = Struct_1(global0.a, _wgslsmith_sub_vec4_u32(select(func_5(func_1(1u, vec4<i32>(var_0, u_input.b.x, -2147483647i, 2147483647i), u_input.b), ~4294967295u, vec2<bool>(true, true), Struct_1(false, global0.b, 1i, global0.b.xzz)), func_5(func_1(7212u, vec4<i32>(-1i, var_0, global0.c, global0.c), vec3<i32>(0i, 31713i, global0.c)), 1u ^ global0.b.x, vec2<bool>(true, global0.a), Struct_1(true, global0.b, var_0, vec3<u32>(4294967295u, u_input.a, 4294967295u))), !global0.a || global0.a), countOneBits(global0.b)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-28417i, 31768i, 1i) >> (vec3<u32>(global0.b.x, global0.b.x, 4294967295u) % vec3<u32>(32u)), u_input.b), u_input.b.x, func_2(0i, select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, global0.a), true), func_1(global0.b.x, vec4<i32>(-1i, global0.c, var_0, -1i), u_input.b).b.a, vec2<u32>(56082u, u_input.a) & global0.d.xz)) & _wgslsmith_div_i32(2147483647i, 29897i), global0.d);
    let var_3 = ~u_input.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~32216u);
}

