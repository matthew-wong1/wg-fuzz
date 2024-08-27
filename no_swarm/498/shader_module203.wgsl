struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.c.x, 76406u, 4294967295u), ~_wgslsmith_mod_u32(8654u, arg_0.c.x) << (1u % 32u));
    var var_0 = !vec2<bool>(true, !any(vec3<bool>(true, true, false)));
    var var_1 = true;
    var var_2 = arg_2;
    var_0 = select(vec2<bool>(true, false), select(vec2<bool>(true, all(vec3<bool>(false, var_0.x, false))), !vec2<bool>(true, any(vec2<bool>(var_0.x, var_0.x))), vec2<bool>(var_0.x, 2147483647i >= _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, 1i), vec2<i32>(arg_2.b, -2147483647i)))), var_0.x);
    return -abs(arg_2.a.wz);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = -(abs(min(func_3(Struct_1(vec4<i32>(-1582i, -18825i, u_input.d, -2147483647i), u_input.b, u_input.a.yxz, -36951i), Struct_1(vec4<i32>(-1455i, u_input.b, -17032i, u_input.d), -25183i, u_input.a.zzw, u_input.b), Struct_1(vec4<i32>(u_input.d, u_input.b, 2147483647i, 18324i), -43957i, u_input.a.yxw, 1i)), vec2<i32>(u_input.b, -2147483647i))) << (vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(16121u, 1u), u_input.a.wy) ^ 0u) % vec2<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 1i, 11094i, var_0.x), vec4<i32>(8450i, 5202i, var_0.x, 21430i)), firstLeadingBit(vec4<i32>(-42711i, var_0.x, var_0.x, 68375i)), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, u_input.b, -30203i, u_input.d), vec4<i32>(u_input.b, 1i, -47357i, u_input.d)) >> (firstLeadingBit(vec4<u32>(u_input.c, 0u, 71961u, 0u)) % vec4<u32>(32u)), true), firstLeadingBit(select(~vec4<i32>(-2147483647i, -2147483647i, u_input.d, 5683i), vec4<i32>(52128i, -49768i, 10612i, var_0.x) | vec4<i32>(-5803i, var_0.x, var_0.x, 23755i), vec4<bool>(false, true, false, true)))), u_input.b, ~(~(~u_input.a.wzz)), _wgslsmith_mult_i32(-2147483647i << ((_wgslsmith_add_u32(19678u, 17625u) << ((u_input.c & 0u) % 32u)) % 32u), var_0.x));
    var var_2 = vec3<bool>(any(vec3<bool>(true, true, true)), any(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), false);
    let var_3 = ~abs(max(u_input.a.wz, var_1.c.yy));
    global0 = _wgslsmith_mult_u32(u_input.c, ~var_1.c.x);
    return u_input.a.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-338f + arg_1.x), _wgslsmith_f_op_f32(floor(-1522f)))))));
    global0 = 0u;
    let var_0 = u_input.a.xw;
    var var_1 = -1616f;
    var var_2 = abs(u_input.b);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec4<i32>(reverseBits(u_input.b), u_input.b, u_input.b, -(-2147483647i >> (1u % 32u))), _wgslsmith_add_i32(func_1(_wgslsmith_clamp_i32(u_input.b, u_input.d, 2147483647i) > -2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1405f, -330f), vec2<f32>(-1558f, 883f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-814f, 368f), vec2<f32>(449f, 315f)))), u_input.b), vec3<u32>(_wgslsmith_mult_u32(0u, abs(~u_input.c)), u_input.a.x, firstTrailingBit(_wgslsmith_clamp_u32(firstTrailingBit(38144u), 1u, ~u_input.a.x))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(countOneBits(u_input.d & u_input.b), 2147483647i), u_input.b));
    global0 = u_input.c;
    var var_1 = vec3<i32>(11021i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(max(var_0.d, u_input.b), _wgslsmith_mod_i32(u_input.d, 569i), u_input.d), var_0.a.xwz), -_wgslsmith_sub_i32(~u_input.b, _wgslsmith_sub_i32(1382i, -1965i))), reverseBits(u_input.d));
    var var_2 = Struct_1(vec4<i32>(u_input.b ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, u_input.b, var_0.d), vec3<i32>(var_1.x, -50080i, 27967i)), vec3<i32>(1i, u_input.d, var_0.d) >> (vec3<u32>(5385u, 1u, 1u) % vec3<u32>(32u))), min(abs(var_1.x >> (48771u % 32u)), u_input.b), ~(~(~2147483647i)), -2147483647i), 1i, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.ywz, _wgslsmith_mult_vec3_u32(~var_0.c, ~u_input.a.zzx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(65402u, 4294967295u, u_input.a.x) | vec3<u32>(0u, 4294967295u, 0u), var_0.c, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(var_0.c.x, u_input.c, u_input.c)))), min(~6256i, abs(_wgslsmith_sub_i32(firstLeadingBit(var_0.d), 59505i >> (u_input.a.x % 32u)))));
    var_1 = vec3<i32>(~(i32(-1i) * -1i), -(~4680i), abs(select(-15604i, i32(-1i) * -u_input.d, any(vec2<bool>(false, true)) != true)));
    var_2 = Struct_1(_wgslsmith_sub_vec4_i32(var_2.a, vec4<i32>(firstTrailingBit(-2147483647i), -20535i, u_input.b, max(min(1i, 4075i), var_1.x))), ~func_3(Struct_1(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(16204i, -12167i, var_0.d, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 5527i, var_0.a.x), vec4<i32>(34988i, var_1.x, var_1.x, var_1.x)), ~var_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(27354i, var_2.b, var_0.b), var_2.a.zxy)), Struct_1(var_0.a, 15187i, ~var_2.c, ~53768i), Struct_1(firstTrailingBit(vec4<i32>(34519i, 1i, 14874i, -1i)), var_1.x, max(u_input.a.yxw, var_0.c), 8379i)).x, u_input.a.ywx, var_2.d);
    global0 = ~_wgslsmith_clamp_u32(~var_2.c.x, ~(1u >> (var_0.c.x % 32u)), abs(abs(var_0.c.x))) >> ((var_2.c.x << (~(~_wgslsmith_mult_u32(u_input.a.x, var_0.c.x)) % 32u)) % 32u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(230f, -1946f, 1481f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1507f, 301f, -178f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1505f, -191f, -1000f), vec3<f32>(-1000f, -909f, -632f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, 1384f, -936f) - vec3<f32>(1275f, -241f, 1859f)))))));
    var_1 = min(-var_2.a.wyx, -vec3<i32>(0i, ~(-61968i), ~var_0.d)) & var_2.a.zyy;
    let x = u_input.a;
    s_output = StorageBuffer(279f, firstTrailingBit(var_2.c.yx | vec2<u32>(reverseBits(var_0.c.x), select(4294967295u, 0u, true))), vec3<u32>(~1u, var_0.c.x, ~(~abs(var_0.c.x))), 0u, ~u_input.a);
}

