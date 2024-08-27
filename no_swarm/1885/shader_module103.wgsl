struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(982f, vec3<f32>(-926f, 956f, -347f), 0i, false), Struct_1(999f, vec3<f32>(-1000f, -316f, 337f), -3000i, false), Struct_1(-438f, vec3<f32>(-1386f, 353f, -1117f), -1i, false), Struct_1(116f, vec3<f32>(928f, -971f, 383f), 2147483647i, false), Struct_1(331f, vec3<f32>(-271f, 1000f, -198f), 37957i, false), Struct_1(-1696f, vec3<f32>(493f, 1622f, -2193f), 2147483647i, false), Struct_1(208f, vec3<f32>(280f, 821f, -367f), 2147483647i, false), Struct_1(-274f, vec3<f32>(434f, -979f, -128f), 0i, false), Struct_1(1292f, vec3<f32>(583f, -581f, 381f), 1i, true), Struct_1(1283f, vec3<f32>(1186f, 1880f, -1000f), -33608i, true), Struct_1(1901f, vec3<f32>(-239f, -584f, -665f), -1i, true), Struct_1(1432f, vec3<f32>(1067f, -1906f, -1000f), 2147483647i, true), Struct_1(183f, vec3<f32>(557f, 197f, 150f), -31997i, true), Struct_1(-1151f, vec3<f32>(-1530f, -642f, -170f), 13i, true), Struct_1(-547f, vec3<f32>(249f, 485f, 1000f), i32(-2147483648), false));

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(i32(-2147483648), 2147483647i, 7053i), vec3<i32>(39495i, 1i, 7868i), vec3<i32>(12416i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -42158i), vec3<i32>(-2496i, 33821i, 1i), vec3<i32>(-1i, 9731i, 3806i), vec3<i32>(1i, 2147483647i, -58136i), vec3<i32>(1i, 35280i, -29961i), vec3<i32>(-33571i, -12465i, -39420i), vec3<i32>(-7789i, i32(-2147483648), 0i), vec3<i32>(1i, 2147483647i, 7306i), vec3<i32>(0i, 0i, -8708i), vec3<i32>(-1103i, -41124i, 34608i), vec3<i32>(1i, 0i, 1i), vec3<i32>(36989i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), 11250i, -11400i), vec3<i32>(-1i, 69410i, -25504i), vec3<i32>(-1i, -40843i, -1i), vec3<i32>(0i, -1i, -1i), vec3<i32>(i32(-2147483648), -6032i, 79528i), vec3<i32>(-1i, 4918i, 54432i), vec3<i32>(-40827i, -35587i, 2147483647i), vec3<i32>(-1i, 29722i, -66184i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(-1i, 120801i, 1i), vec3<i32>(4239i, -24299i, -6213i));

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    return abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-global2[_wgslsmith_index_u32(u_input.a.x, 26u)], ~abs(global2[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_mod_vec3_i32(firstLeadingBit(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyz, vec3<u32>(u_input.a.x, 53071u, u_input.a.x)), 26u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 54577u, 4294967295u), vec3<u32>(6166u, u_input.a.x, u_input.a.x)), u_input.a.zyx), 26u)])));
}

