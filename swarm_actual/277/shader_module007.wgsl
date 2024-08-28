struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<i32>(3472i, i32(-2147483648), -10914i), vec4<f32>(352f, 342f, 1037f, -387f), vec2<f32>(-1859f, -1092f), true), Struct_1(vec3<i32>(-1i, -990i, 1i), vec4<f32>(452f, 916f, -482f, -880f), vec2<f32>(191f, 358f), true), Struct_1(vec3<i32>(-9314i, 1i, 2147483647i), vec4<f32>(-2646f, -1150f, -1578f, -2150f), vec2<f32>(-581f, 692f), true), Struct_1(vec3<i32>(-2841i, -96983i, -1i), vec4<f32>(1381f, 759f, -650f, -408f), vec2<f32>(-766f, 2069f), false), Struct_1(vec3<i32>(i32(-2147483648), -43996i, i32(-2147483648)), vec4<f32>(443f, -354f, 223f, 2026f), vec2<f32>(-707f, -2312f), true), Struct_1(vec3<i32>(-2561i, 48830i, i32(-2147483648)), vec4<f32>(-1820f, -514f, -236f, -1039f), vec2<f32>(-132f, 885f), false), Struct_1(vec3<i32>(-1i, -25328i, -1i), vec4<f32>(667f, -126f, -669f, 624f), vec2<f32>(-511f, 539f), true), Struct_1(vec3<i32>(-24802i, -1326i, 29527i), vec4<f32>(235f, 272f, 1000f, 589f), vec2<f32>(398f, 2154f), false), Struct_1(vec3<i32>(31938i, -11593i, 1i), vec4<f32>(1110f, 989f, 975f, 2222f), vec2<f32>(-1130f, -829f), true), Struct_1(vec3<i32>(-13278i, i32(-2147483648), -1i), vec4<f32>(-270f, 1178f, -1237f, -878f), vec2<f32>(-2081f, -285f), true), Struct_1(vec3<i32>(481i, 1i, -1i), vec4<f32>(363f, -436f, 1903f, -377f), vec2<f32>(479f, 173f), true));

var<private> global3: array<vec2<bool>, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = false;
    global3 = array<vec2<bool>, 10>();
    let var_1 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(arg_1.x, -1i, -1i, u_input.b.x)), ~u_input.d);
    let var_2 = u_input.c;
    global1 = array<Struct_1, 9>();
    return !all(global3[_wgslsmith_index_u32(1u, 10u)]);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = !(!select(vec3<bool>(arg_1.d, all(vec4<bool>(arg_0.a.a.b.d, false, arg_1.d, arg_1.d)), all(vec4<bool>(false, true, true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, arg_1.d, arg_0.a.a.b.d), vec3<bool>(true, arg_0.a.a.b.d, arg_0.a.a.b.d)), !(arg_0.a.c == u_input.c.x)));
    var var_1 = ~(~(countOneBits(~vec3<u32>(30150u, 0u, arg_0.b)) << (countOneBits(vec3<u32>(4294967295u, arg_0.b, 4294967295u)) % vec3<u32>(32u))));
    let var_2 = vec3<bool>(all(vec4<bool>(func_3(vec3<f32>(arg_0.a.a.b.c.x, arg_1.b.x, -2074f), _wgslsmith_mult_vec3_i32(u_input.c.zwy, vec3<i32>(26452i, 1i, arg_0.a.c))), arg_1.d, var_1.x == (arg_0.b << (var_1.x % 32u)), true)), !(any(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 1u, 4294967295u), vec3<u32>(4294967295u, arg_0.b, var_1.x)), 10u)]) || !(var_1.x >= 1u)), func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, arg_1.b.x, 3192f)))), arg_1.a));
    let var_3 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-53351i, _wgslsmith_add_i32(-6588i, 1i)), -firstLeadingBit(vec2<i32>(0i, -33033i)), -_wgslsmith_sub_vec2_i32(arg_1.a.xz, u_input.d.xy)) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(arg_0.a.b.yx, vec2<i32>(arg_1.a.x, arg_1.a.x), vec2<bool>(true, true)), vec2<i32>(~arg_0.a.c, 2147483647i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), -arg_0.a.b.xz));
    global2 = array<Struct_1, 11>();
    return 4294967295u;
}

