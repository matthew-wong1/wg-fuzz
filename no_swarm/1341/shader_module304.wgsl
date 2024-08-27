struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true));

var<private> global2: vec3<u32> = vec3<u32>(32679u, 0u, 0u);

var<private> global3: array<bool, 17> = array<bool, 17>(false, false, true, true, false, true, true, false, true, false, false, true, false, true, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = !((select(_wgslsmith_mod_u32(global2.x, u_input.a), ~4294967295u, true) | u_input.a) < abs(47380u));
    let var_1 = select(!select(select(!vec2<bool>(var_0, false), !vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 17u)], true), !vec2<bool>(false, var_0)), select(!vec2<bool>(var_0, false), vec2<bool>(var_0, true), !global3[_wgslsmith_index_u32(global2.x, 17u)]), !select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), var_0)), vec2<bool>(true != (!global3[_wgslsmith_index_u32(global0.a.x, 17u)] & true), false), global3[_wgslsmith_index_u32(0u, 17u)]);
    var var_2 = Struct_4(var_1);
    let var_3 = all(vec3<bool>(any(vec3<bool>(true, false, true)), var_2.a.x, true));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-581f, 1000f, -721f, -376f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, 1496f, -1534f, -339f) - vec4<f32>(-203f, -966f, 903f, 582f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, 437f, -1000f, -1000f))))))), Struct_1(select(vec3<bool>(false, true, var_2.a.x), vec3<bool>(true, true, false), !var_0), -vec4<i32>(firstTrailingBit(-25162i), abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), vec3<i32>(18291i, 2147483647i, 14370i)), ~2147483647i), -1201f, _wgslsmith_add_vec2_u32(~global0.a.zz, ~(global2.zz ^ vec2<u32>(global0.a.x, global2.x))), reverseBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global2.x, global0.a.x), ~u_input.a))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-353f - -1000f), 598f, -1000f), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(2232f)), _wgslsmith_f_op_f32(-511f * 821f), any(var_2.a))), _wgslsmith_div_f32(-1759f, -850f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(!select(vec3<bool>(var_0, false, true), select(vec3<bool>(true, var_2.a.x, true), vec3<bool>(false, var_2.a.x, true), var_1.x), select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 17u)], false, global3[_wgslsmith_index_u32(20005u, 17u)]), vec3<bool>(var_3, var_3, false), vec3<bool>(false, var_2.a.x, global3[_wgslsmith_index_u32(23488u, 17u)]))), -min(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -4541i), vec4<i32>(0i, 1i, 1i, 1i)) << (firstLeadingBit(global0.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1673f)))))), countOneBits(countOneBits(_wgslsmith_sub_vec2_u32(global0.a.zz, vec2<u32>(65003u, 4294967295u)))), _wgslsmith_div_u32(1u, ~(~global0.a.x))), Struct_1(!select(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], var_3, false), vec3<bool>(false, false, true), vec3<bool>(var_1.x, false, true)), select(vec3<bool>(var_3, var_0, false), vec3<bool>(false, var_1.x, false), vec3<bool>(false, var_2.a.x, true)), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(54577u, 17u)]), vec3<bool>(false, var_0, true), var_2.a.x)), vec4<i32>(0i, 1i, ~2147483647i, ~(i32(-1i) * -53911i)), -2163f, _wgslsmith_clamp_vec2_u32(global0.a.ww, ~(vec2<u32>(u_input.a, global2.x) & global0.a.zw), global2.zy), reverseBits(min(23433u, 30900u))));
    return var_0;
}

