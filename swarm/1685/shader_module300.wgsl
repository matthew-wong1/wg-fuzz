struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: Struct_2;

var<private> global2: vec4<bool>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-645f, global1.e, arg_0.d.x) + vec3<f32>(arg_0.d.x, arg_0.d.x, global1.e)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1296f, 648f, 232f), vec3<f32>(arg_0.d.x, 1808f, arg_0.d.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-773f, global1.d.x, arg_0.d.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.e, global1.e, 920f), vec3<f32>(2084f, -189f, 1244f)), vec3<f32>(993f, 693f, arg_0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.d.x, -1595f, 335f), vec3<f32>(arg_0.d.x, global1.d.x, -226f), vec3<bool>(true, global1.a.b, arg_0.a.b)))))));
    global0 = array<Struct_1, 8>();
    global2 = !(!select(vec4<bool>(true, arg_3.b, true, false), !vec4<bool>(arg_3.b, global1.b.b, arg_3.b, arg_0.a.b), false));
    var var_1 = -firstTrailingBit(arg_3.a.x);
    var var_2 = -(arg_1.a.x | u_input.c.x);
    return _wgslsmith_f_op_vec2_f32(-var_0.xy);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> i32 {
    global1 = Struct_2(Struct_1((_wgslsmith_mod_vec3_i32(u_input.c, global1.a.a) ^ -vec3<i32>(arg_2, 2147483647i, arg_1)) | vec3<i32>(u_input.c.x, abs(arg_1), abs(arg_2)), true), global1.a, countOneBits(_wgslsmith_mod_vec3_i32((global1.b.a & global1.c) ^ vec3<i32>(global1.b.a.x, 2147483647i, -1i), _wgslsmith_add_vec3_i32(-vec3<i32>(arg_1, 0i, arg_1), vec3<i32>(37960i, global1.a.a.x, global1.a.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec3<i32>(arg_1, 26395i, 34683i), false), global1.b, u_input.c, vec2<f32>(401f, 386f), 2217f), global0[_wgslsmith_index_u32(select(u_input.b.x, 1u, global1.b.b), 8u)], vec4<i32>(2147483647i, global1.b.a.x, arg_2, 9754i) | vec4<i32>(u_input.c.x, 0i, 2147483647i, 2782i), Struct_1(global1.a.a, global1.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1615f, -220f))) * _wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(arg_0.x, 1048f)))))), -1000f);
    global1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(reverseBits(firstLeadingBit(global1.b.a)), -global1.a.a & max(vec3<i32>(arg_2, -1i, 2147483647i), vec3<i32>(global1.b.a.x, arg_2, global1.b.a.x))), true), global0[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 8u)], u_input.c, _wgslsmith_f_op_vec2_f32(-global1.d), global1.d.x);
    global2 = select(select(select(!(!vec4<bool>(false, global1.a.b, global2.x, global1.a.b)), select(vec4<bool>(global2.x, true, true, global1.b.b), vec4<bool>(global1.b.b, true, global2.x, false), vec4<bool>(true, false, global2.x, true)), vec4<bool>(global1.b.b != false, global1.d.x == global1.d.x, -273f > global1.d.x, all(vec3<bool>(true, global2.x, global1.a.b)))), vec4<bool>(global2.x, all(select(vec4<bool>(global2.x, global2.x, global1.b.b, global2.x), vec4<bool>(false, false, global1.a.b, global1.a.b), vec4<bool>(false, global1.b.b, true, true))), true, !global1.b.b & false), true), vec4<bool>(global1.a.b, true && !global1.a.b, u_input.c.x != -u_input.c.x, 1u > ~select(u_input.b.x, u_input.b.x, false)), global2.x);
    global1 = Struct_2(global0[_wgslsmith_index_u32(~u_input.b.x >> (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 1u, 84222u))) % 32u), 8u)], Struct_1(u_input.c, true), ~_wgslsmith_sub_vec3_i32(~u_input.c, vec3<i32>(52724i, -5631i, 35736i)) ^ _wgslsmith_sub_vec3_i32(u_input.c, select(firstLeadingBit(vec3<i32>(global1.b.a.x, arg_2, global1.c.x)), u_input.c, all(vec4<bool>(false, global1.b.b, true, global1.b.b)))), global1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -981f))));
    var var_0 = -global1.a.a.x;
    return -16161i;
}

