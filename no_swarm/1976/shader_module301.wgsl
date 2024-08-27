struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(11105u, 53788u, 20478u), vec3<u32>(2133u, 4294967295u, 8015u), vec3<u32>(2490u, 0u, 36130u), vec3<u32>(20032u, 54622u, 37749u), vec3<u32>(50055u, 10290u, 56063u), vec3<u32>(4294967295u, 58737u, 22463u), vec3<u32>(1u, 95251u, 46743u), vec3<u32>(4294967295u, 4294967295u, 35805u), vec3<u32>(4294967295u, 52490u, 44123u), vec3<u32>(45103u, 89235u, 4294967295u), vec3<u32>(4294967295u, 54990u, 34090u), vec3<u32>(64879u, 4294967295u, 21877u), vec3<u32>(32351u, 116655u, 18727u), vec3<u32>(13354u, 1u, 43668u), vec3<u32>(66322u, 20246u, 14930u), vec3<u32>(64487u, 0u, 9934u), vec3<u32>(31725u, 0u, 4294967295u), vec3<u32>(1u, 19426u, 30539u), vec3<u32>(0u, 1u, 0u), vec3<u32>(14281u, 13294u, 30146u), vec3<u32>(4294967295u, 1u, 25678u), vec3<u32>(92029u, 62940u, 32677u), vec3<u32>(49945u, 4294967295u, 4294967295u), vec3<u32>(1u, 39465u, 4294967295u), vec3<u32>(20761u, 10981u, 87019u), vec3<u32>(4294967295u, 28474u, 0u), vec3<u32>(4294967295u, 47968u, 1u), vec3<u32>(36060u, 11845u, 53614u));

var<private> global1: array<f32, 16>;

