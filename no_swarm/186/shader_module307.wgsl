struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(1i, -1i, -1i), vec3<i32>(2358i, -64443i, -1i), vec3<i32>(i32(-2147483648), -1i, 84121i), vec3<i32>(-5694i, -39446i, -830i), vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(52171i, 0i, -36012i), vec3<i32>(-16357i, 22658i, i32(-2147483648)), vec3<i32>(23246i, 23498i, 1i), vec3<i32>(2528i, -1i, 1i), vec3<i32>(54930i, 1i, 1i), vec3<i32>(1i, -1i, 34547i), vec3<i32>(1i, 33419i, 40647i), vec3<i32>(i32(-2147483648), -1i, 13093i), vec3<i32>(1152i, -1i, 8510i), vec3<i32>(-15123i, -1i, -28779i), vec3<i32>(-1i, 2147483647i, 54649i), vec3<i32>(-7472i, -19937i, 39203i), vec3<i32>(i32(-2147483648), i32(-2147483648), -16399i), vec3<i32>(i32(-2147483648), 27792i, 1i), vec3<i32>(52597i, -35704i, i32(-2147483648)), vec3<i32>(-1i, -40799i, 48521i), vec3<i32>(28614i, 0i, 21654i), vec3<i32>(3328i, 54367i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec3<u32> {
    global1 = array<vec3<i32>, 23>();
    var var_0 = arg_1;
    var var_1 = u_input.a.x ^ ((arg_1.b.x >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 4294967295u, 333u), vec3<u32>(u_input.a.x, arg_0, 24981u))) % 32u)) >> (1u % 32u));
    var_1 = ~_wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(~var_0.b.x, global0.x, reverseBits(1u)));
    var var_2 = Struct_1(vec3<i32>(~arg_1.a.x, arg_1.a.x, -36472i), ~arg_1.b);
    return ~vec3<u32>(~firstTrailingBit(reverseBits(arg_1.b.x)), arg_0, 1u);
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    let var_1 = firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.x, global0.x & u_input.a.x, countOneBits(56031u)), func_3(43138u, Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a), vec2<f32>(-193f, 430f), 4294967295u))));
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    let var_2 = var_0;
    return Struct_1(global1[_wgslsmith_index_u32(global0.x, 23u)] >> (global0.yyy % vec3<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(55707u, 1u, ~4294967295u, u_input.a.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(arg_3.a, _wgslsmith_sub_vec4_u32(arg_1.b, firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 3424u, arg_3.b.x), u_input.a))));
    let var_1 = vec2<bool>(false, !(!(!any(vec2<bool>(true, true)))));
    let var_2 = Struct_1(arg_3.a & global1[_wgslsmith_index_u32(abs(1u >> (func_2().b.x % 32u)), 23u)], u_input.a);
    var_0 = arg_3;
    var var_3 = vec3<i32>(arg_3.a.x, _wgslsmith_div_i32(~(~arg_3.a.x), -2147483647i) << (_wgslsmith_mult_u32(~0u << (u_input.a.x % 32u), u_input.a.x) % 32u), -abs(-_wgslsmith_sub_i32(-62518i, var_0.a.x)));
    return vec3<i32>(_wgslsmith_sub_i32(abs(-var_0.a.x), var_2.a.x), -max(-15850i, _wgslsmith_sub_i32(35437i, -1i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-12835i, var_0.a.x, 34312i, var_3.x), vec4<i32>(1i, ~var_3.x, _wgslsmith_dot_vec4_i32(vec4<i32>(31596i, 1i, var_2.a.x, -1i), vec4<i32>(22167i, 4791i, -10771i, arg_3.a.x)), func_2().a.x))) >> (func_2().b.xyx % vec3<u32>(32u));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = reverseBits(~(~_wgslsmith_mult_vec4_u32(u_input.a, arg_0.b))) | ~vec4<u32>(u_input.a.x, 0u, 1u, ~max(arg_0.b.x, 20834u));
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(52783u & select(23167u, arg_0.b.x, true), ~u_input.a.x), 4294967295u, func_3(18794u, func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(134f, 255f) - vec2<f32>(1831f, 557f)), _wgslsmith_clamp_u32(4294967295u, 4294967295u, global0.x)).x >> (_wgslsmith_dot_vec3_u32(global0.zww, u_input.a.yzw) % 32u), 0u), arg_0.b);
    var_0 = u_input.a;
    global1 = array<vec3<i32>, 23>();
    var_0 = ~(~arg_0.b);
    return Struct_1(firstLeadingBit(~_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2147483647i, 35552i, arg_0.a.x)), ~global1[_wgslsmith_index_u32(27967u, 23u)], -vec3<i32>(1i, -1i, -17497i))), ~_wgslsmith_mod_vec4_u32(arg_0.b, abs(u_input.a)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = true;
    let var_2 = func_5(Struct_1(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-831f, 1000f, -1497f, 180f) + vec4<f32>(659f, -397f, -446f, -1731f))), func_2(), 867f, func_2()), ~vec4<u32>(22250u, 1u, _wgslsmith_mult_u32(global0.x, 0u), global0.x)));
    var var_3 = -933f;
    var var_4 = var_2;
    return Struct_1(vec3<i32>(-u_input.b, 26386i, 2147483647i), _wgslsmith_clamp_vec4_u32(countOneBits((vec4<u32>(1028u, var_4.b.x, 1u, 4294967295u) | u_input.a) ^ ~vec4<u32>(35697u, 0u, 24987u, 1u)), vec4<u32>(~_wgslsmith_mult_u32(var_4.b.x, 49855u), 11354u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_4.b.x, 4294967295u), vec2<u32>(1u, global0.x), var_2.b.wz), ~vec2<u32>(1u, 80599u)), u_input.a.x), select(firstLeadingBit(~u_input.a), reverseBits(select(vec4<u32>(13593u, var_4.b.x, 38970u, 8362u), var_4.b, false)), all(vec4<bool>(false, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 23>();
    var var_0 = func_1(u_input.c, abs(_wgslsmith_add_vec2_i32(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 1667i), vec2<i32>(u_input.b, 24412i)), ~vec2<i32>(u_input.c, u_input.b)), ~(-vec2<i32>(-13548i, -1i)))));
    var var_1 = true;
    var var_2 = global0.x;
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.yzx, var_0.b.zyy)) >> (~58921u % 32u), u_input.a.x));
    var_3 = 0u;
    global0 = ~(~vec4<u32>(~global0.x, _wgslsmith_mult_u32(var_0.b.x, global0.x), global0.x, global0.x)) ^ (var_0.b << (var_0.b % vec4<u32>(32u)));
    var var_4 = func_5(func_2());
    let var_5 = Struct_1(vec3<i32>(~(~1i), 2503i, u_input.b), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, u_input.a.x, 66463u, 1u)), vec4<u32>(u_input.a.x, ~var_0.b.x, 1u << (1u % 32u), abs(var_4.b.x))), ~var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1998f * -1000f), _wgslsmith_f_op_f32(-1857f * -943f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-828f, 689f) - vec2<f32>(715f, 427f)) * _wgslsmith_div_vec2_f32(vec2<f32>(656f, 613f), vec2<f32>(1000f, 2285f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-370f)), -425f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(643f, -375f) - vec2<f32>(1235f, 317f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(563f, 483f), vec2<f32>(1173f, -642f))))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))), var_5.b.zxy, ~countOneBits(max(0u, _wgslsmith_clamp_u32(79248u, 65476u, 37344u))), func_1(16318i, var_5.a.zz).b.wxy, var_5.a.xy);
}

