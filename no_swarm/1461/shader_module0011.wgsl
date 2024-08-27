struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<u32>(47819u, 32468u, 0u), 4294967295u), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 66680u), Struct_1(vec3<u32>(1u, 48121u, 0u), 8031u), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 63389u), Struct_1(vec3<u32>(4294967295u, 12714u, 1u), 1u), Struct_1(vec3<u32>(0u, 4294967295u, 17270u), 1u), Struct_1(vec3<u32>(0u, 4067u, 1u), 0u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 12590u), 3329u), Struct_1(vec3<u32>(0u, 12758u, 0u), 1u), Struct_1(vec3<u32>(4294967295u, 82422u, 4294967295u), 12994u), Struct_1(vec3<u32>(0u, 0u, 4294967295u), 0u), Struct_1(vec3<u32>(38778u, 112462u, 37986u), 0u), Struct_1(vec3<u32>(8085u, 67187u, 1u), 4294967295u), Struct_1(vec3<u32>(8453u, 0u, 4294967295u), 30591u), Struct_1(vec3<u32>(0u, 106835u, 1u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 1344u, 8890u), 0u), Struct_1(vec3<u32>(94703u, 49993u, 4294967295u), 68485u), Struct_1(vec3<u32>(1140u, 4294967295u, 0u), 26951u), Struct_1(vec3<u32>(4294967295u, 0u, 14323u), 0u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 90402u), 24679u), Struct_1(vec3<u32>(13394u, 38554u, 0u), 0u), Struct_1(vec3<u32>(91854u, 4294967295u, 0u), 4294967295u), Struct_1(vec3<u32>(16858u, 33558u, 25461u), 4294967295u), Struct_1(vec3<u32>(32553u, 4294967295u, 0u), 1u));

var<private> global1: array<u32, 20> = array<u32, 20>(0u, 4294967295u, 0u, 27598u, 13879u, 65683u, 4294967295u, 1u, 37041u, 9506u, 0u, 1u, 4294967295u, 4294967295u, 4271u, 1u, 4294967295u, 66323u, 1u, 1u);

var<private> global2: f32 = 314f;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(4294967295u, 4294967295u, 80324u), 4294967295u);

var<private> global4: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(36216i, 2147483647i, -9086i, 1i), vec4<i32>(-1i, -1i, 25390i, 17932i), vec4<i32>(-1i, 11662i, -8670i, 0i), vec4<i32>(0i, -54893i, -1i, 15939i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-309f, 708f, 405f), vec3<f32>(-1465f, -160f, 1491f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, 893f, -823f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1275f, -436f, 954f) + vec3<f32>(-1207f, -1578f, -2138f))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -520f, 1022f), vec3<f32>(587f, -485f, -1000f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f - _wgslsmith_div_f32(-1000f, -177f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1558f, 1051f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), any(select(vec3<bool>(true, true, arg_1.b != 1u), select(vec3<bool>(arg_2, arg_2, arg_0), select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_0, arg_0), true), vec3<bool>(false, arg_0, true)), true))));
    let var_1 = 2085f;
    global4 = array<vec4<i32>, 4>();
    global1 = array<u32, 20>();
    var var_2 = _wgslsmith_f_op_f32(sign(-1817f));
    return arg_1.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<i32> {
    global3 = arg_3;
    let var_0 = i32(-1i) * -1i;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(exp2(arg_1))));
    var var_1 = ~vec3<u32>(~1u, ~global1[_wgslsmith_index_u32(arg_0.x, 20u)], ~arg_3.b ^ _wgslsmith_mod_u32(4294967295u, 37933u)) >> (vec3<u32>(global1[_wgslsmith_index_u32(arg_3.a.x, 20u)] >> (~countOneBits(65459u) % 32u), ~firstLeadingBit(func_3(false, global0[_wgslsmith_index_u32(0u, 24u)], true)), ~arg_0.x) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)));
    return vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.b, min(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.a, var_0, 798i)), u_input.b | u_input.b) ^ u_input.b), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(var_0, 36033i) >> (global3.a.xy % vec2<u32>(32u))), 1i << (arg_3.a.x % 32u)));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), abs(0i))), u_input.a, _wgslsmith_mult_i32(21035i, -5718i)), u_input.b);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), global3.a.x & reverseBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global1[_wgslsmith_index_u32(global3.b, 20u)], global3.b, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global3.a.x, 20u)], 26430u)), ~vec4<u32>(34930u, global3.b, global3.b, global3.a.x)))), 24u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-766f, 1406f), vec2<f32>(-1808f, 149f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-866f, 682f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(477f, _wgslsmith_f_op_f32(f32(-1f) * -266f))))));
    let var_3 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 16062u, var_1.a.x, 1u & global1[_wgslsmith_index_u32(4294967295u, 20u)])), vec4<u32>(~(~global3.b ^ 4294967295u), countOneBits(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(79190u, 20u)], global3.b) & ~84341u), ~94814u, ~var_1.a.x));
    let var_4 = _wgslsmith_div_vec2_u32(~var_1.a.xz, ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(var_1.a.zx << (var_1.a.zy % vec2<u32>(32u))), ~abs(var_1.a.xy), max(vec2<u32>(56191u, 1u), global3.a.zy) | ~global3.a.yy));
    return global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(23101u, abs(~var_4.x)), global3.a.x)), 20u)];
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = func_5(!(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(337f + 1780f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-649f)), -1917f))), true, func_4(vec2<u32>(min(global3.b, global1[_wgslsmith_index_u32(func_3(var_0, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3047u, 20u)], 24u)], false), 20u)]), firstTrailingBit(global1[_wgslsmith_index_u32(~45808u, 20u)])), _wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-312f)))), vec4<f32>(1025f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1844f * 165f) + _wgslsmith_f_op_f32(2330f + -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-267f, 1800f)), _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -946f)))), global0[_wgslsmith_index_u32(global3.a.x, 24u)]));
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    return Struct_1(~(vec3<u32>(global1[_wgslsmith_index_u32(61865u << (global3.b % 32u), 20u)], ~140531u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 20u)], 20u)]) | ~max(vec3<u32>(global3.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 4294967295u), global3.a)), global1[_wgslsmith_index_u32(global3.b, 20u)]);
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 20>();
    let var_0 = global0[_wgslsmith_index_u32(11856u, 24u)];
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~4294967295u, 20u)], global3.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -245f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1432f, 474f)))))) * _wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(147f, -950f)) - _wgslsmith_f_op_f32(f32(-1f) * -1349f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-406f, -504f)))));
    let var_1 = -384f;
    var var_2 = func_1();
    global4 = array<vec4<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(u_input.b.x), ~(~1i), ~u_input.a), global3.b);
}

