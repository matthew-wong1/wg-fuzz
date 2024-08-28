struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: array<f32, 6> = array<f32, 6>(-1800f, -616f, -1448f, 354f, 313f, -665f);

var<private> global2: bool = true;

var<private> global3: array<u32, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(min(-vec4<i32>(u_input.d.x, u_input.d.x, -1i, 56979i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-54396i, 24723i), vec2<i32>(u_input.d.x, u_input.d.x)), u_input.d.x, ~(-26283i), -84632i)), firstTrailingBit(vec4<i32>(u_input.d.x, 0i, u_input.d.x, u_input.d.x))) ^ ~(~vec4<i32>(34849i, u_input.d.x, -47906i, 42957i) | vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -1i), 45358i, _wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(26221i, -31321i)), -2147483647i));
    let var_1 = countOneBits(28197u);
    var var_2 = Struct_2(Struct_1(-reverseBits(-vec2<i32>(var_0.x, 2147483647i))), select(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(27828u, 6u)]) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 6u)]), all(vec2<bool>(true, true)), arg_1.x == _wgslsmith_mod_u32(arg_1.x, 1u)), !vec4<bool>(any(vec4<bool>(false, true, false, true)), var_0.x >= 2147483647i, all(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, true, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)))), 2147483647i, select(vec2<bool>(all(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), vec2<bool>(false, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, 1072f, global1[_wgslsmith_index_u32(40427u, 6u)])) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 2282f, 1947f), vec3<f32>(-928f, 2399f, global1[_wgslsmith_index_u32(15160u, 6u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1089f, 1689f, arg_0) * vec3<f32>(125f, arg_0, -949f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(37647u, 6u)], arg_0, global1[_wgslsmith_index_u32(arg_1.x, 6u)]) * vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40201u, 8u)], 6u)], 336f))))));
    var var_3 = vec3<i32>(var_0.x, var_2.c, reverseBits(abs(1i)));
    let var_4 = Struct_3(var_2.b, true, _wgslsmith_f_op_vec2_f32(round(var_2.e.zx)), Struct_1(~vec2<i32>(reverseBits(u_input.d.x), _wgslsmith_sub_i32(-286i, var_2.c))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(u_input.a.x & 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 8u)], u_input.e)), ~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(90333u, 8u)], 0u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(23207u, u_input.a.x, 5676u), vec3<u32>(47848u, global3[_wgslsmith_index_u32(0u, 8u)], 74933u)))), 6u)], global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~4294967295u, select(u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], false)) >> ((41366u ^ _wgslsmith_mult_u32(u_input.c, global3[_wgslsmith_index_u32(u_input.c, 8u)])) % 32u)), 6u)], ~global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, u_input.b), 8u)] == _wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)] - -1000f), vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(19161u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)])), u_input.a.x)));
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(32560u), min(0u, u_input.a.x));
    let var_2 = Struct_3(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(30811u, ~global3[_wgslsmith_index_u32(1133u, 8u)]), 6u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1483f)), !(any(vec4<bool>(false, true, true, false)) | select(true, true, false)), true), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 6u)], 1000f), vec2<f32>(global1[_wgslsmith_index_u32(12621u, 6u)], 601f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 1498f), vec2<f32>(var_0, -493f), vec2<bool>(true, false))), vec2<bool>(true, true))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(-1037f, -210f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, -1522f))))))), arg_0);
    let var_3 = var_2.d;
    global0 = array<vec4<f32>, 18>();
    return select(_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.a) & vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.e, 8u)]), u_input.a), ~u_input.a, vec2<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(61004u, 8u)]), 8u)] < global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 8u)], 8u)], all(!vec3<bool>(var_2.a.x, false, var_2.b)))) | ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 7780u), u_input.a), u_input.a), ~_wgslsmith_div_u32(u_input.a.x, u_input.c));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(691f, 1000f))))))), func_2(arg_0), Struct_3(select(!select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true)), vec4<bool>(arg_1.x, all(vec3<bool>(false, false, false)), arg_1.x, true), select(arg_1.x, true, true)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(779f, -1065f) + vec2<f32>(global1[_wgslsmith_index_u32(19262u, 6u)], global1[_wgslsmith_index_u32(u_input.e, 6u)])))) - vec2<f32>(728f, _wgslsmith_f_op_f32(1334f + 1421f))), Struct_1(arg_0.a)));
    let var_1 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -arg_0.a.x ^ abs(arg_0.a.x), _wgslsmith_mod_i32(var_0.c.d.a.x, 0i) >> (_wgslsmith_mult_u32(43153u, 0u) % 32u), _wgslsmith_clamp_i32(21949i, arg_0.a.x, 37840i) | 1i), vec4<i32>(2147483647i, abs(16159i ^ var_0.c.d.a.x), u_input.d.x & _wgslsmith_mult_i32(arg_0.a.x, 1i), _wgslsmith_dot_vec2_i32(select(var_0.c.d.a, var_0.c.d.a, vec2<bool>(true, true)), vec2<i32>(u_input.d.x, 43430i) >> (vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 8u)]) % vec2<u32>(32u)))));
    return ~vec2<u32>(u_input.b, ~128198u) | ~(~vec2<u32>(u_input.e, ~u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_1(Struct_1(vec2<i32>(i32(-1i) * -1i, 0i >> (global3[_wgslsmith_index_u32(0u, 8u)] % 32u))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -482f) == global1[_wgslsmith_index_u32(0u, 6u)], select(global3[_wgslsmith_index_u32(u_input.a.x, 8u)] >= u_input.e, -225f <= global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 6u)], false))), u_input.a);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(30572u, 6u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 8u)], 6u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 8u)], 6u)], -773f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(1985u, 6u)], -2848f))))), u_input.a | _wgslsmith_sub_vec2_u32(vec2<u32>(abs(global3[_wgslsmith_index_u32(0u, 8u)]), global3[_wgslsmith_index_u32(~38433u, 8u)]), vec2<u32>(14709u, var_0.x) & firstLeadingBit(u_input.a)), Struct_3(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), true, _wgslsmith_div_vec2_f32(vec2<f32>(-571f, global1[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1191f, global1[_wgslsmith_index_u32(u_input.e, 6u)])))), Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(2147483647i, u_input.d.x)), select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(0i, -2147483647i), false), all(vec3<bool>(false, false, true))))));
    var var_2 = _wgslsmith_mult_i32(-26776i, _wgslsmith_mod_i32(0i, -2264i));
    let var_3 = vec3<i32>(countOneBits(u_input.d.x), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, i32(-1i) * -9086i) ^ ~u_input.d.x, -40867i) | u_input.d;
    var var_4 = var_1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(u_input.e, 1u)), 6u)])), ~(~(~vec3<u32>(901u, global3[_wgslsmith_index_u32(18478u, 8u)], var_0.x) << (~vec3<u32>(u_input.c, global3[_wgslsmith_index_u32(u_input.b, 8u)], 61067u) % vec3<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(31051u, u_input.a.x, 0u, 0u), ~select(vec4<u32>(var_1.b.x, 95505u, 1u, 4294967295u), vec4<u32>(50791u, 0u, 1u, 1u), var_1.c.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54709u, 8u)], 6u)], var_1.a.x)))))), 515f);
}

