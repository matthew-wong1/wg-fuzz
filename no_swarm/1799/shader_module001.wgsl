struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 8>;

var<private> global2: Struct_1 = Struct_1(1354f, -2656i, vec4<f32>(1939f, 254f, -663f, -291f), 8701u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-324f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, -123f))), _wgslsmith_f_op_f32(select(global2.c.x, global2.c.x, 1u > global2.d)), false)))));
    var var_0 = ~(~(~_wgslsmith_mod_u32(~u_input.a.x, u_input.a.x)));
    var_0 = abs(firstTrailingBit(u_input.a.x));
    let var_1 = _wgslsmith_add_u32(reverseBits(~4294967295u), u_input.a.x);
    let var_2 = Struct_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(71994u, 0u, var_1, _wgslsmith_add_u32(0u, var_1)), min(vec4<u32>(global2.d, var_1, var_1, var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.d, var_1, 825u, var_1), vec4<u32>(u_input.a.x, u_input.a.x, global2.d, global2.d)))), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(19329u, var_1), 0u, global2.d, ~21073u)), select(min(abs(vec4<u32>(4294967295u, 42089u, 52148u, 35650u)), firstLeadingBit(vec4<u32>(u_input.a.x, var_1, global2.d, var_1))), ~reverseBits(vec4<u32>(u_input.a.x, 0u, 4294967295u, 28464u)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false))), abs(~abs(abs(vec3<u32>(var_1, var_1, 4294967295u)))), Struct_2(Struct_1(global2.a, -(global2.b | global2.b), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), 491f, global2.c.x, _wgslsmith_f_op_f32(select(global2.a, -913f, true))), 4294967295u), ~vec3<i32>(arg_0.x, 0i, -arg_0.x), var_1, -arg_0.ww, Struct_1(773f, arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.c.x, global2.a))), _wgslsmith_mod_u32(select(global2.d, global2.d, true), ~u_input.a.x))), ((countOneBits(var_1) | _wgslsmith_clamp_u32(47730u, 1u, u_input.a.x)) ^ max(global2.d, _wgslsmith_mult_u32(0u, u_input.a.x))) < abs(38585u));
    return _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(3431u, u_input.a.x, 4294967295u)), ~var_2.b), var_2.a.xzy & countOneBits(~var_2.b), var_2.b), firstTrailingBit(vec3<u32>(~4294967295u, 27902u, ~(~var_2.c.a.d))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = 20960u;
    var var_1 = Struct_3(~(~select(~vec4<u32>(61717u, u_input.a.x, 57673u, 28761u), vec4<u32>(16399u, u_input.a.x, global2.d, 0u), vec4<bool>(true, true, true, true))), ~func_3(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-34570i, arg_0, 1i, global2.b)), vec4<i32>(arg_1, 4924i, -2147483647i, global2.b))), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(round(global2.c.x))), -1i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(global2.c)))), func_3(abs(vec4<i32>(2147483647i, -1i, arg_0, arg_0))).x), ~select(-vec3<i32>(arg_0, 1i, -10965i), vec3<i32>(1i, 1i, 1i), vec3<bool>(true, true, false)), u_input.a.x, -reverseBits(vec2<i32>(global2.b, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f + global2.a)), -1i << (_wgslsmith_sub_u32(global2.d, 0u) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c) - vec4<f32>(1381f, -1657f, global2.a, global2.a)), ~1u)), false);
    global1 = array<vec3<f32>, 8>();
    let var_2 = -861f;
    let var_3 = var_1.a.wzx;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + var_2)), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2 * global2.a), _wgslsmith_f_op_f32(round(global2.c.x)), _wgslsmith_f_op_f32(floor(1062f)), _wgslsmith_f_op_f32(abs(-1000f)))))), var_3.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<u32> {
    global1 = array<vec3<f32>, 8>();
    global2 = func_2(-27451i, i32(-1i) * -3624i);
    let var_0 = Struct_3(_wgslsmith_div_vec4_u32(select(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(802u, arg_1.x, u_input.a.x, global2.d), vec4<u32>(global2.d, arg_0.x, global2.d, u_input.a.x))), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(40640u, arg_1.x, u_input.a.x, u_input.a.x), vec4<u32>(arg_0.x, 95752u, global2.d, 13955u))), all(vec2<bool>(false, false)) | true), vec4<u32>(u_input.a.x, global2.d, ~_wgslsmith_div_u32(4294967295u, arg_1.x), arg_0.x)), min(arg_1, arg_1), Struct_2(Struct_1(-855f, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b, arg_2, -60612i, -2147483647i), vec4<i32>(arg_2, global2.b, global2.b, -27590i)), -vec4<i32>(arg_2, 40907i, 8979i, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, -511f, global2.c.x, global2.a)), ~(~arg_0.x)), countOneBits(vec3<i32>(arg_2, _wgslsmith_add_i32(arg_2, arg_2), _wgslsmith_sub_i32(-2143i, 1i))), firstLeadingBit(arg_1.x), vec2<i32>(-1i) * -vec2<i32>(global2.b, 76909i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-101f, global2.a))), arg_2, vec4<f32>(_wgslsmith_f_op_f32(global2.a * global2.c.x), global2.a, _wgslsmith_f_op_f32(abs(global2.a)), 432f), u_input.a.x)), 52846i < (firstTrailingBit(~arg_2) & ~(~global2.b)));
    global2 = var_0.c.e;
    var var_1 = _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1188f)), -868f)));
    return vec3<u32>(abs(1u), ~firstLeadingBit(var_0.a.x), arg_1.x & reverseBits(u_input.a.x)) | var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(u_input.a);
    global1 = array<vec3<f32>, 8>();
    var var_1 = global2.b;
    let var_2 = !(_wgslsmith_f_op_f32(trunc(-1000f)) != 1495f);
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(9696u, u_input.a.x), 4294967295u), u_input.a);
    var var_3 = Struct_3(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 35086u, u_input.a.x, var_0.x), ~vec4<u32>(65887u, global2.d, global2.d, u_input.a.x)), ~vec4<u32>(91940u, global2.d, u_input.a.x, global2.d)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, u_input.a.x) ^ 1u, _wgslsmith_mod_u32(1u, u_input.a.x)), ~max(_wgslsmith_clamp_u32(2807u, 4294967295u, global2.d), 6629u), _wgslsmith_mod_u32(_wgslsmith_div_u32(~57444u, min(var_0.x, 14267u)), _wgslsmith_mod_u32(1u, var_0.x) ^ (4146u & u_input.a.x))), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -144f), 2147483647i, _wgslsmith_f_op_vec4_f32(exp2(global2.c)), ~(~u_input.a.x)), -((vec3<i32>(28269i, -16379i, global2.b) & vec3<i32>(global2.b, global2.b, -12253i)) >> (func_1(vec2<u32>(global2.d, global2.d), vec3<u32>(60755u, u_input.a.x, 4294967295u), 1i) % vec3<u32>(32u))), func_2(~global2.b, global2.b).d, vec2<i32>(_wgslsmith_clamp_i32(global2.b | 0i, -23242i, -1i), global2.b), func_2(~_wgslsmith_mult_i32(global2.b, 55464i), abs(_wgslsmith_add_i32(-50120i, global2.b)))), select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-554f + global2.c.x), _wgslsmith_f_op_f32(ceil(global2.c.x)), !var_2)) == _wgslsmith_f_op_f32(ceil(-526f)), !(!select(var_2, var_2, var_2)), !(!(true | var_2))));
    var var_4 = countOneBits(-abs(~vec2<i32>(global2.b, 40381i) ^ reverseBits(var_3.c.b.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1890f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f * var_3.c.e.c.x)), !(!var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-651f * _wgslsmith_f_op_f32(round(1900f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.a.a - -519f) - -205f), 822f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, -306f, var_3.c.e.c.x))))), u_input.a.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4.x ^ 36872i, firstLeadingBit(var_4.x), global2.b, var_3.c.a.b & var_3.c.a.b), -(vec4<i32>(var_3.c.e.b, -2147483647i, 2147483647i, global2.b) & vec4<i32>(1i, -2147483647i, 0i, -31428i))), -37664i, _wgslsmith_clamp_i32(max(global2.b >> (global2.d % 32u), global2.b), 28657i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_3.c.d.x, 1i, -56216i), -2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-556f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.e.c.x))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(round(-172f))))));
}