fn func_1() -> u32 {
    var var_0 = Struct_2(vec2<u32>(~select(49977u, 65859u, false) | ~(~37425u), 1u & func_2(Struct_4(Struct_3(Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec4<f32>(1243f, -860f, 665f, 974f), vec2<f32>(-1153f, -311f), true), -38308i), u_input.d, u_input.d.x, vec4<f32>(-530f, 1358f, -1708f, 1000f)), 4294967295u), global1[_wgslsmith_index_u32(1u, 9u)])), Struct_1(vec3<i32>(u_input.a, ~(-2147483647i & u_input.d.x), _wgslsmith_mod_i32(-u_input.a, ~u_input.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-570f, -1380f, 635f, 700f)))) * vec4<f32>(-222f, _wgslsmith_f_op_f32(trunc(-952f)), _wgslsmith_div_f32(283f, -1219f), _wgslsmith_f_op_f32(-435f - -551f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1643f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1121f + 673f), 691f, true))), true), ~abs(_wgslsmith_add_i32(2147483647i, u_input.d.x)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(86678u, abs(var_0.a.x))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(124922u, 64830u), 11u)], _wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(~var_0.b.a.x, var_0.b.a.x | u_input.b.x))), min(countOneBits(firstLeadingBit(u_input.d)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.b.a.x, -2147483647i), vec4<i32>(-6853i, 0i, u_input.d.x, -52134i))) & firstTrailingBit(u_input.c), firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.b.x << (var_0.a.x % 32u), var_0.b.a.x ^ 1i, u_input.c.x, -u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(961f)), _wgslsmith_f_op_f32(var_0.b.c.x + var_0.b.c.x))) * var_0.b.c.x), var_0.b.c.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(120f - -1292f), var_0.b.c.x))));
    var var_2 = vec3<u32>(48445u, 34724u, ~reverseBits(0u));
    var var_3 = -vec3<i32>(~(~(var_1.c ^ -13745i)), 1i, -2147483647i);
    let var_4 = ~var_1.b.zzw | abs(min(_wgslsmith_mod_vec3_i32(reverseBits(var_1.a.b.a), -u_input.c.yyw), reverseBits(select(vec3<i32>(var_0.b.a.x, 3908i, 28406i), vec3<i32>(var_3.x, -1i, var_0.b.a.x), vec3<bool>(var_0.b.d, false, var_1.a.b.d)))));
    return 42526u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-130f)), vec3<u32>(~countOneBits(1u), func_1(), ~_wgslsmith_mult_u32(1u, 0u)) | (vec3<u32>(~32676u, max(4294967295u, 140033u), _wgslsmith_clamp_u32(968u, 0u, 4294967295u)) ^ vec3<u32>(19568u, ~42298u, 1u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-821f, 818f, 430f)))))))), vec4<u32>(1u, abs(37028u), 1u | firstTrailingBit(func_2(Struct_4(Struct_3(Struct_2(vec2<u32>(26253u, 57767u), Struct_1(vec3<i32>(15653i, u_input.d.x, 2147483647i), vec4<f32>(470f, 635f, -724f, -1024f), vec2<f32>(523f, -2507f), false), u_input.c.x), u_input.c, u_input.a, vec4<f32>(-815f, 441f, 1511f, 1000f)), 20499u), global1[_wgslsmith_index_u32(0u, 9u)])), _wgslsmith_mod_u32(max(~1u, 45129u), ~_wgslsmith_div_u32(4294967295u, 4294967295u))), -389f);
}

