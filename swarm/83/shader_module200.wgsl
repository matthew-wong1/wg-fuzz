struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = vec4<f32>(global1[_wgslsmith_index_u32(~arg_0.c >> (~1u % 32u), 28u)], global1[_wgslsmith_index_u32(max(reverseBits(u_input.d), ~(~(~1u))), 28u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1048f * _wgslsmith_f_op_f32(-705f - arg_0.d.c.x))), arg_0.a)), _wgslsmith_f_op_f32(min(-147f, arg_0.d.c.x)));
    let var_1 = arg_0.d.c;
    var var_2 = any(!(!(!global0.yy)));
    let var_3 = Struct_3(!(!(1000f > _wgslsmith_f_op_f32(-346f + var_0.x))), select(global0.zyw, !(!(!global0.zyz)), !arg_0.b), arg_0.c, arg_0.d);
    var_2 = all(vec2<bool>(all(vec2<bool>(any(vec3<bool>(true, global0.x, true)), !var_3.b.x)), !global0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.d.c.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= _wgslsmith_div_f32(215f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-165f, 847f))))), ~62937u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(15560u, 28u)], -1000f, -791f, -330f)), _wgslsmith_div_vec4_f32(vec4<f32>(305f, -704f, global1[_wgslsmith_index_u32(63522u, 28u)], 806f), vec4<f32>(559f, -2490f, global1[_wgslsmith_index_u32(arg_2.x, 28u)], 750f))))) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 28u)]), -250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2.x, 28u)] * 743f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_f_op_f32(func_3(Struct_3(global0.x, vec3<bool>(true, arg_1.x, global0.x), u_input.d, Struct_2(true, 4294967295u, vec4<f32>(global1[_wgslsmith_index_u32(1u, 28u)], 1000f, -600f, global1[_wgslsmith_index_u32(0u, 28u)]))))))));
    var var_1 = Struct_4(~arg_2.x, var_0, false, _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(arg_0.xw, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, -1i), arg_0.yw)), vec2<i32>(-u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -24498i, arg_0.x, 1i), vec4<i32>(0i, arg_0.x, -2147483647i, arg_0.x), vec4<i32>(-22350i, u_input.b, -1i, -25767i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -37543i, arg_0.x, 0i), vec4<i32>(8699i, 53628i, arg_0.x, u_input.b), vec4<i32>(-6672i, 105013i, arg_0.x, -12960i))))), var_0.a);
    var var_2 = Struct_5(_wgslsmith_mod_i32(-1i, 2147483647i));
    let var_3 = _wgslsmith_add_vec4_u32(~min(vec4<u32>(~arg_2.x, min(22988u, arg_2.x), 30053u, var_1.a), max(firstTrailingBit(vec4<u32>(10320u, 0u, 12480u, u_input.e)), vec4<u32>(1u, 1u, var_0.b, 1u))), ~((vec4<u32>(var_0.b, 57980u, 19387u, var_1.b.b) | vec4<u32>(1u, arg_2.x, 4294967295u, var_0.b)) >> (vec4<u32>(var_1.b.b, 16503u, arg_2.x, u_input.e) % vec4<u32>(32u))) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.x, 16581u), vec4<u32>(u_input.d, u_input.e, arg_2.x, 4294967295u))) % vec4<u32>(32u)));
    var_1 = Struct_4(46626u, Struct_2(global0.x, _wgslsmith_mod_u32(~22647u, var_3.x), var_1.b.c), true, _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_sub_i32(-2147483647i, reverseBits(2147483647i)), arg_0.x) ^ u_input.b, ~var_1.d >= max(_wgslsmith_mod_i32(31985i, ~29043i), ~_wgslsmith_clamp_i32(-2333i, arg_0.x, 2147483647i)));
    return 29337i;
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = ~(-func_2(select(~u_input.c, ~u_input.c, true), !vec4<bool>(true, global0.x, false, global0.x), max(~vec2<u32>(u_input.d, 1u), arg_3)));
    var var_1 = Struct_4(arg_2, Struct_2(!any(!global0.yyy), ~u_input.d, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4435u, 0u), 28u)], _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 28u)] + global1[_wgslsmith_index_u32(124837u, 28u)]), _wgslsmith_div_f32(arg_1.x, arg_1.x))))), global0.x, var_0, !any(!vec3<bool>(global0.x, global0.x, global0.x)));
    var var_2 = Struct_3((any(select(global0.zz, vec2<bool>(false, var_1.b.a), vec2<bool>(var_1.e, global0.x))) != false) || ((-45939i ^ _wgslsmith_sub_i32(-19293i, var_0)) == ~(-var_0)), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 28u)] >= arg_1.x, any(vec3<bool>(true, false, false)), !global0.x)), u_input.d, Struct_2(true, 4294967295u, _wgslsmith_f_op_vec4_f32(floor(var_1.b.c))));
    var var_3 = Struct_3(true || !(_wgslsmith_mod_u32(4294967295u, arg_3.x) > _wgslsmith_clamp_u32(4294967295u, 22278u, 72427u)), var_2.b, _wgslsmith_clamp_u32((var_2.c >> (4294967295u % 32u)) ^ (30356u >> (var_1.b.b % 32u)), 18499u, abs(0u) >> (_wgslsmith_dot_vec2_u32(~arg_3, ~vec2<u32>(4294967295u, arg_3.x)) % 32u)), var_2.d);
    let var_4 = _wgslsmith_dot_vec3_i32(abs(-u_input.c.zwx), firstLeadingBit(abs(~vec3<i32>(var_1.d, var_1.d, arg_0.a))));
    return vec3<bool>(false, !(u_input.c.x > var_4), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 28>();
    var var_0 = ~(~reverseBits(u_input.c));
    let var_1 = func_1(Struct_5(var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-745f, -1000f, global1[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1160f, 1005f, 1598f) + vec3<f32>(1530f, global1[_wgslsmith_index_u32(u_input.e, 28u)], 860f)))) + vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8308u, 28u)] * global1[_wgslsmith_index_u32(78200u, 28u)]), -839f, 1819f))), reverseBits(26754u), abs(~abs(vec2<u32>(u_input.d, u_input.d))) >> (vec2<u32>(54512u, _wgslsmith_add_u32(3151u, _wgslsmith_mult_u32(1u, 86103u))) % vec2<u32>(32u)));
    var var_2 = ~(-4762i);
    var_2 = u_input.c.x;
    global0 = select(select(!select(vec4<bool>(var_1.x, global0.x, false, false), !vec4<bool>(true, var_1.x, global0.x, global0.x), !global0.x), !vec4<bool>(true, true, var_1.x, true), !select(select(vec4<bool>(global0.x, var_1.x, true, var_1.x), vec4<bool>(global0.x, var_1.x, global0.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false)), select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, true, false, true), true), u_input.d != 80090u)), select(select(vec4<bool>(true, 19429u >= u_input.d, all(global0.xy), true), !select(vec4<bool>(global0.x, var_1.x, global0.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, false, false)), false), select(select(select(vec4<bool>(true, global0.x, true, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), true == global0.x), !select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, var_1.x)), true), any(vec4<bool>(false, true, !var_1.x, var_1.x | false))), select(vec4<bool>(all(!vec2<bool>(var_1.x, true)), true || var_1.x, all(!vec4<bool>(true, var_1.x, global0.x, global0.x)), func_1(Struct_5(u_input.a.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(26023u, 28u)], -202f, global1[_wgslsmith_index_u32(11457u, 28u)]))), u_input.d, ~vec2<u32>(4294967295u, u_input.d)).x), vec4<bool>(var_1.x, true, true, true), vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(~5422u, 28u)] < global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(1u, 21899u)), 28u)], -699f == global1[_wgslsmith_index_u32(u_input.e, 28u)], all(vec3<bool>(false, false, false)))));
    var_2 = u_input.c.x;
    var_0 = _wgslsmith_mult_vec4_i32(u_input.c & ~(~abs(u_input.c)), _wgslsmith_div_vec4_i32(select(abs(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-9704i, 1i, -1i, var_0.x))), u_input.c, -2041f <= _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.e, 28u)]))), _wgslsmith_sub_vec4_i32(-(u_input.c << (vec4<u32>(u_input.e, u_input.d, 0u, 9817u) % vec4<u32>(32u))), vec4<i32>(var_0.x, u_input.b, _wgslsmith_add_i32(1i, var_0.x), reverseBits(var_0.x)))));
    let var_3 = !vec4<bool>(false, reverseBits(~u_input.d) <= (4294967295u << (u_input.d % 32u)), var_1.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.e, 76375u), reverseBits(firstLeadingBit(~max(-1i, -2147483647i))), ~(~abs(vec3<u32>(7979u, u_input.e, u_input.e) << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u)))));
}

