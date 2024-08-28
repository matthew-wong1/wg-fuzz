struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false));

var<private> global2: Struct_1 = Struct_1(50899i);

var<private> global3: array<u32, 7>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(u_input.a.x), global2.a << (4294967295u % 32u), global2.a), min(vec3<i32>(u_input.a.x, 0i, 0i), vec3<i32>(18814i, global2.a, u_input.a.x)))), reverseBits(max(~select(u_input.a, u_input.a, false), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a)))), true, _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~(~58537u), 7u)], reverseBits(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23997u, 7u)], 7u)], 7u)]), reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82047u, 7u)], 7u)])) & abs(global3[_wgslsmith_index_u32(~countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), 7u)]), select(true, any(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 7u)], 23u)]), all(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 82454u, 4294967295u), 7u)], 17u)])));
    let var_1 = firstTrailingBit(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, -14885i) << (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4333u, global3[_wgslsmith_index_u32(0u, 7u)], var_0.d), vec3<u32>(global3[_wgslsmith_index_u32(var_0.d, 7u)], var_0.d, 133891u), vec3<u32>(var_0.d, var_0.d, 4294967295u)), ~vec3<u32>(0u, 0u, var_0.d)) % vec3<u32>(32u))));
    var var_2 = var_0;
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1474f, 1894f, -1043f), vec3<f32>(356f, 1761f, -1092f), true)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-216f, 1530f, 1000f)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(903f, -1000f, -274f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2842f, _wgslsmith_f_op_f32(536f * -1098f), _wgslsmith_f_op_f32(339f - -1576f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1181f), -1372f, var_2.c)) + 791f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(997f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 976f))));
    return ~(-(~vec4<i32>(~var_2.a.a, global2.a, _wgslsmith_div_i32(var_2.b.x, 17404i), -var_3.a.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, arg_0.a.d) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(arg_0.a.d, 7u)], 56481u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.d, 7u)], 7u)], 78566u)), ~vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], 25011u))), abs(~vec2<u32>(arg_0.a.d, 4294967295u) | max(vec2<u32>(1u, arg_0.a.d), abs(vec2<u32>(global3[_wgslsmith_index_u32(44331u, 7u)], 0u)))));
    global1 = array<vec4<bool>, 17>();
    global0 = array<vec3<bool>, 23>();
    global2 = Struct_1(21275i);
    var var_1 = arg_0.a.c;
    return ~(~88797u);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(reverseBits(firstTrailingBit(global2.a)), global2.a)), vec2<i32>(-24589i, abs(1i) << (global3[_wgslsmith_index_u32(1u, 7u)] % 32u)) << (vec2<u32>(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 13428u), func_4(Struct_3(Struct_2(Struct_1(785i), vec2<i32>(u_input.a.x, global2.a), false, 67733u, false)), global1[_wgslsmith_index_u32(~150018u, 17u)], select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_3())) % vec2<u32>(32u)), true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32016u, 7u)], 7u)], 7u)], 7u)], global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(70891u, 1u, 1u), true), firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(34611u, 7u)], 0u, 24803u))) | global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44566u, 7u)], 7u)], 7u)]), 7u)], 7u)], 7u)], _wgslsmith_div_u32(max(global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(74460u, 7u)], 48870u), 7u)], 4294967295u), global3[_wgslsmith_index_u32(1u, 7u)])), 7u)], true);
    var var_1 = -vec2<i32>(max(~(~u_input.a.x), 1i), -1i);
    var var_2 = global2.a;
    let var_3 = vec2<bool>(var_0.c, any(select(!(!vec4<bool>(false, var_0.e, var_0.e, true)), vec4<bool>(true, var_0.e & var_0.e, var_0.c, global3[_wgslsmith_index_u32(34492u, 7u)] < 76816u), select(!vec4<bool>(var_0.c, var_0.c, var_0.e, true), select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 17u)], vec4<bool>(var_0.c, true, false, false), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.d, 7u)], 17u)]), select(vec4<bool>(var_0.e, false, false, var_0.c), global1[_wgslsmith_index_u32(var_0.d, 17u)], vec4<bool>(var_0.e, var_0.c, true, false))))));
    global2 = var_0.a;
    return 222f;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = Struct_2(arg_1.a, vec2<i32>(_wgslsmith_mod_i32(~(-20409i), u_input.a.x), _wgslsmith_div_i32(u_input.a.x, -11153i)), arg_1.c, 55505u, true);
    var var_1 = !select(vec2<bool>(true, false), select(vec2<bool>(var_0.e, all(vec3<bool>(var_0.c, false, var_0.c))), select(vec2<bool>(true, true), select(vec2<bool>(var_0.e, false), vec2<bool>(false, var_0.e), arg_1.c), !vec2<bool>(var_0.e, false)), arg_1.a.a > var_0.a.a), vec2<bool>(0i >= -arg_1.a.a, true));
    var_1 = select(!vec2<bool>(true, var_0.c), select(!select(!vec2<bool>(false, arg_1.e), select(vec2<bool>(true, var_1.x), vec2<bool>(arg_1.e, true), false), var_0.e), !vec2<bool>(var_0.e, true), select(!vec2<bool>(false, var_1.x), !vec2<bool>(var_1.x, true), true)), !select(select(!vec2<bool>(false, var_1.x), vec2<bool>(false, true), !vec2<bool>(var_0.e, arg_1.e)), vec2<bool>(4294967295u > global3[_wgslsmith_index_u32(45723u, 7u)], false), all(select(vec2<bool>(false, var_1.x), vec2<bool>(arg_1.c, var_0.c), vec2<bool>(var_0.c, var_1.x)))));
    var var_2 = arg_1;
    let var_3 = select(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(21492u, var_0.d), 7u)], 23u)], select(global0[_wgslsmith_index_u32(arg_1.d, 23u)], vec3<bool>(true, var_2.e, true), true), select(global0[_wgslsmith_index_u32(47338u, 23u)], global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(34535u, 7u)] >> ((var_2.d << (_wgslsmith_sub_u32(1u, arg_1.d) % 32u)) % 32u), 23u)], global0[_wgslsmith_index_u32(0u, 23u)]));
    return Struct_3(arg_1);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2067f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2())))), -261f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-774f))))), Struct_2(Struct_1(_wgslsmith_mult_i32(global2.a, -4982i)), abs(vec2<i32>(~u_input.a.x, global2.a)), all(vec2<bool>(true, select(false, false, false))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(24069u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)]), vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)]))), 45205u), 7u)], 7u)], 7u)], func_4(Struct_3(Struct_2(Struct_1(1i), u_input.a, true, global3[_wgslsmith_index_u32(48821u, 7u)], false)), vec4<bool>(true, true, true, false), vec2<bool>(true, false), select(vec4<i32>(1i, u_input.a.x, global2.a, global2.a), vec4<i32>(2147483647i, u_input.a.x, 1i, global2.a), true)) >= 1u), (select(vec4<u32>(global3[_wgslsmith_index_u32(22332u, 7u)], global3[_wgslsmith_index_u32(13593u, 7u)], global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25469u, 7u)], 7u)]) & vec4<u32>(global3[_wgslsmith_index_u32(16792u, 7u)], 68377u, 1u, 38410u), ~vec4<u32>(global3[_wgslsmith_index_u32(0u, 7u)], 17043u, 3526u, 23624u), global1[_wgslsmith_index_u32(22634u, 17u)]) & ~vec4<u32>(29494u, global3[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, 30278u)) & _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57993u, 7u)], 7u)], 251u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(39095u, 7u)], 7u)]), vec4<u32>(global3[_wgslsmith_index_u32(33533u, 7u)], 1u, 0u, 10509u), global1[_wgslsmith_index_u32(38314u, 17u)]), ~vec4<u32>(54363u, 35075u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global3[_wgslsmith_index_u32(36889u, 7u)]) >> (~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29994u, 7u)], 7u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4118u, 7u)], 7u)], 55628u) % vec4<u32>(32u)), ~vec4<u32>(global3[_wgslsmith_index_u32(37074u, 7u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5857u, 7u)], 7u)], 7u)], 0u)));
    global0 = array<vec3<bool>, 23>();
    var var_1 = !vec2<bool>(!var_0.a.e, true);
    let var_2 = select(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], ~(~global3[_wgslsmith_index_u32(4294967295u, 7u)])), 23u)], !global0[_wgslsmith_index_u32(~firstTrailingBit(0u), 23u)], all(global0[_wgslsmith_index_u32(max(30083u << (1u % 32u), 5302u), 23u)])), vec3<bool>(!(!(!var_0.a.e)), true, var_0.a.c), select(select(select(vec3<bool>(false, false, var_1.x), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 7u)], 23u)], select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_0.a.e, true), var_1.x)), !select(vec3<bool>(var_0.a.e, var_1.x, var_0.a.c), vec3<bool>(false, true, var_1.x), true), false), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~global3[_wgslsmith_index_u32(1u, 7u)]), abs(_wgslsmith_mod_u32(0u, var_0.a.d))), 23u)], select(!select(vec3<bool>(var_0.a.e, true, var_1.x), global0[_wgslsmith_index_u32(var_0.a.d, 23u)], vec3<bool>(true, false, var_0.a.e)), vec3<bool>(true, true, var_1.x), any(select(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.d, 7u)], 7u)], 23u)], vec3<bool>(false, false, var_1.x), vec3<bool>(var_0.a.e, var_1.x, var_1.x))))));
    let var_3 = select(var_2, !select(vec3<bool>(var_1.x, var_0.a.e, var_0.a.c), !(!vec3<bool>(var_1.x, false, false)), true), true || !all(var_2));
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(func_1(), u_input.a, false, _wgslsmith_sub_u32(abs(0u), min(global3[_wgslsmith_index_u32(36000u, 7u)], 32383u)) << (~26262u % 32u), true));
    var var_1 = Struct_1(2147483647i);
    global0 = array<vec3<bool>, 23>();
    global2 = Struct_1(-_wgslsmith_mult_i32(var_1.a, ~_wgslsmith_dot_vec2_i32(u_input.a, var_0.a.b)));
    let var_2 = var_0.a.a;
    let var_3 = func_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, 1000f, -1443f, -1000f) * vec4<f32>(-883f, 651f, -857f, 1188f)), vec4<f32>(-309f, 1098f, -970f, -1411f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1908f, 283f, -824f, 774f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(137f, 305f, -168f, -981f))))))), Struct_2(func_1(), _wgslsmith_add_vec2_i32((var_0.a.b << (vec2<u32>(global3[_wgslsmith_index_u32(44324u, 7u)], 68522u) % vec2<u32>(32u))) >> (firstLeadingBit(vec2<u32>(var_0.a.d, 41279u)) % vec2<u32>(32u)), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2284f, -480f, -1040f)), var_0.a, vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2244u, 7u)], 7u)], 0u, 65564u, var_0.a.d) & vec4<u32>(var_0.a.d, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.d, 7u)], 7u)], 45774u, 7191u)).a.b), true, 1u, select(false, var_0.a.e, false & (true && var_0.a.c))), ~_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)], 1u, global3[_wgslsmith_index_u32(var_0.a.d, 7u)]) ^ vec4<u32>(1u, 0u, 23214u, global3[_wgslsmith_index_u32(0u, 7u)])), vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a.d, 4294967295u), 7u)], ~var_0.a.d, _wgslsmith_mult_u32(var_0.a.d, 4294967295u), 1u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(657f, -1339f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f)), _wgslsmith_f_op_f32(trunc(862f))));
    let var_5 = ~(~(~(~select(vec2<u32>(var_0.a.d, 7290u), vec2<u32>(10853u, 4294967295u), false))));
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-35415i | var_6.x, global2.a, var_1.a, var_0.a.b.x | -1i), ~select(~(~vec4<u32>(102619u, 34028u, var_3.a.d, global3[_wgslsmith_index_u32(97233u, 7u)])), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.a.d, var_0.a.d, var_5.x, 4294967295u), vec4<u32>(26582u, var_0.a.d, var_3.a.d, 1u)), vec4<u32>(var_5.x, 1u, var_3.a.d, global3[_wgslsmith_index_u32(var_5.x, 7u)]) ^ vec4<u32>(var_5.x, global3[_wgslsmith_index_u32(4294967295u, 7u)], var_3.a.d, var_5.x)), !select(global1[_wgslsmith_index_u32(13283u, 17u)], global1[_wgslsmith_index_u32(var_0.a.d, 17u)], global1[_wgslsmith_index_u32(var_0.a.d, 17u)])), var_4.x, (_wgslsmith_mult_vec4_u32(min(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 7u)], 7u)], var_5.x, var_5.x, 1u), vec4<u32>(var_3.a.d, var_3.a.d, 26430u, var_3.a.d)), vec4<u32>(48558u, 50274u, global3[_wgslsmith_index_u32(28276u, 7u)], 28741u)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 2296u, var_3.a.d, 0u), vec4<u32>(var_3.a.d, var_3.a.d, 10657u, 0u))) >> (min(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_5.x, var_3.a.d, var_5.x), ~vec4<u32>(4294967295u, 10841u, global3[_wgslsmith_index_u32(3743u, 7u)], var_5.x)), reverseBits(vec4<u32>(1u, global3[_wgslsmith_index_u32(16919u, 7u)], 0u, var_3.a.d)) ^ ~vec4<u32>(var_0.a.d, 58655u, var_3.a.d, 10292u)) % vec4<u32>(32u)), 2314f);
}