fn func_4(arg_0: i32) -> vec4<f32> {
    global2 = select(!select(select(!vec4<bool>(global1.a.b, true, global1.b.b, false), select(vec4<bool>(true, global2.x, global1.b.b, global1.a.b), vec4<bool>(global2.x, true, global1.b.b, false), vec4<bool>(global1.b.b, global2.x, true, true)), vec4<bool>(true, true, global2.x, global2.x)), vec4<bool>(u_input.b.x >= u_input.b.x, false, all(vec2<bool>(false, false)), any(global2.www)), true), vec4<bool>(all(!select(vec4<bool>(true, global2.x, true, true), vec4<bool>(true, global2.x, global1.b.b, global1.b.b), vec4<bool>(false, global1.a.b, true, global2.x))), true, false, true), (_wgslsmith_mult_i32(~u_input.c.x, global1.a.a.x) ^ -(~u_input.c.x)) != _wgslsmith_dot_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 1i, -2147483647i, 0i), vec4<i32>(0i, u_input.d, u_input.d, 19593i)), -vec4<i32>(u_input.d, 1i, global1.c.x, -11769i)), ~(vec4<i32>(global1.a.a.x, 34197i, 48356i, 687i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
    global1 = Struct_2(Struct_1(countOneBits(vec3<i32>(global1.c.x & -10744i, 1i, 1i)), false & global1.b.b), global1.a, global1.c ^ vec3<i32>(1i, -2147483647i, min(1i, ~u_input.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(ceil(global1.e))) - vec2<f32>(_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(trunc(346f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1831f * -1220f), -870f)))), -1398f);
    let var_0 = _wgslsmith_clamp_vec4_i32(-(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, u_input.c.x), vec4<i32>(-20566i, 34300i, arg_0, -1i)))), select(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global1.a.a, vec3<i32>(u_input.d, global1.c.x, 6303i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, global1.b.a.x, arg_0), vec3<i32>(-43681i, 0i, arg_0))), global1.c.x, _wgslsmith_dot_vec2_i32(abs(global1.b.a.xy), select(vec2<i32>(u_input.a, 2147483647i), u_input.c.xy, vec2<bool>(global1.a.b, global1.b.b))), global1.a.a.x), vec4<i32>(u_input.c.x, -6476i >> (~4294967295u % 32u), -global1.b.a.x, 1086i), select(vec4<bool>(true, global1.a.b, !global2.x, true), select(select(vec4<bool>(global2.x, true, true, false), vec4<bool>(global1.b.b, global1.a.b, true, true), global1.b.b), !vec4<bool>(false, global2.x, false, false), any(vec2<bool>(false, global2.x))), !vec4<bool>(global2.x, global2.x, true, true))), vec4<i32>(abs(reverseBits(-1i)), firstTrailingBit(abs(-8806i)), arg_0, _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(arg_0, u_input.c.x))) & (~abs(vec4<i32>(66304i, 9685i, global1.a.a.x, arg_0)) << (~(~u_input.b) % vec4<u32>(32u))));
    var var_1 = 74479i;
    let var_2 = Struct_1(select(vec3<i32>(-global1.b.a.x, -13747i, -21249i), vec3<i32>(_wgslsmith_clamp_i32(u_input.d, -2147483647i, u_input.c.x), -2147483647i, -1i), global2.x), true);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1.e)))), 353f, global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-380f - global1.d.x) + -1283f))), _wgslsmith_div_vec4_f32(vec4<f32>(-550f, 2217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-739f))), global1.e), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1.d.x + global1.d.x), -286f, _wgslsmith_f_op_f32(-global1.e), 1146f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.e, global1.e, global1.e, -1706f))), vec4<f32>(3084f, global1.e, -383f, global1.d.x)), select(select(vec4<bool>(var_2.b, global1.b.b, global2.x, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, global2.x, true)), vec4<bool>(true, true, true, true), !vec4<bool>(global1.b.b, true, global1.b.b, global2.x)))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.d.x, global1.e))), arg_0.a.x >> (17143u % 32u), global1.b.a.x) << ((37939u << (select(4294967295u, u_input.b.x, true) % 32u)) % 32u))));
    global1 = Struct_2(arg_0, Struct_1(vec3<i32>(-_wgslsmith_mod_i32(-1i, arg_0.a.x), countOneBits(~12585i), ~(arg_0.a.x << (49838u % 32u))), arg_0.b), u_input.c, vec2<f32>(global1.e, _wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(u_input.c, global2.x), arg_0, u_input.c, _wgslsmith_f_op_vec2_f32(round(global1.d)), -277f), global0[_wgslsmith_index_u32(~(~1u), 8u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.a.x, arg_0.a.x, u_input.c.x, arg_0.a.x), vec4<i32>(-2147483647i, 1i, arg_0.a.x, -42486i), vec4<i32>(u_input.c.x, 2147483647i, arg_0.a.x, u_input.a)) & vec4<i32>(2147483647i, u_input.a, 128068i, arg_0.a.x), Struct_1(-global1.b.a, global1.a.b))).x), 1684f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e * -612f) - -1399f), _wgslsmith_f_op_f32(-741f - _wgslsmith_f_op_f32(max(global1.e, -1148f))))) * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-686f, 1000f, all(global2.ww)))) * _wgslsmith_f_op_f32(-1141f * global1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(Struct_1(u_input.c, any(vec4<bool>(global2.x, select(true, true, false), true, select(global2.x, true, global1.a.b)))), global1.b, -((-global1.c | -vec3<i32>(2147483647i, 2147483647i, -6363i)) | abs(vec3<i32>(global1.a.a.x, global1.a.a.x, global1.c.x) & u_input.c)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -368f))), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-1i, -4792i, -2147483647i), true)))), global1.d)), global1.e);
    var var_0 = vec4<i32>(global1.b.a.x, global1.a.a.x, _wgslsmith_mult_i32(-24873i, u_input.a), u_input.a);
    global2 = select(!select(vec4<bool>(!global2.x, global1.a.b, false, select(true, true, false)), !select(vec4<bool>(false, global1.a.b, false, false), vec4<bool>(false, true, global2.x, global2.x), true), vec4<bool>(false, 1u >= u_input.b.x, global1.b.b, true)), !(!select(!vec4<bool>(false, global1.a.b, global1.a.b, false), !vec4<bool>(false, global2.x, global2.x, true), select(vec4<bool>(global2.x, true, true, true), vec4<bool>(false, global2.x, false, true), global2.x))), !select(!(!vec4<bool>(global1.a.b, global2.x, true, false)), vec4<bool>(false, true, !global2.x, select(global1.b.b, global2.x, global1.b.b)), false));
    let var_1 = global2.x;
    let var_2 = global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.b.x | 75367u, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(var_0.x), 1i), global1.c.x), global1.b.a.yy), global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1444f, global1.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x))));
}

