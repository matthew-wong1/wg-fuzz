struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 32927u;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, vec2<u32>(1u, 1u), 0u, vec3<f32>(1479f, 710f, -682f), vec2<f32>(-300f, 1699f)), Struct_1(true, vec2<u32>(4294967295u, 4294967295u), 42902u, vec3<f32>(1229f, -875f, -169f), vec2<f32>(1792f, -759f)), -1i, vec2<f32>(-232f, 1811f), false);

var<private> global2: array<vec4<bool>, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec3<u32> {
    let var_0 = -1i >> (1u % 32u);
    let var_1 = Struct_1(!(_wgslsmith_clamp_u32(u_input.b, 0u, 1u) <= min(min(15027u, 4294967295u), ~u_input.a)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1.b.b, global1.a.b) << (~vec2<u32>(global1.a.b.x, u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 17073u), ~global1.a.b)), global1.a.c), _wgslsmith_mod_u32(max(4294967295u, min(17082u, min(60771u, global1.a.b.x))), 4294967295u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(850f)), 1362f, _wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(-global1.a.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1414f, global1.d.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, global1.b.e.x)), !global1.b.a))));
    var var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, global1.b.d.x, 1482f, global1.b.e.x) * vec4<f32>(635f, global1.a.e.x, var_1.d.x, 1554f))))))));
    var_2 = global1.b;
    return vec3<u32>(~21221u, 29612u, var_2.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> vec3<u32> {
    var var_0 = -reverseBits(vec4<i32>(u_input.c, u_input.c, u_input.c, -59886i ^ u_input.c)) >> (vec4<u32>(0u, arg_0.c.b.b.x, select(abs(_wgslsmith_clamp_u32(arg_0.b.x, u_input.a, global1.a.b.x)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_2.a.b.x, arg_0.c.b.c), _wgslsmith_add_u32(global1.a.c, arg_0.c.b.c), firstTrailingBit(global1.a.b.x)), global1.e), ~52695u) % vec4<u32>(32u));
    var var_1 = arg_0.c.b;
    var var_2 = abs(vec3<i32>(15262i, 6771i, arg_2.c) << (arg_0.a % vec3<u32>(32u)));
    var_2 = var_0.xzz;
    let var_3 = Struct_2(global1.b, Struct_1(!select(true & global1.e, global1.e, true), ~var_1.b, abs(_wgslsmith_mult_u32(max(51978u, arg_0.c.a.c), _wgslsmith_dot_vec2_u32(arg_0.c.b.b, arg_2.b.b))), arg_0.c.a.d, _wgslsmith_f_op_vec2_f32(-arg_2.a.e)), ~(_wgslsmith_clamp_i32(1i, u_input.c, max(arg_2.c, -2147483647i)) << ((arg_0.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(25529u, global1.b.b.x, 14036u, var_1.c), vec4<u32>(var_1.c, 33913u, global1.a.c, var_1.b.x)) % 32u)) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.d.yx * arg_0.d.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, arg_2.a.d.x)), true)), vec2<f32>(709f, _wgslsmith_f_op_f32(arg_2.a.e.x + -1636f))))), !(select(!var_1.a, arg_2.e, true) | true));
    return _wgslsmith_div_vec3_u32(~vec3<u32>(var_3.a.c, ~_wgslsmith_add_u32(global1.b.c, var_1.b.x), 1u), _wgslsmith_mult_vec3_u32(arg_0.b, abs(vec3<u32>(u_input.b, 15368u, 42635u))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: bool) -> vec2<f32> {
    global2 = array<vec4<bool>, 13>();
    let var_0 = global1.b;
    var var_1 = firstLeadingBit(abs(vec4<i32>(global1.c, ~firstLeadingBit(-11916i), _wgslsmith_mod_i32(arg_0 & 0i, arg_0), 19603i)));
    var var_2 = Struct_3(func_4(Struct_3(func_3(), ~(~vec3<u32>(58021u, 1u, 65079u)), Struct_2(Struct_1(global1.a.a, vec2<u32>(var_0.b.x, 52609u), u_input.a, var_0.d, global1.a.d.yy), global1.b, 0i, _wgslsmith_f_op_vec2_f32(-global1.a.d.zx), global1.a.a && true), vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), 1642f, _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_div_f32(1035f, global1.a.e.x)) + var_0.e), Struct_2(global1.a, global1.b, -33019i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.xz)), !arg_3), _wgslsmith_f_op_vec4_f32(vec4<f32>(-107f, 730f, global1.d.x, _wgslsmith_f_op_f32(-941f * -706f)) - vec4<f32>(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.d.x)), 754f, _wgslsmith_f_op_f32(round(-997f)), _wgslsmith_div_f32(global1.d.x, var_0.d.x)))), _wgslsmith_mod_vec3_u32(reverseBits((vec3<u32>(var_0.c, 1u, arg_2.x) & vec3<u32>(arg_2.x, var_0.c, arg_2.x)) << (~vec3<u32>(4294967295u, 4916u, u_input.a) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.x, u_input.a, 22994u), vec4<u32>(u_input.b, 4294967295u, global1.b.b.x, 1u)), ~80322u, global1.a.c) | vec3<u32>(global1.a.c, 88578u, 4294967295u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.a.e.x * 1000f) <= -128f, (global1.b.b ^ vec2<u32>(1u, var_0.c)) | vec2<u32>(4294967295u, u_input.a), arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1959f, -976f, 883f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.d.x, -435f))), global1.a, 23871i, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1558f, var_0.e.x, global1.b.a)))), _wgslsmith_f_op_f32(f32(-1f) * -208f)), arg_3 && false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, global1.b.e.x, -231f))))));
    let var_3 = abs(firstTrailingBit(-vec4<i32>(u_input.c, -51852i, 1i, var_1.x) & vec4<i32>(arg_0, u_input.c, max(global1.c, arg_1.x), var_1.x)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(global1.b.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2476f, global1.d.x))) * var_0.e))))) * _wgslsmith_f_op_vec2_f32(exp2(global1.a.d.yx)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(global1.e, ~(~select(arg_0, global1.a.b, vec2<bool>(global1.b.a, true))), global1.b.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a.d, vec3<f32>(1437f, -414f, 279f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.d.x, -1000f, global1.a.d.x) + global1.b.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.e * _wgslsmith_f_op_vec2_f32(func_2(u_input.c, vec2<i32>(2934i, 5206i), arg_0, true))))), global1.a, global1.c, vec2<f32>(global1.a.d.x, -749f), false);
    let var_1 = !select(!select(select(vec3<bool>(true, global1.a.a, true), vec3<bool>(arg_1, true, var_0.b.a), vec3<bool>(global1.b.a, false, true)), !vec3<bool>(arg_1, false, true), vec3<bool>(true, arg_1, false)), !vec3<bool>(true, all(vec3<bool>(false, arg_1, true)), true), all(!vec4<bool>(arg_1, true, global1.b.a, global1.e)));
    var var_2 = Struct_2(Struct_1(true, ~vec2<u32>(var_0.b.c ^ 1u, u_input.a), arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, global1.d.x, 816f) - var_0.a.d), var_0.b.d) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_div_f32(-1080f, -200f), global1.a.e.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-477f, global1.d.x), global1.b.e, !var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.e.x, global1.d.x), vec2<f32>(global1.d.x, 264f)))))), Struct_1(any(!select(var_1.zy, vec2<bool>(arg_1, true), vec2<bool>(true, var_0.b.a))), min(~(arg_0 ^ var_0.a.b), ~arg_0), abs(countOneBits(~84942u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.b.d - _wgslsmith_f_op_vec3_f32(min(global1.b.d, vec3<f32>(-1287f, -1549f, -420f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.d + var_0.b.d)))), var_0.b.e), firstLeadingBit(min(_wgslsmith_mod_i32(18614i, u_input.c) << ((var_0.b.b.x ^ u_input.b) % 32u), -1i)), vec2<f32>(var_0.a.e.x, 1904f), max(i32(-1i) * -37546i, 1i) <= global1.c);
    var var_3 = select(!var_1.yz, var_1.xx, var_1.zy);
    let var_4 = global1.b.e;
    return Struct_2(Struct_1(var_4.x < 235f, var_2.b.b, 6225u, var_0.b.d, vec2<f32>(var_4.x, _wgslsmith_f_op_f32(-var_2.d.x))), Struct_1(!var_3.x, vec2<u32>(arg_0.x >> (~global1.b.c % 32u), 1u), countOneBits(4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1678f, 2256f, -212f) + var_0.a.d))), var_2.b.d, var_1.x)), var_2.a.e), 63090i, vec2<f32>(_wgslsmith_f_op_f32(747f + -1864f), _wgslsmith_f_op_f32(-var_4.x)), var_0.b.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: u32) -> vec3<f32> {
    global2 = array<vec4<bool>, 13>();
    global2 = array<vec4<bool>, 13>();
    var var_0 = Struct_4(vec2<u32>(_wgslsmith_clamp_u32(arg_3, func_3().x, _wgslsmith_clamp_u32(arg_3 >> (31338u % 32u), 1u, 7650u >> (global1.b.c % 32u))), abs(_wgslsmith_sub_u32(arg_0.b.c, 4294967295u) >> (global1.a.b.x % 32u))), vec2<bool>(select(global1.e, global1.b.a, arg_0.e), false), Struct_3(select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, global1.b.b.x, global1.b.b.x), vec3<u32>(arg_0.b.c, arg_0.a.c, arg_0.b.b.x)), _wgslsmith_mod_u32(arg_0.b.c, global1.a.b.x), func_3().x), vec3<u32>(0u, ~73586u, firstLeadingBit(97678u)), !arg_1.x), vec3<u32>(~_wgslsmith_add_u32(global1.b.c, 0u), ~9864u, global1.a.b.x), arg_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(global1.b.d))))));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(-(~global1.c), -2147483647i), 14529i, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, arg_0.c, 18313i), vec3<i32>(0i, 28752i, var_0.c.c.c))) & u_input.c);
    global0 = firstLeadingBit(_wgslsmith_clamp_u32(abs(20953u), ~59727u, 4294967295u));
    return vec3<f32>(1264f, arg_0.a.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.d.x))))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    global0 = 60477u;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) - _wgslsmith_f_op_f32(ceil(658f)))), arg_1.x);
    global1 = func_1(select(~reverseBits(vec2<u32>(52820u, 65573u)), global1.a.b, arg_2.xz), arg_3.a);
    var var_1 = func_1(~_wgslsmith_div_vec2_u32(select(vec2<u32>(6081u, global1.a.c), global1.b.b, vec2<bool>(false, false)), abs(vec2<u32>(arg_3.c, 75793u))) << ((global1.b.b ^ ~global1.b.b) % vec2<u32>(32u)), _wgslsmith_f_op_f32(max(global1.d.x, 1000f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(abs(arg_1.x)));
    return var_1.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_add_vec3_i32(~min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 42718i, u_input.c), vec3<i32>(1i, 17462i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.c, -9565i, global1.c), vec3<i32>(0i, global1.c, 16356i))), ~firstTrailingBit(select(vec3<i32>(-1i, global1.c, 260i), vec3<i32>(-15977i, -1i, -1i), vec3<bool>(true, global1.e, global1.a.a)))), _wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global1.b.b, global1.a.b), vec2<u32>(global1.a.b.x, u_input.b)), false), vec4<bool>(all(vec2<bool>(true, true)), !(!global1.b.a), true, !(global1.b.e.x < 1136f)), countOneBits(vec2<i32>(global1.c, 2147483647i)), func_3().x)), select(!(!select(vec3<bool>(false, global1.e, false), vec3<bool>(true, global1.a.a, false), vec3<bool>(false, true, global1.a.a))), select(!(!vec3<bool>(global1.b.a, global1.a.a, global1.e)), vec3<bool>(false & global1.b.a, false && global1.e, false), true), vec3<bool>(any(!vec2<bool>(global1.b.a, global1.e)), _wgslsmith_clamp_u32(u_input.a, 1u, 6290u) != u_input.b, select(global1.b.a, true && global1.b.a, false != global1.b.a))), func_1(global1.b.b, global1.a.a).a);
    let var_1 = ~_wgslsmith_add_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(u_input.c, global1.c, global1.c, -1i)) | vec4<i32>(_wgslsmith_add_i32(u_input.c, 14084i), 2147483647i, -1i, ~53657i), vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(global1.c, global1.c, global1.c)), -_wgslsmith_sub_i32(-19810i, global1.c), _wgslsmith_sub_i32(31550i, 2147483647i), global1.c));
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_add_i32(var_1.x, global1.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1791f, _wgslsmith_f_op_f32(516f - -1125f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.e.x)))), all(vec4<bool>(global1.b.a, true, global1.a.c > func_6(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec3<f32>(global1.a.d.x, -1637f, -1243f), vec3<bool>(global1.b.a, global1.b.a, false), global1.b), true)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(680f + -208f)))))));
    var var_3 = ~abs(firstTrailingBit(firstLeadingBit(reverseBits(-2147483647i))));
    var var_4 = _wgslsmith_div_f32(517f, _wgslsmith_f_op_vec2_f32(func_2(~var_1.x, firstTrailingBit(-var_1.yz), func_3().zx, global1.e)).x);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * 860f))), -355f);
    global2 = array<vec4<bool>, 13>();
    global1 = Struct_2(global1.a, func_1(~vec2<u32>(firstTrailingBit(110260u), abs(58334u)), !func_1(vec2<u32>(var_0, 19692u), any(vec3<bool>(true, false, true))).b.a).a, u_input.c, _wgslsmith_f_op_vec2_f32(-global1.a.d.yy), global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.yw, (vec2<i32>(u_input.c, global1.c) ^ vec2<i32>(0i, var_1.x)) >> (~global1.b.b % vec2<u32>(32u))), -2147483647i), min(var_0, countOneBits(_wgslsmith_mod_u32(~global1.b.c, func_3().x))));
}

