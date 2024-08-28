struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-121f, 2031f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = -vec3<i32>(firstTrailingBit(~u_input.c.x), -1i, -1i << (((6886u << (u_input.a.x % 32u)) | reverseBits(u_input.d.x)) % 32u));
    var_0 = vec3<i32>(1475i, -(i32(-1i) * -10841i), ~17476i);
    let var_1 = vec4<f32>(-551f, global0.x, global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1535f, -660f, arg_0.x)) - global0.x) * _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(412f + global0.x))), -884f)));
    global0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.xy)));
    var_0 = countOneBits(u_input.c);
    return vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(1u), 0u, u_input.a.x & 6808u, ~36006u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.d.x, 12974u, 25686u), u_input.a)), u_input.b), 31393u, 18344u, (u_input.b | ~1u) >> (0u % 32u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(-u_input.c.zz, u_input.c.zy);
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(646f, global0.x) - vec2<f32>(235f, 1471f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-466f)), _wgslsmith_f_op_f32(sign(-1570f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))))))));
    var var_1 = u_input.a.x;
    let var_2 = Struct_3(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(vec2<bool>(false, true)), u_input.a), abs(~vec4<u32>(134535u, 44344u, u_input.d.x, 1u) | ~vec4<u32>(u_input.a.x, u_input.d.x, 85304u, u_input.d.x))), true);
    var_1 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 1u, u_input.d.x) >> (u_input.a.yxz % vec3<u32>(32u)), ~vec3<u32>(~u_input.d.x, var_2.a.x >> (4294967295u % 32u), 4294967295u)));
    return Struct_1(vec4<i32>(~var_0.x, u_input.c.x, ~_wgslsmith_sub_i32(u_input.c.x, max(-51043i, -31857i)), u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1890f, _wgslsmith_f_op_f32(297f - _wgslsmith_f_op_f32(max(1367f, arg_0))))), func_3(select(select(!vec2<bool>(var_2.b, var_2.b), !vec2<bool>(false, var_2.b), !vec2<bool>(var_2.b, true)), select(select(vec2<bool>(true, var_2.b), vec2<bool>(var_2.b, true), true), select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, var_2.b), true), vec2<bool>(true, var_2.b)), vec2<bool>(var_2.b, true))).wyy, var_2.a.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-608f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1129f)), _wgslsmith_f_op_f32(-arg_2.b.x)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b.x, 435f, 222f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2644f, -1464f, global0.x) - vec3<f32>(-755f, 629f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(arg_2.b.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, global0.x, arg_2.b.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(131f, global0.x, -1145f)))))));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    let var_2 = arg_3;
    var_1 = arg_2;
    return ~func_2(_wgslsmith_f_op_f32(-var_0.x)).d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, _wgslsmith_f_op_f32(-414f - _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1679f))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f)));
    var var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, max(-1i, 2147483647i), max(-45074i, -1i)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x), ~(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-544f, global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, global0.x)))))), u_input.a.zwz, min(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u) << (~0u % 32u), u_input.b), func_1(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), false), ~countOneBits(vec4<u32>(4294967295u, 26172u, 4294967295u, 1u)), Struct_1(vec4<i32>(u_input.c.x, 43519i, -16734i, -2147483647i), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 694f))), u_input.a.zxz, u_input.d.x), Struct_3(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, 34495u), false))));
    var var_1 = vec4<u32>(max(var_0.c.x, ~4294967295u), 1u, _wgslsmith_add_u32(~countOneBits(var_0.d | 62016u), var_0.d), var_0.d);
    var var_2 = Struct_4(Struct_2(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * 1355f), -651f)).c.yz));
    var var_3 = !select(select(vec3<bool>(false, u_input.c.x <= var_0.a.x, var_0.b.x > 592f), vec3<bool>(any(vec3<bool>(false, false, true)), select(true, true, true), any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), !vec3<bool>(true, false, all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(42915u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f + var_0.b.x))), _wgslsmith_f_op_f32(-1000f - func_2(_wgslsmith_f_op_f32(abs(354f))).b.x)), ~_wgslsmith_div_u32(18255u, func_3(vec2<bool>(true, var_3.x)).x) << (firstTrailingBit(~(var_1.x & var_1.x)) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.xzx, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_0.d, 1u), u_input.a.wyy), ~var_1.xyx)), var_1.zyy));
}

