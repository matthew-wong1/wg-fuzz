struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_5 = Struct_5(Struct_1(false, vec3<bool>(true, false, true), 32243i, 1113f), vec2<u32>(0u, 22428u));

var<private> global2: Struct_5 = Struct_5(Struct_1(false, vec3<bool>(false, true, true), -43913i, 935f), vec2<u32>(44864u, 0u));

var<private> global3: array<vec3<bool>, 10>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = select(vec4<bool>(arg_0.x, true, false, global1.a.a), select(vec4<bool>(global1.a.a, false, any(!arg_1.a.b.zx), false), vec4<bool>(true, all(!vec4<bool>(true, false, arg_0.x, arg_1.a.a)), global1.b.x > 4294967295u, true || any(global3[_wgslsmith_index_u32(arg_1.b.x, 10u)])), arg_0.x), vec4<bool>(-global1.a.c <= arg_1.a.c, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1.b.x, 5u)])))) == _wgslsmith_f_op_f32(max(-447f, global2.a.d)), global1.a.b.x, (~arg_1.b.x & global1.b.x) != ~4294967295u));
    global3 = array<vec3<bool>, 10>();
    let var_1 = _wgslsmith_mod_vec3_u32(~firstLeadingBit(~vec3<u32>(arg_1.b.x, u_input.a, 76094u)), max(abs(firstLeadingBit(vec3<u32>(0u, 0u, u_input.a) >> (vec3<u32>(global1.b.x, 4294967295u, 17076u) % vec3<u32>(32u)))), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 22054u, 53827u), ~vec3<u32>(u_input.c, 64393u, u_input.b))));
    var var_2 = -594f;
    global3 = array<vec3<bool>, 10>();
    return !(!(!(!(!vec4<bool>(arg_1.a.b.x, arg_1.a.a, var_0.x, global1.a.b.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_3(arg_1.b, Struct_5(global1.a, vec2<u32>(global2.b.x, ~global2.b.x | 21163u)));
    var var_1 = any(select(vec2<bool>(true, true), var_0.xw, arg_1.a));
    var var_2 = global1.a;
    global1 = Struct_5(global1.a, global2.b);
    var_1 = var_0.x;
    return ~_wgslsmith_clamp_u32(min(u_input.c, _wgslsmith_mult_u32(4294967295u, abs(1u))), global1.b.x, _wgslsmith_mult_u32(min(abs(global1.b.x), _wgslsmith_sub_u32(global1.b.x, 18635u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.b.x, 1u, 118962u), vec3<u32>(31439u, u_input.b, 4294967295u), vec3<bool>(arg_1.a, var_0.x, false)), vec3<u32>(1u, 0u, 33017u) ^ vec3<u32>(25837u, u_input.c, 0u))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.d, -1004f, global0[_wgslsmith_index_u32(global1.b.x, 5u)]), vec3<f32>(1000f, global1.a.d, 1000f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_2(global2.a, Struct_1(global2.a.a, global1.a.b, global1.a.c, global2.a.d)), 5u)] + global0[_wgslsmith_index_u32(~global1.b.x, 5u)]), 148f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1149f, 1000f, global1.a.a)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(38309u, 5u)] - global2.a.d), -619f), _wgslsmith_f_op_f32(-global1.a.d), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4294967295u << (0u % 32u), 5u)], -1838f)))), global1.a.b));
    global0 = array<f32, 5>();
    let var_1 = _wgslsmith_clamp_u32(~102301u, 1u, 37992u ^ global1.b.x) ^ _wgslsmith_clamp_u32(_wgslsmith_div_u32(~min(0u, global1.b.x), global1.b.x), countOneBits(~global1.b.x), 8973u);
    var var_2 = _wgslsmith_div_u32(28164u, ~abs(1u));
    global0 = array<f32, 5>();
    return Struct_2(false, Struct_1(global1.a.b.x, vec3<bool>(global2.a.b.x, -338f >= global2.a.d, !global1.a.b.x), ~4852i, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~global1.b.x), 5u)])));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = Struct_1(true, !(!global1.a.b), arg_0, global1.a.d);
    global1 = Struct_5(var_0, abs(_wgslsmith_mod_vec2_u32(~global2.b, firstLeadingBit(vec2<u32>(global1.b.x, 35251u)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a.d))) * _wgslsmith_f_op_f32(-global1.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -743f), 256f, 633f);
    global0 = array<f32, 5>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_1)) - arg_1), !(!select(vec4<bool>(true, global2.a.a, true, true), vec4<bool>(arg_3.b.b.x, true, arg_2.x, true), arg_3.b.a)))), !((arg_2.x && arg_2.x) != any(vec3<bool>(arg_2.x, false, true))), vec3<i32>(2147483647i, -(~1i), -(~arg_3.b.c)) ^ (vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(var_0.c, -2147483647i, global2.a.c))), func_1().b, Struct_1(any(!arg_3.b.b.yx), var_0.b, -1i, -314f));
    return Struct_5(Struct_1(func_3(var_2.d.b, Struct_5(arg_3.b, vec2<u32>(1u, global1.b.x))).x, !func_3(!vec3<bool>(false, global2.a.b.x, true), Struct_5(Struct_1(arg_2.x, vec3<bool>(true, true, global1.a.a), global2.a.c, var_0.d), vec2<u32>(global1.b.x, u_input.b))).xyz, -func_1().b.c & firstTrailingBit(func_1().b.c), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(global2.b.x) | _wgslsmith_clamp_u32(33364u, global2.b.x, 4294967295u), 5u)])), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b.x, 42710u, global1.b.x, 0u), vec4<u32>(u_input.b, global2.b.x, global2.b.x, u_input.b), ~vec4<u32>(u_input.b, 1u, global1.b.x, u_input.c)), ~reverseBits(vec4<u32>(global1.b.x, global2.b.x, global2.b.x, global1.b.x))), global2.b.x));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.d, 1000f, global0[_wgslsmith_index_u32(arg_1.b.x, 5u)], _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-370f * global2.a.d), 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-103f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(356f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.d, -810f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(406f, global1.a.d)), -1160f)), -2670f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, 1598f, 2674f, -149f)))))));
    var var_1 = ~firstLeadingBit(arg_1.b.x) ^ 0u;
    var var_2 = abs(global2.a.c);
    let var_3 = u_input.d;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.d), -404f, _wgslsmith_f_op_f32(210f * _wgslsmith_div_f32(arg_1.a.d, global1.a.d)), 438f), vec4<f32>(_wgslsmith_f_op_f32(-func_4(2147483647i, vec4<f32>(-233f, arg_1.a.d, 333f, global1.a.d), vec3<bool>(global2.a.b.x, false, global2.a.b.x), Struct_2(true, Struct_1(true, vec3<bool>(global1.a.b.x, false, true), -1i, -529f))).a.d), arg_1.a.d, global0[_wgslsmith_index_u32(0u, 5u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.x))))))), true, select(-(~reverseBits(vec3<i32>(var_3, u_input.d, -1i))), vec3<i32>(abs(abs(-2147483647i)), ~1i, ~select(0i, global1.a.c, arg_1.a.a)), !(!global2.a.b)), global1.a, func_4(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~arg_3, 2147483647i), global1.a.c, ~(-2147483647i | global2.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global2.a.d, -540f, global2.a.d)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.d, global2.a.d, var_0.x, global0[_wgslsmith_index_u32(40796u, 5u)]))))), arg_1.a.b, func_1()).a);
    return ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(Struct_1(all(vec4<bool>(1u <= global2.b.x, true || global2.a.a, global1.a.b.x, false)), select(select(global2.a.b, global3[_wgslsmith_index_u32(global2.b.x, 10u)], true), global2.a.b, global1.a.a | (global2.a.a && global2.a.a)), global1.a.c, global1.a.d), vec2<u32>(func_5(19587u, func_4(global1.a.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1027f, global1.a.d, global2.a.d), vec4<f32>(-1770f, global2.a.d, global2.a.d, -132f), false)), select(vec3<bool>(global1.a.b.x, false, global2.a.a), global2.a.b, global2.a.b.x), func_1()), vec4<u32>(6069u, _wgslsmith_add_u32(u_input.b, global2.b.x), global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 0u, global1.b.x), vec3<u32>(24669u, u_input.c, 17712u))), -global1.a.c), 24153u));
    let var_0 = max(~(-(~(-vec3<i32>(u_input.d, global2.a.c, -12720i)))), ~(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, 0i) & vec3<i32>(global1.a.c, 20691i, u_input.d), -vec3<i32>(0i, 46826i, u_input.d))));
    global2 = Struct_5(Struct_1(true, vec3<bool>(!func_1().a, global2.a.a, true), ~(-firstTrailingBit(global1.a.c)), -823f), _wgslsmith_mult_vec2_u32(~(vec2<u32>(u_input.b, 7970u) >> (~vec2<u32>(59687u, 1u) % vec2<u32>(32u))), ~vec2<u32>(global2.b.x, 31533u)));
    global0 = array<f32, 5>();
    global0 = array<f32, 5>();
    var var_1 = _wgslsmith_mod_vec3_i32(var_0, -(~var_0));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(countOneBits(firstTrailingBit(u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(75966u, 5u)], -281f, global1.a.d, global2.a.d) + _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.d, global1.a.d, 1000f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<f32>(-1712f, global1.a.d, global2.a.d, 1571f)))), !(!func_1().b.b), func_1()).a.d, 0u, 1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global1.a.d, global1.a.d, global1.a.d))))) * vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2.b.x) & u_input.c, 5u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(26071u, 5u)] + -151f), _wgslsmith_f_op_f32(min(1243f, global1.a.d)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d, global0[_wgslsmith_index_u32(u_input.b, 5u)])), global1.a.d)), -2884f);
}

