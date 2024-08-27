struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 7>;

var<private> global2: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    global2 = -11257i;
    var var_0 = arg_0;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(u_input.a, 7u)], 17357u) >> (0u % 32u), ~arg_1.a.d.x, arg_1.b.d.x);
    let var_2 = Struct_3(Struct_2(Struct_1(select(select(arg_1.b.a, arg_1.b.a, vec3<bool>(false, true, arg_1.a.b)), vec3<bool>(true, false, false), arg_1.a.a), any(vec3<bool>(arg_1.a.b, arg_1.d, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(10755i, arg_1.a.c, arg_1.b.c), vec3<i32>(-3586i, arg_1.b.c, 1i)) & -arg_1.c, arg_1.a.d, arg_1.a.e), arg_1.b, ~arg_1.a.c, any(select(arg_1.a.a, vec3<bool>(false, true, arg_1.a.b), arg_1.a.b))));
    var var_3 = Struct_3(arg_1);
    return 1036f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = arg_3.a;
    let var_1 = -243f;
    var var_2 = vec3<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(arg_3.a.e.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(130f))))), var_1);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f - 705f));
    let var_4 = Struct_2(arg_1, Struct_1(vec3<bool>(false, select(false, arg_3.a.b | false, arg_1.b), false), var_0.a.x, min(-(-2147483647i >> (arg_3.b.d.x % 32u)), arg_2), ~(~vec3<u32>(1u, 22122u, global1[_wgslsmith_index_u32(35839u, 7u)])), vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1891f * var_2.x)), var_0.e.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -266f), arg_3, var_0.d.xz)))), ~firstTrailingBit(_wgslsmith_sub_i32(20667i, _wgslsmith_dot_vec2_i32(vec2<i32>(1895i, -42447i), arg_0.yz))), _wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(abs(1000f))) >= _wgslsmith_f_op_f32(floor(-432f)));
    return select(!(!(!select(vec2<bool>(var_4.d, var_0.b), var_4.a.a.xx, false))), !var_0.a.yx, !select(vec2<bool>(!var_0.a.x, true), vec2<bool>(true, true), select(!vec2<bool>(arg_3.d, arg_1.b), select(vec2<bool>(false, arg_1.a.x), var_4.b.a.xz, arg_1.a.yy), any(vec2<bool>(var_4.a.b, true)))));
}

