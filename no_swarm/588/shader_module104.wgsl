struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 4>;

var<private> global2: f32;

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(4294967295u, 686f, _wgslsmith_add_i32(~(-2147483647i), -firstLeadingBit(u_input.a)));
    var var_1 = -firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -33616i, 0i, -16044i), min(vec4<i32>(var_0.c, var_0.c, var_0.c, -1i), vec4<i32>(u_input.a, u_input.a, 4754i, 22128i)), vec4<i32>(u_input.a, u_input.a, 65893i, 6252i))));
    let var_2 = Struct_5(_wgslsmith_mod_u32(~24916u, 36822u) & var_0.a);
    global2 = var_0.b;
    let var_3 = Struct_3(select(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), all(vec2<bool>(false, true))))));
    return var_2.a;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = min(_wgslsmith_add_u32(countOneBits(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 85752u, 1u, 28574u)), 4294967295u, arg_0)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(63680u, 22244u, 0u), vec3<u32>(10343u, 18257u, 4294967295u)))), select(~func_3(), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(36419u, 1u, 0u), vec3<u32>(0u, 1u, 13322u))), !arg_0) ^ (0u | _wgslsmith_dot_vec3_u32(~vec3<u32>(6491u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u))));
    let var_1 = vec3<bool>(all(select(vec4<bool>(true, false | arg_0, true, true), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !any(vec2<bool>(arg_0, arg_0)))), arg_0, !(var_0 > _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, var_0)), firstTrailingBit(vec2<u32>(25154u, 34369u)))));
    var var_2 = vec2<u32>(var_0, 0u);
    let var_3 = Struct_3(all(!vec3<bool>(27033u == var_2.x, var_1.x, false)));
    let var_4 = _wgslsmith_f_op_f32(713f * -2424f);
    return _wgslsmith_f_op_f32(-var_4);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_5, arg_3: vec2<u32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))));
    global2 = _wgslsmith_f_op_f32(func_2(true));
    let var_0 = -_wgslsmith_mod_vec3_i32(~vec3<i32>(-72812i, ~u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.a, -24013i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(24129i, -7079i, u_input.a), vec3<i32>(8442i, 34723i, 2147483647i))));
    var var_1 = Struct_3(select((~arg_3.x == (arg_2.a >> (0u % 32u))) & (_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(exp2(arg_0))), false, !any(vec4<bool>(true, true, true, true))));
    global0 = _wgslsmith_f_op_f32(-1f);
    return Struct_2(Struct_1(!(!vec3<bool>(true, var_1.a, true))), Struct_1(!(!vec3<bool>(var_1.a, false, var_1.a))), -(~(-1i)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-u_input.a, ~(-2147483647i)), vec2<i32>(-1i, 1640i) ^ ~vec2<i32>(var_0.x, u_input.a), ~vec2<i32>(var_0.x, var_0.x)), 27336i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_4(~(~77698u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_2)), 1f)), -52877i);
    var var_1 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 2547f))))));
    var var_2 = Struct_3(arg_1.b.a.x);
    return 1506f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec3<bool>(!select(false, false, true), true, true));
    global1 = array<vec4<f32>, 4>();
    let var_1 = ~vec2<i32>(1i, ~u_input.a);
    global3 = array<vec3<f32>, 26>();
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)) + _wgslsmith_f_op_f32(func_4(Struct_3(var_0.a.x), func_1(-644f, -313f, Struct_5(1u), vec2<u32>(50192u, 4294967295u)), 594f, func_1(-1634f, -119f, Struct_5(59576u), vec2<u32>(9027u, 4294967295u)).b))))));
    global2 = 2048f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(false && var_0.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(var_0.a.x)))))) + -1206f);
    global0 = 311f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(64546u, 52762u, 51804u, 1u), vec4<u32>(120738u, 47068u, 8919u, 4294967295u)), select(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), ~abs(~vec4<u32>(0u, 4294967295u, 22919u, 58212u))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1525f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-707f))), -1024f, any(!vec4<bool>(true, var_0.a.x, var_0.a.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -389f)))), firstLeadingBit(select(abs(0i) & u_input.a, var_1.x, any(var_0.a))), -1000f);
}

