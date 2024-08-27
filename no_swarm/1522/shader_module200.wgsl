struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_3,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_2(arg_1.c.b.a);
    let var_1 = Struct_3(-1137f, Struct_2(u_input.c.x), arg_1.c.b);
    let var_2 = _wgslsmith_add_i32(u_input.d, 41834i);
    var var_3 = var_2;
    var var_4 = _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1959u, 0u)), ~(~(~(~arg_1.b.wy))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 504f);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = !(-1093f < _wgslsmith_f_op_f32(397f * _wgslsmith_f_op_f32(-arg_0.c.x)));
    let var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-441f, -523f, _wgslsmith_add_u32(arg_0.a, u_input.a.x) > _wgslsmith_clamp_u32(arg_0.a, arg_2.b.x, arg_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(479f)))), reverseBits(vec4<u32>(114413u, u_input.a.x & 0u, ~(arg_2.c.c.a | 1u), _wgslsmith_add_u32(arg_2.e ^ u_input.a.x, 1u))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1629f), _wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(f32(-1f) * -480f)))), arg_2.c.b, arg_2.c.b), !(!(!select(vec3<bool>(true, true, arg_0.b.x), arg_0.b.zyx, arg_2.d))), abs(_wgslsmith_dot_vec4_u32(abs(u_input.b), vec4<u32>(u_input.c.x ^ 4294967295u, 1u, u_input.c.x, abs(arg_2.e)))));
    var_0 = all(select(select(!arg_0.b.ww, !var_1.d.zy, !(!vec2<bool>(arg_0.b.x, true))), vec2<bool>(false, !(arg_0.c.x <= arg_2.c.a)), var_1.d.x));
    let var_2 = !arg_0.b.x;
    var var_3 = Struct_4(-1190f, ~(~(~(~u_input.b))), Struct_3(_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-980f + arg_2.a))), arg_2.c.b, Struct_2(_wgslsmith_add_u32(u_input.b.x, 1u) | (1559u >> (var_1.c.c.a % 32u)))), !vec3<bool>(arg_0.b.x, 4294967295u < var_1.c.b.a, !(arg_0.c.x < arg_1.x)), u_input.a.x);
    return var_1.c.c;
}

fn func_1() -> u32 {
    var var_0 = func_3(global0[_wgslsmith_index_u32(30154u, 18u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(624f - 398f), 2028f)), 912f, _wgslsmith_f_op_f32(func_2(vec4<f32>(1177f, -1077f, -523f, 269f), Struct_4(-989f, vec4<u32>(u_input.a.x, 33873u, u_input.b.x, 4294967295u), Struct_3(1435f, Struct_2(u_input.c.x), Struct_2(1u)), vec3<bool>(true, false, false), u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f - -1375f) - _wgslsmith_f_op_f32(f32(-1f) * -1611f)))), Struct_4(_wgslsmith_div_f32(393f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<f32>(-494f, -1996f, -1103f, -1983f), Struct_4(1078f, vec4<u32>(0u, 0u, 4294967295u, u_input.b.x), Struct_3(-2463f, Struct_2(0u), Struct_2(1u)), vec3<bool>(true, false, false), 27494u))))), _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(8494u, 4294967295u, u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), Struct_3(1f, Struct_2(~u_input.b.x), Struct_2(u_input.c.x | u_input.a.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), ~4294967295u));
    let var_1 = ~29977i >> (_wgslsmith_sub_u32(var_0.a, _wgslsmith_mod_u32(~(~0u), var_0.a)) % 32u);
    var var_2 = Struct_1(var_0.a, !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1441f, -1142f, -377f), vec3<f32>(865f, -1573f, 1000f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(337f, -669f, 1700f), vec3<f32>(323f, -290f, 621f)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1598f, 1000f), vec3<f32>(-1793f, 1263f, -1000f))))), u_input.b.wy);
    var var_3 = -720i;
    var var_4 = u_input.e.x;
    return u_input.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(862f + 407f), u_input.b, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f - -565f)), Struct_2(arg_0.d.x), func_3(Struct_1(arg_0.d.x, select(arg_0.b, arg_0.b, arg_0.b.x), arg_0.c, ~vec2<u32>(77162u, u_input.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1592f, -250f, arg_0.c.x, arg_0.c.x))), Struct_4(1739f, ~u_input.b, Struct_3(-649f, Struct_2(arg_0.d.x), Struct_2(arg_2)), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(false, false, true), true), 1u & arg_2))), !(!vec3<bool>(arg_0.b.x, arg_0.b.x, all(vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)))), 38196u);
    global0 = array<Struct_1, 18>();
    var var_1 = countOneBits(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.d, -10642i & u_input.e.x)) << (arg_0.d % vec2<u32>(32u)));
    var var_2 = arg_0.b.ywz;
    global0 = array<Struct_1, 18>();
    return Struct_2((abs(arg_0.a) << (abs(4294967295u >> (u_input.a.x % 32u)) % 32u)) ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0[_wgslsmith_index_u32(func_1(), 18u)], vec4<i32>(2147483647i, _wgslsmith_add_i32(u_input.e.x, 1i), -2147483647i, _wgslsmith_mod_i32(~13775i, 5009i)), ~func_1(), _wgslsmith_f_op_f32(f32(-1f) * -313f));
    var var_1 = Struct_2(~_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(var_0.a, u_input.c.x | 0u)));
    var var_2 = all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), false), !((27596u <= var_0.a) && any(vec4<bool>(true, false, true, false)))));
    var var_3 = Struct_2(~countOneBits(20610u) ^ ~u_input.c.x);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1077f, -459f, 303f, 364f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(336f, 148f, -121f, 595f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(112f, 372f, -331f, -498f), vec4<f32>(-1068f, 1000f, -1000f, -885f), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1003f, 841f, -1492f, 978f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-949f, 118f, -570f, -199f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, 2672f, -998f, 838f))))));
    var var_5 = u_input.a;
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2055f, var_4.x)))), _wgslsmith_f_op_f32(f32(-1f) * -692f)), vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.e.x, 20768i), u_input.d | -11872i), u_input.d, -u_input.d), select(vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, firstTrailingBit(_wgslsmith_clamp_i32(u_input.d, u_input.d, 9832i))), ~abs(firstLeadingBit(vec4<i32>(u_input.d, 1i, 42837i, 2147483647i))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, all(vec3<bool>(true, false, true)), false), vec4<bool>(true, true, true, true))));
}

