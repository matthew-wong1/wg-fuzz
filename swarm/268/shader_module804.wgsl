struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<vec3<i32>, 32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1338f, -1000f))), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -263f)));
    global0 = array<bool, 17>();
    var var_1 = ~vec4<i32>(~(-54227i), u_input.a, _wgslsmith_add_i32(-u_input.a, _wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a))), firstLeadingBit(-1i));
    var var_2 = !vec2<bool>(!(_wgslsmith_f_op_f32(floor(559f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1495f)), any(!vec3<bool>(global0[_wgslsmith_index_u32(35772u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false)));
    let var_3 = Struct_2(Struct_1(abs(vec2<u32>(1u, 1u)), max(abs(vec4<u32>(24962u, 1u, 17786u, 27812u)), ~vec4<u32>(4294967295u, 46801u, 53657u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3166f + _wgslsmith_f_op_f32(min(138f, -440f))))), vec4<bool>(any(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(57851u, 17u)])), all(!(!vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(50659u, 17u)]))), true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(46168u, 1u))), 17u)]), Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(0u, 8348u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(13241u, 1u, 67646u, 4294967295u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), all(vec4<bool>(var_2.x, var_2.x, false, global0[_wgslsmith_index_u32(4294967295u, 17u)])))), -468f));
    return vec2<f32>(_wgslsmith_f_op_f32(round(136f)), _wgslsmith_f_op_f32(-var_3.c.c));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec4<u32> {
    let var_0 = ~arg_0.c;
    var var_1 = arg_0;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3());
    var_2 = Struct_3(select((i32(-1i) * -arg_0.c) << (40735u % 32u), var_0, all(vec2<bool>(arg_0.b != arg_0.b, global0[_wgslsmith_index_u32(firstTrailingBit(arg_1), 17u)]))), var_3.x, (i32(-1i) * -(var_0 << (4294967295u % 32u))) ^ _wgslsmith_mod_i32(-2147483647i, -var_0), -1i);
    return reverseBits(min(vec4<u32>(~72622u, _wgslsmith_add_u32(20313u, 1u), ~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(57933u, arg_1, 1u, 18907u), max(vec4<u32>(0u, arg_1, arg_1, 46769u), vec4<u32>(1u, 16630u, arg_1, arg_1)))), ~vec4<u32>(arg_1 >> (arg_1 % 32u), _wgslsmith_clamp_u32(20287u, arg_1, arg_1), arg_1, 54698u)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(1u, arg_0) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))), ~max(~vec2<u32>(arg_0, 62935u), ~vec2<u32>(arg_0, arg_0)), vec2<u32>(39224u, 0u));
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 38057u), firstTrailingBit(var_0)), vec2<u32>(arg_0, var_0.x) << (vec2<u32>(var_0.x, arg_0) % vec2<u32>(32u)))), _wgslsmith_mult_vec4_u32(abs(func_2(Struct_3(-2147483647i, 627f, u_input.a, u_input.a), max(4294967295u, 1u))), abs(select(~vec4<u32>(70824u, 46151u, var_0.x, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 14427u, 21976u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, arg_0)), u_input.a <= -28532i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(floor(-348f))) * _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))))));
    let var_2 = Struct_3(u_input.a, -921f, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_2.xz), arg_2.wx), _wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.a, 1i), i32(-1i) * -12475i));
    var var_3 = Struct_1(var_1.b.zz, ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, var_0.x, var_0.x), var_1.b), min(~var_1.a.x, ~var_1.a.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.x, 4680u), ~42762u), func_2(Struct_3(u_input.a, var_1.c, -2147483647i, 19275i), 13934u).x & var_1.b.x), 1646f);
    var_3 = var_1;
    return Struct_2(Struct_1(((var_1.b.wy >> (vec2<u32>(40952u, 4294967295u) % vec2<u32>(32u))) | var_0) | var_3.a, vec4<u32>(var_0.x, 0u, var_1.b.x, min(var_0.x, 17140u)), _wgslsmith_f_op_vec2_f32(func_3()).x), !select(!select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(21009u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(var_3.b.x, 17u)]), true), !select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_3.a.x, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(39996u, 17u)], global0[_wgslsmith_index_u32(arg_0, 17u)], true, global0[_wgslsmith_index_u32(var_1.a.x, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_3.a.x, 17u)], global0[_wgslsmith_index_u32(31109u, 17u)], true, false)), global0[_wgslsmith_index_u32(~1u, 17u)]), Struct_1(vec2<u32>(min(var_0.x, var_1.a.x), 1u), (var_3.b & vec4<u32>(55760u, 29586u, 0u, var_3.a.x)) & max(min(var_3.b, vec4<u32>(var_3.a.x, 0u, 5269u, 28080u)), var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -1009f)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.c.c)))), arg_1.a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c * arg_1.a.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(175f, 2053f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.c.c, arg_1.c.c)), arg_1.c.c))))), _wgslsmith_f_op_f32(arg_1.c.c - _wgslsmith_f_op_f32(1188f - arg_1.c.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.x, 1000f, var_0.x))))))));
    global1 = array<vec3<i32>, 32>();
    var var_2 = func_1(arg_1.a.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 * var_1) - var_1)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(292f, _wgslsmith_f_op_f32(min(var_0.x, -1708f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1047f))))), min(-firstLeadingBit(~vec4<i32>(0i, u_input.a, u_input.a, 22173i)), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(arg_1.a.b.x, 32u)], global1[_wgslsmith_index_u32(1582u, 32u)]), countOneBits(arg_0), _wgslsmith_div_i32(1i, 2147483647i))));
    let var_3 = ~_wgslsmith_add_vec4_i32(select(vec4<i32>(1i, _wgslsmith_add_i32(u_input.a, 31366i), -1i, arg_0 << (arg_1.a.b.x % 32u)), abs(vec4<i32>(0i, 1i, -18728i, -1i)) >> (_wgslsmith_clamp_vec4_u32(arg_1.a.b, var_2.c.b, vec4<u32>(4294967295u, var_2.c.a.x, arg_1.a.a.x, 16700u)) % vec4<u32>(32u)), func_1(arg_2.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.x, var_2.a.c, 1400f) + var_1), vec4<i32>(arg_0, 2147483647i, 2147483647i, u_input.a) >> (vec4<u32>(0u, arg_2.x, 41760u, 1u) % vec4<u32>(32u))).b), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-3346i, -23234i), vec2<i32>(u_input.a, u_input.a)) << (reverseBits(arg_1.a.b.x) % 32u), ~arg_0, 2147483647i, abs(-5675i)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~14572u, ~1u), vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(17117u, 78013u, 1u), vec3<u32>(30842u, 77979u, 0u)), vec3<u32>(_wgslsmith_add_u32(22621u, 1u), ~66312u, _wgslsmith_mod_u32(10406u, 4294967295u))), 1u));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1505f)))), _wgslsmith_f_op_f32(func_4(u_input.a, func_1(35234u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-710f, -871f, -807f, 1000f) + vec4<f32>(-1729f, -958f, -174f, -633f)), vec4<i32>(-1i, 33540i, 1i, 2147483647i) | vec4<i32>(-1i, u_input.a, -8020i, 1i)), vec2<u32>(func_2(Struct_3(u_input.a, -213f, u_input.a, 4030i), var_0.x).x, _wgslsmith_div_u32(14187u, 4294967295u)))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f * 2217f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-2156f)), _wgslsmith_f_op_vec2_f32(func_3()).x, -610f, _wgslsmith_f_op_f32(607f - -1083f)))));
    global1 = array<vec3<i32>, 32>();
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(~u_input.a), ~0i, u_input.a, ~_wgslsmith_sub_i32(1i, 2147483647i)), -(~(~vec4<i32>(u_input.a, 63025i, u_input.a, 12134i)))), -438f, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a >> (14799u % 32u), -2176i, _wgslsmith_sub_i32(55298i, u_input.a)), _wgslsmith_sub_i32(-2147483647i, u_input.a & u_input.a)) ^ 2147483647i, -u_input.a);
    let var_3 = func_1(~(~(func_1(12071u, vec4<f32>(var_1.x, -381f, 1051f, -1634f), vec4<i32>(var_2.a, 0i, var_2.d, u_input.a)).c.a.x >> (var_0.x % 32u))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_1.x)) + var_2.b), -713f, _wgslsmith_f_op_f32(f32(-1f) * -561f)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_0.x, 32u)], global1[_wgslsmith_index_u32(19211u, 32u)]), -7400i, 0i ^ var_2.c, -23887i)), _wgslsmith_div_vec4_i32(vec4<i32>(-u_input.a, u_input.a >> (1u % 32u), -2147483647i, var_2.d), ~vec4<i32>(u_input.a, 53277i, u_input.a, 47189i))));
    global1 = array<vec3<i32>, 32>();
    var var_4 = global1[_wgslsmith_index_u32((~(~(0u << (var_0.x % 32u))) >> (0u % 32u)) | func_1(~func_1(max(var_0.x, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, var_1.x, var_3.c.c, var_3.a.c)), vec4<i32>(23740i, -15313i, u_input.a, -43556i)).a.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.c, var_3.c.c, var_2.b, var_3.a.c))), vec4<f32>(169f, var_3.a.c, _wgslsmith_div_f32(-895f, var_1.x), _wgslsmith_f_op_f32(-var_2.b)))), ~vec4<i32>(12999i, 27242i & var_2.a, 3327i, _wgslsmith_add_i32(u_input.a, 0i))).c.b.x, 32u)];
    var var_5 = func_1(~func_1(81185u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1116f, 917f, -873f, var_3.a.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.c, var_3.a.c, -798f, var_1.x))), abs(vec4<i32>(var_2.d, var_4.x, -1i, 2147483647i))).c.b.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.c, -265f, -810f, var_2.b), vec4<f32>(var_1.x, 2425f, -1000f, -800f), var_3.b)))))), -select(-vec4<i32>(var_2.a, u_input.a, var_4.x, u_input.a), ~(-vec4<i32>(2147483647i, 0i, var_4.x, -80815i)), !var_3.b)).a.a.x;
    var var_6 = var_3.b.yw;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_add_u32(1u, var_3.a.b.x));
}

