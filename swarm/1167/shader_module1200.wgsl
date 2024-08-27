struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: f32 = -988f;

var<private> global2: array<u32, 9> = array<u32, 9>(4294967295u, 23961u, 20979u, 25309u, 14334u, 4294967295u, 4294967295u, 4294967295u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    global2 = array<u32, 9>();
    var var_0 = -28952i;
    let var_1 = countOneBits(u_input.a.x >> (global2[_wgslsmith_index_u32(~1u, 9u)] % 32u)) << ((arg_2.x & firstTrailingBit(arg_2.x)) % 32u);
    global1 = arg_0.x;
    global1 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-1341f + global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1557u | _wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(u_input.c.x, arg_2.x)), ~17493u), 16u)])));
    return 6403u;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> f32 {
    global0 = array<f32, 16>();
    var var_0 = Struct_3(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, 81401u), 9u)], 9u)], 4294967295u, ~_wgslsmith_mod_u32(0u, arg_0), arg_0) | countOneBits(~(~vec4<u32>(arg_0, global2[_wgslsmith_index_u32(arg_0, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], 3970u))));
    let var_1 = arg_3;
    var var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 16916i, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c, -49054i, arg_3.c), vec3<i32>(-20422i, var_1.c, var_1.c)))), vec3<i32>(-u_input.a.x >> (~var_0.a.x % 32u), abs(2147483647i | var_1.c), arg_3.c));
    var var_3 = 56191u;
    return _wgslsmith_f_op_f32(abs(-1628f));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = array<u32, 9>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 429f, 1050f), vec4<f32>(global0[_wgslsmith_index_u32(7560u, 16u)], -711f, global0[_wgslsmith_index_u32(u_input.b, 16u)], -326f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], -510f, -1124f, global0[_wgslsmith_index_u32(6534u, 16u)])), u_input.b < u_input.b)), vec4<f32>(261f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 93558u), 16u)], -584f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 16u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4936u, 0u, u_input.b, 0u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)], 9u)], 9u)], 0u, global2[_wgslsmith_index_u32(65866u, 9u)], 1u)), 16u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~u_input.b, 16u)])), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_f32(-517f + -166f))))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 16u)])))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(18589u, Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 16u)], 276f, -541f), vec4<f32>(-213f, global0[_wgslsmith_index_u32(2704u, 16u)], var_0.x, var_0.x)), true || arg_0, Struct_1(vec2<f32>(277f, -1789f), 1044f, -55549i, arg_0, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0.x, global0[_wgslsmith_index_u32(34790u, 16u)]))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-827f, global0[_wgslsmith_index_u32(1u, 16u)]))))))));
    global0 = array<f32, 16>();
    let var_2 = Struct_2(var_0.xxy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(60264u, 16u)], 1309f, -379f, -690f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, 2197f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 16u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 16u)], 267f, -422f, -1000f), vec4<f32>(140f, 203f, 1587f, var_0.x), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, -1181f, -1147f))), true)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, 1314f, var_0.x, global0[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 406f, var_0.x, 558f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1282f, global0[_wgslsmith_index_u32(48638u, 16u)], -262f, var_1) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 1267f, global0[_wgslsmith_index_u32(774u, 16u)], -160f))))))));
    return Struct_1(vec2<f32>(-437f, 843f), var_1, u_input.a.x, true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(5082u, 16u)])), _wgslsmith_f_op_f32(abs(256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -718f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1176f, var_2.a.x)) + var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 1266f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(floor(1105f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.b, 16u)], 1045f, true))))), !arg_0)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2984f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2280f - _wgslsmith_f_op_f32(arg_2.e.x * _wgslsmith_f_op_f32(arg_2.b - 2026f)))));
    var var_1 = Struct_5(~min(arg_1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a), 1u | u_input.c.x)), Struct_2(arg_2.e.zxw, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(48006u, 16u)] * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], 16u)])), var_0, _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(sign(var_0))), 575f)), arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(~firstLeadingBit(4294967295u), 16u)], _wgslsmith_f_op_f32(f32(-1f) * -1662f)), _wgslsmith_div_vec2_f32(vec2<f32>(951f, -708f), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 16u)]), var_0))));
    let var_2 = !arg_2.d;
    let var_3 = _wgslsmith_mult_vec4_u32(var_1.c.a, arg_1.a) & ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, 75688u, arg_1.a.x, arg_1.a.x)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 1u)), vec4<u32>(18440u, min(4294967295u, 1u), arg_1.a.x, var_1.a << (u_input.c.x % 32u)), _wgslsmith_div_vec4_u32(~var_1.c.a, vec4<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 59537u, 4294967295u, 56453u)));
    var var_4 = global2[_wgslsmith_index_u32(1u, 9u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.x, var_3.x), 16u)]), 2479f), vec2<f32>(_wgslsmith_f_op_f32(-1000f * -1073f), arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-828f, _wgslsmith_f_op_f32(step(2126f, -515f)))))), 5846i, arg_2.d, arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(426f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(22989u), _wgslsmith_clamp_u32(~1u, firstLeadingBit(21440u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54589u, 9u)], 9u)], 21291u, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<u32>(u_input.b, 4294967295u, u_input.c.x, 76787u))), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(974f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)], 16u)], global0[_wgslsmith_index_u32(1u, 16u)], -1228f), vec4<f32>(1672f, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50672u, 9u)], 9u)], 9u)], 16u)], -874f), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], u_input.c.x)), -38846i)), 16u)], 1565f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-325f)), 164f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(6788u, 16u)] + global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 16u)]), 1612f) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, global0[_wgslsmith_index_u32(u_input.c.x, 16u)], global0[_wgslsmith_index_u32(39766u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 16u)]) - vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 16u)], -118f, 507f, 187f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -742f, global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]) * vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], 16u)], 646f, -103f, -179f))))));
    var var_1 = func_4(u_input.a.zw, Struct_3(vec4<u32>(global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(17257u, 9u)]), 9u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 9u)], u_input.b), vec2<u32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.c.x, 9u)])), _wgslsmith_div_u32(4294967295u, 102409u)), global2[_wgslsmith_index_u32(~u_input.b | firstLeadingBit(u_input.b), 9u)], 4294967295u)), func_2(any(vec2<bool>(true, true))));
    let var_2 = _wgslsmith_add_vec2_u32(u_input.c, u_input.c);
    global1 = _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), true));
    var var_3 = var_0;
    global0 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(select(func_1(vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(var_3.a.x + var_0.a.x), 1000f, _wgslsmith_f_op_f32(-274f * var_0.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-473f - var_3.b.x), var_1.e.x), countOneBits(~vec2<u32>(var_2.x, global2[_wgslsmith_index_u32(u_input.c.x, 9u)])), func_2(u_input.a.x < var_1.c).c), ~var_2.x, any(select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.d, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))))));
}

