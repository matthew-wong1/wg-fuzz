struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 34377u, 6199u, 70004u, 47437u, 24776u, 19461u, 14727u, 0u, 4294967295u, 4294967295u, 42152u, 11019u, 25172u, 2237u, 4294967295u, 0u, 4294967295u, 4294967295u, 1u, 0u, 4294967295u, 11679u, 4294967295u, 45329u, 0u, 4294967295u, 16280u, 0u);

var<private> global1: Struct_2 = Struct_2(42462u, vec3<u32>(4294967295u, 0u, 1u), Struct_1(vec3<i32>(9035i, 1i, -1i), vec4<f32>(279f, -417f, -542f, 578f)), vec2<u32>(4294967295u, 5981u), Struct_1(vec3<i32>(-1i, 1i, 2147483647i), vec4<f32>(1724f, 951f, 907f, 255f)));

var<private> global2: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(0i, 717f, Struct_2(4294967295u, vec3<u32>(4294967295u, 46814u, 10793u), Struct_1(vec3<i32>(2147483647i, 9878i, 22174i), vec4<f32>(147f, -225f, 875f, -313f)), vec2<u32>(1u, 0u), Struct_1(vec3<i32>(-25335i, 0i, 28450i), vec4<f32>(871f, -788f, 260f, -255f)))), Struct_5(1095i, -1187f, Struct_2(69659u, vec3<u32>(39101u, 53355u, 0u), Struct_1(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec4<f32>(-990f, -1147f, 433f, -764f)), vec2<u32>(4294967295u, 20141u), Struct_1(vec3<i32>(1i, 28564i, -48576i), vec4<f32>(-2865f, -1131f, 572f, -1000f)))), Struct_5(1i, -1182f, Struct_2(0u, vec3<u32>(1u, 20621u, 10556u), Struct_1(vec3<i32>(44645i, 21753i, 44965i), vec4<f32>(-459f, -634f, -606f, -133f)), vec2<u32>(63909u, 57785u), Struct_1(vec3<i32>(2147483647i, 62233i, 2147483647i), vec4<f32>(1013f, 1555f, 470f, -480f)))), Struct_5(1188i, 278f, Struct_2(51996u, vec3<u32>(4294967295u, 33897u, 10397u), Struct_1(vec3<i32>(14433i, 39412i, 0i), vec4<f32>(714f, -691f, -1333f, 1395f)), vec2<u32>(7592u, 907u), Struct_1(vec3<i32>(i32(-2147483648), -19814i, 2147483647i), vec4<f32>(130f, 2360f, 173f, 709f)))), Struct_5(0i, 1224f, Struct_2(4294967295u, vec3<u32>(1u, 1u, 26179u), Struct_1(vec3<i32>(1i, 5929i, 41693i), vec4<f32>(-1162f, 761f, 565f, -1184f)), vec2<u32>(0u, 76937u), Struct_1(vec3<i32>(0i, 0i, -22820i), vec4<f32>(-130f, 410f, -406f, 1560f)))), Struct_5(54670i, -367f, Struct_2(26997u, vec3<u32>(0u, 17481u, 4294967295u), Struct_1(vec3<i32>(6492i, 38881i, -1i), vec4<f32>(-613f, 625f, 699f, -1000f)), vec2<u32>(0u, 47456u), Struct_1(vec3<i32>(32712i, 1i, 1i), vec4<f32>(1000f, 985f, 1088f, -777f)))), Struct_5(2147483647i, -684f, Struct_2(0u, vec3<u32>(8374u, 53728u, 25476u), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec4<f32>(391f, -813f, 548f, -2199f)), vec2<u32>(13288u, 4294967295u), Struct_1(vec3<i32>(1i, 24997i, 1815i), vec4<f32>(696f, -956f, 848f, -312f)))));

var<private> global3: array<vec2<i32>, 23>;

