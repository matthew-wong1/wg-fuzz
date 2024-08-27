struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: f32;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> i32 {
    global2 = array<vec2<bool>, 31>();
    global1 = _wgslsmith_f_op_f32(floor(-1730f));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2293f);
    global2 = array<vec2<bool>, 31>();
    global0 = array<Struct_3, 15>();
    return i32(-1i) * -2147483647i;
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2883f - 456f)))), 1695f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2337f + -1107f))) * _wgslsmith_f_op_f32(-303f + 473f)))));
    var var_0 = Struct_2(!vec4<bool>(select(true, select(true, false, true), true), true, !any(vec3<bool>(false, true, false)), true), Struct_1(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(min(0i, -2147483647i), -6854i)), ~_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 6913u), u_input.c.yy), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 3402u), vec2<u32>(u_input.b, u_input.a))), vec3<i32>(-2147483647i, -(i32(-1i) * -2147483647i), -55166i), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wx, u_input.c.yx), firstLeadingBit(0u)), vec2<u32>(u_input.b, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-820f - -243f))), _wgslsmith_f_op_f32(-419f * -1028f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f * 1f))) == _wgslsmith_f_op_f32(f32(-1f) * -623f);
    global0 = array<Struct_3, 15>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(279f - 326f), _wgslsmith_f_op_f32(step(-407f, -323f))) + -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f))) - _wgslsmith_div_f32(-476f, _wgslsmith_f_op_f32(f32(-1f) * -942f)));
    return select(reverseBits(abs(u_input.b)), ~1u, _wgslsmith_mult_i32(var_0.b.c.x, -2147483647i) <= var_0.b.c.x);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<i32>(1i, -33795i, 32871i) ^ _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(select(-2147483647i, 44877i, false), firstTrailingBit(2147483647i), ~(-60463i)), reverseBits(max(vec3<i32>(-53458i, 3979i, 0i), vec3<i32>(-75029i, 0i, 1i)))), _wgslsmith_sub_vec3_i32(-vec3<i32>(8624i, 13475i, 36325i), _wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 29754i, 44496i), -vec3<i32>(-2147483647i, 23242i, -19628i))));
    let var_1 = vec3<i32>(max(_wgslsmith_mod_i32(var_0.x, var_0.x), var_0.x) ^ reverseBits(var_0.x), var_0.x & 24178i, var_0.x) ^ -vec3<i32>(abs(_wgslsmith_clamp_i32(40061i, var_0.x, var_0.x)), ~func_2(), var_0.x);
    global1 = -1496f;
    global0 = array<Struct_3, 15>();
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~func_3(), abs(u_input.b) | (u_input.c.x | u_input.a)), min(select(vec2<u32>(~1u, 32381u), max(max(u_input.c.xx, u_input.c.xx), reverseBits(vec2<u32>(u_input.b, u_input.b))), global2[_wgslsmith_index_u32(select(select(u_input.b, 4294967295u, true), u_input.a >> (15760u % 32u), true), 31u)]), u_input.c.xy));
    return Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_clamp_i32(var_1.x, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, var_1.x), _wgslsmith_add_i32(var_0.x, var_0.x)), 9097i), 46614u, -(~var_1), ~select(vec2<u32>(u_input.c.x, 46298u) ^ u_input.c.wx, reverseBits(u_input.c.ww), all(global2[_wgslsmith_index_u32(u_input.a, 31u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 15u)];
    var var_1 = abs(var_0.d.d | (var_0.d.d >> ((select(u_input.c.yx, u_input.c.yy, true) | select(var_0.d.d, vec2<u32>(24485u, u_input.c.x), vec2<bool>(true, true))) % vec2<u32>(32u))));
    let var_2 = func_1();
    global2 = array<vec2<bool>, 31>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-170f + -1000f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, var_0.c, -1188f, -807f))))))));
    var var_4 = vec4<i32>(1i, 46539i, 2147483647i, min(_wgslsmith_div_i32(_wgslsmith_div_i32(var_2.b.a, -53179i) ^ -6102i, min(var_2.b.a, _wgslsmith_dot_vec3_i32(var_2.b.c, vec3<i32>(var_2.b.c.x, var_2.b.a, var_0.d.a)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.b.c.x, 1i, -57586i, -23223i), vec4<i32>(-1i, var_0.d.c.x, -2147483647i, 24567i)), countOneBits(0i), _wgslsmith_mult_i32(~var_2.b.c.x, -9451i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(900f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), false))), vec2<i32>(-var_0.d.c.x, var_2.b.a) ^ var_0.d.c.yx, ~(~_wgslsmith_dot_vec4_u32(~u_input.c, u_input.c | u_input.c)));
}

