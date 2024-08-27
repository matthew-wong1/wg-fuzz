struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-1i, -18564i, 48747i, -48791i), vec4<i32>(-13208i, 25260i, 2147483647i, -87604i), vec4<i32>(0i, 1i, -24603i, 42707i), vec4<i32>(-55278i, 32184i, 236i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 1i, -7089i), vec4<i32>(1i, -32383i, i32(-2147483648), 10864i), vec4<i32>(2147483647i, i32(-2147483648), -16755i, 19193i), vec4<i32>(28125i, 0i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -29804i), vec4<i32>(-13903i, 23100i, 16021i, 33340i), vec4<i32>(-8537i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(-18690i, -63122i, 8457i, 2147483647i), vec4<i32>(2147483647i, -24319i, 5440i, 7725i), vec4<i32>(-1i, -34054i, -1i, 26000i), vec4<i32>(9685i, -1i, 0i, 0i), vec4<i32>(-1i, i32(-2147483648), -1i, -1i), vec4<i32>(-29831i, -15888i, -3528i, 49578i), vec4<i32>(1i, 7871i, 4200i, -44233i), vec4<i32>(0i, 1i, i32(-2147483648), 9461i), vec4<i32>(1i, -1i, -1i, -10915i), vec4<i32>(-18660i, 23820i, 6106i, 0i), vec4<i32>(1i, -28000i, i32(-2147483648), -1i), vec4<i32>(-1i, -55050i, i32(-2147483648), -8613i), vec4<i32>(1i, 2147483647i, 0i, -15238i), vec4<i32>(-34406i, -30640i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), -22426i, 1i, -953i), vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-14618i, 22473i, 13283i, 25093i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32) -> u32 {
    global0 = array<vec4<i32>, 28>();
    let var_0 = false;
    let var_1 = Struct_1(vec3<f32>(776f, 1107f, -655f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f), arg_0), -706f), vec4<i32>(u_input.b, _wgslsmith_mult_i32(~(~u_input.b), u_input.a.x), u_input.a.x, i32(-1i) * -2147483647i), _wgslsmith_f_op_f32(354f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_sub_vec4_u32(reverseBits(select(~vec4<u32>(4294967295u, 30979u, 1u, 0u), abs(vec4<u32>(30911u, 4294967295u, 40560u, 40077u)), select(false, var_0, var_0))), ~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_2 = var_1;
    var var_3 = !(!(!select(vec3<bool>(false, true, var_0), select(vec3<bool>(false, false, false), vec3<bool>(false, var_0, var_0), false), var_0)));
    return ~var_1.e.x;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_3) -> vec4<i32> {
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    return ~(~global0[_wgslsmith_index_u32(arg_1.x, 28u)]) << (abs(_wgslsmith_mod_vec4_u32(reverseBits(reverseBits(arg_1)), firstLeadingBit(~vec4<u32>(1u, arg_0, arg_1.x, arg_1.x)))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(func_3(0u, vec4<u32>(1u, ~1u, 1u, func_2(_wgslsmith_f_op_f32(f32(-1f) * -211f))), all(vec2<bool>(false, true)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(908f * 727f) + -249f), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 15875i, arg_1), vec3<i32>(arg_1, arg_1, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, arg_0.x, -341f)))), true)), vec4<i32>(reverseBits(u_input.b), u_input.b, firstLeadingBit(-2147483647i) & arg_1, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(-3355i, -2147483647i), u_input.a >> (vec2<u32>(1u, 32811u) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(429f * _wgslsmith_f_op_f32(arg_0.x + -245f)) + arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(-1000f * var_1)), -721f)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))))), Struct_2(-u_input.b), vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), -823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + -1068f))))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, -686f > arg_0.x, all(vec4<bool>(true, true, false, false))), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_2.c - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_1, var_2.c.x)), _wgslsmith_f_op_f32(step(var_2.a, var_1)), _wgslsmith_f_op_f32(trunc(-341f))), var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(floor(923f))), _wgslsmith_f_op_f32(sign(-2876f))))), abs(~vec4<i32>(var_0.x, -2147483647i, ~30085i, _wgslsmith_mod_i32(var_0.x, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * arg_0.x) * _wgslsmith_div_f32(361f, -300f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1, var_2.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f + 881f)))), ~(~select(max(vec4<u32>(101754u, 78817u, 1u, 24254u), vec4<u32>(34883u, 4294967295u, 0u, 0u)), select(vec4<u32>(4294967295u, 33979u, 0u, 5961u), vec4<u32>(33548u, 0u, 1u, 73778u), vec4<bool>(var_2.d, true, var_2.d, true)), all(vec3<bool>(var_2.d, true, var_2.d)))));
    let var_4 = var_3.e.zxy;
    return var_2.d;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> Struct_4 {
    global0 = array<vec4<i32>, 28>();
    let var_0 = select(!select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true)), !vec2<bool>(false, arg_0), -1207f <= arg_1), !vec2<bool>(true, arg_0), false), vec2<bool>(!(arg_0 || !arg_0), true), !(!(!vec2<bool>(arg_0, arg_0))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 * arg_1))), arg_1, arg_1) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -782f) * vec3<f32>(1000f, arg_1, 1522f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(978f, 1417f, arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(957f * -1652f))))), select(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, arg_2.x), u_input.a.x), abs(reverseBits(18408i)), arg_2.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, u_input.a.x, 14753i), arg_2) & _wgslsmith_mod_i32(0i, -48300i), u_input.b, 2147483647i, -2147483647i), false), _wgslsmith_f_op_f32(round(-1213f)), countOneBits(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(36767u, 1u, 11391u, 0u), vec4<u32>(67007u, 1u, 68343u, 0u), vec4<u32>(76725u, 5485u, 28537u, 86378u)))));
    global0 = array<vec4<i32>, 28>();
    var var_2 = vec4<u32>(var_1.e.x ^ 1403u, 0u, var_1.e.x, abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34355u, var_1.e.x, 16332u) >> (vec3<u32>(0u, var_1.e.x, var_1.e.x) % vec3<u32>(32u)), vec3<u32>(0u, 1u, var_1.e.x)), var_1.e.x)));
    return Struct_4(abs(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(2147483647i, -6522i, arg_2.x, var_1.c.x)), vec4<i32>(2147483647i, var_1.c.x, 38826i, u_input.a.x), min(var_1.c, var_1.c))) | var_1.c);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_1.a.x;
    let var_1 = arg_1;
    let var_2 = ~(-func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f - -735f)), var_1.a.zww).a.x);
    var var_3 = !vec3<bool>(false, true, any(vec2<bool>(true, true)));
    global0 = array<vec4<i32>, 28>();
    return vec2<u32>(875u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(3722u, 11490u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 35869u), vec2<u32>(22549u, 44938u >> (0u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 28>();
    var var_0 = ~func_5(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(u_input.b, -65269i)), func_4(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1111f, 411f)), u_input.b), -1000f, ~reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, 36809i))), -812f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1338f + 1039f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1893f, 248f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-685f, -1000f)), _wgslsmith_f_op_f32(select(210f, 345f, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(950f, 1798f, 241f))))))), _wgslsmith_f_op_f32(f32(-1f) * -307f), global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, 83762u), var_0.x)), 28u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)))), 1253f, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-198f, -1006f), vec2<f32>(428f, -894f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-417f, 987f))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(-17555i, u_input.a.x)), ~u_input.a)))), _wgslsmith_div_vec4_u32(vec4<u32>(~(~var_0.x), 1u, 8855u, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_add_u32(var_0.x, 31923u), 1u)), firstTrailingBit(vec4<u32>(~0u, min(var_0.x, var_0.x), 4294967295u, ~0u))));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(floor(-3091f)))))), func_4(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -127f)), vec3<i32>(_wgslsmith_div_i32(u_input.b, 0i), var_1.c.x, -abs(2147483647i))).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * 678f))), vec4<u32>(_wgslsmith_div_u32(0u, min(var_0.x, var_1.e.x)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 25053u, var_0.x), var_1.e.yzw), ~var_1.e.x | ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33399u, 113738u, 0u), firstLeadingBit(var_1.e))), 1u, 9843u));
    let var_2 = Struct_2(_wgslsmith_add_i32(var_1.c.x, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, var_1.c);
}

