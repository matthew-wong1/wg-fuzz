struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(213f, 2205f, -1122f) * vec3<f32>(-567f, -718f, -221f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-476f, -552f, -546f)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, -1063f, 1401f)))))));
    let var_1 = vec4<u32>(61565u, 0u >> (arg_1.x % 32u), u_input.a.x, 86596u);
    var var_2 = Struct_1(~min(vec3<i32>(688i, u_input.b, u_input.b), countOneBits(firstLeadingBit(vec3<i32>(-51064i, arg_0.c.x, u_input.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(1000f + var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f * 760f) + -795f), vec4<f32>(var_0.x, 710f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_0.x + -180f), 895f >= var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(sign(var_0.x))), !vec3<bool>(arg_0.b, false, true));
    var var_3 = ~(select(select(vec4<u32>(1u, 83776u, 0u, 4294967295u), arg_0.a, !vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), arg_1, var_2.e.x) >> ((~(~arg_0.a) ^ _wgslsmith_add_vec4_u32(var_1 & vec4<u32>(arg_0.a.x, u_input.a.x, 7133u, u_input.a.x), vec4<u32>(2244u, 47960u, arg_0.a.x, arg_0.a.x))) % vec4<u32>(32u)));
    let var_4 = firstTrailingBit(abs(_wgslsmith_div_u32(2278u, var_1.x)));
    return ~vec2<i32>(var_2.a.x, -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = -firstTrailingBit(func_3(Struct_3(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), true, _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -6333i, u_input.b), vec3<i32>(-49628i, u_input.b, u_input.d))), vec4<u32>(~u_input.a.x, ~u_input.a.x, abs(u_input.a.x), reverseBits(u_input.a.x))));
    var var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx), ~(u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_add_u32(firstTrailingBit(0u) >> (max(15029u, 20968u) % 32u), ~1u)), 49372u, u_input.a.x);
    let var_2 = max(reverseBits(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, var_1.x) & vec3<u32>(var_1.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(42443u, 1u, u_input.a.x)), vec3<u32>(4294967295u, var_1.x, 22270u)), ~var_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(max(~u_input.a.x, firstTrailingBit(58198u)), ~30118u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 8949u) & vec4<u32>(1u, var_1.x, 1u, var_1.x), ~vec4<u32>(0u, var_1.x, var_1.x, 1u)), ~var_1.x ^ _wgslsmith_div_u32(u_input.a.x, 80408u)), countOneBits(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_3 = vec4<u32>(reverseBits(var_1.x ^ ~(~91748u)), ~_wgslsmith_dot_vec4_u32(min(var_2, var_2), var_2), ~var_1.x, 1u);
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, 129f, 1180f, 542f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -569f, -3970f, -1211f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-900f, 741f, -135f, 1202f), vec4<f32>(152f, 1020f, -568f, -964f))))), vec4<bool>(true, false, true, true))))));
    return Struct_1(select(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, -1i, 1i), ~vec3<i32>(-1i, 85971i, u_input.d))), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, -41988i), vec2<i32>(-19185i, -1i)), max(vec2<i32>(u_input.b, var_0.x), vec2<i32>(0i, var_0.x))), select(2147483647i, _wgslsmith_div_i32(var_0.x, -1i), true), _wgslsmith_clamp_i32(~(-1i), 32292i, u_input.b)), true), var_4.a.x, 449f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(-147f)), _wgslsmith_f_op_f32(-var_4.a.x), -1000f, _wgslsmith_f_op_f32(select(var_4.a.x, 1543f, true)))))), select(vec3<bool>(true, true, true), !vec3<bool>(true, any(vec3<bool>(true, true, false)), -552f > var_4.a.x), (true & all(vec4<bool>(true, false, false, true))) & (true & any(vec3<bool>(true, false, false)))));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec2<u32>(62950u, ~_wgslsmith_div_u32(2161u, 1u)) << ((firstLeadingBit(u_input.a.zy) >> (firstTrailingBit(u_input.a.zx) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(~firstTrailingBit(u_input.a.x ^ 13134u), 1u, select(1u, var_0.x, true), u_input.a.x), vec4<u32>(~firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 22945u)), ~(~(~10197u)), 1u, ~abs(25061u)));
    var var_2 = Struct_2(var_1.xy | u_input.a.xx, func_2());
    let var_3 = vec2<f32>(-156f, _wgslsmith_f_op_f32(260f * _wgslsmith_f_op_f32(f32(-1f) * -1997f)));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.b.d.yy - _wgslsmith_f_op_vec2_f32(vec2<f32>(-945f, -310f) - vec2<f32>(-828f, var_3.x))), var_2.b.d.wz))));
    return _wgslsmith_f_op_vec2_f32(max(var_2.b.d.xx, var_2.b.d.wx));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_sub_vec3_i32(-select(vec3<i32>(-36648i, 20920i, -1i), func_2().a, true), -abs(vec3<i32>(-45274i, arg_2, -14461i))), arg_1.x, arg_1.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1084f)), _wgslsmith_f_op_f32(ceil(arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1031f, arg_1.x, 1178f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -171f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, -1216f, 2296f)))))), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(any(vec3<bool>(true, false, false)), true, func_2().e.x), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> vec3<i32> {
    global0 = ~reverseBits(countOneBits(_wgslsmith_div_u32(0u, 37647u) << (arg_3.x % 32u)));
    global0 = 25850u;
    let var_0 = max(~firstLeadingBit(~(~arg_3.x)), u_input.a.x);
    var var_1 = vec3<i32>(43259i, _wgslsmith_sub_i32(26706i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(3889i, u_input.c, arg_0)), abs(vec3<i32>(-1i, u_input.b, arg_1.a.x))), vec3<i32>(-1i) * -arg_1.a)), firstTrailingBit(~(i32(-1i) * -1i)));
    var var_2 = Struct_3(arg_3, all(arg_1.e), _wgslsmith_clamp_vec3_i32(max(arg_1.a, vec3<i32>(25211i, 1i, var_1.x >> (arg_3.x % 32u))), abs(arg_1.a), ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -12406i, 2147483647i), arg_1.a), _wgslsmith_clamp_vec3_i32(arg_1.a, arg_1.a, vec3<i32>(42783i, arg_1.a.x, u_input.c)))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1i) * -func_5(u_input.c, func_4(u_input.a.x, _wgslsmith_f_op_vec2_f32(func_1()), -u_input.c), vec2<f32>(-491f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(~vec4<u32>(18699u, u_input.a.x, 81057u, 14857u)));
    var var_1 = vec2<f32>(293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)));
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, var_1.x, 122f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(600f, var_1.x, -522f, -1000f))))), _wgslsmith_f_op_vec4_f32(-func_4(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), vec2<f32>(var_1.x, var_1.x), ~55862i).d)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a.x, -353f))), _wgslsmith_f_op_f32(floor(-574f)));
    var var_3 = func_4(firstTrailingBit(~4294967295u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(-var_1.x)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(firstLeadingBit(0u), firstTrailingBit(u_input.a.x), u_input.a.x, 2071u) | (((vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) & vec4<u32>(1u, u_input.a.x, 4294967295u, 1u)) ^ vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) ^ _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(5239u, 1u, 63959u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 51566u, u_input.a.x), vec4<u32>(34118u, u_input.a.x, 12435u, 0u) | vec4<u32>(u_input.a.x, 8487u, 1u, u_input.a.x))), max(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a | u_input.a), ~u_input.a), select(~130989u, 4294967295u, !(!var_3.e.x))), _wgslsmith_div_vec3_f32(var_2.a.zxy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_3.b)), var_1.x))));
}

