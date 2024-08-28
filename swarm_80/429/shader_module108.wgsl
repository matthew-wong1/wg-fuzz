struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(29348i, -1i), vec2<i32>(8265i, 17523i), vec2<i32>(35747i, -1i), vec2<i32>(24214i, 35408i), vec2<i32>(33793i, -10233i), vec2<i32>(18724i, 1344i), vec2<i32>(-1i, 2147483647i), vec2<i32>(55542i, 63183i), vec2<i32>(53900i, 840i), vec2<i32>(-5255i, i32(-2147483648)), vec2<i32>(38329i, i32(-2147483648)), vec2<i32>(-10472i, -90968i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> vec2<f32> {
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(244f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1402f, 1407f)), _wgslsmith_f_op_f32(590f * -455f), true))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1019f + _wgslsmith_f_op_f32(f32(-1f) * -111f))))), -351f);
}

fn func_3() -> bool {
    var var_0 = vec4<f32>(1000f, -154f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-829f, 2120f, false)), _wgslsmith_div_f32(-249f, -189f)))), -1338f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -781f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_1()).x, -1000f))) * _wgslsmith_f_op_f32(-466f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1250f, -323f)))))));
    global0 = array<vec2<i32>, 12>();
    let var_1 = vec3<i32>(~abs(0i), -_wgslsmith_add_i32(1056i, _wgslsmith_div_i32(i32(-1i) * -27794i, -2147483647i)), reverseBits(select(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(40928i, 22730i, -1i), vec3<i32>(-2147483647i, -1i, -39160i))), -(i32(-1i) * -23276i), any(vec2<bool>(false, true)))));
    let var_2 = i32(-1i) * -2147483647i;
    var var_3 = Struct_4(!all(vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_0.zw)), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_div_f32(750f, 164f), 38920i, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 44513u), vec3<u32>(u_input.a, u_input.b, 1u)), vec3<u32>(u_input.b, 41299u, 4294967295u) & vec3<u32>(49347u, u_input.b, 4294967295u)), vec3<u32>(3316u, u_input.b, u_input.a) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a, 129849u), vec3<u32>(u_input.b, 0u, 0u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 536f)), Struct_3(Struct_2(Struct_1(vec2<f32>(-983f, -266f), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), 1501f, -(_wgslsmith_sub_i32(var_2, var_1.x) >> (u_input.b % 32u)), vec3<u32>(~u_input.b, 1u, ~(~0u))));
    return select(var_3.a | (_wgslsmith_f_op_f32(f32(-1f) * -685f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -704f) + _wgslsmith_f_op_f32(-var_3.b.a.a.a.x))), var_3.d.a.a.b.x, select(select(true, true, var_3.d.a.a.c.x), all(!select(vec4<bool>(var_3.d.a.a.b.x, var_3.d.a.a.b.x, var_3.d.a.a.b.x, var_3.a), vec4<bool>(false, true, var_3.d.a.a.c.x, false), vec4<bool>(var_3.d.a.a.b.x, true, false, var_3.a))), !select(!var_3.b.a.a.c.x, !var_3.d.a.a.b.x, false)));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1336f, 1081f) * vec2<f32>(289f, 1053f)), _wgslsmith_div_vec2_f32(vec2<f32>(2099f, -418f), vec2<f32>(-275f, 2187f)))), arg_2.zx, arg_2.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x)))), i32(-1i) * -31786i, countOneBits(vec3<u32>(arg_1 >> (30811u % 32u), 1u, _wgslsmith_mod_u32(25579u, 69554u))));
    let var_1 = var_0.d.yx << (firstLeadingBit(var_0.d.xx) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -851f))) > _wgslsmith_f_op_f32(var_0.a.a.a.x * var_0.b);
    var_2 = true;
    var var_3 = Struct_4(all(!select(select(vec4<bool>(arg_2.x, false, true, true), vec4<bool>(true, true, arg_2.x, var_0.a.a.b.x), arg_2.x), !vec4<bool>(var_0.a.a.b.x, true, var_0.a.a.c.x, var_0.a.a.b.x), false)), Struct_3(var_0.a, var_0.a.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-16948i, _wgslsmith_mult_i32(arg_0, var_0.c), _wgslsmith_sub_i32(var_0.c, var_0.c)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(arg_0, var_0.c, arg_0)), vec3<i32>(1i, 1i, 1i))), ~vec3<u32>(arg_1, 22442u, arg_1) & var_0.d), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.a.a.x, var_0.a.a.a.x))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a.a.a - vec2<f32>(1165f, 964f)), vec2<bool>(var_0.a.a.b.x, arg_2.x), var_0.a.a.b)), -192f, select(2147483647i, -24927i, var_0.a.a.c.x), min(~(~vec3<u32>(var_0.d.x, 1u, 77845u)), firstLeadingBit(var_0.d))));
    return !select(!vec4<bool>(true, any(arg_2), true, !arg_2.x), vec4<bool>(true, all(!vec4<bool>(arg_2.x, var_3.d.a.a.c.x, false, false)), !var_3.b.a.a.b.x, arg_2.x), true);
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_4(true, Struct_3(Struct_2(Struct_1(arg_0, select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), arg_0.x, -1i, vec3<u32>(abs(1u), u_input.b, u_input.a)), arg_0, Struct_3(Struct_2(Struct_1(arg_0, vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), arg_0.x, abs(1i) ^ _wgslsmith_div_i32(2147483647i >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 3906i, 1i, 1i), vec4<i32>(-1i, -41748i, 17485i, 1i))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, ~48449u), u_input.b, 1u)));
    let var_1 = -132f;
    let var_2 = select(!select(select(select(vec4<bool>(var_0.b.a.a.c.x, false, var_0.b.a.a.b.x, true), vec4<bool>(var_0.b.a.a.b.x, var_0.a, var_0.b.a.a.b.x, false), var_0.b.a.a.b.x), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.a.a.c.x, true, true, true), vec4<bool>(true, var_0.b.a.a.c.x, false, var_0.d.a.a.b.x)), true), func_4(firstLeadingBit(_wgslsmith_add_i32(countOneBits(0i), var_0.b.c)), 0u, vec3<bool>(_wgslsmith_f_op_f32(-141f + arg_0.x) < _wgslsmith_f_op_f32(557f * 752f), true | func_3(), (u_input.a < 86486u) != true)), !vec4<bool>(var_0.b.a.a.b.x, (var_0.b.c <= var_0.d.c) || true, false && (arg_0.x >= 1000f), false || all(vec3<bool>(var_0.a, true, var_0.b.a.a.c.x))));
    let var_3 = Struct_4(func_4(var_0.d.c, ~_wgslsmith_add_u32(~u_input.a, ~38816u), var_2.zww).x, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a.a.a), select(var_2.wx, vec2<bool>(false, var_0.b.a.a.b.x), vec2<bool>(var_2.x, var_2.x)), !vec2<bool>(var_0.b.a.a.b.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.a.a.x, -162f)), _wgslsmith_add_i32(var_0.d.c, abs(-4129i)), ~vec3<u32>(4294967295u, 1u, abs(114387u))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(select(799f, -156f, !var_2.x))), vec2<f32>(-484f, _wgslsmith_f_op_f32(f32(-1f) * -1920f)), true)), Struct_3(Struct_2(var_0.d.a.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1248f))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.c | -57180i, firstLeadingBit(var_0.d.c), ~var_0.b.c), vec3<i32>(1i, -35741i, var_0.b.c) | countOneBits(vec3<i32>(7119i, -1i, -27490i))), _wgslsmith_sub_vec3_u32(var_0.b.d, var_0.d.d)));
    let var_4 = firstLeadingBit(0u);
    return Struct_4(var_2.x, var_0.d, vec2<f32>(var_3.d.b, arg_0.x), Struct_3(var_3.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.x, -274f)), _wgslsmith_f_op_f32(f32(-1f) * -383f)))), 19494i, var_0.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 12>();
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1()))))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(var_0.c + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(round(var_0.b.a.a.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.a.a.a.x), -576f))));
    let var_2 = -1000f;
    var var_3 = ~var_1.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1581f, _wgslsmith_f_op_f32(-1641f - var_2)) + var_1.c)).b.d.x, 12u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.a.a.x, var_1.c.x, var_2, -568f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(305f, var_2, var_0.b.a.a.a.x, -361f) * vec4<f32>(1593f, var_1.c.x, -1093f, var_0.b.a.a.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2 - 1817f), _wgslsmith_f_op_f32(var_0.b.b - 957f), -1487f, -247f))), abs(~_wgslsmith_add_u32(var_1.b.d.x, 0u)) << (~_wgslsmith_add_u32(~1u, abs(u_input.a)) % 32u));
}