fn func_1() -> bool {
    global0 = -8112i;
    var var_0 = any(vec3<bool>(true, true, select(true, true, true) | any(func_2(vec3<i32>(-19061i, 26516i, -2147483647i), Struct_1(vec3<bool>(false, true, false), true, 0i, vec3<u32>(1u, global1[_wgslsmith_index_u32(24944u, 7u)], 0u), vec3<f32>(308f, -165f, -1837f)), -2147483647i, Struct_2(Struct_1(vec3<bool>(true, true, true), false, -47771i, vec3<u32>(4294967295u, u_input.a, 31115u), vec3<f32>(1652f, 302f, 776f)), Struct_1(vec3<bool>(true, false, true), false, 0i, vec3<u32>(9875u, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<f32>(519f, 945f, -748f)), -29530i, false)))));
    global1 = array<u32, 7>();
    let var_1 = Struct_1(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(true, any(vec3<bool>(true, true, true)) | true, !any(vec2<bool>(true, true))), ~_wgslsmith_mod_i32(1i, -42781i), _wgslsmith_add_vec3_u32(~select(vec3<u32>(50006u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<u32>(4294967295u, 15320u, 4294967295u), false) >> (reverseBits(~vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(27268u, 7u)], u_input.a)) % vec3<u32>(32u)), ~(select(vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a, 7u)], u_input.a), vec3<bool>(false, false, true)) | _wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], 7u)], u_input.a, 1u), vec3<u32>(10913u, global1[_wgslsmith_index_u32(u_input.a, 7u)], 95767u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-3046f, -1113f, 150f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(712f, -397f, -351f) + vec3<f32>(-1859f, -1227f, 206f)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, -1409f)))), -1000f, 480f)));
    var var_2 = min(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_1.c, -17071i), ~var_1.c, 1i, -var_1.c), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.c, var_1.c, 16448i, 18653i), vec4<i32>(var_1.c, var_1.c, 59028i, -1i)) ^ -vec4<i32>(var_1.c, -43330i, var_1.c, var_1.c)) << (~(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(47388u, 7u)], u_input.a, 4294967295u, u_input.a)) << (~vec4<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 4294967295u, 4294967295u, global1[_wgslsmith_index_u32(1u, 7u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.c, _wgslsmith_sub_i32(var_1.c, 1i), ~var_1.c, 12186i), vec4<i32>(-var_1.c, -firstLeadingBit(var_1.c), -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, -2147483647i, -60190i, var_1.c) & vec4<i32>(-22486i, var_1.c, var_1.c, 0i), max(vec4<i32>(var_1.c, var_1.c, var_1.c, -27341i), vec4<i32>(var_1.c, var_1.c, 49993i, 1i))))));
    return !(var_1.a.x | all(!var_1.a.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    var var_0 = Struct_1(vec3<bool>(true, true, true), !(!func_1()), i32(-1i) * -2147483647i, _wgslsmith_sub_vec3_u32(~firstTrailingBit(vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55831u, 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(116334u, 7u)])), vec3<u32>(3767u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(24789u, 7u)], 31393u), _wgslsmith_mult_u32(1u, ~0u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1420f, 165f, -1264f), vec3<f32>(330f, -1000f, -1179f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(129f, 1280f, 1425f) + vec3<f32>(-619f, -607f, -387f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1175f, 244f, -1474f) + vec3<f32>(1907f, 208f, -1507f)))))));
    var var_1 = Struct_3(Struct_2(Struct_1(select(vec3<bool>(true, var_0.b, true), vec3<bool>(true, var_0.a.x, var_0.a.x), var_0.c > -1i), any(var_0.a.xy), (i32(-1i) * -1i) << (0u % 32u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 23082u, 0u), vec3<u32>(var_0.d.x, var_0.d.x, 4294967295u) << (vec3<u32>(9020u, global1[_wgslsmith_index_u32(28384u, 7u)], u_input.a) % vec3<u32>(32u))), vec3<f32>(1009f, var_0.e.x, _wgslsmith_f_op_f32(exp2(var_0.e.x)))), Struct_1(!var_0.a, var_0.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<i32>(var_0.c, var_0.c, 0i, var_0.c)), var_0.d, vec3<f32>(_wgslsmith_div_f32(var_0.e.x, var_0.e.x), var_0.e.x, _wgslsmith_f_op_f32(-418f + 1620f))), -6074i, false == !func_1()));
    global1 = array<u32, 7>();
    var_0 = Struct_1(!vec3<bool>(all(select(var_1.a.a.a, var_0.a, var_1.a.d)), all(vec4<bool>(false, true, var_0.a.x, var_1.a.d)), !var_0.b), !any(!vec4<bool>(var_0.b, false, var_0.b, var_1.a.b.b)) && (any(vec2<bool>(true, true)) && false), 1i, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, u_input.a), ~global1[_wgslsmith_index_u32(4294967295u, 7u)], _wgslsmith_dot_vec4_u32(vec4<u32>(8720u, u_input.a, 1u, global1[_wgslsmith_index_u32(33431u, 7u)]), vec4<u32>(17415u, 4294967295u, var_0.d.x, var_1.a.a.d.x))), abs(vec3<u32>(27117u, 99996u, var_0.d.x))), ~max(~vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 4294967295u, 47361u), var_0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a.b.e - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, var_1.a.b.e.x, var_1.a.b.e.x)) + var_1.a.b.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a, ~(u_input.a << (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(34073u, 7u)], var_1.a.b.d.x) % 32u)), 0u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b.d.x, 4294967295u), vec2<u32>(u_input.a, var_1.a.a.d.x))))), 2147483647i, ~vec3<u32>(_wgslsmith_mod_u32(u_input.a, countOneBits(var_0.d.x)), ~(global1[_wgslsmith_index_u32(var_0.d.x, 7u)] << (0u % 32u)), var_0.d.x), max(~41410u, firstTrailingBit(0u)), ~vec4<u32>(~1u, ~max(0u, var_1.a.a.d.x), min(max(global1[_wgslsmith_index_u32(8692u, 7u)], var_1.a.a.d.x), reverseBits(u_input.a)), 0u));
}

