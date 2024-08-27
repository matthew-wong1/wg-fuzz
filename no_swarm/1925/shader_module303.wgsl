struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_3,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(11726u, 3879u, 5621u, 0u, 16238u, 14518u, 4294967295u, 1u, 45937u, 26868u, 54166u, 4294967295u, 1u, 60415u, 4294967295u, 0u, 33760u, 25292u, 19520u, 4294967295u, 4294967295u, 1u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    global0 = array<u32, 22>();
    let var_1 = arg_0.a;
    global0 = array<u32, 22>();
    return vec4<f32>(var_0, -1278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(sign(var_0)))) * 557f)), _wgslsmith_div_f32(var_0, -969f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(929f, 1432f, -1201f, -650f) * vec4<f32>(1795f, -139f, 1204f, 1505f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, 327f, 787f, 1027f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, 167f, 1000f, -1158f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(4294967295u == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1369f, 1325f), vec2<f32>(-1601f, 1339f))), -187f), u_input.b.x))));
    global0 = array<u32, 22>();
    var var_1 = u_input.a;
    var var_2 = true;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f * _wgslsmith_f_op_f32(var_0.x + var_0.x))))), 0u, _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.a & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -12708i, 36423i), vec4<i32>(-19076i, 0i, 54634i, -19154i)), -(~(-18364i))), _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(33494i, -14922i))), vec2<i32>(i32(-1i) * -1i, -1i))), vec3<u32>(65818u, 36881u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(70564u, 19252u, global0[_wgslsmith_index_u32(4294967295u, 22u)], 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(82784u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.b.x))), any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    return Struct_2(!(!(!var_3.e)), select(vec2<bool>(true, all(select(vec2<bool>(var_3.e, var_3.e), vec2<bool>(var_3.e, true), var_3.e))), !select(!vec2<bool>(var_3.e, true), select(vec2<bool>(var_3.e, true), vec2<bool>(var_3.e, var_3.e), var_3.e), select(vec2<bool>(var_3.e, false), vec2<bool>(true, var_3.e), vec2<bool>(true, false))), var_3.c.x < _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_3.c.x, 10928i, 2147483647i, 2147483647i)), -vec4<i32>(u_input.a, var_3.c.x, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(any(vec3<bool>(true, var_3.e, var_3.e)), !select(vec2<bool>(var_3.e, var_3.e), vec2<bool>(var_3.e, true), false), vec2<f32>(1f, -951f), _wgslsmith_f_op_f32(f32(-1f) * -715f)), ~1u)).yz, _wgslsmith_f_op_f32(-678f + 364f));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1.c.x)), arg_1.d, any(vec4<bool>(arg_1.b.x, true, arg_0.e.e, true)))) + arg_1.d), vec3<i32>(~(~(-1i)), arg_0.e.c.x, u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.d, -190f)) - _wgslsmith_f_op_f32(f32(-1f) * -232f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c * vec2<f32>(-1037f, arg_0.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, -665f), vec2<f32>(324f, arg_0.b))) - _wgslsmith_f_op_vec2_f32(-arg_1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(337f, 666f, 2560f)))) * vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -1000f, -350f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + -290f), func_2().c.x, _wgslsmith_f_op_f32(max(-1639f, arg_1.c.x))))), arg_0.e, ~(_wgslsmith_div_u32(min(9363u, 4294967295u), arg_0.c >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.e.d.x, 22u)], 22u)] % 32u)) & (_wgslsmith_dot_vec3_u32(vec3<u32>(8484u, 18181u, arg_0.e.b), u_input.b.xwx) | ~arg_0.c)), Struct_4(!(!arg_0.a), arg_0.e.a, 27814u, arg_0.d, arg_0.e));
    return vec4<bool>(all(select(!select(vec4<bool>(false, true, true, arg_1.a), vec4<bool>(arg_0.a.x, true, var_0.c.e, false), vec4<bool>(arg_1.a, var_0.c.e, false, arg_1.b.x)), !vec4<bool>(false, false, var_0.e.a.x, false), !vec4<bool>(arg_1.a, false, var_0.c.e, arg_0.e.e))), select(_wgslsmith_mult_u32(~arg_0.c, var_0.c.d.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~var_0.e.e.b), true) <= u_input.b.x, arg_0.d, !all(select(!vec2<bool>(true, arg_1.a), !vec2<bool>(arg_0.d, false), select(arg_0.a.xx, vec2<bool>(arg_1.b.x, true), arg_1.b))));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec4<i32>) -> f32 {
    let var_0 = !(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), vec4<bool>(arg_0.a.x, true, arg_0.d, arg_0.a.x)), func_4(arg_0, func_2(), firstLeadingBit(arg_0.e.b)), !vec4<bool>(arg_0.a.x, true, arg_0.e.e, false)));
    var var_1 = Struct_3(arg_1, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, min(62522u, _wgslsmith_dot_vec2_u32(select(arg_0.e.d.zx, u_input.b.yx, false), arg_0.e.d.yx ^ u_input.b.zz)), 21351u), 22u)], abs(select(~_wgslsmith_add_vec2_i32(arg_0.e.c, vec2<i32>(arg_0.e.c.x, 49134i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.e.c.x, u_input.a), vec2<i32>(arg_2.x, arg_0.e.c.x)), !arg_0.a.yz)), ~arg_0.e.d, true);
    let var_2 = Struct_2(all(var_0.wx), vec2<bool>(false, func_4(Struct_4(select(var_0.zyx, var_0.yzz, false), _wgslsmith_f_op_f32(-303f - -1770f), abs(var_1.d.x), all(vec4<bool>(arg_0.d, arg_0.d, false, false)), Struct_3(1000f, u_input.b.x, var_1.c, arg_0.e.d, var_1.e)), func_2(), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(10245u, 1u)), 22u)]).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1458f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -953f), -193f))), _wgslsmith_f_op_f32(-var_1.a));
    global0 = array<u32, 22>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) - _wgslsmith_f_op_f32(f32(-1f) * -962f))), _wgslsmith_mod_vec3_i32(~arg_2.xzx, vec3<i32>(-var_1.c.x, -39967i, ~_wgslsmith_dot_vec3_i32(arg_2.zyy, arg_2.yzx))), var_2.c.x, var_2.c);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-507f, -303f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-332f, -223f)))) + vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(vec3<bool>(true, false, false), 1097f, 4294967295u, true, Struct_3(102f, 0u, vec2<i32>(-21684i, 8882i), vec3<u32>(0u, global0[_wgslsmith_index_u32(98554u, 22u)], u_input.b.x), true)), _wgslsmith_f_op_f32(-1060f + 457f), reverseBits(vec4<i32>(0i, u_input.a, -1i, u_input.a)))), _wgslsmith_f_op_f32(step(-1150f, _wgslsmith_f_op_f32(sign(664f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(301f, -608f, 982f), vec3<f32>(407f, 217f, -226f)) - vec3<f32>(-655f, -1439f, -1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, 2147483647i, 20507i)), u_input.a), abs(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 - vec3<f32>(var_0.x, -434f, var_0.x)), _wgslsmith_f_op_vec3_f32(-var_0)))) - var_0));
}