var<private> global2: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(-54677i, -12810i, -1i, -38231i), vec4<i32>(-1i, i32(-2147483648), -27759i, 1376i), vec4<i32>(0i, 12410i, -33022i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -58539i, -22981i, -35741i), vec4<i32>(-15819i, 2147483647i, -17384i, -1i), vec4<i32>(6318i, i32(-2147483648), -12764i, i32(-2147483648)), vec4<i32>(-10256i, 14950i, -1i, i32(-2147483648)), vec4<i32>(-1i, 19255i, 45660i, 1301i), vec4<i32>(i32(-2147483648), 1i, -1i, 38367i), vec4<i32>(-20979i, 7220i, 2147483647i, i32(-2147483648)), vec4<i32>(-9676i, 18792i, 2147483647i, -23173i), vec4<i32>(-1i, 26437i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, -73274i, -49460i, -1i), vec4<i32>(-18000i, 0i, -25113i, 2147483647i), vec4<i32>(0i, 0i, -16324i, 0i), vec4<i32>(12161i, 1i, -1i, -2327i), vec4<i32>(17537i, -5963i, -20991i, 0i), vec4<i32>(-67677i, -1i, -45770i, 6438i), vec4<i32>(0i, -1891i, 30748i, 0i), vec4<i32>(2147483647i, -30938i, -21971i, 2147483647i), vec4<i32>(2147483647i, 43733i, -56032i, i32(-2147483648)), vec4<i32>(1i, -40999i, -5410i, -38930i), vec4<i32>(-9521i, i32(-2147483648), 0i, -1i), vec4<i32>(26479i, -1i, 2147483647i, 2147483647i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    global0 = array<vec3<u32>, 28>();
    let var_0 = true | (any(vec2<bool>(any(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, true, false, false)))) != true);
    return firstLeadingBit(_wgslsmith_sub_u32(~1u, firstTrailingBit(~(~23442u))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(all(vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), true)), -u_input.c, vec4<u32>(_wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x), u_input.a.x, firstTrailingBit(~u_input.a.x & u_input.a.x), ~(~40528u) ^ ~(~u_input.a.x)));
    let var_1 = u_input.c;
    let var_2 = Struct_3(Struct_1(any(vec4<bool>(11579i > arg_0.x, true, var_0.a, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_0.x, var_0.b.x), _wgslsmith_clamp_i32(-54487i, 17045i, arg_0.x), u_input.e), var_0.b), var_0.c), ~select(~var_0.c | vec4<u32>(u_input.a.x, 329u, 120103u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 85234u, 51560u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), any(!vec2<bool>(var_0.a, false))), u_input.d, Struct_2(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, 4294967295u, 1u, u_input.a.x), var_0.c, vec4<u32>(25729u, var_0.c.x, var_0.c.x, 65257u)), vec4<u32>(func_3(-1i, u_input.c.yx), abs(0u), 1u, u_input.a.x))));
    global0 = array<vec3<u32>, 28>();
    var var_3 = var_2.d;
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(742f)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 16u)])), global1[_wgslsmith_index_u32(20033u, 16u)]), vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c.x, 16u)] * -1845f), _wgslsmith_f_op_f32(trunc(-1129f)), global1[_wgslsmith_index_u32(var_3.a.x, 16u)]), !(u_input.a.x >= 46496u)))), ~_wgslsmith_mod_u32(1u ^ ~var_0.c.x, 1u), countOneBits(_wgslsmith_dot_vec4_i32(min(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), ~global2[_wgslsmith_index_u32(var_0.c.x, 24u)])) < _wgslsmith_mult_i32(select(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), vec2<i32>(var_1.x, 0i)), !var_2.a.a), 13023i));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> vec4<u32> {
    var var_0 = 0u;
    let var_1 = func_2(vec3<i32>(reverseBits(firstLeadingBit(5005i)), 1432i, -34809i >> (u_input.a.x % 32u)) | ((vec3<i32>(-1i) * -u_input.c) >> ((~arg_1.a.zyy | _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b, 4294967295u, arg_2.b), vec3<u32>(arg_1.a.x, u_input.a.x, 40502u))) % vec3<u32>(32u))));
    global2 = array<vec4<i32>, 24>();
    var var_2 = false;
    global0 = array<vec3<u32>, 28>();
    return countOneBits(arg_1.a >> (select(arg_1.a, arg_1.a, select(select(vec4<bool>(arg_3, arg_2.c, false, false), vec4<bool>(true, var_1.c, true, true), vec4<bool>(arg_2.c, var_1.c, true, arg_3)), !vec4<bool>(arg_2.c, false, false, arg_3), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(~func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.b, 63921i), global2[_wgslsmith_index_u32(4744u, 24u)]), Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), func_2(u_input.c), false) & _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(15337u, 69673u, u_input.a.x, 1u)), vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(29854u, 9484u, 87572u), u_input.a.x, u_input.a.x)));
    var_0 = Struct_2(reverseBits(_wgslsmith_sub_vec4_u32(~var_0.a, ~vec4<u32>(var_0.a.x, 4294967295u, 1u, var_0.a.x) ^ ~var_0.a)));
    var var_1 = vec4<f32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(16275u, u_input.a.x, var_0.a.x), ~vec3<u32>(1u, 100452u, 68795u), any(vec4<bool>(true, true, true, false))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(21549u, 28u)], vec3<u32>(var_0.a.x, 44079u, 20567u), vec3<u32>(u_input.a.x, 90233u, 3429u)), ~vec3<u32>(u_input.a.x, var_0.a.x, var_0.a.x))), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], false)) * _wgslsmith_f_op_f32(min(-1007f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(12908u, 0u), 16u)] * _wgslsmith_f_op_f32(sign(822f))))), 420f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_0.a.x, 16u)], -1000f)));
    let var_2 = true;
    var var_3 = u_input.a.x;
    return Struct_2(func_4(-(2147483647i ^ u_input.e), Struct_2(~vec4<u32>(var_0.a.x, 15904u, var_0.a.x, 28973u)), Struct_4(vec3<f32>(var_1.x, 1777f, 2039f), u_input.a.x, var_2), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 16u)]) == _wgslsmith_f_op_f32(sign(308f))) & vec4<u32>(u_input.a.x, 4294967295u, ~u_input.a.x, ~_wgslsmith_add_u32(52948u, u_input.a.x)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_5) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.x, arg_1.x, -1525f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1466f, global1[_wgslsmith_index_u32(1u, 16u)]) * vec4<f32>(global1[_wgslsmith_index_u32(arg_3.c.a.c.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 681f, 136f))))))));
    let var_1 = Struct_3(Struct_1(false, vec3<i32>(~u_input.e | (i32(-1i) * -4684i), _wgslsmith_mult_i32(~(-2147483647i), -arg_3.b), firstLeadingBit(_wgslsmith_clamp_i32(arg_0.x, 2147483647i, arg_3.b))), vec4<u32>(~u_input.a.x, ~(~arg_3.e.x), arg_2.a.x, ~4492u)), arg_3.c.a.c, _wgslsmith_div_i32(i32(-1i) * -arg_3.b, ~firstTrailingBit(0i)), func_1());
    let var_2 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1233f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(step(561f, 418f))))) + var_0.x));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-573f)), var_0.x)))) - _wgslsmith_f_op_f32(1229f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(step(231f, var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - var_2), var_2)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))) + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(30780u, 16u)] * var_2), -145f))) - var_0.x), 304f);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(firstLeadingBit(firstTrailingBit(vec3<i32>(_wgslsmith_div_i32(u_input.e, u_input.e), _wgslsmith_mult_i32(1i, u_input.d), _wgslsmith_clamp_i32(u_input.d, -17193i, u_input.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))))), func_1(), Struct_5(vec3<bool>(true, true, true), -1i, Struct_3(Struct_1(all(vec4<bool>(true, false, true, false)), ~vec3<i32>(u_input.e, 0i, u_input.d), abs(vec4<u32>(u_input.a.x, 18700u, 1u, u_input.a.x))), vec4<u32>(4294967295u, 0u, ~u_input.a.x, 4294967295u), abs(u_input.c.x) | min(u_input.c.x, u_input.c.x), Struct_2(max(vec4<u32>(13494u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(77030u, 1u, u_input.a.x, 4294967295u)))), ~global2[_wgslsmith_index_u32((u_input.a.x << (95999u % 32u)) ^ 1u, 24u)], _wgslsmith_clamp_vec3_u32(global0[_wgslsmith_index_u32(12353u, 28u)] & global0[_wgslsmith_index_u32(u_input.a.x, 28u)], _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), abs(vec3<u32>(21011u, 0u, 0u))) & ~(~vec3<u32>(u_input.a.x, 0u, 2143u))));
}

