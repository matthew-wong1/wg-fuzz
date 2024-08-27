struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: bool = true;

var<private> global2: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<u32> {
    global2 = max(firstTrailingBit(~(~global0[_wgslsmith_index_u32(67164u, 3u)])), global0[_wgslsmith_index_u32(~abs(1u), 3u)] & 49793u);
    global2 = ~(~global0[_wgslsmith_index_u32(1u, 3u)]);
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(232f, 179f), _wgslsmith_f_op_f32(f32(-1f) * -741f), 331f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2205f, _wgslsmith_f_op_f32(select(-247f, -491f, false)), _wgslsmith_f_op_f32(391f - -106f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1469f, 1121f, 1237f) * vec3<f32>(-1000f, 1000f, -601f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-907f, 518f, 1319f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-690f, -960f, 593f))))));
    global0 = array<u32, 3>();
    return vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(~9282u, 3u)]);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(vec2<u32>(~global0[_wgslsmith_index_u32(abs(u_input.a.x ^ 76048u), 3u)], min(~(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)] % 32u)), _wgslsmith_sub_u32(u_input.a.x ^ global0[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_mod_u32(u_input.a.x, 4294967295u)))));
    var_0 = Struct_1(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(var_0.a.x, ~0u)), _wgslsmith_add_vec2_u32(u_input.a.zy, func_3()) & vec2<u32>(~var_0.a.x, 4294967295u)));
    global1 = all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, true, all(vec2<bool>(false, true)), all(vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    global2 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(1u, ~u_input.a.x)), 3u)], 3u)];
    global1 = true;
    return Struct_4(any(vec3<bool>(select(false, true, true), true, true)) & all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-133f, -536f)), -558f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1481f)), _wgslsmith_div_f32(723f, 143f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1402f, _wgslsmith_f_op_f32(-113f - 1f))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(~(-19216i), -26095i, -18874i), reverseBits(vec3<i32>(1i, 1i, 1i))), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(_wgslsmith_div_u32(var_0.a.x ^ ~4294967295u, ~u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, _wgslsmith_f_op_f32(arg_3.c * arg_2.c), arg_2.b.x, _wgslsmith_f_op_f32(abs(1385f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c * arg_2.b.x), _wgslsmith_f_op_f32(round(-1935f)), -676f, _wgslsmith_f_op_f32(-arg_2.b.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, -2127f, arg_2.b.x, -2115f))))));
    global0 = array<u32, 3>();
    global1 = arg_0;
    let var_1 = !(!vec4<bool>(!arg_2.a, false, !any(vec3<bool>(arg_0, arg_2.a, true)), arg_2.a));
    let var_2 = var_1.xzz;
    return arg_3;
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))) | (!any(vec3<bool>(false, true, true)) | !all(vec3<bool>(false, true, false))), 1i, func_2(), Struct_3(vec4<u32>(~u_input.a.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26434u, 3u)], 3u)] << (11621u % 32u), u_input.a.x), u_input.a.x, global0[_wgslsmith_index_u32(1u, 3u)]), Struct_1(min(u_input.a.zz, firstLeadingBit(u_input.a.zz))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-145f + -942f))))), select(_wgslsmith_div_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(true, false, true)), u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] << (global0[_wgslsmith_index_u32(1u, 3u)] % 32u), u_input.a.x, ~global0[_wgslsmith_index_u32(0u, 3u)]), false), Struct_1(~u_input.a.yz << (func_3() % vec2<u32>(32u)))));
    global1 = ~_wgslsmith_add_u32(select(firstLeadingBit(u_input.a.x), ~u_input.a.x, true), _wgslsmith_clamp_u32(var_0.a.x, func_4(true, -12806i, Struct_4(false, vec2<f32>(var_0.c, var_0.c), 115f, vec3<i32>(1i, 1i, -14731i), var_0.d.x), var_0).e.a.x, ~u_input.a.x)) == ~firstLeadingBit(22136u);
    global2 = 0u;
    global2 = min(max(_wgslsmith_dot_vec3_u32(min(var_0.d, var_0.d), vec3<u32>(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(28235u, 3u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], ~4294967295u)), ~(4294967295u >> (~global0[_wgslsmith_index_u32(1u, 3u)] % 32u))), _wgslsmith_div_u32(0u, 10233u));
    var var_1 = vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c - 109f)))))));
    return Struct_3(var_0.a, Struct_1(abs(~var_0.e.a) >> (_wgslsmith_mult_vec2_u32(~var_0.e.a, vec2<u32>(61369u, u_input.a.x) | var_0.e.a) % vec2<u32>(32u))), var_0.c, _wgslsmith_mult_vec3_u32(var_0.d, u_input.a), Struct_1(abs(~vec2<u32>(49309u, 43913u) & countOneBits(var_0.e.a))));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2().b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1091f, 163f)))))));
    let var_1 = -164f;
    var var_2 = -1573f;
    let var_3 = ~vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(14183i, 2147483647i, -25210i, 803i))) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(~64281u, u_input.a.x), vec2<u32>(func_1().e.a.x, 73023u)) % vec2<u32>(32u));
    var var_4 = _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(~arg_0.d, ~vec3<u32>(36573u, 32477u, 4294967295u)) << (_wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.a), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_0.e.a.x, 53219u), abs(u_input.a)) % vec3<u32>(32u))), u_input.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1351f)))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-170f, -1085f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1938f, arg_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_0.c), vec2<f32>(283f, 1438f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1429f)), 743f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1268f, -921f), vec2<f32>(-194f, -457f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(431f, 3208f), vec2<f32>(1806f, 328f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-273f)) * _wgslsmith_f_op_f32(select(-713f, -518f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1427f, 511f)), _wgslsmith_f_op_f32(-350f * -748f)))), _wgslsmith_f_op_vec2_f32(func_5(func_1(), func_4(select(false, false, false), i32(-1i) * -2147483647i, Struct_4(false, vec2<f32>(577f, 1422f), 371f, vec3<i32>(20922i, -26897i, 0i), 7649u), func_4(true, -2147483647i, Struct_4(false, vec2<f32>(-711f, -114f), -224f, vec3<i32>(-2147483647i, -2147483647i, 29790i), global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), Struct_3(vec4<u32>(14314u, 53543u, 23733u, 35372u), Struct_1(u_input.a.yz), -511f, vec3<u32>(23427u, 18288u, 70197u), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45018u, 3u)], 3u)], 3u)], 0u))))).c))))));
    global1 = any(vec3<bool>(all(vec2<bool>(true, true)), false, all(vec3<bool>(all(vec3<bool>(false, false, false)), true, true))));
    global1 = func_2().a;
    var var_1 = Struct_1(u_input.a.yy);
    global1 = -1i <= ~select(1i, _wgslsmith_mult_i32(i32(-1i) * -57288i, _wgslsmith_div_i32(-26983i, 38662i)), _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 3u)]) == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)]);
    let var_2 = vec4<bool>(any(select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(func_2().a, any(vec3<bool>(true, false, true)), true, false), all(vec4<bool>(true, false, false, true)) | false)), 53314u < u_input.a.x, true | (-1780f > var_0.x), true);
    global0 = array<u32, 3>();
    let var_3 = func_2();
    let var_4 = !var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c, 411f, -168f, var_3.b.x), vec4<f32>(var_0.x, -309f, var_3.c, var_3.b.x), vec4<bool>(true, var_3.a, var_4, var_4))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, 714f, var_0.x, var_0.x) - vec4<f32>(511f, -200f, var_0.x, -691f)), !var_2)), vec4<f32>(var_0.x, var_0.x, var_0.x, func_1().c), !vec4<bool>(var_2.x, true, var_4, var_2.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-877f, -538f, var_3.b.x, var_0.x), vec4<f32>(-565f, -1070f, 1620f, -1000f), false))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, var_0.x, var_3.b.x, 927f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -445f, 678f, var_3.b.x)))))), var_3.e, var_3.d.x);
}

