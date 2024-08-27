struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<i32>(11705i, -1i), 1000f, vec2<f32>(-2046f, -1260f)), Struct_3(vec2<i32>(0i, 0i), -174f, vec2<f32>(-1000f, 192f)));

var<private> global1: vec4<u32> = vec4<u32>(1u, 1u, 1u, 46696u);

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, i32(-2147483648), 39254i, 0i);

var<private> global3: f32 = -3092f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(global2.wx, firstLeadingBit(global2.wy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-296f)) + _wgslsmith_f_op_f32(f32(-1f) * -2013f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-692f * _wgslsmith_f_op_f32(round(-352f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(742f, 666f), vec2<f32>(-653f, 1655f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(282f, 184f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(579f, -147f) * vec2<f32>(-2231f, 1716f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(437f, 198f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(244f, 599f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, 428f))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(477f, -1241f)) * _wgslsmith_f_op_f32(f32(-1f) * -636f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(1128f - var_0.b)))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f + var_0.c.x) + _wgslsmith_div_f32(var_0.b, 250f))))));
    let var_1 = ~91344u;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -646f), reverseBits(vec3<i32>(_wgslsmith_sub_i32(30594i | u_input.d, firstTrailingBit(global2.x)), var_0.a.x, min(global2.x, 0i))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-796f + 1f)), _wgslsmith_f_op_vec2_f32(floor(var_0.c)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_3 = 1u;
    return _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, ~global1.x, ~var_1, global1.x)), vec4<u32>(~(var_1 >> (9972u % 32u)), 44040u, min(_wgslsmith_div_u32(0u, var_3), _wgslsmith_dot_vec4_u32(vec4<u32>(6291u, 1u, u_input.c, global1.x), vec4<u32>(0u, global1.x, 1u, u_input.c))), _wgslsmith_dot_vec3_u32(global1.ywz, _wgslsmith_add_vec3_u32(global1.xwz, global1.wzy))) & ~_wgslsmith_add_vec4_u32(max(vec4<u32>(0u, var_3, 0u, var_3), vec4<u32>(var_1, var_3, var_1, 1u)), reverseBits(vec4<u32>(global1.x, var_3, 0u, global1.x))));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = countOneBits(abs(func_3() | vec4<u32>(1u, arg_0.x, global1.x << (u_input.c % 32u), u_input.c)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(185f))) * -250f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1116f))))));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(select(global2.x, -abs(global2.x), true), ~1i), u_input.b);
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2852f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(step(-655f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-788f, -963f), _wgslsmith_f_op_f32(-var_2)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    global2 = firstLeadingBit(firstTrailingBit(-vec4<i32>(global2.x, -2147483647i, arg_3.b.x, u_input.a.x) ^ vec4<i32>(0i, global2.x, arg_3.b.x, global2.x)) ^ firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -2147483647i, arg_3.b.x, 2147483647i), vec4<i32>(2147483647i, -2147483647i, 47330i, -2607i)), i32(-1i) * -1i, _wgslsmith_div_i32(-1i, u_input.b), countOneBits(2147483647i))));
    var var_0 = _wgslsmith_sub_vec4_u32(~(vec4<u32>(~4294967295u, u_input.c, _wgslsmith_div_u32(u_input.c, 17584u), global1.x) >> ((~vec4<u32>(u_input.c, 4294967295u, 0u, 4819u) >> (vec4<u32>(5449u, u_input.c, 1u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u))), ~select(~(~vec4<u32>(4294967295u, u_input.c, 1333u, global1.x)), vec4<u32>(~u_input.c, ~global1.x, 74078u, u_input.c), vec4<bool>(true, true, true, true)));
    let var_1 = arg_3;
    var var_2 = ~(-firstLeadingBit(firstLeadingBit(vec4<i32>(18504i, -35424i, u_input.d, global2.x))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-497f, 773f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a))), _wgslsmith_div_i32(-21759i, u_input.b) < 15909i)))));
    return Struct_1(any(select(select(select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, false)), select(vec4<bool>(arg_2.x, true, arg_2.x, true), vec4<bool>(arg_2.x, arg_2.x, true, false), true), !vec4<bool>(true, false, arg_2.x, arg_2.x)), !select(vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, false, arg_2.x)), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1389f, -689f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1307f, var_1.a, arg_1) * vec3<f32>(922f, -489f, arg_3.a)))), arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, -1386f, -985f))))), ~(~global1.x));
}

