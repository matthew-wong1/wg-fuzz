struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 227f;

var<private> global1: array<Struct_3, 21>;

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, 1154f, 947f, arg_0.a)) + vec4<f32>(_wgslsmith_div_f32(-1324f, arg_1.x), -2280f, _wgslsmith_f_op_f32(step(-1367f, 525f)), 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1200f, arg_0.a, -412f, 320f))) * vec4<f32>(arg_1.x, arg_0.a, arg_0.a, arg_1.x)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.a + -170f), arg_1.x, -1622f, _wgslsmith_f_op_f32(sign(373f))))));
    var var_1 = 4294967295u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(arg_0.a + -264f), -u_input.b.x & 1i);
    var var_3 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))), vec3<bool>(all(vec2<bool>(true, true)), true, true)), vec3<bool>(any(vec4<bool>(false, false, true, false)) | true, true || (u_input.b.x < u_input.b.x), false)), vec3<bool>(~abs(15014u) >= u_input.c, false, true), false);
    var var_4 = 29846i;
    return !select(!select(select(vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(false, false, false), var_3.x), !vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, var_3.x, true)), !(!vec3<bool>(var_3.x, true, true)), firstTrailingBit(~u_input.c) >= u_input.c);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = !func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1681f, 197f) + -678f), countOneBits(_wgslsmith_div_i32(u_input.b.x, u_input.b.x))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 45192u, u_input.a), vec3<u32>(arg_0, 4294967295u, u_input.c))), 25u)]);
    var var_1 = -1107f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f + -227f)) * _wgslsmith_f_op_f32(240f + _wgslsmith_f_op_f32(step(-271f, _wgslsmith_f_op_f32(f32(-1f) * -344f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -891f), -130f)), _wgslsmith_f_op_f32(f32(-1f) * -948f), var_0.x)));
    global2 = u_input.b.x;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(418f, 636f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + _wgslsmith_f_op_f32(trunc(-1475f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1802f - _wgslsmith_f_op_f32(1698f - -440f)))), _wgslsmith_f_op_f32(sign(1f))), Struct_1(firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.a, arg_0)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, arg_0)) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0 ^ 0u, 112504u, ~18891u, u_input.c), ~vec4<u32>(33u, 41602u, u_input.a, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(78073u, 1u, 33378u, arg_0), vec4<u32>(arg_0, 73064u, u_input.a, 3113u), vec4<u32>(u_input.c, arg_0, 3558u, arg_0)))));
}

fn func_1() -> i32 {
    let var_0 = func_2(select(u_input.a, 1u, true), (true & any(vec4<bool>(true, false, false, false))) || false);
    global1 = array<Struct_3, 21>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    global1 = array<Struct_3, 21>();
    var var_1 = var_0.b.b != 1u;
    return -_wgslsmith_div_i32(u_input.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec2<i32>(select(u_input.b.x, -1i, true), func_1()) & -vec2<i32>(2147483647i, _wgslsmith_sub_i32(2147483647i, 48055i)), abs(u_input.b.zz));
    var var_1 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.c, 29874u, 71233u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u) >> (vec3<u32>(4294967295u, u_input.a, u_input.c) % vec3<u32>(32u)), min(vec3<u32>(u_input.c, u_input.a, u_input.c), vec3<u32>(u_input.c, 1u, 58229u)))), ~(vec3<u32>(u_input.a, u_input.c, 0u) >> (firstLeadingBit(vec3<u32>(10560u, 0u, u_input.c)) % vec3<u32>(32u))));
    var var_2 = ~(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, ~u_input.b.x, func_1()), vec3<i32>(min(34265i, -29973i), -3943i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, -16764i), u_input.b))) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 49992u, var_1.x), vec3<u32>(u_input.c, 28160u, 15405u)), ~var_1.x, select(u_input.c >> (1u % 32u), u_input.a, any(vec3<bool>(true, true, true)))) % vec3<u32>(32u)));
    global3 = array<vec3<f32>, 25>();
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(284f, -2204f, -395f, -1181f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, -386f, -1000f, -1293f))))), vec4<f32>(func_2(var_1.x, true).a.x, 1649f, _wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1110f, 616f)) - func_2(61864u, true).a.x))), Struct_1(select(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_1.xx), ~vec2<u32>(70718u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 22689u) ^ var_1.xx, firstTrailingBit(var_1.xx), func_2(u_input.c, true).b.a), true), 6359u));
    let var_4 = var_3.a.xx;
    global1 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_3.a.xxw))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_3.b.a.x, abs(4294967295u), reverseBits(var_1.x), abs(4294967295u))), ~(~(~vec4<u32>(1u, 4294967295u, var_3.b.b, 80438u)))), _wgslsmith_add_vec4_i32(-(min(vec4<i32>(u_input.b.x, 29711i, 13611i, var_2.x), vec4<i32>(u_input.b.x, 0i, 26602i, var_0.x)) & abs(vec4<i32>(var_0.x, -1i, 0i, u_input.b.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.x, 1i, _wgslsmith_div_i32(var_0.x, var_0.x)), countOneBits(-vec4<i32>(2147483647i, u_input.b.x, 7953i, 26246i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), 1460f, -608f, _wgslsmith_f_op_f32(exp2(var_3.a.x))))) * _wgslsmith_f_op_vec4_f32(var_3.a + var_3.a)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, 6840i), 13636i));
}

