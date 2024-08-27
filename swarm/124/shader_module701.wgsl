struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = arg_0.a.x;
    var var_2 = arg_0;
    let var_3 = !(!(!select(!vec3<bool>(true, arg_2, false), !vec3<bool>(arg_2, arg_2, arg_1), select(arg_1, true, arg_1))));
    var var_4 = _wgslsmith_div_u32(4294967295u, ~_wgslsmith_mult_u32(u_input.a.x, 1u));
    return var_3.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<u32>, arg_3: i32) -> vec2<i32> {
    let var_0 = 1i;
    var var_1 = Struct_1(_wgslsmith_sub_vec3_i32(u_input.b, -firstLeadingBit(vec3<i32>(64266i, global0.x, 31025i) | u_input.b)), u_input.b, !vec2<bool>(!func_3(Struct_3(vec3<f32>(304f, 315f, 1396f), arg_3, 27248i), true, true), _wgslsmith_f_op_f32(step(586f, -2340f)) <= _wgslsmith_f_op_f32(-1000f + 328f)), !all(vec2<bool>(true, true)), true);
    var var_2 = Struct_2(u_input.a.zw, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - 483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1584f) - _wgslsmith_f_op_f32(abs(-541f))), _wgslsmith_f_op_f32(f32(-1f) * -564f), -1075f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(911f, 207f, -885f, -959f))), select(vec4<bool>(var_1.d, all(vec2<bool>(false, true)), true, true), !(!vec4<bool>(var_1.c.x, false, var_1.d, true)), abs(1u) <= _wgslsmith_add_u32(arg_1, arg_0)))), Struct_1(~vec3<i32>(-2147483647i, 22549i, 2147483647i), vec3<i32>(var_1.a.x, _wgslsmith_mult_i32(-2147483647i, global0.x), var_1.b.x), select(var_1.c, select(select(vec2<bool>(var_1.d, var_1.e), vec2<bool>(false, true), true), vec2<bool>(var_1.e, false), var_1.c), var_1.c), true, all(select(!vec4<bool>(var_1.c.x, false, var_1.c.x, false), !vec4<bool>(false, var_1.d, true, var_1.e), select(vec4<bool>(false, var_1.c.x, var_1.e, false), vec4<bool>(false, true, false, var_1.d), vec4<bool>(false, var_1.d, var_1.d, var_1.d))))), Struct_1((vec3<i32>(-1i) * -vec3<i32>(46175i, -1i, var_0)) ^ _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.a.x, -17792i, 12279i), firstLeadingBit(u_input.b), vec3<i32>(-1i, global0.x, u_input.d.x)), u_input.b, select(!vec2<bool>(var_1.c.x, var_1.d), var_1.c, select(select(vec2<bool>(var_1.e, false), var_1.c, var_1.c.x), vec2<bool>(true, var_1.d), vec2<bool>(var_1.e, false))), var_1.d, !(!all(vec3<bool>(true, true, true)))));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), _wgslsmith_div_vec2_i32(var_2.d.b.yy, select(firstTrailingBit(u_input.d), -var_1.b.zy, select(var_2.c.d, var_1.e && false, true))));
    var var_3 = Struct_2(arg_2.xz, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(875f - _wgslsmith_f_op_f32(var_2.b.x + -431f)) * -267f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.b.x, -2980f, false)))), var_2.b.x), var_2.d, var_2.c);
    return vec2<i32>(firstTrailingBit(arg_3), global0.x >> (var_2.a.x % 32u));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_sub_vec2_i32(~min(_wgslsmith_mod_vec2_i32(~u_input.b.zx, firstLeadingBit(vec2<i32>(38093i, global0.x))), u_input.b.xz), ~min(u_input.d, func_2(1u, _wgslsmith_add_u32(1u, 0u), u_input.a.xww << (u_input.a.zzw % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(u_input.d, u_input.b.yx))));
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1456f - -796f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-694f)), _wgslsmith_f_op_f32(ceil(133f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(f32(-1f) * -213f))), _wgslsmith_f_op_f32(f32(-1f) * -218f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1116f, -247f), _wgslsmith_f_op_f32(step(-272f, -554f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1342f))))), 212f);
    global0 = -(u_input.d ^ _wgslsmith_div_vec2_i32(u_input.b.zz ^ vec2<i32>(global0.x, u_input.d.x), vec2<i32>(-1i, _wgslsmith_add_i32(10835i, global0.x))));
    global0 = u_input.d;
    var var_1 = Struct_3(vec3<f32>(var_0.x, -662f, var_0.x), 2147483647i, func_2(~_wgslsmith_sub_u32(~44793u, u_input.c), 1u, ~_wgslsmith_div_vec3_u32(vec3<u32>(18196u, 0u, u_input.c) & vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_add_vec3_u32(u_input.a.www, u_input.a.yxw)), global0.x).x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = u_input.a.x;
    let var_1 = ~abs(~(-vec4<i32>(-2147483647i, global0.x, -46090i, 0i)));
    let var_2 = 360f;
    global0 = min(var_1.yx, abs(firstLeadingBit(var_1.wx)) & ~((var_1.yz | var_1.zx) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(9803u, 1u), vec2<u32>(u_input.a.x, 9020u)) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_mult_i32(-28187i, firstLeadingBit(2147483647i | _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.d)));
    let var_4 = _wgslsmith_f_op_f32(func_1());
    var_0 = abs(_wgslsmith_clamp_u32(u_input.a.x, ~76867u ^ _wgslsmith_clamp_u32(1u, max(0u, 1u), _wgslsmith_dot_vec3_u32(u_input.a.wzx, u_input.a.xzz)), ~75155u >> ((firstTrailingBit(u_input.c) << ((u_input.a.x | 59887u) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.wx);
}

