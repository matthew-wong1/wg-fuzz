struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(2147483647i, -27258i, i32(-2147483648), i32(-2147483648), 4030i, 54696i, -80675i, 7341i, 0i, 0i, 1i, 34955i, 2147483647i, -49564i, 0i, 0i, 1i, -4039i);

var<private> global1: vec2<f32> = vec2<f32>(-694f, 1000f);

var<private> global2: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -838f), 609f);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 268f))))) * vec2<f32>(957f, -671f));
    global0 = array<i32, 18>();
    let var_1 = 1f;
    global2 = u_input.b;
    return ~2147483647i;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec3<bool> {
    global1 = vec2<f32>(1332f, _wgslsmith_f_op_f32(-global1.x));
    let var_0 = min(_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x), u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(global1.x)), vec2<i32>(_wgslsmith_mult_i32(-min(-12629i, arg_0), max(~u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(~1i, func_3(vec2<bool>(true, true)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.a.x, 3743u, u_input.a.x, 61276u)), vec4<u32>(~u_input.a.x, 34763u, ~u_input.a.x, u_input.a.x ^ u_input.a.x)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35244u, var_0, 1u, 0u), vec4<u32>(0u, 0u, 21636u, u_input.a.x), u_input.a), u_input.a)), 18u)], 1u, ~(~47524i));
    global2 = min(firstTrailingBit(var_1.b), -vec2<i32>(u_input.b.x, ~(i32(-1i) * -2147483647i)));
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_div_i32(~var_1.e | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.e), u_input.d.wz), global2.x), abs(_wgslsmith_clamp_i32(abs(arg_0), -1i, -1i)) & u_input.b.x);
    return select(!vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), any(vec3<bool>(false && all(vec2<bool>(false, false)), !(var_1.d != 54199u), true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global2 = _wgslsmith_mult_vec2_i32(abs(arg_0.b), arg_0.b);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1268f)) - _wgslsmith_f_op_f32(f32(-1f) * -1037f))), _wgslsmith_f_op_f32(max(-1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1805f + arg_1.d) - _wgslsmith_f_op_f32(arg_0.a * -1771f))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1675f, arg_0.a)))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1241f, -547f)))), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(101f, arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d * arg_1.d), arg_1.d), _wgslsmith_f_op_f32(1694f * -870f))));
    global1 = var_1.zx;
    return Struct_2(_wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(-1130f * var_1.x)), -(~(~vec2<i32>(1i, 0i))), ~(~(-1i)), u_input.a.x, reverseBits(40683i) ^ _wgslsmith_dot_vec2_i32(abs(_wgslsmith_sub_vec2_i32(arg_0.b, arg_0.b)), vec2<i32>(u_input.d.x, arg_0.e << (arg_0.d % 32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), arg_0 < global0[_wgslsmith_index_u32(u_input.a.x, 18u)])), vec3<bool>(any(vec3<bool>(true, true, true)), !(-2147483647i == arg_1.e), true), true);
    global2 = arg_1.b;
    var var_1 = func_4(arg_1, Struct_1(~global0[_wgslsmith_index_u32(4294967295u, 18u)], !var_0.x, u_input.a.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1377f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1000f))), firstTrailingBit(min(vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_clamp_vec2_u32(u_input.a.zw, u_input.a.wy, vec2<u32>(48035u, 4294967295u))))), select(!var_0, !select(select(var_0, var_0, false), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false)), select(select(vec3<bool>(true, true, false), var_0, true), func_2(_wgslsmith_sub_i32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), 0i), func_2(_wgslsmith_div_i32(-24170i, arg_0), abs(-2147483647i)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(855f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f))) * -3129f), arg_1.a);
    var var_3 = var_0.x;
    return ~(~(~_wgslsmith_div_i32(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(81653u, 18u)], 9252i), arg_0 ^ arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(u_input.a.x, 1u, ~4294967295u, max(u_input.a.x, 1u)) & ((u_input.a & (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))) | vec4<u32>(1u, firstTrailingBit(u_input.a.x), 2718u, _wgslsmith_add_u32(82817u, 23004u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), global1.x)));
    global0 = array<i32, 18>();
    global1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1108f, 464f), vec2<f32>(526f, global1.x)))))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1392f, 1000f)) - _wgslsmith_f_op_f32(-1199f * var_1)), var_1, false)) + -812f), global1.x, -147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1083f * _wgslsmith_f_op_f32(-1983f - _wgslsmith_f_op_f32(exp2(global1.x)))) - _wgslsmith_f_op_f32(-var_1)));
    global2 = vec2<i32>(~(~_wgslsmith_sub_i32(-global2.x, func_1(0i, Struct_2(var_1, u_input.b, global2.x, 67934u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])))), _wgslsmith_sub_i32(~func_1(_wgslsmith_add_i32(53492i, -16398i), func_4(Struct_2(-989f, vec2<i32>(-2147483647i, -20085i), -68537i, 39881u, -19445i), Struct_1(1i, false, vec2<u32>(var_0.x, 74286u), global1.x, var_0.zz), vec3<bool>(false, false, false))), global2.x));
    var var_3 = true;
    var var_4 = func_4(Struct_2(_wgslsmith_f_op_f32(floor(global1.x)), vec2<i32>(_wgslsmith_mult_i32(abs(32666i), ~u_input.d.x), ~(-2147483647i)), ~_wgslsmith_add_i32(u_input.b.x >> (0u % 32u), global0[_wgslsmith_index_u32(0u, 18u)]), var_0.x, ~2147483647i), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], -28636i, 13725i), -u_input.c.yyx) << (1u % 32u), all(func_2(1i, -69978i)), ~firstTrailingBit(u_input.a.wz), func_4(Struct_2(var_2.x, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -47842i), vec2<i32>(global0[_wgslsmith_index_u32(var_0.x, 18u)], 2147483647i)), abs(9267i), ~u_input.a.x, global2.x << (var_0.x % 32u)), Struct_1(~(-2147483647i), var_2.x == 1376f, ~var_0.yy, -1060f, vec2<u32>(1297u, var_0.x)), vec3<bool>(true, all(vec4<bool>(true, false, false, true)), true)).a, ~firstLeadingBit(u_input.a.xy)), select(vec3<bool>(true, true, true), vec3<bool>(true, !select(true, false, true), true), _wgslsmith_f_op_f32(step(-2939f, -393f)) <= var_2.x));
    var var_5 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~4294967295u, var_0.x), var_0.wwy) | select(firstLeadingBit(max(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(0u, u_input.a.x, var_0.x))), u_input.a.wzy, vec3<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(true, false)))), _wgslsmith_mod_vec3_u32(u_input.a.wxx, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), var_0.yxw)), vec3<bool>(true, true, select((global2.x <= 2147483647i) & select(false, false, false), func_2(1688i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), var_0.zwx), 18u)]).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-480f))), _wgslsmith_f_op_f32(abs(var_2.x)), var_4.a, var_1), var_0.zzx, func_1(~((1i | global2.x) | ~2147483647i), func_4(Struct_2(_wgslsmith_f_op_f32(-global1.x), vec2<i32>(var_4.c, 2147483647i), _wgslsmith_mod_i32(-1i, var_4.c), max(var_4.d, 0u), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-31303i, -30018i, u_input.d.x, var_4.c))), Struct_1(~u_input.c.x, select(true, false, true), countOneBits(u_input.a.wz), var_1, ~var_5.xy), func_2(global0[_wgslsmith_index_u32(var_0.x, 18u)], u_input.c.x))), _wgslsmith_div_u32(0u, u_input.a.x));
}

