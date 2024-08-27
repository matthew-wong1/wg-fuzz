struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = any(!vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true));
    let var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(36252u, 4103u, 4294967295u, 24206u)), vec4<bool>(true, true, true, true)), vec4<u32>(1u, 1u, 1u, 1u)), max(-(abs(vec2<i32>(global0[_wgslsmith_index_u32(0u, 5u)], u_input.b)) & vec2<i32>(global0[_wgslsmith_index_u32(31629u, 5u)], global0[_wgslsmith_index_u32(11448u, 5u)])), ((vec2<i32>(global0[_wgslsmith_index_u32(12383u, 5u)], global0[_wgslsmith_index_u32(72178u, 5u)]) ^ vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 5u)])) & (vec2<i32>(u_input.c, -18159i) | vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(1408u, 5u)]))) >> (~(~vec2<u32>(60474u, 4294967295u)) % vec2<u32>(32u))), 978f);
    var var_2 = Struct_2(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) && true, !(!(global0[_wgslsmith_index_u32(4294967295u, 5u)] != 2147483647i))));
    var_0 = !select(var_2.a.x == true, min(~var_1.a.x, 0u) > min(4294967295u, 1u), var_2.a.x);
    let var_3 = firstTrailingBit(~firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], var_1.b.x)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c - var_1.c))))), var_1.c));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> f32 {
    global0 = array<i32, 5>();
    var var_0 = arg_2.d.x;
    let var_1 = Struct_1(abs(reverseBits(arg_2.c.a)), vec2<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(~4294967295u, 5u)], -5614i >> (arg_3.x % 32u)), -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.c - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.c, arg_2.c.c) + _wgslsmith_f_op_f32(arg_1 * -1180f))) - _wgslsmith_f_op_f32(-573f + -174f)));
    var var_2 = arg_2.e.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(arg_2.c.c - arg_2.c.c)) + arg_2.c.c), -759f, true)));
    return -593f;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    var var_1 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(~u_input.d, _wgslsmith_div_i32(~0i, _wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(70849u, 5u)]))), 0i);
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), -251f, 1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f)))) * vec4<f32>(_wgslsmith_f_op_f32(-480f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f * -229f) - _wgslsmith_f_op_f32(-161f - -2044f))), _wgslsmith_f_op_f32(select(-141f, 656f, true)), _wgslsmith_f_op_f32(func_4(Struct_2(!var_0.a), _wgslsmith_f_op_f32(func_3()), Struct_3(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), i32(-1i) * -1i, Struct_1(vec4<u32>(28527u, 0u, 1u, 90367u), var_1.xy, 588f), max(var_1.yz, var_1.xz), vec3<u32>(1u, 1u, 1u)), select(max(vec2<u32>(1u, 7710u), vec2<u32>(94332u, 4294967295u)), countOneBits(vec2<u32>(4294967295u, 48226u)), var_0.a.x))), 579f));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 1636u, 1u), vec4<u32>(arg_0.x, 47849u, 52174u, 95918u))), arg_1.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f * -893f))), vec2<i32>(arg_1.x, firstLeadingBit(~arg_1.x)), global0[_wgslsmith_index_u32(arg_0.x, 5u)], arg_0.x, !vec2<bool>(arg_2.x <= _wgslsmith_f_op_f32(arg_2.x - -353f), false));
    var var_1 = -_wgslsmith_clamp_i32(abs(~_wgslsmith_clamp_i32(arg_1.x, var_0.b.x, -2429i)), ~select(i32(-1i) * -6054i, -43671i, true), ~min(countOneBits(1i), var_0.b.x));
    var var_2 = arg_1.x;
    var_0 = Struct_4(Struct_1(vec4<u32>(~(~39957u), _wgslsmith_mult_u32(~var_0.a.a.x, abs(67767u)), arg_0.x, arg_0.x), ~(-abs(var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c)))), var_0.a.b, arg_1.x, 4294967295u, vec2<bool>(true, true));
    var var_3 = true;
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a.a, var_0.a.a), vec4<u32>(var_0.a.a.x, 70027u, 7047u, 8646u)) << (((vec4<u32>(0u, 32434u, 84997u, 4294967295u) | var_0.a.a) | reverseBits(var_0.a.a)) % vec4<u32>(32u)), var_0.a.a, var_0.a.a), abs(min(arg_1.xw, vec2<i32>(-25009i, global0[_wgslsmith_index_u32(var_0.d >> (4294967295u % 32u), 5u)]))), -1044f);
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    global0 = array<i32, 5>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -286f, arg_0.x);
    var var_1 = func_5(~vec3<u32>(abs(1u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 4294967295u, 58054u)), ~vec4<u32>(4294967295u, 4294967295u, 0u, 10815u)), 1u), abs(-(vec4<i32>(-1i) * -vec4<i32>(-39472i, -2147483647i, global0[_wgslsmith_index_u32(85709u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1604f, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(floor(746f))) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-826f + 390f), _wgslsmith_f_op_f32(min(arg_0.x, var_0.x)), arg_0.x)), _wgslsmith_f_op_vec4_f32(func_2())));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<bool>(true, false)), -965f, Struct_3(vec4<bool>(false, false, false, false), global0[_wgslsmith_index_u32(var_1.a.x, 5u)], Struct_1(var_1.a, vec2<i32>(2147483647i, var_1.b.x), 1005f), var_1.b, vec3<u32>(0u, var_1.a.x, var_1.a.x)), ~var_1.a.ww)) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + 220f))))));
    let var_3 = func_5(vec3<u32>(11867u, ~(~var_1.a.x), ~var_1.a.x), ~firstLeadingBit(abs(vec4<i32>(u_input.b, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)], 23i))), vec4<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_mult_vec3_u32(var_1.a.wzy, var_1.a.wyw), countOneBits(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(var_1.a.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 47272i)), vec4<f32>(1148f, 1478f, 2292f, var_2)).c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), -1815f, _wgslsmith_f_op_f32(-var_0.x), -137f));
    return var_1.a.zzy | (~vec3<u32>(abs(15217u), 53526u, ~12713u) ^ ~var_1.a.yyy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    let var_0 = abs((~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 5u)], u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(9078u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], u_input.c), vec3<i32>(u_input.a, u_input.c, 3646i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.c), vec3<i32>(u_input.c, global0[_wgslsmith_index_u32(72714u, 5u)], global0[_wgslsmith_index_u32(22596u, 5u)]) >> (vec3<u32>(0u, 11724u, 73008u) % vec3<u32>(32u)))) >> (vec3<u32>(79988u << (~4294967295u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), 81842u) % vec3<u32>(32u)));
    let var_1 = min(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, -655f) + vec2<f32>(839f, 1102f))))), ~_wgslsmith_div_vec3_u32(abs(~vec3<u32>(0u, 0u, 74690u)), ~(~vec3<u32>(6239u, 4294967295u, 1u))));
    global0 = array<i32, 5>();
    let var_2 = _wgslsmith_div_i32(abs(-global0[_wgslsmith_index_u32(~var_1.x, 5u)] | _wgslsmith_sub_i32(var_0.x, 1i)), -1i);
    global0 = array<i32, 5>();
    let var_3 = ~(-44820i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(2147483647i) | var_0.x, _wgslsmith_mod_vec3_i32(min(var_0, (vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], u_input.d) >> (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u))) << (var_1 % vec3<u32>(32u))), _wgslsmith_div_vec3_i32((vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 5u)], -6043i, 2147483647i) & vec3<i32>(2147483647i, -1i, var_2)) & -var_0, select(~vec3<i32>(u_input.c, -2147483647i, -40550i), var_0, any(vec2<bool>(false, false))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-383f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-805f)) * _wgslsmith_f_op_f32(step(-108f, 1766f))), 591f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(663f, -997f, 161f, 818f) - vec4<f32>(-306f, 153f, 1144f, -894f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, 386f, -275f, -1184f))))), _wgslsmith_dot_vec3_i32(var_0 | var_0, -vec3<i32>(_wgslsmith_mod_i32(var_2, -2147483647i), _wgslsmith_sub_i32(1i, 17029i), firstLeadingBit(-73366i))));
}

