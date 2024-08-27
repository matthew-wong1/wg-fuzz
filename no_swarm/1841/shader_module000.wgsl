struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<vec2<f32>, 29>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 32243u, 106610u);

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    var var_0 = 9396u;
    let var_1 = -countOneBits(abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, -13059i, arg_2.c, -16234i)), ~vec4<i32>(u_input.a, arg_0, 1i, 1i))));
    global0 = array<Struct_3, 26>();
    let var_2 = !(~max(arg_3.x & u_input.c.x, 6269u) < 0u);
    let var_3 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x)));
    return _wgslsmith_dot_vec2_u32(select(vec2<u32>(~1u, ~_wgslsmith_sub_u32(4294967295u, 17039u)), reverseBits(firstTrailingBit(vec2<u32>(4294967295u, 4194u))), all(!vec2<bool>(false, arg_2.d))), min(global2.xz ^ arg_3, vec2<u32>(~31056u, u_input.c.x)));
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(u_input.c.x, global1[_wgslsmith_index_u32(0u & _wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(13312u, global2.x, 0u)), 29u)], u_input.e.x, !(false == global3.x), u_input.c.x), _wgslsmith_f_op_f32(abs(1f)), 1u, Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(40260u, global2.x)), ~u_input.c.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], vec2<f32>(1000f, -810f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, 243f))), i32(-1i) * -2986i, !(u_input.d > 29475i), u_input.c.x << (~1u % 32u))));
    let var_1 = u_input.c.x;
    var var_2 = Struct_3(Struct_2(Struct_1(~(~var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1261f, 263f), var_0.a.a.b, vec2<bool>(var_0.a.a.d, false))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.d.b.x, -1262f), vec2<f32>(var_0.a.a.b.x, 1825f)))), -1i, true, 21844u), 702f, _wgslsmith_mod_u32(func_3(var_0.a.a.c, vec3<f32>(347f, var_0.a.d.b.x, -1917f), var_0.a.a, vec2<u32>(128649u, var_0.a.a.e)) ^ (u_input.c.x & 3682u), _wgslsmith_dot_vec4_u32(u_input.c, ~u_input.c)), Struct_1(1u, global1[_wgslsmith_index_u32(94185u, 29u)], -abs(1i), global3.x, ~max(u_input.c.x, global2.x))));
    var var_3 = Struct_2(Struct_1(~var_1, var_0.a.a.b, -1i | (var_2.a.d.c & -2128i), !any(vec2<bool>(var_0.a.a.d, var_2.a.d.d)) && (false || global3.x), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - var_2.a.b), 18908u, Struct_1(~(~var_0.a.a.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a.b.x)), _wgslsmith_f_op_f32(var_2.a.a.b.x * var_2.a.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.b.x, var_2.a.d.b.x) * vec2<f32>(var_0.a.a.b.x, var_2.a.a.b.x)))), 0i, false, global2.x));
    let var_4 = select(_wgslsmith_sub_u32(u_input.c.x, ~32852u), u_input.c.x, false);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(~abs(var_3.d.c), var_0.a.a.c, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.e))), -vec3<i32>(21114i, 2147483647i, _wgslsmith_mod_i32(2147483647i, var_0.a.a.c))) != _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(u_input.b), vec3<i32>(min(10222i, -44463i), firstTrailingBit(var_2.a.a.c), i32(-1i) * -2147483647i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.e.x, 29171i, -44303i), vec3<i32>(var_0.a.d.c, abs(-2147483647i), 1i)));
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    global0 = array<Struct_3, 26>();
    var var_0 = _wgslsmith_f_op_f32(sign(-409f));
    global0 = array<Struct_3, 26>();
    var var_1 = select(vec2<bool>(!global3.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) >= 121f), select(vec2<bool>(countOneBits(u_input.a) < -u_input.d, true), vec2<bool>(true, true), !vec2<bool>(global3.x || false, false)), any(select(vec3<bool>(true, true, true), !vec3<bool>(global3.x, global3.x, global3.x), func_2())) & false);
    let var_2 = -firstTrailingBit(-2147483647i) ^ (2147483647i | -_wgslsmith_sub_i32(u_input.e.x, _wgslsmith_add_i32(-21506i, u_input.d)));
    return select(vec2<bool>(!all(!vec3<bool>(global3.x, var_1.x, var_1.x)), global3.x), !select(select(select(vec2<bool>(true, var_1.x), vec2<bool>(false, true), global3.x), !vec2<bool>(global3.x, true), var_1.x), vec2<bool>(true, true), ~var_2 >= _wgslsmith_dot_vec2_i32(u_input.b.xz, u_input.b.yx)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(vec2<bool>(false, !(!(global2.x <= 13967u))), select(vec2<bool>(true, false), vec2<bool>(true, !all(vec4<bool>(false, global3.x, true, global3.x))), true), select(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(169f, -129f, -779f) * vec3<f32>(210f, -187f, 306f))), !vec2<bool>(global3.x, false)));
    global3 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(527f, _wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(526f, 1832f, global3.x)) - _wgslsmith_f_op_f32(round(1430f))), _wgslsmith_f_op_f32(-383f + -1055f))));
    global0 = array<Struct_3, 26>();
    global1 = array<vec2<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), -31054i), -1i, -13564i), -20563i, -u_input.d, vec3<u32>(u_input.c.x, 4294967295u, 0u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, ~71627u, 10371u >> (u_input.c.x % 32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, u_input.c.x, 33464u) << (u_input.c.xyx % vec3<u32>(32u)), u_input.c.wzw)), _wgslsmith_f_op_f32(f32(-1f) * -682f));
}

