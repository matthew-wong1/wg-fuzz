struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1u, -11866i), Struct_1(13983u, -712i), Struct_1(37605u, 707i), Struct_1(52763u, 17327i), Struct_1(78698u, 31005i), Struct_1(13851u, 66603i), Struct_1(0u, 28847i), Struct_1(65283u, -54260i), Struct_1(109363u, i32(-2147483648)), Struct_1(1276u, i32(-2147483648)), Struct_1(1u, 1i));

var<private> global1: array<u32, 17>;

var<private> global2: Struct_2 = Struct_2(false, 404f, Struct_1(10399u, -16212i));

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_1, 11>();
    var var_0 = -713f;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2028f, -1391f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, global2.b, -197f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, global2.b, _wgslsmith_f_op_f32(756f + global2.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 125f, 653f) - vec3<f32>(-1529f, 2408f, -766f))))), global2.a));
    var var_2 = vec4<bool>(arg_0, abs(global2.c.b) >= _wgslsmith_mod_i32(i32(-1i) * -2147483647i, -2147483647i), true, all(!select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(global2.a, true, false), false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, false), global2.a), false)));
    var_0 = -1751f;
    return vec4<bool>(_wgslsmith_f_op_f32(724f * var_1.x) != global2.b, all(vec4<bool>(all(vec4<bool>(arg_0, arg_0, global2.a, true)), false, global2.a, var_2.x & var_2.x)) | any(select(var_2.yx, select(vec2<bool>(global2.a, var_2.x), vec2<bool>(true, arg_0), arg_0), !vec2<bool>(var_2.x, true))), true, any(!(!vec4<bool>(false, true, arg_0, var_2.x))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = false != global2.a;
    global1 = array<u32, 17>();
    let var_1 = !(!func_3(select(true, any(vec3<bool>(arg_1, true, global2.a)), false)));
    global3 = array<Struct_2, 32>();
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * global2.b))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-489f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    global0 = array<Struct_1, 11>();
    var var_1 = ~global2.c.a;
    var var_2 = vec3<bool>(all(func_3(true).yxy), false, !global2.a);
    var var_3 = Struct_2(global2.c.a >= global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), _wgslsmith_div_f32(726f, arg_2.x)))) - 1545f), Struct_1(reverseBits(0u), global2.c.b));
    return global3[_wgslsmith_index_u32(reverseBits(max(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~39013u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, 52544u))), global2.c.a))), 32u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(-vec4<i32>(1i, global2.c.b, u_input.c.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1876i, 9543i, 58562i), vec3<i32>(global2.c.b, global2.c.b, -8560i)), _wgslsmith_mult_i32(u_input.c.x, -1i), true)), vec3<f32>(global2.b, 2315f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(f32(-1f) * -566f)), _wgslsmith_f_op_f32(-349f + _wgslsmith_f_op_f32(func_2(global2.c.b, false, global2.b))), global2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, global2.b, -854f, 543f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, -739f, 309f, -1646f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b, global2.b, global2.b, global2.b), vec4<f32>(1459f, -1641f, global2.b, 507f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.b, global2.b, 1460f, global2.b))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b, -773f, global2.b, -1759f), vec4<f32>(-885f, 1542f, -849f, 801f), global2.a)))))));
    global3 = array<Struct_2, 32>();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~(~1u)), 32u)];
    let var_1 = func_4(~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(15635i, 1i, 1i, u_input.c.x), vec4<i32>(global2.c.b, global2.c.b, -7914i, u_input.c.x)), reverseBits(vec4<i32>(global2.c.b, var_0.c.b, var_0.c.b, u_input.c.x))) >> (select(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 6648u, 38393u, 1u), vec4<u32>(58692u, 0u, 74431u, 0u))), firstTrailingBit(select(vec4<u32>(56422u, var_0.c.a, global1[_wgslsmith_index_u32(26879u, 17u)], 1u), vec4<u32>(1u, u_input.b, 95252u, u_input.b), var_0.a)), vec4<bool>(true, false, global2.a, all(vec4<bool>(true, global2.a, var_0.a, true)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 1681f, -307f) * vec3<f32>(global2.b, -134f, -268f)), vec3<f32>(-1007f, var_0.b, var_0.b))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, 233f, -1046f, var_0.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 969f, var_0.b, var_0.b) + vec4<f32>(464f, -1323f, -297f, var_0.b))))))).c;
    var var_2 = !select(!select(vec3<bool>(false, false, true), !vec3<bool>(false, var_0.a, false), true), vec3<bool>(global2.a, u_input.a.x < 5417u, global2.a), var_0.a);
    return Struct_1(var_1.a, u_input.c.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32((_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 19191u) << (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(64331u, arg_1.a)) ^ u_input.a.zy) ^ ~(~(~vec2<u32>(1u, arg_1.a))), ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.a), vec2<u32>(global1[_wgslsmith_index_u32(92840u, 17u)], 0u)) >> (select(u_input.a.xz, vec2<u32>(93900u, 0u), true) % vec2<u32>(32u))));
    global3 = array<Struct_2, 32>();
    let var_1 = global3[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 17u)]), 32u)];
    global1 = array<u32, 17>();
    global0 = array<Struct_1, 11>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global2.c, func_1());
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(13111u, 32548u, 0u, global1[_wgslsmith_index_u32(40755u, 17u)]), vec4<u32>(var_0.a, 76461u, 78765u, 38884u)), select(~vec4<u32>(10478u, global2.c.a, 4294967295u, u_input.b), vec4<u32>(global2.c.a, 1u, 24616u, 4294967295u), 0u <= u_input.a.x)), abs(vec4<u32>(select(var_0.a, 0u, global2.a), 29652u, global1[_wgslsmith_index_u32(~1u, 17u)], global1[_wgslsmith_index_u32(69879u << (0u % 32u), 17u)]))) | ~abs(vec4<u32>(~2225u, _wgslsmith_mult_u32(1u, global2.c.a), global1[_wgslsmith_index_u32(~1u, 17u)], 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1790f)), global2.b, -1497f));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, 1554f)), -1118f), vec3<f32>(-1817f, 1f, -373f))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(countOneBits(27075u), 77190u), 17u)], vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, var_0.b, global2.c.b), min(vec3<i32>(u_input.c.x, -55301i, 1i), vec3<i32>(-42546i, 12807i, 2147483647i))) << (~var_0.a % 32u), u_input.c.x, func_4(~countOneBits(vec4<i32>(1i, -32660i, global2.c.b, u_input.c.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, var_3.x, 430f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, var_2.x, global2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(871f, global2.b, 367f, -1583f), vec4<f32>(-406f, global2.b, -2688f, -555f))))).c.b), func_5(Struct_1(reverseBits(global2.c.a), global2.c.b), func_1()).a, 25220u);
}

