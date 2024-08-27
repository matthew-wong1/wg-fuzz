struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1000f, -1000f, 559f), vec3<f32>(-759f, 769f, -496f), vec3<f32>(539f, -888f, -1184f), vec3<f32>(-529f, -595f, -323f), vec3<f32>(541f, -440f, 754f), vec3<f32>(-1213f, 825f, 958f), vec3<f32>(-314f, -1245f, 1569f));

var<private> global2: vec2<i32> = vec2<i32>(-12636i, 2147483647i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(18423i, global2.x & (-global2.x >> (53099u % 32u)), -_wgslsmith_dot_vec2_i32(~u_input.c, u_input.c)), ~select(~(~vec3<i32>(28212i, u_input.d, 15430i)), vec3<i32>(2147483647i, global2.x, 1i) << ((u_input.e << (vec3<u32>(4294967295u, 4136u, u_input.e.x) % vec3<u32>(32u))) % vec3<u32>(32u)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), -vec3<i32>((global2.x ^ global2.x) >> (_wgslsmith_add_u32(arg_1.x, arg_1.x) % 32u), firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, 2147483647i) >> (vec4<u32>(4294967295u, 0u, 13023u, arg_1.x) % vec4<u32>(32u)), vec4<i32>(-643i, u_input.c.x, global2.x, -65466i))));
    var var_1 = Struct_2(Struct_1(u_input.e, vec4<bool>(arg_0.x, all(!arg_0.xx), ~arg_1.x >= _wgslsmith_mult_u32(u_input.b, u_input.b), true), -u_input.c.x, -var_0, global2.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1023f, 1000f) * _wgslsmith_f_op_f32(max(318f, -238f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2016f)))), 1f, 1f), i32(-1i) * -u_input.d, Struct_1(select(vec3<u32>(u_input.a, u_input.e.x, 28883u), _wgslsmith_add_vec3_u32(abs(u_input.e), reverseBits(vec3<u32>(u_input.e.x, u_input.e.x, arg_1.x))), select(vec3<bool>(false, arg_0.x, false), select(arg_0, arg_0, false), vec3<bool>(true, arg_0.x, arg_0.x))), !(!(!vec4<bool>(arg_0.x, false, true, arg_0.x))), i32(-1i) * -23158i, var_0, global2.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(671f)), _wgslsmith_f_op_f32(-var_1.b.x)))))), 1748f);
    var var_3 = var_1.d;
    global1 = array<vec3<f32>, 7>();
    return reverseBits(1u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, 221f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1274f, 336f)))))));
    var var_1 = vec2<bool>(max(~_wgslsmith_sub_i32(u_input.d, u_input.d), -89840i) != (-11099i ^ global2.x), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    global1 = array<vec3<f32>, 7>();
    var var_2 = Struct_3(_wgslsmith_div_vec3_u32(~(~_wgslsmith_mod_vec3_u32(u_input.e, u_input.e)), vec3<u32>(func_3(vec3<bool>(true, false, var_1.x), abs(u_input.e.zx)), 36860u, ~_wgslsmith_add_u32(u_input.a, 11835u))));
    var_2 = Struct_3(~u_input.e & vec3<u32>(min(firstLeadingBit(u_input.a), ~955u), abs(reverseBits(u_input.a)), var_2.a.x));
    return Struct_1(_wgslsmith_add_vec3_u32(u_input.e ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(49614u, 34658u, 53387u), abs(u_input.e), u_input.e), var_2.a), select(vec4<bool>(any(vec3<bool>(var_1.x, true, var_1.x)), var_1.x, true, var_1.x | !var_1.x), vec4<bool>(!(!var_1.x), all(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true, true), !(!vec4<bool>(var_1.x, true, false, var_1.x))), u_input.d, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c.x, -32194i, ~global2.x), vec3<i32>(firstLeadingBit(global2.x), global2.x, global2.x)), select(global2.x ^ ~(-2147483647i), _wgslsmith_mult_i32(global2.x, _wgslsmith_mult_i32(-7135i, ~0i)), all(select(vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), !var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_vec3_u32(arg_0.a, arg_2.a, ~vec3<u32>(39700u, arg_2.a.x, 1843u)), vec4<bool>(any(select(vec3<bool>(false, arg_2.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x, true, arg_2.b.x), arg_2.b.yxw)), arg_2.b.x, false, 4294967295u >= arg_0.a.x), -4904i, arg_2.d, firstTrailingBit(global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * 795f), _wgslsmith_f_op_f32(-652f + -387f)))), ~_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_2.d), vec3<i32>(-1i, arg_3, -2147483647i) & vec3<i32>(u_input.c.x, 1i, 1i)) ^ global2.x, Struct_1(_wgslsmith_mult_vec3_u32(arg_0.a, firstTrailingBit(arg_0.a) << (u_input.e % vec3<u32>(32u))), select(select(func_2().b, vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, true), !arg_2.b), !vec4<bool>(true, arg_2.b.x, false, arg_2.b.x), select(arg_2.b, vec4<bool>(arg_2.b.x, arg_2.b.x, false, false), vec4<bool>(false, arg_2.b.x, arg_2.b.x, false))), 1i, -vec3<i32>(arg_2.d.x, func_2().e, ~arg_3), ~arg_2.d.x ^ abs(_wgslsmith_sub_i32(-31324i, arg_2.d.x))));
    var var_1 = ~vec3<u32>(reverseBits(1u), 0u, ~(~(~arg_2.a.x)));
    var var_2 = -2102f;
    var_1 = u_input.e ^ arg_2.a;
    var var_3 = true;
    return arg_2;
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = vec4<u32>(~0u, ~4294967295u, ~arg_1, 62015u);
    global0 = array<Struct_4, 4>();
    var var_1 = func_4(Struct_3(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), 25598u, ~52221u) | firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, u_input.e.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -290f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f), -557f) - _wgslsmith_f_op_f32(-1850f * -1201f))), func_2(), global2.x);
    let var_2 = Struct_2(Struct_1(var_0.zwx, var_1.b, min(-global2.x, var_1.c), max(vec3<i32>(-2147483647i, arg_0 >> (0u % 32u), u_input.d), _wgslsmith_add_vec3_i32(select(var_1.d, var_1.d, true), var_1.d | var_1.d)), -reverseBits(-arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-846f - -1017f))), -300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f - 2103f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_0.x, 7u)]))))), func_4(Struct_3(~vec3<u32>(var_0.x, arg_1, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-360f, 1192f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1004f, 1674f), vec2<f32>(840f, 759f), vec2<bool>(false, var_1.b.x)))) + vec2<f32>(_wgslsmith_f_op_f32(460f * 129f), _wgslsmith_f_op_f32(f32(-1f) * -2020f))), func_4(Struct_3(select(var_0.xwy, var_0.wxw, vec3<bool>(var_1.b.x, var_1.b.x, false))), vec2<f32>(1f, 1f), Struct_1(u_input.e, vec4<bool>(true, true, true, true), reverseBits(-42831i), _wgslsmith_clamp_vec3_i32(var_1.d, vec3<i32>(global2.x, var_1.d.x, global2.x), vec3<i32>(-14577i, 1i, var_1.e)), 28711i), 0i >> (firstLeadingBit(u_input.a) % 32u)), firstLeadingBit(-1i)).e, Struct_1(vec3<u32>(firstTrailingBit(20077u), 1u, ~43962u), !vec4<bool>(true, var_1.b.x & false, true, any(vec2<bool>(true, var_1.b.x))), arg_0 ^ _wgslsmith_sub_i32(1i, countOneBits(1i)), -func_2().d | var_1.d, -abs(-29910i) >> (_wgslsmith_mult_u32(var_1.a.x, u_input.e.x) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1588f)))))));
    return -447f > _wgslsmith_f_op_f32(-303f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(step(1000f, var_2.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(_wgslsmith_mod_u32(~u_input.a, ~16341u) == _wgslsmith_mult_u32(~19392u, ~u_input.b)), true);
    var var_1 = !func_1(_wgslsmith_mult_i32(-1i, 0i), ~u_input.a);
    global2 = abs(~u_input.c);
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1003f, _wgslsmith_f_op_f32(floor(-453f))) + 1730f) != -947f, firstTrailingBit(18855u) > (u_input.b >> (28904u % 32u)));
    global1 = array<vec3<f32>, 7>();
    global0 = array<Struct_4, 4>();
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1160f, 892f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(823f, -1025f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(246f, 670f))), all(vec4<bool>(var_0.x, false, var_0.x, true)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1016f, -1023f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, 572f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(518f * 3075f), -1208f)))));
    var_1 = true;
    var var_3 = func_4(Struct_3(u_input.e), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(210f, var_2.x) - vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 2271f)), select(vec2<bool>(false, var_0.x), vec2<bool>(false, true), true)))))), Struct_1(vec3<u32>(~29736u, 45654u, u_input.b), func_2().b, -2322i, vec3<i32>(-1i, global2.x, 12667i), -u_input.d), abs(firstTrailingBit(global2.x & 2147483647i) & (u_input.c.x ^ func_2().c))).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, 4294967295u, u_input.b), vec4<u32>(u_input.a, u_input.b, 4294967295u, u_input.b))), (~1u | (1u << (u_input.b % 32u))) << (_wgslsmith_mult_u32(u_input.b, u_input.a >> (u_input.b % 32u)) % 32u), u_input.a), u_input.c, 31390i, ~u_input.c.x, u_input.a);
}

