struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: i32 = 91852i;

var<private> global2: array<u32, 32>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-1000f, -897f, -775f), vec3<u32>(1u, 1u, 73612u), vec2<f32>(-637f, -571f), 4294967295u);

var<private> global4: array<vec4<f32>, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -572f))), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(610f * 941f), _wgslsmith_f_op_f32(max(-688f, arg_0.e.x))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1489f), global3.c.x)))), ~(~(vec3<u32>(4294967295u, global3.b.x, 68293u) << (vec3<u32>(arg_1.c.x, arg_1.b.x, global3.b.x) % vec3<u32>(32u)))) & max(vec3<u32>(~u_input.c.x, 11992u ^ global3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, global3.d, u_input.c.x))), ~min(global3.b, arg_0.c.b)), vec2<f32>(-1932f, global3.c.x), ~0u);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, global3.a.x)));
    global0 = array<Struct_2, 5>();
    global4 = array<vec4<f32>, 7>();
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.c.x)), _wgslsmith_f_op_f32(global3.c.x - _wgslsmith_f_op_f32(-arg_0.e.x)), all(!vec4<bool>(arg_0.a, all(vec4<bool>(true, arg_0.a, false, arg_1.a)), false, arg_0.a))));
    return vec2<bool>(!arg_0.a || true, !((32411i >> (abs(arg_0.c.b.x) % 32u)) >= _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_0.b, u_input.a.x)))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global3.a);
    var var_1 = Struct_2(any(vec2<bool>(true, true)), global3.b.yz, ~(~(~vec2<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global3.b.x))), -(~u_input.a.zyx));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(~(~(var_1.b.x >> (1u % 32u))), 7u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_f_op_f32(min(-112f, _wgslsmith_f_op_f32(step(357f, var_0.x)))), 376f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz * var_0.xy))) + var_0.xx), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1158f, _wgslsmith_f_op_f32(max(global3.c.x, -181f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -689f))), func_3(Struct_3(_wgslsmith_f_op_f32(-1137f - var_2.x) != var_0.x, (-2147483647i | u_input.a.x) >> (var_1.b.x % 32u), Struct_1(_wgslsmith_f_op_vec3_f32(var_2.wyz * vec3<f32>(var_0.x, -1685f, var_2.x)), ~global3.b, vec2<f32>(global3.c.x, 1467f), global3.b.x), var_1.d.x, vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(-1523f)), _wgslsmith_f_op_f32(-var_2.x), var_2.x)), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.b.x, 32u)], 5u)])));
    global4 = array<vec4<f32>, 7>();
    return _wgslsmith_sub_u32(max(76353u, reverseBits(~_wgslsmith_dot_vec2_u32(var_1.c, global3.b.xx))), ~(~8151u));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = vec4<bool>(!func_3(Struct_3(global3.c.x <= 1080f, max(-2147483647i, 26830i), Struct_1(vec3<f32>(-1076f, 441f, 273f), global3.b, global3.a.xz, 4294967295u), -2147483647i | arg_1.x, _wgslsmith_f_op_vec4_f32(-global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 32u)], 32u)], 7u)])), Struct_2(true, ~vec2<u32>(4696u, 10227u), vec2<u32>(global2[_wgslsmith_index_u32(arg_0.x, 32u)], global3.b.x), ~arg_1.wxx)).x, true, u_input.c.x >= 1u, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, func_3(Struct_3(true, arg_1.x, Struct_1(global3.a, global3.b, vec2<f32>(global3.c.x, global3.a.x), 4294967295u), 1i, global4[_wgslsmith_index_u32(global3.b.x, 7u)]), global0[_wgslsmith_index_u32(40196u, 5u)]).x), true)));
    let var_1 = _wgslsmith_clamp_u32(0u & (45354u >> (u_input.c.x % 32u)), 58634u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(global3.b), vec3<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 32u)], global3.b.x, arg_0.x)), 32u)] ^ ~firstTrailingBit(u_input.c.x)) ^ 1u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.x * 703f) * global3.c.x))))));
    var var_3 = Struct_3(true, ~min(arg_1.x, countOneBits(-24353i)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a + global3.a))), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1, u_input.c.x, 818u), vec4<u32>(19528u, global3.d, 0u, 61613u)), global2[_wgslsmith_index_u32(~(arg_0.x << (u_input.c.x % 32u)), 32u)], ~12084u), vec2<f32>(-595f, _wgslsmith_f_op_f32(floor(-1335f))), ~(4294967295u ^ arg_0.x) << ((26156u >> (~u_input.c.x % 32u)) % 32u)), (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, 0i, arg_1.x), u_input.a), u_input.b & 53147i) | firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, 52563i))) & select(arg_1.x, u_input.b, !var_0.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-global3.a.x)), global3.a.x, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(739f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - var_2) + var_2))));
    var var_4 = var_1 | ~u_input.c.x;
    return min(min(~(select(vec4<u32>(arg_0.x, 52390u, 1u, 11655u), vec4<u32>(22523u, arg_0.x, arg_0.x, 98335u), var_0.x) | (vec4<u32>(54289u, 24723u, global3.b.x, global3.b.x) & vec4<u32>(u_input.c.x, var_3.c.d, arg_0.x, var_1))), ~(~vec4<u32>(13607u, global2[_wgslsmith_index_u32(var_3.c.b.x, 32u)], 1u, 1u))), ~vec4<u32>(10476u, global3.d, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_0.x), var_3.c.b.yy)) ^ ~(~countOneBits(vec4<u32>(4294967295u, arg_0.x, u_input.c.x, 0u))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global1 = ~u_input.b;
    let var_0 = func_4(_wgslsmith_clamp_vec2_u32(abs(~(~global3.b.yz)), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(~arg_0.x, func_2(arg_0.x))), vec2<u32>(global2[_wgslsmith_index_u32(global3.d, 32u)], global2[_wgslsmith_index_u32(arg_0.x, 32u)])), abs(vec4<i32>(6012i, u_input.a.x, ~(-1749i) << (u_input.c.x % 32u), -1i)));
    global2 = array<u32, 32>();
    let var_1 = vec4<u32>(11861u, _wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.x, u_input.c.x)), vec2<u32>(u_input.c.x, 0u))), reverseBits(abs(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], var_0.x) ^ firstTrailingBit(44703u))), ~4566u);
    let var_2 = vec3<i32>(abs(u_input.a.x), reverseBits(select(~1i, -u_input.a.x, true) ^ _wgslsmith_clamp_i32(~u_input.b, u_input.b, ~1i)), u_input.a.x);
    return Struct_2(!any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), var_0.zz, ~(~vec2<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(40134u, 2695u, 4294967295u), 32u)], abs(var_1.x))), vec3<i32>(max(~var_2.x, max(67821i, u_input.a.x)) | _wgslsmith_sub_i32(0i, 2147483647i), var_2.x, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<f32>, 7>();
    global4 = array<vec4<f32>, 7>();
    let var_0 = func_1(~global3.b);
    var var_1 = abs(~vec3<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(34129u, 32u)], 4294967295u), 1713u ^ u_input.c.x, ~66106u)) << (countOneBits(abs(~global3.b << (global3.b % vec3<u32>(32u)))) % vec3<u32>(32u));
    global1 = 1i;
    global4 = array<vec4<f32>, 7>();
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(14330u, (_wgslsmith_sub_u32(var_1.x, global3.d) ^ 28064u) >> (u_input.c.x % 32u), 10484u), global3.b, _wgslsmith_sub_vec3_u32(~(vec3<u32>(4294967295u, var_1.x, global2[_wgslsmith_index_u32(0u, 32u)]) ^ global3.b), ~reverseBits(global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i | (-var_0.d.x >> (~1u % 32u)), vec4<f32>(-1170f, 743f, global3.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global3.c.x))))));
}

