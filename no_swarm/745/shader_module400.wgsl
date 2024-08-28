struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 2> = array<i32, 2>(1i, i32(-2147483648));

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec2<bool>, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    global0 = 4294967295u;
    global1 = array<i32, 2>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-239f, -1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f) + 673f), 213f, _wgslsmith_f_op_f32(102f * -555f));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>((abs(u_input.a.x) ^ ~6891u) >> (firstLeadingBit(65019u) % 32u), ~7627u, countOneBits(~(~0u)), max(u_input.b | u_input.a.x, _wgslsmith_mult_u32(15781u, u_input.b)) | u_input.b), vec4<u32>(u_input.b, 4294967295u, 0u >> (~4294967295u % 32u), 4294967295u));
    var var_2 = var_0.yww;
    return !(!arg_1.x);
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, ~(~4294967295u & _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    global0 = 1u;
    let var_1 = arg_0.yzy;
    let var_2 = -arg_0.x;
    var var_3 = Struct_2(Struct_1(func_3(vec3<bool>(all(vec4<bool>(true, true, false, true)), false, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(653f, -668f, 248f)) * vec3<f32>(1f, 1f, 1f))), reverseBits(vec4<u32>(~var_0, abs(var_0), abs(u_input.b), var_0))), Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(698f, -890f, false)) - _wgslsmith_div_f32(-292f, -663f)), _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-748f, -1128f, true)) + _wgslsmith_f_op_f32(-1808f * 1595f))), u_input.a), Struct_1(any(vec3<bool>(true, false, func_3(vec3<bool>(false, false, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, 165f, -391f) + vec3<f32>(-911f, -1876f, 288f))))), _wgslsmith_div_vec4_u32(u_input.a, ~vec4<u32>(28421u, 4294967295u, 17972u, 4294967295u))));
    return Struct_3(!select(select(vec3<bool>(var_3.c.a, false, var_3.b.a), !vec3<bool>(var_3.a.a, false, var_3.c.a), select(vec3<bool>(true, var_3.a.a, true), vec3<bool>(var_3.a.a, var_3.a.a, false), true)), vec3<bool>(select(var_3.c.a, var_3.c.a, true), var_3.a.a, var_3.c.a), select(!vec3<bool>(var_3.b.a, var_3.c.a, false), !vec3<bool>(false, true, var_3.b.a), !var_3.a.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.b.b.xy)), var_3.b.b.yy)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    global1 = array<i32, 2>();
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b.x, -648f, 170f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 184f, -362f)))))), firstTrailingBit(~vec4<u32>(arg_1.c.c.x, arg_2.a.c.x, 4294967295u, arg_1.a.c.x))), arg_2.b, Struct_1(all(arg_0.a), arg_2.b.b, vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a.x, 52032u)), 4294967295u, reverseBits(~60715u), _wgslsmith_dot_vec4_u32(arg_1.b.c, vec4<u32>(arg_1.a.c.x, 38433u, u_input.a.x, 1u)))));
    var var_1 = Struct_4(vec3<u32>(u_input.a.x, firstLeadingBit(firstLeadingBit(var_0.a.c.x)), var_0.c.c.x), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-191f)), _wgslsmith_f_op_f32(-arg_2.b.b.x), -1716f)), abs(arg_2.a.c)), Struct_1(all(!arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, 208f, 1076f) - arg_2.b.b)))), countOneBits(vec4<u32>(~arg_2.b.c.x, ~arg_1.b.c.x, u_input.a.x, firstLeadingBit(arg_1.c.c.x)))), 0u);
    let var_2 = vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(2158f + arg_0.b.x))), 1611f)), _wgslsmith_f_op_f32(sign(arg_1.c.b.x)));
    var var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(var_1.d, _wgslsmith_div_u32(arg_2.c.c.x, 0u), ~4065u))), u_input.a.zwy | (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d, arg_2.b.c.x, var_1.a.x), vec3<u32>(var_0.c.c.x, var_1.d, 1u)), vec3<u32>(1u, 9033u, 1u)) | firstTrailingBit(var_1.c.c.yyz)));
    return Struct_3(arg_0.a, _wgslsmith_f_op_vec2_f32(arg_2.a.b.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_0.a.b.x) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_2.c.b.zy, vec2<f32>(418f, 1689f)), _wgslsmith_div_vec2_f32(arg_2.c.b.zx, vec2<f32>(1383f, arg_0.b.x)))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_4(func_2(vec4<i32>(global1[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_add_i32(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 2u)]), -16844i), _wgslsmith_add_i32(-23912i >> (u_input.a.x % 32u), i32(-1i) * -1i), select(global1[_wgslsmith_index_u32(17985u, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false))), Struct_2(Struct_1(all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 30675u), vec2<u32>(u_input.a.x, 0u)), 24u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-636f, -268f, -974f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1077f, -1013f, 428f))), _wgslsmith_clamp_vec4_u32(~u_input.a, ~u_input.a, vec4<u32>(u_input.b, u_input.a.x, u_input.b, 1u) | u_input.a)), Struct_1(all(vec4<bool>(arg_0, true, false, arg_0)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-995f, 1070f, 1212f))))), vec4<u32>(reverseBits(0u), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.b ^ 10140u, ~1u)), Struct_1(global1[_wgslsmith_index_u32(reverseBits(30432u), 2u)] == -83177i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(358f, -364f, -567f) * vec3<f32>(-611f, 1120f, -808f)), !vec3<bool>(false, true, arg_0))), u_input.a)), Struct_2(Struct_1((global1[_wgslsmith_index_u32(1u, 2u)] < 23976i) | arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, -1341f, 1000f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1063f, -1495f, 146f)))), u_input.a), Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1594f, 133f, 112f) + vec3<f32>(734f, 529f, 243f)))), ~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.b, 114505u, 4192u, 1u) % vec4<u32>(32u))), Struct_1(true, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, -443f, -855f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, 1608f, -547f) * vec3<f32>(1346f, 1000f, 641f)))), min(vec4<u32>(0u, 4307u, u_input.a.x, 64433u), u_input.a))));
    global0 = ~(~22075u) | _wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(1u));
    global2 = 38187i;
    global0 = select(countOneBits(firstTrailingBit(4294967295u)), u_input.b, false);
    global2 = abs(~44584i);
    return Struct_1(true, vec3<f32>(-496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f - _wgslsmith_f_op_f32(var_0.b.x - 501f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1494f))), var_0.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 12755u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(120174u, 8766u, u_input.a.x, 0u), u_input.a))), reverseBits(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.b, 0u, u_input.a.x, 4294967295u)), u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    var var_0 = Struct_2(Struct_1(all(!select(global3[_wgslsmith_index_u32(0u, 24u)], vec2<bool>(true, true), true)), vec3<f32>(_wgslsmith_f_op_f32(991f - -1000f), 2275f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(642f, 571f)), -1452f, true))), _wgslsmith_clamp_vec4_u32(u_input.a, ~reverseBits(vec4<u32>(33711u, u_input.a.x, 101198u, 47472u)), ~(~vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.b)))), func_1(select(true, any(vec3<bool>(true, false, true)), true)), func_1(!(!any(vec2<bool>(false, true)))));
    let var_1 = ~var_0.b.c.zx;
    var var_2 = 52544i;
    let var_3 = var_0.a.b.zx;
    var var_4 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(27337u, 2u)], _wgslsmith_dot_vec2_i32(select(vec2<i32>(11998i, global1[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(var_0.a.c.x, 2u)]), true), ~vec2<i32>(global1[_wgslsmith_index_u32(var_1.x, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_mod_i32(abs(global1[_wgslsmith_index_u32(var_0.c.c.x, 2u)]), ~14639i), ~(-97867i)), vec4<i32>(global1[_wgslsmith_index_u32(func_1(var_0.c.a).c.x, 2u)] << (_wgslsmith_dot_vec2_u32(var_0.c.c.xy, vec2<u32>(4294967295u, 1u)) % 32u), -23643i, i32(-1i) * -2147483647i, -global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 2u)])));
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

