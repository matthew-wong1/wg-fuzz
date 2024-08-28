struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_3, 29>();
    var var_0 = Struct_4(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1730u, 38823u, 1302u), vec3<u32>(22161u, arg_2.a, 1u) | vec3<u32>(arg_2.a, 4294967295u, u_input.b))), 15361u), firstTrailingBit(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a, 105563u, arg_2.a, 27494u), vec4<u32>(55210u, 0u, u_input.b, 0u)), ~vec4<u32>(0u, 27526u, u_input.c, 1u), arg_0)), u_input.d, !(_wgslsmith_clamp_u32(~4294967295u, reverseBits(4638u), _wgslsmith_mod_u32(31500u, 1u)) < ~countOneBits(4294967295u)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(1449f, _wgslsmith_f_op_f32(f32(-1f) * -865f))), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -14378i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, arg_2.b.x, arg_1.x))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, arg_2.b.x, 643f)))), vec2<u32>(select(81697u, 0u, true) ^ 1u, _wgslsmith_sub_u32(u_input.d, u_input.d) | ~4294967295u)));
    var_0 = Struct_4(_wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(firstLeadingBit(var_1.a.d), var_0.b.yy), vec2<u32>(firstTrailingBit(arg_2.a), ~var_1.a.d.x)), max(var_1.a.d, ~vec2<u32>(41914u, u_input.b))), vec4<u32>(var_1.a.d.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.d.x, var_0.a, var_0.b.x), vec3<u32>(0u, 77819u, arg_2.a))) >> (u_input.d % 32u), arg_2.a, 1u), _wgslsmith_add_u32(~(var_1.a.d.x ^ 21730u) << ((38106u & _wgslsmith_dot_vec2_u32(var_0.b.xz, var_1.a.d)) % 32u), u_input.c), true);
    var_1 = Struct_2(var_1.a);
    return ~0u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1820f)))), abs(_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1149f, 1185f, -208f))) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-350f * -1759f), 1230f, _wgslsmith_f_op_f32(round(462f)))))), vec2<u32>(_wgslsmith_div_u32(~1u, u_input.c >> (u_input.b % 32u)), func_3(all(vec3<bool>(true, false, false)) & true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(942f, -530f, -1053f, 1652f), vec4<f32>(-1084f, -543f, -593f, -1043f))), Struct_3(4294967295u, vec4<f32>(840f, 1081f, 1127f, 747f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -358f), _wgslsmith_f_op_f32(-var_0.a)))), reverseBits(~var_0.b), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1080f * var_0.a) * 1123f), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1647f), 451f), abs(~(~(~var_0.d))));
    let var_1 = _wgslsmith_add_u32(~min(u_input.d, reverseBits(4294967295u)), ~var_0.d.x) >= var_0.d.x;
    let var_2 = vec2<u32>(func_3(select(var_1, true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, var_0.c.x, var_0.a, -310f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(174f, var_0.c.x, -1000f, 1607f)))), global0[_wgslsmith_index_u32((var_0.d.x & (u_input.d & 0u)) << (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 36585u, var_0.d.x), vec3<u32>(u_input.d, 33763u, 9168u))) % 32u), 29u)]), ~(~var_0.d.x));
    var var_3 = -524f;
    return Struct_1(var_0.c.x, vec4<i32>(-_wgslsmith_add_i32(max(var_0.b.x, var_0.b.x), -76137i), 48667i, _wgslsmith_mod_i32(min(var_0.b.x, 0i) << (5758u % 32u), 58127i), var_0.b.x), vec3<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(round(var_0.c.x))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, ~53434u), max(var_0.d ^ vec2<u32>(var_2.x, var_2.x), firstLeadingBit(var_0.d))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    global0 = array<Struct_3, 29>();
    let var_0 = Struct_4(firstLeadingBit(0u), ~(~_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c, 4294967295u, arg_1.a.d.x, u_input.d), vec4<u32>(65955u, 11676u, 64819u, u_input.c)), firstTrailingBit(vec4<u32>(12314u, 43383u, u_input.d, arg_0.x)))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(12758u, select(arg_1.a.d.x, arg_1.a.d.x, true), arg_1.a.d.x), _wgslsmith_div_vec3_u32(reverseBits(arg_0), vec3<u32>(32438u, u_input.d, 1u))), firstTrailingBit(~reverseBits(arg_0))), select(true, true, !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, var_0.b.x), firstTrailingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, 0u)), vec2<u32>(138376u, abs(arg_1.a.d.x))))), 29u)];
    var var_2 = -2147483647i;
    var var_3 = ~_wgslsmith_add_u32(firstTrailingBit(4294967295u), arg_1.a.d.x);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1.a.b.x, -2147483647i), arg_1.a.b.zw) | vec2<i32>(1i, min(arg_1.a.b.x, arg_1.a.b.x)), _wgslsmith_mult_vec2_i32(arg_1.a.b.wx, arg_1.a.b.ww)), firstLeadingBit(arg_1.a.b.ww));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec4<i32>(11020i, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-480i, 2335i) >> (u_input.b % 32u), u_input.a.x), arg_0, _wgslsmith_add_i32(~select(0i, arg_0, arg_1.d), u_input.a.x)), func_4(vec3<u32>(_wgslsmith_mod_u32(~4294967295u, 48495u), arg_1.b.x, arg_1.b.x), Struct_2(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, -1353f, -373f, -821f)))))));
    global0 = array<Struct_3, 29>();
    let var_1 = func_2().b.x;
    var var_2 = Struct_2(func_2());
    let var_3 = _wgslsmith_f_op_f32(ceil(-252f));
    return var_2.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(abs(~abs(vec3<i32>(u_input.a.x, u_input.a.x, 0i))), func_1(-2147483647i, Struct_4(u_input.c, vec4<u32>(0u, 78040u, 8510u, u_input.d), 0u, any(vec4<bool>(false, false, false, false)))), Struct_3(~func_3(true, vec4<f32>(-2332f, 842f, 623f, 1000f), Struct_3(u_input.c, vec4<f32>(2838f, -715f, -581f, -401f))), vec4<f32>(_wgslsmith_f_op_f32(abs(400f)), _wgslsmith_f_op_f32(f32(-1f) * -1090f), -437f, _wgslsmith_f_op_f32(f32(-1f) * -565f))), Struct_2(func_1(_wgslsmith_mod_i32(u_input.a.x, 41342i), Struct_4(4294967295u, vec4<u32>(u_input.d, 1u, 15326u, 4294967295u), u_input.b, true)))), reverseBits(vec4<u32>(_wgslsmith_div_u32(u_input.c, 0u << (u_input.d % 32u)), 4294967295u, u_input.c, abs(~1u))), _wgslsmith_div_u32(u_input.c << (min(countOneBits(15071u), 0u) % 32u), u_input.d), !(1i == u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, -1932f);
}

