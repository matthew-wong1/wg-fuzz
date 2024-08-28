struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: f32 = 1000f;

var<private> global2: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(2698f, -199f), vec2<f32>(-147f, 245f), vec2<f32>(-1284f, -560f), vec2<f32>(714f, 1137f));

var<private> global3: array<Struct_1, 7>;

var<private> global4: array<Struct_1, 20>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-517f + -442f))), _wgslsmith_f_op_f32(select(-625f, 394f, any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(571f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 151f) - _wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f * 2188f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(215f, 1616f, -1155f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(412f, 791f, -1331f), vec3<f32>(-511f, -285f, -1128f), false))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-771f * 417f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1311f)), -1160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f + 502f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, 600f, 1661f, 183f)))), vec4<f32>(386f, -314f, 343f, _wgslsmith_f_op_f32(step(1637f, -1000f)))), true)), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.a, u_input.a)), 4u)]));
    global1 = _wgslsmith_f_op_f32(-var_0.d.x);
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_2 = global3[_wgslsmith_index_u32(~(~(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, 4294967295u)) << (~(u_input.a ^ arg_0) % 32u))), 7u)];
    let var_3 = select(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false))), select(vec4<bool>(true, true, !all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, any(vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), all(vec3<bool>(true, true, true))), true)), select(vec4<bool>(_wgslsmith_f_op_f32(-var_1.d.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1336f), true || (u_input.b == -2147483647i), any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), true));
    return _wgslsmith_f_op_f32(-var_2.d.x);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = -3005i ^ ~arg_0;
    let var_1 = arg_1.x;
    var var_2 = !vec3<bool>(!arg_1.x, !any(select(vec4<bool>(arg_1.x, true, var_1, true), vec4<bool>(false, true, false, arg_1.x), var_1)), all(!(!vec4<bool>(false, true, arg_1.x, arg_1.x))));
    let var_3 = 31628u;
    let var_4 = var_2.x;
    return Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, u_input.a, var_3, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 29979u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_3, var_3, u_input.a), vec4<u32>(0u, 42168u, 13392u, u_input.a)) << (vec4<u32>(var_3, var_3, 4294967295u, 58554u) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-243f)), _wgslsmith_f_op_f32(func_3(42145u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + -1170f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-997f, _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(var_3, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 746f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(232f + -442f) - 282f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(413f)) - _wgslsmith_f_op_f32(max(-1012f, -596f))), -1502f, _wgslsmith_f_op_f32(-1120f * 2248f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-774f)), -1000f)), vec2<f32>(_wgslsmith_f_op_f32(select(-437f, -1202f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1074f + 948f) - _wgslsmith_f_op_f32(sign(1000f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = func_2(u_input.c.x, vec2<bool>(true, false));
    var var_1 = 6943i;
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.x * 543f), _wgslsmith_f_op_f32(2768f - 363f))))), _wgslsmith_f_op_f32(-arg_1.a), u_input.d.x < u_input.d.x));
    var var_2 = _wgslsmith_clamp_vec3_u32(~((_wgslsmith_add_vec3_u32(vec3<u32>(31035u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a)) & ~vec3<u32>(81196u, 71095u, 4294967295u)) | vec3<u32>(u_input.a << (u_input.a % 32u), u_input.a, ~u_input.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 39987u, u_input.a) ^ abs(select(vec3<u32>(u_input.a, 1u, 29394u), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(false, false, false))), ~vec3<u32>(22662u, u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a))), select(~((vec3<u32>(1u, u_input.a, u_input.a) ^ vec3<u32>(0u, u_input.a, u_input.a)) & (vec3<u32>(5355u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 68104u, u_input.a)), ~(~vec3<u32>(94810u, u_input.a, u_input.a))), false));
    global2 = array<vec2<f32>, 4>();
    return any(select(select(vec4<bool>(true, var_0.d.x >= 1203f, true, true), vec4<bool>(true, true, false, any(vec4<bool>(false, true, true, false))), any(vec4<bool>(false, true, true, false))), vec4<bool>((u_input.c.x >> (0u % 32u)) > -2147483647i, !all(vec4<bool>(true, false, true, false)), false, all(vec4<bool>(true, true, true, true))), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.b > _wgslsmith_sub_i32(firstTrailingBit(9985i) & -2147483647i, u_input.d.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, 403f, 362f, 1405f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, -1057f, -204f, 603f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1874f, 2067f, 1227f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(267f, _wgslsmith_div_f32(545f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -542f), _wgslsmith_f_op_f32(abs(-2249f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1141f, 473f, -2155f) * vec4<f32>(-660f, 565f, -570f, 427f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1136f, 782f, -845f, 174f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -1173f, -2346f, 1039f))), select(func_1(global3[_wgslsmith_index_u32(5313u, 7u)], Struct_1(481f, vec3<f32>(-474f, 1198f, -418f), vec4<f32>(-1180f, 835f, 1233f, 1560f), global2[_wgslsmith_index_u32(98056u, 4u)])), true, all(vec2<bool>(false, false)))))));
    global4 = array<Struct_1, 20>();
    var var_2 = reverseBits(u_input.d);
    let var_3 = func_2(-max(_wgslsmith_mult_i32(~var_2.x, firstLeadingBit(u_input.b)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(u_input.c.x, 7970i, -751i, -25496i)), u_input.d)), vec2<bool>(any(vec2<bool>(true, true)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))));
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, _wgslsmith_f_op_f32(func_3(~33590u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1142f)) + _wgslsmith_f_op_f32(round(var_1.x))), -128f)));
}

