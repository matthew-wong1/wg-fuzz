struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(-3844i, vec2<u32>(45738u, 4294967295u), vec2<bool>(true, false));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec4<f32>(-1519f, 370f, 1952f, -2271f)), vec4<i32>(11295i, 24316i, 0i, 18077i), Struct_1(vec4<f32>(-1000f, -238f, -806f, -266f)), Struct_1(vec4<f32>(-663f, 873f, -133f, 697f))), Struct_2(Struct_1(vec4<f32>(2000f, 1027f, -1000f, -278f)), vec4<i32>(0i, -18123i, -5570i, -38479i), Struct_1(vec4<f32>(-1468f, 710f, -775f, 257f)), Struct_1(vec4<f32>(1000f, -555f, -1000f, 872f))), Struct_2(Struct_1(vec4<f32>(-308f, 718f, 652f, -1710f)), vec4<i32>(-1i, -44977i, -27155i, 39170i), Struct_1(vec4<f32>(1204f, -211f, -1700f, 1014f)), Struct_1(vec4<f32>(-1000f, 1143f, 1334f, 777f))), Struct_2(Struct_1(vec4<f32>(-329f, 1312f, -709f, 783f)), vec4<i32>(1i, 4151i, 0i, 0i), Struct_1(vec4<f32>(656f, -674f, 804f, 2101f)), Struct_1(vec4<f32>(1334f, -778f, -559f, -2267f))), Struct_2(Struct_1(vec4<f32>(-683f, 2373f, 925f, -107f)), vec4<i32>(-22161i, 427i, 1i, i32(-2147483648)), Struct_1(vec4<f32>(1138f, -1603f, -123f, -654f)), Struct_1(vec4<f32>(1000f, -828f, -958f, 612f))), Struct_2(Struct_1(vec4<f32>(-1064f, 837f, -1736f, -574f)), vec4<i32>(32847i, -1i, 1i, 43810i), Struct_1(vec4<f32>(860f, -1000f, -714f, 1000f)), Struct_1(vec4<f32>(-1041f, -1242f, -124f, -553f))), Struct_2(Struct_1(vec4<f32>(-1000f, 1272f, -2710f, -530f)), vec4<i32>(-40856i, 0i, 0i, -5953i), Struct_1(vec4<f32>(-1421f, 499f, -563f, -1240f)), Struct_1(vec4<f32>(623f, -1820f, -141f, -1450f))), Struct_2(Struct_1(vec4<f32>(1020f, 2064f, -830f, 1931f)), vec4<i32>(-20653i, 0i, 1i, -1i), Struct_1(vec4<f32>(341f, 502f, -116f, 997f)), Struct_1(vec4<f32>(-487f, 237f, 2319f, 1548f))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(-global0.a.x)), global0.a.x)))));
    global2 = array<Struct_2, 8>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.a, arg_0.a)) * _wgslsmith_f_op_vec4_f32(-global0.a))))));
    let var_1 = arg_0.a.zxy;
    global0 = arg_0;
    return u_input.b.yz;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = global1.b.x << (_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(1u, global1.b.x, 100295u) & vec3<u32>(global1.b.x, u_input.a.x, u_input.c.x)), vec3<u32>(4294967295u, select(min(global1.b.x, u_input.d.x), countOneBits(24371u), !arg_1), ~1u >> ((global1.b.x ^ u_input.d.x) % 32u))) % 32u);
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 1u, global1.b.x, 17794u)), _wgslsmith_div_vec4_u32(~vec4<u32>(40716u, 1u, 636u, global1.b.x), firstTrailingBit(vec4<u32>(global1.b.x, 4294967295u, 32190u, u_input.a.x)))), (global1.b.x ^ (1u >> ((u_input.c.x | 50403u) % 32u))) ^ 58485u, 4294967295u | u_input.d.x);
    let var_2 = Struct_3(1i, ~(~u_input.c.xy), vec2<bool>(global1.c.x, all(select(!vec2<bool>(false, arg_1), global1.c, true))));
    let var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~max(global1.b, _wgslsmith_sub_vec2_u32(u_input.d, var_1.zx)), vec2<u32>(u_input.a.x, ~u_input.c.x)), 8u)];
    var var_4 = var_2;
    return firstTrailingBit(_wgslsmith_add_u32(~var_1.x, var_4.b.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> vec2<bool> {
    var var_0 = ~_wgslsmith_sub_i32((_wgslsmith_mod_i32(u_input.b.x, global1.a) << (_wgslsmith_mod_u32(arg_0.x, arg_0.x) % 32u)) >> (max(arg_0.x, 14549u << (arg_0.x % 32u)) % 32u), _wgslsmith_add_i32(-24986i, ~u_input.e << (~u_input.c.x % 32u)));
    let var_1 = global2[_wgslsmith_index_u32(~firstTrailingBit(func_4(func_3(Struct_1(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)), true, 0i << (global1.b.x % 32u), true), false, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.a.x, global0.a.x))))), 8u)];
    var var_2 = Struct_3(_wgslsmith_div_i32(_wgslsmith_div_i32(reverseBits(global1.a), min(1i, global1.a)) ^ -1i, -1i), ~vec2<u32>(abs(global1.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, arg_0.x), arg_0)), vec2<bool>(arg_1, true));
    let var_3 = _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(var_2.b.x, u_input.c.x));
    var var_4 = Struct_3(-max(-2147483647i, -(~69436i)), vec2<u32>(arg_0.x, _wgslsmith_sub_u32(firstTrailingBit(0u), firstTrailingBit(1u))) | reverseBits(~firstLeadingBit(global1.b)), select(vec2<bool>(~var_2.a != _wgslsmith_mod_i32(global1.a, var_2.a), -386f <= var_1.d.a.x), var_2.c, any(select(select(vec4<bool>(global1.c.x, var_2.c.x, arg_1, false), vec4<bool>(arg_1, false, var_2.c.x, false), false), vec4<bool>(global1.c.x, true, false, arg_1), global1.a != -15882i))));
    return !var_4.c;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = !select(select(arg_0.c, global1.c, vec2<bool>(global1.b.x >= 1u, arg_0.c.x)), func_2(~vec3<u32>(1u, 46902u, u_input.a.x) ^ vec3<u32>(arg_0.b.x, 0u, 2057u), true), true);
    global1 = arg_0;
    global2 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1894f, _wgslsmith_f_op_f32(ceil(global0.a.x))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1978f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(178f, global0.a.x))))))));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(16724u, ~(~(~4294967295u))), _wgslsmith_sub_u32(func_4(vec2<i32>(39398i, 64977i) << (~u_input.a.xz % vec2<u32>(32u)), false, 1146f), arg_0.b.x));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.a.x;
    global2 = array<Struct_2, 8>();
    global2 = array<Struct_2, 8>();
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * global0.a));
    global2 = array<Struct_2, 8>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-367f, global0.a.x, global0.a.x, -388f)))))))), firstTrailingBit(_wgslsmith_mod_vec4_i32(reverseBits(reverseBits(vec4<i32>(18521i, -54969i, u_input.e, arg_0.a))), min(min(vec4<i32>(arg_0.a, -10665i, 11755i, 1i), vec4<i32>(-1i, 2147483647i, arg_1.a, 50827i)), vec4<i32>(u_input.e, u_input.e, arg_1.a, arg_1.a)))), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a)), Struct_1(vec4<f32>(global0.a.x, -1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f + 186f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.x, -1000f)) - -466f))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = false;
    var var_1 = func_5(func_1(func_1(Struct_3(u_input.b.x, abs(arg_1.b), global1.c))), Struct_3(~_wgslsmith_dot_vec3_i32(arg_3.b.wxx, u_input.b), select(_wgslsmith_div_vec2_u32(~arg_2.b, vec2<u32>(arg_2.b.x, 40724u)), abs(~u_input.d), !(arg_0.b.x <= 0i)), !(!(!global1.c))), select(vec4<bool>(true, func_1(Struct_3(-2147483647i, vec2<u32>(4294967295u, global1.b.x), vec2<bool>(arg_2.c.x, global1.c.x))).c.x, true & all(arg_1.c), true), !(!vec4<bool>(global1.c.x, arg_1.c.x, arg_2.c.x, false)), select(vec4<bool>(true, true, !arg_1.c.x, all(vec2<bool>(true, true))), select(select(vec4<bool>(true, true, global1.c.x, arg_1.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, false, true), true), select(vec4<bool>(arg_2.c.x, true, true, arg_1.c.x), vec4<bool>(global1.c.x, false, true, false), vec4<bool>(true, true, arg_2.c.x, arg_2.c.x)), true || arg_2.c.x), vec4<bool>(global1.c.x & global1.c.x, true, true, global1.c.x && arg_2.c.x)))).d;
    var_0 = global1.c.x == !(!arg_1.c.x);
    let var_2 = Struct_1(var_1.a);
    return vec4<i32>(abs(arg_0.b.x), arg_3.b.x, i32(-1i) * -func_5(Struct_3(arg_0.b.x, global1.b, vec2<bool>(false, false)), func_1(arg_1), select(vec4<bool>(false, arg_2.c.x, false, arg_2.c.x), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))).b.x, arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_3(-(global1.a << (global1.b.x % 32u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(7486u, global1.b.x)), global1.c), func_1(Struct_3(~u_input.e, u_input.d, select(global1.c, vec2<bool>(global1.c.x, false), vec2<bool>(global1.c.x, global1.c.x)))), select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), !(!vec4<bool>(global1.c.x, true, global1.c.x, true)), !(!vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x)))), func_1(Struct_3(_wgslsmith_add_i32(-global1.a, -u_input.b.x), select(~u_input.a.xz, abs(global1.b), true), !func_1(Struct_3(global1.a, vec2<u32>(u_input.c.x, 4294967295u), vec2<bool>(true, global1.c.x))).c)), Struct_3(~_wgslsmith_mod_i32(u_input.e, ~4724i), global1.b, !(!vec2<bool>(global1.c.x, true))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.x, func_1(func_1(Struct_3(1i, u_input.c.xy, global1.c))).b.x & 0u), 8u)]);
    var var_1 = func_5(Struct_3(-21827i, reverseBits(_wgslsmith_div_vec2_u32(~u_input.a.yz, u_input.d)), vec2<bool>(true, false)), Struct_3(1272i, max(~global1.b << (countOneBits(vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u)), ~(~global1.b)), !select(vec2<bool>(true, global1.c.x), !global1.c, true)), select(select(!(!vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x)), vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), select(vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, true, global1.c.x, true), global1.c.x)), select(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), vec4<bool>(!global1.c.x, false, !global1.c.x, global1.c.x), any(vec2<bool>(global1.c.x, true))), vec4<bool>(true, true, (true & global1.c.x) || true, true)));
    let var_2 = func_5(Struct_3(u_input.e, global1.b, global1.c), func_1(func_1(Struct_3(_wgslsmith_clamp_i32(global1.a, global1.a, 2147483647i), vec2<u32>(global1.b.x, u_input.c.x), vec2<bool>(false, global1.c.x)))), vec4<bool>(any(!vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), true, global1.c.x, false));
    global1 = func_1(Struct_3(abs(reverseBits(var_0.x)) & (-4981i ^ _wgslsmith_add_i32(global1.a, -20089i)), ~(~vec2<u32>(1u, global1.b.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 57432u), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), select(!vec2<bool>(global1.c.x, true), !global1.c, false)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.d.a.x), -733f, !global1.c.x)) + _wgslsmith_f_op_f32(-var_2.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1913f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(u_input.d.x, _wgslsmith_mult_u32(27146u, 1u))), _wgslsmith_f_op_f32(max(var_1.d.a.x, global0.a.x)), 4294967295u, u_input.a.x, u_input.c & _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(17882u, global1.b.x, u_input.d.x)), vec3<u32>(global1.b.x & 4294967295u, u_input.d.x, ~u_input.c.x)));
}

