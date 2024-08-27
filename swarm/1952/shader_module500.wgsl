struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12440u;

var<private> global1: array<i32, 25>;

var<private> global2: i32;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(1489f, 2050f, 422f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_1(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 25u)], -46337i, global1[_wgslsmith_index_u32(u_input.a, 25u)], 23928i), ~vec4<i32>(u_input.b.x, 10357i, global1[_wgslsmith_index_u32(arg_0.x, 25u)], arg_1))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1758f - -823f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -151f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1142f, _wgslsmith_f_op_f32(global3.a.x + -1000f), _wgslsmith_f_op_f32(abs(global3.a.x)))))), _wgslsmith_mult_u32(arg_0.x, 64116u), -10955i);
    let var_1 = i32(-1i) * -_wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.b.x, -6i, -57212i), u_input.b, true), ~reverseBits(var_0.a.yyx));
    var var_2 = (arg_0 & arg_2) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(33155u, min(42746u, 0u), var_0.c), arg_0) % vec3<u32>(32u));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~(~arg_0) << (arg_2 % vec3<u32>(32u)), firstLeadingBit(arg_0)), ~0u);
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-140f, var_0.b.x), global3.a.x, var_0.b.x)));
    return _wgslsmith_sub_i32(-1i, var_1);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(vec4<i32>(arg_0, global1[_wgslsmith_index_u32(3787u, 25u)], func_3(vec3<u32>(0u, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 0u, 56937u), ~global1[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(94378u, 26066u, u_input.a))) & _wgslsmith_div_i32(1i, ~u_input.b.x), min(u_input.b.x, ~arg_0)), global3.a, min(_wgslsmith_add_u32(4294967295u ^ _wgslsmith_add_u32(u_input.a, 1u), u_input.a | 19518u), 1u), _wgslsmith_div_i32(arg_0, global1[_wgslsmith_index_u32(u_input.a, 25u)]));
    var var_1 = Struct_3(Struct_1(min(select(countOneBits(var_0.a), vec4<i32>(var_0.a.x, 3551i, 2147483647i, 4432i), true), var_0.a), var_0.b, _wgslsmith_sub_u32(var_0.c, 27913u), _wgslsmith_dot_vec2_i32(select(firstTrailingBit(vec2<i32>(arg_0, -2147483647i)), _wgslsmith_mod_vec2_i32(u_input.b.yz, var_0.a.xy), true), vec2<i32>(_wgslsmith_sub_i32(-38513i, -60789i), 2147483647i))));
    var_1 = Struct_3(var_1.a);
    global1 = array<i32, 25>();
    global0 = var_1.a.c;
    return Struct_2(vec3<f32>(-1123f, var_1.a.b.x, global3.a.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_1 {
    global3 = func_2(arg_3.a.a.x);
    global1 = array<i32, 25>();
    var var_0 = ~(~(-arg_3.a.a.ywx));
    var var_1 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(~(~u_input.b), arg_3.a.a.yzz), _wgslsmith_clamp_i32(abs(_wgslsmith_div_i32(arg_1.a.x, global1[_wgslsmith_index_u32(arg_3.a.c, 25u)])), firstLeadingBit(~1i), 36551i), 33293i, global1[_wgslsmith_index_u32(33646u, 25u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_3.a.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(-270f, 349f, 627f) + vec3<f32>(-507f, -1800f, 306f))), arg_2)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_3.a.b.x, 632f), _wgslsmith_f_op_f32(-356f * -3183f), -1467f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~(~9234u)), vec2<u32>(u_input.a, ~(4294967295u ^ arg_3.a.c))), global1[_wgslsmith_index_u32(~abs(select(u_input.a & 4294967295u, ~u_input.a, false)), 25u)]);
    let var_2 = arg_3;
    return Struct_1(-vec4<i32>(~(-23497i) << (~var_1.c % 32u), 58561i, arg_1.d, -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.a.b.x, global3.a.x))))), -2120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f))), ~12909u, u_input.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<i32>) -> f32 {
    global0 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 4294967295u, 0u) & vec3<u32>(arg_1.c, arg_0.a.c, 4294967295u), ~vec3<u32>(4294967295u, arg_1.c, u_input.a))));
    var var_0 = Struct_2(arg_1.b);
    global2 = select(global1[_wgslsmith_index_u32(select(arg_0.a.c, 0u, true), 25u)], arg_2.x, (-986f > func_1(2147483647i, arg_0.a, arg_1.b, arg_0).b.x) && any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))));
    global3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), -1212f, _wgslsmith_f_op_f32(sign(1412f))));
    var var_1 = max(-arg_0.a.a, ~vec4<i32>(global1[_wgslsmith_index_u32(2181u, 25u)], _wgslsmith_div_i32(-860i, -54712i), _wgslsmith_dot_vec3_i32(countOneBits(arg_2), vec3<i32>(arg_2.x, arg_0.a.a.x, -16398i)), arg_1.d));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-124f * _wgslsmith_f_op_f32(-arg_1.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(596f, _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(vec4<i32>(-15000i, 2147483647i, 3784i, -12790i), global3.a, u_input.a, 2147483647i)), func_1(-1i, Struct_1(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(23181u, 25u)], global1[_wgslsmith_index_u32(32119u, 25u)]), vec3<f32>(global3.a.x, -1082f, global3.a.x), u_input.a, 35258i), global3.a, Struct_3(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.b.x, -2147483647i, 18354i), global3.a, u_input.a, 0i))), u_input.b, -vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], 1i))))) + global3.a.x));
    global1 = array<i32, 25>();
    let var_1 = min(max(_wgslsmith_mult_vec2_i32(u_input.b.yy, vec2<i32>(1i, 1i)), vec2<i32>(global1[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, u_input.b.x), ~global1[_wgslsmith_index_u32(76222u, 25u)]))), _wgslsmith_add_vec2_i32(-max(countOneBits(u_input.b.yy), u_input.b.zy ^ vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_sub_vec2_i32(~vec2<i32>(-37489i, global1[_wgslsmith_index_u32(u_input.a, 25u)]) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), u_input.b.yz)));
    var var_2 = u_input.b.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.a.x))))));
    global0 = ~(~firstTrailingBit(0u));
    let var_4 = Struct_1(-(~max(vec4<i32>(13266i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 25u)], var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, 85944i, 8122i), vec4<i32>(35430i, 6757i, 0i, 2147483647i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, 778f) + -192f)), -250f, _wgslsmith_f_op_f32(min(514f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(205f, 1133f))))), 64208u, var_1.x);
    var_2 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, global3.a.x, _wgslsmith_div_f32(-374f, global3.a.x)) + global3.a))), _wgslsmith_div_i32(38653i, _wgslsmith_sub_i32(0i, var_1.x)), _wgslsmith_div_vec4_i32(func_1(firstTrailingBit(var_1.x), func_1(68997i | var_1.x, Struct_1(var_4.a, global3.a, 1u, 2147483647i), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(202f, 1411f, 1266f))), Struct_3(Struct_1(var_4.a, var_3, 8635u, -60904i))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-495f, 1068f, 930f) * vec3<f32>(1622f, global3.a.x, -932f)))), Struct_3(func_1(var_4.a.x, var_4, vec3<f32>(202f, 1193f, var_3.x), Struct_3(Struct_1(var_4.a, global3.a, 10312u, -28662i))))).a, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(-25763i, -62228i)), -45745i), -1i, i32(-1i) * -1i, ~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_4.c, 25u)], 1i))));
}

