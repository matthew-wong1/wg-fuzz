struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(24305i, 1i, -1i, i32(-2147483648)), vec4<i32>(-2175i, 40258i, 10999i, -32397i), vec4<i32>(26305i, 0i, 2147483647i, -5307i), vec4<i32>(-41292i, -1874i, 63885i, 1i), vec4<i32>(93352i, -13137i, 0i, 302i), vec4<i32>(-43977i, 1i, 23201i, 1517i), vec4<i32>(2147483647i, -1i, 1i, 41599i), vec4<i32>(2147483647i, i32(-2147483648), -67118i, -44640i), vec4<i32>(1i, 2147483647i, -11072i, -22707i), vec4<i32>(2147483647i, 1i, -33305i, 0i), vec4<i32>(1i, 1i, 49558i, -1i), vec4<i32>(9821i, 1i, 2147483647i, 13960i), vec4<i32>(-1i, 2147483647i, 8090i, 0i), vec4<i32>(i32(-2147483648), -2282i, 2147483647i, -1i), vec4<i32>(2147483647i, -1i, -12505i, 2147483647i), vec4<i32>(0i, -65533i, 1i, 1i), vec4<i32>(1i, -9169i, 0i, i32(-2147483648)), vec4<i32>(8574i, 23922i, 23657i, 1i), vec4<i32>(8585i, -1i, -7747i, 5163i), vec4<i32>(-31476i, 2147483647i, 2147483647i, -1i), vec4<i32>(52019i, -21071i, 1i, 1i), vec4<i32>(22921i, 2147483647i, 1i, 2147483647i), vec4<i32>(23878i, -52273i, 5628i, 2147483647i), vec4<i32>(i32(-2147483648), -48510i, 2147483647i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> bool {
    var var_0 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a >> (~u_input.a % 32u), u_input.a), min(select(vec3<u32>(u_input.a, 10988u, 49469u), vec3<u32>(91260u, 4294967295u, 28264u), vec3<bool>(false, true, true)) ^ select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 57987u), false), ~(vec3<u32>(28001u, u_input.a, 0u) | vec3<u32>(u_input.a, 1u, 52602u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(1u), 1u, reverseBits(u_input.a)), ~vec3<u32>(1u, u_input.a, u_input.a)), any(vec3<bool>(all(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), u_input.a <= u_input.a)));
    var var_1 = select(vec2<i32>(-41571i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), ~vec2<i32>(1501i, -3439i))) ^ countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 343i, arg_1), vec3<i32>(-2147483647i, arg_1, 37079i)), reverseBits(-16971i))), vec2<i32>(i32(-1i) * -2147483647i, 21327i), false);
    global0 = array<vec4<i32>, 24>();
    var var_2 = Struct_1(true);
    var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_sub_i32(-var_1.x, var_1.x)), abs(i32(-1i) * -11865i)), vec2<i32>(~firstTrailingBit(-43402i) ^ _wgslsmith_mod_i32(var_1.x, i32(-1i) * -10094i), -10633i), min(vec2<i32>(-27547i | ~var_1.x, _wgslsmith_add_i32(firstTrailingBit(-47764i), _wgslsmith_mod_i32(var_1.x, var_1.x))), vec2<i32>(-3133i >> (u_input.a % 32u), abs(~(-37005i)))));
    return !(max(-var_1.x, var_1.x) <= _wgslsmith_dot_vec2_i32(-min(vec2<i32>(var_1.x, arg_1), vec2<i32>(-2147483647i, 47235i)), vec2<i32>(_wgslsmith_sub_i32(-5400i, -33609i), -1i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1733f, 1554f, -1003f, 577f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, -2426f, -913f, 106f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2157f, -856f, 220f, 198f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1276f, 1710f, 1000f, 110f), vec4<f32>(358f, -1037f, -906f, 888f), false)))), firstTrailingBit(-22399i)));
    var var_1 = _wgslsmith_f_op_f32(min(448f, -862f)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1441f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1170f * -643f) - _wgslsmith_f_op_f32(min(-1909f, -916f))))));
    var var_2 = _wgslsmith_mod_u32(reverseBits(abs(max(u_input.a, u_input.a) & select(u_input.a, 5706u, var_0.a))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 61010u)), reverseBits(~u_input.a)) & min(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), ~1u));
    let var_3 = Struct_1(true);
    var var_4 = -2147483647i;
    return Struct_1(!(!(!any(vec4<bool>(var_3.a, var_0.a, true, false)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 24>();
    let var_0 = func_2();
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    var var_1 = abs(firstLeadingBit(~(~vec2<u32>(arg_0, 0u))));
    return _wgslsmith_f_op_f32(step(-615f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1536f, -1569f) + _wgslsmith_div_f32(-726f, -1143f))), -2658f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 24>();
    global0 = array<vec4<i32>, 24>();
    var var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(23761u, Struct_1(false))) * -2203f)) * 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1144f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(489f, -526f) + _wgslsmith_f_op_f32(1003f + 329f))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-216f, _wgslsmith_f_op_f32(356f + -206f)), 749f))));
    global0 = array<vec4<i32>, 24>();
    let var_2 = select(vec4<bool>(!all(vec2<bool>(true, true)), (u_input.a << (u_input.a % 32u)) != u_input.a, any(vec4<bool>(var_0.a, !var_0.a, any(vec4<bool>(true, true, true, var_0.a)), select(var_0.a, var_0.a, true))), !var_0.a), vec4<bool>(var_0.a, any(select(!vec3<bool>(true, var_0.a, false), vec3<bool>(true, true, var_0.a), select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, true, var_0.a)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 6452i), vec2<i32>(2147483647i, -8119i)) >= _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 14326i), 1i), true), vec4<bool>(all(vec2<bool>(true, true)), var_0.a || var_0.a, func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(658f, -643f, -815f, -152f) * vec4<f32>(956f, -361f, -269f, -642f)))), ~countOneBits(2147483647i)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, 885f, -932f, 1385f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1910f, 1579f, -1587f, 2046f)))), -1i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(-372f)), -1604f), vec2<f32>(-121f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-909f + _wgslsmith_f_op_f32(trunc(-1051f))) - _wgslsmith_f_op_f32(f32(-1f) * -163f)))));
    var_1 = _wgslsmith_div_f32(509f, 904f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_add_u32(88685u, _wgslsmith_mod_u32(u_input.a, 59151u)), 16983u, u_input.a), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 8318u, 10618u, u_input.a), vec4<u32>(u_input.a, 0u, 1u, u_input.a)) ^ ~vec4<u32>(25411u, u_input.a, u_input.a, 36961u))), abs(1i), abs(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-29691i, 20734i, -14691i, -90706i), global0[_wgslsmith_index_u32(4294967295u, 24u)]) | -8893i, -18124i)), u_input.a, vec2<u32>(~0u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), ~vec2<u32>(22541u, 0u))));
}

