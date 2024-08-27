struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(-2654i, -65319i, -22596i, 771i, 1i, 0i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), -1i, -13785i, 2206i, i32(-2147483648), 0i, -36475i, -1i, -8987i, 0i, 0i, -16659i);

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1000f, -140f, -242f, 833f), vec4<f32>(-1000f, 1968f, 1000f, 1173f), vec4<f32>(-976f, -1241f, -400f, -204f), vec4<f32>(-1084f, -1330f, -1000f, -1151f), vec4<f32>(-2020f, 468f, -1272f, -1123f), vec4<f32>(-1632f, -614f, 683f, -759f), vec4<f32>(-210f, -1018f, -895f, -522f), vec4<f32>(-1048f, -1335f, -1795f, 1421f), vec4<f32>(230f, -536f, -433f, 1121f), vec4<f32>(415f, 1653f, 615f, 307f), vec4<f32>(534f, -515f, 168f, -1000f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> i32 {
    global0 = array<i32, 21>();
    let var_0 = Struct_1(12060i, 413f, _wgslsmith_sub_vec4_u32(vec4<u32>(~(u_input.a.x << (19166u % 32u)), 1u, 1u, ~reverseBits(u_input.a.x)), ~(~firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)))), firstLeadingBit(_wgslsmith_div_u32(~u_input.a.x | 1u, 1u)));
    var var_1 = vec3<bool>(all(vec2<bool>(true, true)) & (~(~global0[_wgslsmith_index_u32(var_0.d, 21u)]) < var_0.a), true, any(vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    let var_2 = ~(~(~1u)) & u_input.a.x;
    var var_3 = Struct_1(-2147483647i, 629f, select(vec4<u32>(countOneBits(_wgslsmith_clamp_u32(4294967295u, var_0.c.x, u_input.a.x)), ~35937u, _wgslsmith_dot_vec3_u32(~vec3<u32>(6110u, 4294967295u, u_input.a.x), var_0.c.xzx), 1u), ~(~max(var_0.c, var_0.c)), true), 64734u);
    return _wgslsmith_div_i32(var_0.a, global0[_wgslsmith_index_u32(~1u, 21u)] & var_3.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = -1034f;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    global1 = 122708u;
    global1 = 109703u;
    global1 = arg_1.x;
    return arg_0.c;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = 508f;
    let var_1 = ~vec4<u32>(0u, u_input.a.x, _wgslsmith_div_u32(u_input.a.x >> (u_input.a.x % 32u), ~0u), 43892u) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, ~27445u, select(1u, 0u, false), countOneBits(1u)), vec4<u32>(abs(4294967295u), u_input.a.x, 4294967295u, select(u_input.a.x, 17563u, false)));
    global0 = array<i32, 21>();
    let var_2 = _wgslsmith_sub_vec4_u32(func_4(Struct_1(u_input.b.x ^ func_3(vec3<i32>(-58419i, global0[_wgslsmith_index_u32(42186u, 21u)], global0[_wgslsmith_index_u32(var_1.x, 21u)]), u_input.b.x), -382f, var_1, 1u), ~vec3<u32>(select(108188u, var_1.x, false), firstTrailingBit(var_1.x), ~48940u), !select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, false), false), true), vec3<u32>(var_1.x, ~(~var_1.x), ~u_input.a.x)), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(2238u, 4294967295u, var_1.x, var_1.x), var_1, all(!vec3<bool>(arg_0, arg_0, false))), vec4<u32>(u_input.a.x, 1u, 27220u, 1u)));
    var var_3 = Struct_1(max(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, u_input.b.x), -22160i), 2147483647i), global0[_wgslsmith_index_u32(~var_2.x >> (_wgslsmith_mod_u32(var_2.x, 40278u) % 32u), 21u)] >> (var_1.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-320f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))), ~(~(vec4<u32>(var_1.x, var_2.x, 4294967295u, 22564u) & ~var_2)), 6573u);
    return var_0;
}

