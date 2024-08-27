struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-268f - 455f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-557f))))), 1f), 1f);
    let var_1 = _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x ^ reverseBits(62743u)), 22u)] << (abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 46979u, u_input.a), u_input.e, vec4<u32>(0u, 6583u, u_input.e.x, 69147u)), u_input.e)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(max(select(global0[_wgslsmith_index_u32(1u, 22u)], vec4<i32>(u_input.d, u_input.c, arg_0, arg_0), vec4<bool>(arg_1, arg_1, true, false)), global0[_wgslsmith_index_u32(max(8777u, u_input.a), 22u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(22410u, u_input.e.x), 22u)] ^ -vec4<i32>(arg_0, u_input.c, arg_0, arg_0)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 22u)]));
    var var_2 = !(any(select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, true, true, true), true)) || !any(vec2<bool>(false, arg_1)));
    var var_3 = _wgslsmith_clamp_i32(1i, arg_0, firstTrailingBit(var_1.x));
    var var_4 = Struct_1(vec3<i32>(var_1.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, arg_0), ~u_input.b)), _wgslsmith_add_i32(countOneBits(-9757i), var_1.x)));
    return var_1;
}

fn func_2() -> vec2<u32> {
    var var_0 = u_input.e;
    let var_1 = Struct_2(-1425f, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d & 7334i, -17054i, reverseBits(u_input.b.x), u_input.c << (u_input.a % 32u)), func_3(22435i, true), ~vec4<i32>(u_input.b.x, u_input.d, 0i, u_input.b.x) & _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(15013u, 22u)], global0[_wgslsmith_index_u32(u_input.e.x, 22u)])), vec4<i32>(-12792i, max(19375i, u_input.b.x), u_input.c, _wgslsmith_clamp_i32(max(0i, u_input.b.x), -1i, u_input.c))), firstTrailingBit(18990i), ~(~0u));
    return ~(var_0.xy >> (max(abs(min(u_input.e.zy, vec2<u32>(var_1.d, 0u))), vec2<u32>(var_1.d, 4294967295u)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec4<i32>, 22>();
    let var_0 = _wgslsmith_f_op_f32(222f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1498f + _wgslsmith_f_op_f32(f32(-1f) * -574f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-910f))))));
    global0 = array<vec4<i32>, 22>();
    var var_1 = Struct_3(Struct_2(-288f, ~2147483647i, u_input.d & ~_wgslsmith_add_i32(-2147483647i, u_input.c), ~1u), ~(~arg_0.x & 13114u), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), reverseBits(u_input.d), u_input.a);
    var var_2 = ~(~func_2());
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1726f - 223f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1.a.a, -932f)))))) + _wgslsmith_f_op_f32(var_1.a.a * var_0));
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<i32>, 22>();
    global0 = array<vec4<i32>, 22>();
    let var_0 = u_input.e.xz;
    var var_1 = Struct_1(vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.d), vec3<i32>(-6642i, u_input.c, 2147483647i)), _wgslsmith_div_i32(307i, u_input.d)), _wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, 1i), u_input.c)), (_wgslsmith_mult_i32(u_input.d, 4442i) ^ _wgslsmith_div_i32(-2136i, u_input.d)) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, var_0.x), var_0.x) % 32u)));
    var var_2 = false;
    return Struct_2(_wgslsmith_f_op_f32(func_4(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(func_2(), vec2<u32>(4294967295u, var_0.x) >> (u_input.e.wz % vec2<u32>(32u))), _wgslsmith_div_u32(reverseBits(u_input.e.x), func_2().x), _wgslsmith_dot_vec4_u32(u_input.e, u_input.e) ^ _wgslsmith_clamp_u32(61448u, u_input.e.x, 4294967295u)))), -40141i, func_3(_wgslsmith_sub_i32(u_input.d, ~max(-1i, 0i)), false).x, firstTrailingBit(1u));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    global0 = array<vec4<i32>, 22>();
    var var_0 = arg_1.a.a;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(func_1().a + _wgslsmith_f_op_f32(abs(arg_1.a.a))), countOneBits(-u_input.b.x), -1i, 0u), _wgslsmith_div_u32(4294967295u << (arg_0 % 32u), _wgslsmith_mult_u32(u_input.a, ~0u)), !select(arg_1.c, vec2<bool>(arg_1.c.x, true), true), arg_1.a.c, _wgslsmith_sub_u32(max(~(~u_input.a), arg_1.a.d), min(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 1u)));
    var_1 = arg_1;
    var_1 = arg_1;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 22>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -771f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), -244f, true)) * 1091f)) - 286f);
    let var_1 = func_5(u_input.e.x, Struct_3(func_1(), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.e.xw, u_input.e.zy), 19796u), vec2<bool>(true, true), u_input.c, _wgslsmith_mult_u32(u_input.a, 33821u)), _wgslsmith_add_i32(1i, u_input.b.x));
    var var_2 = func_5(u_input.e.x, Struct_3(var_1, 24298u, select(vec2<bool>(true, -2147483647i != u_input.d), select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.a > var_1.a), vec2<bool>(true, true)), 1i ^ var_1.b, 1u), 18933i);
    let var_3 = -_wgslsmith_mod_i32(u_input.b.x, abs(func_1().b) & select(i32(-1i) * -1198i, -2147483647i, var_2.c > 19131i));
    let var_4 = Struct_1(_wgslsmith_clamp_vec3_i32(~(max(vec3<i32>(u_input.d, -2147483647i, u_input.b.x), vec3<i32>(23273i, u_input.b.x, var_3)) ^ ~vec3<i32>(1i, 2147483647i, var_3)), firstTrailingBit(countOneBits(-vec3<i32>(-2147483647i, var_1.c, 15911i))), countOneBits(-vec3<i32>(52529i, var_1.c, 18227i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_2.d, 4294967295u), ~_wgslsmith_mult_vec2_u32(abs(u_input.e.zx >> (u_input.e.yz % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.d, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, var_2.d), vec2<u32>(var_2.d, var_1.d), vec2<u32>(var_1.d, 0u)))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~70300u, 0u), 1u >> (u_input.e.x % 32u), ~0u & (u_input.a | 58816u)), var_2.d, _wgslsmith_sub_u32(var_1.d, ~(~1u)), ~48531u), ~(~(~(0u | var_1.d))));
}

