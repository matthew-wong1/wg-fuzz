struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 14>;

var<private> global2: array<vec3<i32>, 31>;

var<private> global3: array<f32, 7>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    var var_0 = !all(global1[_wgslsmith_index_u32(1u, 14u)]);
    var_0 = !(!(-_wgslsmith_mod_i32(u_input.e.x, 0i) != -37667i));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(min(295f, 1958f)), -1306f))), select(_wgslsmith_mod_vec4_i32(vec4<i32>(max(u_input.b.x, -1i), ~u_input.b.x, 0i, -17216i), vec4<i32>(~u_input.a, 1i, u_input.e.x, 1i)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(~u_input.e, vec4<i32>(-35972i, u_input.a, 2147483647i, u_input.d.x), -u_input.e)), select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), vec4<bool>(true, true, all(vec2<bool>(true, true)), any(global1[_wgslsmith_index_u32(9467u, 14u)])), true)));
    var var_2 = Struct_1(956f, _wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(sign(-351f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 2069f))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, var_1.b.x, var_1.b.x, u_input.c.x), firstTrailingBit(~var_1.b)), 4294967295u);
    var var_3 = ~(~reverseBits(~vec2<u32>(0u, 74925u)));
    return !vec2<bool>(all(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true))), !any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)));
}

fn func_2() -> Struct_2 {
    var var_0 = select(~vec2<i32>(~(-2147483647i >> (1u % 32u)), -11169i), _wgslsmith_sub_vec2_i32(u_input.e.ww, ~(-vec2<i32>(53111i, u_input.d.x))), select(select(select(func_3(), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), func_3()), !func_3(), all(vec3<bool>(true, func_3().x, global3[_wgslsmith_index_u32(4294967295u, 7u)] < 2188f))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(18330u, 7u)], 2376f, global3[_wgslsmith_index_u32(0u, 7u)])))), vec3<f32>(global3[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_f_op_f32(min(1164f, global3[_wgslsmith_index_u32(11716u, 7u)])), -1574f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1248f, 186f, global3[_wgslsmith_index_u32(53225u, 7u)]))), vec3<f32>(-500f, _wgslsmith_f_op_f32(max(254f, global3[_wgslsmith_index_u32(12093u, 7u)])), -1000f))))), -(~reverseBits(_wgslsmith_mod_vec4_i32(u_input.e, u_input.e))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(12647u, 7u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 7u)] - -169f)) - 669f) * _wgslsmith_f_op_f32(-1f)), var_1.a, select(countOneBits(u_input.e), ~reverseBits(var_1.b), select(vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(1u, 14u)], true)), ~0u);
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(var_2.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(900f, var_2.a, _wgslsmith_f_op_f32(step(var_1.a.x, 1259f))))), 4294967295u < ~(~var_2.d))), u_input.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-414f, global3[_wgslsmith_index_u32(0u, 7u)])), arg_1.a.x, 556f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 2515f, global3[_wgslsmith_index_u32(arg_0.d, 7u)])), arg_0.b)));
    var var_1 = arg_1.b.wxy;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(407f, 2145f, 2386f, 1000f) - vec4<f32>(-262f, 871f, var_0.x, var_0.x))))));
    let var_3 = ~abs(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, arg_0.d, 1u), vec3<u32>(arg_0.d, arg_0.d, 42498u), vec3<bool>(false, true, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 78673u, arg_0.d), vec3<u32>(0u, arg_0.d, 13011u)))) | _wgslsmith_mod_vec3_u32(vec3<u32>(~arg_0.d, 31910u, abs(~arg_0.d)), select(vec3<u32>(arg_0.d, arg_0.d, arg_0.d), max(vec3<u32>(50524u, 59644u, 7783u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d, arg_0.d, 25919u), vec3<u32>(4251u, 32585u, 23149u))), !any(vec2<bool>(true, false))));
    var var_4 = vec2<bool>(all(vec3<bool>(any(select(global1[_wgslsmith_index_u32(70867u, 14u)], vec4<bool>(false, true, false, true), true)), any(vec3<bool>(false, true, true)), true)), !func_3().x);
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_1(global3[_wgslsmith_index_u32(~11375u, 7u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(331f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(60307u, 7u)] * global3[_wgslsmith_index_u32(26131u, 7u)]), _wgslsmith_f_op_f32(-337f - global3[_wgslsmith_index_u32(0u, 7u)])) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, 185f, global3[_wgslsmith_index_u32(1u, 7u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, -107f, global3[_wgslsmith_index_u32(49103u, 7u)]) * vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(8420u, 7u)], 1139f)))), u_input.e, 0u), func_2());
    var var_1 = ~_wgslsmith_mult_u32(reverseBits(var_0.d), min(543u, var_0.d));
    var var_2 = u_input.a;
    global1 = array<vec4<bool>, 14>();
    var var_3 = var_0.a;
    return func_4(func_4(func_4(func_4(func_4(Struct_1(global3[_wgslsmith_index_u32(8436u, 7u)], var_0.b, vec4<i32>(u_input.e.x, u_input.d.x, -2147483647i, var_0.c.x), var_0.d), Struct_2(vec3<f32>(-255f, global3[_wgslsmith_index_u32(var_0.d, 7u)], global3[_wgslsmith_index_u32(var_0.d, 7u)]), u_input.e)), func_2()), Struct_2(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(var_0.d, 7u)], 613f), -vec4<i32>(1i, var_0.c.x, -52894i, -3937i))), func_2()), func_2());
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_2 {
    global0 = max(arg_3.d, func_4(func_4(func_4(arg_3, Struct_2(vec3<f32>(arg_1.x, arg_1.x, 758f), vec4<i32>(-1271i, arg_0, 0i, u_input.d.x))), Struct_2(arg_3.b, arg_3.c)), func_2()).d) ^ arg_3.d;
    var var_0 = ~arg_3.d;
    global3 = array<f32, 7>();
    global1 = array<vec4<bool>, 14>();
    let var_1 = 27846u;
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(37883u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(f32(-1f) * -766f)))), ~func_2().b);
}

