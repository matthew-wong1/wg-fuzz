struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-623f, -541f, 438f, -1068f, -2186f, -418f, -105f, -529f, -1268f, 631f, 812f, -724f, 1181f, 594f, -160f, 1322f, 649f, 112f, 1000f, -303f, -1248f, -1101f, -744f, -366f, 1597f);

var<private> global1: i32 = 26822i;

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] + arg_1.c)) >= 1202f, false, true);
    let var_1 = ~(~vec3<u32>(~(~0u), 8843u, _wgslsmith_mult_u32(31726u, u_input.b)));
    var var_2 = Struct_1(vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(arg_1.a.x, 0u)) << (4294967295u % 32u), firstTrailingBit(min(~arg_1.a.x, arg_1.a.x))), _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1.b, u_input.c, arg_1.b, 0i), abs(vec4<i32>(arg_1.b, -26163i, -1i, u_input.a.x)))), vec4<i32>(~reverseBits(25520i), max(37725i | arg_2.x, arg_0), -arg_2.x, countOneBits(_wgslsmith_add_i32(0i, 2147483647i)))), -1429f);
    var var_3 = _wgslsmith_clamp_i32(-20554i, -u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, arg_0, -1i), vec4<i32>(-16463i, 2147483647i, arg_2.x, 1i)), 1i), -50828i, _wgslsmith_sub_i32(arg_2.x, arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.b, arg_2.x, arg_1.b), vec3<i32>(arg_2.x, arg_1.b, 55171i)), vec3<i32>(u_input.a.x, -1i, u_input.c))), ~(vec4<i32>(-1373i, arg_1.b, -1i, -19342i) & ~vec4<i32>(0i, u_input.a.x, arg_0, arg_0))));
    global0 = array<f32, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 25u)])))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f * global0[_wgslsmith_index_u32(~u_input.b, 25u)]))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(min(2147483647i, u_input.c), Struct_1(vec2<u32>(u_input.b, u_input.b), 16825i, -954f), vec2<i32>(-1526i, u_input.a.x))))), var_0, false)));
    var var_2 = vec2<bool>(u_input.c >= _wgslsmith_dot_vec4_i32(vec4<i32>(10225i, 13853i, abs(0i), reverseBits(u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, 21295i, -23663i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.c)) | select(vec4<i32>(0i, u_input.c, 10344i, 9044i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), true)), any(vec4<bool>(all(vec3<bool>(true, true, true)), false, false, all(vec3<bool>(true, false, true)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_div_f32(-272f, _wgslsmith_div_f32(-206f, var_0))));
    global0 = array<f32, 25>();
    return Struct_1(vec2<u32>(1u, 1u), _wgslsmith_mult_i32(firstTrailingBit(0i), 36135i), 280f);
}

fn func_1() -> vec4<bool> {
    let var_0 = 13653u;
    global0 = array<f32, 25>();
    var var_1 = func_2();
    let var_2 = Struct_1(abs(vec2<u32>(_wgslsmith_mult_u32(32354u ^ var_0, var_0), firstLeadingBit(var_1.a.x))), var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1087f));
    global2 = _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(~0u, _wgslsmith_mod_u32(~39311u, select(23281u, 4294967295u, false)) & ~(~var_2.a.x)));
    return select(select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, false, select(true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false)), true, true)), vec4<bool>(false, true, true, 1u < (firstLeadingBit(var_0) & (var_0 << (var_1.a.x % 32u)))), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_2().a;
    global2 = _wgslsmith_mult_u32(var_0.x & (0u << (u_input.b % 32u)), var_0.x);
    var var_1 = func_2();
    var var_2 = global0[_wgslsmith_index_u32(~7406u, 25u)];
    let var_3 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, abs(u_input.b) | (u_input.b ^ 0u)), ~abs(_wgslsmith_mult_vec2_u32(var_0, var_0))), -13096i, 893f);
    return Struct_1(~var_0 << (~vec2<u32>(1u, var_0.x) % vec2<u32>(32u)), _wgslsmith_sub_i32(2147483647i, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1230f, global0[_wgslsmith_index_u32(39895u, 25u)], arg_0.x)) - global0[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - -727f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 25u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, !any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = Struct_1(vec2<u32>(4294967295u, abs(u_input.b)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 25u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - global0[_wgslsmith_index_u32(4294967295u, 25u)])))));
    var var_2 = var_1;
    var var_3 = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2413f, 148f, -163f, global0[_wgslsmith_index_u32(0u, 25u)]), vec4<f32>(var_2.c, -1530f, -215f, global0[_wgslsmith_index_u32(8318u, 25u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_1.c, global0[_wgslsmith_index_u32(var_1.a.x, 25u)], 218f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.c, var_1.c, var_1.c, -508f))))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-270f, 626f, global0[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(610f, 890f, -845f), vec3<f32>(353f, global0[_wgslsmith_index_u32(1u, 25u)], 1290f))), select(false, true, false)))))));
    var var_5 = select(vec4<u32>(var_2.a.x ^ ~(~10435u), ~reverseBits(var_1.a.x), ~(var_2.a.x | ~65631u), func_2().a.x), _wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(69353u, 1u, 1u, var_2.a.x), vec4<u32>(var_2.a.x, 0u, var_2.a.x, var_2.a.x)), ~vec4<u32>(12969u, var_3.a.x, 56151u, u_input.b))), ~vec4<u32>(func_4(vec4<bool>(var_0.x, false, var_0.x, true), vec4<f32>(-138f, var_4.x, 103f, global0[_wgslsmith_index_u32(1u, 25u)])).a.x, ~var_3.a.x, ~var_3.a.x, u_input.b)), !(!select(vec4<bool>(var_0.x, true, var_0.x, false), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), 414f >= var_4.x)));
    let var_6 = ~func_4(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<f32>(793f, -586f, _wgslsmith_f_op_f32(f32(-1f) * -226f), var_4.x)).b < ~func_2().b;
    let x = u_input.a;
    s_output = StorageBuffer(-1042f, _wgslsmith_mod_vec4_i32(min(_wgslsmith_add_vec4_i32(-vec4<i32>(22479i, 0i, 35294i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1.b, -2147483647i, 10415i), vec4<i32>(var_2.b, 28287i, -60569i, u_input.c))), vec4<i32>(min(var_3.b, -35028i), var_3.b, 1i, abs(var_3.b))), ~(vec4<i32>(1i, var_2.b, -1i, var_1.b) & ~vec4<i32>(2147483647i, 17571i, u_input.a.x, -22900i))), 375f, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~82565u, _wgslsmith_add_u32(var_5.x, u_input.b), 1u, var_3.a.x)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14332u, var_5.x), vec4<u32>(1u, 4294967295u, 2144u, 15836u)) | firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, var_5.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(54011u, var_2.a.x, var_2.a.x, var_1.a.x), vec4<u32>(81293u, 67224u, var_5.x, 10456u)), vec4<bool>(var_6, !var_0.x, false || var_0.x, !var_6))), var_5.yzy);
}

