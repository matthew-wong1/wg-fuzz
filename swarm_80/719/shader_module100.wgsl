struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: array<u32, 21> = array<u32, 21>(8993u, 1u, 48650u, 0u, 2488u, 4294967295u, 86819u, 4256u, 4294967295u, 4294967295u, 4294967295u, 44310u, 1u, 17551u, 1u, 2322u, 13996u, 0u, 3264u, 17561u, 25682u);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<u32>(83763u, 0u, 31700u, 27096u)), 981f, i32(-2147483648), 15521u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-749f)) + _wgslsmith_div_f32(-214f, global2.b)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-332f + 537f))), arg_1.b.x, true, arg_1.b.x);
    let var_1 = global2.a;
    let var_2 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(var_1.a.x, 21u)], var_1.a.x, global2.d), 56665u | arg_1.a.a.x), arg_0, 1u, _wgslsmith_div_u32(var_1.a.x, global2.a.a.x ^ global1[_wgslsmith_index_u32(40886u, 21u)]))), !(!vec3<bool>(true, arg_1.b.x, true)));
    let var_3 = var_2.a;
    var var_4 = var_2.a;
    return _wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(14183u, 21u)], global1[_wgslsmith_index_u32(var_4.a.x, 21u)], global2.d))), vec4<u32>(max(~arg_0, 4294967295u), 0u, 0u, 4294967295u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<u32, 21>();
    global0 = array<vec4<u32>, 25>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-760f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))))), _wgslsmith_f_op_f32(select(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b))), -847f), -global2.c != _wgslsmith_add_i32(firstTrailingBit(45026i), global2.c))));
    global2 = Struct_2(Struct_1(func_3(global2.d, Struct_3(arg_1, vec3<bool>(false, false, true)))), var_0.x, global2.c, arg_1.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(-878f * var_0.x)) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1116f, global2.b)))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a.zw, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x, u_input.a) | arg_1.a, _wgslsmith_sub_vec4_u32(vec4<u32>(39561u, global1[_wgslsmith_index_u32(1u, 21u)], 1u, u_input.a), arg_1.a)), 1u)) << (~_wgslsmith_mod_u32(abs(~u_input.a), 63708u) % 32u), 21u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_3(global2.a, !select(vec3<bool>(!arg_1, false, true), select(vec3<bool>(false, arg_1, false), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, arg_1), arg_1), !vec3<bool>(false, arg_1, arg_1)), true));
    var var_1 = Struct_1(vec4<u32>(firstTrailingBit(select(arg_0.x, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global2.d, 21u)], 29135u), var_0.b.x | arg_1)), 1u, firstTrailingBit(arg_0.x), 1u));
    let var_2 = ~(~var_0.a.a.wy);
    let var_3 = Struct_3(var_0.a, select(var_0.b, var_0.b, var_0.b.x));
    var var_4 = abs(select(global2.a.a.zzw, abs(~(~var_3.a.a.xxy)), false));
    return Struct_2(Struct_1(~var_0.a.a), -577f, i32(-1i) * -2147483647i, _wgslsmith_mult_u32(~firstTrailingBit(~var_2.x), _wgslsmith_sub_u32(reverseBits(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(66182u, 21u)], var_2.x)), func_3(4294967295u >> (var_3.a.a.x % 32u), Struct_3(Struct_1(vec4<u32>(14015u, 0u, 34749u, var_3.a.a.x)), vec3<bool>(true, var_3.b.x, false))).x)));
}

fn func_1() -> i32 {
    var var_0 = func_4(vec3<u32>(u_input.a, 10005u, _wgslsmith_sub_u32(u_input.a, func_2(global2.a, global2.a)) & max(~u_input.a, 1u)), true);
    let var_1 = Struct_1(select(global0[_wgslsmith_index_u32(1u, 25u)], vec4<u32>(38223u, ~global2.a.a.x, 1u, 4294967295u), vec4<bool>(true == (var_0.c < 8584i), !all(vec2<bool>(true, false)), true, -659f < global2.b)));
    let var_2 = global2.a;
    var var_3 = !(!any(vec2<bool>(true, true)));
    global2 = Struct_2(func_4(vec3<u32>(var_1.a.x, ~select(global2.a.a.x, 23649u, false), ~abs(global2.a.a.x)), !all(vec2<bool>(false, true))).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c, var_0.a.a.x << ((80024u | var_0.d) % 32u));
    return -_wgslsmith_sub_i32(-var_0.c, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(42130i, 1i), vec2<i32>(global2.c, var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global2.c, global2.c), ~vec3<i32>(global2.c, 33125i, global2.c)), -1i) <= func_1();
    global2 = func_4(abs(vec3<u32>(76914u, 1u, 24388u)), (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(358f, 184f)) < _wgslsmith_f_op_f32(-global2.b)) & select(any(vec3<bool>(var_0, true, var_0)) || any(vec3<bool>(var_0, var_0, var_0)), true, all(vec2<bool>(true, true))));
    var var_1 = -1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, global2.b, global2.b, 1118f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-269f, global2.b, 1279f, global2.b))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b, global2.b, 911f, global2.b), vec4<f32>(1337f, 868f, 1681f, 1555f)))))) * vec4<f32>(global2.b, global2.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1079f, global2.b)))), 1560f));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, _wgslsmith_div_f32(_wgslsmith_div_f32(1025f, _wgslsmith_f_op_f32(abs(-1824f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1470f * -884f), global2.b))));
}

