struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(995f, 862f), vec4<i32>(2147483647i, -17736i, 15314i, 11852i));

var<private> global2: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(2147483647i, 1i, 35789i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, ~(~(9910u << (u_input.b.x % 32u)) << (arg_2 % 32u))), 2u)];
    let var_1 = 83469u;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.a.x) + 1197f), _wgslsmith_f_op_f32(-1021f + _wgslsmith_f_op_f32(max(arg_1.x, global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, -750f)) * -912f), 1757f)));
    let var_3 = true;
    global2 = array<vec3<i32>, 2>();
    return false;
}

fn func_2() -> f32 {
    global1 = Struct_2(global1.a, min(global1.b, vec4<i32>(17016i, 2147483647i, (global1.b.x | u_input.a) | _wgslsmith_add_i32(global1.b.x, -12088i), 1i << (1u % 32u))));
    var var_0 = Struct_1(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))) != _wgslsmith_div_f32(455f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * 1000f)), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, false, true), global1.b.x >> (~(~u_input.b.x | _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.zy)) % 32u), 619f);
    global1 = global0[_wgslsmith_index_u32(~min(~84377u, ~countOneBits(u_input.b.x >> (1u % 32u))), 8u)];
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, _wgslsmith_f_op_f32(-var_0.a))))), vec4<i32>(var_0.d, abs(1i), abs(-2147483647i), firstTrailingBit(2748i)));
    global2 = array<vec3<i32>, 2>();
    return _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(round(var_0.a)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    global2 = array<vec3<i32>, 2>();
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    global1 = global0[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_0 = select(vec2<bool>(!(!(486f < global1.a.x)), select(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), true, !select(true, true, true))), vec2<bool>(true, all(vec2<bool>(global1.a.x <= global1.a.x, true))), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true)));
    return vec4<bool>(!(_wgslsmith_f_op_f32(func_2()) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)))), var_0.x, false, !(!(!any(vec3<bool>(true, false, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-2108f)), true, vec4<bool>(!((4294967295u <= u_input.b.x) && func_1(vec4<u32>(u_input.b.x, u_input.b.x, 56168u, 56407u), vec4<f32>(1462f, -692f, 376f, global1.a.x), u_input.b.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(915f, global1.a.x))) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -599f))), true), u_input.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global1.a.x))));
    let var_1 = all(!select(var_0.c, !vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.b, global1.a.x >= global1.a.x, false, true == var_0.b)));
    global0 = array<Struct_2, 8>();
    var var_2 = global1.a;
    var var_3 = vec3<i32>(-2147483647i, 0i, ~_wgslsmith_div_i32(~(~global1.b.x), var_0.d));
    var var_4 = Struct_1(-1098f, var_1, select(!(!var_0.c), vec4<bool>(any(var_0.c) && true, var_0.d < ~(-28171i), false, true), func_3(_wgslsmith_mod_vec3_i32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 2u)], ~vec3<i32>(var_3.x, var_3.x, 10802i)))), ~(~u_input.a), global1.a.x);
    var var_5 = global1.b.yzx;
    let var_6 = global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(1u, ~70903u, 23510u)), 8u)];
    var var_7 = _wgslsmith_f_op_f32(var_2.x * global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b.x, u_input.b.x), min(~firstLeadingBit(select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, 6966u), var_1)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26294u, u_input.b.x, 4533u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), 20368u)), -1i & var_0.d);
}

