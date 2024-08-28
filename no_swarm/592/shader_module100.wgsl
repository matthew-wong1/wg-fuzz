struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_4, 25>;

var<private> global1: i32 = -30559i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = 1u != max(~_wgslsmith_add_u32(1u, 51872u), min(_wgslsmith_dot_vec3_u32(vec3<u32>(9727u, 0u, 4294967295u), vec3<u32>(4294967295u, 28839u, 118943u)) | 10900u, 0u));
    var var_1 = Struct_3(u_input.a.x, _wgslsmith_f_op_f32(trunc(1761f)), true, -u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(f32(-1f) * -2932f), !arg_0)))) * -166f));
    let var_2 = _wgslsmith_f_op_f32(select(var_1.e, var_1.e, arg_0));
    var var_3 = vec3<bool>(all(select(!(!vec2<bool>(false, arg_0)), vec2<bool>(true, true), false)), !arg_0, true & !(1189f <= var_2));
    var var_4 = false;
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(~(~127153u), 70663u), abs(vec2<u32>(~0u, ~4294967295u)));
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = select(~(~(~select(vec3<u32>(13829u, 4294967295u, 22460u), vec3<u32>(1u, 10470u, 9007u), vec3<bool>(arg_0.c, arg_0.c, true)))), vec3<u32>(func_3(select(false, all(vec2<bool>(arg_0.c, true)), arg_0.d.x < -2147483647i)), ~1u, ~firstTrailingBit(4294967295u) | select(~0u, _wgslsmith_div_u32(16427u, 4294967295u), any(vec4<bool>(true, arg_0.c, arg_0.c, arg_0.c)))), vec3<bool>(true, !(~0u <= firstTrailingBit(38670u)), max(arg_0.d.x, arg_0.a) >= arg_0.d.x));
    global1 = arg_0.a;
    global1 = arg_0.d.x;
    let var_1 = arg_0.c;
    global1 = -(~(~(-u_input.a.x)) ^ _wgslsmith_add_i32(_wgslsmith_div_i32(-35988i, ~arg_0.d.x), arg_0.d.x));
    return any(vec3<bool>(true, true, !any(!vec3<bool>(true, arg_0.c, true))));
}

fn func_1(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = -countOneBits(select(u_input.a, _wgslsmith_sub_vec4_i32(-vec4<i32>(14538i, u_input.a.x, u_input.a.x, -1i), u_input.a), !select(vec4<bool>(false, true, false, false), vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, arg_1, arg_1, false))));
    var var_1 = i32(-1i) * -select(-10928i, var_0.x, arg_1);
    let var_2 = Struct_1(select(select(vec2<bool>(all(vec2<bool>(true, arg_1)), func_2(Struct_3(-3312i, 1000f, arg_1, u_input.a, -1412f))), !(!vec2<bool>(true, arg_1)), vec2<bool>(func_2(Struct_3(-60531i, -1957f, arg_1, vec4<i32>(arg_0, -1i, var_0.x, -15103i), 520f)), true)), !select(vec2<bool>(arg_1, false), select(vec2<bool>(true, arg_1), vec2<bool>(false, true), arg_1), arg_1), any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, arg_1, false)), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1), arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1253f, -435f), _wgslsmith_div_f32(1418f, -1083f), 1228f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, -2164f, -726f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-401f, 1799f, -1000f)))))), ~(~firstLeadingBit(~vec2<u32>(53857u, 0u))), vec2<u32>(1u, 1u));
    var var_3 = 4294967295u;
    var var_4 = select(!var_2.a, var_2.a, select(true, arg_1, any(!vec4<bool>(arg_1, var_2.a.x, var_2.a.x, false))));
    return max(var_2.d.x | ~1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 1885u, 18218u) | (vec3<u32>(0u, 58455u, var_2.c.x) & vec3<u32>(var_2.c.x, 0u, 4294967295u)), max(vec3<u32>(1u, 1u, var_2.c.x), ~vec3<u32>(var_2.c.x, var_2.c.x, var_2.c.x))), 76299u, min(var_2.c.x, ~46024u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(!any(vec2<bool>(all(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, true, false)))));
    var var_1 = vec4<u32>(1u, ~_wgslsmith_mod_u32(func_1(~u_input.a.x, all(vec4<bool>(var_0.a, false, false, false))), 1u), _wgslsmith_mult_u32(abs(1u), 9379u), 4294967295u);
    var var_2 = ~(~(~_wgslsmith_clamp_i32(-39764i, -u_input.a.x, 11033i)));
    let var_3 = ((select(~vec2<u32>(1u, 4969u), var_1.xx, !vec2<bool>(true, var_0.a)) ^ (var_1.yz >> (~var_1.wz % vec2<u32>(32u)))) << ((~(~vec2<u32>(49181u, var_1.x)) >> (var_1.yz % vec2<u32>(32u))) % vec2<u32>(32u))) | vec2<u32>(countOneBits(_wgslsmith_div_u32(28145u, var_1.x)), ~var_1.x & var_1.x);
    var var_4 = firstTrailingBit(firstTrailingBit(u_input.a) ^ _wgslsmith_div_vec4_i32(-firstTrailingBit(u_input.a), reverseBits(vec4<i32>(u_input.a.x, -32897i, 0i, u_input.a.x))));
    var var_5 = Struct_2(_wgslsmith_mod_u32(select(min(4294967295u, var_3.x) >> (var_3.x % 32u), _wgslsmith_add_u32(min(var_1.x, 4294967295u), 1u), true), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 9466u, var_1.x, 55582u), ~vec4<u32>(var_1.x, var_3.x, 0u, var_1.x))), Struct_1(select(vec2<bool>(true, -2i == var_4.x), select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), true), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), var_0.a), var_0.a), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1394f, -1252f, 171f), vec3<f32>(-417f, 182f, -2134f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -1042f, 421f))))), ~firstLeadingBit(firstTrailingBit(var_3)), ~(var_3 ^ vec2<u32>(var_1.x, var_1.x)) >> (vec2<u32>(40482u, _wgslsmith_div_u32(var_1.x, 50205u)) % vec2<u32>(32u))), ~vec3<i32>(u_input.a.x, ~reverseBits(var_4.x), -countOneBits(var_4.x)), Struct_1(!(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, var_0.a), var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(376f, -2197f, -658f) - vec3<f32>(339f, 783f, -2282f)) - vec3<f32>(-119f, -659f, 1050f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-830f, -550f, 400f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-994f, -1800f, 842f)), var_1.x <= 1739u))), var_3, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(var_3.x, 9705u), ~vec2<u32>(var_1.x, var_3.x)), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 457f)), _wgslsmith_f_op_f32(-var_5.b.b.x))));
}

