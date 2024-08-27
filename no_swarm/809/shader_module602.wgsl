struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(69592i, 5152i, -31i), vec3<i32>(7931i, 2147483647i, -50511i), vec3<i32>(2147483647i, -1i, -16150i), vec3<i32>(-17439i, 2147483647i, 2147483647i), vec3<i32>(0i, 16409i, -16719i), vec3<i32>(-24683i, i32(-2147483648), 27951i), vec3<i32>(32384i, 0i, -1i), vec3<i32>(27087i, 43401i, -1i), vec3<i32>(36038i, 1i, 79717i), vec3<i32>(2147483647i, -7252i, 0i), vec3<i32>(2147483647i, -37146i, 0i), vec3<i32>(-1118i, 1i, -16737i), vec3<i32>(-37908i, -27901i, -45026i), vec3<i32>(-31127i, 2147483647i, 63254i), vec3<i32>(-51099i, 1i, -6146i), vec3<i32>(25716i, i32(-2147483648), 1i), vec3<i32>(0i, 25593i, -1i), vec3<i32>(i32(-2147483648), 9634i, -15157i), vec3<i32>(-18604i, -10034i, -1i), vec3<i32>(16040i, 9054i, -1i), vec3<i32>(48467i, -59165i, 8581i), vec3<i32>(-15255i, 6655i, 19021i), vec3<i32>(1i, 1i, -63638i), vec3<i32>(4697i, 0i, 4365i), vec3<i32>(1240i, 0i, -25997i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)));

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1541f, -1187f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-747f * 369f), -808f)), -138f), _wgslsmith_f_op_f32(abs(1500f))));
    var var_1 = vec4<u32>(~4790u, _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(27583u, 71147u)), vec2<u32>(1u, 1u), true), ~abs(abs(vec2<u32>(4294967295u, 59302u)))), ~1u, 4294967295u);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(~((var_1.x & var_1.x) & countOneBits(94320u))), 9u)]);
    var var_3 = 80047u;
    return 1u;
}

fn func_2() -> vec4<bool> {
    let var_0 = -_wgslsmith_add_i32(u_input.a, 35006i);
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(12423u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 38839u), vec2<u32>(4294967295u, 39320u))), 49803u, true), 9u)]);
    var var_2 = Struct_1(_wgslsmith_sub_vec3_u32(min(vec3<u32>(~var_1.a.a.e, func_3(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.a.e, 13272u, 1u, var_1.a.a.e), vec4<u32>(var_1.a.a.e, 17061u, 13159u, var_1.a.a.a.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.a.e, 4294967295u, var_1.a.a.e), var_1.a.a.a)), var_1.a.a.a), true, true, all(select(!vec2<bool>(true, var_1.a.a.d), select(vec2<bool>(true, var_1.a.a.b), select(vec2<bool>(var_1.a.a.d, false), vec2<bool>(false, var_1.a.a.c), true), vec2<bool>(true, false)), 2147483647i >= u_input.a)), var_1.a.a.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1843f, -1509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1007f) - _wgslsmith_f_op_f32(-1307f * 617f))), 1f));
    global0 = array<vec3<i32>, 26>();
    return vec4<bool>(!((1u & ~var_1.a.a.a.x) == 31904u), false, any(!select(vec3<bool>(false, var_1.a.a.d, var_1.a.a.c), vec3<bool>(false, true, var_1.a.a.b), vec3<bool>(false, var_1.a.a.b, var_2.c))) && (true || var_1.a.a.b), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_3 {
    global1 = array<Struct_2, 9>();
    var var_0 = (~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_1.e, 30399u, 39355u, 4294967295u)), ~vec4<u32>(arg_1.a.x, 1u, arg_1.a.x, arg_1.a.x)) << (arg_1.a.x % 32u)) > ~arg_1.e;
    var var_1 = _wgslsmith_mod_i32(76908i, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_2.x), firstLeadingBit(vec2<i32>(33344i, 1i))), (u_input.a & 22010i) << (~1u % 32u)), _wgslsmith_clamp_i32(u_input.a, ~u_input.b.x, arg_2.x)));
    let var_2 = _wgslsmith_f_op_f32(min(225f, 2011f));
    var_0 = arg_0.x;
    return Struct_3(Struct_2(arg_1));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = func_4(func_2(), Struct_1(select(vec3<u32>(arg_2.x >> (arg_2.x % 32u), 71399u, firstLeadingBit(0u)), arg_0.yyx, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), select(true, true, true))), 600f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))), arg_0.x > ~(~arg_2.x), true, arg_2.x), select(-vec3<i32>(abs(-1i), u_input.b.x, u_input.a), global0[_wgslsmith_index_u32(66521u, 26u)], true));
    var var_1 = var_0.a.a.b;
    let var_2 = func_3(~u_input.b.x);
    let var_3 = vec2<i32>(~_wgslsmith_add_i32(~select(u_input.a, u_input.a, false), 32803i), 31574i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -108f, arg_1.x, -1009f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -318f, arg_1.x, arg_1.x))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -668f, arg_1.x, -2040f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1800f, -1000f, arg_1.x, 2782f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 230f)))));
    return func_4(!(!vec4<bool>(true, true, true, !var_0.a.a.b)), func_4(vec4<bool>(all(vec2<bool>(false, true)), true, false, var_0.a.a.d), Struct_1(vec3<u32>(max(21263u, 1u), var_2, arg_0.x & arg_2.x), any(func_2().wx), var_0.a.a.b, false, ~(~arg_2.x)), firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 0i, -2147483647i), vec3<i32>(u_input.a, -3105i, var_3.x)))).a.a, _wgslsmith_clamp_vec3_i32(~abs(global0[_wgslsmith_index_u32(4623u, 26u)]) & vec3<i32>(u_input.b.x & u_input.b.x, 13509i, 3942i), vec3<i32>(u_input.a, -u_input.a << ((var_2 << (1u % 32u)) % 32u), min(u_input.a, u_input.a) ^ ~u_input.b.x), -firstTrailingBit(global0[_wgslsmith_index_u32(arg_0.x << (var_2 % 32u), 26u)]))).a.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1242f + _wgslsmith_f_op_f32(f32(-1f) * -125f)), -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(-34196i), vec2<u32>(~firstLeadingBit(~1u), func_1(~reverseBits(vec4<u32>(0u, 11222u, 0u, 1u)), vec3<f32>(1f, 1f, 1f), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(63451u, 34522u)))), ~(~4246u), 0i);
}

