struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_0.a, true, select(vec2<bool>(arg_0.d, false), select(arg_0.c, arg_0.c, select(select(arg_0.a.xy, vec2<bool>(false, arg_0.d), arg_0.c), select(arg_0.a.xz, arg_0.c, vec2<bool>(true, true)), !arg_0.c)), !(!vec2<bool>(false, arg_0.a.x))), !any(!(!vec4<bool>(arg_0.c.x, arg_0.b, arg_0.c.x, arg_0.a.x))), ~vec3<u32>(u_input.a.x, 4294967295u ^ arg_0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.yy)) ^ reverseBits(u_input.a));
    global0 = arg_0.e.x;
    let var_1 = var_0.e;
    let var_2 = (vec2<i32>((i32(-1i) * -6438i) | firstTrailingBit(-34947i), ~9705i) | ~(~vec2<i32>(-2147483647i, 16270i) << (max(vec2<u32>(var_1.x, u_input.a.x), u_input.a.xx) % vec2<u32>(32u)))) ^ ~vec2<i32>(-15709i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-14809i, 1i)) | _wgslsmith_clamp_i32(-42279i, 2147483647i, 2147483647i));
    global0 = _wgslsmith_sub_u32(reverseBits(1u), ~firstTrailingBit(192u));
    return _wgslsmith_f_op_f32(sign(178f));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<i32>) -> vec4<i32> {
    global0 = _wgslsmith_div_u32(3653u, abs(~arg_0.x));
    var var_0 = Struct_1(false, select(_wgslsmith_mult_i32(arg_2.x, -(~arg_2.x)), -14589i, true), false, select(true, true, true), vec4<f32>(-1452f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1822f))), _wgslsmith_f_op_f32(abs(-901f)))), 571f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(-743f, -1854f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(764f * -2000f), _wgslsmith_f_op_f32(-1651f * -546f)))));
    global0 = ~107595u;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(var_0.c, var_0.a, var_0.a), var_0.d, vec2<bool>(false, var_0.a), false, vec3<u32>(arg_0.x, 39331u, arg_1)))), _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(select(1437f, var_0.e.x, false))), _wgslsmith_f_op_vec3_f32(-var_0.e.wyx)))));
    global0 = arg_1;
    return -(~reverseBits(min(select(vec4<i32>(23085i, arg_2.x, arg_2.x, -1i), vec4<i32>(arg_2.x, arg_2.x, var_0.b, var_0.b), var_0.c), vec4<i32>(var_0.b, arg_2.x, var_0.b, -69744i) << (vec4<u32>(arg_0.x, 4294967295u, 0u, arg_0.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> bool {
    let var_0 = Struct_3(Struct_1(true, 1i, !all(vec3<bool>(true, true, true)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 25150u), arg_1.zy), _wgslsmith_div_u32(u_input.a.x, 1u)) > (arg_1.x ^ ~4294967295u), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(false, true, true), false, vec2<bool>(false, true), false, vec3<u32>(u_input.a.x, 43364u, 49747u)))), -512f, 1000f, _wgslsmith_f_op_f32(-1000f - -1382f))))), _wgslsmith_f_op_f32(func_3(Struct_2(vec3<bool>(all(vec2<bool>(false, true)), u_input.a.x != u_input.a.x, true), _wgslsmith_f_op_f32(max(145f, -172f)) == _wgslsmith_f_op_f32(step(-2029f, -208f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true && (34624u != u_input.a.x), ~firstTrailingBit(u_input.a)))), -(~(vec3<i32>(-1i) * -arg_0.yxz)), vec2<f32>(1090f, -252f), !vec4<bool>(true, true, !all(vec2<bool>(false, true)), true));
    var var_1 = u_input.a.x >= (u_input.a.x & max(0u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) & 0u));
    let var_2 = ~vec3<i32>(var_0.a.b, _wgslsmith_sub_i32(-47586i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(34619i, -31658i, arg_0.x, var_0.c.x) << (vec4<u32>(0u, 0u, arg_1.x, arg_1.x) % vec4<u32>(32u)))), -2147483647i);
    return false;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_1(func_4(func_2(vec3<u32>(43413u, 3152u, 10479u), 511u, vec3<i32>(1i, 1i, 1i)), vec3<u32>(arg_2.x, ~(~4294967295u), ~u_input.a.x)), select(_wgslsmith_sub_i32(1i, ~(-44646i)), 1i, true & (_wgslsmith_dot_vec4_u32(vec4<u32>(76832u, 31428u, 4294967295u, u_input.a.x), vec4<u32>(arg_2.x, arg_0, 4294967295u, arg_2.x)) < 0u)), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-935f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f * -347f))), _wgslsmith_f_op_f32(floor(1019f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -504f)));
    let var_1 = _wgslsmith_mod_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, 4294967295u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(10234u, arg_0, 0u, arg_1.x), vec4<u32>(17018u, arg_2.x, 31257u, 0u)))), vec4<u32>(arg_1.x ^ ~18215u, ~(~arg_1.x >> (arg_2.x % 32u)), 0u, ~(~39912u)));
    var var_2 = Struct_1(!var_0.d, reverseBits(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(31648i, var_0.b, -1i, 54223i), vec4<i32>(-13063i, 31781i, -1i, var_0.b))), i32(-1i) * -var_0.b)), var_0.b < _wgslsmith_add_i32(reverseBits(-var_0.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_0.b, var_0.b), vec4<i32>(var_0.b, 3728i, var_0.b, -2147483647i)), vec4<i32>(var_0.b, -8259i, var_0.b, var_0.b))), all(!select(!vec3<bool>(var_0.d, var_0.c, var_0.a), vec3<bool>(true, true, var_0.a), any(vec3<bool>(var_0.a, var_0.c, var_0.c)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(131f)), _wgslsmith_f_op_f32(f32(-1f) * -829f), var_0.e.x, _wgslsmith_div_f32(1000f, var_0.e.x)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(var_0.e.x, -1374f, -1205f, -1271f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.e.x, 766f, 999f, var_0.e.x))) + _wgslsmith_f_op_vec4_f32(abs(var_0.e)))), select(!select(vec4<bool>(var_0.c, true, var_0.a, var_0.d), vec4<bool>(false, false, var_0.c, var_0.c), vec4<bool>(true, var_0.a, var_0.d, var_0.d)), !(!vec4<bool>(var_0.c, var_0.c, var_0.d, var_0.d)), var_0.c))));
    var var_3 = select(vec2<bool>(!any(!vec3<bool>(var_2.c, var_2.c, false)), var_0.d), vec2<bool>(var_2.d, true), select(vec2<bool>(all(!vec4<bool>(true, true, true, var_2.c)), !(!var_2.c)), vec2<bool>(var_0.d, var_0.d), func_4(abs(vec4<i32>(1i, var_0.b, 1i, 30585i)), ~arg_1) & false));
    let var_4 = Struct_3(Struct_1(any(!(!vec3<bool>(var_0.a, var_0.a, var_0.c))), ~var_2.b, !((0u >= arg_2.x) && all(vec3<bool>(var_0.a, var_3.x, var_3.x))), var_2.a, var_0.e), 1875f, -_wgslsmith_mult_vec3_i32(firstLeadingBit(~vec3<i32>(var_2.b, var_2.b, -1i)), min(reverseBits(vec3<i32>(0i, var_2.b, var_2.b)), vec3<i32>(var_2.b, var_0.b, -26142i))), _wgslsmith_f_op_vec2_f32(-var_0.e.xy), select(select(vec4<bool>(!var_0.a, !var_2.a, false & var_2.c, any(vec4<bool>(true, false, var_2.d, false))), !(!vec4<bool>(var_3.x, var_2.a, var_0.d, var_2.c)), !select(vec4<bool>(var_2.a, var_2.d, false, var_3.x), vec4<bool>(true, var_0.a, var_2.d, var_2.a), false)), !select(select(vec4<bool>(var_2.d, var_2.d, var_3.x, var_0.c), vec4<bool>(false, false, true, false), vec4<bool>(var_3.x, var_3.x, var_2.a, var_0.c)), select(vec4<bool>(false, var_3.x, var_0.a, var_2.a), vec4<bool>(true, var_0.a, false, var_2.a), vec4<bool>(var_0.c, false, true, true)), select(vec4<bool>(var_0.a, var_2.d, false, true), vec4<bool>(var_2.d, var_3.x, var_2.c, var_0.a), vec4<bool>(var_3.x, true, true, var_3.x))), !var_0.a));
    return vec4<u32>(~_wgslsmith_div_u32(0u, ~(~30818u)), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(arg_0, 0u)), arg_2), arg_1.yx), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4413u, 1u, arg_2.x), var_1), select(u_input.a.x, 58607u, false)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_0, arg_2.x, 0u), var_1), reverseBits(vec4<u32>(4294967295u, var_1.x, 63503u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20450i;
    let var_1 = vec3<i32>(-18135i, 0i, -1i);
    let var_2 = countOneBits(~(~u_input.a));
    global0 = 6861u | var_2.x;
    let var_3 = u_input.a.xy;
    var_0 = var_1.x;
    let var_4 = u_input.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(15480u, _wgslsmith_sub_vec3_u32(vec3<u32>(12335u, 9231u, var_2.x) << (abs(vec3<u32>(u_input.a.x, 4294967295u, 28559u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(14636u, var_2.x, 102269u))), var_3), vec2<u32>(~u_input.a.x, ~4294967295u ^ max(var_3.x, var_4.x)) & vec2<u32>(u_input.a.x, ~4294967295u));
}