fn func_5(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1200f, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), 469f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(458f, -1756f), vec2<f32>(arg_0, 157f))), vec2<f32>(-1541f, _wgslsmith_f_op_f32(func_2(false))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~firstLeadingBit(53781u), 11u)]) + global2[_wgslsmith_index_u32(29817u, 11u)]);
    let var_2 = Struct_1(~abs(global0[_wgslsmith_index_u32(abs(u_input.a.x), 21u)]), _wgslsmith_f_op_f32(-1413f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x - arg_0)))), ~(((vec4<u32>(u_input.a.x, u_input.a.x, 0u, 66462u) & vec4<u32>(44365u, u_input.a.x, u_input.a.x, u_input.a.x)) | reverseBits(vec4<u32>(4294967295u, 29871u, u_input.a.x, 33642u))) >> (abs(~vec4<u32>(19024u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), u_input.a.x);
    var_1 = vec4<f32>(var_1.x, var_2.b, _wgslsmith_div_f32(-294f, -803f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x + var_0.x), var_2.b))))));
    let var_3 = Struct_1(abs(32360i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(14055u, var_2.c.x), vec2<u32>(7067u, var_2.d)) % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.x, abs(var_2.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 0u, var_2.c.x), var_2.c.ywx), _wgslsmith_clamp_u32(reverseBits(54369u), ~4294967295u, _wgslsmith_add_u32(0u, u_input.a.x))), var_2.c), u_input.a.x);
    return Struct_2(~(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_3.d, u_input.a.x, 8958u)), ~vec3<u32>(0u, 20341u, var_2.c.x))), max(u_input.b, -_wgslsmith_clamp_vec4_i32(-u_input.b, vec4<i32>(0i, var_2.a, -35391i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec4<i32>(-1i, u_input.b.x, -3553i, -2147483647i))));
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 21>();
    global1 = u_input.a.x;
    var var_0 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 21u)];
    var var_1 = _wgslsmith_div_f32(-1244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-445f, 577f))))) + 1f));
    global0 = array<i32, 21>();
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-647f, 861f) - _wgslsmith_f_op_f32(func_2(false)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) + -357f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-1853f))))));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = 1201f;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 942f));
    global0 = array<i32, 21>();
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-arg_1))) + 1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, -282f), _wgslsmith_f_op_f32(arg_1 * arg_1))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -733f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-146f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 575f)))));
    var_1 = 1231f;
    return 275f;
}

fn func_7(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec2<f32> {
    global2 = array<vec4<f32>, 11>();
    global1 = 4294967295u;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -367f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_0)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(-714f, _wgslsmith_f_op_f32(f32(-1f) * -1100f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))))));
}

fn func_8(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) - -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -366f, arg_2)) + arg_1.x)), arg_1.x), any(select(vec4<bool>(true, arg_2 & true, true, true || arg_2), select(!vec4<bool>(false, true, arg_2, false), !vec4<bool>(false, arg_2, arg_2, true), vec4<bool>(true, true, arg_2, arg_2)), select(vec4<bool>(true, arg_2, false, false), select(vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(true, arg_2, true, true), vec4<bool>(arg_2, false, arg_2, arg_2)), !vec4<bool>(false, arg_2, false, arg_2))))));
    global0 = array<i32, 21>();
    global1 = ~countOneBits(~4294967295u);
    let var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~1u, ~(~u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.a.x, u_input.a.x, 1u, arg_3.a.x), vec4<u32>(16313u, 24986u, arg_3.a.x, 0u)), vec4<u32>(arg_0.a.x, arg_0.a.x, 1u, 0u) | vec4<u32>(u_input.a.x, u_input.a.x, arg_0.a.x, 40628u))), func_4(Struct_1(-u_input.b.x, _wgslsmith_f_op_f32(-arg_1.x), vec4<u32>(u_input.a.x, 46874u, u_input.a.x, 4294967295u), ~19170u), vec3<u32>(22463u, func_4(Struct_1(-32611i, var_0, vec4<u32>(0u, 57257u, 1u, 3491u), u_input.a.x), u_input.a, vec3<bool>(arg_2, false, false), u_input.a).x, _wgslsmith_div_u32(0u, arg_0.a.x)), !vec3<bool>(true, arg_2, true), max(arg_3.a, arg_3.a) << (vec3<u32>(0u, 14806u, arg_0.a.x) % vec3<u32>(32u))));
    global1 = ~arg_3.a.x;
    return StorageBuffer(954f, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, ~113613u), ~u_input.a.yx), arg_0.b.xx, _wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.b.xz, reverseBits(arg_0.b.xz)), -_wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.b.x, global0[_wgslsmith_index_u32(var_1.x, 21u)]), arg_3.b.wy)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(Struct_2(u_input.a, u_input.b), _wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_f_op_f32(func_6(func_1(), -1196f, 1105f, !select(vec2<bool>(true, true), vec2<bool>(true, false), true))), 346f, Struct_2(u_input.a, -func_5(136f).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f - -855f)) * 828f) > _wgslsmith_f_op_f32(max(-1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(714f, -1485f))))), Struct_2(vec3<u32>(abs(u_input.a.x), 0u, u_input.a.x), vec4<i32>(-6319i, func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(411u, 21u)]), u_input.b.xww), _wgslsmith_div_i32(2147483647i, 11830i)), _wgslsmith_add_i32(countOneBits(14414i), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), ~(-24723i))));
}

