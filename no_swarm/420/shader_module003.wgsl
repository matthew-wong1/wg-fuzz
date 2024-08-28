struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: vec2<u32> = vec2<u32>(15156u, 35516u);

var<private> global3: array<vec2<bool>, 24>;

var<private> global4: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = vec2<u32>(_wgslsmith_mult_u32(~68714u, ~((global2.x & 0u) | countOneBits(arg_1.d))), ~u_input.b);
    var var_0 = ~abs(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-8145i, 2147483647i)) & vec2<i32>(u_input.a, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -3112i), vec2<i32>(u_input.a, 12689i))));
    return _wgslsmith_add_u32(firstLeadingBit(~arg_1.c.x), arg_1.c.x);
}

fn func_2() -> vec3<f32> {
    var var_0 = vec3<u32>(reverseBits(u_input.b), ~(~func_3(-1084f, Struct_1(1u, global1.yz, vec4<u32>(4294967295u, u_input.b, 4294967295u, 96721u), 2892u))), _wgslsmith_dot_vec3_u32(u_input.d.wyx, reverseBits(abs(~vec3<u32>(1u, 93887u, 4294967295u)))));
    global3 = array<vec2<bool>, 24>();
    var_0 = u_input.d.yxz;
    global0 = array<vec4<bool>, 14>();
    var var_1 = Struct_1(4294967295u, global3[_wgslsmith_index_u32(0u, 24u)], abs(u_input.d), ~_wgslsmith_clamp_u32(var_0.x, u_input.c, 89286u));
    return vec3<f32>(-226f, 341f, -433f);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(-639f + arg_1), arg_1) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -804f, 1558f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2()), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1749f), -321f, _wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = ~firstTrailingBit(~abs(6302u & arg_0.c.x));
    let var_2 = vec2<f32>(-910f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f - 135f) * 1274f), var_0.x)));
    global0 = array<vec4<bool>, 14>();
    var var_3 = Struct_1(~_wgslsmith_sub_u32(39140u, _wgslsmith_div_u32(4294967295u, var_1)), global1.zz, vec4<u32>(~abs(~global2.x), 0u, 4294967295u, 23305u), firstLeadingBit(_wgslsmith_mod_u32(~1u, select(3539u, 10782u, global1.x)) | (_wgslsmith_div_u32(var_1, var_1) >> (~global2.x % 32u))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<vec4<bool>, 14>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(abs(vec3<i32>(8291i, 1i, u_input.a))), vec3<i32>(~(u_input.a ^ u_input.a), ~(-51318i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(23533i, -45749i, u_input.a)), 22363i)), -firstTrailingBit(vec3<i32>(-42490i, u_input.a, -67224i)));
    var var_1 = func_1(arg_0, -1000f, max(countOneBits(~var_0), -2147483647i));
    let var_2 = ~vec3<i32>(-1i, 1i, max(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-34266i, -19004i), abs(u_input.a), countOneBits(u_input.a)), _wgslsmith_sub_i32(u_input.a, var_0)));
    var var_3 = vec2<u32>(~(arg_2.x | (~arg_2.x ^ _wgslsmith_mod_u32(15827u, arg_0.c.x))), firstLeadingBit(_wgslsmith_sub_u32(32165u, firstLeadingBit(~4294967295u))));
    return ~(-vec3<i32>(u_input.a, max(firstLeadingBit(-15358i), ~var_2.x), var_2.x | min(var_2.x, 2147483647i)));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_u32(func_1(Struct_1(arg_1, vec2<bool>(false, arg_3.b.x), arg_3.c, _wgslsmith_mult_u32(0u, global2.x)), _wgslsmith_f_op_f32(-arg_2.x), firstTrailingBit(abs(u_input.a))).a, ~global2.x, ~arg_1), global1.wx, func_1(arg_3, _wgslsmith_f_op_f32(-arg_2.x), 2147483647i).c, _wgslsmith_dot_vec3_u32(vec3<u32>(36404u, ~reverseBits(global2.x), min(~u_input.c, 1u)), arg_3.c.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~u_input.d.zy);
    let var_0 = func_5(_wgslsmith_clamp_vec3_i32(func_4(func_1(Struct_1(global2.x, vec2<bool>(global1.x, false), u_input.d, global2.x), -1188f, u_input.a), select(global1.x, global1.x, global1.x), u_input.d.www, Struct_1(u_input.b, vec2<bool>(true, true), u_input.d, 0u)) << (~vec3<u32>(10837u, 1u, u_input.c) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 2875i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, 81073i, u_input.a))), u_input.a, ~u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(59566u, 4294967295u, 67510u), vec3<u32>(1u, 130471u, global2.x)) % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 35045i, u_input.a) << (vec3<u32>(global2.x, global2.x, 0u) % vec3<u32>(32u)), -vec3<i32>(23704i, -2147483647i, u_input.a)) | (vec3<i32>(-1i) * -vec3<i32>(-17083i, u_input.a, 22323i))), _wgslsmith_mult_u32(1u >> (global2.x % 32u), _wgslsmith_sub_u32(global2.x, ~39603u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2039f, 209f)))), func_1(func_1(func_1(func_1(Struct_1(global2.x, vec2<bool>(false, false), u_input.d, 28767u), -603f, u_input.a), _wgslsmith_f_op_f32(abs(1063f)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2259f))), 12612i ^ (u_input.a & u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1275f), -4690i));
    global2 = u_input.d.wx;
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -select(-1i, u_input.a, true)) >> (abs(60677u) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(495f + 591f), _wgslsmith_div_f32(185f, 1077f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(909f - -2349f), _wgslsmith_f_op_f32(trunc(-1046f)), _wgslsmith_f_op_f32(max(1377f, 1067f))) + vec3<f32>(-1674f, _wgslsmith_f_op_f32(round(1952f)), _wgslsmith_f_op_f32(floor(167f))))));
}

