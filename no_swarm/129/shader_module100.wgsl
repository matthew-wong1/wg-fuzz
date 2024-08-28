struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: i32 = -15751i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32) -> u32 {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global1 = 0i;
    var var_0 = Struct_2(!(arg_1 == 327f));
    let var_1 = Struct_1(arg_1 > arg_2, countOneBits(_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u) | vec2<u32>(0u, u_input.c), firstLeadingBit(abs(u_input.a)))), select(abs(~vec3<u32>(u_input.c, 44374u, 18028u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.c), vec3<u32>(u_input.a.x, u_input.c, 0u), vec3<u32>(72875u, 4294967295u, u_input.a.x)) % vec3<u32>(32u))), vec3<u32>(4294967295u, ~1u, u_input.c), !(arg_0 | true) | ((arg_2 != arg_2) | arg_0)), !(!vec4<bool>(true, !var_0.a, true, u_input.a.x != 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_2) * vec3<f32>(-559f, -1288f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1751f, arg_1, arg_2))) - vec3<f32>(-1183f, _wgslsmith_div_f32(arg_2, arg_2), arg_2))));
    return _wgslsmith_add_u32(firstTrailingBit(u_input.a.x), var_1.b.x | 1u) & min(var_1.c.x, abs(7130u));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> f32 {
    let var_0 = select(vec3<bool>(arg_0.x || true, false, any(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(98231u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)])) | global0[_wgslsmith_index_u32(func_3(true, arg_2, arg_2), 5u)]), select(!(!select(arg_0.ywz, arg_0.wyw, vec3<bool>(arg_0.x, true, true))), select(!arg_0.xwy, select(select(arg_0.xwx, arg_0.wyx, arg_0.wxx), vec3<bool>(true, false, true), arg_2 < -625f), !arg_0.zwx), (all(arg_0.yyw) & false) || arg_0.x), !arg_0.x);
    global0 = array<bool, 5>();
    var var_1 = vec2<u32>(u_input.c, _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_add_u32(1u, 31411u)));
    let var_2 = vec4<bool>(true, true, var_0.x, !(!global0[_wgslsmith_index_u32(var_1.x, 5u)]));
    var var_3 = Struct_1(select(var_0.x, true, var_0.x), u_input.a, abs(abs(~vec3<u32>(u_input.c, 7494u, 48396u))) >> (_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(55742u, var_1.x, 1u), vec3<u32>(u_input.c, 4294967295u, var_1.x), vec3<u32>(0u, u_input.c, 0u)), select(~vec3<u32>(4294967295u, 11777u, var_1.x), firstTrailingBit(vec3<u32>(1u, u_input.a.x, 10526u)), !vec3<bool>(var_2.x, true, global0[_wgslsmith_index_u32(8982u, 5u)]))) % vec3<u32>(32u)), vec4<bool>(false, true, !global0[_wgslsmith_index_u32(4294967295u, 5u)] || true, all(vec3<bool>(true, true, true))), vec3<f32>(_wgslsmith_f_op_f32(sign(1528f)), -225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - 793f))));
    return 505f;
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1501f)), _wgslsmith_f_op_f32(func_2(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 5u)], false, false), -2147483647i >> (u_input.c % 32u), _wgslsmith_f_op_f32(step(-264f, -398f)), vec2<f32>(-270f, -193f))))) * _wgslsmith_f_op_f32(-925f * 1507f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -507f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1455f), _wgslsmith_f_op_f32(f32(-1f) * -435f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), 1f)));
    let var_2 = ~firstLeadingBit(~61498u) ^ ~u_input.a.x;
    let var_3 = ~u_input.c;
    let var_4 = u_input.c;
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(var_2, abs(var_4), var_4), vec3<u32>(abs(~0u), u_input.c, ~var_2 | ~73015u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(reverseBits(select(_wgslsmith_mod_u32(44666u, u_input.a.x), 0u, false)) ^ ~_wgslsmith_mult_u32(u_input.a.x, ~u_input.c), 5u)]);
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.b.yy << (u_input.a % vec2<u32>(32u)), -vec2<i32>(u_input.b.x, u_input.b.x), firstTrailingBit(vec2<i32>(~(-1i), _wgslsmith_add_i32(~(-19807i), u_input.b.x))));
    var var_2 = ~var_1.x;
    var var_3 = Struct_1(!all(select(vec2<bool>(global0[_wgslsmith_index_u32(2507u, 5u)], true), vec2<bool>(false, var_0.a), true)) || false, vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.c), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, 52833u) | vec3<u32>(1u, 45487u, u_input.a.x), func_1(vec3<i32>(u_input.b.x, var_1.x, -36003i)), ~vec3<u32>(u_input.a.x, 4294967295u, 0u))), select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, true, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.c, 5u)]), true)), vec4<bool>(true, false, u_input.c <= u_input.a.x, true), ~_wgslsmith_clamp_i32(var_1.x, 0i, -46846i) == abs(_wgslsmith_clamp_i32(u_input.b.x, var_1.x, -26243i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-419f, -480f, _wgslsmith_f_op_f32(-914f + 1000f))))));
    let var_4 = -108490i;
    var var_5 = firstLeadingBit(-(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -18771i, -37527i, u_input.b.x), vec4<i32>(u_input.b.x, var_4, var_4, -1i)), -vec4<i32>(-2147483647i, -4913i, var_1.x, var_4), var_3.d) | _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b.x, -4601i, -58792i), vec4<i32>(1i, var_1.x, -28715i, 37i), vec4<i32>(-52483i, u_input.b.x, -17237i, var_1.x)), ~vec4<i32>(-2147483647i, 1i, var_4, var_1.x))));
    global0 = array<bool, 5>();
    let var_6 = _wgslsmith_add_vec3_u32(var_3.c, reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b.x, 1u, 46515u), vec3<u32>(50086u, u_input.c, 5240u), vec3<u32>(20808u, var_3.c.x, u_input.a.x) << (var_3.c % vec3<u32>(32u)))) << ((~var_3.c >> (~var_3.c % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(-(~vec4<i32>(1i, -20028i, var_4, 34511i))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, u_input.a.x ^ ~var_6.x), var_3.c.x), ~(-firstLeadingBit(_wgslsmith_sub_vec2_i32(var_5.zx, vec2<i32>(var_5.x, 28339i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.e.x)), -320f));
}

