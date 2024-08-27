struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, true, 1i, vec2<u32>(4294967295u, 32372u)), Struct_1(false, false, -1i, vec2<u32>(103536u, 4075u)), Struct_1(false, false, 1i, vec2<u32>(105292u, 86145u)), Struct_1(true, true, -17147i, vec2<u32>(13973u, 31549u)), Struct_1(false, false, 2147483647i, vec2<u32>(1u, 34231u)), Struct_1(true, false, -29880i, vec2<u32>(90157u, 4294967295u)), Struct_1(true, true, -3187i, vec2<u32>(4294967295u, 43607u)), Struct_1(false, true, 0i, vec2<u32>(4294967295u, 4294967295u)), Struct_1(false, false, 5161i, vec2<u32>(4294967295u, 1u)), Struct_1(true, false, i32(-2147483648), vec2<u32>(0u, 0u)), Struct_1(false, false, -58711i, vec2<u32>(1u, 0u)), Struct_1(true, false, -10403i, vec2<u32>(1u, 65786u)), Struct_1(false, true, 2147483647i, vec2<u32>(35350u, 6177u)), Struct_1(true, true, 25400i, vec2<u32>(4294967295u, 0u)), Struct_1(false, false, -42786i, vec2<u32>(0u, 1u)), Struct_1(false, false, 36424i, vec2<u32>(33178u, 5041u)), Struct_1(false, true, 33602i, vec2<u32>(77165u, 5769u)), Struct_1(false, true, 46598i, vec2<u32>(1u, 20772u)), Struct_1(false, true, 2147483647i, vec2<u32>(1u, 17757u)), Struct_1(true, true, -4593i, vec2<u32>(42394u, 10039u)), Struct_1(false, false, i32(-2147483648), vec2<u32>(29139u, 1028u)), Struct_1(false, true, 1i, vec2<u32>(0u, 24836u)), Struct_1(false, true, 1i, vec2<u32>(0u, 1u)), Struct_1(false, false, 12407i, vec2<u32>(34786u, 4294967295u)), Struct_1(true, true, 1i, vec2<u32>(0u, 1u)), Struct_1(true, false, 1i, vec2<u32>(1u, 20689u)), Struct_1(false, false, 1i, vec2<u32>(29567u, 1u)), Struct_1(true, false, -35144i, vec2<u32>(10317u, 40388u)), Struct_1(true, true, 9354i, vec2<u32>(1u, 1u)), Struct_1(true, false, 2015i, vec2<u32>(0u, 4294967295u)));

var<private> global2: array<bool, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(~vec3<u32>(0u, 41262u, 12558u))), reverseBits(reverseBits(vec3<u32>(arg_1.x, 15836u, 4294967295u))) & min(abs(arg_1.zzx), arg_1.xxw)), ~(~0u), _wgslsmith_mult_u32(~(u_input.a ^ u_input.a), _wgslsmith_mod_u32(~arg_1.x, ~0u)) ^ ~(~4294967295u));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~35118u, ~(~min(~43469u, _wgslsmith_dot_vec2_u32(var_0.yx, var_0.yy)))), 30u)];
    let var_2 = select(!(!(!global0.xw)), !(!select(!global0.xx, global0.xy, any(vec3<bool>(var_1.a, true, true)))), select(vec2<bool>(!global0.x, _wgslsmith_mod_i32(2406i, arg_0) <= ~u_input.b.x), !select(vec2<bool>(true, true), global0.yz, select(global0.xw, global0.yz, global0.x)), false));
    var var_3 = ~vec3<i32>(~var_1.c, 0i | abs(_wgslsmith_add_i32(arg_2.x, -8438i)), var_1.c);
    let var_4 = Struct_2(abs(~arg_1.xxx), _wgslsmith_add_vec4_u32(vec4<u32>(69145u, u_input.a, max(~94254u, ~var_1.d.x), 4294967295u), max(arg_1 << (arg_1 % vec4<u32>(32u)), vec4<u32>(~var_1.d.x, _wgslsmith_dot_vec2_u32(arg_1.xx, var_0.zy), ~1u, ~2925u))), (((false | var_2.x) && false) | (var_0.x == arg_1.x)) & !global0.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-414f, 111f, 167f) + vec3<f32>(557f, 861f, 708f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1278f, -130f, 1055f) + vec3<f32>(1020f, -1107f, 116f)))), all(global0.yw))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1633f, 1510f, -1195f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(928f, -1266f, 2683f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1138f, -809f, -1207f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, 340f, 779f)))))), global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(var_1.d.x)), 30u)]);
    return ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(~max(vec3<u32>(37159u, var_4.a.x, arg_1.x), vec3<u32>(var_0.x, var_4.e.d.x, var_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, arg_1.x, var_1.d.x), arg_1.yxz, arg_1.xyx) << (_wgslsmith_div_vec3_u32(var_4.b.yxy, vec3<u32>(var_0.x, 1u, var_4.a.x)) % vec3<u32>(32u)), arg_1.xzx));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    global0 = vec4<bool>(global0.x, global0.x, arg_1.e.b, true);
    let var_0 = arg_1;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(-627f)), arg_1.d.x, 614f, _wgslsmith_f_op_f32(-var_0.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 1261f)), -111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) * _wgslsmith_f_op_f32(min(var_1.x, -111f)))) * vec4<f32>(752f, _wgslsmith_f_op_f32(1495f * _wgslsmith_f_op_f32(-var_0.d.x)), var_1.x, _wgslsmith_f_op_f32(3161f * _wgslsmith_f_op_f32(2045f - -1080f)))), vec4<f32>(-107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.d.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d.x * -1373f)))), arg_1.d.x)));
    global1 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.d.x))));
}

