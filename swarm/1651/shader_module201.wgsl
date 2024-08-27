struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_3,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

var<private> global1: array<vec2<f32>, 6>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1957f))), -1479f));
    var var_1 = 1f;
    global0 = array<vec2<f32>, 32>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(151f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1010f)))), _wgslsmith_f_op_f32(230f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2039f + 890f), _wgslsmith_f_op_f32(f32(-1f) * -610f))))));
    global1 = array<vec2<f32>, 6>();
    return -1128f;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-186f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_1)))))) + 705f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = -1140f;
    let var_1 = 1106u;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1043f);
    let var_3 = 44644u;
    var var_4 = select(vec2<i32>(max(select(~(-1i), _wgslsmith_div_i32(arg_0, 23203i), arg_2.x <= 1208f), arg_0), 1i), vec2<i32>(_wgslsmith_sub_i32(0i, arg_0) & firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -1i))), -54656i), false);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1091f, arg_2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.x)))), -1029f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_2 * arg_2))) - _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_div_vec4_f32(arg_2, arg_2))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - arg_2) - arg_2));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_4(~((vec3<u32>(38384u, u_input.a, 13380u) & vec3<u32>(10166u, u_input.a, 42197u)) >> (vec3<u32>(u_input.a, 6630u, u_input.a) % vec3<u32>(32u))) & (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 33866u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 54601u), vec3<u32>(u_input.a, u_input.a, 1u))) | reverseBits(vec3<u32>(u_input.a, u_input.a, 19757u))), ~4294967295u, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_2 + arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(911f)))), ~(~_wgslsmith_mult_u32(u_input.a, u_input.a)), vec4<u32>(u_input.a << (u_input.a % 32u), u_input.a, 4294967295u, 12440u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1103f + _wgslsmith_f_op_f32(ceil(arg_0.x))), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_2)))), ~1u ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 1u), _wgslsmith_add_u32(u_input.a, abs(13603u))));
    global1 = array<vec2<f32>, 6>();
    global0 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_u32(select(_wgslsmith_div_u32(1u, ~0u), _wgslsmith_mod_u32(var_0.e, var_0.c.b) << (_wgslsmith_mod_u32(77936u, 38814u) % 32u), any(!vec3<bool>(true, arg_1, arg_1))), 0u), vec4<u32>(~4294967295u, u_input.a, var_0.c.b, 3215u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = abs(u_input.a);
    global0 = array<vec2<f32>, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(trunc(arg_1.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(527f + _wgslsmith_f_op_f32(floor(1683f))), _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(arg_1.a.x + 841f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-148f + -138f))))));
    var var_2 = select(vec3<bool>(false, true, !all(vec3<bool>(arg_0.x, arg_0.x, true)) && any(arg_0)), !(!arg_0), vec3<bool>(true, arg_0.x, any(arg_0.yx)));
    var var_3 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, arg_1.a.x, arg_1.a.x, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1794f, 1614f, arg_1.a.x, arg_1.a.x) * vec4<f32>(119f, 146f, 210f, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(func_4(firstLeadingBit(1i), select(select(vec2<bool>(arg_0.x, var_2.x), vec2<bool>(var_2.x, false), true), vec2<bool>(false, arg_0.x), !var_2.zx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(var_2.yx, -755f, vec4<f32>(373f, arg_1.a.x, -1049f, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, arg_1.a.x, var_1.a.x, 179f) + vec4<f32>(var_1.a.x, arg_1.a.x, arg_1.a.x, -517f)), select(vec4<bool>(var_2.x, arg_0.x, true, arg_0.x), vec4<bool>(false, var_2.x, var_2.x, arg_0.x), vec4<bool>(true, arg_0.x, true, false)))), arg_1))), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1607f)), 1049f)), -184f, true)));
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_3(arg_1.a.x, u_input.a, vec4<u32>(~u_input.a, ~u_input.a, countOneBits(_wgslsmith_div_u32(~75342u, u_input.a)), 40028u));
    var var_1 = 30958u;
    var var_2 = vec4<bool>(any(select(vec3<bool>(all(vec3<bool>(false, true, false)), true, true), vec3<bool>(true, false, 548f == var_0.a), var_0.b > ~37053u)), true, !select(false, any(vec4<bool>(true, true, true, true)), false), any(!vec3<bool>(false, true, arg_2.x <= 2147483647i)));
    global1 = array<vec2<f32>, 6>();
    global0 = array<vec2<f32>, 32>();
    return select(!select(vec4<bool>(all(vec2<bool>(var_2.x, true)), var_2.x, !var_2.x, any(vec4<bool>(var_2.x, var_2.x, var_2.x, true))), vec4<bool>(var_0.b < var_0.c.x, false, false & var_2.x, var_2.x), vec4<bool>(true, true, !var_2.x, var_2.x)), !vec4<bool>(true, all(var_2.zz), ~11700u >= func_5(vec4<f32>(-800f, arg_1.a.x, -609f, -1000f), var_2.x, 922f).c.x, !var_2.x), !(!select(!vec4<bool>(var_2.x, false, false, var_2.x), select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, true, false, var_2.x)), !vec4<bool>(true, var_2.x, var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(4294967295u, countOneBits(u_input.a), ~(_wgslsmith_mult_u32(6967u, firstLeadingBit(4294967295u)) << (1u % 32u)), u_input.a);
    global0 = array<vec2<f32>, 32>();
    let var_1 = func_6(func_1(select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(1218f, -1700f)), _wgslsmith_f_op_f32(-862f * 491f), _wgslsmith_f_op_f32(1742f - 1000f)))), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1229f, -1445f, 773f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-106f, 1234f, -843f), vec3<f32>(-1935f, 1703f, -360f)))))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-22423i), 39000i, _wgslsmith_dot_vec3_i32(vec3<i32>(-19634i, -65726i, 49948i), vec3<i32>(2147483647i, -10300i, 1i))), vec3<i32>(-22855i, _wgslsmith_clamp_i32(-6070i, -7944i, -1i), min(42601i, -1i))), 0i, _wgslsmith_div_i32(firstLeadingBit(1i), 2147483647i), -_wgslsmith_sub_i32(-18058i, 1i >> (var_0.x % 32u))));
    global0 = array<vec2<f32>, 32>();
    var var_2 = abs(_wgslsmith_div_vec3_u32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(0i, var_1.wz, vec4<f32>(1402f, 296f, -566f, -653f), Struct_2(vec3<f32>(486f, -495f, 581f))))), false, _wgslsmith_f_op_f32(f32(-1f) * -1637f)).c.xyy, abs(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, 990f, -444f, -434f)), select(var_1.x, var_1.x, true), _wgslsmith_f_op_f32(ceil(874f))).c.wyz)));
    global1 = array<vec2<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~(~firstLeadingBit(var_0.x)), 6u)] + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(select(-781f, _wgslsmith_f_op_f32(f32(-1f) * -324f), true)))), vec2<i32>(2147483647i, 1i));
}

