struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: array<f32, 4> = array<f32, 4>(1000f, 697f, 1020f, -456f);

var<private> global2: Struct_5 = Struct_5(654f, 1i, Struct_2(21038u, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), 22680i), true, vec4<i32>(25581i, 2147483647i, 2147483647i, 19922i)), vec2<u32>(26449u, 2329u), 501f);

var<private> global3: vec3<u32>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), -31054i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    var var_0 = Struct_3(arg_0, arg_2 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(202f, global1[_wgslsmith_index_u32(34808u, 4u)], true))))), _wgslsmith_mod_i32(u_input.c.x, -global2.b), -673f);
    let var_1 = _wgslsmith_sub_u32(~51499u, reverseBits(2644u) ^ (global3.x | ~43976u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, 1000f, global1[_wgslsmith_index_u32(global3.x << (u_input.b.x % 32u), 4u)], 1000f));
    var var_3 = Struct_3(~var_0.a, all(!select(vec4<bool>(global2.c.b.b.x, true, true, global4.b.x), vec4<bool>(global2.c.b.a.x, false, global2.c.c, true), !var_0.b)), arg_0.x, 455f);
    var var_4 = arg_0;
    return -686f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = !vec4<bool>(false, global4.a.x, all(vec3<bool>(any(global2.c.b.a), true, arg_2)), false);
    var var_1 = 14353i;
    var var_2 = global2.c;
    var var_3 = global2.c;
    var_1 = _wgslsmith_div_i32(~abs(_wgslsmith_mult_i32(-25212i, var_3.b.c)) & _wgslsmith_mult_i32(global2.c.d.x | ~(-2147483647i), 62664i), var_2.d.x ^ 2147483647i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.x, 4u)] - -233f))))) + _wgslsmith_f_op_f32(func_3(abs(global2.c.d), vec2<u32>(~42566u, 0u << (u_input.b.x % 32u)), global2.a))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.d.x, 27673u, 1u), 4u)]);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> vec4<f32> {
    var var_0 = ~26449u;
    let var_1 = ~_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(16201u, arg_1.x, arg_1.x, 50609u)), ~vec4<u32>(global2.d.x, arg_1.x, 40422u, arg_0), countOneBits(vec4<u32>(0u, arg_1.x, 13150u, 1u)) ^ min(vec4<u32>(10730u, u_input.b.x, arg_0, 59218u), vec4<u32>(arg_0, arg_1.x, 82739u, arg_1.x))) & vec4<u32>(countOneBits(select(~9723u, 1u, all(global4.a))), ~1u, min(_wgslsmith_div_u32(arg_1.x ^ 47385u, arg_1.x << (34426u % 32u)), ~reverseBits(4294967295u)), _wgslsmith_mod_u32(1u, 54313u) ^ select(max(0u, u_input.b.x), _wgslsmith_div_u32(global2.d.x, arg_0), !global2.c.b.b.x));
    var var_2 = Struct_1(vec4<bool>(global2.c.c, select(global2.c.b.a.x, all(global4.b.zx), true), true, any(global2.c.b.a) & global2.c.b.a.x), !(!(!global4.b)), ~(-43819i));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(33548u, global3.x), 4u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 4u)] - 1396f), _wgslsmith_f_op_f32(func_3(vec4<i32>(0i, global2.c.d.x, global2.b, 0i), var_1.xz, -1059f)), _wgslsmith_f_op_f32(global2.e * arg_2))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(56264u, 4u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(30334u, 4u)])), -1000f) - vec4<f32>(-782f, _wgslsmith_f_op_f32(arg_2 + global2.a), 1765f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.x, 4u)]))))));
    var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(10375u, 36752u, global2.d.x), _wgslsmith_mult_vec3_u32(var_1.xyx, abs(u_input.b))), _wgslsmith_mod_u32(42563u, ~12680u));
    return vec4<f32>(_wgslsmith_f_op_f32(-398f - 1479f), 962f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f + arg_2), _wgslsmith_f_op_f32(1160f * arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + global2.a)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a + 101f))))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(abs(~(~0u) << (0u % 32u)), ~min(max(_wgslsmith_mult_vec2_u32(global2.d, vec2<u32>(0u, global3.x)), vec2<u32>(global3.x, u_input.b.x)), firstTrailingBit(global2.d)), _wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(func_2(~(~vec4<u32>(global3.x, u_input.b.x, 98752u, global3.x)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(17580u, 49085u, 0u, u_input.b.x)), vec4<u32>(4294967295u, global3.x, 0u, 81566u) >> (vec4<u32>(0u, 32016u, global3.x, u_input.b.x) % vec4<u32>(32u))), global2.c.b.a.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(~global3.x, 4u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 4u)]), 1075f, _wgslsmith_f_op_f32(func_3(vec4<i32>(-39585i, u_input.c.x, global4.c, 6008i), vec2<u32>(global3.x, 4294967295u), global2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(614f, global2.a, -818f, -1637f) + vec4<f32>(1000f, 505f, -195f, 2400f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, global1[_wgslsmith_index_u32(global3.x, 4u)], 543f, global1[_wgslsmith_index_u32(0u, 4u)]))))))));
    global3 = _wgslsmith_mult_vec3_u32(abs(u_input.b), abs(_wgslsmith_add_vec3_u32(u_input.b, u_input.b)));
    var var_1 = Struct_1(select(vec4<bool>(global4.a.x, any(vec3<bool>(false, false, false)), all(vec2<bool>(global4.b.x, global4.a.x)), false), !global2.c.b.a, !global2.c.c), vec3<bool>(true, true, global2.c.b.b.x), global2.c.b.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1159f, global2.a, global2.a, 1002f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, var_0.x, -1641f, global2.a) * vec4<f32>(-1000f, -244f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, var_0.x, global1[_wgslsmith_index_u32(19367u, 4u)], 767f))))), vec4<f32>(1267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1244f + -498f)), 380f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + -236f), var_0.x))), select(global2.c.b.a.x, all(!global4.a), false))));
    return Struct_3(~global2.c.d, _wgslsmith_clamp_u32(firstLeadingBit(global3.x), firstTrailingBit(1u), global2.c.a) < u_input.b.x, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(firstLeadingBit(26640i), ~var_1.c >> ((u_input.b.x ^ global3.x) % 32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1887f))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global3 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.x, firstTrailingBit(u_input.b.x), u_input.b.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(74037u, 0u, arg_2.a, u_input.b.x), vec4<u32>(global2.c.a, global2.d.x, 0u, 46070u)), vec4<u32>(36637u, global3.x, 1u, arg_2.a))), u_input.b.x), 17103u, 1u);
    let var_0 = arg_2.b;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1().a, firstLeadingBit(vec2<u32>(global3.x, u_input.b.x)), 1144f)))))));
    return global1[_wgslsmith_index_u32(arg_2.a, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) * _wgslsmith_f_op_f32(f32(-1f) * -542f)) + _wgslsmith_f_op_f32(func_5(func_1(), vec3<f32>(global1[_wgslsmith_index_u32(~global2.d.x, 4u)], _wgslsmith_f_op_f32(trunc(-988f)), global2.e), global2.c, vec2<f32>(649f, 848f)))), _wgslsmith_f_op_f32(func_1().d + _wgslsmith_f_op_f32(round(global2.e))));
    global4 = global2.c.b;
    var_0 = vec3<f32>(-886f, -464f, var_0.x);
    var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(82112u, global2.c.a), 4u)])), _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b.x, global2.c.a, 22134u, u_input.b.x) ^ vec4<u32>(global3.x, global2.c.a, u_input.b.x, 80056u), ~vec4<u32>(0u, global3.x, u_input.b.x, 4294967295u), any(vec3<bool>(global4.a.x, true, global4.b.x)))))), global2.a, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - global2.e) - var_0.x)), _wgslsmith_f_op_f32(min(1043f, _wgslsmith_f_op_f32(f32(-1f) * -178f))), global2.e)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1414f, global1[_wgslsmith_index_u32(global2.d.x, 4u)], var_0.x, -763f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1979f, 1701f, 933f, global2.e), vec4<f32>(var_0.x, global2.e, global1[_wgslsmith_index_u32(0u, 4u)], 1984f), false)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(825f, var_0.x, 560f, global1[_wgslsmith_index_u32(7331u, 4u)]), vec4<f32>(global1[_wgslsmith_index_u32(28805u, 4u)], -895f, -1000f, -2425f), global4.a))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(241f, -2563f, global1[_wgslsmith_index_u32(global2.c.a, 4u)], var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(378f, 1010f, global2.e, -607f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-208f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12607u, 4u)] * -1753f), _wgslsmith_f_op_f32(f32(-1f) * -297f), -124f))), _wgslsmith_f_op_vec4_f32(func_4(u_input.b.x, u_input.b.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_3(global2.c.d, false, global2.b, -1037f), vec3<f32>(var_0.x, global2.a, -180f), global2.c, var_0.xz)), _wgslsmith_f_op_f32(global2.e + -608f))))));
    global2 = Struct_5(global1[_wgslsmith_index_u32(global3.x, 4u)], ~max(global2.b, abs(_wgslsmith_div_i32(2147483647i, -1i))), global2.c, vec2<u32>(4294967295u, global2.d.x) >> (vec2<u32>(~(~4294967295u), 11640u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1579f * 1040f)) - global1[_wgslsmith_index_u32(1u ^ reverseBits(u_input.b.x), 4u)]) * global1[_wgslsmith_index_u32(80549u, 4u)]));
    global2 = Struct_5(_wgslsmith_f_op_f32(global2.a + 1490f), ~(~_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(global4.c, global4.c))), Struct_2(~_wgslsmith_mult_u32(1u, 1u), global2.c.b, !global4.a.x, select(_wgslsmith_sub_vec4_i32(global2.c.d, select(global2.c.d, global2.c.d, global4.a)), abs(-vec4<i32>(global4.c, -1i, global4.c, 2147483647i)), _wgslsmith_f_op_f32(var_0.x + global1[_wgslsmith_index_u32(global2.d.x, 4u)]) < _wgslsmith_f_op_f32(-global2.e))), ~abs(global3.zy), 972f);
    global2 = Struct_5(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 4u)] + -1000f), global2.c.b.c << (19612u % 32u), global2.c, (((vec2<u32>(u_input.b.x, 29619u) | global2.d) << (max(u_input.b.xy, global3.zy) % vec2<u32>(32u))) | (global3.xy ^ ~global3.xx)) & (~(~vec2<u32>(global3.x, 1u)) | vec2<u32>(global3.x, 4294967295u & global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, global2.c.a), u_input.b), select(_wgslsmith_add_vec2_u32(global3.xy, vec2<u32>(0u, 34884u)), ~vec2<u32>(1u, global2.c.a), true), var_1.x)).x + _wgslsmith_f_op_f32(f32(-1f) * -1059f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>((u_input.c.x >> (global3.x % 32u)) >> (4294967295u % 32u), countOneBits(u_input.a.x), u_input.a.x, global2.c.b.c), global2.c.d << (~vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u) % vec4<u32>(32u))));
}

