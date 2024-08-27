struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -931f;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<bool, 2> = array<bool, 2>(true, false);

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<u32>) -> i32 {
    global4 = -1i;
    var var_0 = all(vec2<bool>(true, !global3[_wgslsmith_index_u32(_wgslsmith_add_u32(select(1u, arg_2.x, true), 19258u), 2u)]));
    let var_1 = ~_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), ~(-vec4<i32>(2147483647i, 0i, -54478i, -8658i))), firstLeadingBit(-2147483647i));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-965f * global1.x))))), ~(countOneBits(vec4<u32>(4294967295u, u_input.a.x, arg_3.x, arg_3.x)) | ~select(vec4<u32>(33466u, 30050u, arg_2.x, arg_2.x), arg_2, vec4<bool>(false, arg_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.a.x))), Struct_1(arg_0.a), arg_0, select(vec4<bool>(_wgslsmith_clamp_i32(0i, var_1, var_1) < -var_1, !global3[_wgslsmith_index_u32(arg_3.x, 2u)], !(!global3[_wgslsmith_index_u32(41138u, 2u)]), !all(vec3<bool>(arg_0.a.x, global3[_wgslsmith_index_u32(94026u, 2u)], arg_0.a.x))), vec4<bool>(true, (global3[_wgslsmith_index_u32(u_input.a.x, 2u)] & true) || (false || arg_0.a.x), false, true), select(select(vec4<bool>(true, false, false, arg_0.a.x), vec4<bool>(true, false, arg_0.a.x, false), false), !vec4<bool>(arg_0.a.x, false, false, false), arg_0.a.x)));
    let var_3 = -1i;
    return 0i;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = 1i;
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f - -311f)), _wgslsmith_f_op_f32(ceil(-1107f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 147f)))), global1.x), ~vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.a.x)), u_input.b.x, ~1u, ~(~u_input.a.x)), Struct_1(vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], true)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), ~u_input.b), 2u)])), Struct_1(vec2<bool>(false, all(select(vec3<bool>(global3[_wgslsmith_index_u32(84050u, 2u)], false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], false, true))))), vec4<bool>(global3[_wgslsmith_index_u32(0u >> (arg_0 % 32u), 2u)] & false, true, global3[_wgslsmith_index_u32(arg_0, 2u)], any(!select(vec4<bool>(true, false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(34793u, 2u)], global3[_wgslsmith_index_u32(36924u, 2u)], false, false), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.xxy)) * var_1.a.zwy) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.zzy - var_1.a.wzy)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.xxz * var_1.a.yzw));
    var var_4 = -(~_wgslsmith_add_vec3_i32(firstLeadingBit(-vec3<i32>(1i, 0i, -12409i)), vec3<i32>(func_3(var_1.d, arg_0, vec4<u32>(27508u, 58047u, u_input.a.x, 0u), vec3<u32>(0u, 27788u, 42360u)), _wgslsmith_dot_vec3_i32(vec3<i32>(44976i, -46916i, -41996i), vec3<i32>(17296i, -13256i, 1i)), 1i)));
    return Struct_4((arg_0 < arg_0) || any(vec2<bool>(all(vec4<bool>(var_1.d.a.x, true, var_1.d.a.x, true)), select(var_1.c.a.x, var_1.c.a.x, true))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = func_2(max(~(~24292u), 1u));
    var var_1 = Struct_3(Struct_1(select(select(select(arg_2.zw, arg_2.xy, arg_2.x), vec2<bool>(true, false), vec2<bool>(arg_2.x, global3[_wgslsmith_index_u32(68478u, 2u)])), select(arg_2.zz, arg_2.yw, global3[_wgslsmith_index_u32(29816u, 2u)] && true), true)), -1392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(817f * global1.x) * 293f)), ~select(~vec2<u32>(arg_0, u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.b.yy, abs(vec2<u32>(arg_0, 26987u))), !any(vec2<bool>(var_0.a, false))), _wgslsmith_clamp_vec4_i32(vec4<i32>(~7781i, _wgslsmith_sub_i32(22311i, i32(-1i) * -2147483647i), ~abs(31293i), -_wgslsmith_mod_i32(102398i, -15872i)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-7025i, 4544i, 100347i, 12901i), reverseBits(vec4<i32>(6714i, 0i, 2147483647i, -9745i))) << ((vec4<u32>(70549u, 1u, arg_0, 19633u) | ~vec4<u32>(u_input.b.x, 26677u, arg_0, u_input.b.x)) % vec4<u32>(32u)), max((vec4<i32>(3359i, 2147483647i, -2147483647i, -1i) >> (vec4<u32>(arg_0, arg_0, u_input.a.x, arg_0) % vec4<u32>(32u))) ^ (vec4<i32>(2147483647i, 13822i, -2147483647i, 1i) >> (vec4<u32>(19966u, 52266u, arg_0, arg_0) % vec4<u32>(32u))), vec4<i32>(~57700i, 1i, 1i, 1i))));
    global4 = 1i;
    var_0 = Struct_4(!((var_1.e.x & var_1.e.x) <= _wgslsmith_add_i32(-6995i, 0i)) == !(!var_1.a.a.x & all(arg_2.yx)));
    var var_2 = !arg_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), 148f, !(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) <= _wgslsmith_div_f32(arg_1.x, arg_3)))) + _wgslsmith_f_op_f32(-var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 2>();
    global4 = ~_wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(62361i, 2147483647i, 1i, 0i), abs(vec4<i32>(55266i, 27411i, 14013i, -22490i))), ~(~firstLeadingBit(vec4<i32>(1i, 1i, 0i, 59050i))));
    var var_0 = 1u >> (u_input.b.x % 32u);
    global0 = global1.x;
    let var_1 = vec3<bool>(global3[_wgslsmith_index_u32(~(~(~3859u) & ~_wgslsmith_mult_u32(u_input.a.x, u_input.b.x)), 2u)], _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(1i, 13808i, 1i, 1i))), vec4<i32>(_wgslsmith_sub_i32(-4283i, -1i), -2147483647i, firstLeadingBit(28087i), 35826i)) > 41276i, global3[_wgslsmith_index_u32(0u, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f * global1.x) - _wgslsmith_div_f32(global1.x, global1.x))))), _wgslsmith_f_op_f32(func_1(4294967295u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, 1970f), vec2<f32>(-1000f, -225f))))), !(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], false), vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -1473f), vec2<f32>(global1.x, -1646f), var_1.x))))), vec2<f32>(global1.x, global1.x)), u_input.a.x, firstTrailingBit(-_wgslsmith_mod_i32(7915i, 38302i)) & abs(2147483647i));
}

