struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec2<i32>, 5>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = 4294967295u;
    return _wgslsmith_f_op_f32(f32(-1f) * -842f);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    global1 = array<vec2<i32>, 5>();
    let var_0 = 0u;
    global0 = !vec3<bool>(!(!global0.x && !arg_2), false, 2197f <= arg_3.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-494f, arg_3.b.b.e.x), vec2<f32>(arg_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f - _wgslsmith_f_op_f32(ceil(arg_3.a.x)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1561f, var_1.x))), arg_3.a.x), vec3<f32>(_wgslsmith_f_op_f32(floor(1554f)), 1000f, -1670f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.b.c + arg_3.b.b.e.x) * -1335f), arg_3.b.b.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-260f, var_1.x), _wgslsmith_f_op_f32(abs(arg_3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -179f)))), select(select(vec3<bool>(528f < var_1.x, true, true), vec3<bool>(true, true, select(arg_2, false, true)), false), vec3<bool>(all(select(vec4<bool>(arg_2, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, false, arg_2), vec4<bool>(true, true, true, true))), 1672f >= arg_3.b.b.e.x, arg_2), !select(!vec3<bool>(arg_2, arg_2, global0.x), vec3<bool>(false, false, global0.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(arg_2, false, global0.x), vec3<bool>(arg_2, true, false))))));
    return _wgslsmith_f_op_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), var_2.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * var_2.x))) + 1000f)), true, arg_1.x, ~min(0i << (arg_3.b.c.x % 32u), abs(1i)) & u_input.b.x));
}

fn func_2() -> f32 {
    var var_0 = ~(~max(firstTrailingBit(u_input.c), vec3<u32>(774u, u_input.a, u_input.c.x)) | (firstLeadingBit(firstTrailingBit(u_input.c)) & vec3<u32>(53846u, firstTrailingBit(0u), select(u_input.c.x, u_input.a, global0.x))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 1u, var_0.x), vec4<u32>(1u, 71222u, u_input.a, 0u)), _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 1i, -1i), vec3<i32>(u_input.b.x, 46208i, u_input.b.x)), true, Struct_4(vec3<f32>(1682f, 238f, -256f), Struct_2(u_input.b, Struct_1(1i, var_0.x, 1648f, 100378u, vec4<f32>(392f, -1695f, -1736f, 590f)), vec4<u32>(var_0.x, var_0.x, 4294967295u, 3465u))))), 443f), _wgslsmith_f_op_f32(ceil(344f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -497f)), _wgslsmith_f_op_f32(f32(-1f) * -427f))), -1038f, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(-263f, 1063f, 229f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1411f, -285f, -1345f) + vec3<f32>(-1444f, 323f, 503f))))));
    var_0 = (countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(1u, var_0.x, 0u)), reverseBits(vec3<u32>(u_input.c.x, u_input.a, 2503u)))) | ~select(firstLeadingBit(u_input.c), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(76022u, 94817u, u_input.c.x)), vec3<bool>(false, true, true))) & u_input.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 959f, 324f), vec3<f32>(var_1.x, 310f, var_1.x))), vec3<f32>(903f, -385f, -1227f)))) - vec3<f32>(-924f, _wgslsmith_f_op_f32(func_1(vec4<f32>(-869f, -1000f, var_1.x, var_1.x), true, u_input.b.x, u_input.b.x | 31985i)), _wgslsmith_f_op_f32(900f - 716f)))));
    var var_3 = Struct_5(Struct_2(~reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -22710i, u_input.b.x), u_input.b)), Struct_1(-_wgslsmith_sub_i32(6334i, -53421i), 4294967295u, 308f, _wgslsmith_dot_vec2_u32(u_input.c.yz, ~var_0.zx), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 595f, var_1.x, var_2.x) * vec4<f32>(613f, 578f, var_2.x, var_1.x))), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, 40310u, 69588u), vec4<u32>(1u, 19400u, u_input.c.x, var_0.x)), ~(~vec4<u32>(22368u, 4294967295u, 23476u, u_input.c.x)), select(!vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), !vec4<bool>(true, true, global0.x, global0.x)))), Struct_2(-_wgslsmith_mod_vec3_i32(u_input.b, firstTrailingBit(u_input.b)), Struct_1(u_input.b.x & -u_input.b.x, ~_wgslsmith_add_u32(u_input.a, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-782f, -887f)) * _wgslsmith_f_op_f32(min(551f, var_1.x))), select(~u_input.a, ~var_0.x, any(vec2<bool>(global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_1.x, -130f, 741f))), ~firstLeadingBit(~vec4<u32>(1u, 4294967295u, 4294967295u, u_input.a))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, 1i, 39098i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, -10799i, -2147483647i, -1i))) | _wgslsmith_mult_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(21601i, u_input.b.x, -1i, 1i), vec4<i32>(4665i, 1i, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, -43342i, u_input.b.x, -3081i), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, false, false, global0.x))), vec4<i32>(_wgslsmith_mod_i32(-36613i, -41956i), _wgslsmith_sub_i32(-6331i, -1i), reverseBits(u_input.b.x), u_input.b.x)), Struct_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1584f), _wgslsmith_f_op_f32(func_1(vec4<f32>(-217f, var_2.x, var_1.x, -319f), true, u_input.b.x, -13805i)), _wgslsmith_f_op_f32(-var_1.x)))), Struct_2(-(vec3<i32>(1i, 24963i, -58781i) >> (u_input.c % vec3<u32>(32u))), Struct_1(~u_input.b.x, 81590u, var_1.x, 27903u, vec4<f32>(281f, -1000f, var_1.x, var_1.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, u_input.c.x), vec4<u32>(76329u, u_input.c.x, 0u, u_input.a)), min(vec4<u32>(1u, u_input.c.x, 19637u, u_input.c.x), vec4<u32>(11065u, 11444u, var_0.x, u_input.a))))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.b.xx, -reverseBits(global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec2<bool>(false, !global0.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f - 441f) * _wgslsmith_f_op_f32(func_1(vec4<f32>(-311f, -528f, 783f, 1463f), true, var_0.x, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(458f - 570f) + _wgslsmith_f_op_f32(sign(-641f)))), _wgslsmith_f_op_f32(f32(-1f) * -596f))));
    var var_2 = var_1.x;
    let var_3 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, -1i, -2147483647i), vec4<i32>(u_input.b.x, 13578i, var_0.x, 17627i)), -vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.b.x)), vec4<i32>(-14471i, -2147483647i, -1i, -25555i) >> (vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x) % vec4<u32>(32u))), 19047u, -1013f, ~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(399f, var_1.x, 865f, var_1.x), vec4<f32>(-106f, -830f, 1502f, var_1.x), vec4<bool>(false, global0.x, true, false))) + vec4<f32>(-1007f, var_1.x, var_1.x, var_1.x)))));
    var_2 = -597f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(step(var_3.a.e, vec4<f32>(var_1.x, var_3.a.c, var_3.a.c, 226f))), false, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 7836i, var_0.x, var_3.a.a), vec4<i32>(64980i, var_0.x, var_0.x, var_3.a.a)), ~(-1i))), var_3.a.c, _wgslsmith_f_op_f32(-var_3.a.e.x))), var_3.a.e.x, global1[_wgslsmith_index_u32(~(~var_3.a.d) ^ ~(~var_3.a.d), 5u)] ^ ~(vec2<i32>(0i, 11285i) & ~u_input.b.xx), global1[_wgslsmith_index_u32(u_input.a, 5u)], vec2<i32>(firstLeadingBit(1i), var_0.x));
}

