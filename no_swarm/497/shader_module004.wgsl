struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(Struct_1(~_wgslsmith_add_u32(firstLeadingBit(u_input.b), ~36499u)), Struct_2(Struct_1(_wgslsmith_mod_u32(0u, ~5947u)), vec3<bool>(true, true, true), Struct_1(u_input.b), -3184i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1952f), 1000f))));
    let var_1 = vec3<u32>(1u, 1u, 1u) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.a.a, 1u, _wgslsmith_mod_u32(~4294967295u, 36036u)), reverseBits(max(abs(vec3<u32>(94433u, 0u, var_0.b.a.a)), ~vec3<u32>(43592u, 51344u, u_input.b))));
    var_0 = Struct_3(Struct_1(~_wgslsmith_mult_u32(0u, ~4294967295u)), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f + _wgslsmith_f_op_f32(trunc(1633f)))));
    var var_2 = Struct_3(var_0.b.c, var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(abs(var_0.c)))) * -1834f), -802f)));
    var var_3 = !(!select(!select(global0[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(false, false, true, var_0.b.b.x), vec4<bool>(var_0.b.b.x, var_0.b.b.x, false, var_2.b.b.x)), !select(global0[_wgslsmith_index_u32(var_2.b.c.a, 8u)], vec4<bool>(true, var_0.b.b.x, false, var_2.b.b.x), vec4<bool>(true, true, var_0.b.b.x, var_0.b.b.x)), !var_2.b.b.x && true));
    return vec4<i32>(~(-_wgslsmith_sub_i32(-2147483647i, var_2.b.d)) >> (22983u % 32u), var_0.b.d, var_2.b.d, _wgslsmith_mult_i32(var_0.b.d << (~abs(20259u) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(var_2.b.d, 0i, -1i)), _wgslsmith_clamp_vec3_i32(u_input.c >> (vec3<u32>(var_2.a.a, 0u, u_input.b) % vec3<u32>(32u)), max(vec3<i32>(var_0.b.d, u_input.c.x, 2147483647i), vec3<i32>(var_2.b.d, 1i, 2147483647i)), vec3<i32>(-19556i, var_0.b.d, var_2.b.d) & vec3<i32>(9172i, 0i, -1i)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: i32) -> vec2<f32> {
    let var_0 = func_3();
    global0 = array<vec4<bool>, 8>();
    let var_1 = arg_0;
    global0 = array<vec4<bool>, 8>();
    global0 = array<vec4<bool>, 8>();
    return _wgslsmith_div_vec2_f32(vec2<f32>(1349f, 648f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1299f, -737f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1739f)))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = arg_0;
    global0 = array<vec4<bool>, 8>();
    let var_1 = Struct_3(Struct_1((_wgslsmith_dot_vec4_u32(vec4<u32>(34146u, 65137u, 58883u, 96789u), vec4<u32>(1u, u_input.b, u_input.b, u_input.b)) | ~4294967295u) >> (abs(66877u) % 32u)), Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec3<bool>(true || (arg_2.x <= arg_0), true, arg_1.x), Struct_1(~44749u), -min(countOneBits(78430i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.a, 0i), vec4<i32>(-9827i, u_input.c.x, -2147483647i, 2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) * _wgslsmith_f_op_f32(ceil(268f))) * _wgslsmith_f_op_f32(1916f * _wgslsmith_div_f32(-1317f, -1460f)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_u32(~87424u, _wgslsmith_add_u32(min(var_1.b.a.a, var_1.b.c.a), u_input.b))), vec3<bool>(!any(select(arg_1.wzw, var_1.b.b, vec3<bool>(arg_1.x, true, var_1.b.b.x))), false, var_1.b.c.a <= _wgslsmith_dot_vec2_u32(abs(vec2<u32>(26339u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 36797u), vec2<u32>(var_1.a.a, 1u)))), Struct_1(_wgslsmith_mult_u32(u_input.b, u_input.b)), select(i32(-1i) * -_wgslsmith_mult_i32(var_1.b.d, -15264i), min(_wgslsmith_mult_i32(firstLeadingBit(var_1.b.d), func_3().x), u_input.a), arg_1.x));
    global0 = array<vec4<bool>, 8>();
    return var_1;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<bool>, 8>();
    var var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.a.a, 14036u), 38567u | arg_0), ~0u, !all(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x))), _wgslsmith_mult_u32(~(~arg_0), ~(~1u))), 8u)];
    let var_1 = arg_1;
    global0 = array<vec4<bool>, 8>();
    let var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2052f)) - _wgslsmith_f_op_f32(-672f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-168f + 1433f), _wgslsmith_f_op_f32(-1230f + -471f)))), !global0[_wgslsmith_index_u32(u_input.b, 8u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_div_f32(-656f, _wgslsmith_f_op_f32(max(-1715f, -912f)))) - _wgslsmith_f_op_vec2_f32(func_2(Struct_1(~arg_0), ~arg_1.a.a, ~vec4<u32>(arg_0, arg_1.c.a, 1u, 1u) << (select(vec4<u32>(50888u, 71151u, arg_0, 0u), vec4<u32>(u_input.b, arg_1.a.a, 101567u, 0u), global0[_wgslsmith_index_u32(u_input.b, 8u)]) % vec4<u32>(32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(-32052i, u_input.c.x), -24707i)))));
    return var_2.b.a;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(555f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(arg_1.a, ~u_input.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.c.a, 55594u, arg_1.a.a, u_input.b), vec4<u32>(arg_1.a.a, arg_1.a.a, 665u, 56752u), vec4<u32>(arg_1.a.a, arg_1.b.a.a, 4294967295u, arg_1.b.c.a)), func_4(371f, global0[_wgslsmith_index_u32(9459u, 8u)], vec2<f32>(arg_1.c, arg_0)).b.d)).x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2200f)), arg_0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 696f), _wgslsmith_f_op_f32(-arg_0))), 307f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, 4027f, 765f, arg_1.c)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.c, arg_1.c, 484f, arg_0), vec4<f32>(arg_1.c, arg_0, 2238f, 1040f))))) + vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2(arg_1.a, u_input.b, vec4<u32>(u_input.b, 0u, arg_1.a.a, arg_1.a.a), u_input.c.x)).x, -538f, _wgslsmith_f_op_f32(arg_0 + -202f), _wgslsmith_f_op_f32(trunc(arg_0))))))));
    var var_1 = var_0.yww;
    var var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1236f, -1225f)), -606f)), _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1536f + var_0.x), -1000f, all(global0[_wgslsmith_index_u32(0u, 8u)]))))), global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(arg_1.a.a), ~_wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), ~vec4<u32>(31215u, 121896u, 1u, arg_1.a.a), firstTrailingBit(vec4<u32>(arg_1.a.a, 43067u, 1u, u_input.b))), reverseBits(22454i))) * var_1.xz)).b;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-48238i, u_input.c.x, 1i), select(u_input.c, vec3<i32>(-1i, arg_1.b.d, -36560i), arg_1.b.b)), ~(vec3<i32>(-1i) * -u_input.c)), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(1i, _wgslsmith_sub_i32(19734i, func_3().x), func_3().x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(4294967295u, ~u_input.b) | firstLeadingBit(~u_input.b), _wgslsmith_mod_i32(func_5(_wgslsmith_f_op_f32(max(-757f, _wgslsmith_f_op_f32(trunc(-295f)))), Struct_3(func_1(u_input.b, Struct_2(Struct_1(0u), vec3<bool>(false, false, true), Struct_1(0u), 36592i)), func_4(635f, vec4<bool>(false, false, true, true), vec2<f32>(-1727f, -1291f)).b, _wgslsmith_f_op_f32(select(1283f, -754f, true)))), -_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 30533i, u_input.a), vec4<i32>(u_input.a, 1i, -2147483647i, -1i)))), -2050f);
}