fn func_1() -> u32 {
    global2 = max(vec4<i32>(-1i, -global2.x & -2147483647i, -global2.x << (41183u % 32u), 1i), select(-vec4<i32>(-2147483647i, global2.x, -47885i, u_input.a.x), ~abs(vec4<i32>(1i, u_input.a.x, 34714i, -9262i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(vec4<bool>(true, true, false, true))))) << (~(~vec4<u32>(~11160u, ~global1.x, _wgslsmith_mod_u32(global1.x, global1.x), ~0u)) % vec4<u32>(32u));
    let var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-966f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(vec3<u32>(11168u, 4294967295u, u_input.c) >> (vec3<u32>(global1.x, 0u, global1.x) % vec3<u32>(32u)))))), select(vec3<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), select(true, false, true)), vec3<bool>(any(vec2<bool>(true, true)), false, true), !vec3<bool>(select(false, false, false), true, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f - -753f))), _wgslsmith_sub_vec3_i32(global2.zyw, ~global2.xyz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(566f, 723f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-782f, -2460f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, 312f)), true)))));
    global0 = array<Struct_3, 2>();
    let var_1 = -global2.wyx;
    global3 = var_0.b.x;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!all(vec4<bool>(true, false, true, false)) & any(vec4<bool>(true, true, true, true)), u_input.b <= -abs(global2.x));
    var var_1 = Struct_1(select(var_0.x, 4294967295u > (~u_input.c ^ ~4294967295u), (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), global1.wxx) >> (firstTrailingBit(u_input.c) % 32u)) <= func_1()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-893f, -918f, 1418f) + vec3<f32>(752f, 622f, 230f))))), _wgslsmith_dot_vec4_u32(~max(~vec4<u32>(global1.x, 49093u, 0u, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(18014u, u_input.c, 4294967295u, 4294967295u), vec4<u32>(57329u, 1u, 18032u, u_input.c))), max(~vec4<u32>(global1.x, global1.x, 0u, global1.x), firstTrailingBit(~vec4<u32>(6549u, 0u, 1u, u_input.c)))));
    var var_2 = ~u_input.c;
    var var_3 = vec4<bool>(var_0.x, func_4(_wgslsmith_f_op_f32(-219f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, -409f)))), var_1.b.x, select(vec3<bool>(var_0.x, !var_0.x, any(vec4<bool>(var_1.a, var_0.x, false, var_1.a))), !select(vec3<bool>(var_1.a, var_0.x, true), vec3<bool>(var_1.a, var_0.x, var_1.a), vec3<bool>(false, true, var_1.a)), var_0.x), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.yxw, var_1.b.yy)).a, 0i <= global2.x, var_1.a);
    global2 = vec4<i32>(u_input.b, reverseBits(~abs(-global2.x)), u_input.b, -1i);
    let var_4 = select(vec4<bool>(var_3.x, !(all(vec4<bool>(var_1.a, var_3.x, true, true)) || false), var_0.x, var_1.a), select(select(select(select(vec4<bool>(var_0.x, false, var_1.a, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, false, var_3.x)), vec4<bool>(var_0.x, var_3.x, false, true), false), vec4<bool>(true, !var_1.a, !var_3.x, func_4(var_1.b.x, 1980f, vec3<bool>(true, var_1.a, false), Struct_2(-1426f, vec3<i32>(global2.x, u_input.d, u_input.b), var_1.b.xz)).a), vec4<bool>(var_0.x, var_0.x, false, true)), select(vec4<bool>(any(vec4<bool>(var_0.x, false, false, false)), true, true, true), select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), select(vec4<bool>(true, var_1.a, false, false), vec4<bool>(var_1.a, false, true, false), vec4<bool>(var_0.x, false, false, var_3.x)), var_0.x), !(!vec4<bool>(var_1.a, true, var_3.x, true))), var_1.a), vec4<bool>(select(false, any(!vec2<bool>(var_3.x, false)), !var_0.x), var_1.a, var_1.a, var_1.a));
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-150f, 594f) - var_1.b.x)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(1118f)))))));
    var var_6 = vec2<i32>(global2.x, _wgslsmith_add_i32(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.x, u_input.b), vec3<i32>(u_input.d, 2147483647i, u_input.b))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global2.zzw, -global2.ywz), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.b, 2147483647i), vec4<i32>(u_input.d, u_input.d, -30549i, global2.x)), ~vec4<i32>(-28729i, u_input.d, -23585i, global2.x)))));
    let var_7 = max(~select(16969i, -(~global2.x), false), _wgslsmith_add_i32(~min(-19590i, _wgslsmith_div_i32(2147483647i, global2.x)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(870f, 1821f, -1651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x * -568f) * _wgslsmith_f_op_f32(f32(-1f) * -376f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-389f, var_5.x, false)), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x + var_5.x), var_5.x))));
}

