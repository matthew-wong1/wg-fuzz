struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(61842u, 4294967295u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 25207u), vec4<u32>(24616u, 17581u, 4294967295u, 0u), vec4<u32>(4294967295u, 26093u, 24448u, 120732u), vec4<u32>(0u, 0u, 53301u, 52999u), vec4<u32>(63192u, 1u, 4294967295u, 86554u), vec4<u32>(7322u, 61795u, 0u, 0u), vec4<u32>(35984u, 76840u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 381u, 36219u), vec4<u32>(4294967295u, 1u, 67912u, 1u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(1u, 0u, 71788u, 1u), vec4<u32>(1u, 4294967295u, 5489u, 56290u), vec4<u32>(31285u, 18157u, 4294967295u, 75260u), vec4<u32>(1770u, 26043u, 51791u, 0u), vec4<u32>(4294967295u, 104442u, 0u, 4294967295u), vec4<u32>(0u, 30265u, 3573u, 4294967295u), vec4<u32>(111735u, 23650u, 22390u, 55122u), vec4<u32>(4294967295u, 38054u, 0u, 11042u), vec4<u32>(0u, 4294967295u, 3156u, 901u), vec4<u32>(0u, 1u, 4294967295u, 21742u), vec4<u32>(0u, 82018u, 17892u, 53170u), vec4<u32>(73041u, 1u, 4294967295u, 45794u));

var<private> global1: array<Struct_2, 28>;

var<private> global2: bool = false;

