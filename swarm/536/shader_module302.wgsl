struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(false, false, false), vec4<i32>(2147483647i, 60532i, 17680i, 1i)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(2147483647i, -1i, 2147483647i, -13004i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(1i, -27976i, -4618i, -14639i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-37354i, -6030i, 67941i, -1i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(38624i, 1i, -57434i, 2147483647i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-12938i, -36308i, -33786i, 0i)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(12272i, 1i, 0i, -1i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-1i, 1i, 4463i, 6001i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(2147483647i, i32(-2147483648), -13937i, -11991i)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-58893i, -1i, 2147483647i, -66424i)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(0i, -82048i, i32(-2147483648), -12590i)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-27658i, -1i, 2147483647i, 1i)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(-45382i, 9222i, -11293i, 0i)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(-6931i, -1i, i32(-2147483648), 2147483647i)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(27315i, -1i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<bool>(true, false, true), vec4<i32>(2147483647i, 2147483647i, 36389i, 0i)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-1i, -12264i, -8365i, i32(-2147483648))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1179f, 358f), _wgslsmith_f_op_vec2_f32(abs(arg_1.yz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.zx))) * arg_1.xz) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_f32(-323f + arg_1.x))))));
    var_0 = arg_1.zx;
    global1 = array<Struct_1, 17>();
    var var_1 = Struct_1(!vec3<bool>(select(true, arg_1.x != arg_0.b, !global0[_wgslsmith_index_u32(0u, 8u)]), arg_0.a.a.x | (global0[_wgslsmith_index_u32(arg_0.d.x, 8u)] == false), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 20814u & u_input.e.x), 8u)]), ~arg_0.a.b & -abs(reverseBits(vec4<i32>(16257i, 0i, arg_0.e.x, arg_0.e.x))));
    let var_2 = arg_0;
    return arg_0.d.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0, 17u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2567f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -316f))))));
    var_0 = Struct_1(vec3<bool>(!(arg_2 && true), !(arg_0 >= arg_0), !(_wgslsmith_f_op_f32(-2475f * 1021f) > _wgslsmith_f_op_f32(floor(235f)))), _wgslsmith_clamp_vec4_i32(var_0.b, -vec4<i32>(u_input.c, -var_0.b.x, -28537i >> (u_input.d.x % 32u), u_input.a), ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, var_0.b.x), vec3<i32>(arg_1, var_0.b.x, var_0.b.x)), 1i, u_input.a, -2147483647i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1538f, 2203f, 1000f) * vec3<f32>(var_1.x, var_1.x, var_1.x)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1507f, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, var_1.x, 154f) + vec3<f32>(-645f, -314f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -441f, var_1.x) + vec3<f32>(692f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_1.x, -871f), vec3<f32>(1004f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1518f, 953f, 739f))))));
    let var_3 = false;
    return Struct_1(!vec3<bool>(any(select(vec2<bool>(true, false), var_0.a.zz, vec2<bool>(true, var_0.a.x))), true, var_3), -var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> vec3<bool> {
    global1 = array<Struct_1, 17>();
    let var_0 = (select(true, true, global0[_wgslsmith_index_u32(15043u | arg_2.d.x, 8u)]) && !(!arg_2.c && false)) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(590f))) + 1194f) <= _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))));
    var var_1 = vec3<i32>(~(~2147483647i), -(-u_input.c & 2147483647i), 42648i);
    var var_2 = arg_1.x;
    var var_3 = 2195i;
    return arg_2.a.a;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global0 = array<bool, 8>();
    let var_0 = u_input.a;
    global1 = array<Struct_1, 17>();
    var var_1 = func_4(Struct_2(func_3(func_2(Struct_2(global1[_wgslsmith_index_u32(u_input.e.x, 17u)], 1072f, false, u_input.e, vec2<i32>(u_input.a, arg_0)), vec3<f32>(845f, -239f, -1299f), vec3<i32>(arg_0, u_input.c, 63794i), vec2<i32>(arg_0, u_input.c)) | min(4294967295u, u_input.e.x), _wgslsmith_div_i32(var_0, -3758i) & var_0, global0[_wgslsmith_index_u32(~1u, 8u)]), 898f, global0[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x << (u_input.e.x % 32u), ~1u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 94790u, 0u), u_input.e.wwz)), ~u_input.e), firstLeadingBit(~vec2<i32>(var_0, var_0))), ~vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 129976u), vec2<u32>(u_input.e.x, u_input.e.x)), 62535u, ~u_input.d.x), Struct_2(func_3(u_input.b, 3988i, !any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], false, true))), _wgslsmith_f_op_f32(-1f), select(true, true, true) != (1u > (u_input.e.x & 0u)), vec4<u32>(~0u, reverseBits(~4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 42544u), u_input.d), ~u_input.d), u_input.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(-18283i, u_input.c) | abs(vec2<i32>(var_0, arg_0)), vec2<i32>(~var_0, u_input.c))), select(vec4<bool>(false == (global0[_wgslsmith_index_u32(0u, 8u)] && global0[_wgslsmith_index_u32(4294967295u, 8u)]), global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.e.x, 4294967295u)), 8u)], any(vec2<bool>(global0[_wgslsmith_index_u32(1349u, 8u)], false)), !global0[_wgslsmith_index_u32(u_input.d.x | u_input.e.x, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], !any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(12549u, 8u)], false)), true, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(30485u, 8u)], global0[_wgslsmith_index_u32(20881u, 8u)], true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e.x, 8u)], true), global0[_wgslsmith_index_u32(countOneBits(u_input.e.x), 8u)]), vec4<bool>(true, any(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)])), all(vec3<bool>(false, true, true)), true), all(vec3<bool>(false, global0[_wgslsmith_index_u32(11248u, 8u)], true)))));
    var var_2 = func_3(~u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0, -1i) & _wgslsmith_add_i32(arg_0, arg_0), 41368i), vec2<i32>(~reverseBits(arg_0), ~(-var_0))), false).a.x;
    return ~vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, 9078u), _wgslsmith_mult_u32(u_input.d.x, 84653u ^ u_input.e.x) >> (4294967295u % 32u), 0u, abs(33093u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_1 = 0i;
    let var_2 = countOneBits(~(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.b.xz, vec2<i32>(var_0.b.x, -27362i)), ~vec2<i32>(var_1, var_0.b.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-530f, 816f, var_0.a.x))), -1153f))));
    var var_4 = var_0.a.zx;
    var_0 = Struct_1(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, max(_wgslsmith_add_i32(-68748i, u_input.c), 18520i), var_0.b.x & -2522i, ~(i32(-1i) * -1i)), _wgslsmith_sub_vec4_i32(-var_0.b << (func_1(var_0.b.x) % vec4<u32>(32u)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.x, u_input.c, -1i, 2017i), vec4<i32>(var_2.x, var_2.x, var_2.x, 7208i)))), -(~(-var_0.b))));
    var var_5 = Struct_2(func_3(~_wgslsmith_dot_vec2_u32(u_input.e.wy, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(33782u, 111226u))), -_wgslsmith_dot_vec3_i32(var_0.b.xwx & var_0.b.ywx, var_0.b.yxz), all(select(select(vec3<bool>(false, true, var_4.x), var_0.a, vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], true)), !var_0.a, true))), 739f, var_0.a.x, u_input.e, -reverseBits(-var_2));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.d.x >> (1u % 32u), _wgslsmith_sub_u32(var_5.d.x, _wgslsmith_mod_u32(~1u, _wgslsmith_add_u32(u_input.e.x, var_5.d.x))), ~(~(41769u << (u_input.d.x % 32u))), var_5.d.x), reverseBits(-_wgslsmith_div_i32(2147483647i, -30595i)));
}

