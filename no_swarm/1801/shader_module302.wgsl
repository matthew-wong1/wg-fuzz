struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(i32(-2147483648), 561f, -6513i, -31689i, -459f));

var<private> global2: array<u32, 17> = array<u32, 17>(8842u, 107411u, 25202u, 91434u, 0u, 0u, 0u, 305u, 0u, 42284u, 35064u, 1096u, 29084u, 4294967295u, 4294967295u, 1u, 4294967295u);

var<private> global3: Struct_2 = Struct_2(Struct_1(-1i, 249f, 24203i, 4619i, -399f));

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    var var_0 = false;
    let var_1 = Struct_4(Struct_3(Struct_1(reverseBits(_wgslsmith_sub_i32(arg_2.x, arg_2.x)), -193f, ~(-70287i) & reverseBits(global3.a.c), _wgslsmith_mod_i32(global3.a.d, -global1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.e), _wgslsmith_f_op_f32(f32(-1f) * -450f))), select(!vec3<bool>(false, arg_3, false), select(!vec3<bool>(arg_3, arg_3, true), !vec3<bool>(false, arg_3, false), true & arg_3), ~(-22320i) != _wgslsmith_div_i32(arg_0.a.d, -1i)), all(select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), vec2<bool>(true, true)), !vec2<bool>(true, arg_3), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.e, _wgslsmith_div_f32(1000f, global3.a.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.e, -1144f)))), vec2<f32>(global1.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b)))));
    global0 = 1u;
    let var_2 = arg_1.x;
    let var_3 = arg_0.a;
    return _wgslsmith_sub_i32(countOneBits(30780i) & (arg_0.a.c >> (69705u % 32u)), firstTrailingBit(-var_1.a.a.a));
}

fn func_2(arg_0: u32) -> u32 {
    global1 = Struct_2(Struct_1(-(~global1.a.d >> (arg_0 % 32u)), _wgslsmith_f_op_f32(floor(global1.a.e)), u_input.c.x, -1i, global3.a.b));
    var var_0 = vec2<bool>(-min(func_3(global4[_wgslsmith_index_u32(17387u, 17u)], vec4<u32>(global2[_wgslsmith_index_u32(1u, 17u)], 1u, global2[_wgslsmith_index_u32(arg_0, 17u)], 27798u), u_input.a, true), global3.a.c) > reverseBits(countOneBits(_wgslsmith_clamp_i32(2147483647i, global1.a.c, 1i))), select(true, all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), all(vec2<bool>(false, true)))), -1452f > global3.a.b));
    var var_1 = Struct_2(global1.a);
    let var_2 = ((_wgslsmith_f_op_f32(global1.a.e * -660f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-677f)))) & (select(var_0.x, global2[_wgslsmith_index_u32(arg_0, 17u)] <= arg_0, true) & (u_input.c.x <= u_input.b))) | (32663u > abs(~_wgslsmith_clamp_u32(45569u, 31072u, 4294967295u)));
    let var_3 = Struct_4(Struct_3(var_1.a, vec3<bool>(!all(vec4<bool>(true, var_0.x, var_2, var_0.x)), all(select(vec3<bool>(var_2, var_0.x, false), vec3<bool>(var_2, var_2, false), var_0.x)), select(true, true, false) && var_2), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b, global1.a.b) - vec2<f32>(1448f, -670f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(340f, 643f) + vec2<f32>(global3.a.b, 739f)))))));
    return 0u;
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1393f)), -1000f, global3.a.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.e, 1986f, global1.a.b) + vec3<f32>(global3.a.b, -223f, -1040f))))));
    global4 = array<Struct_2, 17>();
    global4 = array<Struct_2, 17>();
    global2 = array<u32, 17>();
    let var_1 = ~global2[_wgslsmith_index_u32(max(64718u, func_2(1u ^ global2[_wgslsmith_index_u32(4294967295u, 17u)])), 17u)] & func_2(global2[_wgslsmith_index_u32(5667u, 17u)]);
    return Struct_4(Struct_3(global3.a, vec3<bool>(!arg_0, arg_0, arg_0), any(select(!vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(arg_0, false, true), vec3<bool>(false, false, arg_0), arg_0), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, true, arg_0), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1121f))) + _wgslsmith_f_op_vec2_f32(-var_0.yy)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(407f, var_0.x) * vec2<f32>(-595f, var_0.x))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(-1107f - arg_3.x), _wgslsmith_f_op_f32(-938f - global1.a.b), _wgslsmith_f_op_f32(max(var_0.e.x, -439f))) - arg_3))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-228f * 1467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.d.x))), _wgslsmith_f_op_f32(298f - arg_1), -1107f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.a.b), -656f, arg_0.a.c)), _wgslsmith_f_op_f32(-2063f + _wgslsmith_f_op_f32(select(global3.a.e, -707f, false))), -280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2911f))), any(var_0.b.zz)))));
    var var_2 = !(-997f != arg_3.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 + arg_3) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_1.x, global3.a.e, arg_1))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), 706f, _wgslsmith_f_op_f32(-791f - -1470f), arg_0.a.d.x)), arg_0.a.b.x)));
    var var_4 = Struct_2(global3.a);
    return func_1(false);
}

