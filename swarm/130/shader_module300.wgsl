struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(0u, 1u, 63449u, 73255u), vec4<u32>(10266u, 60818u, 101230u, 2459u), vec4<u32>(1u, 8077u, 1u, 38032u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    global1 = array<vec3<u32>, 7>();
    global0 = firstTrailingBit(arg_0.c.x >> (firstTrailingBit(u_input.a) % 32u));
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 7u)];
    var var_1 = abs(global2[_wgslsmith_index_u32(_wgslsmith_div_u32((abs(arg_1.d.x) >> (~u_input.b.x % 32u)) >> (~select(u_input.a, 0u, false) % 32u), ~(~_wgslsmith_mult_u32(0u, 1u))), 3u)]);
    global0 = _wgslsmith_dot_vec3_u32(var_1.yyy, firstTrailingBit(vec3<u32>(~(var_0.x & arg_0.d.x), _wgslsmith_clamp_u32(abs(var_0.x), _wgslsmith_dot_vec3_u32(arg_0.d.wwz, vec3<u32>(4294967295u, 0u, 1u)), abs(arg_1.c.x)), ~var_0.x)));
    return ~abs((vec4<u32>(arg_1.d.x, u_input.b.x, 28569u, 26135u) | vec4<u32>(104617u, 1u, 24335u, arg_1.d.x)) >> (firstTrailingBit(arg_1.d) % vec4<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(228f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1011f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1142f) - -1075f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2344f)) - 1384f))), ~func_3(Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -3645f, 1000f))), vec3<f32>(611f, 1363f, 1000f), vec3<u32>(u_input.a, u_input.a, u_input.b.x), max(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(u_input.c, 3u)]), -vec2<i32>(arg_0, arg_0)), Struct_2(vec3<f32>(452f, 529f, -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(1263f, 1000f, 1094f), vec3<f32>(1750f, 835f, -464f)), vec3<u32>(61655u, 1u, u_input.a), ~global2[_wgslsmith_index_u32(u_input.b.x, 3u)], _wgslsmith_add_vec2_i32(vec2<i32>(-46176i, arg_2), vec2<i32>(arg_0, -2147483647i))), 2495i));
    let var_1 = ~_wgslsmith_add_u32(~_wgslsmith_sub_u32(firstLeadingBit(u_input.c), _wgslsmith_div_u32(u_input.c, u_input.a)), ((0u & var_0.c.x) << (~var_0.c.x % 32u)) & (abs(u_input.a) | (6768u ^ u_input.b.x)));
    var_0 = Struct_1(var_0.b, 589f, ~abs(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, 0u)) & (1u << (var_1 % 32u)), 3u)]));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(-1671f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -282f))))), var_0.a, abs(var_0.c));
    let var_3 = var_0.a;
    return Struct_1(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1491f))), firstLeadingBit(vec4<u32>(var_2.c.x, u_input.a, var_2.c.x, ~1u)));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-122f * 1002f), 233f))), vec3<f32>(func_2(-firstLeadingBit(40370i), select(select(vec3<bool>(false, arg_1, true), vec3<bool>(false, arg_1, false), true), vec3<bool>(arg_1, false, false), arg_0.x | arg_0.x), -2147483647i).a, arg_3.b, 402f), arg_3.c.yxz, select(abs(abs(arg_3.c)), _wgslsmith_mod_vec4_u32(min(arg_3.c, ~vec4<u32>(arg_2.c.x, arg_2.c.x, 4294967295u, arg_2.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(7621u, 4294967295u, 36477u, 0u), abs(arg_2.c))), select(!vec4<bool>(true, true, arg_0.x, true), !(!vec4<bool>(arg_1, arg_0.x, arg_1, true)), vec4<bool>(arg_1 | true, false, false && arg_1, true))), -(vec2<i32>(27990i, countOneBits(1i)) >> (select(_wgslsmith_sub_vec2_u32(arg_2.c.wy, vec2<u32>(u_input.c, 15301u)), arg_2.c.wz, all(arg_0)) % vec2<u32>(32u))));
    let var_1 = vec2<bool>(any(vec4<bool>(!all(vec4<bool>(arg_0.x, arg_1, arg_1, arg_0.x)), all(select(vec4<bool>(arg_1, arg_0.x, arg_0.x, arg_1), vec4<bool>(arg_0.x, arg_1, false, true), vec4<bool>(arg_0.x, arg_0.x, false, false))), true, true)), false);
    let var_2 = u_input.b.x;
    var var_3 = arg_3;
    let var_4 = arg_3;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.a.x, 240f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(arg_3.b, 1061f, -311f)), var_0.a, select(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, arg_1, true), vec3<bool>(true, var_1.x, false)), !vec3<bool>(true, arg_1, false), false)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), var_0.a)))));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(true, true, false, any(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2114f, -901f, 1000f) - vec3<f32>(578f, -698f, 779f)))) + _wgslsmith_f_op_vec3_f32(func_4(var_0.xy, any(vec2<bool>(false, true)), func_2(i32(-1i) * -1i, !var_0.wzw, abs(0i)), func_2(-35637i, !var_0.xyw, 1i)))), _wgslsmith_f_op_vec3_f32(func_4(select(vec2<bool>(var_0.x, !var_0.x), var_0.yw, select(var_0.ww, var_0.zz, var_0.xz)), true, Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), -1543f, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 44558u), global1[_wgslsmith_index_u32(51982u, 7u)]), _wgslsmith_mod_u32(26336u, u_input.b.x), abs(1u), 85546u)), func_2(~_wgslsmith_sub_i32(-8165i, -31121i), var_0.zxy, 1487i))), ~reverseBits(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.c, u_input.b.x, 0u) << (vec3<u32>(u_input.b.x, 45513u, u_input.c) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(~122289u, 3u)], _wgslsmith_mult_vec2_i32(~vec2<i32>(countOneBits(-12092i), -62236i), vec2<i32>(0i, firstTrailingBit(0i))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -561f), ~var_1.d);
    global1 = array<vec3<u32>, 7>();
    var var_3 = ~(~max(var_1.e, -var_1.e));
    return func_2(~9936i, select(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, true, var_0.x)), true), max(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.e.x, 1i), var_1.e.x, -(i32(-1i) * -1i)), abs(countOneBits(-2147483647i))));
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    global2 = array<vec4<u32>, 3>();
    var var_1 = vec2<i32>(1i, 13697i);
    global1 = array<vec3<u32>, 7>();
    var var_2 = countOneBits(vec2<u32>(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(u_input.b.x), 19595u)));
    return vec3<f32>(_wgslsmith_f_op_f32(step(var_0.b, 779f)), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_div_f32(var_0.b, 1341f), any(vec4<bool>(false, false, arg_0, false)))) - arg_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - 1012f) - _wgslsmith_f_op_f32(-arg_1.a)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = -arg_0.e.x < (i32(-1i) * -(min(arg_0.e.x, 0i) << (var_0.c.x % 32u)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, var_1), true, Struct_1(793f, 389f, var_0.c), arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-153f, arg_1.b, arg_0.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * 500f))), 1023f, func_2(arg_0.e.x, select(vec3<bool>(true, false, true), vec3<bool>(var_1, var_1, var_1), true), -arg_0.e.x).a), func_2(-2147483647i, vec3<bool>(!var_1, var_1, all(!vec3<bool>(var_1, true, var_1))), -1i).c.xww, vec4<u32>(reverseBits(arg_0.d.x), var_0.c.x, arg_1.c.x, ~var_0.c.x), _wgslsmith_add_vec2_i32(arg_0.e, max(-arg_0.e, reverseBits(vec2<i32>(-49163i, arg_0.e.x)))) << (vec2<u32>(0u, _wgslsmith_add_u32(arg_1.c.x >> (1u % 32u), countOneBits(arg_0.d.x))) % vec2<u32>(32u)));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), 0u <= arg_1.c.x), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, false, false)), true, true), select(true, true, true)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(all(vec3<bool>(false, false, true)), true, false), false));
    return func_6(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b, vec3<f32>(arg_1.b.x, arg_1.a.x, 1374f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, arg_1.b.x, arg_1.b.x), vec3<f32>(arg_1.a.x, arg_1.b.x, 428f), var_0.x)) - _wgslsmith_f_op_vec3_f32(trunc(arg_1.b))), arg_1.a)), global1[_wgslsmith_index_u32(~arg_0.x, 7u)], ~(~(~vec4<u32>(9794u, arg_1.c.x, 1u, arg_0.x))), arg_1.e), func_1(), vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(arg_1.e.x, var_0, arg_1.e.x).b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 7>();
    let var_0 = func_7(vec4<u32>(~49670u, u_input.a, ~_wgslsmith_div_u32(u_input.a, 35879u), 1u), func_6(Struct_2(_wgslsmith_f_op_vec3_f32(func_5(true, func_1())), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1476f, -1339f, 2795f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-393f, -666f, -413f)))), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 44302u), global1[_wgslsmith_index_u32(5218u, 7u)])), vec4<u32>(~u_input.c, 4294967295u, ~0u, u_input.a), -vec2<i32>(0i, -2147483647i) | select(vec2<i32>(-61630i, 1i), vec2<i32>(-72599i, -12352i), true)), func_2(countOneBits(-66010i) >> (u_input.c % 32u), vec3<bool>(true, true, true), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2283f, 1681f), vec2<f32>(-1058f, -2212f))))));
    global0 = var_0.c.x;
    global2 = array<vec4<u32>, 3>();
    global1 = array<vec3<u32>, 7>();
    let var_1 = ~var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.e.x, var_0.e.x), -(~0i | select(var_0.e.x, 2147483647i, false))), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, var_0.e.x, -38042i, -1i)), -vec4<i32>(-15945i, var_0.e.x, 50879i, var_0.e.x))), var_0.e), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true), true, Struct_1(-1000f, 1990f, vec4<u32>(1u, var_0.d.x, var_0.d.x, u_input.c)), Struct_1(-812f, var_0.a.x, vec4<u32>(4294967295u, var_0.c.x, 0u, var_1.x)))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1().a * _wgslsmith_f_op_f32(var_0.a.x + -2382f)), -1268f), _wgslsmith_f_op_f32(func_7(vec4<u32>(27473u, 43034u, var_1.x, u_input.a) << (var_1 % vec4<u32>(32u)), func_6(Struct_2(vec3<f32>(1769f, -372f, 335f), vec3<f32>(-302f, -1218f, var_0.a.x), var_1.zxw, var_0.d, var_0.e), Struct_1(-1000f, -2433f, vec4<u32>(var_0.d.x, u_input.b.x, var_0.c.x, var_1.x)), var_0.a.xy)).b.x - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(sign(var_0.b.x)))), _wgslsmith_f_op_f32(floor(144f))), ~(~vec4<u32>(_wgslsmith_add_u32(var_1.x, 30920u), ~var_0.c.x, _wgslsmith_add_u32(70387u, u_input.b.x), ~var_0.c.x)));
}