var<private> global4: vec3<u32> = vec3<u32>(1u, 24687u, 4294967295u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> vec3<i32> {
    let var_0 = any(vec2<bool>(true & all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), true));
    global2 = array<Struct_5, 7>();
    let var_1 = Struct_4(vec3<u32>(0u, ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 12476u), 1u), 0u), 1i);
    let var_2 = 1u << (global4.x % 32u);
    let var_3 = Struct_2(0u, var_1.a, Struct_1(vec3<i32>(var_1.b, u_input.a.x, firstTrailingBit(arg_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c.b, global1.e.b)))), max(vec2<u32>(~global0[_wgslsmith_index_u32(0u, 29u)], 10381u) | countOneBits(firstTrailingBit(vec2<u32>(global1.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44375u, 29u)], 29u)]))), _wgslsmith_mult_vec2_u32(global1.b.yx, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(global1.b.zx, var_1.a.yx, global1.d)))), global1.c);
    return global1.e.a;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = Struct_2(countOneBits(global4.x), reverseBits(~select(global1.b, firstTrailingBit(global1.b), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0))), Struct_1(~global1.c.a, _wgslsmith_f_op_vec4_f32(-global1.c.b)), ~(firstTrailingBit(vec2<u32>(1u, 4294967295u)) & select(_wgslsmith_mod_vec2_u32(global4.zy, global1.b.yz), vec2<u32>(1u, 1u), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true))), Struct_1(global1.c.a, global1.c.b));
    global2 = array<Struct_5, 7>();
    let var_1 = _wgslsmith_f_op_f32(-1790f + _wgslsmith_f_op_f32(-817f - -402f));
    let var_2 = global1.e.b.x;
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(~func_3(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(-var_1), vec4<i32>(4900i, -459i, var_0.c.a.x, 0i) >> (vec4<u32>(global4.x, var_0.b.x, global0[_wgslsmith_index_u32(9267u, 29u)], 1u) % vec4<u32>(32u)), _wgslsmith_add_i32(var_0.c.a.x, 1i)), _wgslsmith_div_vec3_i32(global1.c.a, min(_wgslsmith_div_vec3_i32(vec3<i32>(17339i, 0i, -32886i), global1.e.a), ~vec3<i32>(u_input.a.x, -1i, u_input.a.x)))), vec4<f32>(global1.e.b.x, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), global1.c.b.x))), _wgslsmith_f_op_f32(146f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1, var_0.c.b.x)), _wgslsmith_f_op_f32(-var_0.c.b.x))))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_3.b.zy)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.e.b.ww, var_3.b.yz)), var_3.b.yy), true || (true == arg_0))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(exp2(var_3.b.x))), vec2<f32>(var_0.e.b.x, _wgslsmith_f_op_f32(-var_0.e.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.b.yz - vec2<f32>(_wgslsmith_f_op_f32(global1.c.b.x - var_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -567f))) * global1.e.b.xx)));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(any(vec2<bool>(true, true))))));
    global4 = _wgslsmith_clamp_vec3_u32(arg_0.a, arg_0.a, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global4.x, global4.x, global1.b.x), ~global1.b), select(firstTrailingBit(arg_0.a), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 29u)], 29u)], 4271u, arg_0.a.x), 1828f == global1.e.b.x)), vec3<u32>(firstTrailingBit(~4294967295u), min(1u, global0[_wgslsmith_index_u32(~global1.d.x, 29u)]), 87130u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.b * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2312f, -221f))), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x)), -770f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b.x) * var_0.x), _wgslsmith_f_op_vec2_f32(func_2(true)).x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b.x) + var_0.x) * var_0.x)));
    global2 = array<Struct_5, 7>();
    var var_2 = _wgslsmith_f_op_f32(floor(1461f));
    return select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), false), !select(true, false, true)), vec2<bool>(false, true), vec2<bool>(!any(vec2<bool>(false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-18505i, u_input.a.x, arg_1), global1.e.a) >= u_input.a.x)), vec2<bool>(!(!any(vec3<bool>(true, false, false))), global1.c.b.x < var_1.x), vec2<bool>(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), select(func_1(Struct_4(firstLeadingBit(global1.b), -1i), 21242i), select(func_1(Struct_4(vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], global4.x, 4294967295u), u_input.a.x), 2147483647i), func_1(Struct_4(vec3<u32>(0u, global4.x, 0u), u_input.a.x), global1.c.a.x), all(vec4<bool>(false, false, true, true)) | true), any(vec2<bool>(any(vec4<bool>(true, false, true, false)), false))), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    let var_1 = Struct_1(vec3<i32>(global1.e.a.x, ~(~1i) >> (global0[_wgslsmith_index_u32(1u, 29u)] % 32u), u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, _wgslsmith_f_op_f32(-global1.e.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b.x + global1.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)))));
    global4 = ~global1.b;
    var var_2 = global1.c;
    var var_3 = Struct_4(global1.b, -43650i);
    var_2 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(10414u, ~0u, firstTrailingBit(select(4294967295u, global0[_wgslsmith_index_u32(global4.x, 29u)], false)), var_3.a.x), vec4<u32>(~(~4294967295u), 36312u | min(global0[_wgslsmith_index_u32(1u, 29u)], var_3.a.x), 39527u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(0u, global0[_wgslsmith_index_u32(var_3.a.x, 29u)]), 29u)], 29u)])), ~(max(var_1.a.x, 395i) & -2147483647i), var_1.b.wxw, select(abs(-vec4<i32>(1i, var_3.b, -28442i, -77880i) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, var_3.b, u_input.a.x), vec4<i32>(var_1.a.x, -2147483647i, -2147483647i, global1.e.a.x), vec4<i32>(-106431i, 0i, -1i, global1.e.a.x))), vec4<i32>(1i, _wgslsmith_mod_i32(u_input.a.x & var_1.a.x, 283i), i32(-1i) * -5917i, global1.c.a.x << (1u % 32u)), !var_0.x));
}

