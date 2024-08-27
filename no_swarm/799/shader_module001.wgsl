struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<u32>, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<i32> {
    global1 = array<vec4<u32>, 25>();
    global0 = reverseBits(~u_input.a.x) != select(0u, ~1u, true);
    global0 = any(vec2<bool>(arg_0 <= _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, arg_0), -vec2<i32>(2147483647i, arg_0)), false));
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 362f, 1566f));
    return countOneBits(-_wgslsmith_div_vec3_i32(max(~vec3<i32>(2147483647i, arg_0, arg_0), -vec3<i32>(arg_0, arg_0, arg_0)), max(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(1772i, 2147483647i, arg_0) & vec3<i32>(1i, 2147483647i, 28364i))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> i32 {
    global1 = array<vec4<u32>, 25>();
    global1 = array<vec4<u32>, 25>();
    let var_0 = Struct_3(Struct_2(Struct_1(4490u, vec2<i32>(arg_2.x, 2147483647i) << (reverseBits(u_input.a) % vec2<u32>(32u))), abs(u_input.b)));
    global0 = !(!(false & any(vec2<bool>(true, false))));
    global1 = array<vec4<u32>, 25>();
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = select(vec3<i32>(firstLeadingBit(~7258i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -20284i), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-16169i, -1i)), ~vec2<i32>(0i, 2147483647i))), func_4(min(firstTrailingBit(-20669i), ~(-14220i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1785f, 674f, 824f)))), func_3(2147483647i, u_input.b) & vec3<i32>(1i, 1i, 1i))), (vec3<i32>(-1i) * -vec3<i32>(44258i, 0i, -2147483647i)) << (select(max(vec3<u32>(4294967295u, u_input.b, u_input.a.x), reverseBits(vec3<u32>(4294967295u, 1u, 29034u))), ~vec3<u32>(1u, 1u, 1u), vec3<bool>(true, any(vec3<bool>(true, false, true)), false)) % vec3<u32>(32u)), select(vec3<bool>(max(u_input.a.x, u_input.b) <= ~1u, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), select(vec3<bool>(false, arg_0.x <= -1030f, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), false), vec3<bool>(any(vec3<bool>(false, false, false)), true, true)), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), any(vec4<bool>(true, true, true, true)))));
    global1 = array<vec4<u32>, 25>();
    global1 = array<vec4<u32>, 25>();
    let var_1 = var_0.x;
    let var_2 = u_input.a.x;
    return Struct_2(Struct_1(1u | ~var_2, ~var_0.xx), 64118u);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> f32 {
    let var_0 = func_2(vec3<f32>(1f, 1f, 1f));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2643f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1471f * 958f))) * 1283f), true)));
    let var_2 = arg_1.c.a.b.x;
    var var_3 = _wgslsmith_add_vec4_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31706u, arg_0.c.b) | vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, 58754u)), 25u)] >> ((vec4<u32>(arg_1.b.x, var_0.b, u_input.b, firstTrailingBit(u_input.b)) | ~(vec4<u32>(4294967295u, u_input.a.x, 20496u, arg_1.b.x) | arg_0.b)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.b.zy), _wgslsmith_mod_u32(42865u, 4294967295u))), func_2(vec3<f32>(_wgslsmith_f_op_f32(var_1 * 286f), var_1, _wgslsmith_f_op_f32(floor(-1000f)))).a.a, ~arg_0.b.x));
    var_3 = global1[_wgslsmith_index_u32(var_3.x, 25u)];
    return 817f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec2<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 39414u), vec4<u32>(20740u, 0u, u_input.b, u_input.a.x)) << (u_input.b % 32u)), _wgslsmith_mult_u32(0u, ~(~u_input.a.x))));
    global0 = select(_wgslsmith_f_op_f32(ceil(-661f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1457f + _wgslsmith_f_op_f32(abs(-625f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1544f), _wgslsmith_f_op_f32(func_1(Struct_5(-1i, vec4<u32>(4294967295u, 16717u, u_input.a.x, 88104u), Struct_2(Struct_1(4294967295u, vec2<i32>(41358i, 2173i)), u_input.b)), Struct_5(0i, global1[_wgslsmith_index_u32(u_input.b, 25u)], Struct_2(Struct_1(var_0.x, vec2<i32>(-1i, 31714i)), u_input.a.x)))))) - _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(func_1(Struct_5(-1i, vec4<u32>(var_0.x, u_input.b, var_0.x, 4294967295u), Struct_2(Struct_1(1u, vec2<i32>(15450i, -15735i)), var_0.x)), Struct_5(-2147483647i, global1[_wgslsmith_index_u32(1u, 25u)], Struct_2(Struct_1(u_input.b, vec2<i32>(0i, 2147483647i)), 1u)))))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1300f, -1664f), -397f)))), true);
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-534f, -658f, -1061f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1357f, 1656f, 589f), vec3<f32>(962f, -1147f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(159f, -695f, -1815f), vec3<f32>(-415f, -1683f, -297f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 995f, -867f) - vec3<f32>(1201f, 200f, -1790f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1387f, 512f, 189f)), false))), !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))))).a;
    let var_2 = false;
    var var_3 = Struct_5(min(var_1.b.x, -(~var_1.b.x) & select(var_1.b.x & var_1.b.x, var_1.b.x, all(vec4<bool>(true, true, var_2, true)))), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a, 3839u, var_0.x, 0u), vec4<u32>(91722u, 4294967295u, var_0.x, u_input.a.x) ^ vec4<u32>(4294967295u, 0u, 0u, var_1.a)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 0u, var_0.x, var_1.a), ~vec4<u32>(9629u, var_1.a, u_input.b, var_0.x)) % vec4<u32>(32u))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(159f, 1138f, -1000f)))).a, u_input.a.x));
    var var_4 = Struct_4(Struct_3(var_3.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(953f, 1638f)))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(696f, -1018f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1412f, -1242f), _wgslsmith_f_op_f32(ceil(255f)), true)))), -1768f));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(1i, ~1366i) >> (firstTrailingBit(u_input.b) % 32u));
}