fn func_6(arg_0: Struct_2) -> u32 {
    var var_0 = abs(~u_input.e.xwz);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(global3[_wgslsmith_index_u32(select(func_4(Struct_1(arg_0.a.x, vec3<f32>(global3[_wgslsmith_index_u32(0u, 7u)], 1805f, global3[_wgslsmith_index_u32(872u, 7u)]), vec4<i32>(var_0.x, -8344i, u_input.d.x, -46946i), 2020u), arg_0).d, _wgslsmith_add_u32(35610u, 0u), true), 7u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~1u, 7u)]))), arg_0.a, false));
    var var_2 = Struct_2(var_1, ~(func_4(Struct_1(1026f, vec3<f32>(-383f, var_1.x, 131f), arg_0.b, 4294967295u), func_2()).c & (u_input.e ^ vec4<i32>(arg_0.b.x, 0i, var_0.x, -20023i))));
    var var_3 = any(select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_4 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, ~81189u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, ~firstLeadingBit(12037u), reverseBits(~1u), firstLeadingBit(_wgslsmith_mult_u32(1u, 74736u))), !select(global1[_wgslsmith_index_u32(4294967295u, 14u)], select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true), true), true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(_wgslsmith_div_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(452u, 0u), any(vec3<bool>(false, true, true))), 1u), _wgslsmith_sub_u32(~55553u, _wgslsmith_mod_u32(firstLeadingBit(4294967295u), 38068u)), ~(1u << (1u % 32u)));
    let var_1 = func_6(func_5(_wgslsmith_div_i32(~(-65831i), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(151f, 1804f, global3[_wgslsmith_index_u32(30735u, 7u)], global3[_wgslsmith_index_u32(53019u, 7u)]), vec4<f32>(-619f, 113f, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(62441u, 7u)])), _wgslsmith_div_vec4_f32(vec4<f32>(1008f, -507f, global3[_wgslsmith_index_u32(21963u, 7u)], global3[_wgslsmith_index_u32(12148u, 7u)]), vec4<f32>(-1877f, 1242f, global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(51039u, 7u)]))))), vec4<bool>(false, true, true && all(vec2<bool>(true, false)), true), func_1()));
    var var_2 = func_1();
    global0 = var_2.d;
    var var_3 = select(select(func_3(), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 40851i), var_2.c.zz) == u_input.d.x, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), !func_3(), !(~var_1 <= ~var_2.d)));
    var var_4 = func_5(func_4(func_1(), Struct_2(_wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(-1806f, -981f, -2546f)), vec4<i32>(var_2.c.x, u_input.b.x, u_input.b.x, 0i) | var_2.c)).c.x & -(-u_input.b.x >> (~3547u % 32u)), vec4<f32>(771f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2017f, -1523f))), _wgslsmith_f_op_f32(f32(-1f) * -974f)), _wgslsmith_f_op_f32(sign(-432f)), -1334f), global1[_wgslsmith_index_u32(0u, 14u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1527f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_2.b + vec3<f32>(var_2.b.x, var_2.b.x, var_2.b.x)), vec3<f32>(1159f, global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-39198i, u_input.e.x, u_input.b.x, 0i), vec4<i32>(_wgslsmith_div_i32(47044i, 30819i), u_input.d.x, -2147483647i, abs(var_2.c.x))), 41517u));
    var var_5 = !vec2<bool>(var_3.x, any(!select(vec4<bool>(var_3.x, true, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, var_3.x, true))));
    var_0 = var_1;
    var_5 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_1().d, ~(~_wgslsmith_add_u32(106755u, var_1)), 62275u << (_wgslsmith_mult_u32(11797u, ~var_1) % 32u), var_1), ~func_1().c.ywx);
}

