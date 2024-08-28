struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(315f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(f32(-1f) * -1594f)) + -615f))));
    global0 = 765f;
    var var_1 = Struct_3(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-14032i, u_input.c, u_input.c) | vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(1i, u_input.c, u_input.c), true), -(vec3<i32>(u_input.c, 15426i, u_input.c) << (vec3<u32>(var_0, var_0, var_0) % vec3<u32>(32u)))) << (u_input.b.zwx % vec3<u32>(32u)), Struct_2(vec2<i32>(-countOneBits(u_input.c), firstTrailingBit(u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1282f + -1163f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1079f * -655f) + -382f)), ~abs(~u_input.b.xz), select(firstLeadingBit(vec3<i32>(-27863i, u_input.c, 33096i) >> (u_input.d.yyx % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c, 1i, -2147483647i)), -vec3<i32>(-1i, 1i, 24184i)), true), 2147483647i));
    return select(vec4<i32>(i32(-1i) * -(~(-2147483647i)), 1i, var_1.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a.yy, var_1.b.a), -var_1.b.d.yz), i32(-1i) * -5073i)), vec4<i32>(-firstTrailingBit(var_1.a.x), _wgslsmith_mod_i32(var_1.b.a.x, var_1.b.d.x), countOneBits(i32(-1i) * -2147483647i), ~(~37213i)), true);
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = ~u_input.c;
    let var_1 = u_input.d.x;
    var var_2 = ~(~vec4<u32>(u_input.b.x, countOneBits(0u), ~var_1, countOneBits(1u << (u_input.b.x % 32u))));
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, ~(~arg_0), _wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, arg_0), vec3<i32>(arg_0, 48725i, 2147483647i))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, -10465i, arg_0), vec4<i32>(1i, arg_0, arg_0, -2147483647i)), -vec4<i32>(u_input.c, arg_0, arg_0, arg_0))), _wgslsmith_add_vec4_i32(-vec4<i32>(-35073i, 58173i, arg_0, arg_0), select(func_3(), vec4<i32>(u_input.c, arg_0, u_input.c, 2147483647i) | vec4<i32>(16104i, u_input.c, 1i, arg_0), true)), countOneBits(vec4<i32>(countOneBits(86296i), _wgslsmith_add_i32(21932i, -18265i), u_input.c, 0i))), _wgslsmith_add_vec4_i32(select(-countOneBits(vec4<i32>(u_input.c, arg_0, 1i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0, 1i, -2147483647i) ^ vec4<i32>(arg_0, u_input.c, 0i, 0i), vec4<i32>(-63094i, u_input.c, u_input.c, arg_0)), !select(true, true, false)), _wgslsmith_mult_vec4_i32(~vec4<i32>(6598i, arg_0, u_input.c, 34141i) << (firstTrailingBit(u_input.d) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, -61539i, -14051i), vec4<i32>(u_input.c, -1i, 32287i, arg_0), vec4<i32>(arg_0, u_input.c, arg_0, u_input.c)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, u_input.d.x)), 22332u, abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(u_input.d.x), ~u_input.a.x), min(0u << (0u % 32u), _wgslsmith_mult_u32(u_input.b.x, 39363u)))));
    var var_1 = arg_1.xz;
    var_1 = select(select(arg_1.ww, select(!(!vec2<bool>(false, arg_1.x)), !(!arg_1.yy), true), arg_1.zw), arg_1.wy, arg_1.yz);
    var var_2 = -(~firstTrailingBit(min(vec2<i32>(30347i, 0i), -vec2<i32>(u_input.c, -12060i))));
    var var_3 = Struct_1(arg_1, func_2(_wgslsmith_mult_i32(min(var_2.x, 11904i), var_2.x)) << (u_input.d % vec4<u32>(32u)), countOneBits(~0u), ~abs(~1i));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)));
    global0 = 897f;
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(648f, -270f, -1726f), vec3<f32>(-744f, 1000f, 1434f)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-835f, 920f, 976f), vec3<f32>(736f, 1000f, 593f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(982f, 1000f, -647f))), true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-587f, var_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = !select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)), vec3<bool>(true, true, true), (_wgslsmith_f_op_f32(-146f - var_0.x) == -646f) && true);
    var var_2 = Struct_1(vec4<bool>(!(!var_1.x && (false & var_1.x)), any(!var_1.yy) != (u_input.c < -u_input.c), var_1.x, true), vec4<i32>(_wgslsmith_div_i32(abs(~u_input.c), -2147483647i), u_input.c, (_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(-57613i, -2147483647i, -1i)) ^ u_input.c) | (i32(-1i) * -u_input.c), ~(~u_input.c)), ~9843u, firstLeadingBit(u_input.c));
    var_2 = Struct_1(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(793f, -121f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))), select(select(vec4<bool>(var_1.x, false, true, var_2.a.x), !vec4<bool>(false, true, var_2.a.x, var_2.a.x), vec4<bool>(var_2.a.x, false, true, true)), var_2.a, var_2.a), -140f), vec4<i32>(_wgslsmith_mult_i32(-72646i, 0i), firstLeadingBit(-16675i), -33274i, var_2.b.x) << (countOneBits(u_input.d) % vec4<u32>(32u)), _wgslsmith_mult_u32(23129u, var_2.c << (u_input.b.x % 32u)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(-34357i ^ u_input.c);
}

