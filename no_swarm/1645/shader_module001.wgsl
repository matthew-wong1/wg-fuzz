struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(2147483647i, false), Struct_1(-1i, false), Struct_1(0i, true), Struct_1(68872i, true), Struct_1(1i, false), Struct_1(-30084i, false), Struct_1(i32(-2147483648), true), Struct_1(29811i, true), Struct_1(-27728i, false), Struct_1(-54904i, false), Struct_1(-1i, false));

var<private> global2: vec3<u32> = vec3<u32>(52642u, 4294967295u, 4294967295u);

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    global1 = array<Struct_1, 11>();
    global0 = array<vec4<bool>, 24>();
    var var_0 = _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(80994u, arg_0.x, global2.x, arg_0.x))), vec4<u32>(~(~arg_0.x), min(~arg_0.x, ~firstTrailingBit(0u)), arg_0.x, 1u));
    var var_1 = Struct_1(u_input.a.x, all(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true)));
    global2 = vec3<u32>(~(~firstTrailingBit(81845u)), ~0u, arg_0.x);
    return ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 23302u, global2.x) | _wgslsmith_div_vec4_u32(vec4<u32>(0u, 35744u, 4766u, global2.x), vec4<u32>(0u, 33843u, arg_0.x, 73124u)), vec4<u32>(reverseBits(arg_0.x), _wgslsmith_add_u32(global2.x, 0u), global2.x, ~arg_0.x)), 31983u, ~_wgslsmith_mult_u32(~arg_0.x, global2.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_2(~vec3<u32>(max(26636u, global2.x), global2.x, global2.x) & func_3(vec2<u32>(_wgslsmith_div_u32(global2.x, global2.x), countOneBits(global2.x))));
    let var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(1u, var_1.a.x, firstLeadingBit(abs(0u))), ~87863u, 0u, var_1.a.x);
    var var_3 = reverseBits(_wgslsmith_sub_u32(var_2.x, ~(~0u)));
    global2 = select(vec3<u32>((~global2.x | var_1.a.x) | global2.x, _wgslsmith_dot_vec4_u32(var_2, firstLeadingBit(var_2 | var_2)), ~(~abs(var_1.a.x))), func_3(func_3(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(var_1.a.x, var_2.x)), var_1.a.zx)).yz), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) != -399f), select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(global0[_wgslsmith_index_u32(countOneBits(global2.x), 24u)]), true)));
    return global1[_wgslsmith_index_u32(global2.x, 11u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = ~arg_1.a ^ reverseBits(_wgslsmith_sub_i32(-14482i, u_input.b) << (func_3(vec2<u32>(arg_0.a.x, 40423u) ^ vec2<u32>(0u, arg_0.a.x)).x % 32u));
    let var_1 = global1[_wgslsmith_index_u32(~global2.x, 11u)];
    var var_2 = vec4<u32>(abs(arg_0.a.x), 1u, arg_0.a.x, ~arg_0.a.x);
    var var_3 = arg_0;
    var var_4 = ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2493i, arg_1.a, arg_1.a, u_input.b), ~vec4<i32>(2147483647i, var_0, u_input.b, u_input.b)) >> (vec4<u32>(~25430u, _wgslsmith_sub_u32(arg_0.a.x, var_2.x), _wgslsmith_dot_vec3_u32(var_2.zxz, var_3.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), var_3.a.zz)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-1491f + 1000f);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-681f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(~vec3<u32>(4294967295u, 1u, 1u)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, -361f, -1060f)), _wgslsmith_f_op_f32(min(1539f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1882f + 167f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-642f, -3207f, true))))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-917f, 881f, -797f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 149f, 2376f) * vec3<f32>(-1298f, 1766f, 975f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1725f, 901f, 152f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1117f, 1009f, -128f)))), _wgslsmith_f_op_f32(-393f * _wgslsmith_f_op_f32(-1f))).b));
    global3 = true;
    var var_1 = firstTrailingBit(~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, 46058u, global2.x), vec4<u32>(global2.x, 4294967295u, global2.x, global2.x)))));
    global2 = reverseBits(~(~_wgslsmith_add_vec3_u32(var_1.zyy | vec3<u32>(global2.x, global2.x, 4294967295u), vec3<u32>(1u, var_1.x, var_1.x))));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(1i, 37527i)), (_wgslsmith_mult_i32(-2147483647i << (global2.x % 32u), ~u_input.b) >> (var_1.x % 32u)) > ~_wgslsmith_clamp_i32(15362i, abs(-13278i), arg_0));
    return Struct_2(var_1.wyx);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, -246f, -229f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(140f, -1000f, -764f), vec3<f32>(1113f, -566f, 923f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1312f)))).b;
    global3 = true | !arg_1;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1773f, -1658f, 253f, -1392f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-157f, -576f, 381f, 224f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, 1361f, -1000f, -2036f)), vec4<f32>(413f, 760f, 1261f, 1339f))))), vec4<f32>(1f, 1f, 1f, 1f));
    let var_2 = Struct_2(abs(arg_0.a >> ((vec3<u32>(8399u, global2.x, global2.x) & arg_0.a) % vec3<u32>(32u))));
    var var_3 = vec3<i32>(max(-2845i, ~(-u_input.a.x) | ~(2147483647i | u_input.b)), -_wgslsmith_mult_i32(~_wgslsmith_div_i32(u_input.a.x, 0i), u_input.a.x), -52016i);
    return _wgslsmith_mod_i32((1i << (arg_0.a.x % 32u)) | _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-13855i, -1i, var_3.x)), reverseBits(-vec3<i32>(var_3.x, -1i, 1i))), -19956i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    global0 = array<vec4<bool>, 24>();
    var var_0 = vec4<i32>(abs(func_5(func_1(u_input.a.x), false)), -52794i, _wgslsmith_sub_i32(u_input.a.x, 5854i) | -u_input.b, firstTrailingBit(_wgslsmith_mult_i32(-3173i, ~(-u_input.a.x))));
    global2 = ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(global2.x, 27067u, global2.x)), _wgslsmith_add_u32(global2.x, global2.x), _wgslsmith_add_u32(global2.x, 21438u))), vec3<u32>(~global2.x >> (func_1(1i).a.x % 32u), 1u, 4294967295u));
    let var_1 = !global0[_wgslsmith_index_u32(global2.x, 24u)];
    var var_2 = _wgslsmith_f_op_f32(1169f - _wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1129f - -1739f), -530f))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -573f))), -279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-246f)) - _wgslsmith_f_op_f32(f32(-1f) * -763f)));
    var var_4 = vec4<bool>(var_1.x, var_1.x, all(var_1), false);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(18599u, ~(vec4<u32>(~global2.x, reverseBits(32848u), 1u, 4294967295u) >> (firstTrailingBit(select(vec4<u32>(6353u, global2.x, global2.x, 5169u), vec4<u32>(global2.x, 4294967295u, 8828u, global2.x), var_1.x)) % vec4<u32>(32u))));
}