fn func_2() -> vec4<i32> {
    let var_0 = abs((vec2<i32>(9072i, _wgslsmith_mod_i32(0i, 14370i)) ^ (~vec2<i32>(-2349i, u_input.c) >> (u_input.a.xz % vec2<u32>(32u)))) & vec2<i32>(u_input.c, ~(~u_input.c)));
    let var_1 = !(61103u > (u_input.a.x | (u_input.a.x << (reverseBits(u_input.a.x) % 32u))));
    var var_2 = abs(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, abs(~var_0.x)), ~(i32(-1i) * -2147483647i)));
    var var_3 = global4[_wgslsmith_index_u32(~1u, 9u)];
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_div_u32(abs(abs(u_input.a.x)), u_input.a.x)), _wgslsmith_dot_vec2_u32(~abs(max(u_input.a.yz, u_input.a.wx)), reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yx), u_input.a.x))));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(1u), ~u_input.a.x, ~abs(u_input.a.x)), 26u)], global2[_wgslsmith_index_u32(~4294967295u, 26u)]), _wgslsmith_div_i32(u_input.c, min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -36244i, u_input.c), global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), func_3(var_3.c.x)), -u_input.c)), select(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 33093i, u_input.c, -16167i), firstLeadingBit(vec4<i32>(var_0.x, 7331i, u_input.b, var_0.x)))), u_input.b, !all(var_3.b.zzw)), -1i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = -arg_0.c | -19895i;
    let var_1 = -_wgslsmith_mult_vec4_i32((func_2() | _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 12323i, 30859i, 1i), vec4<i32>(var_0, u_input.c, arg_1.c, arg_0.c))) >> (_wgslsmith_add_vec4_u32(u_input.a | u_input.a, vec4<u32>(0u, u_input.a.x, 4294967295u, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b | var_0, 1i, ~50879i, var_0), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 12925i, -2147483647i, -8658i), vec4<i32>(2147483647i, -1i, 1165i, arg_0.c)) << (firstTrailingBit(u_input.a) % vec4<u32>(32u))));
    var var_2 = !select(vec4<bool>(true, all(select(vec4<bool>(false, true, arg_0.d, true), vec4<bool>(global3.x, false, false, false), false)), any(select(vec4<bool>(true, arg_0.d, true, false), vec4<bool>(false, arg_0.d, arg_0.d, true), arg_0.d)), global3.x), select(select(vec4<bool>(arg_1.d, arg_0.d, arg_0.d, arg_1.d), vec4<bool>(arg_0.d, false, global3.x, true), any(global3.yy)), select(!vec4<bool>(false, false, arg_0.d, false), vec4<bool>(true, true, false, global3.x), !vec4<bool>(global3.x, true, false, false)), ~var_0 <= _wgslsmith_add_i32(-70123i, var_0)), !vec4<bool>(arg_1.d, global3.x, arg_1.d, !arg_1.d));
    var_2 = vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.b.x)))) <= _wgslsmith_f_op_f32(-arg_1.b.x), true, !(!arg_0.d), var_2.x);
    var_2 = !(!vec4<bool>(653f <= _wgslsmith_f_op_f32(abs(arg_1.a)), global3.x, (-1i & var_1.x) > (-90515i >> (u_input.a.x % 32u)), global3.x));
    return !(!select(!vec4<bool>(false, global3.x, true, var_2.x), select(vec4<bool>(arg_1.d, arg_1.d, global3.x, arg_1.d), vec4<bool>(true, var_2.x, false, false), select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(true, false, var_2.x, false), arg_0.d)), select(vec4<bool>(arg_1.d, true, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, true, arg_1.d))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = any(arg_0.b);
    global0 = array<Struct_1, 15>();
    var var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110f - var_1.c.x) * arg_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(sign(var_1.c.x))) - arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -171f)))), _wgslsmith_f_op_f32(max(2177f, arg_2.b.x))), arg_1, arg_0.d);
    var var_3 = !arg_0.b.yyw;
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_2.c), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1622f), arg_0.a.x)).xx, _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.b), vec2<i32>(u_input.b, u_input.b))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.a), _wgslsmith_f_op_f32(1000f - -1000f))).yy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) - _wgslsmith_f_op_f32(floor(-2291f))))))));
    var var_1 = false;
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~(-vec2<i32>(-2147483647i, -45343i) & (vec2<i32>(u_input.b, u_input.c) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), -firstLeadingBit(-vec2<i32>(-1i, u_input.c))), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1556f, var_0)))), func_1(global0[_wgslsmith_index_u32(~0u, 15u)], Struct_1(378f, vec3<f32>(var_0, -547f, 951f), u_input.c, global3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1351f, -190f) - vec3<f32>(223f, 1737f, 987f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(var_0, -1880f, var_0))), !(!global3.x)), -26524i, global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 15u)]));
    global4 = array<Struct_2, 9>();
    var var_2 = ~(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 17477i, 0i) & global2[_wgslsmith_index_u32(4294967295u, 26u)], vec3<i32>(u_input.b, -30596i, u_input.b)) << (u_input.a.yzy % vec3<u32>(32u))) << (abs(vec3<u32>(u_input.a.x, firstLeadingBit(~u_input.a.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_u32(33641u, ~u_input.a.x) << (u_input.a.x % 32u)));
}

