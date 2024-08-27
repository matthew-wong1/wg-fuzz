struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 20802u;

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-44859i, 0i), vec2<i32>(32055i, -27201i), vec2<i32>(0i, 0i), vec2<i32>(-1i, 1i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(-arg_0, -arg_0), all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 1352f) * -569f) + 696f), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(~reverseBits(~4294967295u), 4u)], max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(10219u, u_input.c)), 4u)], global2[_wgslsmith_index_u32(min(arg_1.x, 5452u) | ~u_input.b.x, 4u)])), 1u);
    var var_1 = max(var_0.a, var_0.a);
    var_1 = var_0.d;
    let var_2 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, 12i, arg_0), vec4<i32>(var_0.d, countOneBits(~var_0.a), ~(-arg_0), arg_0));
    let var_3 = Struct_2(_wgslsmith_mod_i32(var_2.x, -2147483647i) | ~select(-arg_0, -1i, !var_0.b), Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(7736i, arg_0, var_2.x, 1i), vec4<i32>(_wgslsmith_mod_i32(arg_0, arg_0), _wgslsmith_dot_vec4_i32(var_2, var_2), var_2.x, firstLeadingBit(-27895i))), !var_0.b, _wgslsmith_f_op_f32(-899f - _wgslsmith_f_op_f32(sign(var_0.c))), abs(arg_0 << ((u_input.b.x << (9425u % 32u)) % 32u)), _wgslsmith_mult_u32(arg_1.x, ~0u) & 0u));
    return -_wgslsmith_dot_vec3_i32(reverseBits(var_2.wxw), abs(countOneBits(vec3<i32>(var_0.a, 36951i, var_0.a)) | vec3<i32>(var_2.x, var_2.x, var_0.a)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global2 = array<vec2<i32>, 4>();
    global1 = 67638u;
    var var_0 = (~countOneBits(vec4<i32>(33436i, arg_0, arg_0, arg_0) & vec4<i32>(-1i, 1i, arg_0, -1i)) & vec4<i32>(func_3(arg_0, vec2<u32>(4294967295u, 1u)) << (u_input.a % 32u), firstTrailingBit(~arg_0), _wgslsmith_add_i32(arg_0 | 5223i, arg_0), ~func_3(arg_0, vec2<u32>(0u, 7215u)))) << (~(vec4<u32>(u_input.c ^ u_input.a, 1u, 118155u & u_input.b.x, ~3847u) & vec4<u32>(~1u, select(16120u, 1u, true), u_input.c, 0u | u_input.c)) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(var_0.x, arg_0, 1i), !(!any(vec4<bool>(true, true, true, true))), 144f, i32(-1i) * -1i, max(u_input.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9916u, 1u, 82363u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, var_1.c, 847f) + vec4<f32>(var_1.c, -821f, var_1.c, -1307f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-595f, var_1.c, -1931f, arg_1), vec4<f32>(616f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, var_1.c, var_1.c, -169f) - vec4<f32>(1993f, -626f, 705f, arg_1))))), vec4<f32>(-1065f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c - -898f))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(-869f, var_1.c))), -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(257f, 2574f, 790f, -449f))), vec4<f32>(-421f, -1000f, 567f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(1000f * -1482f), arg_1, 1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, var_1.c, arg_1))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, arg_1, var_1.c, -331f)))))));
    return Struct_1(_wgslsmith_sub_i32(~reverseBits(func_3(14240i, vec2<u32>(u_input.c, 0u))), -3150i), var_1.b, var_1.c, -1i, 32223u);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: i32) -> vec3<i32> {
    global1 = max(1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(18622u, 52660u), vec2<u32>(arg_1, u_input.a))), _wgslsmith_add_vec2_u32(select(u_input.b, ~u_input.b, !vec2<bool>(arg_0.b.b, true)), vec2<u32>(8922u, u_input.c))));
    let var_0 = arg_0;
    let var_1 = vec2<f32>(-857f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.c)) - _wgslsmith_div_f32(var_0.b.c, arg_0.b.c)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c, arg_0.b.c) - -2275f)))));
    global2 = array<vec2<i32>, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-352f, arg_0.b.c, -783f)) * vec3<f32>(var_0.b.c, arg_0.b.c, -641f))) - vec3<f32>(-960f, _wgslsmith_f_op_f32(1000f * -1780f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1086f, arg_0.b.c))))))));
    return _wgslsmith_add_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3, var_0.b.d, arg_3), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, arg_3, arg_0.b.d), vec3<i32>(arg_2, arg_3, 2147483647i))), min(-vec3<i32>(arg_3, arg_2, 2147483647i), -vec3<i32>(-2147483647i, -2147483647i, 2147483647i))), reverseBits(reverseBits(vec3<i32>(-2949i, arg_2, -19211i)) >> (~vec3<u32>(arg_0.b.e, var_0.b.e, arg_0.b.e) % vec3<u32>(32u)))) >> (~(~vec3<u32>(u_input.a, 1u, 90360u)) % vec3<u32>(32u));
}

fn func_1() -> i32 {
    let var_0 = select(min(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, i32(-1i) * -1i, 15731i)), func_4(Struct_2(-56994i, func_2(-18352i, 737f)), 1u, abs(firstTrailingBit(-2147483647i)), ~_wgslsmith_div_i32(31973i, -19020i))), vec3<i32>(-1i) * -firstLeadingBit(func_4(Struct_2(3555i, Struct_1(2147483647i, true, -1312f, -1i, 28718u)), u_input.b.x, -38264i, -23420i)), !select(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, true)));
    global0 = 76127u;
    global2 = array<vec2<i32>, 4>();
    global1 = 52473u;
    var var_1 = Struct_1(min(_wgslsmith_mod_i32(-34553i, func_3(_wgslsmith_clamp_i32(-2147483647i, var_0.x, -1i), ~vec2<u32>(u_input.b.x, 1u))), var_0.x), any(!vec4<bool>(false, true, var_0.x > 0i, all(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), -1i, abs(~4294967295u));
    return 34329i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1());
    var var_1 = all(vec2<bool>(!(all(vec2<bool>(true, false)) & select(false, false, false)), true));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-178f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1702f)))))) + -753f) != -457f;
    let var_2 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(u_input.c >= u_input.a, true), vec2<bool>(true, true), true)), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a != u_input.b.x), vec2<bool>(true, false)), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_3 = true && any(vec3<bool>(var_2.x, false, select(var_2.x, var_2.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(u_input.a, ~24615u, 1u | u_input.b.x, 1u >> (u_input.c % 32u))) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(22361u, 91712u, u_input.b.x, 41979u), firstLeadingBit(vec4<u32>(6610u, u_input.b.x, 35459u, u_input.b.x))) % vec4<u32>(32u)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f - -599f))))), -293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -359f) + _wgslsmith_div_f32(-1000f, 780f))))));
}