fn func_5(arg_0: Struct_4) -> Struct_2 {
    var var_0 = func_4(Struct_4(func_4(Struct_4(arg_0.a), _wgslsmith_f_op_f32(-arg_0.a.a.e), vec3<u32>(_wgslsmith_clamp_u32(111887u, 0u, global2[_wgslsmith_index_u32(5278u, 17u)]), global2[_wgslsmith_index_u32(24037u, 17u)], global2[_wgslsmith_index_u32(18223u, 17u)] >> (12070u % 32u)), vec4<f32>(global3.a.e, _wgslsmith_f_op_f32(-arg_0.a.e.x), -924f, _wgslsmith_div_f32(-624f, global1.a.e))).a), 668f, _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 4294967295u)), ~vec3<u32>(29896u, 4294967295u, 4294967295u) & max(vec3<u32>(4294967295u, 55483u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)]), vec3<u32>(1u, global2[_wgslsmith_index_u32(63218u, 17u)], 1u))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(73425u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)], 17u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 17u)], 1u, global2[_wgslsmith_index_u32(0u, 17u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(662f, arg_0.a.a.b, -1171f, global3.a.e))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.e, 1814f, 553f, -465f)))))).a.b.zz;
    let var_1 = vec3<i32>(countOneBits(_wgslsmith_mod_i32(select(2932i, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), any(arg_0.a.b.zx)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.a.a.a, 2147483647i, global3.a.d, u_input.c.x)), u_input.c | vec4<i32>(arg_0.a.a.c, global1.a.a, global1.a.c, 1i)))), -59848i, firstLeadingBit(_wgslsmith_div_i32(1i, u_input.c.x)) & -(~arg_0.a.a.d ^ _wgslsmith_clamp_i32(1i, global1.a.a, -25695i)));
    var var_2 = Struct_1(1i, 681f, global3.a.c, -(~1i), _wgslsmith_f_op_f32(-1398f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.e, -175f)))));
    var var_3 = Struct_1(-1i ^ arg_0.a.a.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1311f))), arg_0.a.a.d, -firstTrailingBit(i32(-1i) * -36311i), arg_0.a.a.e);
    let var_4 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1028f + global1.a.e))))), ~58016i, global3.a.c, func_1(!any(arg_0.a.b)).a.d.x);
    return global4[_wgslsmith_index_u32(select(~firstTrailingBit(global2[_wgslsmith_index_u32(1u, 17u)]), 56196u, ~global2[_wgslsmith_index_u32(~func_2(global2[_wgslsmith_index_u32(109940u, 17u)]), 17u)] <= ~0u), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a.e, global3.a.b, true)))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(1u, 17u)], 42875u), ~0u, ~global2[_wgslsmith_index_u32(1u, 17u)]), ~vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(8834u, 17u)], global2[_wgslsmith_index_u32(86644u, 17u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, 880f, 1736f, global1.a.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, global3.a.b, -761f, 1623f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1101f, 1343f, global1.a.b, -963f)))))));
    global0 = 0u;
    global3 = global4[_wgslsmith_index_u32(34476u, 17u)];
    var var_1 = ~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-1i) * -vec3<i32>(44798i, -15648i, global1.a.a)), u_input.c.yxz);
    var var_2 = Struct_4(func_4(func_4(func_1(true), _wgslsmith_f_op_f32(exp2(var_0.a.b)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)]), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(104163u, 17u)], 17u)], 17u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32658u, 17u)], 17u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.e, var_0.a.e, -550f, -208f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, global1.a.b, 1715f, global1.a.e)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.a.e)), _wgslsmith_div_f32(1157f, 1222f))), _wgslsmith_f_op_f32(-global1.a.e)), vec3<u32>(global2[_wgslsmith_index_u32(~5272u, 17u)], ~global2[_wgslsmith_index_u32(58270u, 17u)] & 15265u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(22309u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)]), vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)])), vec2<u32>(global2[_wgslsmith_index_u32(0u, 17u)], 16447u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-281f, global1.a.b, global3.a.b, global3.a.b) * vec4<f32>(var_0.a.b, var_0.a.e, var_0.a.b, -853f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(328f, var_0.a.b, 757f, 508f) + vec4<f32>(149f, -363f, global1.a.b, -1672f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.e, 1000f, -446f, global3.a.e))))).a);
    global2 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(min(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(13437u, 17u)], 4294967295u, global2[_wgslsmith_index_u32(1u, 17u)]), firstLeadingBit(vec4<u32>(0u, global2[_wgslsmith_index_u32(18958u, 17u)], 1u, global2[_wgslsmith_index_u32(5615u, 17u)]))), _wgslsmith_mult_vec4_u32(~vec4<u32>(57857u, 4294967295u, 35594u, 34787u), vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)]))), 17u)], ~(firstLeadingBit(u_input.a) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)] >> (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(76305u, 17u)]) % 32u), ~_wgslsmith_mult_u32(75348u, global2[_wgslsmith_index_u32(4294967295u, 17u)])) % vec2<u32>(32u)), (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24871u, 17u)], 17u)], 17u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14295u, 17u)], 17u)] % 32u), 17u)], select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)], 1u, var_2.a.b.x)) << (abs(vec2<u32>(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(127532u, 17u)], 17u)])) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(49805u, 17u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41308u, 17u)], 17u)], 17u)], 17u)], 17u)], 44585u)), vec2<u32>(_wgslsmith_mod_u32(0u, 15237u), global2[_wgslsmith_index_u32(~29811u, 17u)])) % vec2<u32>(32u)));
}

