struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(418f, 1676f), vec2<f32>(638f, -459f), vec2<f32>(-1572f, -165f), vec2<f32>(-416f, -1523f), vec2<f32>(-631f, -1076f), vec2<f32>(809f, -641f), vec2<f32>(2206f, 466f), vec2<f32>(-342f, -456f), vec2<f32>(-876f, 146f), vec2<f32>(187f, -939f), vec2<f32>(658f, 829f));

var<private> global1: array<f32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_4(~abs(arg_0.c.xz), arg_1.b, arg_0.d.x);
    global1 = array<f32, 15>();
    var var_1 = arg_0.e.a;
    let var_2 = firstLeadingBit(vec2<u32>(var_0.a.x, arg_1.a.a));
    var var_3 = vec4<f32>(966f, var_0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1083f, -1036f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1766f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.b.b.x), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 15u)]))))), 130f);
    return _wgslsmith_clamp_i32(0i, min(arg_0.b.d, 5851i), -483i);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec2<u32>(firstLeadingBit(arg_0.a), max(_wgslsmith_add_u32(31881u, 1u), ~3412u));
    global1 = array<f32, 15>();
    let var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_1.x, func_3(Struct_3(arg_0.a, Struct_2(arg_0, Struct_1(0u, arg_0.b), vec4<i32>(arg_1.x, 31105i, arg_1.x, arg_1.x), arg_1.x, false), u_input.b.wzz, vec4<bool>(arg_3.x, arg_3.x, true, false), Struct_2(Struct_1(u_input.b.x, vec4<f32>(arg_2, 205f, -696f, 1239f)), Struct_1(u_input.b.x, vec4<f32>(arg_0.b.x, global1[_wgslsmith_index_u32(arg_0.a, 15u)], arg_0.b.x, global1[_wgslsmith_index_u32(29250u, 15u)])), arg_1, arg_1.x, arg_3.x)), Struct_2(Struct_1(4294967295u, vec4<f32>(arg_0.b.x, arg_0.b.x, -644f, -365f)), Struct_1(26165u, vec4<f32>(-696f, arg_2, arg_0.b.x, arg_2)), arg_1, 9042i, arg_3.x))), vec2<i32>(-1i) * -(arg_1.yx << (u_input.b.wy % vec2<u32>(32u))));
    var var_2 = arg_0.b.wyw;
    return var_0.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 11>();
    return Struct_1(~(~func_2(Struct_1(u_input.b.x, vec4<f32>(450f, arg_2, -656f, 1000f)), vec4<i32>(arg_0.x, 0i, -2147483647i, arg_0.x), arg_1, vec2<bool>(true, true)) & (57416u | ~u_input.a)), vec4<f32>(-582f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 * arg_2))))), _wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2)), global1[_wgslsmith_index_u32(~u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)] == global1[_wgslsmith_index_u32(35765u, 15u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~1i);
    let var_1 = Struct_3(u_input.a, Struct_2(func_1(-vec2<i32>(var_0, -87935i) << (u_input.b.yw % vec2<u32>(32u)), _wgslsmith_f_op_f32(round(-448f)), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u) | (u_input.a & u_input.b.x), 15u)]), Struct_1(func_1(vec2<i32>(var_0, var_0), -522f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 15u)])).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(34299u, 15u)], -938f, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 1030f) + vec4<f32>(1968f, global1[_wgslsmith_index_u32(15583u, 15u)], 848f, -1454f)))), abs(vec4<i32>(1i, -4529i, var_0, -1i)) >> (select(vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 4294967295u), u_input.b & vec4<u32>(57543u, 1u, 4294967295u, u_input.a), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), var_0, true), ~(~(~vec3<u32>(23666u, 4294967295u, u_input.a) << (u_input.b.xzy % vec3<u32>(32u)))), vec4<bool>(true, true, 718f == _wgslsmith_f_op_f32(select(1065f, -267f, select(false, true, false))), !any(vec4<bool>(true, false, false, false)) | true), Struct_2(func_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_0, 36315i), vec2<i32>(57283i, -14338i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), 1516f), Struct_1(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35800u, 15u)] * 498f), _wgslsmith_f_op_f32(1805f * global1[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(84451u, 15u)] - global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), abs(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2164i, var_0, -1i, -49132i)), vec4<i32>(var_0, var_0, var_0, 2147483647i) & vec4<i32>(var_0, var_0, var_0, var_0))), max(firstLeadingBit(var_0 >> (6198u % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, var_0, var_0, -48654i), vec4<i32>(41181i, -48107i, -1i, var_0), vec4<bool>(true, true, true, false)), min(vec4<i32>(-19953i, -30162i, 24326i, -2147483647i), vec4<i32>(-2147483647i, 18879i, var_0, var_0)))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))) & (all(vec2<bool>(true, true)) && true)));
    var var_2 = Struct_4(min(vec2<u32>(~83381u, 59342u), vec2<u32>(~104989u, u_input.a >> (u_input.b.x % 32u))) ^ ~vec2<u32>(~var_1.b.a.a, ~1u), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1265f, global1[_wgslsmith_index_u32(var_1.c.x, 15u)], var_1.b.a.b.x, 734f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], -1702f, var_1.b.a.b.x, 1099f)))))), u_input.b.x <= ~func_2(var_1.e.a, _wgslsmith_mod_vec4_i32(var_1.b.c, var_1.e.c), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 15u)] * 423f), var_1.d.yy));
    global0 = array<vec2<f32>, 11>();
    var var_3 = Struct_4(_wgslsmith_mult_vec2_u32(~var_2.a, ~(~var_2.a)), Struct_1(abs(var_2.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(var_1.c.x, 15u)], 861f, var_2.b.b.x, 427f), vec4<f32>(-719f, var_2.b.b.x, var_2.b.b.x, var_2.b.b.x), vec4<bool>(var_2.c, false, true, true))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.b.b.x, 2017f, var_1.e.a.b.x, -838f), var_1.b.a.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, 495f, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], var_2.b.b.x)))))), false);
    var var_4 = var_3.b.a;
    var_4 = ~(~_wgslsmith_clamp_u32(var_3.b.a, 0u, 1u));
    let var_5 = ~(reverseBits(firstTrailingBit(~var_3.a.x)) & _wgslsmith_mod_u32(_wgslsmith_div_u32(28113u, ~27232u), var_3.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-_wgslsmith_mod_i32(var_0, 0i), ~41648i, var_1.b.c.x), vec3<i32>(-2147483647i & _wgslsmith_add_i32(37979i, var_0), ~var_0, _wgslsmith_dot_vec4_i32(firstTrailingBit(var_1.e.c), firstLeadingBit(vec4<i32>(var_1.b.d, 1i, -5554i, -1i)))), vec3<bool>(var_2.c, !(var_2.c | true), var_2.c)), _wgslsmith_mod_i32(var_0, var_1.e.c.x), var_2.b.b.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(var_3.b.b.x)), var_1.e.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1495f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b.b.x))))), vec3<u32>(func_2(var_2.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.e.d, var_1.e.d, var_0, var_1.e.c.x) >> (u_input.b % vec4<u32>(32u)), ~var_1.b.c, var_1.e.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.b.b.x))), !select(vec2<bool>(var_3.c, var_3.c), vec2<bool>(var_2.c, var_2.c), true)), select(~4294967295u, firstLeadingBit(~u_input.a), true), min(u_input.b.x, 51324u) << ((69640u ^ ~var_3.a.x) % 32u)));
}

