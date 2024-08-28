struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2015f * 1000f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1775f), _wgslsmith_f_op_f32(trunc(120f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-442f, -183f, -1158f, 2682f) * vec4<f32>(1693f, 1000f, -1295f, -1004f))))), false))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(-135f)), var_0.x, var_0.x)));
    var var_1 = true;
    let var_2 = Struct_3(Struct_1(_wgslsmith_sub_u32(u_input.d.x ^ 1u, u_input.e.x ^ u_input.d.x), select(_wgslsmith_mod_i32(u_input.b.x, u_input.c) == (-2147483647i >> (u_input.e.x % 32u)), (u_input.a ^ u_input.b.x) <= u_input.a, u_input.e.x < ~1u), u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.yz)) + var_0.yy), vec2<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x), vec2<bool>(true, true)))), vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), true, any(vec3<bool>(true, true, true)), u_input.d.x == u_input.d.x), Struct_2(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 72286i, u_input.b.x, -12386i), vec4<i32>(-30741i, -31912i, -281i, u_input.a)) | vec4<i32>(u_input.c, u_input.b.x, -1i, 1i), select(vec4<i32>(u_input.b.x, -1082i, 51817i, -18342i) | vec4<i32>(1i, u_input.b.x, u_input.b.x, 1i), max(vec4<i32>(u_input.c, 11254i, u_input.c, u_input.c), vec4<i32>(-1i, 0i, u_input.c, u_input.a)), vec4<bool>(true, true, false, false)))));
    var var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(14586i, 2147483647i)), 67258i, u_input.c, ~44225i) >> (~min(vec4<u32>(u_input.e.x, 74532u, var_2.a.a, 4294967295u), vec4<u32>(var_2.a.a, var_2.a.a, var_2.a.a, 1u)) % vec4<u32>(32u)), vec4<i32>(u_input.a ^ var_2.c.a, -2147483647i, abs(max(u_input.a, -58146i)), u_input.a), vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yy), ~var_2.a.c, (i32(-1i) * -2147483647i) << (_wgslsmith_add_u32(1u, u_input.e.x) % 32u), _wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_2.c.a, var_2.c.a), u_input.b), -13156i))) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(max(var_2.a.a, 2167u), u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.a, u_input.e.x, 1u), vec3<u32>(16626u, 67211u, 2969u)), ~u_input.e.x)), firstLeadingBit(firstTrailingBit(~vec4<u32>(var_2.a.a, 53814u, 0u, u_input.d.x)))) % vec4<u32>(32u));
    return -822f;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec4<bool> {
    global0 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(1336f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * -536f) * _wgslsmith_f_op_f32(func_3())))));
    var_0 = 367f;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, arg_3.x, arg_0.x, -288f) + vec4<f32>(-497f, arg_1.x, 1283f, -478f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_3.x, -1363f, 1000f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_1.xzx * _wgslsmith_f_op_vec3_f32(var_1.wzw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.yyz - vec3<f32>(326f, arg_0.x, arg_0.x))))));
    return !select(select(vec4<bool>(false, any(vec4<bool>(false, false, false, false)), true, true), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, true));
}

fn func_1() -> Struct_1 {
    let var_0 = 0i;
    let var_1 = u_input.d.x;
    global0 = array<vec2<f32>, 27>();
    var var_2 = Struct_3(Struct_1(1u, true, -firstLeadingBit(23512i), vec2<f32>(251f, -169f)), func_2(global0[_wgslsmith_index_u32(~(var_1 >> (var_1 % 32u)) ^ ~1u, 27u)], global0[_wgslsmith_index_u32(~(~(~var_1)), 27u)], select(vec4<i32>(2147483647i, 2147483647i, 13926i, u_input.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1, 0u, var_1), vec4<u32>(u_input.d.x, var_1, var_1, 30117u)) % vec4<u32>(32u)), vec4<i32>(-19112i, _wgslsmith_mult_i32(0i, 2624i), ~var_0, -40288i), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1583f))))), Struct_2(-firstTrailingBit(_wgslsmith_mult_i32(66374i, var_0))));
    return Struct_1(~_wgslsmith_mod_u32(~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, var_2.a.a, var_1), vec3<u32>(8504u, 57385u, 22262u))), var_2.b.x, ~var_0, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d, ~(~u_input.d)), 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    var var_0 = Struct_3(func_1(), !vec4<bool>(all(vec3<bool>(true, true, true)), true, true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))), Struct_2(1i));
    var var_1 = 74896i;
    let var_2 = vec4<i32>(8940i, -2147483647i, 2147483647i >> (_wgslsmith_sub_u32(func_1().a, abs(reverseBits(4574u))) % 32u), reverseBits(2147483647i));
    var_0 = Struct_3(var_0.a, !(!var_0.b), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~_wgslsmith_mult_i32(u_input.c, var_0.c.a), ~98771i), u_input.b, vec2<f32>(-1683f, -967f));
}

