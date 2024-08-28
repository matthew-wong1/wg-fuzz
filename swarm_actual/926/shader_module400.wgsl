struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec3<i32>) -> vec3<u32> {
    global0 = u_input.c;
    global0 = vec4<u32>(u_input.c.x, ~(~global0.x) >> (0u % 32u), ~(~(~u_input.c.x)) | ~min(global0.x & 4294967295u, abs(1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.x, 117683u), u_input.c.x & 1u), u_input.c.xz), 0u));
    global0 = ~abs(~(~(~u_input.c)));
    return global0.zwx;
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_3(reverseBits(firstLeadingBit(reverseBits(vec2<u32>(3534u, u_input.c.x)))), 9106u);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.c.b.wy ^ ~arg_0.c.a.b.yz, -_wgslsmith_sub_vec2_i32(arg_2.a.b.yx, arg_0.c.a.b.xw)), max(_wgslsmith_add_i32(1i, arg_0.e) ^ -2147483647i, u_input.b.x)) << (var_0.a % vec2<u32>(32u));
    let var_2 = arg_0;
    var_1 = min(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a.x >> (global0.x % 32u), var_2.e), -var_2.c.b.yy, var_2.c.a.b.wz), u_input.b.yx);
    let var_3 = ~_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2842i), _wgslsmith_mult_vec2_i32(u_input.a.xw, vec2<i32>(var_2.e, var_1.x))), var_2.e) >> ((_wgslsmith_div_u32(~(~arg_2.e), u_input.c.x) >> (_wgslsmith_mod_u32(426u, 1u) % 32u)) % 32u);
    return firstTrailingBit(u_input.c.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_4(0i, ~(-12719i) > u_input.a.x, i32(-1i) * -2147483647i, ~_wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(0i, -48913i, u_input.a.x))) & _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), u_input.a));
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 1u, 0u, u_input.c.x), ~vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x)) ^ _wgslsmith_sub_u32(~u_input.c.x, 0u), func_3(Struct_5(u_input.c, vec3<bool>(true, true, var_0.b), Struct_2(Struct_1(vec3<u32>(0u, u_input.c.x, 4294967295u), u_input.a, vec2<u32>(u_input.c.x, 1u)), vec4<i32>(55525i, var_0.a, -1i, -35594i), 11049u, true, global0.x), vec4<f32>(1289f, 1196f, -775f, 1147f), -12439i), !var_0.b, Struct_2(Struct_1(u_input.c.wwz, u_input.a, global0.yy), vec4<i32>(-32486i, var_0.c, u_input.a.x, var_0.c), 1u, true, 4294967295u)) << (global0.x % 32u), min(~_wgslsmith_dot_vec2_u32(global0.ww, u_input.c.wz), max(select(74761u, u_input.c.x, var_0.b), global0.x >> (global0.x % 32u))), firstLeadingBit(global0.x) | (reverseBits(u_input.c.x) ^ global0.x)) << (~u_input.c % vec4<u32>(32u));
    var var_1 = Struct_2(Struct_1(countOneBits(global0.yxz), vec4<i32>(_wgslsmith_mult_i32(~var_0.d, -var_0.d), -1i, abs(var_0.a), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, u_input.a.xwx), abs(vec3<i32>(-2147483647i, 1i, 0i)))), ~(~vec2<u32>(17006u, u_input.c.x))), abs(u_input.a), reverseBits(_wgslsmith_dot_vec3_u32(u_input.c.zwx, _wgslsmith_add_vec3_u32(global0.xxx, _wgslsmith_clamp_vec3_u32(vec3<u32>(30058u, u_input.c.x, u_input.c.x), global0.xxw, vec3<u32>(0u, 38486u, 44744u))))), true, global0.x);
    let var_2 = select(~reverseBits(_wgslsmith_mod_i32(2147483647i, ~(-2147483647i))), ~(~(-u_input.b.x ^ max(u_input.b.x, u_input.b.x))), ~var_0.a < _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, 4304i, var_0.c, var_1.a.b.x))), ~u_input.a));
    let var_3 = Struct_1(max(firstLeadingBit(u_input.c.wxw), firstLeadingBit(min(firstLeadingBit(vec3<u32>(global0.x, u_input.c.x, var_1.a.c.x)), _wgslsmith_add_vec3_u32(var_1.a.a, vec3<u32>(global0.x, u_input.c.x, 2384u))))), ~reverseBits(var_1.a.b), vec2<u32>(func_1(~(~vec3<i32>(var_1.b.x, -1i, var_0.c))).x, 0u << (_wgslsmith_mult_u32(10374u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)) % 32u)));
    return -207f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, u_input.c.x, global0.x << (6449u % 32u)) ^ select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c.x) << (func_1(u_input.a.xww) % vec3<u32>(32u)), global0.zxz), u_input.c.yzx, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))));
    let var_1 = vec3<u32>(var_0.x, 27044u, global0.x) >> (~(~global0.zxy) % vec3<u32>(32u));
    global0 = _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u | var_0.x, ~min(u_input.c.x << (var_1.x % 32u), u_input.c.x), _wgslsmith_mult_u32(var_1.x, func_1(u_input.b).x) & var_1.x, global0.x));
    var var_2 = -941f;
    var_2 = _wgslsmith_f_op_f32(func_2());
    let var_3 = vec2<u32>(_wgslsmith_add_u32(countOneBits(max(~13790u, var_0.x)), reverseBits(global0.x)), firstLeadingBit(min(33486u << (firstTrailingBit(1625u) % 32u), func_3(Struct_5(u_input.c, vec3<bool>(true, true, false), Struct_2(Struct_1(var_0, u_input.a, global0.zy), vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.b.x), var_0.x, false, 60643u), vec4<f32>(-1072f, -106f, 170f, -1328f), -6433i), false, Struct_2(Struct_1(u_input.c.zyx, u_input.a, var_0.zx), u_input.a, u_input.c.x, false, 1u)) << (~u_input.c.x % 32u))));
    var var_4 = var_1;
    let var_5 = Struct_4(-u_input.a.x, true, 55357i, ~((i32(-1i) * -42872i) ^ -u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(~u_input.a.wzz) >> (var_1 % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(691f, -1542f, 292f, 365f) * vec4<f32>(-1195f, 264f, 625f, -981f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, 804f, -505f, 1842f) * vec4<f32>(1594f, 1407f, -108f, -1304f)), select(vec4<bool>(var_5.b, var_5.b, var_5.b, var_5.b), vec4<bool>(var_5.b, var_5.b, true, true), vec4<bool>(var_5.b, true, true, var_5.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(174f, -469f, 347f, 1527f), vec4<f32>(-2024f, -374f, 2024f, 813f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-324f, 259f))), _wgslsmith_f_op_f32(select(-1436f, _wgslsmith_f_op_f32(907f - 315f), var_5.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 373f)), _wgslsmith_f_op_f32(func_2())), 1077f)));
}

