struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(select(u_input.a, ~arg_0.a ^ u_input.a, arg_0.c), 1i, false, !select(!vec4<bool>(arg_0.c, true, arg_0.c, true), select(!vec4<bool>(false, false, true, arg_0.d.x), select(arg_0.d, arg_0.d, arg_0.d), arg_0.d), true));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-325f * -1510f), 558f)) + _wgslsmith_f_op_f32(366f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1027f)), _wgslsmith_f_op_f32(min(182f, -787f)))))));
    return _wgslsmith_sub_u32(u_input.a | ~abs(71389u), 1u) & u_input.a;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = vec3<bool>(arg_0, arg_0, arg_0);
    var var_1 = Struct_1(reverseBits(u_input.a >> ((firstTrailingBit(1u) & 38863u) % 32u)), ~(-_wgslsmith_sub_i32(abs(4274i), ~(-59809i))), !var_0.x, select(!vec4<bool>(true, true, true | arg_0, !arg_0), !(!(!vec4<bool>(false, arg_0, false, true))), vec4<bool>(true, any(vec4<bool>(false, false, true, arg_0)), var_0.x, all(vec3<bool>(true, arg_0, arg_0)))));
    var_1 = Struct_1(func_3(Struct_1(~u_input.a | _wgslsmith_mult_u32(var_1.a, 36212u), -20759i, !(var_1.c && var_1.d.x), var_1.d)), _wgslsmith_mod_i32(var_1.b, var_1.b), arg_0, !select(var_1.d, var_1.d, any(select(vec2<bool>(true, var_1.c), var_1.d.zx, true))));
    var_1 = Struct_1(u_input.a, -var_1.b, false, vec4<bool>(var_1.d.x, true, var_0.x, false && all(vec4<bool>(true, var_0.x, var_1.d.x, arg_0))));
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_1 {
    var var_0 = ~arg_1 << (u_input.a % 32u);
    var_0 = arg_1;
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-(i32(-1i) * -68834i), _wgslsmith_clamp_i32(-21295i, 1965i << (u_input.a % 32u), _wgslsmith_mod_i32(arg_1, -37058i))) << (min(vec2<u32>(u_input.a ^ 54494u, _wgslsmith_div_u32(u_input.a, 0u)), ~(~vec2<u32>(u_input.a, 10557u))) % vec2<u32>(32u)), abs(_wgslsmith_mult_vec2_i32(countOneBits(~vec2<i32>(-2147483647i, arg_1)), max(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(42199i, 1511i), vec2<i32>(arg_1, arg_1))))));
    var_0 = -11267i;
    let var_2 = -507f;
    return Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, max(u_input.a, 0u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 18610u, 13841u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.a, arg_0)), _wgslsmith_clamp_u32(~(~44051u), u_input.a, (12771u << (u_input.a % 32u)) | 0u), 1u), _wgslsmith_sub_i32(arg_1, var_1.x), true, !select(select(vec4<bool>(false, arg_0, arg_0, true), !vec4<bool>(arg_0, false, arg_0, true), arg_0), vec4<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, false)), arg_1 < arg_1, true, !arg_0), true));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_i32(select(vec2<i32>(min(24155i, 12027i), -1i), min(vec2<i32>(-1i, arg_0.b) ^ vec2<i32>(-2147483647i, arg_0.b), ~vec2<i32>(arg_0.b, 1i)), arg_0.d.wx), max(countOneBits(vec2<i32>(1i, 0i)) >> (~vec2<u32>(u_input.a, arg_0.a) % vec2<u32>(32u)), select(-vec2<i32>(arg_0.b, -3980i), countOneBits(vec2<i32>(arg_0.b, 30156i)), !vec2<bool>(arg_0.c, false)))));
    global0 = array<vec2<f32>, 24>();
    var var_1 = countOneBits(var_0.x);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(arg_0, 736f, _wgslsmith_f_op_f32(round(arg_0)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 956f), var_0.x, _wgslsmith_f_op_f32(149f - -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0 + -1188f), 126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, arg_0))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(543f)), var_0.x, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1268f, -646f))))));
    var_0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(exp2(var_0.x))) * 494f)), _wgslsmith_f_op_f32(-947f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -749f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(316f, 275f, 887f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 493f, -121f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-228f, -997f, 596f) - vec3<f32>(arg_0, 461f, -1131f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0.x, 1884f)))))))));
    return func_5(func_4(true && func_2(false), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b, 0i), firstLeadingBit(firstTrailingBit(vec2<i32>(arg_1.b, -25623i))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> bool {
    let var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, arg_1.a, 16204u)), countOneBits(vec3<u32>(0u, 27323u, u_input.a)), reverseBits(max(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(7114u, u_input.a, 0u)))), select(~(~vec3<u32>(46299u, arg_1.a, arg_1.a)), ~(vec3<u32>(1u, arg_1.a, arg_1.a) & vec3<u32>(u_input.a, u_input.a, u_input.a)), func_1(_wgslsmith_f_op_f32(floor(-2422f)), arg_1).d.zxx));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-464f * 672f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f * -1569f) + 1f))), 823f);
    var var_2 = any(!vec2<bool>(arg_2.x, arg_2.x));
    global0 = array<vec2<f32>, 24>();
    var_2 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(12162u, 4821u, 4474u, u_input.a)), ~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a))), vec4<bool>(true, func_6(~vec2<i32>(0i, 63106i), func_1(-394f, Struct_1(1u, -1724i, true, vec4<bool>(false, true, true, false))), vec2<bool>(true, true), 1i), !all(vec3<bool>(true, true, false)), true & all(vec3<bool>(false, false, false)))), ~(~(~vec4<u32>(0u, 0u, 4294967295u, 96396u))) ^ _wgslsmith_clamp_vec4_u32(max(select(vec4<u32>(4294967295u, 16894u, 1u, 33166u), vec4<u32>(u_input.a, 106854u, u_input.a, u_input.a), false), reverseBits(vec4<u32>(u_input.a, 37502u, 4294967295u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 48881u, u_input.a), vec4<u32>(59794u, 0u, u_input.a, 18899u) >> (vec4<u32>(1u, 0u, 0u, u_input.a) % vec4<u32>(32u))), vec4<u32>(max(u_input.a, 1u), func_5(Struct_1(1u, -1042i, true, vec4<bool>(false, true, true, true))).a, u_input.a, 0u)));
    var_0 = min(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a, var_0.x, 13486u) >> (vec4<u32>(53575u, 1u, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 65664u) | vec4<u32>(4294967295u, 0u, 1u, 32546u)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 37433u, 0u, 1u) >> (vec4<u32>(u_input.a, u_input.a, 0u, var_0.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, 0u, 1u), vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.a))), vec4<u32>(var_0.x, u_input.a >> (112844u % 32u), 0u & var_0.x, 56495u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, var_0.x), vec4<u32>(1942u, 907u, 1u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 39725u, 0u, var_0.x), vec4<u32>(1u, var_0.x, 13230u, 28755u)), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(410u, 60581u, var_0.x, var_0.x) >> (vec4<u32>(32529u, u_input.a, 65159u, var_0.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.x, 1u, var_0.x, 1u)), select(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<u32>(var_0.x, 38058u, var_0.x, 1u), true)), ~abs(vec4<u32>(var_0.x, var_0.x, 4294967295u, 7491u)))));
    let var_1 = 4294967295u;
    var_0 = _wgslsmith_mod_vec4_u32(reverseBits(~(~vec4<u32>(29233u, 4294967295u, u_input.a, var_0.x))), vec4<u32>(10330u, 83602u, var_1, 4294967295u));
    let var_2 = -vec4<i32>(abs(_wgslsmith_mod_i32(1i, func_5(Struct_1(var_0.x, 37997i, false, vec4<bool>(false, false, false, true))).b)), min(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, 4717i), vec4<i32>(0i, 0i, 48489i, -1i)), -(i32(-1i) * -19368i)), min(~countOneBits(0i), 35830i), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 9392i, 0i, -37655i), vec4<i32>(-1i, -20321i, -2147483647i, -32731i)), 0i << (u_input.a % 32u)));
    let var_3 = vec2<i32>(abs(2147483647i & (-var_2.x & ~var_2.x)), _wgslsmith_sub_i32(~(-_wgslsmith_dot_vec3_i32(var_2.xyx, var_2.yyy)), var_2.x));
    var var_4 = Struct_1(_wgslsmith_clamp_u32(~(~var_0.x) & ~(~1u), ~_wgslsmith_div_u32(u_input.a | var_0.x, 1u << (1u % 32u)), var_1 | firstLeadingBit(var_0.x)), -_wgslsmith_div_i32(var_3.x, 2147483647i), !func_4(select(57790i > var_3.x, true, false), min(var_3.x, 1i)).c, select(vec4<bool>(func_2(true), (var_1 != u_input.a) & false, all(vec2<bool>(false, true)) && true, true), vec4<bool>(true, true, true, true), select(true, false, true)));
    let var_5 = vec3<i32>(abs(var_4.b), ~(-2147483647i), var_4.b);
    let var_6 = func_6(_wgslsmith_div_vec2_i32(var_3, abs(-vec2<i32>(var_5.x, 2147483647i))), func_5(Struct_1(~min(var_0.x, 0u), _wgslsmith_sub_i32(var_4.b, ~1i), var_4.c, func_5(func_4(var_4.c, 66134i)).d)), !func_4(func_6(var_3, Struct_1(var_1, var_3.x, false, var_4.d), !vec2<bool>(false, var_4.c), _wgslsmith_dot_vec2_i32(var_3, var_2.yw)), -1i).d.xx, ~(firstTrailingBit(_wgslsmith_clamp_i32(var_3.x, var_4.b, -1469i)) & max(-2147483647i, i32(-1i) * -4291i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(982f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(918f, 512f))), 547f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1533f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(884f)), _wgslsmith_f_op_f32(select(-2384f, 1619f, false)))))), ~firstTrailingBit(vec2<u32>(var_0.x, var_4.a) | vec2<u32>(2162u, var_4.a)));
}

