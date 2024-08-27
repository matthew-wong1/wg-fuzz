struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: f32 = -844f;

var<private> global2: vec4<i32>;

var<private> global3: array<vec3<bool>, 28>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(vec2<f32>(-2369f, 957f), Struct_1(true || global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-723f, -1045f, 356f), vec3<f32>(379f, -1128f, -657f), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(172f, 1870f, -133f), vec3<f32>(-772f, -753f, -722f), global3[_wgslsmith_index_u32(u_input.b, 28u)])))))), Struct_1(select(!any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)], false)), global0[_wgslsmith_index_u32(16644u, 18u)], !global0[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2020f, 118f, -1848f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(245f, -172f, -471f))))))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, -2147483647i), vec2<i32>(108381i, global2.x)), global2.x, global2.x, _wgslsmith_mod_i32(0i, global2.x)), vec4<u32>(0u, ~11920u, ~(~_wgslsmith_clamp_u32(u_input.b, 4294967295u, 28055u)), 58439u));
    var var_1 = 8052i;
    let var_2 = 1i;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 18u)];
    let var_4 = vec4<i32>(~(~_wgslsmith_mult_i32(-42087i, global2.x)), var_0.d.x, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_clamp_i32(~global2.x, 2147483647i, -1i & var_2)), var_2), firstTrailingBit(1i));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.a.x)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-arg_2.x), u_input.b <= 0u)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1140f, -340f))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(f32(-1f) * -692f)) - _wgslsmith_f_op_f32(999f + var_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    let var_1 = max(_wgslsmith_mult_i32(-14277i, _wgslsmith_mult_i32(arg_0 << (36056u % 32u), _wgslsmith_div_i32(-1i, -26236i))) >> (~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30995u, u_input.d), u_input.a.wy), _wgslsmith_div_u32(u_input.d, 1u)) % 32u), 1i);
    let var_2 = vec2<i32>(var_1, _wgslsmith_add_i32(max(2147483647i, 1i), _wgslsmith_clamp_i32(0i, countOneBits(4544i), 1121i)));
    var var_3 = Struct_3(global2.x, min(firstTrailingBit(u_input.a), u_input.a));
    return abs(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(0u, 4294967295u))) | _wgslsmith_div_u32(~var_3.b.x, 4294967295u), ~countOneBits(u_input.c.x) << ((~var_3.b.x | 5711u) % 32u), u_input.d ^ (abs(4294967295u) ^ (u_input.d ^ u_input.d)), _wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, 15608u), _wgslsmith_clamp_u32(4294967295u, u_input.d, 9336u) & u_input.a.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: Struct_2) -> Struct_4 {
    let var_0 = arg_2.b.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(815f * arg_2.b.b.x), arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1418f * -266f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2.c.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_2.b.b)))))));
    var var_2 = any(select(select(arg_1.c.wy, arg_1.c.yy, !(!arg_1.c.wy)), select(arg_1.c.xz, arg_1.c.yw, !arg_1.c.zz), !vec2<bool>(arg_2.b.a != true, false)));
    let var_3 = abs(arg_1.e);
    return Struct_4(vec4<bool>(any(vec3<bool>(true, false, all(vec3<bool>(false, false, arg_2.b.a)))), all(!vec3<bool>(global0[_wgslsmith_index_u32(26458u, 18u)], arg_1.c.x, arg_1.c.x)), arg_1.c.x, any(global3[_wgslsmith_index_u32(~(~4294967295u), 28u)])), var_0.yx, vec2<i32>(~(-1i) & _wgslsmith_mod_i32(i32(-1i) * -68337i, global2.x), ~abs(_wgslsmith_div_i32(global2.x, 1638i))), max(~_wgslsmith_mult_vec3_u32(~vec3<u32>(27585u, arg_1.d.b.x, arg_1.d.b.x), ~u_input.c), vec3<u32>(1u, 4294967295u, 4294967295u)));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<bool, 18>();
    var var_0 = global3[_wgslsmith_index_u32(0u, 28u)];
    let var_1 = !(!(!any(select(var_0.yy, vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)], var_0.x), var_0.xz))));
    global1 = -782f;
    let var_2 = func_4((func_2(abs(12391i), arg_0, vec4<f32>(1420f, 408f, -1015f, 1629f)) & ~u_input.a) | u_input.a, Struct_5(-129f, ~vec4<i32>(_wgslsmith_mult_i32(0i, global2.x), min(2147483647i, arg_0), -1397i, ~1i), !(!vec4<bool>(var_1, var_1, var_0.x, var_0.x)), Struct_3(reverseBits(-26075i), countOneBits(~vec4<u32>(u_input.c.x, 19623u, 0u, 1u))), _wgslsmith_dot_vec4_i32(min(-vec4<i32>(-5246i, -328i, 2147483647i, 4281i), reverseBits(vec4<i32>(11188i, -1i, global2.x, 2147483647i))), vec4<i32>(global2.x & -1i, arg_0, global2.x, ~(-68889i)))), Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2101f, -1000f))))), Struct_1(var_0.x && true, vec3<f32>(_wgslsmith_f_op_f32(select(-656f, 2048f, global0[_wgslsmith_index_u32(u_input.c.x, 18u)])), _wgslsmith_f_op_f32(833f + 214f), -839f)), Struct_1(true, vec3<f32>(1f, 1f, 1f)), abs(~vec4<i32>(arg_0, arg_0, global2.x, arg_0) | select(vec4<i32>(arg_0, arg_0, -41362i, global2.x), vec4<i32>(-12804i, global2.x, -30386i, -1i), global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec4<u32>(_wgslsmith_mult_u32(u_input.d, 1u), u_input.b, ~(~4294967295u), u_input.a.x)));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1040f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(113f, 354f)), 158f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(36581i)), _wgslsmith_div_f32(1000f, -1000f), select(true, global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(41161u, 18u)]))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-616f, -1760f), vec2<f32>(526f, -260f), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 18u)], true))), _wgslsmith_div_vec2_f32(vec2<f32>(-805f, -1938f), vec2<f32>(-1052f, 610f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(976f, 431f) - vec2<f32>(1798f, -1569f)))))));
    var var_1 = abs(u_input.a);
    var var_2 = max(var_1.x, 1u);
    global3 = array<vec3<bool>, 28>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) * var_0.x));
    let var_4 = _wgslsmith_div_f32(693f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(25605u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(335u, u_input.d, 9890u, 25459u), vec4<u32>(78152u, 4294967295u, 2040u, 0u)) ^ firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2280f, _wgslsmith_f_op_f32(-var_0.x))))), u_input.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_4 - 1000f)), _wgslsmith_div_f32(2015f, var_4), _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1188f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1495f - 1177f), 798f, 187f, _wgslsmith_f_op_f32(ceil(var_0.x))))))));
}

