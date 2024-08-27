struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(1000f, 681f, 173f, -194f), vec4<f32>(-1000f, 359f, -1004f, -973f), vec4<f32>(1743f, -585f, -1430f, -1000f), vec4<f32>(1752f, 673f, 677f, 1000f), vec4<f32>(1873f, -2640f, 853f, -727f), vec4<f32>(-682f, 481f, -1747f, 291f), vec4<f32>(-1198f, 1295f, -378f, -571f), vec4<f32>(-762f, 420f, 406f, -939f), vec4<f32>(693f, -1000f, 969f, -1524f), vec4<f32>(-1852f, -1000f, 1986f, -1195f), vec4<f32>(1000f, -1000f, 687f, 1569f), vec4<f32>(125f, 505f, 1493f, -144f));

var<private> global1: array<i32, 25> = array<i32, 25>(288i, 0i, i32(-2147483648), 12647i, 1i, 0i, -1i, 33344i, -8083i, -7292i, 0i, -82803i, 1i, -1i, -31711i, 1i, i32(-2147483648), 0i, 1i, -1i, 104623i, 26273i, 2147483647i, -2388i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(~(vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 25u)], 2147483647i, u_input.e) << ((u_input.a.yxy >> (u_input.a.wzw % vec3<u32>(32u))) % vec3<u32>(32u))), ~firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -15256i, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 0i)))) | select(vec3<i32>(~reverseBits(50219i), select(-61142i, u_input.d, true), _wgslsmith_mod_i32(-u_input.e, -global1[_wgslsmith_index_u32(u_input.c.x, 25u)])), ~(~firstTrailingBit(vec3<i32>(-1i, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(57767u, 25u)]))), vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true && any(vec4<bool>(false, false, false, true))));
    global1 = array<i32, 25>();
    let var_1 = Struct_1((~arg_0 >= ~1u) || ((any(vec4<bool>(false, false, false, true)) & true) & any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-428f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_1)))), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -24777i, u_input.e), vec4<i32>(var_0.x, global1[_wgslsmith_index_u32(8977u, 25u)], global1[_wgslsmith_index_u32(14656u, 25u)], -1i))), vec4<i32>(_wgslsmith_add_i32(u_input.d, 1i), var_0.x, -2147483647i, min(global1[_wgslsmith_index_u32(75440u, 25u)], var_0.x))), -u_input.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(floor(arg_1)))))), !any(vec4<bool>(true, true, true, true)));
    global1 = array<i32, 25>();
    global0 = array<vec4<f32>, 12>();
    return select(select(select(vec3<bool>(true, false, var_1.e), vec3<bool>(var_1.a, true, true), true), select(select(!vec3<bool>(true, var_1.a, false), select(vec3<bool>(true, var_1.e, var_1.a), vec3<bool>(var_1.e, var_1.e, var_1.a), vec3<bool>(var_1.e, var_1.a, true)), !vec3<bool>(true, true, var_1.e)), vec3<bool>(!var_1.e, false, true), u_input.a.x < abs(arg_0)), select(!(!vec3<bool>(var_1.e, true, false)), select(!vec3<bool>(var_1.e, true, false), select(vec3<bool>(false, var_1.e, false), vec3<bool>(true, false, false), var_1.a), vec3<bool>(false, var_1.a, true)), select(vec3<bool>(var_1.e, var_1.a, true), select(vec3<bool>(false, true, var_1.e), vec3<bool>(var_1.e, true, var_1.e), var_1.a), var_1.e))), select(!select(select(vec3<bool>(var_1.a, false, true), vec3<bool>(var_1.a, var_1.e, true), var_1.e), vec3<bool>(false, var_1.e, false), true), !vec3<bool>(var_1.a, true, true), !select(!vec3<bool>(var_1.e, var_1.e, false), !vec3<bool>(var_1.e, var_1.e, var_1.e), var_1.a & true)), vec3<bool>(select((arg_0 & arg_0) > max(59379u, arg_0), false, !(!var_1.a)), any(select(vec4<bool>(var_1.e, var_1.a, var_1.a, true), vec4<bool>(true, true, var_1.e, var_1.a), vec4<bool>(var_1.e, true, var_1.a, false))) | any(select(vec3<bool>(var_1.e, var_1.e, true), vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.e, var_1.a, true))), u_input.c.x != u_input.c.x));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = select(vec2<bool>(!select(any(vec3<bool>(arg_1.a, arg_1.e, arg_1.e)), true, !arg_1.e), -2101f > _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_div_f32(arg_0, arg_2.x)))), select(vec2<bool>(true, arg_1.e), select(vec2<bool>(false, arg_1.a), select(!vec2<bool>(arg_1.e, false), !vec2<bool>(false, arg_1.e), vec2<bool>(arg_1.a, true)), any(!vec3<bool>(arg_1.e, true, arg_1.e))), any(!func_3(4294967295u, arg_1.d))), vec2<bool>(arg_1.e, false));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_2.yx)) * arg_2.yw);
    var var_2 = arg_2.xwz;
    var var_3 = 1173f;
    let var_4 = countOneBits(vec3<u32>(1u, 20225u, u_input.a.x));
    return ~vec3<u32>(abs(~(~var_4.x)), u_input.b.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_4.x), u_input.b), vec2<u32>(~var_4.x, ~u_input.c.x)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec4<i32> {
    var var_0 = Struct_1(!all(select(!vec2<bool>(true, arg_0), !vec2<bool>(arg_0, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(trunc(272f))))), arg_2.zy, -1167f, true);
    global0 = array<vec4<f32>, 12>();
    var var_1 = select(-arg_2.yxy, vec3<i32>(55596i, ~u_input.d, global1[_wgslsmith_index_u32(7945u, 25u)]), false);
    var_1 = ~arg_2.zwx;
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d - 764f), -667f))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-602f * _wgslsmith_f_op_f32(round(-952f))))));
    return vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(-16220i, -2147483647i)), global1[_wgslsmith_index_u32(firstTrailingBit(~(~(~u_input.b.x))), 25u)], countOneBits(17472i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~arg_2.xxw, -select(arg_2.wxz, vec3<i32>(var_0.c.x, u_input.d, var_0.c.x), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, arg_2.x), vec2<i32>(var_0.c.x, var_1.x)) ^ var_1.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<i32, 25>();
    let var_0 = _wgslsmith_add_vec4_i32((~_wgslsmith_add_vec4_i32(vec4<i32>(-17751i, arg_2.c.x, arg_2.c.x, arg_0.c.x), vec4<i32>(arg_1.c.x, global1[_wgslsmith_index_u32(43684u, 25u)], 2147483647i, arg_2.c.x)) & firstLeadingBit(~vec4<i32>(31826i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 25718i, arg_1.c.x))) ^ func_4(any(vec3<bool>(arg_1.e, true, arg_1.a)), func_2(arg_0.b, arg_0, vec4<f32>(-494f, 1000f, 319f, 108f)), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_0.c.x, -65104i, global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), vec4<i32>(arg_0.c.x, arg_1.c.x, -51961i, arg_1.c.x))), vec4<i32>(_wgslsmith_sub_i32(5479i, -global1[_wgslsmith_index_u32(u_input.b.x, 25u)] | -arg_2.c.x), ~u_input.e, ~reverseBits(-1i) << (~u_input.b.x % 32u), 1i));
    let var_1 = min(-_wgslsmith_mod_i32(select(reverseBits(2147483647i), 2147483647i, false), -1i), select(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.xz, vec2<i32>(arg_0.c.x, -19927i)), select(arg_1.c, vec2<i32>(89467i, 46967i), vec2<bool>(true, false))) ^ arg_0.c.x, arg_1.c.x, true));
    let var_2 = Struct_1(true, _wgslsmith_f_op_f32(arg_2.b - -735f), -arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1488f))))), !arg_0.a);
    let var_3 = u_input.b.x | 4294967295u;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(_wgslsmith_mod_i32(-u_input.d, 0i) >= 38022i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(f32(-1f) * -417f)))), abs(~(-max(vec2<i32>(3660i, u_input.e), vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 25u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-636f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(740f, 962f)) - _wgslsmith_f_op_f32(func_1(Struct_1(true, -1000f, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], -16088i), -2538f, true), Struct_1(true, 257f, vec2<i32>(u_input.e, u_input.e), -528f, true), Struct_1(true, 198f, vec2<i32>(8343i, u_input.d), -862f, true)))))), false);
    let var_1 = var_0.c;
    global1 = array<i32, 25>();
    global0 = array<vec4<f32>, 12>();
    var var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(~u_input.c.x << (u_input.c.x % 32u), 25u)] <= u_input.e, all(!(!vec4<bool>(true, true, var_0.a, var_0.e))), var_0.e, false || (~4294967295u == u_input.a.x));
    var var_3 = vec3<i32>(1i << (~u_input.c.x % 32u), _wgslsmith_sub_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), ~(-2147483647i)) ^ (vec3<i32>(global1[_wgslsmith_index_u32(18489u, 25u)], _wgslsmith_sub_i32(-28062i, var_0.c.x), var_1.x) & (firstTrailingBit(vec3<i32>(u_input.d, var_0.c.x, 2147483647i)) >> (u_input.a.wxw % vec3<u32>(32u))));
    let var_4 = ~_wgslsmith_add_vec4_i32(countOneBits(min(-vec4<i32>(u_input.e, u_input.e, var_1.x, u_input.e), _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 25u)], -2147483647i, 1i, var_1.x), vec4<i32>(28603i, var_0.c.x, 2257i, var_1.x)))), vec4<i32>(firstTrailingBit(-u_input.e), _wgslsmith_add_i32(var_1.x, var_3.x), -_wgslsmith_sub_i32(1i, var_1.x), _wgslsmith_div_i32(u_input.d, var_0.c.x)));
    global0 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_mult_i32(~_wgslsmith_div_i32(var_3.x, func_4(var_2.x, vec3<u32>(u_input.b.x, 4294967295u, 1u), var_4).x), -1i), vec2<i32>(u_input.d, 0i) | var_0.c);
}

