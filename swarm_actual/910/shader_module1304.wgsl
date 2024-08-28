struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = min(29507u, max(abs(u_input.b), u_input.b));
    var var_1 = Struct_2(Struct_1(~countOneBits(vec2<u32>(1u, u_input.b) << (vec2<u32>(0u, var_0) % vec2<u32>(32u))), 1i, any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, false, false), var_0 > 4294967295u)), arg_1.x), _wgslsmith_div_u32(u_input.b, 1u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(503f)), 384f) - vec2<f32>(_wgslsmith_f_op_f32(max(2363f, 915f)), 179f))), Struct_1(vec2<u32>(var_0, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(39951u, var_0), var_1.a.a), vec2<u32>(var_0, var_1.a.a.x))), _wgslsmith_sub_i32(firstLeadingBit(2147483647i & u_input.a.x), ~var_1.a.b), _wgslsmith_mult_u32(var_1.a.a.x, var_0) > _wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.a.a.x, 1u), ~var_1.b), arg_1.x), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, arg_1.x, arg_0.x, arg_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(-19507i, 14552i, -20999i, -1i), vec4<i32>(0i, var_1.a.d, arg_0.x, arg_1.x))), -4657i), u_input.c, ~0i, ~789i), true, _wgslsmith_f_op_f32(f32(-1f) * -1162f));
    return var_2.b.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_1(func_3(vec3<i32>(~u_input.c, min(-31202i, -51244i), countOneBits(u_input.a.x)), -u_input.a) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, 94011u) | vec4<u32>(u_input.b, u_input.b, 1u, 0u), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), ~(~u_input.b)), _wgslsmith_dot_vec3_i32(-(~u_input.a | ~vec3<i32>(u_input.c, 21428i, u_input.a.x)), u_input.a), false, _wgslsmith_clamp_i32(abs(16671i), _wgslsmith_div_i32(6i, ~min(2147483647i, 0i)), 6180i));
    var_0 = Struct_1(~vec2<u32>(~19451u, ~_wgslsmith_clamp_u32(u_input.b, 1u, u_input.b)), u_input.a.x, all(!select(select(vec3<bool>(true, true, false), vec3<bool>(var_0.c, true, var_0.c), var_0.c), vec3<bool>(var_0.c, false, var_0.c), !var_0.c)), max(-2147483647i << (_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(27869u, var_0.a.x)) % 32u), 7722i));
    var var_1 = var_0.c;
    var_0 = Struct_1(~_wgslsmith_add_vec2_u32(select(var_0.a, var_0.a, vec2<bool>(var_0.c, true)) << (min(vec2<u32>(u_input.b, 0u), vec2<u32>(20680u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_add_u32(u_input.b, 0u), var_0.a.x)), u_input.a.x >> (1u % 32u), any(vec2<bool>(true, any(vec2<bool>(false, var_0.c)))), 1i);
    var_0 = Struct_1(vec2<u32>(~countOneBits(1u), 36156u), var_0.b << (~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(138673u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u)), vec4<u32>(var_0.a.x, u_input.b, var_0.a.x, 58806u)) % 32u), !any(select(!vec3<bool>(var_0.c, false, true), !vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, true, true))), var_0.d);
    return vec3<bool>(false, !(_wgslsmith_f_op_f32(abs(1145f)) != _wgslsmith_f_op_f32(1996f * arg_0.x)) | false, true);
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_1.c.e;
    var var_1 = all(vec2<bool>(true, true));
    var_1 = true;
    var_1 = all(!vec4<bool>(-29565i > (u_input.c << (0u % 32u)), true, any(vec2<bool>(arg_0, false)), arg_0));
    let var_2 = 0i >> (1u % 32u);
    return (u_input.b <= (_wgslsmith_mult_u32(0u, countOneBits(24315u)) >> (0u % 32u))) | all(func_2(_wgslsmith_f_op_vec2_f32(arg_1.c.a * _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.a.x, var_0), arg_1.c.a)), vec2<f32>(var_0, 871f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(true, true, true)), !vec4<bool>(select(false, false, false), func_1(false, Struct_5(Struct_3(false, vec4<u32>(4294967295u, u_input.b, u_input.b, 29244u), Struct_1(vec2<u32>(u_input.b, u_input.b), u_input.c, false, u_input.a.x)), 0i, Struct_4(vec2<f32>(287f, -861f), Struct_1(vec2<u32>(63308u, u_input.b), u_input.a.x, false, -35642i), vec4<i32>(1i, u_input.a.x, -1i, -1779i), true, -178f)), 33566u, vec2<u32>(u_input.b, u_input.b)), any(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false))), vec4<bool>(true, false && any(vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, false), !vec4<bool>(true, all(vec2<bool>(true, true)), true, true), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))));
    var var_1 = select(u_input.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(-_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), select(firstLeadingBit(vec3<i32>(u_input.c, u_input.c, u_input.a.x)), max(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(10729i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 12748i))), vec3<bool>(true, true, all(var_0.wzz)))), select(true, any(vec3<bool>(!var_0.x, all(var_0.wx), var_0.x)), var_0.x));
    var_1 = u_input.a.x;
    var var_2 = vec4<bool>(false, var_0.x, var_0.x, var_0.x);
    var_0 = vec4<bool>((all(var_2.zx) || !var_2.x) | var_2.x, (~(~u_input.b) <= 42741u) || var_0.x, !select(-1563f > _wgslsmith_f_op_f32(select(-1018f, -175f, false)), var_2.x, var_2.x || true), all(vec4<bool>(false, false, !select(false, var_2.x, true), true)));
    var_2 = !vec4<bool>(all(vec2<bool>(var_2.x, true)), !(var_2.x || any(vec3<bool>(var_2.x, false, var_0.x))), true, !(!(!var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(205f, 97474u, _wgslsmith_dot_vec2_i32(select(u_input.a.xz, u_input.a.xx, var_2.x), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), -vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_add_i32(-u_input.a.x, firstLeadingBit(0i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1386f)), _wgslsmith_f_op_f32(-1182f - 2220f), _wgslsmith_f_op_f32(step(1196f, -419f))) + vec3<f32>(_wgslsmith_f_op_f32(min(460f, -342f)), _wgslsmith_f_op_f32(step(528f, -1000f)), _wgslsmith_f_op_f32(-1810f + 790f))) + vec3<f32>(-452f, -1033f, 1f)), firstLeadingBit(39440u >> (0u % 32u)));
}

