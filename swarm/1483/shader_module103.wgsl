struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(-965f, 1114f, 1000f, 372f), -468f, vec3<i32>(2147483647i, 0i, -13587i)), Struct_1(vec4<f32>(1749f, -713f, 592f, 1100f), -566f, vec3<i32>(-22255i, -14327i, 2147483647i)), Struct_1(vec4<f32>(-265f, 1355f, 1444f, -617f), 1000f, vec3<i32>(1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<f32>(987f, -268f, 770f, -1254f), -125f, vec3<i32>(-53854i, 1i, 0i)), Struct_1(vec4<f32>(-509f, 1000f, -1000f, -103f), -717f, vec3<i32>(-1i, 11208i, 36198i)), Struct_1(vec4<f32>(584f, 526f, 635f, -574f), 1059f, vec3<i32>(-1i, -10078i, 0i)), Struct_1(vec4<f32>(-1440f, 856f, -1000f, -1960f), -598f, vec3<i32>(1i, 2147483647i, i32(-2147483648))), Struct_1(vec4<f32>(955f, -1355f, -680f, 341f), 707f, vec3<i32>(-1i, 1i, -58750i)), Struct_1(vec4<f32>(-678f, 3925f, -823f, -2769f), -1091f, vec3<i32>(2478i, -14315i, 2935i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    return arg_2.b.x;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    global0 = array<Struct_1, 9>();
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, 66622u, 0u, 4294967295u) >> (~u_input.a % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, ~u_input.a), vec4<u32>(u_input.a.x, 73479u, u_input.a.x, func_3(arg_0, Struct_3(global0[_wgslsmith_index_u32(26462u, 9u)], -1648f, Struct_1(vec4<f32>(1000f, -2236f, -791f, -602f), -691f, vec3<i32>(-34481i, 0i, -21442i)), vec2<i32>(0i, 2147483647i), -1578f), Struct_4(global0[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a))), u_input.a)), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, -256f, -512f, 1467f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1430f, -1979f, -384f, 1086f)))) - vec4<f32>(_wgslsmith_f_op_f32(660f + -904f), _wgslsmith_f_op_f32(abs(-576f)), -1829f, _wgslsmith_f_op_f32(f32(-1f) * -723f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<i32>(~(-2147483647i), 1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(0i, 0i), 11408i))), -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, -2147483647i), vec4<i32>(-2147483647i, 16017i, -24034i, 1i)), i32(-1i) * -35818i), min(max(vec2<i32>(0i, -1i), vec2<i32>(-1i, 0i)), ~vec2<i32>(25644i, 1151i))), 1427f);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-309f, var_0.e, var_0.a.b, var_0.e)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-345f, var_0.b) * _wgslsmith_f_op_f32(sign(var_0.e))))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -1i, var_0.d.x), select(var_0.c.c, vec3<i32>(6646i, var_0.d.x, -1i), arg_0)), select(~var_0.a.c, vec3<i32>(0i, var_0.d.x, 0i), vec3<bool>(arg_0, arg_0, false)), -reverseBits(vec3<i32>(var_0.d.x, var_0.d.x, var_0.a.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1535f, _wgslsmith_f_op_f32(972f + var_0.b)))) - 305f), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e, 512f, var_0.c.b, var_0.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, var_0.a.a.x, var_0.b, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.c.b)))) * -720f), vec3<i32>(_wgslsmith_mult_i32(var_0.d.x, reverseBits(2322i)), ~var_0.d.x, -21927i)), var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1403f, _wgslsmith_f_op_f32(select(-1079f, var_0.c.b, arg_0))) - _wgslsmith_f_op_f32(var_0.e + 824f)), -566f));
    let var_2 = 20073u;
    return ~(~(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10735u, 1u, var_2), vec3<u32>(16217u, 1u, var_2)), u_input.c) & (vec2<u32>(var_2, u_input.a.x) << (countOneBits(u_input.a.wy) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = (arg_2.c.c >> ((arg_2.b << (u_input.a.zxw % vec3<u32>(32u))) % vec3<u32>(32u))) >> ((~firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.b.x, arg_0.x, arg_0.x), arg_2.b)) | ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.b, vec3<u32>(4294967295u, 0u, u_input.b)), ~u_input.a.xxw, _wgslsmith_sub_vec3_u32(u_input.a.ywz, arg_2.b))) % vec3<u32>(32u));
    var var_1 = Struct_4(arg_2.c, vec4<u32>(_wgslsmith_add_u32(1u, ~1u), arg_2.b.x, u_input.b << (25603u % 32u), u_input.b));
    var_0 = arg_2.c.c;
    let var_2 = arg_2.c;
    let var_3 = firstLeadingBit(abs(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.x, -17063i), vec3<i32>(36581i, 0i, -9436i)), _wgslsmith_sub_i32(var_0.x, var_1.a.c.x))));
    return countOneBits(countOneBits(_wgslsmith_div_i32(arg_2.c.c.x, var_3.x)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    var var_0 = func_4(func_2(true), _wgslsmith_div_f32(210f, _wgslsmith_f_op_f32(trunc(1678f))), Struct_2(global0[_wgslsmith_index_u32(abs(~abs(arg_2.x)), 9u)], _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(39934u, arg_2.x, 4294967295u)), vec3<u32>(arg_2.x, arg_0, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, 1u, arg_0), arg_2.zxz, arg_2.xxw)), abs(~u_input.a.xyy)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-444f, 219f, -688f, 476f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - 1000f)), reverseBits(vec3<i32>(37338i, -25012i, arg_1))), arg_1, -180f));
    var var_1 = _wgslsmith_clamp_i32(arg_1 << (~(~_wgslsmith_add_u32(42997u, 24776u)) % 32u), -24185i, ~15427i);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1129f + 664f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f + -666f) - _wgslsmith_f_op_f32(select(733f, -699f, true)))))))));
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1300f, var_2, var_2, -432f))))) * vec4<f32>(var_2, _wgslsmith_f_op_f32(484f + var_2), _wgslsmith_div_f32(var_2, 226f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1461f)) * var_2), -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(26454i, 20989i, 2147483647i)), vec3<i32>(29820i, arg_1, arg_1))), min(firstLeadingBit(abs(_wgslsmith_add_vec4_u32(arg_2, u_input.a))), u_input.a));
    return var_3.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3.a;
    var var_1 = 23046u;
    var var_2 = arg_1.c.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = func_5(u_input.a.zyw, Struct_2(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), -765f, ~(~vec3<i32>(-6709i, -15349i, 25297i))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.wyx) & ~(~vec3<u32>(u_input.b, u_input.a.x, 995u)), func_1(~_wgslsmith_add_u32(u_input.b, 1u), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(8505i, -2147483647i, -33048i, -1i), vec4<i32>(1i, 0i, 1i, -78293i))), u_input.a), 18870i, 246f), vec2<bool>(true, true), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], min(max(select(u_input.a.xzx, vec3<u32>(u_input.b, u_input.b, u_input.b), true), vec3<u32>(0u, 22079u, 1u)), ~vec3<u32>(u_input.a.x, u_input.c, u_input.b)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1552f, 480f)), vec3<i32>(~0i, abs(-1i), 11828i)), 2147483647i, -1842f));
    var var_2 = !all(vec3<bool>(true, true, 1i != select(1i, 63424i, false)));
    var_2 = false;
    var_2 = all(vec3<bool>(true, true, true));
    let var_3 = 2043i;
    var_2 = ~(-2147483647i) == var_3;
    var var_4 = ~u_input.a.xx;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-411f)))), _wgslsmith_f_op_f32(-709f * var_1.e), -475f), vec2<i32>(func_4(_wgslsmith_mult_vec2_u32(min(u_input.a.wz, vec2<u32>(15589u, 0u)), _wgslsmith_mult_vec2_u32(var_1.b.yz, u_input.a.xx)), 727f, var_1), -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_5.a.x, func_1(1u, 0i, vec4<u32>(var_1.b.x, u_input.a.x, 1u, u_input.a.x)).a.x)))), _wgslsmith_f_op_f32(ceil(var_5.b)), var_1.b);
}

