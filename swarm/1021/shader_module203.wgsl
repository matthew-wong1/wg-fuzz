struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, -30008i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, 877i), vec2<i32>(-19735i, -20348i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    global1 = array<vec2<i32>, 6>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(305f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-579f)))), 1110f)), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(573f * _wgslsmith_f_op_f32(-190f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 210f, arg_0)))));
    global1 = array<vec2<i32>, 6>();
    var var_1 = Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 318f)))), _wgslsmith_dot_vec2_u32(~min(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(4294967295u, 12794u)), ~arg_1.ww), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(2159f, _wgslsmith_f_op_f32(select(arg_0, -417f, true))))), ~(~vec2<u32>(~arg_1.x, 28323u)), arg_1, select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(u_input.a.x < -2147483647i, false, !arg_2), !select(arg_2, arg_2, arg_2)), vec3<bool>(false, arg_2, arg_2), any(vec4<bool>(arg_2 || arg_2, false | arg_2, arg_2, true))));
    return ~39766u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(select(-291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), true)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(17903u, 29703u, 37213u, 1u), vec4<u32>(39825u, 79355u, 72092u, 0u))), 764f), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(reverseBits(4294967295u), 0u), 0u), vec2<u32>(1u, 1u)), firstLeadingBit(vec4<u32>(select(func_3(-890f, vec4<u32>(35739u, 54418u, 4294967295u, 0u), false), ~7309u, true), 1u, abs(1u), countOneBits(firstTrailingBit(6508u)))), select(vec3<bool>(true, true, true), vec3<bool>(false, !all(vec4<bool>(true, true, true, false)), !all(vec4<bool>(false, false, false, true))), vec3<bool>(true, false, true)));
    var_0 = Struct_2(var_0.a, ~abs(~vec2<u32>(23223u, 4294967295u)), ~var_0.c, !select(vec3<bool>(any(vec3<bool>(var_0.d.x, false, true)), true, false), var_0.d, false));
    var var_1 = Struct_1(_wgslsmith_div_u32(max(select(_wgslsmith_clamp_u32(33401u, 0u, var_0.b.x), max(43047u, 16512u), var_0.a.c != 1u), var_0.a.a), 1u >> (countOneBits(var_0.c.x >> (48880u % 32u)) % 32u)), -237f, var_0.b.x, _wgslsmith_div_f32(-241f, var_0.a.d));
    var var_2 = var_0.a;
    var_1 = var_0.a;
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = array<vec2<i32>, 6>();
    let var_0 = -827f;
    global1 = array<vec2<i32>, 6>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-1225f - 382f))))) + 1000f);
    var var_2 = _wgslsmith_f_op_f32(332f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f - var_1)))) + 167f));
    return _wgslsmith_f_op_f32(floor(var_0));
}

fn func_1(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x))), vec2<i32>(u_input.a.x, -_wgslsmith_add_i32(2147483647i, -2147483647i))), abs(~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(arg_0.x, 6u)]))));
    var var_1 = select(~((~vec4<u32>(22919u, 14094u, 1u, arg_0.x) & min(vec4<u32>(1u, 59059u, arg_0.x, arg_0.x), vec4<u32>(0u, 1u, arg_0.x, 4294967295u))) << (~firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, 80933u, arg_0.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(arg_0.x, 69235u, 23153u, arg_0.x)) << (abs(vec4<u32>(1545u, arg_0.x, 6503u, 41902u)) % vec4<u32>(32u)), ~reverseBits(~vec4<u32>(arg_0.x, 15464u, arg_0.x, arg_0.x))), vec4<bool>(true, true, -1213f < _wgslsmith_f_op_f32(func_4(func_2())), any(vec4<bool>(u_input.a.x == 0i, true, false, any(vec3<bool>(true, false, true))))));
    global1 = array<vec2<i32>, 6>();
    let var_2 = vec2<f32>(318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -717f), 1222f)));
    var var_3 = -_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, select(u_input.a.x, -2147483647i, false)), ~vec2<i32>(-2147483647i, var_0.x), vec2<bool>(true, true)), u_input.a);
    return select(select(vec2<bool>(!select(true, true, false), select(true, select(false, false, true), true)), vec2<bool>(true, all(vec2<bool>(true, true))), ((var_2.x >= var_2.x) && true) & (_wgslsmith_f_op_f32(var_2.x - -1206f) < var_2.x)), vec2<bool>(all(vec3<bool>(false, false, true)) && ((-2147483647i < var_0.x) | true), ~_wgslsmith_mod_u32(1u, var_1.x) == _wgslsmith_add_u32(~1u, func_3(1958f, vec4<u32>(var_1.x, 0u, 34033u, 21140u), false))), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), func_1(vec3<u32>(1u, 1u, 1u)), func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(5546u, 1u, 46672u), vec3<u32>(1u, 1u, 1u)))));
    global1 = array<vec2<i32>, 6>();
    let var_1 = Struct_2(func_2(), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(~1u, _wgslsmith_clamp_u32(57989u, 39129u, 0u)) | _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 61835u)), ~vec2<u32>(46000u, 845u))), vec4<u32>(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(0u, 61046u, 4294967295u), vec3<u32>(1u, 20385u, 12115u), true), vec3<u32>(select(5936u, 1u, false), ~20266u, 1u)), min(4294967295u, firstTrailingBit(1167u) ^ firstLeadingBit(21876u)), ~(~4294967295u), 13970u), vec3<bool>(false, func_1(vec3<u32>(~9445u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26251u), vec2<u32>(0u, 1u)))).x, false));
    var var_2 = Struct_2(func_2(), vec2<u32>(countOneBits(~(~1u)), var_1.b.x), _wgslsmith_add_vec4_u32(var_1.c, var_1.c), var_1.d);
    global1 = array<vec2<i32>, 6>();
    var var_3 = var_0;
    var var_4 = true | (-u_input.a.x <= 31503i);
    global0 = array<vec3<i32>, 7>();
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(func_3(-1520f, vec4<u32>(var_5.a, 1u, var_1.a.c, var_2.c.x), true) >> (_wgslsmith_mult_u32(55314u, var_2.a.c) % 32u))), countOneBits(var_1.c.xxx), -567f, 4294967295u);
}

