struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<bool>(true, true), Struct_1(true, vec3<u32>(20942u, 30520u, 33512u), 26406u, vec2<f32>(1000f, 2015f), 883f), Struct_1(true, vec3<u32>(1u, 33004u, 30677u), 32344u, vec2<f32>(1116f, 837f), -132f), Struct_1(true, vec3<u32>(0u, 4294967295u, 0u), 0u, vec2<f32>(-418f, 200f), 1000f)), Struct_2(vec2<bool>(true, true), Struct_1(true, vec3<u32>(51219u, 4294967295u, 90536u), 0u, vec2<f32>(182f, 871f), -744f), Struct_1(true, vec3<u32>(58501u, 4294967295u, 94576u), 41852u, vec2<f32>(-386f, -111f), 745f), Struct_1(true, vec3<u32>(4294967295u, 4746u, 1u), 1u, vec2<f32>(-997f, -113f), -1000f)), Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<u32>(49036u, 0u, 4294967295u), 24574u, vec2<f32>(-202f, 1343f), -438f), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 98866u), 45329u, vec2<f32>(2561f, 239f), 1209f), Struct_1(true, vec3<u32>(1u, 1u, 35849u), 0u, vec2<f32>(600f, -535f), 235f)), Struct_2(vec2<bool>(false, false), Struct_1(false, vec3<u32>(0u, 1u, 4294967295u), 65906u, vec2<f32>(-1421f, -2141f), 1399f), Struct_1(true, vec3<u32>(8786u, 4107u, 0u), 0u, vec2<f32>(-1368f, 1185f), 762f), Struct_1(true, vec3<u32>(0u, 84533u, 67038u), 1u, vec2<f32>(-873f, 1000f), -2345f)), Struct_2(vec2<bool>(true, true), Struct_1(true, vec3<u32>(3945u, 1u, 63674u), 4294967295u, vec2<f32>(1674f, 484f), -118f), Struct_1(false, vec3<u32>(521u, 1u, 4294967295u), 59759u, vec2<f32>(-1107f, 634f), -547f), Struct_1(true, vec3<u32>(34118u, 0u, 33406u), 0u, vec2<f32>(817f, -740f), -654f)), Struct_2(vec2<bool>(false, true), Struct_1(true, vec3<u32>(1u, 1u, 42586u), 43784u, vec2<f32>(111f, -511f), -202f), Struct_1(false, vec3<u32>(1u, 13758u, 32104u), 4294967295u, vec2<f32>(-1904f, -2122f), 615f), Struct_1(true, vec3<u32>(0u, 4294967295u, 28402u), 4294967295u, vec2<f32>(807f, 2281f), 1245f)), Struct_2(vec2<bool>(true, true), Struct_1(false, vec3<u32>(4294967295u, 72060u, 0u), 1u, vec2<f32>(2166f, 1767f), -564f), Struct_1(true, vec3<u32>(8838u, 44509u, 78924u), 0u, vec2<f32>(511f, 1000f), 571f), Struct_1(false, vec3<u32>(4294967295u, 40861u, 21649u), 0u, vec2<f32>(850f, -132f), -3141f)), Struct_2(vec2<bool>(false, true), Struct_1(true, vec3<u32>(56643u, 6085u, 137982u), 0u, vec2<f32>(654f, 282f), -1000f), Struct_1(false, vec3<u32>(4294967295u, 1u, 6834u), 1362u, vec2<f32>(-142f, 1696f), -1408f), Struct_1(false, vec3<u32>(38917u, 4294967295u, 26312u), 4294967295u, vec2<f32>(602f, -1948f), -2161f)), Struct_2(vec2<bool>(true, true), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 21374u, vec2<f32>(304f, -1000f), -1963f), Struct_1(false, vec3<u32>(0u, 1u, 0u), 0u, vec2<f32>(1532f, -598f), 587f), Struct_1(true, vec3<u32>(1u, 4294967295u, 4294967295u), 29251u, vec2<f32>(-330f, 1579f), 1000f)), Struct_2(vec2<bool>(true, false), Struct_1(true, vec3<u32>(0u, 37923u, 0u), 133586u, vec2<f32>(2798f, 602f), 1039f), Struct_1(false, vec3<u32>(16711u, 1u, 0u), 4294967295u, vec2<f32>(-447f, 2178f), -553f), Struct_1(true, vec3<u32>(1u, 1u, 25864u), 42183u, vec2<f32>(-187f, -196f), 535f)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = ~(~arg_0) >> (_wgslsmith_mod_u32(arg_1 << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.b, arg_2.b), ~u_input.a.x, _wgslsmith_mod_u32(7189u, arg_2.b.x), firstTrailingBit(78265u)), vec4<u32>(abs(arg_2.c), 1u, firstTrailingBit(arg_2.b.x), arg_2.c & 40301u))) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1706f, -594f, 753f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, -833f, arg_2.e)), arg_2.a)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(751f, 602f)) - _wgslsmith_f_op_f32(abs(1000f))), -1383f, _wgslsmith_f_op_f32(-arg_2.e))));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f - var_1.x));
    var var_4 = arg_2;
    return _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, 0u, 0u), vec3<u32>(var_4.b.x, 19432u, arg_2.c)))), _wgslsmith_clamp_vec3_u32(reverseBits(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(32350u, var_2.c, 4294967295u), arg_2.b))), vec3<u32>(1u, arg_1, 4294967295u), ~var_2.b));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    global0 = array<Struct_2, 10>();
    let var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, arg_1, false)), true), vec2<bool>(any(vec4<bool>(arg_1, true, arg_1, arg_1)), true)), Struct_1(all(!(!vec3<bool>(arg_1, arg_1, arg_1))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 12387u, ~1u), ~vec3<u32>(58886u, u_input.a.x, 1u)), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 + 626f))), arg_0), -487f), Struct_1(false, (vec3<u32>(4294967295u, u_input.a.x, 0u) & func_3(-12263i, 18836u, Struct_1(true, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec2<f32>(arg_0, arg_0), arg_0))) & vec3<u32>(35984u, ~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 1u))), 12348u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(190f, arg_0) + vec2<f32>(arg_0, -1392f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1587f * arg_0), -1000f))), Struct_1(arg_1, select(select(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 53735u, 1u), vec3<bool>(arg_1, arg_1, arg_1)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(21251u, 0u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 0u))), arg_1), ~54428u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-204f, arg_0)))))));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-740f, 391f)) * _wgslsmith_div_f32(var_0.b.d.x, var_0.b.d.x)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.e), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2056f, -461f))), _wgslsmith_div_f32(3272f, _wgslsmith_div_f32(-1094f, arg_0)))), 911f));
    var var_2 = true;
    var_1 = var_0.c.d;
    return _wgslsmith_mod_u32(1u, ~54928u | u_input.a.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_2(vec2<bool>(arg_3.x, !all(vec4<bool>(false, false, arg_3.x, arg_2.a))), Struct_1(arg_2.a, arg_1 >> (arg_2.b % vec3<u32>(32u)), arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_f_op_f32(trunc(173f))), Struct_1(arg_2.a, ~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_2.b, arg_2.b), arg_2.b.x, ~u_input.a.x), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * 120f) * -750f), arg_2.d.x), arg_2.e), Struct_1(all(select(arg_3.xz, vec2<bool>(true, true), vec2<bool>(true, true))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 16624u) & arg_1, arg_2.b), _wgslsmith_clamp_u32(4294967295u, 1u, _wgslsmith_div_u32(~1u, arg_2.b.x)), _wgslsmith_f_op_vec2_f32(-arg_0.xx), arg_0.x));
    let var_1 = Struct_2(select(vec2<bool>(true, true), arg_3.zw, any(!vec4<bool>(arg_3.x, true, true, arg_2.a))), Struct_1(arg_2.a, ~_wgslsmith_mod_vec3_u32(var_0.d.b << (var_0.b.b % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, var_0.b.c, arg_1.x)), func_2(-1039f, !(true && arg_2.a), select(vec3<i32>(36738i, 1i, -2147483647i), vec3<i32>(57991i, 1i, 1i), arg_2.a)), arg_0.xx, _wgslsmith_f_op_f32(step(879f, 1830f))), Struct_1(any(!select(arg_3.yy, var_0.a, vec2<bool>(arg_3.x, arg_2.a))), _wgslsmith_sub_vec3_u32(~arg_2.b, var_0.d.b), arg_2.b.x, arg_2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(500f + 2449f))) + -1000f)), Struct_1(all(arg_3) && select(all(vec3<bool>(true, var_0.a.x, var_0.a.x)), select(true, arg_3.x, true), arg_0.x <= -582f), (var_0.b.b & vec3<u32>(arg_1.x, 32651u, 81667u)) ^ ~(var_0.c.b >> (vec3<u32>(var_0.d.b.x, 10192u, 1u) % vec3<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.d.b.yy, ~vec2<u32>(0u, 4294967295u)), ~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, arg_2.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b.e)), _wgslsmith_f_op_f32(-arg_2.e)))));
    global0 = array<Struct_2, 10>();
    var var_2 = Struct_2(select(var_1.a, var_1.a, select(vec2<bool>(true, !var_0.d.a), var_1.a, true)), var_1.d, var_1.c, Struct_1(var_1.c.a, firstTrailingBit(select(var_1.c.b, var_1.d.b, arg_3.ywz) & arg_2.b), _wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(4294967295u, 4294967295u, arg_1.x))), func_3(~(-1i), _wgslsmith_mod_u32(1u, arg_2.b.x), var_0.d).x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1821f * var_1.d.e) - _wgslsmith_f_op_f32(max(-789f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.e), -1122f)), _wgslsmith_f_op_f32(-var_0.d.e)));
    var_0 = Struct_2(var_2.a, Struct_1(!all(select(var_0.a, var_2.a, arg_3.ww)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 4294967295u, 52807u), vec3<u32>(var_2.b.c, 0u, arg_1.x)) << (reverseBits(var_1.c.b) % vec3<u32>(32u)), select(var_1.d.b, ~vec3<u32>(var_0.b.c, var_2.c.b.x, arg_2.b.x), arg_3.xww)), func_3(abs(0i) << ((1u >> (arg_2.b.x % 32u)) % 32u), firstTrailingBit(_wgslsmith_sub_u32(arg_1.x, arg_1.x)), var_2.d).x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(460f, 150f)), arg_2.d.x), arg_2, var_0.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1448f, arg_0.x, arg_0.x, -573f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.e, 1577f, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1266f, arg_2.d.x, arg_2.d.x, 1901f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -474f, var_0.b.d.x, arg_2.d.x), vec4<f32>(-299f, var_2.b.e, -861f, 860f))) * vec4<f32>(arg_2.e, var_1.d.d.x, 1497f, -616f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-368f, arg_2.e, 427f, 380f)))), all(!arg_3.wxz)))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), u_input.a.x, 1u), ~firstTrailingBit(u_input.a.x));
    let var_2 = !all(vec4<bool>(true, true, true, true)) || false;
    return !(!(!(!var_2) || var_2));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = reverseBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(~arg_2, 13984u), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), firstTrailingBit(vec2<u32>(u_input.a.x, 9999u))), _wgslsmith_sub_u32(~1u, arg_2))));
    global0 = array<Struct_2, 10>();
    var var_1 = global0[_wgslsmith_index_u32(func_3(countOneBits(-(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -84704i, 0i, -80671i), vec4<i32>(65058i, -2147483647i, -1i, -2147483647i)) & -45628i)), 16570u, Struct_1(true, vec3<u32>(4913u, arg_2, 4294967295u), _wgslsmith_sub_u32(0u, arg_2), vec2<f32>(_wgslsmith_f_op_f32(285f * -573f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-806f)))), _wgslsmith_f_op_f32(ceil(636f)))).x, 10u)];
    var var_2 = Struct_1(any(!vec2<bool>(true, arg_0.x)), vec3<u32>(~24835u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.d.b.xy | vec2<u32>(4294967295u, u_input.a.x), ~vec2<u32>(var_0.x, u_input.a.x)), vec2<u32>(6427u ^ var_1.b.b.x, _wgslsmith_clamp_u32(var_0.x, 4294967295u, 0u))), ~func_2(_wgslsmith_f_op_f32(var_1.b.d.x * -1048f), any(arg_0), ~vec3<i32>(-2147483647i, 38722i, -26861i))), 32419u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-313f, -1241f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1471f, var_1.b.d.x), vec2<f32>(-588f, -766f))), arg_1)))) * var_1.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(306f + _wgslsmith_f_op_f32(var_1.c.d.x * _wgslsmith_f_op_f32(-var_1.b.d.x))), -1000f));
    var var_3 = global0[_wgslsmith_index_u32(min(var_0.x, var_0.x), 10u)];
    return Struct_2(select(!vec2<bool>(false, !arg_3.x), vec2<bool>(false, all(!vec4<bool>(arg_3.x, arg_0.x, arg_0.x, false))), var_2.a), Struct_1(true, reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1.c.b.x, u_input.a.x), select(vec3<u32>(arg_2, var_2.b.x, var_2.c), vec3<u32>(6903u, 0u, u_input.a.x), true))), ~arg_2, _wgslsmith_f_op_vec2_f32(var_2.d * var_2.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_3.b.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-656f, -1666f)))))), var_3.b, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 29875u;
    let var_1 = func_5(vec3<bool>(!any(vec2<bool>(true, false)), select(all(vec4<bool>(true, true, true, true)), true, func_4(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(390f, -209f, -275f), vec3<u32>(u_input.a.x, 23855u, u_input.a.x), Struct_1(true, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 46736u, vec2<f32>(-1083f, -832f), 1103f), vec4<bool>(true, false, true, false))))), true), true, ~4294967295u, vec3<bool>(true, true, any(vec2<bool>(any(vec3<bool>(false, false, false)), false))));
    var var_2 = vec3<u32>(var_1.d.b.x ^ _wgslsmith_mult_u32(var_1.c.c, ~firstTrailingBit(6508u)), func_3(0i, ~u_input.a.x, func_5(select(vec3<bool>(true, var_1.a.x, false), !vec3<bool>(false, var_1.d.a, var_1.d.a), var_1.a.x), all(!vec3<bool>(var_1.d.a, false, false)), firstLeadingBit(_wgslsmith_div_u32(14677u, 17335u)), !select(vec3<bool>(true, var_1.d.a, false), vec3<bool>(true, var_1.a.x, var_1.d.a), vec3<bool>(false, var_1.b.a, true))).c).x, _wgslsmith_mult_u32(1u, abs(4294967295u | var_1.c.b.x) | _wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.a.x), 1u)));
    var_2 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.e, var_1.b.d.x, 1000f))) + vec3<f32>(var_1.d.e, 1f, var_1.d.d.x)), var_1.b.b, var_1.b, select(!vec4<bool>(var_1.a.x, false, var_1.d.a, false), !(!vec4<bool>(true, var_1.b.a, var_1.d.a, var_1.a.x)), -1000f == _wgslsmith_f_op_f32(max(var_1.c.e, 906f))))), 396f, ~(~(u_input.a.x & func_2(-278f, false, vec3<i32>(2147483647i, 4077i, -28142i)))));
}

