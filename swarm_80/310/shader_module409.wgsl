struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(12085u, 4294967295u, 65901u, 0u, 4294967295u, 0u, 4294967295u, 62755u, 19696u, 104249u, 1u, 0u, 47750u, 0u, 0u, 1u);

var<private> global1: vec2<i32> = vec2<i32>(-23141i, 0i);

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_add_i32(max(-1i, 0i), -32385i);
    let var_1 = Struct_2(firstLeadingBit(~global1.x), Struct_1(true, vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0), arg_0, _wgslsmith_f_op_f32(round(1299f))), true, arg_0), -56651i, _wgslsmith_clamp_u32(global2.x, ~(~(~global0[_wgslsmith_index_u32(0u, 16u)])), 1u), _wgslsmith_f_op_f32(1129f + -526f));
    global0 = array<u32, 16>();
    global2 = reverseBits(abs(~vec4<u32>(4294967295u, global2.x, 4294967295u, 0u)) | firstLeadingBit(vec4<u32>(~1u, global2.x & var_1.d, ~36886u, ~global0[_wgslsmith_index_u32(4294967295u, 16u)])));
    let var_2 = var_1.b;
    return vec3<bool>(any(!(!select(vec2<bool>(arg_2, false), vec2<bool>(var_1.b.c, true), true))), all(vec3<bool>(var_2.c, arg_1, arg_0 <= _wgslsmith_f_op_f32(max(-933f, var_2.d)))), false && all(!(!vec4<bool>(arg_1, true, false, arg_2))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = all(!select(select(vec3<bool>(arg_0.c, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.c, arg_0.c), !vec3<bool>(arg_0.c, arg_0.c, arg_0.a)), !select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, false, true), true), func_3(_wgslsmith_f_op_f32(-786f - arg_0.b.x), 703f != arg_0.b.x, true, vec2<i32>(-26729i, u_input.a) ^ vec2<i32>(-75378i, global1.x))));
    let var_1 = Struct_2(2147483647i, Struct_1(!(~151907u > global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global2.x, 16u)], 16u)]), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(arg_0.b, arg_0.b)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(select(arg_0.b.x, arg_0.b.x, arg_0.a))), all(func_3(-1492f, arg_0.a, false, vec2<i32>(2147483647i, 2147483647i)).zz), _wgslsmith_f_op_f32(-arg_0.d) <= arg_0.d, _wgslsmith_mod_vec2_i32(vec2<i32>(-71427i, global1.x), vec2<i32>(55631i, u_input.a)) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 16u)], 16u)], 36052u) % vec2<u32>(32u))).x, _wgslsmith_div_f32(arg_0.d, -1000f)), -9968i, 46068u, _wgslsmith_f_op_f32(-arg_0.d));
    global2 = ~(vec4<u32>(~(global2.x << (5414u % 32u)), ~(~global2.x), reverseBits(var_1.d), global2.x) << (vec4<u32>(select(global0[_wgslsmith_index_u32(67678u, 16u)] | 14463u, abs(global2.x), false), _wgslsmith_dot_vec3_u32(global2.yzx, global2.wyz), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 1u), 0u), 1u ^ global0[_wgslsmith_index_u32(var_1.d, 16u)]) % vec4<u32>(32u)));
    global1 = vec2<i32>(u_input.a, reverseBits(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_1.c, 0i, -3877i)), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a, 4425i, -32574i), select(vec3<i32>(10358i, 0i, -2147483647i), vec3<i32>(53542i, u_input.a, u_input.a), vec3<bool>(var_1.b.c, arg_0.c, false))))));
    let var_2 = any(func_3(552f, false, true, reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-18414i, -6436i), ~vec2<i32>(64382i, 0i)))));
    return _wgslsmith_sub_u32(global2.x, select(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(70699u, 0u, 0u), vec3<u32>(45589u, var_1.d, 12121u)), 4294967295u), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32) -> bool {
    global2 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 20629u, arg_0.x, 1u)), ~vec4<u32>(global2.x, 1u, 1u, 0u)), ~vec4<u32>(42702u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x) ^ arg_0.yy, abs(arg_0.zw)), func_2(Struct_1(true, vec4<f32>(1055f, arg_1.x, arg_1.x, arg_1.x), true, arg_1.x)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(45471u, 0u, 108759u), vec3<u32>(global2.x, 18074u, arg_0.x), true), ~vec3<u32>(75390u, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), abs(global0[_wgslsmith_index_u32(1u, 16u)]) << (func_2(Struct_1(true, vec4<f32>(-2238f, -1828f, -716f, arg_1.x), true, arg_1.x)) % 32u)), ~arg_0), arg_0);
    global0 = array<u32, 16>();
    var var_0 = -132f;
    global2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, firstLeadingBit(global2.x), abs(2565u), 4294967295u) << (~(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 24150u) ^ arg_0) % vec4<u32>(32u)), arg_0, arg_0) << (max(vec4<u32>(global2.x, global2.x, _wgslsmith_div_u32(28418u, 103451u), 1u) ^ max(~vec4<u32>(global2.x, arg_0.x, 4294967295u, 0u), arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(50748u, 89736u, global0[_wgslsmith_index_u32(1073u, 16u)], arg_0.x) ^ ~arg_0, ~arg_0)) % vec4<u32>(32u));
    var var_1 = true;
    return any(select(vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(true, any(vec3<bool>(true, true, false))), select(vec2<bool>(true, true), func_3(arg_1.x, false, false, vec2<i32>(u_input.a, -8707i)).yy, true))) && true;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    global0 = array<u32, 16>();
    var var_0 = _wgslsmith_mult_vec3_u32(select(_wgslsmith_sub_vec3_u32(~global2.wyy, global2.zzy), _wgslsmith_mod_vec3_u32(select(vec3<u32>(73892u, global2.x, arg_0.x), vec3<u32>(arg_0.x, 43918u, 77662u), false), _wgslsmith_clamp_vec3_u32(global2.yxw, global2.zww, global2.zwy)), func_3(_wgslsmith_f_op_f32(abs(-307f)), true, false || arg_1, vec2<i32>(0i, 8551i) & vec2<i32>(global1.x, global1.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(36774u, 0u, 4294967295u) | arg_0, select(min(vec3<u32>(arg_0.x, arg_0.x, 1u), global2.yww), global2.zyx, arg_1 & arg_1))) & vec3<u32>(global0[_wgslsmith_index_u32(~min(1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 6919u)), 16u)], 52973u, global2.x);
    var var_1 = Struct_2(_wgslsmith_sub_i32(~(-(~(-27206i))), u_input.a), Struct_1(arg_1, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-628f, 221f), 784f, _wgslsmith_div_f32(593f, -115f), _wgslsmith_f_op_f32(233f - 1138f)))), !(!arg_1 || func_1(vec4<u32>(35950u, arg_0.x, 1u, arg_0.x), vec2<f32>(1158f, 388f), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -853f)))), global1.x & -17938i, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3243f - 419f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) - 925f)));
    let var_2 = 59192u;
    global1 = -vec2<i32>(_wgslsmith_div_i32(~firstLeadingBit(global1.x), global1.x), -firstTrailingBit(u_input.a));
    return Struct_1(false && (reverseBits(~var_2) == global0[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(var_1.b.b)), var_1.b.b)), vec4<f32>(-283f, var_1.b.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.d * var_1.b.b.x))), 314f)), var_1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)) + var_1.e) + _wgslsmith_f_op_f32(f32(-1f) * -1045f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<u32>(global2.x, _wgslsmith_mod_u32(~0u, select(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 23771u, false), ~global0[_wgslsmith_index_u32(24062u, 16u)], true)), _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(global2.x, global2.x, 60506u)), ~global2.zwx & vec3<u32>(108745u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37405u, 16u)], 16u)]))), select(false, func_1(vec4<u32>(global0[_wgslsmith_index_u32(55300u, 16u)], global2.x, 9625u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23920u, 16u)], 16u)]) >> (~vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 16u)], global2.x, 28486u, global2.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, -210f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1070f, 229f) - vec2<f32>(-858f, -1077f))), -(u_input.a << (73569u % 32u))), true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), select(true, var_0.a, !var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1765f, _wgslsmith_f_op_f32(func_4(global2.wzz, var_0.c).d + _wgslsmith_f_op_f32(491f - 1207f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(318f))) * _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(round(var_0.b.x))))));
    var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1768f)), var_0.d, _wgslsmith_f_op_f32(261f + _wgslsmith_f_op_f32(var_0.d + -1494f)), -168f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(abs(-1143f)), var_1.x, var_0.d))), var_0.c, 548f);
    let var_2 = select(!(!vec4<bool>(var_0.a & var_0.c, true, true & var_0.a, true)), !vec4<bool>(true, !(!var_0.c), var_0.c, !var_0.a), vec4<bool>(true, false, !var_0.c | func_3(1000f, true, 8493u == global0[_wgslsmith_index_u32(10790u, 16u)], _wgslsmith_mod_vec2_i32(vec2<i32>(-23267i, global1.x), vec2<i32>(0i, u_input.a))).x, var_0.a));
    global2 = abs(select(vec4<u32>(abs(global2.x), countOneBits(global0[_wgslsmith_index_u32(13493u, 16u)]) ^ reverseBits(global2.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(31738u, 97820u, global0[_wgslsmith_index_u32(global2.x, 16u)]), 0u, 0u | global0[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_clamp_u32(1u, global2.x, 591u)), vec4<u32>(countOneBits(~global0[_wgslsmith_index_u32(2642u, 16u)]), _wgslsmith_mult_u32(abs(global2.x), firstTrailingBit(global2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 16u)], 0u, 0u, global0[_wgslsmith_index_u32(30288u, 16u)]) >> (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.x, 16u)], global0[_wgslsmith_index_u32(23375u, 16u)], 4294967295u) % vec4<u32>(32u)), countOneBits(vec4<u32>(global2.x, global0[_wgslsmith_index_u32(2621u, 16u)], 1u, 39675u))), global0[_wgslsmith_index_u32(18363u, 16u)]), var_2));
    global1 = vec2<i32>(u_input.a, global1.x);
    global1 = -vec2<i32>(max(0i, global1.x), 1i) << (abs(min(_wgslsmith_mod_vec2_u32(global2.yw, global2.zz), ~global2.zz)) % vec2<u32>(32u));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(-var_1.x))))), -1471f, _wgslsmith_f_op_f32(sign(610f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(select(vec2<i32>(global1.x, 1i), vec2<i32>(28034i, u_input.a), var_2.xy) << (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))) | ~vec2<i32>(abs(u_input.a), -2147483647i), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global2.x, 16u)], 107057u, global2.x, 8296u)), vec4<u32>(37216u, ~1u, firstTrailingBit(0u), global0[_wgslsmith_index_u32(global2.x << (global2.x % 32u), 16u)])), ~global2.yxw);
}