fn func_2() -> i32 {
    global1 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_3(u_input.d, vec4<u32>(4294967295u, 0u, 1u, u_input.a), u_input.c), Struct_2(vec3<u32>(39434u, u_input.a, u_input.a), vec4<u32>(71387u, u_input.a, 1287u, 29922u), global2[_wgslsmith_index_u32(u_input.a, 11u)], vec3<f32>(-1000f, 1000f, 2790f), global1[_wgslsmith_index_u32(4294967295u, 30u)]))), -498f)))));
    var var_1 = ~(~(~1u));
    var var_2 = u_input.c.zy;
    var var_3 = firstTrailingBit(~u_input.c) | (~_wgslsmith_sub_vec3_i32(-vec3<i32>(30809i, var_2.x, u_input.c.x), u_input.c) | _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(_wgslsmith_clamp_i32(19759i, 0i, u_input.b.x), -23182i, reverseBits(14532i))));
    return var_2.x;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~arg_0, _wgslsmith_mult_u32(134476u, 3221u), ~_wgslsmith_mult_u32(arg_0, 46995u)) >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0, 45056u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(arg_0, arg_0))) % 32u), _wgslsmith_mod_u32(4294967295u, 37411u)), 30u)];
    let var_1 = global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(max(arg_0, 1u), ~u_input.a) << (_wgslsmith_dot_vec2_u32(var_0.d, ~(~var_0.d)) % 32u)), 30u)];
    let var_2 = vec3<i32>(func_2(), var_1.c, u_input.c.x) & u_input.c;
    return vec4<bool>(select(!(!arg_3), arg_3 || ((var_0.c >> (55227u % 32u)) <= var_0.c), global2[_wgslsmith_index_u32(20098u, 11u)]), true, false, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    global0 = func_1(max(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 8790u, 108865u), ~51825u), ~(u_input.a << (1u % 32u)) ^ u_input.a), vec2<i32>(~reverseBits(~(-1i)), -36758i), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 11u)], true);
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, u_input.a), 30u)];
    let var_1 = ~vec2<i32>(~0i, -_wgslsmith_div_i32(countOneBits(u_input.d), 2147483647i));
    var var_2 = _wgslsmith_mod_i32(u_input.d, abs(abs(func_2())));
    let var_3 = Struct_2(~vec3<u32>(~4294967295u, u_input.a, var_0.d.x), vec4<u32>(firstTrailingBit(4294967295u), ~u_input.a, firstTrailingBit(~_wgslsmith_mult_u32(var_0.d.x, 4717u)), ~4294967295u), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-1598f, -367f)), _wgslsmith_f_op_f32(round(759f)), -1600f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, 1199f, -1000f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(375f, -424f, 1939f) + vec3<f32>(-790f, -133f, -505f)))))), true)), Struct_1(true, any(select(!vec4<bool>(global2[_wgslsmith_index_u32(84949u, 11u)], false, global2[_wgslsmith_index_u32(var_0.d.x, 11u)], var_0.a), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global0.x), func_1(4294967295u, vec2<i32>(12948i, -1i), false, global0.x))), _wgslsmith_sub_i32(-1i, min(~21718i, reverseBits(var_1.x))), ~vec2<u32>(_wgslsmith_div_u32(var_0.d.x, 5658u), var_0.d.x)));
    let var_4 = !(true & var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec4_u32(var_3.b, var_3.b), var_3.d.x, u_input.c.zy, vec2<u32>(46301u, abs(~var_0.d.x) ^ _wgslsmith_clamp_u32(~var_0.d.x, _wgslsmith_sub_u32(22200u, 0u), var_0.d.x)));
}

