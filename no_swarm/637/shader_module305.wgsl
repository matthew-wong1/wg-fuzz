struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4) -> u32 {
    let var_0 = reverseBits(~u_input.b.x ^ 1u);
    var var_1 = arg_0;
    let var_2 = Struct_3(arg_2.c, Struct_2(!(true == arg_2.e.a), true || arg_2.a.b.b, vec2<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_2.a.b.a, arg_2.c.a, true), arg_2.e.b)))), Struct_1((!arg_2.a.a.a || (arg_0 != 12080u)) || arg_2.e.a), false != select(arg_2.e.a, !any(vec3<bool>(true, arg_2.c.a, arg_2.e.c.x)), arg_2.c.a), abs(reverseBits(countOneBits(arg_2.a.e)) << (arg_2.a.e % vec4<u32>(32u))));
    var_1 = ~(~firstTrailingBit(~countOneBits(1u)));
    var_1 = u_input.b.x;
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = ~vec3<u32>(countOneBits(~reverseBits(91641u)), countOneBits(u_input.b.x), _wgslsmith_sub_u32(abs(u_input.b.x), func_3(var_0, var_0, Struct_4(Struct_3(Struct_1(true), Struct_2(true, true, vec2<bool>(true, true)), Struct_1(true), true, vec4<u32>(var_0, 127189u, var_0, var_0)), arg_0.x, Struct_1(true), u_input.b.x, Struct_2(true, false, vec2<bool>(true, false))))));
    var var_2 = Struct_1(12011u > _wgslsmith_mult_u32(4294967295u, var_1.x ^ var_0));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1264f, -1027f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1032f, -235f), 562f))), -1098f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1464f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1661f * -277f), _wgslsmith_f_op_f32(round(1228f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(779f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, 1f, _wgslsmith_f_op_f32(select(414f, -626f, true)))), vec3<bool>(select(u_input.a.x, u_input.a.x, var_2.a) <= _wgslsmith_dot_vec2_i32(arg_0.ww, u_input.a), !(!var_2.a), true)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(144f, 526f, var_3.x, var_3.x) + vec4<f32>(-1470f, var_3.x, 157f, -777f)))), vec4<f32>(-691f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(var_3.x, var_3.x), -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, var_3.x, 1697f), vec4<f32>(1733f, var_3.x, var_3.x, 165f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, var_3.x, var_3.x, var_3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, -696f, var_3.x, var_3.x), vec4<f32>(180f, var_3.x, var_3.x, 1019f))) + vec4<f32>(var_3.x, var_3.x, -1299f, var_3.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, 450f, _wgslsmith_f_op_f32(abs(var_3.x)), var_3.x)));
    return Struct_2(true | (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, var_1.x, var_1.x), vec3<u32>(2455u, 37444u, 0u)), ~vec3<u32>(var_1.x, 31169u, 0u)) < (~var_1.x | ~1u)), false, vec2<bool>(true, true));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> f32 {
    let var_0 = 102366u;
    var var_1 = func_2(firstTrailingBit(~((vec4<i32>(u_input.a.x, -46148i, -3204i, -2147483647i) | vec4<i32>(2147483647i, 2147483647i, 9843i, 2470i)) & -vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))), select(~(-(vec4<i32>(26066i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(-2147483647i, 1i, 42120i, -1i))), ~firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a.x, -8314i, u_input.a.x), vec4<i32>(1i, u_input.a.x, -2147483647i, u_input.a.x))), !(!any(vec4<bool>(true, false, arg_2, true)))));
    var_1 = Struct_2(arg_0.x != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -129f))), !(!var_1.a) || arg_1, var_1.c);
    let var_2 = Struct_4(Struct_3(Struct_1(var_1.a), Struct_2(any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, true, var_1.b), arg_2)), !arg_2, !vec2<bool>(true, var_1.c.x)), Struct_1(!arg_1 || true), true, select(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_0, u_input.b.x, 6298u), vec4<u32>(u_input.b.x, 36311u, var_0, var_0))), ~vec4<u32>(u_input.b.x, var_0, 12241u, var_0) | vec4<u32>(u_input.b.x, 22972u, u_input.b.x, 38884u), select(select(vec4<bool>(true, arg_1, var_1.b, false), vec4<bool>(arg_2, true, false, true), vec4<bool>(false, true, var_1.a, false)), vec4<bool>(var_1.a, false, true, true), arg_0.x < 845f))), i32(-1i) * -1i, Struct_1(true), _wgslsmith_mult_u32(u_input.b.x, ~1u), Struct_2(true, arg_1, select(!var_1.c, var_1.c, var_1.c)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -922f), 1358f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(1827f - arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x + 963f)) * 1780f), true));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(Struct_1(all(func_2(vec4<i32>(14646i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.a.x, -19322i, 31622i)).c)), Struct_2(select(select(true, true, false), u_input.a.x < -4851i, 0u <= u_input.b.x), true, select(vec2<bool>(true, true), func_2(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, -2147483647i, u_input.a.x, 2147483647i)).c, -28639i <= u_input.a.x)), Struct_1(!any(vec2<bool>(false, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(47616u, 1u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))), min(firstLeadingBit(~u_input.a.x), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(10662i, 27408i)), 53549i)), Struct_1(reverseBits(u_input.a.x) != _wgslsmith_add_i32(abs(-1i), -2147483647i)), 4294967295u << (_wgslsmith_div_u32(reverseBits(0u) ^ u_input.b.x, 1u) % 32u), Struct_2(true, 608f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x + 608f))), func_2(~vec4<i32>(-16022i, u_input.a.x, u_input.a.x, 1i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -61176i, 505i), vec4<i32>(u_input.a.x, -25844i, u_input.a.x, -1264i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -776i, u_input.a.x, -1094i))).c));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(arg_0.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.yz))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), arg_0.x)) * _wgslsmith_f_op_vec2_f32(abs(arg_0.zz))), false));
    let var_2 = !all(!(!vec4<bool>(true, var_0.a.a.a, false, true)));
    var var_3 = abs(_wgslsmith_dot_vec2_i32(-(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b, -2147483647i), vec2<i32>(-22998i, u_input.a.x)) << (vec2<u32>(var_0.d, 28495u) % vec2<u32>(32u))), u_input.a));
    var var_4 = 1i;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1497f + _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(floor(var_1.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-450f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1441f, -540f), false, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1700f, -559f) + _wgslsmith_f_op_f32(-247f - 494f)), _wgslsmith_f_op_f32(-932f + _wgslsmith_f_op_f32(320f + 272f)))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1826f, -224f, -1518f) - vec3<f32>(1000f, -1087f, -808f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, 430f, 865f)), vec3<bool>(true, var_0.a, var_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, -1731f, 1020f)))));
    var var_2 = func_2(max(~select(~vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), firstLeadingBit(vec4<i32>(-1i, 34030i, u_input.a.x, -1i)), true), select(abs(vec4<i32>(u_input.a.x, 2147483647i, 0i, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -30408i), _wgslsmith_mod_i32(u_input.a.x, -1i), ~62768i, select(u_input.a.x, -1i, false)), func_2(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(u_input.a.x, -1i, -47708i, 1i))).b)), reverseBits(vec4<i32>(abs(u_input.a.x << (4294967295u % 32u)), firstLeadingBit(~1i), -2147483647i, u_input.a.x)));
    var_2 = Struct_2(any(vec3<bool>(func_2(vec4<i32>(0i, 0i, -36215i, 2147483647i), vec4<i32>(13983i, 0i, u_input.a.x, 15213i)).c.x, true, true)) & (u_input.b.x >= 61740u), true, select(vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.a, true, var_1.a, var_2.a), vec4<bool>(false, true, var_0.a, false))), all(!vec3<bool>(true, true, var_0.a))), var_2.c, !vec2<bool>(any(vec4<bool>(var_1.a, false, var_2.c.x, var_0.a)), false)));
    var_0 = Struct_1(!(!var_0.a && var_2.a));
    let var_3 = vec4<bool>(false, func_2(select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 34986i)), min(~vec4<i32>(1i, u_input.a.x, u_input.a.x, 11263i), vec4<i32>(-32612i, u_input.a.x, u_input.a.x, -2147483647i)), !vec4<bool>(false, var_0.a, false, false)), select(firstLeadingBit(-vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x)), vec4<i32>(-32415i, 13637i, ~u_input.a.x, countOneBits(u_input.a.x)), vec4<bool>(true, false, var_2.c.x == var_1.a, !var_1.a))).a, !select(false, true, true), any(vec4<bool>(var_2.c.x, false, select(true, var_1.a && true, false), false)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(1000f))) > _wgslsmith_f_op_f32(f32(-1f) * -1238f));
    var var_4 = Struct_4(Struct_3(func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-477f, -490f, 267f))))), func_2(vec4<i32>(u_input.a.x ^ -28809i, u_input.a.x << (u_input.b.x % 32u), 0i, u_input.a.x), -(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-769f, -769f, -1000f) * vec3<f32>(1828f, -2193f, -2953f)))), var_1.a, reverseBits(~(~vec4<u32>(6008u, u_input.b.x, u_input.b.x, 68192u)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), vec3<i32>(-14249i, -2147483647i, 0i)), vec3<i32>(1i, 1i, 1i)) | -(u_input.a.x >> (4645u % 32u)), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), u_input.b.x, func_2(~vec4<i32>(select(u_input.a.x, -13399i, var_0.a), ~7183i, max(1i, u_input.a.x), u_input.a.x | -2147483647i), ~vec4<i32>(u_input.a.x | -4990i, 1i, 32386i << (u_input.b.x % 32u), 4026i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-301f * -741f) + -268f)), _wgslsmith_f_op_f32(f32(-1f) * -1508f))), u_input.b.x, ~var_4.a.e.wyz);
}

