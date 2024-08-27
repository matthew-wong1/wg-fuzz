struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, true), -1000f, vec2<u32>(0u, 42762u), vec3<i32>(7621i, -19392i, 22563i), vec4<bool>(true, true, false, false)), Struct_1(vec2<bool>(true, true), -962f, vec2<u32>(1u, 1u), vec3<i32>(26873i, 1i, 1i), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(false, true), 1156f, vec2<u32>(1u, 4294967295u), vec3<i32>(-1i, -1i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), 1238f, vec2<u32>(4294967295u, 0u), vec3<i32>(i32(-2147483648), 0i, 31582i), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, false), 795f, vec2<u32>(13162u, 13956u), vec3<i32>(-69613i, -1i, 1i), vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(false, true), -195f, vec2<u32>(4294967295u, 1u), vec3<i32>(4275i, -8477i, 37434i), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, false), 937f, vec2<u32>(0u, 19901u), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, true), -630f, vec2<u32>(0u, 0u), vec3<i32>(-1i, 2147483647i, -918i), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(true, false), 321f, vec2<u32>(132140u, 4294967295u), vec3<i32>(0i, 0i, -15586i), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, false), 654f, vec2<u32>(1u, 0u), vec3<i32>(2147483647i, -1i, 0i), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(false, true), 432f, vec2<u32>(4294967295u, 30501u), vec3<i32>(37228i, -1i, 57145i), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, false), -2078f, vec2<u32>(12906u, 52995u), vec3<i32>(-5374i, 13997i, -41320i), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(true, false), -1141f, vec2<u32>(33749u, 60432u), vec3<i32>(88279i, -62216i, 20073i), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(false, false), -308f, vec2<u32>(32186u, 25390u), vec3<i32>(68432i, -74906i, -1i), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, false), 192f, vec2<u32>(13172u, 1u), vec3<i32>(1i, -1i, 3607i), vec4<bool>(false, false, true, true)), Struct_1(vec2<bool>(true, true), 906f, vec2<u32>(40082u, 1u), vec3<i32>(1i, 14835i, -8164i), vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, true), 1000f, vec2<u32>(8848u, 18267u), vec3<i32>(i32(-2147483648), 1i, 1i), vec4<bool>(true, false, false, true)), Struct_1(vec2<bool>(true, true), -2070f, vec2<u32>(0u, 0u), vec3<i32>(-16421i, 4244i, -77246i), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), 498f, vec2<u32>(4294967295u, 50554u), vec3<i32>(-41643i, i32(-2147483648), 12237i), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(true, false), 227f, vec2<u32>(28113u, 38841u), vec3<i32>(-1i, 0i, -40980i), vec4<bool>(false, false, false, true)), Struct_1(vec2<bool>(false, false), -1848f, vec2<u32>(4294967295u, 0u), vec3<i32>(-6923i, 1i, -1i), vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(false, false), 267f, vec2<u32>(4294967295u, 7704u), vec3<i32>(i32(-2147483648), -2949i, 19758i), vec4<bool>(true, true, false, false)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    var var_0 = Struct_1(!vec2<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(-70618i, -27298i), vec2<i32>(-2147483647i, u_input.a.x)) > abs(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)), reverseBits(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, arg_0), vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(arg_0, u_input.b))), reverseBits(-(~(u_input.a >> (vec3<u32>(u_input.b, u_input.b, arg_0) % vec3<u32>(32u))))), select(select(!select(vec4<bool>(false, true, false, global0.x), vec4<bool>(false, false, true, false), vec4<bool>(false, arg_2, false, arg_2)), vec4<bool>(false | arg_2, global0.x, arg_2 & false, global0.x), !select(vec4<bool>(arg_2, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false), false)), vec4<bool>(false, any(vec4<bool>(true, global0.x, false, arg_2)), true, true), true));
    let var_1 = true & var_0.e.x;
    return any(select(!var_0.e.yxy, var_0.e.xyy, var_1));
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = -select(~vec4<i32>(arg_0.d.x, -2147483647i, 0i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-4805i, -1i, 91402i, arg_0.d.x) & vec4<i32>(arg_0.d.x, 1i, 19096i, -57105i), -vec4<i32>(u_input.a.x, -5017i, 2147483647i, 32143i), vec4<i32>(1i, 92558i, arg_0.d.x, arg_0.d.x) | vec4<i32>(arg_0.d.x, u_input.a.x, -50781i, u_input.a.x)), !select(vec4<bool>(true, true, arg_0.e.x, global0.x), vec4<bool>(false, true, arg_0.a.x, global0.x), false)) & -abs(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d.x, arg_0.d.x, 11865i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(52929i, 1i, arg_0.d.x, -1i), vec4<i32>(arg_0.d.x, arg_0.d.x, 2147483647i, 6559i))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-646f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f + -601f))))));
    global0 = vec3<bool>(!(u_input.b <= var_1.c.x), -1i <= _wgslsmith_sub_i32(-2147483647i, u_input.a.x), true);
    let var_3 = !(all(vec3<bool>(var_1.e.x != true, true, all(vec3<bool>(true, false, global0.x)))) && any(arg_0.e));
    return ~49341u;
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = global0.x;
    global0 = !select(!select(vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, false)), vec3<bool>(global0.x, _wgslsmith_mod_i32(-2147483647i, -2862i) <= (arg_0 << (4294967295u % 32u)), _wgslsmith_f_op_f32(arg_1 * arg_1) <= _wgslsmith_f_op_f32(-arg_1)), true);
    global1 = array<Struct_1, 22>();
    var var_1 = global1[_wgslsmith_index_u32(func_4(Struct_1(vec2<bool>(!global0.x, func_3(u_input.b, vec3<f32>(arg_1, 160f, arg_1), false) || !global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(257f - arg_1))) * 332f), select(~vec2<u32>(7649u, 39454u), vec2<u32>(96858u, u_input.b), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), !global0.x)), select(max(vec3<i32>(arg_0, -39979i, -2147483647i) & vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-29297i, 8543i, arg_0)), vec3<i32>(_wgslsmith_sub_i32(1i, 11139i), reverseBits(u_input.a.x), 1i), vec3<bool>(true, true, true)), !select(vec4<bool>(false, true, global0.x, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, true, true, true)))), 22u)];
    var var_2 = true;
    return var_1.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec4<bool>(global0.x, arg_0.a.x, !(76725u != u_input.b), select(arg_0.a.x, arg_1.e.x, true));
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.b)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)))));
    var var_3 = vec2<u32>(arg_2.c.x, _wgslsmith_sub_u32((arg_2.c.x ^ ~u_input.b) & func_2(1i, -1000f), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, u_input.b, u_input.b, arg_1.c.x) & vec4<u32>(u_input.b, 0u, 107094u, 7597u), vec4<u32>(24875u, 5941u, 56040u, arg_2.c.x)), arg_1.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 37930u), vec2<u32>(102063u, 0u)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, var_2.x, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-1f))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 43583i, u_input.a.x, -35763i)), ~select(select(vec4<i32>(u_input.a.x, 0i, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), vec4<bool>(false, false, global0.x, global0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 0u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(34431u, u_input.b, 1u, u_input.b)) % vec4<u32>(32u)), -(~vec4<i32>(3190i, -1i, u_input.a.x, u_input.a.x)), vec4<bool>(true, any(vec2<bool>(global0.x, true)), global0.x, true)));
    global0 = select(!select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(24967u <= u_input.b, all(vec4<bool>(false, true, global0.x, true)), u_input.a.x >= var_0.x), !vec3<bool>(global0.x, true, true)), !select(vec3<bool>(true, global0.x, func_1(global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(77053u, 22u)], global1[_wgslsmith_index_u32(39525u, 22u)])), select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), true), all(select(select(!vec4<bool>(false, global0.x, true, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x), false), vec4<bool>(false, global0.x, false, global0.x)), vec4<bool>(!global0.x, true, global0.x, global0.x), true)));
    var_0 = -firstTrailingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 28493i, -42922i, var_0.x), ~vec4<i32>(u_input.a.x, var_0.x, -39503i, 26133i)), select(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -7664i, var_0.x, -1i) << (vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u)), global0.x), !vec4<bool>(true, global0.x, global0.x, true)));
    var_0 = vec4<i32>(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(var_0.xy, u_input.a.yz), ~vec2<i32>(23915i, u_input.a.x) | ~vec2<i32>(-1i, -2147483647i)), -1i), _wgslsmith_dot_vec3_i32(min(u_input.a, ~u_input.a) ^ u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, _wgslsmith_clamp_i32(3832i, 0i, 73299i), var_0.x), select(u_input.a, vec3<i32>(11661i, -3021i, var_0.x), !vec3<bool>(global0.x, true, true)))), var_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1438f, -2066f, -373f, -316f), vec4<f32>(1379f, 606f, 1808f, -1968f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1427f, 561f, -397f, 231f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -910f, -724f, 676f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_0.x, vec3<u32>(~1u, u_input.b, ~(_wgslsmith_mult_u32(4294967295u, u_input.b) & _wgslsmith_div_u32(u_input.b, u_input.b))), select(vec2<u32>(1u, 5247u), _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.b, 71162u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), ~vec2<u32>(u_input.b, u_input.b)), select(true, !all(global0.yx), any(select(global0.zx, vec2<bool>(true, global0.x), false)))), abs(vec2<i32>(select(u_input.a.x, i32(-1i) * -2194i, func_1(Struct_1(vec2<bool>(global0.x, true), var_1.x, vec2<u32>(47454u, u_input.b), var_0.zxy, vec4<bool>(false, global0.x, global0.x, global0.x)), global1[_wgslsmith_index_u32(u_input.b, 22u)], Struct_1(vec2<bool>(global0.x, false), 559f, vec2<u32>(u_input.b, u_input.b), var_0.yxw, vec4<bool>(global0.x, true, true, true)))), -var_0.x)));
}