var<private> global3: vec4<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(733f - _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-221f, -549f), _wgslsmith_f_op_f32(max(244f, 446f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f - 1132f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(626f, -115f)), true && any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f + 1188f))))));
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(10135u), u_input.a.x, firstTrailingBit(u_input.a.x), 4294967295u), ~vec4<u32>(u_input.a.x, ~u_input.c.x, ~u_input.b, min(4294967295u, u_input.b))));
    var var_2 = Struct_2(var_0, Struct_1(~(~max(u_input.b, 50916u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 617f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, 800f), vec2<f32>(-2461f, -992f), true))))), true), 22304i, Struct_1(abs(_wgslsmith_sub_u32(~var_1.x, 21067u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1811f, var_0) - vec2<f32>(579f, var_0)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-713f, 110f)))))), true));
    global1 = array<Struct_2, 28>();
    global2 = true;
    return abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(global3.xxy), global3.xyx));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-613f, -485f), _wgslsmith_f_op_f32(1453f * -907f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(178f, -636f, false)), -1066f)))), Struct_1(~u_input.b, vec2<f32>(474f, -192f), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), any(vec4<bool>(true, true, false, true))))), -31391i, Struct_1(~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-354f, 511f)))))), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1336f, -244f, false)), 162f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + -674f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f - 1000f) - 657f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(floor(var_0.d.b.x)), var_0.b.b.x < var_0.a)))))));
    let var_2 = Struct_2(724f, Struct_1(~_wgslsmith_add_u32(var_0.b.a, var_0.b.a) ^ u_input.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.d.b.x, -626f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.b) + _wgslsmith_div_vec2_f32(var_0.d.b, var_0.b.b)))), !(!var_0.d.c)), var_0.c, var_0.d);
    let var_3 = !any(select(!(!vec3<bool>(var_0.b.c, false, var_2.b.c)), vec3<bool>(var_0.b.c, true, select(var_0.d.c, var_0.b.c, true)), select(!vec3<bool>(var_2.d.c, var_2.b.c, var_0.b.c), vec3<bool>(true, false, var_2.b.c), !vec3<bool>(var_2.d.c, var_2.b.c, var_0.b.c))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -773f), _wgslsmith_f_op_f32(var_2.d.b.x * _wgslsmith_f_op_f32(-709f * var_0.d.b.x))));
    return all(!(!(!select(vec4<bool>(var_3, var_3, true, var_0.b.c), vec4<bool>(var_2.d.c, true, var_2.b.c, true), var_2.d.c))));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.b, 61807u), ~58516u), ~u_input.a);
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -826f) + -615f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -390f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(756f)))))) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f))));
    global2 = select(func_4(func_3(), -u_input.e, firstLeadingBit(vec2<i32>(reverseBits(-47245i), i32(-1i) * -53796i))), true, all(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true)));
    return Struct_2(var_2.x, Struct_1(~var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -(var_1 | -19893i), u_input.e.x, u_input.e.x), -vec4<i32>(-40348i, var_1, -8460i, u_input.e.x)), Struct_1(9645u, vec2<f32>(-891f, -677f), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), true))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = vec2<bool>(true, func_2().d.c);
    var var_3 = _wgslsmith_add_u32(4294967295u, ~func_2().d.a);
    global3 = vec4<i32>(arg_1 & -1i, _wgslsmith_mult_i32(var_0.c, u_input.e.x), -(~2147483647i), -2147483647i);
    return var_0.d;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2.b.x;
    let var_1 = firstLeadingBit(u_input.e.x);
    global3 = ~(~vec4<i32>(-4600i, arg_0, arg_0, ~23972i << (~arg_3.a % 32u)));
    var var_2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(global3.wzw, global3.wyy), -2147483647i & ~(-1i << (arg_3.a % 32u)), global3.x, _wgslsmith_div_i32(_wgslsmith_div_i32(i32(-1i) * -25860i, -arg_0), i32(-1i) * -41704i)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-695f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.x - arg_3.b.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(func_1(vec3<bool>(false, true, false), u_input.e.x, vec2<f32>(-492f, -1082f)).b.x, _wgslsmith_f_op_f32(var_0 + -660f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-874f, _wgslsmith_f_op_f32(func_2().a - _wgslsmith_f_op_f32(abs(2004f))))), _wgslsmith_f_op_f32(floor(arg_1)));
    return _wgslsmith_dot_vec2_u32(select(firstTrailingBit(~u_input.a), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 30638u) >> (vec2<u32>(arg_2.a, 23792u) % vec2<u32>(32u))), ~(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) > _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(max(var_0, -1024f)))), _wgslsmith_div_vec2_u32(~select(u_input.c, vec2<u32>(arg_3.a, arg_3.a), arg_2.c), ~reverseBits(vec2<u32>(u_input.b, arg_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(all(vec2<bool>(true, true)), !(all(vec4<bool>(true, true, true, true)) & any(vec2<bool>(true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), u_input.e.x <= -u_input.e.x)), (func_5(~(-14253i), _wgslsmith_f_op_f32(trunc(643f)), func_1(vec3<bool>(false, true, false), 27i, vec2<f32>(-617f, 1639f)), Struct_1(u_input.a.x, vec2<f32>(691f, 648f), true)) > ~131400u) || (select(func_4(5951i, u_input.e, u_input.e), func_1(vec3<bool>(false, false, true), -8107i, vec2<f32>(-469f, 161f)).c, all(vec4<bool>(false, false, false, false))) && func_1(vec3<bool>(false, false, false), 2147483647i, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(124f, -1593f)))).c));
    var var_1 = _wgslsmith_mult_u32(func_5(firstLeadingBit(u_input.e.x), _wgslsmith_div_f32(153f, -736f), func_2().d, func_2().d) << (~4294967295u % 32u), ~(func_2().b.a | countOneBits(u_input.b))) & _wgslsmith_div_u32(61390u, firstLeadingBit(select(~37142u, _wgslsmith_div_u32(u_input.c.x, u_input.b), !var_0.x)));
    var var_2 = Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1297f))), _wgslsmith_f_op_f32(f32(-1f) * -136f)), !select(var_0.x, ~u_input.a.x != (4294967295u >> (u_input.a.x % 32u)), select(false, any(var_0.xyz), true)));
    global1 = array<Struct_2, 28>();
    var var_3 = global3.wxx;
    var_2 = func_1(select(select(select(vec3<bool>(false, var_0.x, var_2.c), var_0.xzy, !vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(false, false, true), vec3<bool>(var_2.c, var_0.x, var_2.c), vec3<bool>(true, false, var_0.x)), all(vec3<bool>(var_2.c, var_0.x, var_2.c))), vec3<bool>(all(select(vec4<bool>(var_2.c, true, true, false), vec4<bool>(true, false, false, true), true)), ~53357u <= func_1(vec3<bool>(false, var_2.c, true), u_input.e.x, var_2.b).a, var_2.c), !all(var_0.wz) & (var_2.a < (var_2.a & 1u))), _wgslsmith_add_i32(-2147483647i, global3.x), var_2.b);
    global3 = vec4<i32>(var_3.x, -30848i, var_3.x, _wgslsmith_sub_i32(0i, 27804i));
    global1 = array<Struct_2, 28>();
    var var_4 = _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_2.a, ~reverseBits(0u), 1u)), vec3<u32>(~_wgslsmith_add_u32(var_2.a, ~4294967295u), ~_wgslsmith_add_u32(countOneBits(94793u), u_input.d), ~(~_wgslsmith_add_u32(u_input.a.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<i32>(-1i) * -(~firstLeadingBit(vec4<i32>(31036i, -4335i, 1i, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1138f)) * var_2.b.x)) * var_2.b.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(var_3.x, global3.x, var_3.x, u_input.e.x) | vec4<i32>(var_3.x, -18623i, global3.x, -2147483647i)), vec4<i32>(global3.x, -1i, -11463i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 37600i, -21337i, u_input.e.x), vec4<i32>(global3.x, var_3.x, -5756i, 34965i)))), ~reverseBits(vec4<i32>(36073i, global3.x, u_input.e.x, global3.x)) << (_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(var_2.a >> (u_input.d % 32u), 23u)], _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(80074u, 23u)], vec4<u32>(26174u, 112558u, 0u, var_2.a))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2().b.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.b.x)))))));
}

