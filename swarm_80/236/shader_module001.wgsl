struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1i, firstLeadingBit(-8232i), reverseBits(~(-19395i)), _wgslsmith_mult_i32(-u_input.b, abs(2147483647i))), abs(~(-vec4<i32>(-1i, u_input.b, -9752i, u_input.b)))));
    global0 = global1[_wgslsmith_index_u32(~firstLeadingBit(~(~9339u) >> (reverseBits(u_input.c.x) % 32u)), 7u)];
    global0 = global1[_wgslsmith_index_u32(1u, 7u)];
    global1 = array<Struct_2, 7>();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global0.a, 1u, u_input.c.x), 7u)];
    return ~var_0.x >> (arg_0.x % 32u);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(766f, 148f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(707f)))))))));
    let var_1 = ~arg_2;
    let var_2 = min(-u_input.b, 0i | -(~u_input.b));
    var var_3 = ~u_input.c.x;
    global0 = Struct_2(select(max(~_wgslsmith_add_u32(40510u, 0u), countOneBits(38637u)), 8171u, true));
    return _wgslsmith_dot_vec3_i32(~(abs(~vec3<i32>(var_1, -31674i, -50825i)) << (~max(vec3<u32>(global0.a, 23208u, 0u), u_input.a.www) % vec3<u32>(32u))), -(~max(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2, 1i, arg_2), vec3<i32>(var_1, -31292i, u_input.b)), -vec3<i32>(u_input.b, u_input.b, var_2))));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0.e.wy;
    let var_1 = vec4<i32>(-27074i, u_input.b, firstTrailingBit(~arg_0.a), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, 26274i, arg_0.a), ~vec4<i32>(arg_0.a, 1i, -68020i, arg_0.a)), abs(vec4<i32>(-53611i, -12430i, u_input.b, arg_0.a))) >> (53745u % 32u));
    global1 = array<Struct_2, 7>();
    var var_2 = vec3<u32>(~u_input.c.x, _wgslsmith_add_u32(u_input.a.x, 30374u), ~(~48208u));
    var var_3 = _wgslsmith_sub_i32(arg_0.a | _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(reverseBits(-2147483647i), var_1.x & 0i, _wgslsmith_div_i32(16901i, 1049i)), func_4(arg_0.d.x, !arg_0.d.x, func_3(u_input.a)), u_input.b), min(-(~(-41967i)) >> (~var_2.x % 32u), arg_0.b));
    return u_input.a.zzx;
}

fn func_1() -> f32 {
    global1 = array<Struct_2, 7>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(u_input.a.yyy, u_input.a.wxw)), _wgslsmith_clamp_vec3_u32(~(~u_input.a.zyw), _wgslsmith_add_vec3_u32(func_2(Struct_1(u_input.b, u_input.b, vec2<bool>(false, false), vec3<bool>(true, false, true), vec4<f32>(-1773f, 636f, -1000f, -829f))), _wgslsmith_add_vec3_u32(vec3<u32>(57033u, global0.a, 1u), u_input.a.wwz)), _wgslsmith_sub_vec3_u32(~vec3<u32>(2254u, 86926u, global0.a), ~vec3<u32>(1u, 6749u, u_input.c.x)))), vec3<u32>(global0.a ^ 50093u, _wgslsmith_add_u32(6053u, _wgslsmith_add_u32(68029u, 56774u)), ~u_input.c.x));
    global0 = global1[_wgslsmith_index_u32(~reverseBits(1u), 7u)];
    var var_1 = var_0.x;
    var_0 = firstLeadingBit(vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(24669u, u_input.d.x, global0.a, 1u)), 62855u, 15658u));
    return -760f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) + 989f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1324f)), 1550f))), true, all(select(vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true), true)), false);
    let var_1 = Struct_1(u_input.b, 11060i, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2162f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2260f + -1349f) + 342f), var_0.x), var_0.zww, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1722f, -1000f, 1000f, -744f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, 318f, 1105f, -870f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1333f), _wgslsmith_f_op_f32(floor(909f)), -1171f, -652f), !all(var_0.wwz))), _wgslsmith_div_vec4_f32(vec4<f32>(-1933f, -411f, _wgslsmith_f_op_f32(-1980f * -871f), _wgslsmith_f_op_f32(abs(-291f))), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = _wgslsmith_div_i32(u_input.b, 10248i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.e.yyw) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, 1579f, var_1.e.x)))))), _wgslsmith_f_op_vec3_f32(var_1.e.xwx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.e.xww + vec3<f32>(177f, -926f, var_1.e.x))))), global0.a, var_1.e);
}