fn func_2() -> Struct_1 {
    global3 = array<bool, 17>();
    global1 = array<vec4<bool>, 17>();
    let var_0 = global2.x;
    let var_1 = ~global0.a;
    global1 = array<vec4<bool>, 17>();
    return Struct_1(vec3<bool>(!func_3(), !all(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], false, global3[_wgslsmith_index_u32(104633u, 17u)]), vec3<bool>(global3[_wgslsmith_index_u32(44380u, 17u)], global3[_wgslsmith_index_u32(51221u, 17u)], global3[_wgslsmith_index_u32(global0.a.x, 17u)]), vec3<bool>(global3[_wgslsmith_index_u32(68581u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], true))), _wgslsmith_mult_u32(~var_1.x, ~global0.a.x) == ~0u), reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(-1f), vec2<u32>(34510u, ~(~_wgslsmith_clamp_u32(98445u, var_1.x, global0.a.x))), global0.a.x);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, global2.x) | ~20549u, _wgslsmith_sub_u32(global2.x, arg_2), global0.a.x, max(countOneBits(global0.a.x ^ 4294967295u), 1u)), global0.a);
    let var_1 = func_2();
    global1 = array<vec4<bool>, 17>();
    global3 = array<bool, 17>();
    global3 = array<bool, 17>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1014f, arg_1.x, 424f, 1393f), arg_1), _wgslsmith_f_op_vec4_f32(-arg_1)), vec4<f32>(var_1.c, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(295f * arg_1.x), -1604f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: i32) -> vec2<f32> {
    global0 = Struct_5(select(countOneBits(~global0.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, global0.a.x, 30469u), vec4<u32>(global2.x, 1577u, 4294967295u, 1u), vec4<bool>(false, false, true, false)), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u)), min(vec4<u32>(global2.x, global0.a.x, 58127u, global0.a.x), ~global0.a)), vec4<bool>(!global3[_wgslsmith_index_u32(global0.a.x, 17u)], global3[_wgslsmith_index_u32(1u, 17u)], false, !all(vec2<bool>(false, global3[_wgslsmith_index_u32(38116u, 17u)])))));
    global1 = array<vec4<bool>, 17>();
    global2 = global0.a.wxz;
    return _wgslsmith_f_op_vec4_f32(func_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(360f + _wgslsmith_f_op_f32(arg_0.x + -1013f)), arg_1.x, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)) + arg_1), _wgslsmith_mult_u32(abs(_wgslsmith_add_u32(abs(u_input.a), global2.x)), ~(~(0u & global2.x))))).wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(627f))), 516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1057f, 370f), -645f, _wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global3[_wgslsmith_index_u32(global2.x, 17u)], vec4<f32>(777f, 321f, 258f, -1294f), 15548u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, 300f, 406f, 271f) + vec4<f32>(257f, 1699f, -1000f, -723f)))), _wgslsmith_mod_i32(select(min(35870i, -45513i), select(-57097i, -1i, global3[_wgslsmith_index_u32(global2.x, 17u)]), select(global3[_wgslsmith_index_u32(u_input.a, 17u)], false, global3[_wgslsmith_index_u32(4294967295u, 17u)])), 3408i))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -365f), _wgslsmith_f_op_f32(trunc(-244f)))))));
    var var_1 = Struct_2(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -665f));
    global3 = array<bool, 17>();
    var var_2 = Struct_3(vec4<f32>(var_0.x, _wgslsmith_f_op_vec4_f32(func_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 338f, -1000f, var_1.b)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(174f, 353f, 230f, -595f)))), ~_wgslsmith_dot_vec3_u32(global0.a.zxx, vec3<u32>(35288u, var_1.a.d.x, global0.a.x)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(var_1.a.a.x, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2013f, -1813f, 103f, 305f), vec4<f32>(var_0.x, 2033f, -317f, var_0.x))), func_2().d.x)).x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - 770f) - _wgslsmith_f_op_f32(ceil(663f))), _wgslsmith_f_op_f32(f32(-1f) * -1130f), 43918i >= _wgslsmith_sub_i32(var_1.a.b.x, -2147483647i)))), func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-107f, var_0.x, _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(sign(var_1.a.c)), global3[_wgslsmith_index_u32(4294967295u >> (global2.x % 32u), 17u)]))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_1.b, -249f))) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-482f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x))), func_2(), var_1.a);
    global2 = ~(vec3<u32>(_wgslsmith_dot_vec4_u32(global0.a, global0.a), func_2().e, var_2.b.d.x ^ var_1.a.d.x) << (global0.a.xyy % vec3<u32>(32u))) | vec3<u32>(~func_2().d.x, 87714u, (~0u >> (~u_input.a % 32u)) >> (var_2.b.d.x % 32u));
    var var_3 = func_2();
    global0 = Struct_5(~min(~vec4<u32>(47657u, 0u, 61057u, global0.a.x), vec4<u32>(4294967295u, 1u, global2.x << (1u % 32u), 1u)));
    global0 = Struct_5(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 45167u, 47142u, var_1.a.e), global0.a) >> (global0.a % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b, global0.a.x);
}

