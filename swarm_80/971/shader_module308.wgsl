struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = _wgslsmith_mod_u32(70636u, ~u_input.b.x) ^ min(0u, 14323u);
    global1 = 0u;
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, 238f, 777f, 1407f)) - vec4<f32>(-2321f, -882f, -643f, -687f)))))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1268f, var_0.a.x, var_0.a.x, 662f))))) * vec4<f32>(-502f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, -914f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1176f)), 1484f)));
    var var_2 = all(!select(vec4<bool>(select(false, true, false), all(vec2<bool>(false, true)), u_input.b.x <= u_input.b.x, true), vec4<bool>(1167f == var_0.a.x, true, true, all(vec4<bool>(true, true, true, true))), select(true, all(vec3<bool>(false, false, false)), arg_0 < 35561i)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(exp2(var_1.a.x))))))), _wgslsmith_f_op_f32(min(-850f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(374f, 232f))))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> u32 {
    global1 = 35930u;
    global0 = array<Struct_3, 14>();
    var var_0 = any(select(select(vec3<bool>(true, 1i >= u_input.c.x, all(vec4<bool>(false, true, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), vec3<bool>(true, true, true), vec3<bool>(select(false, true, true) | any(vec2<bool>(false, false)), !all(vec4<bool>(false, false, true, true)), true)));
    return _wgslsmith_mod_u32(~min(42443u, arg_1), u_input.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    global1 = reverseBits(20135u);
    let var_0 = arg_0.d;
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(var_0.c)), -396f), arg_1.a.yw))), _wgslsmith_mod_u32(u_input.b.x, 1246u), arg_0.a.x);
    global0 = array<Struct_3, 14>();
    let var_2 = var_0;
    return vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(var_0.d.x >> (4294967295u % 32u), ~var_2.d.x)), ~41522u) << (_wgslsmith_mod_vec2_u32(var_0.d, var_2.d) % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = ~_wgslsmith_sub_u32(119489u, _wgslsmith_div_u32(~4294967295u, arg_0.x));
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -min(~(-44739i), -u_input.c.x)), firstLeadingBit(~vec2<i32>(1i, -u_input.c.x)));
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, func_4(arg_1, arg_0.x, -30183i), ~0u), vec3<u32>(~(~0u), func_4(vec2<f32>(-1394f, _wgslsmith_f_op_f32(exp2(arg_1.x))), ~(u_input.b.x ^ u_input.b.x), 1i), func_2(Struct_2(u_input.c, Struct_1(vec3<i32>(var_0.x, var_0.x, -17945i), vec4<f32>(arg_1.x, arg_1.x, 1593f, arg_1.x), var_0.x, vec2<u32>(38553u, 0u), arg_1), select(vec2<bool>(false, false), vec2<bool>(true, false), true), Struct_1(vec3<i32>(u_input.c.x, var_0.x, u_input.a), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), 2147483647i, vec2<u32>(u_input.b.x, arg_0.x), arg_1), vec4<i32>(12467i, var_0.x, -49526i, var_0.x)), Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2012f, 1011f, -1236f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 968f)))), -230f).x));
    var var_3 = vec2<f32>(arg_1.x, arg_1.x);
    return Struct_1(~min(_wgslsmith_sub_vec3_i32(vec3<i32>(-16454i, var_0.x, u_input.c.x), firstLeadingBit(vec3<i32>(var_0.x, -2147483647i, u_input.a))), vec3<i32>(u_input.c.x, u_input.c.x, min(-13405i, u_input.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-220f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))), 964f)), ~reverseBits(u_input.c.x), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_2.x), vec2<u32>(25305u, arg_0.x)), vec2<u32>(arg_0.x, u_input.b.x), vec2<u32>(arg_0.x, 4294967295u)) | u_input.b.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - -1000f), _wgslsmith_f_op_f32(3479f - arg_1.x))), _wgslsmith_f_op_f32(max(-1000f, -2053f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<f32>) -> Struct_2 {
    global0 = array<Struct_3, 14>();
    global1 = 120303u;
    global1 = u_input.b.x;
    var var_0 = arg_2.x;
    let var_1 = _wgslsmith_add_u32(1u, ~(~1u));
    return Struct_2(max(-_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, 16716i)) ^ vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.a, u_input.c.x))), -u_input.c), func_5(~u_input.b.zw & min(func_2(Struct_2(u_input.c, Struct_1(vec3<i32>(u_input.a, 2147483647i, u_input.c.x), arg_2, u_input.a, u_input.b.xw, arg_2.zx), vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<f32>(-449f, 725f, -657f, -211f), u_input.a, vec2<u32>(u_input.b.x, 8457u), arg_2.wy), vec4<i32>(-6738i, u_input.c.x, u_input.a, -2147483647i)), Struct_4(vec4<f32>(-1414f, 600f, 178f, arg_1.x)), arg_2.x), min(u_input.b.xz, vec2<u32>(u_input.b.x, var_1))), arg_1), vec2<bool>(_wgslsmith_f_op_f32(arg_2.x + -1039f) <= arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1005f, -227f))) >= _wgslsmith_f_op_f32(floor(-261f))), Struct_1(vec3<i32>(u_input.c.x, _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_div_i32(countOneBits(-2147483647i), _wgslsmith_sub_i32(15063i, u_input.a))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2045f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(444f, 1450f)), -304f), _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c.x, firstLeadingBit(-1i)), countOneBits(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x)))), select(u_input.b.wy, _wgslsmith_clamp_vec2_u32(u_input.b.wx, vec2<u32>(var_1, var_1), _wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(81950u, u_input.b.x))), vec2<bool>(true, false)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-20188i, u_input.a, 1i, -10120i), vec4<i32>(3484i, -2147483647i, u_input.a, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 5546i, 1i, -2147483647i), vec4<i32>(-23862i, u_input.c.x, u_input.c.x, u_input.a))) >> (firstLeadingBit(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 67269u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 835f;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, var_0, -371f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(831f, 1000f, var_0, var_0) + vec4<f32>(var_0, 404f, -829f, var_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, 1419f, var_0, var_0), vec4<f32>(-1818f, var_0, var_0, var_0)))))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    global1 = ~13410u;
    let var_2 = func_1(vec4<bool>(true, true, true, true), var_1.a.yx, vec4<f32>(320f, var_0, 1129f, var_0));
    global1 = 26176u;
    var var_3 = false;
    let var_4 = abs(24737u) <= u_input.b.x;
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-845f + var_1.a.x) * _wgslsmith_f_op_f32(select(var_2.d.e.x, -310f, var_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-3071f, var_0) - _wgslsmith_f_op_f32(select(-517f, -1397f, true))), _wgslsmith_f_op_f32(round(-285f)))));
    var var_6 = func_1(select(select(select(!vec4<bool>(var_4, true, true, false), !vec4<bool>(var_4, false, true, false), !var_2.c.x), !(!vec4<bool>(true, var_2.c.x, false, false)), var_4), vec4<bool>(var_2.d.a.x < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 41866i, u_input.a, var_2.d.c), var_2.e), !all(vec2<bool>(var_2.c.x, true)), !any(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x)), u_input.b.x < firstTrailingBit(20482u)), any(!(!vec4<bool>(var_4, var_2.c.x, true, true)))), vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(sign(642f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(733f, var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.a.x), -1119f), -566f, var_2.b.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(min(func_1(vec4<bool>(true, true, var_4, false), var_6.b.b.zz, vec4<f32>(var_0, var_2.d.e.x, var_5.a.x, var_0)).e.x, var_2.e.x), var_2.e.x, u_input.a, firstLeadingBit(firstTrailingBit(u_input.c.x))) | (vec4<i32>(~var_2.d.a.x, i32(-1i) * -2147483647i, -u_input.a, countOneBits(2147483647i)) | _wgslsmith_sub_vec4_i32(var_2.e, select(vec4<i32>(31040i, var_2.e.x, var_2.b.a.x, 21900i), vec4<i32>(-42252i, 0i, -1i, var_2.a.x), vec4<bool>(var_6.c.x, var_4, false, false)))), _wgslsmith_f_op_f32(step(var_0, 907f)), _wgslsmith_add_u32(~var_6.b.d.x, select(4294967295u, 2448u, true)), var_5.a.zwx);
}

