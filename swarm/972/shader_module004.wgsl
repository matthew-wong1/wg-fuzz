struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = vec4<i32>(2147483647i, ~(-_wgslsmith_sub_i32(arg_0.c.x, countOneBits(0i))), arg_0.c.x, firstTrailingBit(arg_0.c.x));
    let var_1 = any(!(!select(select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.x), false), select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(false, true, false), vec3<bool>(false, arg_2, arg_2)), vec3<bool>(false, arg_2, arg_1.x))));
    let var_2 = arg_1;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], -1252f, arg_0.e.x)))))), arg_0.e.yx);
    global0 = array<f32, 17>();
    return vec2<bool>(all(arg_1), false);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = max(abs(_wgslsmith_clamp_i32(1850i, ~(-45329i), _wgslsmith_mod_i32(0i, 18945i) >> (_wgslsmith_mod_u32(u_input.c, u_input.a) % 32u))), 24516i);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 17u)] - 231f), -913f))))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<i32> {
    global0 = array<f32, 17>();
    global0 = array<f32, 17>();
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_f_op_f32(-296f * 340f))))), arg_1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(43575u, 21088u, 4294967295u))), 17u)], global0[_wgslsmith_index_u32(~25157u, 17u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.a.yw, vec2<f32>(1799f, -1001f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], -932f) + vec2<f32>(arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(arg_1.b - arg_1.b))))) - _wgslsmith_f_op_vec2_f32(func_4(true, false, func_3(Struct_1(vec2<bool>(true, false), vec3<f32>(994f, 287f, -1817f), vec2<i32>(77904i, 2147483647i), vec4<u32>(44338u, 21495u, u_input.b.x, u_input.c), arg_1.a.ywz), vec2<bool>(true, true), 1i >= arg_0)))));
    var var_1 = countOneBits(vec2<i32>(arg_0, -arg_0) & vec2<i32>(-7822i, firstLeadingBit(_wgslsmith_sub_i32(arg_0, arg_0))));
    let var_2 = var_1.x;
    return reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 1i) & -vec2<i32>(-2220i, var_1.x), ~abs(vec2<i32>(var_1.x, var_1.x)))) ^ vec2<i32>(43013i, -abs(-arg_0));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    let var_0 = countOneBits(-26101i);
    let var_1 = 290f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(693f, 1236f), vec2<f32>(-1619f, var_1))) - vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 17u)], -1030f))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1823f))))));
    let var_3 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(647f * 1110f), -786f))), _wgslsmith_div_vec2_i32(-(~(-vec2<i32>(var_0, 1i))), select(func_2(var_0, Struct_2(vec4<f32>(340f, 999f, arg_0, var_1), vec2<f32>(-643f, var_1))), vec2<i32>(40760i, var_0), select(vec2<bool>(true, false), vec2<bool>(false, false), true)) << (~min(arg_2.yw, arg_2.yx) % vec2<u32>(32u))), vec4<u32>(1u, ~firstLeadingBit(1u), _wgslsmith_mult_u32(~u_input.b.x, arg_1), ~_wgslsmith_sub_u32(4294967295u, u_input.c)) >> (arg_2 % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(true, true, vec2<bool>(true, false))).x)), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-411f, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(f32(-1f) * -1106f)))), var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-211f)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_2.x, 17u)])))))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -158f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(43095u, 17u)], -1340f, global0[_wgslsmith_index_u32(149486u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<f32>(1257f, global0[_wgslsmith_index_u32(u_input.c, 17u)], -1247f, -334f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(2235u, 17u)], global0[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], -1000f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]))), vec4<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(54387u, 17u)], u_input.a, vec4<u32>(u_input.c, 115500u, u_input.a, 55165u))), -900f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 17u)] + global0[_wgslsmith_index_u32(u_input.c, 17u)]), 1071f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(6094u, 1u), 17u)], _wgslsmith_f_op_f32(abs(-565f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(52885u, u_input.a), 17u)]) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(324f, global0[_wgslsmith_index_u32(u_input.b.x, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1632f)) * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 17u)]))), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c & 77937u), 17u)], -548f, global0[_wgslsmith_index_u32(max(u_input.c, u_input.a) ^ _wgslsmith_mod_u32(u_input.c, 14802u), 17u)]))));
    let var_1 = -vec2<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(2510i, 17856i) << (u_input.b.xz % vec2<u32>(32u)), vec2<i32>(4629i, -1i)), -(~(~0i)));
    let var_2 = firstTrailingBit(_wgslsmith_mod_i32(35605i, firstLeadingBit(var_1.x)));
    let var_3 = 24724u;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, 772f));
    var var_5 = Struct_1(!select(vec2<bool>(false, all(vec3<bool>(false, false, false))), vec2<bool>(true, var_0.x > 368f), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.ywz))), var_1, ~(~(~(vec4<u32>(var_3, 1u, 21900u, 0u) >> (vec4<u32>(var_3, 1698u, u_input.b.x, var_3) % vec4<u32>(32u))))), var_0.zyz);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(min(9136u, var_3), 17u)]);
}

